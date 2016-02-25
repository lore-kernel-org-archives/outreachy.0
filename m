X-GM-THRID: 6255196435658047488
X-Received: by 10.25.18.227 with SMTP id 96mr5514598lfs.4.1456404562911;
        Thu, 25 Feb 2016 04:49:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.211.17 with SMTP id k17ls132947wmg.48.canary; Thu, 25 Feb
 2016 04:49:22 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr347001wme.0.1456404562452;
        Thu, 25 Feb 2016 04:49:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si126704wmy.2.2016.02.25.04.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:49:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="165955292"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 13:49:21 +0100
Date: Thu, 25 Feb 2016 13:49:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: rdma: Remove wrapper
 sdma_start_hw_clean_up
In-Reply-To: <a065f9a17e7716720dbf0505dfdbfeaed90b234f.1456390351.git.bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602251348380.2708@hadrien>
References: <cover.1456390351.git.bhumirks@gmail.com> <a065f9a17e7716720dbf0505dfdbfeaed90b234f.1456390351.git.bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Feb 2016, Bhumika Goyal wrote:

> The function sdma_start_hw_clean_up can be replaced with direct call to
> tasklet_hi_schedule. So drop the function definition and prototype of
> sdma_start_hw_clean_up and replace the calls with tasklet_hi_schedule.
> Done using coccinelle:
>
> @@
> expression e;
> @@
> - sdma_start_hw_clean_up(e);
> + tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);

I think that the metavariable should be called sde, not e.  You want to
propagate the argument from one call to the other.

julia

>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/sdma.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rdma/hfi1/sdma.c b/drivers/staging/rdma/hfi1/sdma.c
> index 9a15f1f..d833a00 100644
> --- a/drivers/staging/rdma/hfi1/sdma.c
> +++ b/drivers/staging/rdma/hfi1/sdma.c
> @@ -235,7 +235,6 @@ static void sdma_get(struct sdma_state *);
>  static void sdma_hw_clean_up_task(unsigned long);
>  static void sdma_put(struct sdma_state *);
>  static void sdma_set_state(struct sdma_engine *, enum sdma_states);
> -static void sdma_start_hw_clean_up(struct sdma_engine *);
>  static void sdma_sw_clean_up_task(unsigned long);
>  static void sdma_sendctrl(struct sdma_engine *, unsigned);
>  static void init_sdma_regs(struct sdma_engine *, u32, uint);
> @@ -670,11 +669,6 @@ static void sdma_sw_tear_down(struct sdma_engine *sde)
>  	wake_up_interruptible(&sde->dd->sdma_unfreeze_wq);
>  }
>
> -static void sdma_start_hw_clean_up(struct sdma_engine *sde)
> -{
> -	tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
> -}
> -
>  static void sdma_set_state(struct sdma_engine *sde,
>  	enum sdma_states next_state)
>  {
> @@ -2293,7 +2287,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		case sdma_event_e15_hw_halt_done:
>  			sdma_set_state(sde,
>  				sdma_state_s15_hw_start_up_clean_wait);
> -			sdma_start_hw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
>  			break;
>  		case sdma_event_e25_hw_clean_up_done:
>  			break;
> @@ -2422,7 +2416,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  			break;
>  		case sdma_event_e40_sw_cleaned:
>  			sdma_set_state(sde, sdma_state_s40_hw_clean_up_wait);
> -			sdma_start_hw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
>  			break;
>  		case sdma_event_e50_hw_cleaned:
>  			break;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a065f9a17e7716720dbf0505dfdbfeaed90b234f.1456390351.git.bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

