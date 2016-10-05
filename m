X-GM-THRID: 6337746861682589696
X-Received: by 10.194.126.165 with SMTP id mz5mr740352wjb.5.1475700606179;
        Wed, 05 Oct 2016 13:50:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.65.84 with SMTP id o81ls2796515wma.21.canary; Wed, 05 Oct
 2016 13:50:05 -0700 (PDT)
X-Received: by 10.194.189.113 with SMTP id gh17mr722062wjc.6.1475700605602;
        Wed, 05 Oct 2016 13:50:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c74si1093567wmd.3.2016.10.05.13.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 13:50:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,302,1473112800"; 
   d="scan'208";a="195758861"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2016 22:50:04 +0200
Date: Wed, 5 Oct 2016 22:49:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: remove typedefs
 in ddk750_chip.h
In-Reply-To: <20161005204541.GA17653@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610052249110.3130@hadrien>
References: <20161005204541.GA17653@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 5 Oct 2016, Mihaela Muraru wrote:

> This patch fixes the checkpatch.pl warning: "WARNING: do not add new
> typedefs". Hiding a variables of type 'struct' is not always a good
> idea,because when we passing them as parameters we tempt to forget that
> in this proces we work with  stack memory and allocatting struct on
> stack is something that we should manage carefuly.

I think that this patch is against your previous patch.  It should be
against Greg's tree,

julia

>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>
> ---
> Changes in v2:
> 	- add more details on description.
> 	- delete  '_t' from the name of the structs.
> ---
>  drivers/staging/sm750fb/ddk750_chip.c |  8 ++++----
>  drivers/staging/sm750fb/ddk750_chip.h | 10 +++++-----
>  drivers/staging/sm750fb/ddk750_mode.c |  4 ++--
>  drivers/staging/sm750fb/sm750_hw.c    |  2 +-
>  4 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index bfe2f1a..ac39f4e 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
>   */
>  static void setChipClock(unsigned int frequency)
>  {
> -	struct pll_value_t pll;
> +	struct pll_value pll;
>  	unsigned int ulActualMxClk;
>
>  	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
> @@ -208,7 +208,7 @@ unsigned int ddk750_getVMSize(void)
>  	return data;
>  }
>
> -int ddk750_initHw(struct initchip_param_t *pInitParam)
> +int ddk750_initHw(struct initchip_param *pInitParam)
>  {
>  	unsigned int reg;
>
> @@ -307,7 +307,7 @@ int ddk750_initHw(struct initchip_param_t *pInitParam)
>   * M = {1,...,255}
>   * N = {2,...,15}
>   */
> -unsigned int calcPllValue(unsigned int request_orig, struct pll_value_t *pll)
> +unsigned int calcPllValue(unsigned int request_orig, struct pll_value *pll)
>  {
>  	/* as sm750 register definition,
>  	 * N located in 2,15 and M located in 1,255
> @@ -375,7 +375,7 @@ unsigned int calcPllValue(unsigned int request_orig, struct pll_value_t *pll)
>  	return ret;
>  }
>
> -unsigned int formatPllReg(struct pll_value_t *pPLL)
> +unsigned int formatPllReg(struct pll_value *pPLL)
>  {
>  #ifndef VALIDATION_CHIP
>  	unsigned int POD = pPLL->POD;
> diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
> index be4ba11..3cd398f 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.h
> +++ b/drivers/staging/sm750fb/ddk750_chip.h
> @@ -25,7 +25,7 @@ typedef enum _clock_type_t {
>  }
>  clock_type_t;
>
> -struct pll_value_t {
> +struct pll_value {
>  	clock_type_t clockType;
>  	unsigned long inputFreq; /* Input clock frequency to the PLL */
>
> @@ -37,7 +37,7 @@ struct pll_value_t {
>  };
>
>  /* input struct to initChipParam() function */
> -struct initchip_param_t {
> +struct initchip_param {
>  	unsigned short powerMode;    /* Use power mode 0 or 1 */
>  	unsigned short chipClock;    /**
>  				      * Speed of main chip clock in MHz unit
> @@ -68,10 +68,10 @@ struct initchip_param_t {
>  };
>
>  logical_chip_type_t sm750_get_chip_type(void);
> -unsigned int calcPllValue(unsigned int request, struct pll_value_t *pll);
> -unsigned int formatPllReg(struct pll_value_t *pPLL);
> +unsigned int calcPllValue(unsigned int request, struct pll_value *pll);
> +unsigned int formatPllReg(struct pll_value *pPLL);
>  void ddk750_set_mmio(void __iomem *, unsigned short, char);
>  unsigned int ddk750_getVMSize(void);
> -int ddk750_initHw(struct initchip_param_t *);
> +int ddk750_initHw(struct initchip_param *);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index f28eb07..c1f8987 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -73,7 +73,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
>
>
>  /* only timing related registers will be  programed */
> -static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value_t *pll)
> +static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
>  {
>  	int ret = 0;
>  	int cnt = 0;
> @@ -202,7 +202,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value_t
>
>  int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
>  {
> -	struct pll_value_t pll;
> +	struct pll_value pll;
>  	unsigned int uiActualPixelClk;
>
>  	pll.inputFreq = DEFAULT_INPUT_CLOCK;
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index b253ba0..74a97b4 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -100,7 +100,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
>  	if (parm->master_clk == 0)
>  		parm->master_clk = parm->chip_clk / 3;
>
> -	ddk750_initHw((struct initchip_param_t *)&sm750_dev->initParm);
> +	ddk750_initHw((struct initchip_param *)&sm750_dev->initParm);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161005204541.GA17653%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

