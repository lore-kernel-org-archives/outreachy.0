X-GM-THRID: 6397051506437128192
X-Received: by 10.46.80.82 with SMTP id v18mr5563846ljd.27.1489443535775;
        Mon, 13 Mar 2017 15:18:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.25 with SMTP id u25ls1298835ljd.35.gmail; Mon, 13 Mar
 2017 15:18:55 -0700 (PDT)
X-Received: by 10.46.33.82 with SMTP id h79mr5699457ljh.7.1489443535091;
        Mon, 13 Mar 2017 15:18:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si872827wmg.3.2017.03.13.15.18.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 15:18:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,161,1486422000"; 
   d="scan'208";a="216607395"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 23:18:11 +0100
Date: Mon, 13 Mar 2017 23:17:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: sudipm.mukherjee@gmail.com, Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Improved code
 readability
In-Reply-To: <20170313182652.GA19882@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703132315120.4053@hadrien>
References: <20170313182652.GA19882@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 13 Mar 2017, Arushi Singhal wrote:

> New variables are added to make the code more readable.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v2
>  - removed the error.
>
>  drivers/staging/sm750fb/ddk750_mode.c | 103 ++++++++++++++++------------------
>  1 file changed, 49 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index 25da678179f7..6dd52b450367 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -77,37 +77,34 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
>  	int ret = 0;
>  	int cnt = 0;
>  	unsigned int tmp, reg;
> +	unsigned int cht = CRT_HORIZONTAL_TOTAL;
> +	unsigned int cvt = CRT_VERTICAL_TOTAL;
> +	unsigned int chs = CRT_HORIZONTAL_SYNC;
> +	unsigned int cvs = CRT_VERTICAL_SYNC;
> +	unsigned int chssm = CRT_HORIZONTAL_SYNC_START_MASK;
> +	unsigned int cvssm = CRT_VERTICAL_SYNC_START_MASK;
> +	unsigned int chtdem = CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
> +	unsigned int cvtdem = CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
> +	unsigned int chttm = CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
> +	unsigned int cvttm = CRT_VERTICAL_TOTAL_TOTAL_MASK;
> +	unsigned int chswm = CRT_HORIZONTAL_SYNC_WIDTH_MASK;
> +	unsigned int cvshm = CRT_VERTICAL_SYNC_HEIGHT_MASK;
> +	unsigned int phde = pModeParam->horizontal_display_end - 1;
> +	unsigned int pvde = pModeParam->vertical_display_end - 1;
> +	unsigned int phss = pModeParam->horizontal_sync_start - 1;
> +	unsigned int pvss = pModeParam->vertical_sync_start - 1;

I dont think this is a good solution.  The new names are not very
memorable, and they are not used near their definition.  You could instead
name a subexpression, and put the initialization right next to where the
variable would be used.  So for a trivial example, you could turn

x = (a + b) * c;

into

tmp = a * b;
x = tmp * c;

What you have in the definition of tmp should do some computation but
be able to be laid out in a readable manner.

julia

>
>  	if (pll->clockType == SECONDARY_PLL) {
>  		/* programe secondary pixel clock */
>  		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
> -		poke32(CRT_HORIZONTAL_TOTAL,
> -		       (((pModeParam->horizontal_total - 1) <<
> -			 CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> -			CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
> -		       ((pModeParam->horizontal_display_end - 1) &
> -			CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
> -
> -		poke32(CRT_HORIZONTAL_SYNC,
> -		       ((pModeParam->horizontal_sync_width <<
> -			 CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> -			CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
> -		       ((pModeParam->horizontal_sync_start - 1) &
> -			CRT_HORIZONTAL_SYNC_START_MASK));
> -
> -		poke32(CRT_VERTICAL_TOTAL,
> -		       (((pModeParam->vertical_total - 1) <<
> -			 CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
> -			CRT_VERTICAL_TOTAL_TOTAL_MASK) |
> -		       ((pModeParam->vertical_display_end - 1) &
> -			CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
> -
> -		poke32(CRT_VERTICAL_SYNC,
> -		       ((pModeParam->vertical_sync_height <<
> -			 CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
> -			CRT_VERTICAL_SYNC_HEIGHT_MASK) |
> -		       ((pModeParam->vertical_sync_start - 1) &
> -			CRT_VERTICAL_SYNC_START_MASK));
> +
> +		poke32(cht, (((pModeParam->horizontal_total - 1) << CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) & chttm) | (phde & chtdem));
> +
> +		poke32(chs, ((pModeParam->horizontal_sync_width << CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) & chswm) | (phss & chssm));
> +
> +		poke32(cvt, (((pModeParam->vertical_total - 1) << CRT_VERTICAL_TOTAL_TOTAL_SHIFT) & cvttm) | (pvde & cvtdem));
> +
> +		poke32(cvs, ((pModeParam->vertical_sync_height << CRT_VERTICAL_SYNC_HEIGHT_SHIFT) & cvshm) | (pvss & cvssm));
>
>  		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
>  		if (pModeParam->vertical_sync_polarity)
> @@ -128,36 +125,34 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
>
>  	} else if (pll->clockType == PRIMARY_PLL) {
>  		unsigned int reserved;
> +		unsigned int pht = PANEL_HORIZONTAL_TOTAL;
> +		unsigned int pvt = PANEL_VERTICAL_TOTAL;
> +		unsigned int phs = PANEL_HORIZONTAL_SYNC;
> +		unsigned int pvs = PANEL_VERTICAL_SYNC;
> +		unsigned int phssm = PANEL_HORIZONTAL_SYNC_START_MASK;
> +		unsigned int pvssm = PANEL_VERTICAL_SYNC_START_MASK;
> +		unsigned int phtdem = PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
> +		unsigned int pvtdem = PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK;
> +		unsigned int phttm = PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
> +		unsigned int pvttm = PANEL_VERTICAL_TOTAL_TOTAL_MASK;
> +		unsigned int phswm = PANEL_HORIZONTAL_SYNC_WIDTH_MASK;
> +		unsigned int pvshm = PANEL_VERTICAL_SYNC_HEIGHT_MASK;
> +		unsigned int phde = pModeParam->horizontal_display_end - 1;
> +		unsigned int pvde = pModeParam->vertical_display_end - 1;
> +		unsigned int phss = pModeParam->horizontal_sync_start - 1;
> +		unsigned int pvss = pModeParam->vertical_sync_start - 1;
>
>  		poke32(PANEL_PLL_CTRL, sm750_format_pll_reg(pll));
>
> -		reg = ((pModeParam->horizontal_total - 1) <<
> -			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> -			PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
> -		reg |= ((pModeParam->horizontal_display_end - 1) &
> -			PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
> -		poke32(PANEL_HORIZONTAL_TOTAL, reg);
> -
> -		poke32(PANEL_HORIZONTAL_SYNC,
> -		       ((pModeParam->horizontal_sync_width <<
> -			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> -			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
> -		       ((pModeParam->horizontal_sync_start - 1) &
> -			PANEL_HORIZONTAL_SYNC_START_MASK));
> -
> -		poke32(PANEL_VERTICAL_TOTAL,
> -		       (((pModeParam->vertical_total - 1) <<
> -			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
> -			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
> -		       ((pModeParam->vertical_display_end - 1) &
> -			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
> -
> -		poke32(PANEL_VERTICAL_SYNC,
> -		       ((pModeParam->vertical_sync_height <<
> -			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
> -			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
> -		       ((pModeParam->vertical_sync_start - 1) &
> -			PANEL_VERTICAL_SYNC_START_MASK));
> +		reg = ((pModeParam->horizontal_total - 1) << PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) & phttm;
> +		reg |= (phde & phtdem);
> +		poke32(pht, reg);
> +
> +		poke32(phs, ((pModeParam->horizontal_sync_width << PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) & phswm) | (phss & phssm));
> +
> +		poke32(pvt, (((pModeParam->vertical_total - 1) << PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) & pvttm) | (pvde & pvtdem));
> +
> +		poke32(pvs, ((pModeParam->vertical_sync_height << PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) & pvshm) | (pvss & pvssm));
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313182652.GA19882%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

