X-GM-THRID: 6396598979256123392
X-Received: by 10.157.16.17 with SMTP id h17mr12444716ote.139.1489335842869;
        Sun, 12 Mar 2017 09:24:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls13240936otb.2.gmail; Sun, 12 Mar
 2017 09:24:02 -0700 (PDT)
X-Received: by 10.157.14.74 with SMTP id n10mr12349712otd.34.1489335842562;
        Sun, 12 Mar 2017 09:24:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si2751568pfd.3.2017.03.12.09.24.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:24:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 77so15578782pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=P3F21g8+krTOASrzAr/St+TY+ZGR9cXoTjo6yHtUYz4=;
        b=csxmt7S3UAi2kQUujFaz+WFJ38Z8jdxzNlEGt7GTy6ywD2mQ2KG2tI1AhzDIhXNVoT
         sdWiqDVX1oO2skhPWypo1i/hxM4n84rQxno6LL2UrBd++Hm793rDm0ErIrveSEftyFui
         cZMnY5Ayf39SrQq7A7Ta7Jh84fg06MVFnQvtxX/9bhAtuykmfsU0rdxhd++xJikF6gwR
         i0vKUXl5e5fOef/NAIMkzz43rPyC3k6hiGO04G1yoZ7myJYMyscv6evhBbGFxoq36pU3
         xFaSEKr7II38WaUG7VU2YlPPt+eK/gSL/c9LgPypGGx042Xywz2rpO55mhdvRRHrUDiG
         LXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=P3F21g8+krTOASrzAr/St+TY+ZGR9cXoTjo6yHtUYz4=;
        b=n9vYDbYtip4BVrexzvJpKjDsvT9PqLup2DN9tMBQun5ihMJ03IYZXaDQ+X2y4DHyoo
         6sNBqL/WUzCl6xLzNeDhHWTffjbANjnChLuy88spxeyk1h58dirhdrK+8JDFTUNmjQYx
         We39HDqp/ErDjKZJmZcOMTNvJkUMPAYn7k4sTaRjOgoDNMsPDBWA0gfIl9YiZ4OafCJt
         aVJUSRPtTX1jVrKX/uteBEsxsTSQIyr6ax9T0OHZUqUfKb4IW95LFY+2YGfImd3CRjWe
         22ExQi/qm8LhQd0lD4uopnUL9z7iFFmM/ObNO3OF5hHSLVSAM/7t0shBZKDcNsojoBas
         xE9Q==
X-Gm-Message-State: AMke39k/3jXSYBG9cq+zMZGVwr3E49b9ci+nrOCC6vRGlgMukvO4WgKpOslLRyWF5/hxLg==
X-Received: by 10.99.113.11 with SMTP id m11mr31724587pgc.36.1489335842284;
        Sun, 12 Mar 2017 09:24:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id c11sm29081445pfe.68.2017.03.12.09.24.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 09:24:01 -0700 (PDT)
Date: Sun, 12 Mar 2017 09:24:00 -0700
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
Message-ID: <20170312162359.GB2873@d830.WORKGROUP>
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

Hi Simran,
These are now IIO tasks for this round of Outreachy.  Please
follow the directions on the IIO task page w.r.t. claiming,
sending, and all.
Thanks,
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

