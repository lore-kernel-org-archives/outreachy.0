X-GM-THRID: 6669776681791651840
X-Received: by 2002:adf:fa02:: with SMTP id m2mr516753wrr.4.1552989013850;
        Tue, 19 Mar 2019 02:50:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ec8d:: with SMTP id z13ls1710785wrn.3.gmail; Tue, 19 Mar
 2019 02:50:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxsaZkUzNEzYplymGTRTJnMQWesEsE/nEBXhMISPRXO2oIm6nlCsLCzYAPar293cvwiXjlj
X-Received: by 2002:adf:f152:: with SMTP id y18mr660647wro.21.1552989013164;
        Tue, 19 Mar 2019 02:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552989013; cv=none;
        d=google.com; s=arc-20160816;
        b=kXN5Fn9RK6qSf7wL/ZDhY/70L7GCgJ8vd381C0T2jTvNYcdRKWizYa3c2Q7/v6gEWY
         eRvD1QmSyAIs1LZCORSepOi6yYQsiVL/zffGrRbQrrnG3NfbVmbKLvJsyEq9q4EzRHyO
         ROJ83+dEXeWHf9psZQ8FUycroruN87WIU1RO3dze106g1QryZSeAyCNETqbYiWvkrQ12
         UYIHjd86AtMmf1yUboUfPph8d4DlvJc/yL6cssxUZCRLSl4cHDnCbBHy6el7mgkeLdoD
         ZKf9wKqZCiqV+FQDszRfRPZcy3o0dvnqGlLKsVXop9tGR6GcCsAvQ9RvpVKqn6DJzo7s
         3quQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=WuDa6yJdE/l3jlArJyTSziUmcWqhdWYAG9DTM5+eOg0=;
        b=nQxRs/g5aM/wNd8fEIXMeCrenT1n01MRZnzgSEH4QVI0P2Bm0HGExc+GmuC5wMtZPM
         EYLz/PTORJ/u5UEsJMomfGZqdIsbcL/C407Z4EwJBk0A+1o+44NusrfILS8Nyw1xaj3x
         sraAvFNvNCtQ77L06dgzZZvj5kl+txax3DUQ1maisS3Up2fsSSge7uYCVtmKFkjkTlW/
         4QcHGmnE6U+w/Ms2n0Eloz8fTAatUgy1IkAw+zWwdnuBNp2CevQKhTCmHo1Z4e0J6J4f
         SsH4+F7Q3adlJh05o6xvQkYdhNgsz0/CGHxuy17Rsnc+8t63S8WWnSv427smCb6B4giQ
         xk6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si564435wrj.4.2019.03.19.02.50.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 02:50:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,497,1544482800"; 
   d="scan'208";a="299928800"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 10:50:11 +0100
Date: Tue, 19 Mar 2019 10:50:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: vatsalanarang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Eliminate camel case
In-Reply-To: <20190319094449.11640-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.20.1903191048320.3950@hadrien>
References: <20190319094449.11640-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Mar 2019, vatsalanarang wrote:

> From: Vatsala Narang <vatsalanarang@gmail.com>

Can you fix your git config file to make this unnecessary?

I think you have submitted this patch before, so it would be a v2.  You
need to put PATCH v2 in the subject line and describe what changed under
the ---

> Issue reported by checkpatch.pl tool
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> drivers/staging/sm750fb/ddk750_display.c | 8 ++++----
> drivers/staging/sm750fb/ddk750_display.h | 2 +-
> drivers/staging/sm750fb/ddk750_power.h   | 2 +-
> drivers/staging/sm750fb/sm750_hw.c       | 2 +-
> 4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index f38051eedb6c..44a605584d17 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -85,7 +85,7 @@ static void primary_wait_vertical_sync(int delay)
>  	}
>  }
>
> -static void swPanelPowerSequence(int disp, int delay)
> +static void sw_panel_power_sequence(int disp, int delay)
>  {
>  	unsigned int reg;
>
> @@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
>  	primary_wait_vertical_sync(delay);
>  }
>
> -void ddk750_setLogicalDispOut(enum disp_output output)
> +void ddk750_set_logical_disp_out(enum disp_output output)
>  {
>  	unsigned int reg;
>
> @@ -147,12 +147,12 @@ void ddk750_setLogicalDispOut(enum disp_output output)
>
>  	if (output & PNL_SEQ_USAGE) {
>  		/* set  panel sequence */
> -		swPanelPowerSequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
> +		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
>  				     4);

The 4 needs to be lined up with the (, which you have moved a bit to the
right.

julia


>  	}
>
>  	if (output & DAC_USAGE)
> -		setDAC((output & DAC_MASK) >> DAC_OFFSET);
> +		set_DAC((output & DAC_MASK) >> DAC_OFFSET);
>
>  	if (output & DPMS_USAGE)
>  		ddk750_set_dpms((output & DPMS_MASK) >> DPMS_OFFSET);
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index 7fd101d98199..7f713906dc16 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -102,6 +102,6 @@ enum disp_output {
>  	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
>  };
>
> -void ddk750_setLogicalDispOut(enum disp_output output);
> +void ddk750_set_logical_disp_out(enum disp_output output);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> index e48c74ecbbd1..7002567a47d2 100644
> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -9,7 +9,7 @@ enum dpms {
>  	crtDPMS_OFF = 0x3,
>  };
>
> -#define setDAC(off) {							\
> +#define set_DAC(off) {							\
>  	poke32(MISC_CTRL,						\
>  	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
>  }
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index edeae9d06883..ea1d3d4efbc2 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -207,7 +207,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
>  			if (output->paths & sm750_crt)
>  				disp_set |= do_CRT_SEC;
>  		}
> -		ddk750_setLogicalDispOut(disp_set);
> +		ddk750_set_logical_disp_out(disp_set);
>  	} else {
>  		/* just open DISPLAY_CONTROL_750LE register bit 3:0 */
>  		u32 reg;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319094449.11640-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

