X-GM-THRID: 6399195765741191168
X-Received: by 10.25.150.2 with SMTP id y2mr2690498lfd.21.1489929064338;
        Sun, 19 Mar 2017 06:11:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.89 with SMTP id k86ls369624lfi.7.gmail; Sun, 19 Mar 2017
 06:11:03 -0700 (PDT)
X-Received: by 10.46.20.74 with SMTP id 10mr3368931lju.0.1489929063484;
        Sun, 19 Mar 2017 06:11:03 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si629020wmg.0.2017.03.19.06.11.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 06:11:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,188,1486422000"; 
   d="scan'208";a="265182426"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2017 14:11:02 +0100
Date: Sun, 19 Mar 2017 14:11:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: sudipm.mukherjee@gmail.com, Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Code readability
 is improved
In-Reply-To: <20170319130744.GA24605@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703191409140.2108@hadrien>
References: <20170319130744.GA24605@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2017, Arushi Singhal wrote:

> New variables are added to make the code more readable.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v3
>  -try to make the code much more readable.
>
>  drivers/staging/sm750fb/ddk750_mode.c | 61 ++++++++++++++++++++---------------
>  1 file changed, 35 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index eea5aef2956f..5f18ce4d10de 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -81,33 +81,42 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
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
>
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
> +		unsigned int a = (pModeParam->horizontal_total - 1) <<
> +				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
> +		unsigned int b = a & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
> +		unsigned int c = (pModeParam->horizontal_display_end - 1) &
> +				CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
> +		unsigned int temp = b | c;
> +
> +		poke32(CRT_HORIZONTAL_TOTAL, temp);
> +
> +		unsigned int a = (pModeParam->horizontal_sync_width <<
> +				CRT_HORIZONTAL_SYNC_WIDTH_SHIFT);
> +		unsigned int b = a & CRT_HORIZONTAL_SYNC_WIDTH_MASK;
> +		unsigned int c = (pModeParam->horizontal_sync_start - 1) &
> +				CRT_HORIZONTAL_SYNC_START_MASK;
> +		unsigned int temp = b | c;

This is back to the original incorrect solution.  You can't declare
variables on the fly in Linux code.  Variables have to be declared at the
top of a block.

But you can reuse the same variables over and over, if no one cares about
their previous values.

julia


> +
> +		poke32(CRT_HORIZONTAL_SYNC, temp);
> +
> +		unsigned int a = (pModeParam->vertical_total - 1) <<
> +				CRT_VERTICAL_TOTAL_TOTAL_SHIFT;
> +		unsigned int b = a & CRT_VERTICAL_TOTAL_TOTAL_MASK;
> +		unsigned int c = (pModeParam->vertical_display_end - 1) &
> +				CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
> +		unsigned int temp = b | c;
> +
> +		poke32(CRT_VERTICAL_TOTAL, temp);
> +
> +		unsigned int a = pModeParam->vertical_sync_height <<
> +				CRT_VERTICAL_SYNC_HEIGHT_SHIFT;
> +		unsigned int b = a & CRT_VERTICAL_SYNC_HEIGHT_MASK;
> +		unsigned int c = (pModeParam->vertical_sync_start - 1) &
> +				CRT_VERTICAL_SYNC_START_MASK;
> +		unsigned int temp = b | c;
> +
> +		poke32(CRT_VERTICAL_SYNC, temp);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319130744.GA24605%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

