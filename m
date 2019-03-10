X-GM-THRID: 6666833523477839872
X-Received: by 2002:a1c:cb8d:: with SMTP id b135mr2073523wmg.22.1552243302053;
        Sun, 10 Mar 2019 11:41:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b641:: with SMTP id g62ls101891wmf.11.canary-gmail; Sun,
 10 Mar 2019 11:41:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwYg4HDAEh7DHSse/FBgAJPwm6yxSQ690uTvZ8pm+OJ/1RsAI97ksl5xlqZgEsYhKB/55eC
X-Received: by 2002:a1c:c00c:: with SMTP id q12mr2109610wmf.5.1552243301133;
        Sun, 10 Mar 2019 11:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552243301; cv=none;
        d=google.com; s=arc-20160816;
        b=lhvdPyXoE7cjIAgRweZZBOyRCuVCVz3ev5UtMPqlbCyfYV5tXdFIxoA8i7Vvvpejhx
         7UWxsJwoi2aPaFQ73onl87SLTpJfzRTsmteGP64BYjozNjtt4oXLWZh9IA9cPnk85gVO
         VYRahoKxrPfgWftahO8Y7Cv2cPUjT0Sd8qShGMKM1rYUKpcem6EW99Icr570l71KYTX1
         zbsvvjtOlecJbdzHsOuRSbH2TW19FoaqezVV4hEIgBrsSG2cbUZIBRJFSSv5G4tDeCCn
         fGIVQTEUVLC14TVgicY2BCuyak45Zvla+FjWerLjodtoLAVadY31u6rd/KpeyXUqSAj/
         nHYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gUm8RXJB9qQYZwgBpvMyCpp2BsPvXQ45xwyyYADsXeI=;
        b=mHsrOUWAR8fSg8D29PpC8pKdVfjdLGhvfAIEGJX8IVn3FFo0PxMMZ66MGdwGpts/Ye
         +S5e7b3VIvMJ60jfC9zfsZF2k75S2OEahg8OSO2hihV66emZM+hS7Yyz8Cwn2qAT9hmX
         P5AcC8PsaYP+hTkRlDtJVk79LUHL2MidVBFyT2JJj+6ckyvH9Z8kTQr+pA1O34GtGuOf
         GNtbcGC5WUCVi6DMD7TrsBSkeym30zMIxXco8BhlDb0Q2XhJScDpNxcnEJFjgc5vxIfU
         a+LNz0LTrBZMllXVtPBeYY82Ya967N51yoP3eqNB4IGEZL/5JXbtTRndvpAZAEY8CyYY
         qB/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si182475wrw.0.2019.03.10.11.41.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:41:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="372707630"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 19:41:40 +0100
Date: Sun, 10 Mar 2019 19:41:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    teddy.wang@siliconmotion.com, sudipm.mukherjee@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Edit CamelCase
 in local variables
In-Reply-To: <20190310183836.2464-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903101941100.3131@hadrien>
References: <20190310183836.2464-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Edit CamelCase in local variables across 4 files:
> - sm750fb/ddk750_chip.c
> - sm750fb/ddk750_chip.h
> - sm750fb/ddk750_dvi.c
> - sm750fb/ddk750_sii164.c

You don't have to redo it, but you don't really need to give the
filenames.  One can see them just below in the diffstat.

julia

> to comply with the coding style. Also edit associated comments
> accordingly.
> Issue found with Checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
> Changes in v2:
> - Submit entire patchset (4 files) as a single commit.
>
>  drivers/staging/sm750fb/ddk750_chip.c   |  16 ++--
>  drivers/staging/sm750fb/ddk750_chip.h   |   2 +-
>  drivers/staging/sm750fb/ddk750_dvi.c    |  40 ++++-----
>  drivers/staging/sm750fb/ddk750_sii164.c | 114 ++++++++++++------------
>  4 files changed, 86 insertions(+), 86 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 4c1f00f551da..90f5480304f4 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
>  	return chip;
>  }
>
> -void sm750_set_chip_type(unsigned short devId, u8 revId)
> +void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
>  {
> -	if (devId == 0x718) {
> +	if (dev_id == 0x718) {
>  		chip = SM718;
> -	} else if (devId == 0x750) {
> +	} else if (dev_id == 0x750) {
>  		chip = SM750;
>  		/* SM750 and SM750LE are different in their revision ID only. */
> -		if (revId == SM750LE_REVISION_ID) {
> +		if (rev_id == SM750LE_REVISION_ID) {
>  			chip = SM750LE;
>  			pr_info("found sm750le\n");
>  		}
> @@ -321,7 +321,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>  	int mini_diff;
>  	unsigned int RN, quo, rem, fl_quo;
>  	unsigned int input, request;
> -	unsigned int tmpClock, ret;
> +	unsigned int tmp_clock, ret;
>  	const int max_OD = 3;
>  	int max_d = 6;
>
> @@ -365,8 +365,8 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>  			if (M < 256 && M > 0) {
>  				unsigned int diff;
>
> -				tmpClock = pll->inputFreq * M / N / X;
> -				diff = abs(tmpClock - request_orig);
> +				tmp_clock = pll->inputFreq * M / N / X;
> +				diff = abs(tmp_clock - request_orig);
>  				if (diff < mini_diff) {
>  					pll->M = M;
>  					pll->N = N;
> @@ -375,7 +375,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>  						pll->POD = d - max_OD;
>  					pll->OD = d - pll->POD;
>  					mini_diff = diff;
> -					ret = tmpClock;
> +					ret = tmp_clock;
>  				}
>  			}
>  		}
> diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
> index c72aac21b675..3e92b3297160 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.h
> +++ b/drivers/staging/sm750fb/ddk750_chip.h
> @@ -93,7 +93,7 @@ struct initchip_param {
>  };
>
>  enum logical_chip_type sm750_get_chip_type(void);
> -void sm750_set_chip_type(unsigned short devId, u8 revId);
> +void sm750_set_chip_type(unsigned short dev_id, u8 rev_id);
>  unsigned int sm750_calc_pll_value(unsigned int request, struct  pll_value *pll);
>  unsigned int sm750_format_pll_reg(struct pll_value *pPLL);
>  unsigned int ddk750_get_vm_size(void);
> diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> index b20d16198c17..cd564ea40779 100644
> --- a/drivers/staging/sm750fb/ddk750_dvi.c
> +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> @@ -30,31 +30,31 @@ static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
>  #endif
>  };
>
> -int dviInit(unsigned char edgeSelect,
> -	    unsigned char busSelect,
> -	    unsigned char dualEdgeClkSelect,
> -	    unsigned char hsyncEnable,
> -	    unsigned char vsyncEnable,
> -	    unsigned char deskewEnable,
> -	    unsigned char deskewSetting,
> -	    unsigned char continuousSyncEnable,
> -	    unsigned char pllFilterEnable,
> -	    unsigned char pllFilterValue)
> +int dviInit(unsigned char edge_select,
> +	    unsigned char bus_select,
> +	    unsigned char dual_edge_clk_select,
> +	    unsigned char hsync_enable,
> +	    unsigned char vsync_enable,
> +	    unsigned char deskew_enable,
> +	    unsigned char deskew_setting,
> +	    unsigned char continuous_sync_enable,
> +	    unsigned char pll_filter_enable,
> +	    unsigned char pll_filter_value)
>  {
>  	struct dvi_ctrl_device *pCurrentDviCtrl;
>
>  	pCurrentDviCtrl = g_dcftSupportedDviController;
>  	if (pCurrentDviCtrl->pfnInit) {
> -		return pCurrentDviCtrl->pfnInit(edgeSelect,
> -						busSelect,
> -						dualEdgeClkSelect,
> -						hsyncEnable,
> -						vsyncEnable,
> -						deskewEnable,
> -						deskewSetting,
> -						continuousSyncEnable,
> -						pllFilterEnable,
> -						pllFilterValue);
> +		return pCurrentDviCtrl->pfnInit(edge_select,
> +						bus_select,
> +						dual_edge_clk_select,
> +						hsync_enable,
> +						vsync_enable,
> +						deskew_enable,
> +						deskew_setting,
> +						continuous_sync_enable,
> +						pll_filter_enable,
> +						pll_filter_value);
>  	}
>  	return -1; /* error */
>  }
> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
> index 8391f57d5383..c8e856c13912 100644
> --- a/drivers/staging/sm750fb/ddk750_sii164.c
> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> @@ -69,58 +69,58 @@ unsigned short sii164GetDeviceID(void)
>   *      This function initialize and detect the DVI controller chip.
>   *
>   *  Input:
> - *      edgeSelect          - Edge Select:
> - *                              0 = Input data is falling edge latched (falling edge
> - *                                  latched first in dual edge mode)
> - *                              1 = Input data is rising edge latched (rising edge
> - *                                  latched first in dual edge mode)
> - *      busSelect           - Input Bus Select:
> - *                              0 = Input data bus is 12-bits wide
> - *                              1 = Input data bus is 24-bits wide
> - *      dualEdgeClkSelect   - Dual Edge Clock Select
> - *                              0 = Input data is single edge latched
> - *                              1 = Input data is dual edge latched
> - *      hsyncEnable         - Horizontal Sync Enable:
> - *                              0 = HSYNC input is transmitted as fixed LOW
> - *                              1 = HSYNC input is transmitted as is
> - *      vsyncEnable         - Vertical Sync Enable:
> - *                              0 = VSYNC input is transmitted as fixed LOW
> - *                              1 = VSYNC input is transmitted as is
> - *      deskewEnable        - De-skewing Enable:
> - *                              0 = De-skew disabled
> - *                              1 = De-skew enabled
> - *      deskewSetting       - De-skewing Setting (increment of 260psec)
> - *                              0 = 1 step --> minimum setup / maximum hold
> - *                              1 = 2 step
> - *                              2 = 3 step
> - *                              3 = 4 step
> - *                              4 = 5 step
> - *                              5 = 6 step
> - *                              6 = 7 step
> - *                              7 = 8 step --> maximum setup / minimum hold
> - *      continuousSyncEnable- SYNC Continuous:
> - *                              0 = Disable
> - *                              1 = Enable
> - *      pllFilterEnable     - PLL Filter Enable
> - *                              0 = Disable PLL Filter
> - *                              1 = Enable PLL Filter
> - *      pllFilterValue      - PLL Filter characteristics:
> - *                              0~7 (recommended value is 4)
> + *      edge_select           - Edge Select:
> + *                               0 = Input data is falling edge latched (falling
> + *                                   edge latched first in dual edge mode)
> + *                               1 = Input data is rising edge latched (rising
> + *                                   edge latched first in dual edge mode)
> + *      bus_select            - Input Bus Select:
> + *                               0 = Input data bus is 12-bits wide
> + *                               1 = Input data bus is 24-bits wide
> + *      dual_edge_clk_select  - Dual Edge Clock Select
> + *                               0 = Input data is single edge latched
> + *                               1 = Input data is dual edge latched
> + *      hsync_enable          - Horizontal Sync Enable:
> + *                               0 = HSYNC input is transmitted as fixed LOW
> + *                               1 = HSYNC input is transmitted as is
> + *      vsync_enable          - Vertical Sync Enable:
> + *                               0 = VSYNC input is transmitted as fixed LOW
> + *                               1 = VSYNC input is transmitted as is
> + *      deskew_enable         - De-skewing Enable:
> + *                               0 = De-skew disabled
> + *                               1 = De-skew enabled
> + *      deskew_setting        - De-skewing Setting (increment of 260psec)
> + *                               0 = 1 step --> minimum setup / maximum hold
> + *                               1 = 2 step
> + *                               2 = 3 step
> + *                               3 = 4 step
> + *                               4 = 5 step
> + *                               5 = 6 step
> + *                               6 = 7 step
> + *                               7 = 8 step --> maximum setup / minimum hold
> + *      continuous_sync_enable- SYNC Continuous:
> + *                               0 = Disable
> + *                               1 = Enable
> + *      pll_filter_enable     - PLL Filter Enable
> + *                               0 = Disable PLL Filter
> + *                               1 = Enable PLL Filter
> + *      pll_filter_value      - PLL Filter characteristics:
> + *                               0~7 (recommended value is 4)
>   *
>   *  Output:
>   *      0   - Success
>   *     -1   - Fail.
>   */
> -long sii164InitChip(unsigned char edgeSelect,
> -		    unsigned char busSelect,
> -		    unsigned char dualEdgeClkSelect,
> -		    unsigned char hsyncEnable,
> -		    unsigned char vsyncEnable,
> -		    unsigned char deskewEnable,
> -		    unsigned char deskewSetting,
> -		    unsigned char continuousSyncEnable,
> -		    unsigned char pllFilterEnable,
> -		    unsigned char pllFilterValue)
> +long sii164InitChip(unsigned char edge_select,
> +		    unsigned char bus_select,
> +		    unsigned char dual_edge_clk_select,
> +		    unsigned char hsync_enable,
> +		    unsigned char vsync_enable,
> +		    unsigned char deskew_enable,
> +		    unsigned char deskew_setting,
> +		    unsigned char continuous_sync_enable,
> +		    unsigned char pll_filter_enable,
> +		    unsigned char pll_filter_value)
>  {
>  	unsigned char config;
>
> @@ -139,31 +139,31 @@ long sii164InitChip(unsigned char edgeSelect,
>  		 */
>
>  		/* Select the edge */
> -		if (edgeSelect == 0)
> +		if (edge_select == 0)
>  			config = SII164_CONFIGURATION_LATCH_FALLING;
>  		else
>  			config = SII164_CONFIGURATION_LATCH_RISING;
>
>  		/* Select bus wide */
> -		if (busSelect == 0)
> +		if (bus_select == 0)
>  			config |= SII164_CONFIGURATION_BUS_12BITS;
>  		else
>  			config |= SII164_CONFIGURATION_BUS_24BITS;
>
>  		/* Select Dual/Single Edge Clock */
> -		if (dualEdgeClkSelect == 0)
> +		if (dual_edge_clk_select == 0)
>  			config |= SII164_CONFIGURATION_CLOCK_SINGLE;
>  		else
>  			config |= SII164_CONFIGURATION_CLOCK_DUAL;
>
>  		/* Select HSync Enable */
> -		if (hsyncEnable == 0)
> +		if (hsync_enable == 0)
>  			config |= SII164_CONFIGURATION_HSYNC_FORCE_LOW;
>  		else
>  			config |= SII164_CONFIGURATION_HSYNC_AS_IS;
>
>  		/* Select VSync Enable */
> -		if (vsyncEnable == 0)
> +		if (vsync_enable == 0)
>  			config |= SII164_CONFIGURATION_VSYNC_FORCE_LOW;
>  		else
>  			config |= SII164_CONFIGURATION_VSYNC_AS_IS;
> @@ -175,12 +175,12 @@ long sii164InitChip(unsigned char edgeSelect,
>  		 * This fixes some artifacts problem in some mode on board 2.2.
>  		 * Somehow this fix does not affect board 2.1.
>  		 */
> -		if (deskewEnable == 0)
> +		if (deskew_enable == 0)
>  			config = SII164_DESKEW_DISABLE;
>  		else
>  			config = SII164_DESKEW_ENABLE;
>
> -		switch (deskewSetting) {
> +		switch (deskew_setting) {
>  		case 0:
>  			config |= SII164_DESKEW_1_STEP;
>  			break;
> @@ -209,19 +209,19 @@ long sii164InitChip(unsigned char edgeSelect,
>  		i2cWriteReg(SII164_I2C_ADDRESS, SII164_DESKEW, config);
>
>  		/* Enable/Disable Continuous Sync. */
> -		if (continuousSyncEnable == 0)
> +		if (continuous_sync_enable == 0)
>  			config = SII164_PLL_FILTER_SYNC_CONTINUOUS_DISABLE;
>  		else
>  			config = SII164_PLL_FILTER_SYNC_CONTINUOUS_ENABLE;
>
>  		/* Enable/Disable PLL Filter */
> -		if (pllFilterEnable == 0)
> +		if (pll_filter_enable == 0)
>  			config |= SII164_PLL_FILTER_DISABLE;
>  		else
>  			config |= SII164_PLL_FILTER_ENABLE;
>
>  		/* Set the PLL Filter value */
> -		config |= ((pllFilterValue & 0x07) << 1);
> +		config |= ((pll_filter_value & 0x07) << 1);
>
>  		i2cWriteReg(SII164_I2C_ADDRESS, SII164_PLL, config);
>
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310183836.2464-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

