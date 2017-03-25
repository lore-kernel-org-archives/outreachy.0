X-GM-THRID: 6401339211777048576
X-Received: by 10.129.146.139 with SMTP id j133mr4706485ywg.173.1490456628790;
        Sat, 25 Mar 2017 08:43:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls1019146itc.10.gmail; Sat, 25 Mar
 2017 08:43:48 -0700 (PDT)
X-Received: by 10.107.135.91 with SMTP id j88mr4543207iod.82.1490456627999;
        Sat, 25 Mar 2017 08:43:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si983326pfb.5.2017.03.25.08.43.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 08:43:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so3297495pgf.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 08:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ubQOJLqbWINZ/xIhuDMLx90m00myGGg/L5iT7MnEWdU=;
        b=hoxw5G515yob8rqr+HOOvBDWGTf8D8TmPSHVkXYbY/A/Lz4aRTLdlUh55HhzwjyfLE
         1pXyx/N3wNqXH/q5FwUy2A3pE6fHdUCDrKXPYyZPlLR3A2np91s0PI+EbKev7aGOV8Tp
         PCME+RXfmtXhPeG911tfjc6DjnM027jmUA/5ynmm+pHolOUeUUfffwmiyS4OiXAc0FZI
         LWuV4rTHjAKaKnXi3WY0gITj7niHezde/Nd2JBVUdvR7sls04uGvSm9h6tl+oU3ieD3R
         6zGYHEQtJkIm3uK0wV48HdTMAcD3r5i+KT050kw9Do7R/lRgpy1NSXfwLD28B/olBMIv
         THjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ubQOJLqbWINZ/xIhuDMLx90m00myGGg/L5iT7MnEWdU=;
        b=UMKDNYe10q5E72STMHFNnCcDmoGBiyGXrmmsmbXfKg2g/wtI5Z6jNtpbtEy8o0f6s0
         1NPodhnsJgKyhZowcpZvW9HCjJtoV1Ga6JEqdnZY7nvi3fLPbkvzN5X91CzKGxy+vcV7
         CtjWvTfDGjCuRNGlyZGShAs2p04NfXL8XvIUPc2T6vF0JeCYp/uz+SP6idQhXaJWPz42
         PUou7qw/Z7FZlnzbory9+jmI5aMxZqXaY5v1y8aiI5HCTmq2WVvJ5goQEBuzmdZkyYSe
         C6oDR8b6rehW8lJ02ltYAFXrMl3ZcwHyfzYmxkVYO+EB5tvQkPu5rIgQvjRD47f0iVJ2
         jAUw==
X-Gm-Message-State: AFeK/H3LcF3XGdHomc5RnuHAd3KbZqujcULwsR7kTsj6RywQDAQhSSsNpdVx0a8STmWC/w==
X-Received: by 10.84.175.129 with SMTP id t1mr18185839plb.17.1490456627754;
        Sat, 25 Mar 2017 08:43:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id s26sm11354558pge.33.2017.03.25.08.43.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 08:43:47 -0700 (PDT)
Date: Sat, 25 Mar 2017 08:43:46 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, arushisinghal19971997@gmail.com,
	singhalsimran0@gmail.com, karniksayli1995@gmail.com
Subject: Re: [PATCH] Proposal for meter ade* patches
Message-ID: <20170325154345.GA1750@d830.WORKGROUP>
References: <1490427900-21479-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490427900-21479-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 25, 2017 at 01:15:00PM +0530, Gargi Sharma wrote:
> The driver needs to insure atomicity during frequency
> changes of bus and device. The iiodev->mlock as used
> was not doing that. Replace it with the drivers existing
> buffer lock and execute spi_write directly.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Hi Gargi,

It's certainly a clean, simple patch!  It's good that you're 
running it by Sayli, Simran, and Arushi.  Some consensus that
this flavor of fix will work in their drivers would be good
before forwarding it on for 'official' review.

An RFC tag might have been appropriate here, but no worries
now.  It's only in our Outreachy tree.

alisons

> ---
>  drivers/staging/iio/meter/ade7754.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index c8d2d4c..48339e9a 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -513,7 +513,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	if (!val)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->buf_lock);
>  
>  	t = 26000 / val;
>  	if (t > 0)
> @@ -531,10 +531,13 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	reg &= ~(3 << 3);
>  	reg |= t << 3;
>  
> -	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
> +	st->tx[0] = ADE7754_WRITE_REG(ADE7754_WAVMODE);
> +	st->tx[1] = reg;
> +
> +	ret = spi_write(st->us, st->tx, 2);
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

