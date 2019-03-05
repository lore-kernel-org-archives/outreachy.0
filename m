X-GM-THRID: 6664782574497300480
X-Received: by 2002:adf:ee01:: with SMTP id y1mr1203366wrn.10.1551771749695;
        Mon, 04 Mar 2019 23:42:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6c01:: with SMTP id h1ls211517wmc.13.gmail; Mon, 04 Mar
 2019 23:42:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqx1stz/oF45rbI1HxM69mYHRG9utQTaoyJZBQ83K7AQm74KbRtrqPquJldYABuKaXSxXJO4
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr199850wmd.0.1551771749032;
        Mon, 04 Mar 2019 23:42:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551771749; cv=none;
        d=google.com; s=arc-20160816;
        b=fIwmRtBylQbZ2FSu23LbcQjWtDTaAKsNE5Shl+fHrd0J2JTjp38aOEdeUdq/ZsVYVH
         YenO17rruMhmTOMmTo0QvNePTSMHn+bEBABc9twoh4rklzzcZgGxA2CKzlVpjWO8IQiR
         2Ch1fpFNfSgARPOyXiwxV4zMwsb8x+ipae5RL0qa8HXUa6AleBRY54Cz/Xrfj6LCeSEV
         +5dvFVRxojEX8zAFwQyPJxQtRbQKjTvIhe4GPm4hDOerAL6ue1Wyq7jCDf0wgIj3Wf9e
         Rg+oA3VEWH+s+CBXNedhNrzpRYhyoObpsuAnMJa0I+0Hhu4GNyZOVh6M0CmVohbbUqks
         zV5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=G051Bydp1RJJvi7yI/xLhFrJUfuMShLGLGy2zIZRR0s=;
        b=vFwoDJ+DNPvOCLwbNCiJ8/MJULbijqQ918l3NBDXLIYO8f1yoBNjLyobD9qa+oaVXR
         dZnH5PCwBUQDYYbDDfY92mDuWNJ/PZTVAgoxfEyfAxxKiFVqiDE6cbj1xQSOOLbi7QO0
         4uBJz1UeBs0MZmDqOUsha4YQnLh0hXrIjbZP9qPBVZsta2izQ7RoYKG6E86JCR9UDsvF
         NYC4IImcgw06cb5PvRC6N4SWx3ZkPuUVtvajFblmobrDR68+tg2GgJ5qYPaPFgeHq2Fz
         pB+L7HooJ/74DBY2+ZCvOGFvbNwwyXamsr7Vra7LZ1G+d0XFcjj6M0jNPrwNUBRZUtlz
         Wuvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t22si485524wmj.2.2019.03.04.23.42.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:42:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,443,1544482800"; 
   d="scan'208";a="371926478"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 08:42:24 +0100
Date: Tue, 5 Mar 2019 08:42:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Avoid CamelCase.
In-Reply-To: <20190305060005.GA7726@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1903050840120.2551@hadrien>
References: <20190305060005.GA7726@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Bhagyashri Dighole wrote:

> Fix coding style issues detected by checkpatch.pl `CHECK: Avoid
> CamelCase`.
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/fbtft/fb_watterott.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 0a5206d..7e9c57b 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -90,13 +90,13 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	return 0;
>  }
>
> -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> +#define rgb565torgb323(c) ((((c) & 0xE000) >> 8) |\
>  			   (((c) & 000600) >> 6) |\
>  			   (((c) & 0x001C) >> 2))
> -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> +#define rgb565torgb332(c) ((((c) & 0xE000) >> 8) |\
>  			   (((c) & 000700) >> 6) |\
>  			   (((c) & 0x0018) >> 3))
> -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> +#define rgb565torgb233(c) ((((c) & 0xC000) >> 8) |\
>  			   (((c) & 000700) >> 5) |\
>  			   (((c) & 0x001C) >> 2))
>
> @@ -122,7 +122,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
>  	for (i = start_line; i <= end_line; i++) {
>  		pos[1] = cpu_to_be16(i);
>  		for (j = 0; j < par->info->var.xres; j++) {
> -			buf8[j] = RGB565toRGB332(*vmem16);
> +			buf8[j] = rgb565torgb332(*vmem16);

Is this the only use of any of these macros?

Perhaps the others should be deleted.  They have lots of magic numbers,
but I don't know if they actually encode any information about the device.

rgb565torgb332 is also a bit clunky.  Consider rgb565_to_rgb332.

julia


>  			vmem16++;
>  		}
>  		ret = par->fbtftops.write(par,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305060005.GA7726%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

