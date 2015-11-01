X-GM-THRID: 6212095586717401088
X-Received: by 10.112.138.66 with SMTP id qo2mr3349482lbb.2.1446367026934;
        Sun, 01 Nov 2015 01:37:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.91.141 with SMTP id p135ls393090wmb.40.canary; Sun, 01 Nov
 2015 01:37:06 -0700 (PDT)
X-Received: by 10.28.211.201 with SMTP id k192mr1212332wmg.3.1446367026540;
        Sun, 01 Nov 2015 01:37:06 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 13si325059wml.2.2015.11.01.01.37.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:37:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185423715"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 09:37:06 +0100
Date: Sun, 1 Nov 2015 09:37:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: rdma: hfi1: sdma: Remove
 wrapper functions
In-Reply-To: <12c017e4966c52a7f15487e1bd2eb6b907bee4d3.1446366036.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1511010936310.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com> <12c017e4966c52a7f15487e1bd2eb6b907bee4d3.1446366036.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:

> Drop wrapper functions sdma_start_err_halt_wait() and sdma_start_sw_clean_up()
> that can be replaced by a single line of code.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/sdma.c | 40 ++++++++++++++--------------------------
>  1 file changed, 14 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/rdma/hfi1/sdma.c b/drivers/staging/rdma/hfi1/sdma.c
> index 63ab721..4e44ac7 100644
> --- a/drivers/staging/rdma/hfi1/sdma.c
> +++ b/drivers/staging/rdma/hfi1/sdma.c
> @@ -230,7 +230,6 @@ static void sdma_hw_clean_up_task(unsigned long);
>  static void sdma_put(struct sdma_state *);
>  static void sdma_set_state(struct sdma_engine *, enum sdma_states);
>  static void sdma_start_hw_clean_up(struct sdma_engine *);
> -static void sdma_start_sw_clean_up(struct sdma_engine *);
>  static void sdma_sw_clean_up_task(unsigned long);
>  static void sdma_sendctrl(struct sdma_engine *, unsigned);
>  static void init_sdma_regs(struct sdma_engine *, u32, uint);
> @@ -454,12 +453,6 @@ static void sdma_err_halt_wait(struct work_struct *work)
>  	sdma_process_event(sde, sdma_event_e15_hw_halt_done);
>  }
>  
> -static void sdma_start_err_halt_wait(struct sdma_engine *sde)
> -{
> -	schedule_work(&sde->err_halt_worker);
> -}
> -
> -
>  static void sdma_err_progress_check_schedule(struct sdma_engine *sde)
>  {
>  	if (!is_bx(sde->dd) && HFI1_CAP_IS_KSET(SDMA_AHG)) {
> @@ -666,11 +659,6 @@ static void sdma_start_hw_clean_up(struct sdma_engine *sde)
>  	tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
>  }
>  
> -static void sdma_start_sw_clean_up(struct sdma_engine *sde)
> -{
> -	tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
> -}

Maybe these are OK, because you are introducing standard kernel functions, 
and because the field names give pretty much the same information as the 
function names did.

julia

>  static void sdma_set_state(struct sdma_engine *sde,
>  	enum sdma_states next_state)
>  {
> @@ -2291,7 +2279,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		case sdma_event_e50_hw_cleaned:
>  			break;
>  		case sdma_event_e60_hw_halted:
> -			sdma_start_err_halt_wait(sde);
> +			schedule_work(&sde->err_halt_worker);
>  			break;
>  		case sdma_event_e70_go_idle:
>  			ss->go_s99_running = 0;
> @@ -2372,7 +2360,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  			break;
>  		case sdma_event_e60_hw_halted:
>  			sdma_set_state(sde, sdma_state_s50_hw_halt_wait);
> -			sdma_start_err_halt_wait(sde);
> +			schedule_work(&sde->err_halt_worker);
>  			break;
>  		case sdma_event_e70_go_idle:
>  			break;
> @@ -2435,7 +2423,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		switch (event) {
>  		case sdma_event_e00_go_hw_down:
>  			sdma_set_state(sde, sdma_state_s00_hw_down);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e10_go_hw_start:
>  			break;
> @@ -2477,13 +2465,13 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		switch (event) {
>  		case sdma_event_e00_go_hw_down:
>  			sdma_set_state(sde, sdma_state_s00_hw_down);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e10_go_hw_start:
>  			break;
>  		case sdma_event_e15_hw_halt_done:
>  			sdma_set_state(sde, sdma_state_s30_sw_clean_up_wait);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e25_hw_clean_up_done:
>  			break;
> @@ -2495,7 +2483,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		case sdma_event_e50_hw_cleaned:
>  			break;
>  		case sdma_event_e60_hw_halted:
> -			sdma_start_err_halt_wait(sde);
> +			schedule_work(&sde->err_halt_worker);
>  			break;
>  		case sdma_event_e70_go_idle:
>  			ss->go_s99_running = 0;
> @@ -2518,13 +2506,13 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		switch (event) {
>  		case sdma_event_e00_go_hw_down:
>  			sdma_set_state(sde, sdma_state_s00_hw_down);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e10_go_hw_start:
>  			break;
>  		case sdma_event_e15_hw_halt_done:
>  			sdma_set_state(sde, sdma_state_s30_sw_clean_up_wait);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e25_hw_clean_up_done:
>  			break;
> @@ -2536,7 +2524,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		case sdma_event_e50_hw_cleaned:
>  			break;
>  		case sdma_event_e60_hw_halted:
> -			sdma_start_err_halt_wait(sde);
> +			schedule_work(&sde->err_halt_worker);
>  			break;
>  		case sdma_event_e70_go_idle:
>  			ss->go_s99_running = 0;
> @@ -2558,7 +2546,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		switch (event) {
>  		case sdma_event_e00_go_hw_down:
>  			sdma_set_state(sde, sdma_state_s00_hw_down);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e10_go_hw_start:
>  			break;
> @@ -2582,7 +2570,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  			break;
>  		case sdma_event_e81_hw_frozen:
>  			sdma_set_state(sde, sdma_state_s82_freeze_sw_clean);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e82_hw_unfreeze:
>  			break;
> @@ -2597,7 +2585,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		switch (event) {
>  		case sdma_event_e00_go_hw_down:
>  			sdma_set_state(sde, sdma_state_s00_hw_down);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e10_go_hw_start:
>  			break;
> @@ -2641,7 +2629,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  		switch (event) {
>  		case sdma_event_e00_go_hw_down:
>  			sdma_set_state(sde, sdma_state_s00_hw_down);
> -			sdma_start_sw_clean_up(sde);
> +			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
>  			break;
>  		case sdma_event_e10_go_hw_start:
>  			break;
> @@ -2664,7 +2652,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
>  			* progress check
>  			*/
>  			sdma_set_state(sde, sdma_state_s50_hw_halt_wait);
> -			sdma_start_err_halt_wait(sde);
> +			schedule_work(&sde->err_halt_worker);
>  			break;
>  		case sdma_event_e70_go_idle:
>  			sdma_set_state(sde, sdma_state_s60_idle_halt_wait);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/12c017e4966c52a7f15487e1bd2eb6b907bee4d3.1446366036.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

