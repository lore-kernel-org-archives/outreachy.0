X-GM-THRID: 6397051506437128192
X-Received: by 10.237.36.165 with SMTP id t34mr5936057qtc.50.1489482944255;
        Tue, 14 Mar 2017 02:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls16141300otc.22.gmail; Tue, 14 Mar
 2017 02:15:43 -0700 (PDT)
X-Received: by 10.200.53.150 with SMTP id k22mr5712817qtb.80.1489482943895;
        Tue, 14 Mar 2017 02:15:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si3508153pfa.4.2017.03.14.02.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 02:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mailgate1.mtk.com.tw [219.87.157.82])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D3445910;
	Tue, 14 Mar 2017 09:15:42 +0000 (UTC)
Date: Tue, 14 Mar 2017 17:15:29 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH v3] staging: sm750fb: Improved code readability
Message-ID: <20170314091529.GA5826@kroah.com>
References: <20170314090626.9314-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170314090626.9314-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 14, 2017 at 02:36:26PM +0530, Arushi Singhal wrote:
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
> +
> +		unsigned int chs = CRT_HORIZONTAL_SYNC;
> +		unsigned int chswm = CRT_HORIZONTAL_SYNC_WIDTH_MASK;
> +		unsigned int phss = pModeParam->horizontal_sync_start - 1;
> +		unsigned int chssm = CRT_HORIZONTAL_SYNC_START_MASK;
> +
> +		poke32(chs, ((pModeParam->horizontal_sync_width << CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) & chswm) | (phss & chssm));

{sigh}

Ok, please, ALWAYS do the following for your patches:
	- run checkpatch.pl and do not introduce new issues
	- test build your code and do not add new build warnings.

Don't get sloppy here, you know better than this :)

thanks,

greg k-h

