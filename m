X-GM-THRID: 6331780203259363328
X-Received: by 10.66.235.3 with SMTP id ui3mr3631197pac.137.1474262486174;
        Sun, 18 Sep 2016 22:21:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls10133081otc.1.gmail; Sun, 18 Sep
 2016 22:21:25 -0700 (PDT)
X-Received: by 10.157.29.38 with SMTP id m35mr7975808otm.7.1474262485764;
        Sun, 18 Sep 2016 22:21:25 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e66si692541pfk.2.2016.09.18.22.21.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 22:21:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so4025198pfj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 22:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=E4DdYuXQDh/4EcV/bk+Hb7ExMvuDLPcRByYAe7DpKdA=;
        b=XxWwej435KvlaLrdwhsv9pCAbme+UV+d3AbGU9DlucjnuC3tvSGEvOMgn95HFtOL1Q
         o9h4vGgXOVqBCgaXmtE2VbS1tzEfVv0nyM3uJZ1SfXIsb2k1E3lcf48mq34x3YYVdlE0
         uv4+MvDo836Al5E/jl8HIREjokgsF+HHY4S9WcxCOYPsb5RcihPj+IlM7r1Laoa1iDUC
         kq9ph2iPF1gOBkO18K4x3IShMCMybs+uHptt9544wW1xenQ+XeB5z59BulxaH/9+9lAT
         Tgne3Vu0CtZlsn3zAb2qiQGjc30mC7HZ4nvEK/ieFqbLAYJY73rWdFem/n7jeDQRyjXD
         sdsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=E4DdYuXQDh/4EcV/bk+Hb7ExMvuDLPcRByYAe7DpKdA=;
        b=Bt/dB93yTsJhzER+mGdcHegKq1BlTpQekTEYfPV8esjP7DQamaAAPrLj/60ZkYDXwa
         RLb3bNhr285FICCe/f4oMvBxQIx4Ml7Mw3SFBpdM2by7Tbpkq4lYa8vmJtB4MoPxoJl0
         C0DDof7L6JoIs041x0HbVGXEcv9y0O92fSJ09r5ra31A4cUt3BiQJCH0vfG+NzJ+A3vD
         4VEv4tlYU2vfCuYqDQ6tXjWmi0OchE+C1MIQLBPdXb7qrQ3F8rKgXfmz4CP1arfAdBcI
         Xzfb6ICLuCKMCDBQAgbmQc/0Jpa72mvR8QwKdHY1zx90ymdU0dRZUKIoP1EoLVHP0H6R
         FWzA==
X-Gm-Message-State: AE9vXwMyGpdnnpZezsrm4BGp+LxZkvNUP7uiLw2SD5r25Ai5wwBBCGDapYgXZX345aq3og==
X-Received: by 10.98.56.148 with SMTP id f142mr4452271pfa.83.1474262485345;
        Sun, 18 Sep 2016 22:21:25 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id 83sm20033277pfv.17.2016.09.18.22.21.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 22:21:24 -0700 (PDT)
Date: Sun, 18 Sep 2016 22:21:23 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: Match alignment
 with open parenthesis
Message-ID: <20160919052122.GA2699@d830.WORKGROUP>
References: <20160918210056.GA6241@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918210056.GA6241@fireworks>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Sep 19, 2016 at 12:00:56AM +0300, Georgiana Rodica Chelu wrote:
> This patch fixes the following checkpatch.pl check:
> CHECK: Alignment should match open parenthesis
> 
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>

Hi Georgiana,
Nice patch.  I think there's a patch for this already in the IIO queue,
so probably won't get taken.  In IIO, the driver name is typically
mentioned in the Subject line - as in:
staging: iio: meter: ade5933: ....
alisons

> ---
>  drivers/staging/iio/meter/ade7753.c | 43 ++++++++++++++-----------------------
>  1 file changed, 16 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index 4b5f05f..e3f6deb 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -42,8 +42,7 @@ static int ade7753_spi_write_reg_8(struct device *dev,
>  }
>  
>  static int ade7753_spi_write_reg_16(struct device *dev,
> -		u8 reg_address,
> -		u16 value)
> +				    u8 reg_address, u16 value)
>  {
>  	int ret;
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> @@ -60,8 +59,7 @@ static int ade7753_spi_write_reg_16(struct device *dev,
>  }
>  
>  static int ade7753_spi_read_reg_8(struct device *dev,
> -		u8 reg_address,
> -		u8 *val)
> +				  u8 reg_address, u8 *val)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7753_state *st = iio_priv(indio_dev);
> @@ -70,7 +68,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
>  	ret = spi_w8r8(st->us, ADE7753_READ_REG(reg_address));
>  	if (ret < 0) {
>  		dev_err(&st->us->dev, "problem when reading 8 bit register 0x%02X",
> -				reg_address);
> +			reg_address);
>  		return ret;
>  	}
>  	*val = ret;
> @@ -79,8 +77,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
>  }
>  
>  static int ade7753_spi_read_reg_16(struct device *dev,
> -		u8 reg_address,
> -		u16 *val)
> +				   u8 reg_address, u16 *val)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7753_state *st = iio_priv(indio_dev);
> @@ -99,8 +96,7 @@ static int ade7753_spi_read_reg_16(struct device *dev,
>  }
>  
>  static int ade7753_spi_read_reg_24(struct device *dev,
> -		u8 reg_address,
> -		u32 *val)
> +				   u8 reg_address, u32 *val)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7753_state *st = iio_priv(indio_dev);
> @@ -123,7 +119,7 @@ static int ade7753_spi_read_reg_24(struct device *dev,
>  	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
>  	if (ret) {
>  		dev_err(&st->us->dev, "problem when reading 24 bit register 0x%02X",
> -				reg_address);
> +			reg_address);
>  		goto error_ret;
>  	}
>  	*val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2];
> @@ -134,8 +130,7 @@ error_ret:
>  }
>  
>  static ssize_t ade7753_read_8bit(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				 struct device_attribute *attr, char *buf)
>  {
>  	int ret;
>  	u8 val;
> @@ -149,8 +144,7 @@ static ssize_t ade7753_read_8bit(struct device *dev,
>  }
>  
>  static ssize_t ade7753_read_16bit(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				  struct device_attribute *attr, char *buf)
>  {
>  	int ret;
>  	u16 val;
> @@ -164,8 +158,7 @@ static ssize_t ade7753_read_16bit(struct device *dev,
>  }
>  
>  static ssize_t ade7753_read_24bit(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				  struct device_attribute *attr, char *buf)
>  {
>  	int ret;
>  	u32 val;
> @@ -179,9 +172,8 @@ static ssize_t ade7753_read_24bit(struct device *dev,
>  }
>  
>  static ssize_t ade7753_write_8bit(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> +				  struct device_attribute *attr,
> +				  const char *buf, size_t len)
>  {
>  	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
>  	int ret;
> @@ -197,9 +189,8 @@ error_ret:
>  }
>  
>  static ssize_t ade7753_write_16bit(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> +				   struct device_attribute *attr,
> +				   const char *buf, size_t len)
>  {
>  	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
>  	int ret;
> @@ -384,8 +375,7 @@ err_ret:
>  }
>  
>  static ssize_t ade7753_read_frequency(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> +				      struct device_attribute *attr, char *buf)
>  {
>  	int ret;
>  	u16 t;
> @@ -402,9 +392,8 @@ static ssize_t ade7753_read_frequency(struct device *dev,
>  }
>  
>  static ssize_t ade7753_write_frequency(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> +				       struct device_attribute *attr,
> +				       const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7753_state *st = iio_priv(indio_dev);
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918210056.GA6241%40fireworks.
> For more options, visit https://groups.google.com/d/optout.

