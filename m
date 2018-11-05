X-GM-THRID: 6620379413564358656
X-Received: by 2002:adf:f192:: with SMTP id h18-v6mr2227707wro.1.1541427453616;
        Mon, 05 Nov 2018 06:17:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:32c4:: with SMTP id y187-v6ls1341145wmy.11.gmail; Mon,
 05 Nov 2018 06:17:32 -0800 (PST)
X-Google-Smtp-Source: AJdET5dkH4S9ednAiiZY/0n3GocIT9F9wZWi004Uj80Yt3oS1RB1v0z5OygSpBRXK762E02VP2ce
X-Received: by 2002:a1c:9c01:: with SMTP id f1-v6mr833253wme.10.1541427452926;
        Mon, 05 Nov 2018 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541427452; cv=none;
        d=google.com; s=arc-20160816;
        b=j4hF8oN+NbFwjPLq/uN0GeO+6DLGM3dZV7GRXC9ikQnL5Jx3mJi0Y0D0qn79pIgw7x
         Lp2sZ8Qr4bcPqqQ6zYujqkve503svbssAj972Z9joj3Q8Cr249OF+IB4uPNZi36Ynkqr
         gQsHcjqC2itJZ98wLRZCSmeKihFcigXkg0rwAPFXrFoOUYaFofDsGRxXuRpijJlHyXDd
         g9JyhoV4Hk8TioOz2aBPZFkEiB5O5B8Agvn2yy5QnYlXGKJ3iF6r0ZfjKtMBUclkuzII
         ZCbv2qyXgBiO3t6B8b9PnysbrhhjTcdiwRI4aRnG7PwDBHrronvsvwyvJH8m7NXsP/KE
         crdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+U/mbPiNSLFFO3ue9Z3cI6WiSxxsfUXX+GzXuGYuo4A=;
        b=OmHxHfShfKYaE9Csy6eke+v9eHpD2qQdbUDf2x9XMdhMkMH99qUq3p7JqH8AZ7aFIR
         OPjC3hP+9v0+IMDVzdSWf8h1AcFsCY/hb2hMnlQHeisS3cH5ldYXrJpv5v9CbUY/H4uP
         OvKjRLbH6u1h3CgrVqC9x97o1pQtbA0MM+EHPY0ZEFRnxmByvu3bxscHklhKS7rmZkNo
         GLM8oJ5CmAHt56DjvXeOz2Kyd1QVieny/aJkDa6lvulj+g79RPguGt0OH5wWMgXoLzKF
         i03eb4aXfyou10SU4tMj6jjMpI6t9YJWwOpF2XLKBM29DFVi54lF2zicWofIjBEG6rQy
         WhTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n6-v6si807328wrj.4.2018.11.05.06.17.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:17:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,468,1534802400"; 
   d="scan'208";a="354191369"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 15:17:32 +0100
Date: Mon, 5 Nov 2018 15:17:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: zoran: replace masking
 with BIT macro
In-Reply-To: <f5cb20814f9f4ce4d4de2b1b5b972aca741eafd2.1541427136.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.20.1811051516570.31780@hadrien>
References: <cover.1541427136.git.code@wizofe.uk> <f5cb20814f9f4ce4d4de2b1b5b972aca741eafd2.1541427136.git.code@wizofe.uk>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Nov 2018, Ioannis Valasakis wrote:

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

Theer is no need for parentheses around a call to BIT.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f5cb20814f9f4ce4d4de2b1b5b972aca741eafd2.1541427136.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

