X-GM-THRID: 6332005806257471488
X-Received: by 10.194.178.166 with SMTP id cz6mr3041691wjc.0.1474285316085;
        Mon, 19 Sep 2016 04:41:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.139 with SMTP id f133ls202333lff.20.gmail; Mon, 19 Sep
 2016 04:41:55 -0700 (PDT)
X-Received: by 10.25.190.137 with SMTP id o131mr648077lff.17.1474285315533;
        Mon, 19 Sep 2016 04:41:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si1396468wmg.3.2016.09.19.04.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 04:41:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="237364520"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 13:41:49 +0200
Date: Mon, 19 Sep 2016 13:41:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: ade7754: Match
 alignment with open parenthesis
In-Reply-To: <20160919113624.GA10298@fireworks>
Message-ID: <alpine.DEB.2.10.1609191340290.3203@hadrien>
References: <20160919113624.GA10298@fireworks>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Georgiana Rodica Chelu wrote:

> This patch fixes the following checkpatch.pl check:
> CHECK: Alignment should match open parenthesis

In many of these cases you could reorganie the parameter list to better
use the horizontal space available.

Try to avoid using the work "fix" in your commit messages.  It is better
to give an overview of what you have done in order to fix the problem.

julia


>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7754.c | 59 +++++++++++++++++--------------------
>  1 file changed, 27 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index c46bef64..4e93987 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -24,8 +24,8 @@
>  #include "ade7754.h"
>
>  static int ade7754_spi_write_reg_8(struct device *dev,
> -		u8 reg_address,
> -		u8 val)
> +				   u8 reg_address,
> +				   u8 val)
>  {
>  	int ret;
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> @@ -42,8 +42,8 @@ static int ade7754_spi_write_reg_8(struct device *dev,
>  }
>
>  static int ade7754_spi_write_reg_16(struct device *dev,
> -		u8 reg_address,
> -		u16 value)
> +				    u8 reg_address,
> +				    u16 value)
>  {
>  	int ret;
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> @@ -60,8 +60,8 @@ static int ade7754_spi_write_reg_16(struct device *dev,
>  }
>
>  static int ade7754_spi_read_reg_8(struct device *dev,
> -		u8 reg_address,
> -		u8 *val)
> +				  u8 reg_address,
> +				  u8 *val)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7754_state *st = iio_priv(indio_dev);
> @@ -70,7 +70,7 @@ static int ade7754_spi_read_reg_8(struct device *dev,
>  	ret = spi_w8r8(st->us, ADE7754_READ_REG(reg_address));
>  	if (ret < 0) {
>  		dev_err(&st->us->dev, "problem when reading 8 bit register 0x%02X",
> -				reg_address);
> +			reg_address);
>  		return ret;
>  	}
>  	*val = ret;
> @@ -79,8 +79,8 @@ static int ade7754_spi_read_reg_8(struct device *dev,
>  }
>
>  static int ade7754_spi_read_reg_16(struct device *dev,
> -		u8 reg_address,
> -		u16 *val)
> +				   u8 reg_address,
> +				   u16 *val)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7754_state *st = iio_priv(indio_dev);
> @@ -99,8 +99,8 @@ static int ade7754_spi_read_reg_16(struct device *dev,
>  }
>
>  static int ade7754_spi_read_reg_24(struct device *dev,
> -		u8 reg_address,
> -		u32 *val)
> +				   u8 reg_address,
> +				   u32 *val)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7754_state *st = iio_priv(indio_dev);
> @@ -123,7 +123,7 @@ static int ade7754_spi_read_reg_24(struct device *dev,
>  	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
>  	if (ret) {
>  		dev_err(&st->us->dev, "problem when reading 24 bit register 0x%02X",
> -				reg_address);
> +			reg_address);
>  		goto error_ret;
>  	}
>  	*val = (st->rx[1] << 16) | (st->rx[2] << 8) | st->rx[3];
> @@ -134,8 +134,8 @@ error_ret:
>  }
>
>  static ssize_t ade7754_read_8bit(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				 struct device_attribute *attr,
> +				 char *buf)
>  {
>  	int ret;
>  	u8 val = 0;
> @@ -149,8 +149,8 @@ static ssize_t ade7754_read_8bit(struct device *dev,
>  }
>
>  static ssize_t ade7754_read_16bit(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				  struct device_attribute *attr,
> +				  char *buf)
>  {
>  	int ret;
>  	u16 val = 0;
> @@ -164,8 +164,8 @@ static ssize_t ade7754_read_16bit(struct device *dev,
>  }
>
>  static ssize_t ade7754_read_24bit(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				  struct device_attribute *attr,
> +				  char *buf)
>  {
>  	int ret;
>  	u32 val = 0;
> @@ -179,9 +179,8 @@ static ssize_t ade7754_read_24bit(struct device *dev,
>  }
>
>  static ssize_t ade7754_write_8bit(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> +				  struct device_attribute *attr,
> +				  const char *buf, size_t len)
>  {
>  	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
>  	int ret;
> @@ -197,9 +196,8 @@ error_ret:
>  }
>
>  static ssize_t ade7754_write_16bit(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> +				   struct device_attribute *attr,
> +				   const char *buf, size_t len)
>  {
>  	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
>  	int ret;
> @@ -403,16 +401,14 @@ err_ret:
>  }
>
>  static ssize_t ade7754_read_frequency(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				      struct device_attribute *attr,
> +				      char *buf)
>  {
>  	int ret;
>  	u8 t;
>  	int sps;
>
> -	ret = ade7754_spi_read_reg_8(dev,
> -			ADE7754_WAVMODE,
> -			&t);
> +	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &t);
>  	if (ret)
>  		return ret;
>
> @@ -423,9 +419,8 @@ static ssize_t ade7754_read_frequency(struct device *dev,
>  }
>
>  static ssize_t ade7754_write_frequency(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> +				       struct device_attribute *attr,
> +				       const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7754_state *st = iio_priv(indio_dev);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919113624.GA10298%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

