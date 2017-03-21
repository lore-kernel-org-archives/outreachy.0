X-GM-THRID: 6399496110666153984
X-Received: by 10.107.58.196 with SMTP id h187mr7824391ioa.31.1490112949845;
        Tue, 21 Mar 2017 09:15:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls320065otc.44.gmail; Tue, 21 Mar
 2017 09:15:49 -0700 (PDT)
X-Received: by 10.200.54.91 with SMTP id n27mr4722738qtb.61.1490112949349;
        Tue, 21 Mar 2017 09:15:49 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s67si1283444pfs.4.2017.03.21.09.15.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:15:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so17940621pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 09:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ggGkZCG+Veus6mHC8UsHQIn10cHq2koqiAoemMGf8HM=;
        b=o98ZdumsJ5d+4C+g9FsA3eQ35GwxjZyM8cTVKc6ISpvmNYU3qEstYqXvHYS3nHn2fm
         KIvSzzI2TA1HIPWVfv5E9j1fpZxL6IwtXYZGS+xA4mWr+4Eteljn7ZUKe0b5Ots1+tfm
         fCNYOnbo0ybr1/9Fe1IKNMnYVvmux9LwmECRq2g8JGMqel/uYMcOGAIn2NYNSiDwb5Iw
         VyHUs1HPOgYzTL5a3b1Fcegjm3N2Ug6ElkBjQxYXryJ/ahSZTO/dmZX25G/vjqOMZOSd
         Qh+7XLm/gkRQ7B6UxvpBuG5BtF1UzClP7//KUba2/MKsK+seZMuEeNdKKuXCeDQrQyEu
         PWDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ggGkZCG+Veus6mHC8UsHQIn10cHq2koqiAoemMGf8HM=;
        b=PAcBqz3LYM87lJrdLdEnBsJgBfkm+kXXCp93XoHJvVfuz9Bkhu+sSOVxJhgDUywiYh
         d2+bsuJGkk9oW/6U20s77VOQxM9wpNgYgC1nH1Kgp0rE4EttN0FEaYFW4JPYrxwUug6d
         qEEwW8YkpbWCGu1LqFxHcsAXTbZqOgZFZ1WLnstHJNHecVPm9lRpc1EM8/J6xVXku4w3
         zWxeeZ8nGUx/xZ8tdddRZusi5crgG1Oiwv+hHrwe1utqDtU0xkuP6Fks7BTFjgT3CwFg
         XIkIyD6I+G/ei/gKz5ZXN6pwKRNMcEjOoJfeb2d7hgxbYnS1pu7suNOLo7NMFk7oqLPB
         nj6w==
X-Gm-Message-State: AFeK/H3S5FntTvc9w+/nvkuDCQXhAkm2sok0psSQv1yakHdAWONPZGiSdM3kT+ORTO5q2A==
X-Received: by 10.98.204.195 with SMTP id j64mr39836399pfk.213.1490112949088;
        Tue, 21 Mar 2017 09:15:49 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id e76sm40512232pfk.75.2017.03.21.09.15.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 09:15:48 -0700 (PDT)
Date: Tue, 21 Mar 2017 09:15:47 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org,
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: adis16203: Remove
 locking on raw reads of IIO_CHAN_INFO_CALIBBIAS
Message-ID: <20170321161547.GD1859@d830.WORKGROUP>
References: <1490112126-30265-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490112126-30265-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 09:32:06PM +0530, Gargi Sharma wrote:
> adis16203_read_raw does not need lock for IIO_CHAN_INFO_CALIBBIAS
> since adis_read_reg_16 is already atomic and nothing else needs to be
> protected.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Just sent yesterday too!

> ---
>  drivers/staging/iio/accel/adis16203.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
> index 68189ad..14fe2d3 100644
> --- a/drivers/staging/iio/accel/adis16203.c
> +++ b/drivers/staging/iio/accel/adis16203.c
> @@ -203,17 +203,14 @@ static int adis16203_read_raw(struct iio_dev *indio_dev,
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_CALIBBIAS:
>  		bits = 14;
> -		mutex_lock(&indio_dev->mlock);
>  		addr = adis16203_addresses[chan->scan_index];
>  		ret = adis_read_reg_16(st, addr, &val16);
>  		if (ret) {
> -			mutex_unlock(&indio_dev->mlock);
>  			return ret;
>  		}
>  		val16 &= (1 << bits) - 1;
>  		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
>  		*val = val16;
> -		mutex_unlock(&indio_dev->mlock);
>  		return IIO_VAL_INT;
>  	default:
>  		return -EINVAL;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1490112126-30265-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

