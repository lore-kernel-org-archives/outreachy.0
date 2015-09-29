X-GM-THRID: 6200047519591825408
X-Received: by 10.112.144.99 with SMTP id sl3mr21176lbb.12.1443561686027;
        Tue, 29 Sep 2015 14:21:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.230 with SMTP id o6ls3647lag.91.gmail; Tue, 29 Sep 2015
 14:21:25 -0700 (PDT)
X-Received: by 10.152.197.34 with SMTP id ir2mr20818lac.10.1443561685501;
        Tue, 29 Sep 2015 14:21:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id hs5si768154wib.1.2015.09.29.14.21.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:21:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,609,1437429600"; 
   d="scan'208";a="149015943"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2015 23:21:24 +0200
Date: Tue, 29 Sep 2015 23:21:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Drivers: memory: atmel-sdramc: fixed
 character limit for a line
In-Reply-To: <20150929211043.GA11379@ubuntu>
Message-ID: <alpine.DEB.2.02.1509292318230.2031@localhost6.localdomain6>
References: <20150929211043.GA11379@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Sep 2015, Shivani Bhardwaj wrote:

> Fixed the 80 character limit issue for a line.

You should work on staging drivers.  You can basically work on anything in 
the subdirectory drivers/staging.

For the subject line, people don't usually put drivers, but rather more 
specific things.  You can see what is commonly used for the file you are 
working on by saying git log --oneline path/to/file.c.

> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>

This looks fine.

> ---
>  drivers/memory/atmel-sdramc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/memory/atmel-sdramc.c b/drivers/memory/atmel-sdramc.c
> index a3ebc8a..fb156c8 100644
> --- a/drivers/memory/atmel-sdramc.c
> +++ b/drivers/memory/atmel-sdramc.c
> @@ -44,8 +44,8 @@ static const struct at91_ramc_caps sama5d3_caps = {
>  static const struct of_device_id atmel_ramc_of_match[] = {
>  	{ .compatible = "atmel,at91rm9200-sdramc", .data = &at91rm9200_caps, },
>  	{ .compatible = "atmel,at91sam9260-sdramc", .data = &at91rm9200_caps, },
> -	{ .compatible = "atmel,at91sam9g45-ddramc", .data = &at91sam9g45_caps, },
> -	{ .compatible = "atmel,sama5d3-ddramc", .data = &sama5d3_caps, },
> +	{ .compatible = "atmel,at91sam9g45-ddramc", .data = &at91sam9g45_caps, }
> +	, { .compatible = "atmel,sama5d3-ddramc", .data = &sama5d3_caps, },

This is not really the best solution to the problem, because it makes the 
line look quite different from the others.  Maybe adding a newline would 
have been better.

julia

>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, atmel_ramc_of_match);
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150929211043.GA11379%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

