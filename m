X-GM-THRID: 6666446662964084736
X-Received: by 2002:a17:906:1d16:: with SMTP id n22mr2808627ejh.14.1552153441691;
        Sat, 09 Mar 2019 09:44:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9868:: with SMTP id h37ls3151355edb.3.gmail; Sat, 09 Mar
 2019 09:44:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqzXVnCVolaC3Phkacxmwt+LA/W4AJM0Xas4qGG443uKVnf0JnezMfHZiTrCgGW56kchyR4T
X-Received: by 2002:a50:97a6:: with SMTP id e35mr6260264edb.4.1552153440977;
        Sat, 09 Mar 2019 09:44:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552153440; cv=none;
        d=google.com; s=arc-20160816;
        b=heXyGcqxKF3KZR6WB6RsViV9CvVvIQtJegpmy9+sAyxbay3+Zw8ZzsOrQEUY9scfNT
         1gcmsz+5Dc66P5ia/swPBbAvKPLp/y6jx3KdU9W1xW7/4UxL23YBKN1U4Msq28mZYDSR
         YfOOoIq2RIqAD4CDuWG0wsOUCQ8i6VayZa/GjDB1WicQzB1SFa9lu9mpg5OkFLyJFKGx
         u8Ei2RfAmCvVQbUOiibGyzOzqTKSub8mRdEGwN0ScxXs0MZvamlzaRUgiaEZz/XT7HXk
         lHfzlCCZ3TCmrDjB8Az8zk3YqNv5vnk15PB0qYEOFjaaqktxvirOzZDN/RnthCu10EvL
         ADlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=eCPc9EOYkLD+0zuQWYVgKlKb+KmbK8G88hjm3IzKCWY=;
        b=gzDx5l3Q9sr6xRXP1cifkUM2fEDdWDiZxwvbvNpZAwFB7FfJaWtdDaaY06D2SuEUyG
         6JKMC6TcGANlXHKVPJmXjpZx1U7PP3s/U523u9lP2t3rcAsS1CnOW8p8Yleg2dbzfa8a
         0fTAe83YWFxm624UqiXAk2UJ+YgKqrfmUhu9ijfyONC61Kn181/Nrsd1GNAFBQKPL5M3
         kz/BggYIizI90mTBrlqU7zPxTdJJYmdP8HKNzmjUmoF4F2zkKwuQhFBklO8BcwmE74NQ
         zJWOnGl4Bk3JauDkLvi0q/rcqii8K5YLEIYqVYgeJLbMfeDOyf1S2z1PISML7hX8Knq0
         naLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q1si448220edd.5.2019.03.09.09.44.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:44:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="372642793"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 18:44:00 +0100
Date: Sat, 9 Mar 2019 18:44:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: zoran: remove
 unnecessary parentheses
In-Reply-To: <20190309173734.51405-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903091843120.13389@hadrien>
References: <20190309160705.51339-1-himadri18.07@gmail.com> <20190309173734.51405-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Himadri Pandya wrote:

> Remove unnecessary parentheses from right hand side of
> assignments.Suggested by Coccinelle.

Put a space after the period.

It seems that this driver is on the way out of the kernel, so it may not
be worth working on it further.

git log --oneline drivers/staging/media/zoran/zoran_device.c

julia

>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/media/zoran/zoran_device.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
> index 40adceebca7e..c27e1472b7a8 100644
> --- a/drivers/staging/media/zoran/zoran_device.c
> +++ b/drivers/staging/media/zoran/zoran_device.c
> @@ -496,7 +496,7 @@ zr36057_overlay (struct zoran *zr,
>  				KERN_ERR
>  				"%s: zr36057_overlay() - video_stride not aligned\n",
>  				ZR_DEVNAME(zr));
> -		reg = (reg << ZR36057_VSSFGR_DispStride);
> +		reg = reg << ZR36057_VSSFGR_DispStride;
>  		reg |= ZR36057_VSSFGR_VidOvf;	/* clear overflow status */
>  		btwrite(reg, ZR36057_VSSFGR);
>
> @@ -1421,7 +1421,7 @@ zoran_irq (int             irq,
>  					reg = 0;
>  					if (zr->v4l_settings.height > BUZ_MAX_HEIGHT / 2)
>  						reg += zr->v4l_settings.bytesperline;
> -					reg = (reg << ZR36057_VSSFGR_DispStride);
> +					reg = reg << ZR36057_VSSFGR_DispStride;
>  					reg |= ZR36057_VSSFGR_VidOvf;
>  					reg |= ZR36057_VSSFGR_SnapShot;
>  					reg |= ZR36057_VSSFGR_FrameGrab;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309173734.51405-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

