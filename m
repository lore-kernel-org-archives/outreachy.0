X-GM-THRID: 6671532188671934464
X-Received: by 2002:aca:e1c2:: with SMTP id y185mr3110902oig.3.1553417855839;
        Sun, 24 Mar 2019 01:57:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5988:: with SMTP id n130ls2265883oib.0.gmail; Sun, 24
 Mar 2019 01:57:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHg+2MboMorRJ8ruvIT4MMcobsrDYmVNxtEa0DEK9wj3kjUMlA5nECiAFINE75DxFXsZHi
X-Received: by 2002:aca:3b56:: with SMTP id i83mr7903235oia.162.1553417855185;
        Sun, 24 Mar 2019 01:57:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553417855; cv=none;
        d=google.com; s=arc-20160816;
        b=gErFmRumc4KFaQkAqSnn35dWM9AcXqvBM7QdeDFXzphYeAl3GHDjVfgzTzROK7jQ9j
         uFoijc/A9tFgZINTig8b1YAMHv9LzILyj0+Nelw+9Z1pTYyy90lBilkJoQssp8xX1Yve
         gtYolbMeW+COnOLPlWJaBge5SySfQv9VWcFQueQKnRyy4bG69F0U8zUJBG3uHU5aUx4L
         ELpsbMWKGWdmaEiV4Ew9hV6cMx1ch7muD6ny8DRk5zzY2wbFscJ1KEanZ9Zjq12Uwc6q
         Dm+dx2Qy9hgO1a1hhrs96Akwgiw9wyU/lelbhosMIkTvHpzo9gOA/49uiKI3Vc8bj6OD
         HvKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NWKo8kJxrjjxKOvqRA9Oh/gG8ERuYg1Y8RTkA4RkPMY=;
        b=WVl7ytWWwcinOe8tI7G2D023BS5GkpurVstmv1qod/qBeXUD81uJnHDMf5gjkmRgvJ
         ZANZD+dWPoQleXqB/TgUzQ6JC3J2IjbIfiAUyaAJ+d+hs/kBmwGnq2MtBFqTT0QXcQXj
         5mCqLxZFPzBCPemW9oojLrA36F7POqjct6d4G2fY/rfIHLW9ADCja72ojIQz0bBKf8G/
         novgGcyLLDvmKoDT8ogM0UKWF+yKo/VDyFca9skLEgiNde5L6RgJEKsRT+nN3NE9x84l
         ybN6QULW+Z91d0UUoC7dXzZXRCa430BVxrMbBS2z3jmU57Sq5hMkRIvAR8xb0I5nFZrr
         Lrvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AJ7+sNEI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si747861oig.5.2019.03.24.01.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 01:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AJ7+sNEI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EFF332171F;
	Sun, 24 Mar 2019 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553417854;
	bh=BSXDCVJ072dBu0ncD+MBngr4NbLQPte50rBCtCDbmCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AJ7+sNEIwIPlX0baNyqNOUBddjjSUztWq9Z0P5aiW2QmNDYpkInIJy/TDAxvQ/y2I
	 bmAqsnbWZ73sOnYBDVitvaRW1Aqx+S2ripAD5DuMI7uqKELieRYpQ8mbxn1LsTbN04
	 kiWnl9gwuJjwqRxqv5e82Nq53V/inADKLmQXNoF0=
Date: Sun, 24 Mar 2019 09:57:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: anushkacharu9@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: greybus: arche-platform.c:
 fix line over 80 characters
Message-ID: <20190324085732.GB21361@kroah.com>
References: <anushkacharu9@gmail.com>
 <20190323103201.4626-1-anushkacharu9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190323103201.4626-1-anushkacharu9@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 23, 2019 at 04:02:01PM +0530, anushkacharu9@gmail.com wrote:
> From: Anushka Shukla <anushkacharu9@gmail.com>
> 
> Fix line over 80 charcters by shifting the comment
> 
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index 6eb842040c22..1e8fd48bedf9 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -47,7 +47,8 @@ struct arche_platform_drvdata {
>  	struct gpio_desc *svc_reset;
>  	bool is_reset_act_hi;
>  	struct gpio_desc *svc_sysboot;
> -	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
> +	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
> +	struct gpio_desc *wake_detect; 

You added trailing whitespace here :(

Also, the original is fine.

thanks,

greg k-h

