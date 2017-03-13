X-GM-THRID: 6396598979256123392
X-Received: by 10.157.82.35 with SMTP id e35mr15109110oth.127.1489433406968;
        Mon, 13 Mar 2017 12:30:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.10 with SMTP id u10ls4180493ioi.8.gmail; Mon, 13 Mar
 2017 12:30:06 -0700 (PDT)
X-Received: by 10.99.127.5 with SMTP id a5mr18115959pgd.112.1489433405923;
        Mon, 13 Mar 2017 12:30:05 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si3273314pfb.2.2017.03.13.12.30.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 12:30:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so19212310pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 12:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=USsoBk/tXqr/F8RECVwpjIPdbobBTzQO6LrPJqvM/ek=;
        b=JGleROmCXLiq35gr/1PWilujETSUOtZ23hEpDdYcQVlmQPQNTJTTQcKpu1phS6X0z/
         qu5zLRiPeIR/BDhMxKWC3QVt2jZuLGnR1V5slWgTtx5bBzuNP+nRAPnOPzEBL+IrgI4Q
         47rh+3hyx/c1o+MLjRCtGQIiPF3qhbDStjEVzKwGdc29pHLj0ZFV2FsVcMOrtkHKO5WD
         mTvW1PYVbn+ThzeVhaRZaXxKkG+S6xGNCukbUogRIVVwdlxRSgwbN58dMZtjksBOwdk1
         fuSu6XNQYZprH85vZHnbb3ol1SBOlRf0DK84wkTk/dtfnQbjGLr+HqYbIyZts3l1n8Lk
         cmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=USsoBk/tXqr/F8RECVwpjIPdbobBTzQO6LrPJqvM/ek=;
        b=IALa6OZkGzz/o22Gr+8GWO3BwxULmOoV4tppIkG42e32UMRrMw5npMml0l/gajWPyl
         nwgYBUPtIFqzjE7iprv4Jd7Jl2MbN1awtezxVIqrHRYj0/MS9HfSO9SfrG8DifHKpoQR
         x0wCHEngLIv+n1r1YEFoFJc0qEYppPInygd+B+0eiMTgTXq/ATlfreaFN929Yc7Y8XqY
         SP/PkyqjRuULLJWO6g54liWdCSKswbSzKFnt6inLBeZsJ0fYQ4XtDFVxXWS6F6FF9jWw
         IjuMWNOVJtvuXeFgqK0Q4nnQ0WHwRIYZWRWnpoGmdJztYRuMVuxKjfY+KUXCqCvNEIgG
         nSOw==
X-Gm-Message-State: AMke39kK92UZ7eeDf9/I8vEz12IWBC3R2ypspnLfetlhXcsu91V19ljqtRfdFlldjYIHuA==
X-Received: by 10.99.124.1 with SMTP id x1mr39774291pgc.208.1489433405667;
        Mon, 13 Mar 2017 12:30:05 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id e63sm34177191pfg.40.2017.03.13.12.30.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 12:30:05 -0700 (PDT)
Date: Mon, 13 Mar 2017 12:30:04 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: adis16060_core: Use
 private driver lock instead of mlock
Message-ID: <20170313193003.GB5941@d830.WORKGROUP>
References: <20170313181130.GA27111@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313181130.GA27111@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 11:41:30PM +0530, simran singhal wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  
>  v3:
>    -Removed new lock to reuse the existing lock

Hi Simran,

Check Lars review comments about refactoring into a
write_then_read function protected by same buf_lock.

As it is now, it'll deadlock on buf_lock. It locks in
_read_raw and then calls _spi_write where an attempt
is made to grab the same lock.

alisons


> 
>  drivers/staging/iio/gyro/adis16060_core.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> index c9d46e7..602ec53 100644
> --- a/drivers/staging/iio/gyro/adis16060_core.c
> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> @@ -83,11 +83,12 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  {
>  	u16 tval = 0;
>  	int ret;
> +	struct adis16060_state *st = iio_priv(indio_dev);
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
>  		/* Take the iio_dev status lock */
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->buf_lock);
>  		ret = adis16060_spi_write(indio_dev, chan->address);
>  		if (ret < 0)
>  			goto out_unlock;
> @@ -96,7 +97,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  		if (ret < 0)
>  			goto out_unlock;
>  
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->buf_lock);
>  		*val = tval;
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_OFFSET:
> @@ -112,7 +113,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  	return -EINVAL;
>  
>  out_unlock:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->buf_lock);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313181130.GA27111%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

