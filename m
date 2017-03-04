X-GM-THRID: 6393297121591689216
X-Received: by 10.25.193.213 with SMTP id r204mr1176384lff.24.1488648894878;
        Sat, 04 Mar 2017 09:34:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls1265326ljd.25.gmail; Sat, 04 Mar
 2017 09:34:54 -0800 (PST)
X-Received: by 10.46.80.1 with SMTP id e1mr1300291ljb.10.1488648894513;
        Sat, 04 Mar 2017 09:34:54 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id v70si535427wmf.0.2017.03.04.09.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:34:54 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 4BEF74062D;
	Sat,  4 Mar 2017 17:34:53 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] staging: iio: meter: ade7753: Move header content
 to implementation file
To: Katie Dunne <kdunne@mail.ccsf.edu>, outreachy-kernel@googlegroups.com
References: <cover.1488553341.git.kdunne@mail.ccsf.edu>
 <20170303153551.GB29234@katie-Inspiron-5748>
Cc: knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <293c03e4-2a7b-18da-46ec-cd202926a0ae@kernel.org>
Date: Sat, 4 Mar 2017 17:34:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170303153551.GB29234@katie-Inspiron-5748>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/03/17 15:35, Katie Dunne wrote:
> The contents of ade7753.h are only used in ade7753.c. Move the header
> contents to the implementation file and delete the header file.
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
Applied to the togreg branch of iio.git and pushed out as testing for the autobuilders
to play with it.

Thanks,

Jonathan
> ---
>  drivers/staging/iio/meter/ade7753.c | 69 ++++++++++++++++++++++++++++++++++-
>  drivers/staging/iio/meter/ade7753.h | 72 -------------------------------------
>  2 files changed, 68 insertions(+), 73 deletions(-)
>  delete mode 100644 drivers/staging/iio/meter/ade7753.h
> 
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index 671dc99..063ff27 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -21,7 +21,74 @@
>  #include <linux/iio/iio.h>
>  #include <linux/iio/sysfs.h>
>  #include "meter.h"
> -#include "ade7753.h"
> +
> +#define ADE7753_WAVEFORM   0x01
> +#define ADE7753_AENERGY    0x02
> +#define ADE7753_RAENERGY   0x03
> +#define ADE7753_LAENERGY   0x04
> +#define ADE7753_VAENERGY   0x05
> +#define ADE7753_RVAENERGY  0x06
> +#define ADE7753_LVAENERGY  0x07
> +#define ADE7753_LVARENERGY 0x08
> +#define ADE7753_MODE       0x09
> +#define ADE7753_IRQEN      0x0A
> +#define ADE7753_STATUS     0x0B
> +#define ADE7753_RSTSTATUS  0x0C
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
> +#define ADE7753_VADIV      0x1B
> +#define ADE7753_LINECYC    0x1C
> +#define ADE7753_ZXTOUT     0x1D
> +#define ADE7753_SAGCYC     0x1E
> +#define ADE7753_SAGLVL     0x1F
> +#define ADE7753_IPKLVL     0x20
> +#define ADE7753_VPKLVL     0x21
> +#define ADE7753_IPEAK      0x22
> +#define ADE7753_RSTIPEAK   0x23
> +#define ADE7753_VPEAK      0x24
> +#define ADE7753_RSTVPEAK   0x25
> +#define ADE7753_TEMP       0x26
> +#define ADE7753_PERIOD     0x27
> +#define ADE7753_TMODE      0x3D
> +#define ADE7753_CHKSUM     0x3E
> +#define ADE7753_DIEREV     0x3F
> +
> +#define ADE7753_READ_REG(a)    a
> +#define ADE7753_WRITE_REG(a) ((a) | 0x80)
> +
> +#define ADE7753_MAX_TX    4
> +#define ADE7753_MAX_RX    4
> +#define ADE7753_STARTUP_DELAY 1000
> +
> +#define ADE7753_SPI_SLOW    (u32)(300 * 1000)
> +#define ADE7753_SPI_BURST   (u32)(1000 * 1000)
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
> +	    struct spi_device   *us;
> +		    struct mutex        buf_lock;
> +			    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> +				    u8          rx[ADE7753_MAX_RX];
> +};
>  
>  static int ade7753_spi_write_reg_8(struct device *dev,
>  				   u8 reg_address,
> diff --git a/drivers/staging/iio/meter/ade7753.h b/drivers/staging/iio/meter/ade7753.h
> deleted file mode 100644
> index bfe7491..0000000
> --- a/drivers/staging/iio/meter/ade7753.h
> +++ /dev/null
> @@ -1,72 +0,0 @@
> -#ifndef _ADE7753_H
> -#define _ADE7753_H
> -
> -#define ADE7753_WAVEFORM   0x01
> -#define ADE7753_AENERGY    0x02
> -#define ADE7753_RAENERGY   0x03
> -#define ADE7753_LAENERGY   0x04
> -#define ADE7753_VAENERGY   0x05
> -#define ADE7753_RVAENERGY  0x06
> -#define ADE7753_LVAENERGY  0x07
> -#define ADE7753_LVARENERGY 0x08
> -#define ADE7753_MODE       0x09
> -#define ADE7753_IRQEN      0x0A
> -#define ADE7753_STATUS     0x0B
> -#define ADE7753_RSTSTATUS  0x0C
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
> -#define ADE7753_VADIV      0x1B
> -#define ADE7753_LINECYC    0x1C
> -#define ADE7753_ZXTOUT     0x1D
> -#define ADE7753_SAGCYC     0x1E
> -#define ADE7753_SAGLVL     0x1F
> -#define ADE7753_IPKLVL     0x20
> -#define ADE7753_VPKLVL     0x21
> -#define ADE7753_IPEAK      0x22
> -#define ADE7753_RSTIPEAK   0x23
> -#define ADE7753_VPEAK      0x24
> -#define ADE7753_RSTVPEAK   0x25
> -#define ADE7753_TEMP       0x26
> -#define ADE7753_PERIOD     0x27
> -#define ADE7753_TMODE      0x3D
> -#define ADE7753_CHKSUM     0x3E
> -#define ADE7753_DIEREV     0x3F
> -
> -#define ADE7753_READ_REG(a)    a
> -#define ADE7753_WRITE_REG(a) ((a) | 0x80)
> -
> -#define ADE7753_MAX_TX    4
> -#define ADE7753_MAX_RX    4
> -#define ADE7753_STARTUP_DELAY 1000
> -
> -#define ADE7753_SPI_SLOW	(u32)(300 * 1000)
> -#define ADE7753_SPI_BURST	(u32)(1000 * 1000)
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


