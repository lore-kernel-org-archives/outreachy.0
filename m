X-GM-THRID: 6397051506437128192
X-Received: by 10.25.202.67 with SMTP id h3mr5289409lfj.30.1489482947972;
        Tue, 14 Mar 2017 02:15:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.129 with SMTP id 123ls1705362ljj.16.gmail; Tue, 14 Mar
 2017 02:15:47 -0700 (PDT)
X-Received: by 10.25.24.65 with SMTP id o62mr4752990lfi.8.1489482947430;
        Tue, 14 Mar 2017 02:15:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si145088wme.1.2017.03.14.02.15.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 02:15:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,162,1486422000"; 
   d="scan'208";a="264461515"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2017 10:15:46 +0100
Date: Tue, 14 Mar 2017 10:15:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Improved code
 readability
In-Reply-To: <20170314090626.9314-1-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703141012130.6742@hadrien>
References: <20170314090626.9314-1-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 14 Mar 2017, Arushi Singhal wrote:

> New variables are added to make the code more readable.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v3
>  - improve the patch to make code much more readable.
>
>  drivers/staging/sm750fb/ddk750_mode.c | 115 ++++++++++++++++++----------------
>  1 file changed, 61 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index 25da678179f7..150e5ed0d8ea 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -81,33 +81,34 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
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
> +		unsigned int cht = CRT_HORIZONTAL_TOTAL;
> +		unsigned int chttm = CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
> +		unsigned int phde = pModeParam->horizontal_display_end - 1;
> +		unsigned int chtdem = CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
> +
> +		poke32(cht, (((pModeParam->horizontal_total - 1) << CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) & chttm) | (phde & chtdem));

In the kernel, you should not declare new variables on the fly, within a
block.  My point though was that your mapping of variables to values is
not ideal.  Give names to larger chunks than just naming constants, as I
put in the example in my previous mail.  There is no need to have distinct
names in each case - the names you have are distinct but not memorable
anyway.  And don't create code that exceeds 80 characters.

julia

> +
> +		unsigned int chs = CRT_HORIZONTAL_SYNC;
> +		unsigned int chswm = CRT_HORIZONTAL_SYNC_WIDTH_MASK;
> +		unsigned int phss = pModeParam->horizontal_sync_start - 1;
> +		unsigned int chssm = CRT_HORIZONTAL_SYNC_START_MASK;
> +
> +		poke32(chs, ((pModeParam->horizontal_sync_width << CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) & chswm) | (phss & chssm));
> +
> +		unsigned int cvt = CRT_VERTICAL_TOTAL;
> +		unsigned int cvttm = CRT_VERTICAL_TOTAL_TOTAL_MASK;
> +		unsigned int pvde = pModeParam->vertical_display_end - 1;
> +		unsigned int cvtdem = CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
> +
> +		poke32(cvt, (((pModeParam->vertical_total - 1) << CRT_VERTICAL_TOTAL_TOTAL_SHIFT) & cvttm) | (pvde & cvtdem));
> +
> +		unsigned int cvs = CRT_VERTICAL_SYNC;
> +		unsigned int cvshm = CRT_VERTICAL_SYNC_HEIGHT_MASK;
> +		unsigned int pvss = pModeParam->vertical_sync_start - 1;
> +		unsigned int cvssm = CRT_VERTICAL_SYNC_START_MASK;
> +
> +		poke32(cvs, ((pModeParam->vertical_sync_height << CRT_VERTICAL_SYNC_HEIGHT_SHIFT) & cvshm) | (pvss & cvssm));
>
>  		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
>  		if (pModeParam->vertical_sync_polarity)
> @@ -131,33 +132,39 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
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
> +		unsigned int phttm = PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
> +
> +		reg = ((pModeParam->horizontal_total - 1) << PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) & phttm;
> +
> +		unsigned int phde = pModeParam->horizontal_display_end - 1;
> +		unsigned int phtdem = PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
> +
> +		reg |= (phde & phtdem);
> +
> +		unsigned int pht = PANEL_HORIZONTAL_TOTAL;
> +
> +		poke32(pht, reg);
> +
> +		unsigned int phs = PANEL_HORIZONTAL_SYNC;
> +		unsigned int phswm = PANEL_HORIZONTAL_SYNC_WIDTH_MASK;
> +		unsigned int phss = pModeParam->horizontal_sync_start - 1;
> +		unsigned int phssm = PANEL_HORIZONTAL_SYNC_START_MASK;
> +
> +		poke32(phs, ((pModeParam->horizontal_sync_width << PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) & phswm) | (phss & phssm));
> +
> +		unsigned int pvt = PANEL_VERTICAL_TOTAL;
> +		unsigned int pvttm = PANEL_VERTICAL_TOTAL_TOTAL_MASK;
> +		unsigned int pvde = pModeParam->vertical_display_end - 1;
> +		unsigned int pvtdem = PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK;
> +
> +		poke32(pvt, (((pModeParam->vertical_total - 1) << PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) & pvttm) | (pvde & pvtdem));
> +
> +		unsigned int pvs = PANEL_VERTICAL_SYNC;
> +		unsigned int pvshm = PANEL_VERTICAL_SYNC_HEIGHT_MASK;
> +		unsigned int pvss = pModeParam->vertical_sync_start - 1;
> +		unsigned int pvssm = PANEL_VERTICAL_SYNC_START_MASK;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170314090626.9314-1-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

