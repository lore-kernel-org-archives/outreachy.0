X-GM-THRID: 6748590079853199360
X-Received: by 2002:a05:600c:2293:: with SMTP id 19mr4670864wmf.26.1571344447806;
        Thu, 17 Oct 2019 13:34:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:99d7:: with SMTP id b206ls2018438wme.2.canary-gmail;
 Thu, 17 Oct 2019 13:34:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1wTMhRib3QiZggiMMwSRCgL7rwJNfJQQMW847y0e2FmgwieOWNtMb93MzyaTEZg7VrMcD
X-Received: by 2002:a1c:444:: with SMTP id 65mr4438016wme.73.1571344446630;
        Thu, 17 Oct 2019 13:34:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571344446; cv=none;
        d=google.com; s=arc-20160816;
        b=E764XUvD+/DVwuc4BBtK+gSpQaSuzrcH3wB/icHyEBkL8FtRyPFx4bAYfpD//5SpoZ
         +/oN6aDidEuhnAKzZ9DKiFqxflSZv657/rxYgJuu2yGcY8YjGc/AFhJ5zd8TPuYeq07x
         r25V/wJWStEu8wPjmnFlymprw3vI3ljZoXKVuzCQqCwaA47ySUNXqS34tnlomGWPZCsX
         r3pOrkenp5zt8L9Cp+sttrbtS7SHnAwCjYd2BPdKbsh8UXi6oczKQq1eIXc5+77urLyO
         LI2cL8m2aWkZWbnmMbvbRbpebLERK0k3fNLHMJf1laGVd6NaTTPWEX0BfLAOQj6OlGIo
         gRuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=SJ+6NUQk5KllQXNgnU/ZFK+kCgjmcD8CS69ZsT7ADAY=;
        b=FII3QXVZ2DI0FNka2EWb+1wGgOVhS04iVnvJQuWj4jDs+VBEqyS7/DVrc1Ujv/usTe
         VFWM0sxI3/7OckwbLKpHd4TRconLcp22ijLQ3WnTJNQeqVVkINSWvLcgmMtAl8VvGZzK
         Yb0ul0kYaIc9DcGNat3YCeFNYYCKsT40Bl2R2usoMcsEpMgiUPv+i4LJSPjco84ZGUg+
         icHWsNtQXWsqleXbAloRkQnsGg9hF5nGSxojT4szWBlxpNeqGir81JYG4ROHZbtiNSY1
         JLgLkVdnwcbpj/A8e4YiXZkeTySWVWM/bGU0FWBlsYGqYcb4e5biyZH3JR+WYIhaQxTE
         IbhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 5si663674wmf.1.2019.10.17.13.34.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 13:34:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,309,1566856800"; 
   d="scan'208";a="323085172"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2019 22:33:58 +0200
Date: Thu, 17 Oct 2019 22:33:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Edit CamelCase
 in ddk750_mode files
In-Reply-To: <20191017201220.27728-1-jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910172233360.2694@hadrien>
References: <20191017201220.27728-1-jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 17 Oct 2019, Jamal Shareef wrote:

> Edit CamelCase naming in ddk750 files and
> in dependent file sm750_hw.c.
>
> Remove hungrarian notation prefixes in ddk750_mode.c file.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>  - Remove hungarion notation prefixes in ddk750_mode.c file
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 86 +++++++++++++--------------
>  drivers/staging/sm750fb/ddk750_mode.h |  2 +-
>  drivers/staging/sm750fb/sm750_hw.c    |  2 +-
>  3 files changed, 45 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index e00a6cb31947..a2f9ce2128e7 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -14,13 +14,13 @@
>   * in bit 29:27 of Display Control register.
>   */
>  static unsigned long
> -displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
> -			     unsigned long dispControl)
> +display_control_adjust_SM750LE(struct mode_parameter *mode_param,
> +			       unsigned long disp_control)
>  {
>  	unsigned long x, y;
>
> -	x = pModeParam->horizontal_display_end;
> -	y = pModeParam->vertical_display_end;
> +	x = mode_param->horizontal_display_end;
> +	y = mode_param->vertical_display_end;
>
>  	/*
>  	 * SM750LE has to set up the top-left and bottom-right
> @@ -42,41 +42,41 @@ displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
>  	 */
>
>  	/* Clear bit 29:27 of display control register */
> -	dispControl &= ~CRT_DISPLAY_CTRL_CLK_MASK;
> +	disp_control &= ~CRT_DISPLAY_CTRL_CLK_MASK;
>
>  	/* Set bit 29:27 of display control register for the right clock */
>  	/* Note that SM750LE only need to supported 7 resolutions. */
>  	if (x == 800 && y == 600)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL41;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL41;
>  	else if (x == 1024 && y == 768)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL65;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL65;
>  	else if (x == 1152 && y == 864)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
>  	else if (x == 1280 && y == 768)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
>  	else if (x == 1280 && y == 720)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL74;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL74;
>  	else if (x == 1280 && y == 960)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
>  	else if (x == 1280 && y == 1024)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
>  	else /* default to VGA clock */
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL25;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL25;
>
>  	/* Set bit 25:24 of display controller */
> -	dispControl |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
> +	disp_control |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
>
>  	/* Set bit 14 of display controller */
> -	dispControl |= DISPLAY_CTRL_CLOCK_PHASE;
> +	disp_control |= DISPLAY_CTRL_CLOCK_PHASE;
>
> -	poke32(CRT_DISPLAY_CTRL, dispControl);
> +	poke32(CRT_DISPLAY_CTRL, disp_control);
>
> -	return dispControl;
> +	return disp_control;
>  }
>
>  /* only timing related registers will be  programed */
> -static int programModeRegisters(struct mode_parameter *pModeParam,
> -				struct pll_value *pll)
> +static int program_mode_registers(struct mode_parameter *mode_param,
> +				  struct pll_value *pll)
>  {
>  	int ret = 0;
>  	int cnt = 0;
> @@ -86,46 +86,46 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
>  		/* programe secondary pixel clock */
>  		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
>
> -		tmp = ((pModeParam->horizontal_total - 1) <<
> +		tmp = ((mode_param->horizontal_total - 1) <<
>  		       CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
>  		     CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
> -		tmp |= (pModeParam->horizontal_display_end - 1) &
> +		tmp |= (mode_param->horizontal_display_end - 1) &
>  		      CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
>
>  		poke32(CRT_HORIZONTAL_TOTAL, tmp);
>
> -		tmp = (pModeParam->horizontal_sync_width <<
> +		tmp = (mode_param->horizontal_sync_width <<
>  		       CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
>  		     CRT_HORIZONTAL_SYNC_WIDTH_MASK;
> -		tmp |= (pModeParam->horizontal_sync_start - 1) &
> +		tmp |= (mode_param->horizontal_sync_start - 1) &
>  		      CRT_HORIZONTAL_SYNC_START_MASK;
>
>  		poke32(CRT_HORIZONTAL_SYNC, tmp);
>
> -		tmp = ((pModeParam->vertical_total - 1) <<
> +		tmp = ((mode_param->vertical_total - 1) <<
>  		       CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
>  		     CRT_VERTICAL_TOTAL_TOTAL_MASK;
> -		tmp |= (pModeParam->vertical_display_end - 1) &
> +		tmp |= (mode_param->vertical_display_end - 1) &
>  		      CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
>
>  		poke32(CRT_VERTICAL_TOTAL, tmp);
>
> -		tmp = ((pModeParam->vertical_sync_height <<
> +		tmp = ((mode_param->vertical_sync_height <<
>  		       CRT_VERTICAL_SYNC_HEIGHT_SHIFT)) &
>  		     CRT_VERTICAL_SYNC_HEIGHT_MASK;
> -		tmp |= (pModeParam->vertical_sync_start - 1) &
> +		tmp |= (mode_param->vertical_sync_start - 1) &
>  		      CRT_VERTICAL_SYNC_START_MASK;
>
>  		poke32(CRT_VERTICAL_SYNC, tmp);
>
>  		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
> -		if (pModeParam->vertical_sync_polarity)
> +		if (mode_param->vertical_sync_polarity)
>  			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
> -		if (pModeParam->horizontal_sync_polarity)
> +		if (mode_param->horizontal_sync_polarity)
>  			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
>
>  		if (sm750_get_chip_type() == SM750LE) {
> -			displayControlAdjust_SM750LE(pModeParam, tmp);
> +			display_control_adjust_SM750LE(mode_param, tmp);
>  		} else {
>  			reg = peek32(CRT_DISPLAY_CTRL) &
>  				~(DISPLAY_CTRL_VSYNC_PHASE |
> @@ -140,40 +140,40 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
>
>  		poke32(PANEL_PLL_CTRL, sm750_format_pll_reg(pll));
>
> -		reg = ((pModeParam->horizontal_total - 1) <<
> +		reg = ((mode_param->horizontal_total - 1) <<
>  			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
>  			PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
> -		reg |= ((pModeParam->horizontal_display_end - 1) &
> +		reg |= ((mode_param->horizontal_display_end - 1) &
>  			PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
>  		poke32(PANEL_HORIZONTAL_TOTAL, reg);
>
>  		poke32(PANEL_HORIZONTAL_SYNC,
> -		       ((pModeParam->horizontal_sync_width <<
> +		       ((mode_param->horizontal_sync_width <<
>  			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
>  			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
> -		       ((pModeParam->horizontal_sync_start - 1) &
> +		       ((mode_param->horizontal_sync_start - 1) &
>  			PANEL_HORIZONTAL_SYNC_START_MASK));
>
>  		poke32(PANEL_VERTICAL_TOTAL,
> -		       (((pModeParam->vertical_total - 1) <<
> +		       (((mode_param->vertical_total - 1) <<
>  			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
>  			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
> -		       ((pModeParam->vertical_display_end - 1) &
> +		       ((mode_param->vertical_display_end - 1) &
>  			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
>
>  		poke32(PANEL_VERTICAL_SYNC,
> -		       ((pModeParam->vertical_sync_height <<
> +		       ((mode_param->vertical_sync_height <<
>  			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
>  			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
> -		       ((pModeParam->vertical_sync_start - 1) &
> +		       ((mode_param->vertical_sync_start - 1) &
>  			PANEL_VERTICAL_SYNC_START_MASK));
>
>  		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
> -		if (pModeParam->vertical_sync_polarity)
> +		if (mode_param->vertical_sync_polarity)
>  			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
> -		if (pModeParam->horizontal_sync_polarity)
> +		if (mode_param->horizontal_sync_polarity)
>  			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
> -		if (pModeParam->clock_phase_polarity)
> +		if (mode_param->clock_phase_polarity)
>  			tmp |= DISPLAY_CTRL_CLOCK_PHASE;
>
>  		reserved = PANEL_DISPLAY_CTRL_RESERVED_MASK |
> @@ -207,7 +207,7 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
>  	return ret;
>  }
>
> -int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
> +int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock)
>  {
>  	struct pll_value pll;
>
> @@ -220,6 +220,6 @@ int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
>  		outb_p(0x88, 0x3d4);
>  		outb_p(0x06, 0x3d5);
>  	}
> -	programModeRegisters(parm, &pll);
> +	program_mode_registers(parm, &pll);
>  	return 0;
>  }
> diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
> index 2df78a0937b2..1b70885f85e5 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.h
> +++ b/drivers/staging/sm750fb/ddk750_mode.h
> @@ -33,5 +33,5 @@ struct mode_parameter {
>  	enum spolarity clock_phase_polarity;
>  };
>
> -int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock);
> +int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock);
>  #endif
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index ea1d3d4efbc2..15ac73821ab5 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -305,7 +305,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
>  		clock = SECONDARY_PLL;
>
>  	pr_debug("Request pixel clock = %lu\n", modparm.pixel_clock);
> -	ret = ddk750_setModeTiming(&modparm, clock);
> +	ret = ddk750_set_mode_timing(&modparm, clock);
>  	if (ret) {
>  		pr_err("Set mode timing failed\n");
>  		goto exit;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191017201220.27728-1-jamal.k.shareef%40gmail.com.
>

