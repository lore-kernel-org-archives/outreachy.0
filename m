X-GM-THRID: 6660473705806692352
X-Received: by 2002:ac8:7516:: with SMTP id u22mr23844789qtq.36.1550764856149;
        Thu, 21 Feb 2019 08:00:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:ec05:: with SMTP id h5ls1279281qkg.2.gmail; Thu, 21 Feb
 2019 08:00:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia648KIdlOVVuUUhy1mCNslZMfp4czh6XLe8Zoml0D4ga1hXyXq2ZrFC3tDEW5h+nTjP9Nv
X-Received: by 2002:a37:d654:: with SMTP id t81mr23379480qki.4.1550764855544;
        Thu, 21 Feb 2019 08:00:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550764855; cv=none;
        d=google.com; s=arc-20160816;
        b=Tjmg/aeHRbQ/9ywqOq7/K3pckn4xBizR6NvcHpj1y3KJH/bjhq6OZuze25k4BICplJ
         LzGbndzPO3eM+DojQc5BWxLMn8+/x2nGVJ/UISAkbBVUuLyRAPMhBs9MQF3pUxh5PJNT
         /z1zTvaYwRtzvI2MeqwRe8dsFL+QlyCSAulWZCfc66F3Ctygoa8JegsJ6Im8W7ZQO444
         OB87YYROEpo7foHuEQppm6btP4yfpuhzx5W/rd2bKmP6Bq+tPBi49K3OI6G5pVLiVNPz
         HC4fzVWwdFhOHPVLXN5ezpJxvBC9UsJ1PDfLMza3gu3xqmXP1wqmblDXBbL2LfX1+RDu
         dH6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aF5+U4gzRSO33RRHxTtkKB5a4Kt/tTHo4SxZ+QH9yAU=;
        b=ZXAbkhBhpb68E1zHQED+yb1copyRj6WRbvFMjv2veSE6RNbpqnra6rRP/E9FRIAxDn
         9SSdJwpIGfcampfXweKrgVOwA/ATZUSUhN28v0AhM4Q0OUdkOxSXyi/EZ/Ss9NTc1T0k
         qq6DHgbJ+1Cn53smZAkmm67nNMe85nYlMd4gDYXH8ny+uccDvYEBfgXxnuZOGmZqYeq4
         cOfZdFjFznKmC0JDOR9Weyp2EdHcez71Tjq/wdaR3voMPWHc4raeqoEHXFePMo/uTFtO
         cC3NQdXgm2qr30PLmXN3iZW3TjYM8GSRH8AhlEkGDtTAeICyB/Yqn/J7HCmjBFGZGmOJ
         7YVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tyAio3Uy;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si1395860qkg.3.2019.02.21.08.00.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 08:00:55 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tyAio3Uy;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 07DF22083E;
	Thu, 21 Feb 2019 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550764854;
	bh=ie9r6xx8apIzOnS38s48xiWzrmHRdzu/FR5aq7MHJuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tyAio3UywVA54sx0NcgrS0RbW9v9QSX9ORHA/If97xBAMU0n0VaeLs47dWOvcNavD
	 n3m1x87xG4YMs/NeKJJf9aQikiyWAeDDuGbDAfH71Z4pyuXmXuPOhbYgsMN+ISlkHY
	 Nu2oAaZjTZBZRPqp4PbROuwtu14ZtrThGbXrKrEU=
Date: Thu, 21 Feb 2019 17:00:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] Staging: fbtft: Declare Exprot symbols immediately
Message-ID: <20190221160051.GB23121@kroah.com>
References: <20190221151935.GA1946@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190221151935.GA1946@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 08:49:35PM +0530, Bhanusree Pola wrote:
> Declaring EXPORT_SYMBOLS immediately after function/variable would be
> more appropriate.
> This solves the checkpatch.pl warning:
> WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index 9d78ce6e819f..a5cdce4766bb 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -212,10 +212,10 @@ void fbtft_register_backlight(struct fbtft_par *par)
>  }
>  #else
>  void fbtft_register_backlight(struct fbtft_par *par) { };
> -void fbtft_unregister_backlight(struct fbtft_par *par) { };
> -#endif
>  EXPORT_SYMBOL(fbtft_register_backlight);
> +void fbtft_unregister_backlight(struct fbtft_par *par) { };
>  EXPORT_SYMBOL(fbtft_unregister_backlight);
> +#endif

Nah, the original is nicer to read, I would just leave it alone.

thanks,

greg k-h

