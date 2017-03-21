X-GM-THRID: 6399483181164134400
X-Received: by 10.129.97.214 with SMTP id v205mr6728323ywb.131.1490117082258;
        Tue, 21 Mar 2017 10:24:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.111 with SMTP id 102ls7234066otv.42.gmail; Tue, 21 Mar
 2017 10:24:41 -0700 (PDT)
X-Received: by 10.157.39.201 with SMTP id c67mr11136002otb.48.1490117081763;
        Tue, 21 Mar 2017 10:24:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si3617714pfx.8.2017.03.21.10.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 10:24:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id w20so1405704pgc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 10:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=T/Jk6qenPYbwDEoBk5VnOxvRXqd3vLmjE+81u7AORB0=;
        b=LNeubUzAGmx5crkXfKcv57uQxPl/hraNegzxG8gEY9elhpb57fH/QXQtHi2sKb1hCF
         VDV5Wpi3/Bzy/t62BlbljVHYnuw7Qi83UHUcHGSIJOT55Kd5Xnx6rDsVeO1g+ijVcW7E
         cxgoCiclSLtrqgypNsQGcQihPptF3sY1QsBe+ayitBmtMVtUCsrzE+aqTjrQMxLuZPkh
         giRnqRrw0Ssp5LxvnjxjIQ6zrvdP7v7JW2sxGWFysDNzE/0cUAXlMxGVTeMe65x2E0Q4
         xQ+LavwF61A2rOS27ouaPfOEEitC+2mFp9iwRq1fKHws8+S/EtK3ahgtrVLcCgR15gTi
         o6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=T/Jk6qenPYbwDEoBk5VnOxvRXqd3vLmjE+81u7AORB0=;
        b=g49a22JNJ3Mr8XKODF7vyYHAq1DeP4Qvj+NBQ3m8r2wCKmC35vflcmiTSPIom1M3wx
         qXwavVGrkTeCtCJ+/rl6oTbxe1xgnADafyn2IPi4ne/n44ZbEW/B+zh+IFU7iKPwyLId
         mA4TJ0f95vQ6eCRBRc7K/PcevEfMzDu5rwsL8LwlxNWSh3k4fiMZFgNw99jTOeMVcd1p
         UCLgaoNOwVhtsGMeCKrE/W7rSzZma2saaRjLwzjwNZ7IUtnwhMH+EZZLdcUm7R15sneq
         EARVGf+aZWuc7cV/G+xIuAYttVjxH/jWNRiQ3xEtFJoVYANwGpEH43w569eRPd/v4dLh
         AXlQ==
X-Gm-Message-State: AFeK/H0HxQQn5VOuovxeKpLJUgXPkRtJ6XUkIdPw5H6UoB1Za/oiXqRgZXYk34nd6oPoaA==
X-Received: by 10.99.160.17 with SMTP id r17mr38040531pge.39.1490117080053;
        Tue, 21 Mar 2017 10:24:40 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id i81sm2964308pfi.23.2017.03.21.10.24.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 10:24:39 -0700 (PDT)
Date: Tue, 21 Mar 2017 10:24:38 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org,
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: ade7754: Replace mlock with
 buf_lock and refactor code
Message-ID: <20170321172438.GC2793@d830.WORKGROUP>
References: <1489995561-6988-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1489995561-6988-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 20, 2017 at 01:09:21PM +0530, Gargi Sharma wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes. Replace it with buf_lock in the devices global data.
> 
> As buf_lock already protects operations in ade7754_write_frequency,
> there isn't a need to acquire the lock inside ade7754_spi_write_reg_8
> when writing to the register.

Hi Gargi,

Looks like something went wrong in your patch below.  It doesn't do what
you say it'll do...Instead of removing the lock from _write_reg_8()
it inserts a bunch of code.  Anyway, it seems that w_rite_reg_8() is used
in multiple places, so removing that lock doesn't appear to be an
option.

See below...

alisons

> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index 024463a..eb03469 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7754_state *st = iio_priv(indio_dev);
>  
> +	if (reg_address == ADE7754_WAVMODE) {
> +		st->tx[0] = ADE7754_WRITE_REG(reg_address);
> +		st->tx[1] = val;
> +
> +		ret = spi_write(st->us, st->tx, 2);
> +
> +		return ret;
> +	}
> +
What's this?

>  	mutex_lock(&st->buf_lock);
>  	st->tx[0] = ADE7754_WRITE_REG(reg_address);
>  	st->tx[1] = val;
> @@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	if (!val)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->buf_lock);
>  
>  	t = 26000 / val;
>  	if (t > 0)
> @@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>  
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->buf_lock);
>  
>  	return ret ? ret : len;
>  }
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489995561-6988-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

