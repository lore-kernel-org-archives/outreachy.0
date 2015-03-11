X-GM-THRID: 7650196586496
X-Received: by 10.112.44.167 with SMTP id f7mr2873259lbm.9.1426071738804;
        Wed, 11 Mar 2015 04:02:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.199 with SMTP id x7ls146768lae.0.gmail; Wed, 11 Mar
 2015 04:02:18 -0700 (PDT)
X-Received: by 10.112.98.38 with SMTP id ef6mr4603492lbb.3.1426071738352;
        Wed, 11 Mar 2015 04:02:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id gj20si1280852wic.1.2015.03.11.04.02.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 04:02:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,381,1422918000"; 
   d="scan'208";a="102897183"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Mar 2015 12:02:17 +0100
Date: Wed, 11 Mar 2015 12:02:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Somya Anand <somyaanand214@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] Staging: dgap: Use setup_timer
 to combine initialization
In-Reply-To: <1426068292-20348-3-git-send-email-somyaanand214@gmail.com>
Message-ID: <alpine.DEB.2.10.1503111200400.2639@hadrien>
References: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com> <1426068292-20348-3-git-send-email-somyaanand214@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 11 Mar 2015, Somya Anand wrote:

> The function setup_timer combines the initialization of a timer with the
> initialization of the timer's function and data fields.
>
> So, this patch combines the multiline code for timer initialization using the function
> setup_timer. This issue is identified via coccinelle script.
>
> @@
> expression E1, E2, E3;
> type T;
> @@
> - init_timer(&E1);
> ...
> (
> - E1.function = E2;
> ...
> - E1.data = (T)E3;
> + setup_timer(&E1, E2, (T)E3);
> |
> - E1.data = (T)E3;
> ...
> - E1.function = E2;
> + setup_timer(&E1, E2, (T)E3);
> |
> - E1.function = E2;
> + setup_timer(&E1, E2, NULL);
> )
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/dgap/dgap.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
> index d4d98a7..43163a0 100644
> --- a/drivers/staging/dgap/dgap.c
> +++ b/drivers/staging/dgap/dgap.c
> @@ -7041,8 +7041,7 @@ static int dgap_start(void)
>
>  	/* Start the poller */
>  	spin_lock_irqsave(&dgap_poll_lock, flags);
> -	init_timer(&dgap_poll_timer);
> -	dgap_poll_timer.function = dgap_poll_handler;
> +	setup_timer(&dgap_poll_timer, dgap_poll_handler, NULL);

As shown by the other patches, the last argument of setup_timer is an
unsigned long, not a pointer.  So it would be better to put 0 or 0UL than
NULL.

julia

>  	dgap_poll_timer.data = 0;
>  	dgap_poll_time = jiffies + dgap_jiffies_from_ms(dgap_poll_tick);
>  	dgap_poll_timer.expires = dgap_poll_time;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426068292-20348-3-git-send-email-somyaanand214%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

