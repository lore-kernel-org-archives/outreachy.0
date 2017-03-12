X-GM-THRID: 6396598979256123392
X-Received: by 10.107.11.35 with SMTP id v35mr8180014ioi.54.1489343484820;
        Sun, 12 Mar 2017 11:31:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls6591133ots.19.gmail; Sun, 12 Mar
 2017 11:31:24 -0700 (PDT)
X-Received: by 10.237.48.72 with SMTP id 66mr4436575qte.77.1489343484406;
        Sun, 12 Mar 2017 11:31:24 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si2741768pfb.7.2017.03.12.11.31.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 11:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so15852968pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 11:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5QKT+BewS+5Po21AER3BfNJMErEjC1JUpyHxAy5VbT4=;
        b=STfHmQGhv56wFH61kIY8QoyhF8gBpLucs2nESKxPV+LTxt+9weq/NHpYVREDJKW/LK
         I7V7aM27G5XY1aoGyHX4+ngsjfPEX5EhFsWf7BD6hclrXiFOpJK3yC6fn3QPD7asqyzK
         OUHmlfsLkl7nHeJPiJ8UmAE/2bxwSqsND6qtPkeGs7T/T1STJi0c55mk7omC1+l5O46S
         EMh+yQPZxeoVGlVp056+g910prIoDG3ovozy7X9gxkVRjm5O3Zf0wpnhG59ZTCY/YtoM
         0DyLeXb09FrTDLSbagzW5y5uDaVlsgRXPYobNyb3eX3rbUKhNArzoKJmLK7i8okEARff
         h7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5QKT+BewS+5Po21AER3BfNJMErEjC1JUpyHxAy5VbT4=;
        b=swzMBdYnvIXB0EBAOIEDKzjWGrkUghIgMguxlYdWS8fESCg3jw/oo8Hj/4zQwYypza
         skpEtrM1UIUd8YKb2YOjEan0vhXjsL/b/vmFIaNIssVZ7Na2TvM6vWrgJMf/eZ+J+HnN
         N0YMwh+egbsy6XSAJsRiyk7QJuNKtOvbRZPrBpxfpiTQuWAAPS7FfaNjygNQ/zrylThh
         +70au7+03YSKA/3Ke12Sh/1xFuRzjCDwhUVNgzSzkKV9r1DuJsBYEKtxvuAiOpUWShNw
         BxhuixydkRw2gBy59hglSGZoby8427U88mM/FbJm50GaBjQhXTkHJ6rWd33oeDwX5tOh
         vyuw==
X-Gm-Message-State: AMke39nP/V00JQST67kqGZnOXnGhM6Y66Me561OKJWNegfC/M4kKxsPHAYmku39QJ5Xuvw==
X-Received: by 10.98.8.74 with SMTP id c71mr32687769pfd.42.1489343483955;
        Sun, 12 Mar 2017 11:31:23 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 73sm29441437pfj.31.2017.03.12.11.31.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 11:31:23 -0700 (PDT)
Date: Sun, 12 Mar 2017 11:31:22 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: adis16060_core: Use private
 driver lock instead of mlock
Message-ID: <20170312183121.GA7728@d830.WORKGROUP>
References: <20170312131052.GA21816@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312131052.GA21816@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 06:40:52PM +0530, simran singhal wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

This does not compile.
alisons

> ---
>  drivers/staging/iio/gyro/adis16060_core.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> index c9d46e7..90a3a18 100644
> --- a/drivers/staging/iio/gyro/adis16060_core.c
> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> @@ -29,11 +29,13 @@
>   * @us_r:		actual spi_device to read back data
>   * @buf:		transmit or receive buffer
>   * @buf_lock:		mutex to protect tx and rx
> + * @lock:		protect sensor state
>   **/
>  struct adis16060_state {
>  	struct spi_device		*us_w;
>  	struct spi_device		*us_r;
>  	struct mutex			buf_lock;
> +	struct mutex			lock;	 /* protect sensor state */
>  
>  	u8 buf[3] ____cacheline_aligned;
>  };
> @@ -87,7 +89,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
>  		/* Take the iio_dev status lock */
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->lock);
>  		ret = adis16060_spi_write(indio_dev, chan->address);
>  		if (ret < 0)
>  			goto out_unlock;
> @@ -96,7 +98,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  		if (ret < 0)
>  			goto out_unlock;
>  
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->lock);
>  		*val = tval;
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_OFFSET:
> @@ -112,7 +114,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  	return -EINVAL;
>  
>  out_unlock:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  	return ret;
>  }
>  
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312131052.GA21816%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

