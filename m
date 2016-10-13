X-GM-THRID: 6340772039843905536
X-Received: by 10.157.27.136 with SMTP id z8mr1285534otd.115.1476335029178;
        Wed, 12 Oct 2016 22:03:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.185.86 with SMTP id k22ls2160996iti.20.gmail; Wed, 12 Oct
 2016 22:03:46 -0700 (PDT)
X-Received: by 10.66.253.105 with SMTP id zz9mr1004291pac.143.1476335026341;
        Wed, 12 Oct 2016 22:03:46 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x14si1456266vkd.3.2016.10.12.22.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 22:03:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,338,1473112800"; 
   d="scan'208";a="196590791"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2016 07:03:44 +0200
Date: Thu, 13 Oct 2016 07:03:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: sm750fb: Replace functions
 CamelCase naming with underscores.
In-Reply-To: <20161013023347.GA23305@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610130700350.3260@hadrien>
References: <20161013023347.GA23305@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 12 Oct 2016, Elise Lennion wrote:

> Fix checkpatch warning:
>
> CHECK: Avoid CamelCase
>
> The functions declarations in the driver sm750fb is mixed between
> CamelCase and underscores naming conventions. It's visually better
> to keep naming consistency in the code, and the kernel coding style
> favors underscores, so the CamelCases namings should be replaced.

Try to be more concise and more explicit.  Fix is not helpful, because it
is not clear what you did.  Perhaps it seems obvious here, but what if the
sentence were eg "Fix buffer overflow".  That could be fixed in many
different ways.

Here you could say:

Rewrite CamelCase function names with underscores to better match the
standard kernel coding style.

julia


>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c  | 36 +++++++++++++++++-----------------
>  drivers/staging/sm750fb/ddk750_chip.h  |  8 ++++----
>  drivers/staging/sm750fb/ddk750_mode.c  |  6 +++---
>  drivers/staging/sm750fb/ddk750_power.c | 12 ++++++------
>  drivers/staging/sm750fb/ddk750_power.h |  4 ++--
>  drivers/staging/sm750fb/sm750_hw.c     |  6 +++---
>  6 files changed, 36 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 2b231c2..a127eb2 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -51,7 +51,7 @@ static unsigned int get_mxclk_freq(void)
>   *
>   * Input: Frequency to be set.
>   */
> -static void setChipClock(unsigned int frequency)
> +static void set_chip_clock(unsigned int frequency)
>  {
>  	struct pll_value pll;
>  	unsigned int ulActualMxClk;
> @@ -68,19 +68,19 @@ static void setChipClock(unsigned int frequency)
>  		pll.clockType = MXCLK_PLL;
>
>  		/*
> -		* Call calcPllValue() to fill the other fields of PLL structure.
> +		* Call calc_pll_value() to fill the other fields of PLL structure.
>  		* Sometime, the chip cannot set up the exact clock
>  		* required by the User.
> -		* Return value of calcPllValue gives the actual possible clock.
> +		* Return value of calc_pll_value gives the actual possible clock.
>  		*/
> -		ulActualMxClk = calcPllValue(frequency, &pll);
> +		ulActualMxClk = calc_pll_value(frequency, &pll);
>
>  		/* Master Clock Control: MXCLK_PLL */
> -		POKE32(MXCLK_PLL_CTRL, formatPllReg(&pll));
> +		POKE32(MXCLK_PLL_CTRL, format_pll_reg(&pll));
>  	}
>  }
>
> -static void setMemoryClock(unsigned int frequency)
> +static void set_memory_clock(unsigned int frequency)
>  {
>  	unsigned int reg, divisor;
>
> @@ -119,7 +119,7 @@ static void setMemoryClock(unsigned int frequency)
>  			break;
>  		}
>
> -		setCurrentGate(reg);
> +		set_current_gate(reg);
>  	}
>  }
>
> @@ -131,7 +131,7 @@ static void setMemoryClock(unsigned int frequency)
>   * NOTE:
>   *      The maximum frequency the engine can run is 168MHz.
>   */
> -static void setMasterClock(unsigned int frequency)
> +static void set_master_clock(unsigned int frequency)
>  {
>  	unsigned int reg, divisor;
>
> @@ -169,11 +169,11 @@ static void setMasterClock(unsigned int frequency)
>  			break;
>  		}
>
> -		setCurrentGate(reg);
> +		set_current_gate(reg);
>  		}
>  }
>
> -unsigned int ddk750_getVMSize(void)
> +unsigned int ddk750_get_vm_size(void)
>  {
>  	unsigned int reg;
>  	unsigned int data;
> @@ -205,18 +205,18 @@ unsigned int ddk750_getVMSize(void)
>  	return data;
>  }
>
> -int ddk750_initHw(struct initchip_param *pInitParam)
> +int ddk750_init_hw(struct initchip_param *pInitParam)
>  {
>  	unsigned int reg;
>
>  	if (pInitParam->powerMode != 0)
>  		pInitParam->powerMode = 0;
> -	setPowerMode(pInitParam->powerMode);
> +	set_power_mode(pInitParam->powerMode);
>
>  	/* Enable display power gate & LOCALMEM power gate*/
>  	reg = PEEK32(CURRENT_GATE);
>  	reg |= (CURRENT_GATE_DISPLAY | CURRENT_GATE_LOCALMEM);
> -	setCurrentGate(reg);
> +	set_current_gate(reg);
>
>  	if (sm750_get_chip_type() != SM750LE) {
>  		/*	set panel pll and graphic mode via mmio_88 */
> @@ -232,13 +232,13 @@ int ddk750_initHw(struct initchip_param *pInitParam)
>  	}
>
>  	/* Set the Main Chip Clock */
> -	setChipClock(MHz((unsigned int)pInitParam->chipClock));
> +	set_chip_clock(MHz((unsigned int)pInitParam->chipClock));
>
>  	/* Set up memory clock. */
> -	setMemoryClock(MHz(pInitParam->memClock));
> +	set_memory_clock(MHz(pInitParam->memClock));
>
>  	/* Set up master clock */
> -	setMasterClock(MHz(pInitParam->masterClock));
> +	set_master_clock(MHz(pInitParam->masterClock));
>
>
>  	/* Reset the memory controller.
> @@ -304,7 +304,7 @@ int ddk750_initHw(struct initchip_param *pInitParam)
>   * M = {1,...,255}
>   * N = {2,...,15}
>   */
> -unsigned int calcPllValue(unsigned int request_orig, struct pll_value *pll)
> +unsigned int calc_pll_value(unsigned int request_orig, struct pll_value *pll)
>  {
>  	/* as sm750 register definition,
>  	 * N located in 2,15 and M located in 1,255
> @@ -372,7 +372,7 @@ unsigned int calcPllValue(unsigned int request_orig, struct pll_value *pll)
>  	return ret;
>  }
>
> -unsigned int formatPllReg(struct pll_value *pPLL)
> +unsigned int format_pll_reg(struct pll_value *pPLL)
>  {
>  #ifndef VALIDATION_CHIP
>  	unsigned int POD = pPLL->POD;
> diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
> index 755aab1..3b731b4 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.h
> +++ b/drivers/staging/sm750fb/ddk750_chip.h
> @@ -77,9 +77,9 @@ struct initchip_param {
>
>  logical_chip_type_t sm750_get_chip_type(void);
>  void sm750_set_chip_type(unsigned short devId, char revId);
> -unsigned int calcPllValue(unsigned int request, struct  pll_value *pll);
> -unsigned int formatPllReg(struct pll_value *pPLL);
> -unsigned int ddk750_getVMSize(void);
> -int ddk750_initHw(struct initchip_param *);
> +unsigned int calc_pll_value(unsigned int request, struct  pll_value *pll);
> +unsigned int format_pll_reg(struct pll_value *pPLL);
> +unsigned int ddk750_get_vm_size(void);
> +int ddk750_init_hw(struct initchip_param *);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index 4964918..b6af6f3 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -80,7 +80,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
>
>  	if (pll->clockType == SECONDARY_PLL) {
>  		/* programe secondary pixel clock */
> -		POKE32(CRT_PLL_CTRL, formatPllReg(pll));
> +		POKE32(CRT_PLL_CTRL, format_pll_reg(pll));
>  		POKE32(CRT_HORIZONTAL_TOTAL,
>  			(((pModeParam->horizontal_total - 1) <<
>  				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> @@ -130,7 +130,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
>  	} else if (pll->clockType == PRIMARY_PLL) {
>  		unsigned int reserved;
>
> -		POKE32(PANEL_PLL_CTRL, formatPllReg(pll));
> +		POKE32(PANEL_PLL_CTRL, format_pll_reg(pll));
>
>  		reg = ((pModeParam->horizontal_total - 1) <<
>  			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> @@ -207,7 +207,7 @@ int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
>  	pll.inputFreq = DEFAULT_INPUT_CLOCK;
>  	pll.clockType = clock;
>
> -	uiActualPixelClk = calcPllValue(parm->pixel_clock, &pll);
> +	uiActualPixelClk = calc_pll_value(parm->pixel_clock, &pll);
>  	if (sm750_get_chip_type() == SM750LE) {
>  		/* set graphic mode via IO method */
>  		outb_p(0x88, 0x3d4);
> diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
> index 710106e..c9ea464 100644
> --- a/drivers/staging/sm750fb/ddk750_power.c
> +++ b/drivers/staging/sm750fb/ddk750_power.c
> @@ -29,7 +29,7 @@ static unsigned int getPowerMode(void)
>   * SM50x can operate in one of three modes: 0, 1 or Sleep.
>   * On hardware reset, power mode 0 is default.
>   */
> -void setPowerMode(unsigned int powerMode)
> +void set_power_mode(unsigned int powerMode)
>  {
>  	unsigned int control_value = 0;
>
> @@ -72,7 +72,7 @@ void setPowerMode(unsigned int powerMode)
>  	POKE32(POWER_MODE_CTRL, control_value);
>  }
>
> -void setCurrentGate(unsigned int gate)
> +void set_current_gate(unsigned int gate)
>  {
>  	unsigned int gate_reg;
>  	unsigned int mode;
> @@ -111,7 +111,7 @@ void enable2DEngine(unsigned int enable)
>  	else
>  		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
>
> -	setCurrentGate(gate);
> +	set_current_gate(gate);
>  }
>
>  void enableDMA(unsigned int enable)
> @@ -125,7 +125,7 @@ void enableDMA(unsigned int enable)
>  	else
>  		gate &= ~CURRENT_GATE_DMA;
>
> -	setCurrentGate(gate);
> +	set_current_gate(gate);
>  }
>
>  /*
> @@ -142,7 +142,7 @@ void enableGPIO(unsigned int enable)
>  	else
>  		gate &= ~CURRENT_GATE_GPIO;
>
> -	setCurrentGate(gate);
> +	set_current_gate(gate);
>  }
>
>  /*
> @@ -159,7 +159,7 @@ void enableI2C(unsigned int enable)
>  	else
>  		gate &= ~CURRENT_GATE_I2C;
>
> -	setCurrentGate(gate);
> +	set_current_gate(gate);
>  }
>
>
> diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> index 5963691..ba0b3f5 100644
> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -19,12 +19,12 @@ void ddk750_setDPMS(DPMS_t);
>  /*
>   * This function sets the current power mode
>   */
> -void setPowerMode(unsigned int powerMode);
> +void set_power_mode(unsigned int powerMode);
>
>  /*
>   * This function sets current gate
>   */
> -void setCurrentGate(unsigned int gate);
> +void set_current_gate(unsigned int gate);
>
>  /*
>   * This function enable/disable the 2D engine.
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index 61d2fdc..d5508ba 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -68,9 +68,9 @@ int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
>  	/* don't use pdev_resource[x].end - resource[x].start to
>  	 * calculate the resource size, it's only the maximum available
>  	 * size but not the actual size, using
> -	 * @ddk750_getVMSize function can be safe.
> +	 * @ddk750_get_vm_size function can be safe.
>  	 */
> -	sm750_dev->vidmem_size = ddk750_getVMSize();
> +	sm750_dev->vidmem_size = ddk750_get_vm_size();
>  	pr_info("video memory phyAddr = %lx, size = %u bytes\n",
>  		sm750_dev->vidmem_start, sm750_dev->vidmem_size);
>
> @@ -103,7 +103,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
>  	if (parm->master_clk == 0)
>  		parm->master_clk = parm->chip_clk / 3;
>
> -	ddk750_initHw((struct initchip_param *)&sm750_dev->initParm);
> +	ddk750_init_hw((struct initchip_param *)&sm750_dev->initParm);
>  	/* for sm718, open pci burst */
>  	if (sm750_dev->devid == 0x718) {
>  		POKE32(SYSTEM_CTRL,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161013023347.GA23305%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

