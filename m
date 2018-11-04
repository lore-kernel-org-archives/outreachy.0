X-GM-THRID: 6619835502508900352
X-Received: by 2002:a2e:834f:: with SMTP id l15-v6mr1125052ljh.19.1541313278892;
        Sat, 03 Nov 2018 23:34:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6317:: with SMTP id x23-v6ls66357ljb.21.gmail; Sat, 03
 Nov 2018 23:34:38 -0700 (PDT)
X-Google-Smtp-Source: AJdET5erpGrfV3FESnhSz8ZvN0s1wpyuZwAA3Ro8un92Udvf+bps8k8XjRutN55vZ+3+sybzMVhf
X-Received: by 2002:a2e:9e4a:: with SMTP id g10-v6mr1531827ljk.26.1541313278125;
        Sat, 03 Nov 2018 23:34:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541313278; cv=none;
        d=google.com; s=arc-20160816;
        b=TgPPBcY0LWTVjruQaXD6t3+xbCXp7+D9GFyoCOuUUg9483HCLVai3I8zqp/XFb63kE
         TwWr/d5extVBkG9ESL0bt6v1niHFbcc+ZDcf/7jkLNeopv5e0zoP7CeHY6OirPvd7u6W
         9OqejMZIFHYqHoc5edtFyNMicaFEZ5xAqTvr+Ys7HMSEW6wCpBrG3HV+EtoH6czH2muL
         FZkLkg8dZF07t7fR6GguhIN2fsvuagVSZX5kEf4wRxyvDs0Iru+TC+C6eW3eYHeaaaJv
         zZyz5J38/pxFsoD5aimbdLOLto6WYn7FXZb/jlcPvRKqKokQKFgvcLJ77++pSw6wCLLS
         mkCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jlbAHAaXeEBGYaFgWSsFZTF/45UQ9unz9LYCKOztc4c=;
        b=H+U3V7RdfFuRR0y26emU0IqlxfRS5IRwRw1/zr0QWkiqzYAvEFqTga2A7semjPwCcb
         2m01+4ksQRgLfU1Bdw2AO6ewcCFp1aPTP+eNdRWRupcUnA8Xf4xo2q/AYUTiNkwL8nc3
         IHsLEcV3KeFNDQ71AXyD9KsOYStxD3GJsmMbA051hEjcUTNo4/wjlQp8NwkCyV1QhCYa
         HOjVQOoQ9UjtegxvIiZXQCrWwCkAkORcgn39ib2lNG3HFcJwxGfF/x8lgpCXIVXd86u3
         xDq8BpyddQYvP37QhLzdf7Up94qw4/HsOIaO4nNTj4lfE5bfn1F8j/SACQ5d4DPZ+T9O
         BvOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d14-v6si548810lfk.0.2018.11.03.23.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 23:34:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,463,1534802400"; 
   d="scan'208";a="284263955"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 07:34:37 +0100
Date: Sun, 4 Nov 2018 07:34:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: zoran: replace masking
 with BIT macro
In-Reply-To: <e1f47470988dd3e5a8e7d39bf6a051e6de2637a3.1541300498.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811040732240.2448@hadrien>
References: <cover.1541300498.git.code@wizofe.uk> <e1f47470988dd3e5a8e7d39bf6a051e6de2637a3.1541300498.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> Replace bit masking with the more preferable BIT macro.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/media/zoran/zoran_device.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
> index 40adceebca7e..1e6782b72369 100644
> --- a/drivers/staging/media/zoran/zoran_device.c
> +++ b/drivers/staging/media/zoran/zoran_device.c
> @@ -92,7 +92,7 @@ GPIO (struct zoran *zr,
>  	/* Make sure the bit number is legal
>  	 * A bit number of -1 (lacking) gives a mask of 0,
>  	 * making it harmless */
> -	mask = (1 << (24 + bit)) & 0xff000000;
> +	mask = (BIT((24 + bit))) & 0xff000000;

In addition to not needing the parentheses around the call to BIT, you
also don't need the extra parentheses around the argument.  Macros should
be written in a defensive way, which is the case of BIT:

#define BIT(nr)			(1UL << (nr))

If the macro is not written in a defensive way, then you should fix the
macro instead of adding extra parentheses at all of the call sites.

julia

>  	reg = btread(ZR36057_GPPGCR1) & ~mask;
>  	if (value) {
>  		reg |= mask;
> @@ -285,8 +285,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
>  	case BUZ_MODE_MOTION_DECOMPRESS:
>  		btand(~ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
>  		reg = btread(ZR36057_VFEHCR);
> -		if ((reg & (1 << 10)) && zr->card.type != LML33R10) {
> -			reg += ((1 << 10) | 1);
> +		if ((reg & (BIT(10))) && zr->card.type != LML33R10) {
> +			reg += ((BIT(10)) | 1);
>  		}
>  		btwrite(reg, ZR36057_VFEHCR);
>  		break;
> @@ -300,8 +300,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
>  		else
>  			btor(ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
>  		reg = btread(ZR36057_VFEHCR);
> -		if (!(reg & (1 << 10)) && zr->card.type != LML33R10) {
> -			reg -= ((1 << 10) | 1);
> +		if (!(reg & (BIT(10))) && zr->card.type != LML33R10) {
> +			reg -= ((BIT(10)) | 1);
>  		}
>  		btwrite(reg, ZR36057_VFEHCR);
>  		break;
> @@ -407,7 +407,7 @@ zr36057_set_vfe (struct zoran              *zr,
>  	} else if (HorDcm >= 32) {
>  		reg |= 2 << ZR36057_VFESPFR_HFilter;	/* 4 tap filter */
>  	} else if (HorDcm >= 16) {
> -		reg |= 1 << ZR36057_VFESPFR_HFilter;	/* 3 tap filter */
> +		reg |= BIT(ZR36057_VFESPFR_HFilter);	/* 3 tap filter */
>  	}
>  	reg |= format->vfespfr;
>  	btwrite(reg, ZR36057_VFESPFR);
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e1f47470988dd3e5a8e7d39bf6a051e6de2637a3.1541300498.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

