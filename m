X-GM-THRID: 6397088114020450304
X-Received: by 10.25.203.151 with SMTP id b145mr5023050lfg.17.1489470420062;
        Mon, 13 Mar 2017 22:47:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.213 with SMTP id n82ls639097lje.37.gmail; Mon, 13 Mar
 2017 22:46:59 -0700 (PDT)
X-Received: by 10.46.81.66 with SMTP id b2mr5829576lje.3.1489470419169;
        Mon, 13 Mar 2017 22:46:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si934057wmg.0.2017.03.13.22.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 22:46:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,162,1486422000"; 
   d="scan'208";a="264428130"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2017 06:46:58 +0100
Date: Tue, 14 Mar 2017 06:46:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 3/4] staging: sm750fb: Alignment
 should match open parenthesis
In-Reply-To: <20170313204853.24675-4-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703140646220.3516@hadrien>
References: <20170313204853.24675-1-arushisinghal19971997@gmail.com> <20170313204853.24675-4-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 14 Mar 2017, Arushi Singhal wrote:

> Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

I thought you were going to take another approach to improve this code?

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 79 +++++++++++++++++------------------
>  1 file changed, 39 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index 45af806c8d55..eea5aef2956f 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -28,9 +28,9 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
>  	poke32(CRT_AUTO_CENTERING_TL, 0);
>
>  	poke32(CRT_AUTO_CENTERING_BR,
> -		(((y - 1) << CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT) &
> -			CRT_AUTO_CENTERING_BR_BOTTOM_MASK) |
> -		((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
> +	       (((y - 1) << CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT) &
> +		CRT_AUTO_CENTERING_BR_BOTTOM_MASK) |
> +	       ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
>
>  	/*
>  	 * Assume common fields in dispControl have been properly set before
> @@ -72,8 +72,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
>  }
>
>  /* only timing related registers will be  programed */
> -static int programModeRegisters(mode_parameter_t *pModeParam,
> -						struct pll_value *pll)
> +static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
>  {
>  	int ret = 0;
>  	int cnt = 0;
> @@ -83,32 +82,32 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
>  		/* programe secondary pixel clock */
>  		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
>  		poke32(CRT_HORIZONTAL_TOTAL,
> -			(((pModeParam->horizontal_total - 1) <<
> -				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> -				CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
> -			((pModeParam->horizontal_display_end - 1) &
> -				CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
> +		       (((pModeParam->horizontal_total - 1) <<
> +			 CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> +			CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
> +		       ((pModeParam->horizontal_display_end - 1) &
> +			CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
>
>  		poke32(CRT_HORIZONTAL_SYNC,
> -			((pModeParam->horizontal_sync_width <<
> -				CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> -				CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
> -			((pModeParam->horizontal_sync_start - 1) &
> -				CRT_HORIZONTAL_SYNC_START_MASK));
> +		       ((pModeParam->horizontal_sync_width <<
> +			 CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> +			CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
> +		       ((pModeParam->horizontal_sync_start - 1) &
> +			CRT_HORIZONTAL_SYNC_START_MASK));
>
>  		poke32(CRT_VERTICAL_TOTAL,
> -			(((pModeParam->vertical_total - 1) <<
> -				CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
> -				CRT_VERTICAL_TOTAL_TOTAL_MASK) |
> -			((pModeParam->vertical_display_end - 1) &
> -				CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
> +		       (((pModeParam->vertical_total - 1) <<
> +			 CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
> +			CRT_VERTICAL_TOTAL_TOTAL_MASK) |
> +		       ((pModeParam->vertical_display_end - 1) &
> +			CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
>
>  		poke32(CRT_VERTICAL_SYNC,
> -			((pModeParam->vertical_sync_height <<
> -				CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
> -				CRT_VERTICAL_SYNC_HEIGHT_MASK) |
> -			((pModeParam->vertical_sync_start - 1) &
> -				CRT_VERTICAL_SYNC_START_MASK));
> +		       ((pModeParam->vertical_sync_height <<
> +			 CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
> +			CRT_VERTICAL_SYNC_HEIGHT_MASK) |
> +		       ((pModeParam->vertical_sync_start - 1) &
> +			CRT_VERTICAL_SYNC_START_MASK));
>
>  		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
>  		if (pModeParam->vertical_sync_polarity)
> @@ -140,25 +139,25 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
>  		poke32(PANEL_HORIZONTAL_TOTAL, reg);
>
>  		poke32(PANEL_HORIZONTAL_SYNC,
> -			((pModeParam->horizontal_sync_width <<
> -				PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> -				PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
> -			((pModeParam->horizontal_sync_start - 1) &
> -				PANEL_HORIZONTAL_SYNC_START_MASK));
> +		       ((pModeParam->horizontal_sync_width <<
> +			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> +			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
> +		       ((pModeParam->horizontal_sync_start - 1) &
> +			PANEL_HORIZONTAL_SYNC_START_MASK));
>
>  		poke32(PANEL_VERTICAL_TOTAL,
> -			(((pModeParam->vertical_total - 1) <<
> -				PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
> -				PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
> -			((pModeParam->vertical_display_end - 1) &
> -				PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
> +		       (((pModeParam->vertical_total - 1) <<
> +			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
> +			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
> +		       ((pModeParam->vertical_display_end - 1) &
> +			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
>
>  		poke32(PANEL_VERTICAL_SYNC,
> -			((pModeParam->vertical_sync_height <<
> -				PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
> -				PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
> -			((pModeParam->vertical_sync_start - 1) &
> -				PANEL_VERTICAL_SYNC_START_MASK));
> +		       ((pModeParam->vertical_sync_height <<
> +			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
> +			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
> +		       ((pModeParam->vertical_sync_start - 1) &
> +			PANEL_VERTICAL_SYNC_START_MASK));
>
>  		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
>  		if (pModeParam->vertical_sync_polarity)
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313204853.24675-4-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

