X-GM-THRID: 260132831232
X-Received: by 10.180.12.146 with SMTP id y18mr91627wib.6.1424240546711;
        Tue, 17 Feb 2015 22:22:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.227 with SMTP id o3ls1109280wiv.3.gmail; Tue, 17 Feb
 2015 22:22:26 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr102387wix.0.1424240546460;
        Tue, 17 Feb 2015 22:22:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si6099377wic.1.2015.02.17.22.22.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 22:22:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="100430375"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 07:22:25 +0100
Date: Wed, 18 Feb 2015 07:22:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: line6: replace init_timer
 by setup_timer
In-Reply-To: <20150218043030.GA21690@localhost.localdomain>
Message-ID: <alpine.DEB.2.02.1502180720510.2066@localhost6.localdomain6>
References: <20150218043030.GA21690@localhost.localdomain>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

On Wed, 18 Feb 2015, Aya Mahfouz wrote:

> This patch replaces init_timer and 2 step initialization of
> function and data by setup_timer using the following coccinelle
> script:

You could slightly improve the commit message by saying "to make the code 
more concise".  The change has no other impact because setup_timer is an 
inline function that just does what is already there.

julia

> @@
> expression ds, e1, e2;
> @@
> 
> -init_timer (&ds);
> +setup_timer (&ds, e1, e2);
> ...
> -ds.function = e1;
> ...
> -ds.data = e2;
> 
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/line6/toneport.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/line6/toneport.c b/drivers/staging/line6/toneport.c
> index 6943715..f6035ce 100644
> --- a/drivers/staging/line6/toneport.c
> +++ b/drivers/staging/line6/toneport.c
> @@ -396,10 +396,9 @@ static int toneport_try_init(struct usb_interface *interface,
>  
>  	toneport_setup(toneport);
>  
> -	init_timer(&toneport->timer);
> +	setup_timer(&toneport->timer, toneport_start_pcm,
> +		    (unsigned long)toneport);
>  	toneport->timer.expires = jiffies + TONEPORT_PCM_DELAY * HZ;
> -	toneport->timer.function = toneport_start_pcm;
> -	toneport->timer.data = (unsigned long)toneport;
>  	add_timer(&toneport->timer);
>  
>  	return 0;
> -- 
> 1.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218043030.GA21690%40localhost.localdomain.
> For more options, visit https://groups.google.com/d/optout.
> 

