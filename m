X-GM-THRID: 6391488728330665984
X-Received: by 10.25.151.69 with SMTP id z66mr1895693lfd.12.1488482213486;
        Thu, 02 Mar 2017 11:16:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls455498lji.30.gmail; Thu, 02 Mar
 2017 11:16:53 -0800 (PST)
X-Received: by 10.46.82.157 with SMTP id n29mr2330549lje.29.1488482213030;
        Thu, 02 Mar 2017 11:16:53 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id h198si918007wmg.1.2017.03.02.11.16.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:16:52 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 81E2940676;
	Thu,  2 Mar 2017 19:16:50 +0000 (GMT)
Subject: Re: [PATCH 2/3] staging: iio: meter: Move header content to
 implementation file
To: Katie Dunne <kdunne@mail.ccsf.edu>, outreachy-kernel@googlegroups.com
References: <cover.1488250884.git.kdunne@mail.ccsf.edu>
 <71782a58dc2b1331265153849d991c90f0395abf.1488250885.git.kdunne@mail.ccsf.edu>
Cc: knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <aedd77f3-b484-7f14-cc5f-e6d3feb75559@kernel.org>
Date: Thu, 2 Mar 2017 19:16:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <71782a58dc2b1331265153849d991c90f0395abf.1488250885.git.kdunne@mail.ccsf.edu>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 28/02/17 03:19, Katie Dunne wrote:
> The contents of ade7753.h are only used in ade7753.c.
> Move the header contents to the implementation file,
> and delete the header file.
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
Hi Katie,

I'd actually prefer to have the register definitions all in one place (top of the file
after the includes would be best place.  Often when reviewing one just wants to
do a quick sanity check that there are no typos in register addresses and content
and this makes it easy to do.

Also, please include the driver name in the patch title.
staging:iio:meter:ade7753 ... would be good here.

Thanks,

Jonathan
> ---
>  drivers/staging/iio/meter/ade7753.c | 59 +++++++++++++++++++++++++++++++++++--
>  drivers/staging/iio/meter/ade7753.h | 58 ------------------------------------
>  2 files changed, 57 insertions(+), 60 deletions(-)
>  delete mode 100644 drivers/staging/iio/meter/ade7753.h
> 
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index 671dc99..f855c60 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -21,7 +21,27 @@
>  #include <linux/iio/iio.h>
>  #include <linux/iio/sysfs.h>
>  #include "meter.h"
> -#include "ade7753.h"
> +
> +#define ADE7753_READ_REG(a)    a
> +#define ADE7753_WRITE_REG(a) ((a) | 0x80)
> +#define ADE7753_MAX_TX    4
> +#define ADE7753_MAX_RX    4
> +#define ADE7753_SPI_SLOW    (u32)(300 * 1000)
> +#define ADE7753_SPI_FAST    (u32)(2000 * 1000)
> +
> +/**
> + * struct ade7753_state - device instance specific data
> + * @us:         actual spi_device
> + * @tx:         transmit buffer
> + * @rx:         receive buffer
> + * @buf_lock:       mutex to protect tx and rx
> + **/
> +struct ade7753_state {
> +	struct spi_device   *us;
> +	struct mutex        buf_lock;
> +	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> +	u8          rx[ADE7753_MAX_RX];
> +};
>  
>  static int ade7753_spi_write_reg_8(struct device *dev,
>  				   u8 reg_address,
> @@ -214,6 +234,8 @@ static ssize_t ade7753_write_16bit(struct device *dev,
>  	return ret ? ret : len;
>  }
>  
> +#define ADE7753_MODE       0x09
> +
>  static int ade7753_reset(struct device *dev)
>  {
>  	u16 val;
> @@ -228,6 +250,34 @@ static int ade7753_reset(struct device *dev)
>  	return ade7753_spi_write_reg_16(dev, ADE7753_MODE, val);
>  }
>  
> +#define ADE7753_AENERGY    0x02
> +#define ADE7753_LAENERGY   0x04
> +#define ADE7753_VAENERGY   0x05
> +#define ADE7753_LVAENERGY  0x07
> +#define ADE7753_CH1OS      0x0D
> +#define ADE7753_CH2OS      0x0E
> +#define ADE7753_GAIN       0x0F
> +#define ADE7753_PHCAL      0x10
> +#define ADE7753_APOS       0x11
> +#define ADE7753_WGAIN      0x12
> +#define ADE7753_WDIV       0x13
> +#define ADE7753_CFNUM      0x14
> +#define ADE7753_CFDEN      0x15
> +#define ADE7753_IRMS       0x16
> +#define ADE7753_VRMS       0x17
> +#define ADE7753_IRMSOS     0x18
> +#define ADE7753_VRMSOS     0x19
> +#define ADE7753_VAGAIN     0x1A
> +#define ADE7753_LINECYC    0x1C
> +#define ADE7753_SAGCYC     0x1E
> +#define ADE7753_SAGLVL     0x1F
> +#define ADE7753_IPKLVL     0x20
> +#define ADE7753_VPKLVL     0x21
> +#define ADE7753_IPEAK      0x22
> +#define ADE7753_VPEAK      0x24
> +#define ADE7753_PERIOD     0x27
> +#define ADE7753_CHKSUM     0x3E
> +
>  static IIO_DEV_ATTR_AENERGY(ade7753_read_24bit, ADE7753_AENERGY);
>  static IIO_DEV_ATTR_LAENERGY(ade7753_read_24bit, ADE7753_LAENERGY);
>  static IIO_DEV_ATTR_VAENERGY(ade7753_read_24bit, ADE7753_VAENERGY);
> @@ -322,6 +372,8 @@ static IIO_DEV_ATTR_CH_OFF(2, S_IWUSR | S_IRUGO,
>  		ade7753_write_8bit,
>  		ADE7753_CH2OS);
>  
> +#define ADE7753_IRQEN      0x0A
> +
>  static int ade7753_set_irq(struct device *dev, bool enable)
>  {
>  	int ret;
> @@ -359,6 +411,8 @@ static int ade7753_stop_device(struct device *dev)
>  	return ade7753_spi_write_reg_16(dev, ADE7753_MODE, val);
>  }
>  
> +#define ADE7753_STARTUP_DELAY 1000
> +
>  static int ade7753_initial_setup(struct iio_dev *indio_dev)
>  {
>  	int ret;
> @@ -389,7 +443,7 @@ static ssize_t ade7753_read_frequency(struct device *dev,
>  {
>  	int ret;
>  	u16 t;
> -	int sps;
> +int sps;
>  
>  	ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &t);
>  	if (ret)
> @@ -401,6 +455,7 @@ static ssize_t ade7753_read_frequency(struct device *dev,
>  	return sprintf(buf, "%d\n", sps);
>  }
>  
> +
>  static ssize_t ade7753_write_frequency(struct device *dev,
>  		struct device_attribute *attr,
>  		const char *buf,
> diff --git a/drivers/staging/iio/meter/ade7753.h b/drivers/staging/iio/meter/ade7753.h
> deleted file mode 100644
> index ea9284a..0000000
> --- a/drivers/staging/iio/meter/ade7753.h
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -#ifndef _ADE7753_H
> -#define _ADE7753_H
> -
> -#define ADE7753_AENERGY    0x02
> -#define ADE7753_LAENERGY   0x04
> -#define ADE7753_VAENERGY   0x05
> -#define ADE7753_LVAENERGY  0x07
> -#define ADE7753_MODE       0x09
> -#define ADE7753_IRQEN      0x0A
> -#define ADE7753_CH1OS      0x0D
> -#define ADE7753_CH2OS      0x0E
> -#define ADE7753_GAIN       0x0F
> -#define ADE7753_PHCAL      0x10
> -#define ADE7753_APOS       0x11
> -#define ADE7753_WGAIN      0x12
> -#define ADE7753_WDIV       0x13
> -#define ADE7753_CFNUM      0x14
> -#define ADE7753_CFDEN      0x15
> -#define ADE7753_IRMS       0x16
> -#define ADE7753_VRMS       0x17
> -#define ADE7753_IRMSOS     0x18
> -#define ADE7753_VRMSOS     0x19
> -#define ADE7753_VAGAIN     0x1A
> -#define ADE7753_LINECYC    0x1C
> -#define ADE7753_SAGCYC     0x1E
> -#define ADE7753_SAGLVL     0x1F
> -#define ADE7753_IPKLVL     0x20
> -#define ADE7753_VPKLVL     0x21
> -#define ADE7753_IPEAK      0x22
> -#define ADE7753_VPEAK      0x24
> -#define ADE7753_PERIOD     0x27
> -#define ADE7753_CHKSUM     0x3E
> -
> -#define ADE7753_READ_REG(a)    a
> -#define ADE7753_WRITE_REG(a) ((a) | 0x80)
> -
> -#define ADE7753_MAX_TX    4
> -#define ADE7753_MAX_RX    4
> -#define ADE7753_STARTUP_DELAY 1000
> -
> -#define ADE7753_SPI_SLOW	(u32)(300 * 1000)
> -#define ADE7753_SPI_FAST	(u32)(2000 * 1000)
> -
> -/**
> - * struct ade7753_state - device instance specific data
> - * @us:			actual spi_device
> - * @tx:			transmit buffer
> - * @rx:			receive buffer
> - * @buf_lock:		mutex to protect tx and rx
> - **/
> -struct ade7753_state {
> -	struct spi_device	*us;
> -	struct mutex		buf_lock;
> -	u8			tx[ADE7753_MAX_TX] ____cacheline_aligned;
> -	u8			rx[ADE7753_MAX_RX];
> -};
> -
> -#endif
> 


