X-GM-THRID: 6670781063292256256
X-Received: by 2002:a1c:2355:: with SMTP id j82mr183584wmj.7.1553162914230;
        Thu, 21 Mar 2019 03:08:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ec8d:: with SMTP id z13ls1120937wrn.3.gmail; Thu, 21 Mar
 2019 03:08:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDPPziKWxIApAMma+2BRwd0KSbLHdRcFFwuHX4nHP0W+K+K6hsatHNNslhR4JOAuui/dWU
X-Received: by 2002:adf:b502:: with SMTP id a2mr60484wrd.12.1553162913407;
        Thu, 21 Mar 2019 03:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553162913; cv=none;
        d=google.com; s=arc-20160816;
        b=z3km7rl158J2/h3mocJ+NGAS/hjyOVYAvJpmUpe+FoRWrkyy6ujLJbpDRNUmgk0mwc
         gWSt7XVJDLHRwKm33WqaBEnBgqyb6CodtTJ2e9u2OA6dEy7buRolUtMobZEX8OLH7hF3
         NNDP7ndQnDkP7ymCY7fyy0HfuNE6esigtcUaHQyhZfck/GXYrqBSEf+elF+gWZEvpWz2
         5JLE8r0sv1V51/h9IYQm60nkBgG4R3h+6E254o77GOjja1j37acA3z/3JlQl61OzGTpw
         Ckt9R8GQR23XNSeh6vyGCS5x6lfPrfuOR4oWp1JtRjYsXYRDORWDq60gQLybNdI91yML
         Ob/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3kRXp0D9Pt/aM8VDZIMl9s58994K0q3iJBW/b53wuOs=;
        b=jY08oPtP/jrpDCoV9wMpJZKdzrX0XucvTbPmdanfwLPuR7QUR1/cfKwLUtoQuONcqG
         r2kx/8/ShPlDuMu0qT/y+3Ry8WGw2DQ32CTnynsxlUcY+VrOPuKC5TL9ieP/wTb26xrf
         ild/LJ3R78ZyySAaTS6ofoUkNBr6xaw04hFG3V4zMGPf0vBAelFn9munTiNdqf29uADs
         vodujStcv3hBjbJRb53Cxf31flNVgJOx8lGrv7PzKh/FMBVvCvt0rKs1bsa37OTlXlXS
         6LFKjwVGDdY3SHBQ2mPrB1zlSX346MHZdf+nEsTSBJXrMGOGFkCKsRDB8S7dGdDQYqet
         Xztw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a9si230345wrp.5.2019.03.21.03.08.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:08:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,252,1549926000"; 
   d="scan'208";a="300219075"
Received: from wifi-eduroam-85-116.paris.inria.fr ([128.93.85.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 11:08:32 +0100
Date: Thu, 21 Mar 2019 11:08:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Remove unnecessary
 error print
In-Reply-To: <20190321095717.24155-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.20.1903211106390.5292@hadrien>
References: <20190321095717.24155-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Himadri Pandya wrote:

> Kmalloc normally produces a backtrace when there is not enough memory.
> So it is unnecessary to print an error message that provides only this
> information. Hence, remove pr_error() from memory allocation check.
> Issue found using Coccinelle.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 8554fcf4321b..afba1248e100 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -389,10 +389,8 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
>  	base = priv->base_addr;
>  	spill_size = size;
>  	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
> -	if (!spill) {
> -		pr_err("Unable to allocate memory for spill area!\n");
> +	if (!spill)
>  		return ZERO_SIZE_PTR;

This seems to be the only driver that uses ZERO_SIZE_PTR as the result for
kmalloc.  It could be worth looking into what happens to this value
afterwards.

julia

> -	}
>
>  	spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
>  	phys_addr = virt_to_phys(spill);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321095717.24155-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

