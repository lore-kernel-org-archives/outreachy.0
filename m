X-GM-THRID: 6670189254816038912
X-Received: by 2002:a19:9503:: with SMTP id x3mr1365014lfd.11.1553027818724;
        Tue, 19 Mar 2019 13:36:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:429a:: with SMTP id m26ls14084lfh.10.gmail; Tue, 19 Mar
 2019 13:36:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw4/OLCA3WLRycOkUofusG5rZAQ26Hqo/ifFbuX88SBfXmO7fdVR5U8M07V7Uu2BMnYJF7+
X-Received: by 2002:ac2:5632:: with SMTP id b18mr1368538lff.5.1553027817898;
        Tue, 19 Mar 2019 13:36:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553027817; cv=none;
        d=google.com; s=arc-20160816;
        b=aPVVY7J6j6ibAlElKdv9S/q1ayFSvLIdf2qXcWuyURnsI5yWg79EJw5d3tSkkhtK/H
         5xhKCB5V4inm666YN/sEmeSAbmJ9WG3Bv2Z71JFTGw+I2RgtM/h+qcFPhCvFvA/QiC7i
         KWOPjlsKQ/2gC6zEUVYWRvWhZQtdri2JQkZRfqmRa427UpMdq/la9xBXxL9sGtqaOjwY
         fjUDtvDStnTfs+oujIfkWYD5yPa8o7g3dboOi2BP4uLt0aPer4WS8mXSd2rhBuJRkwyH
         IUbfXSC+00zOoxSVpDk/y7PH2pXkH/Vwr18qv6C2KGA/6o91FoldkYn83BgA2Dq3i9W1
         FuIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DGwN+tbI7BEKzDsno924kgUAim6KDk0jD8xaqC5TIJg=;
        b=LBig1wfWxfctLXEvJ50EchBoWWwiHMOrp6DDQtisQt5xBJC7EoQfVyc4OToQWfWadq
         0Nv8Y375A8zXucXOjC3GJvSBKpz4M6SrEy5TzeEG+xE+DSLfNIl0x9le1ckJCMHUF+UY
         4B6RpWsxhf7iEqJKbKe+XZyxio12Ofge/7i71yZUtHuSWxR53D7sa1rTXxXBuRV2qNMb
         q5hbTesR1qJOJaxyqTtcxevGaIZ39XGv/fLenuslivmcv9mfNLDGzVB58zb/ZOduLi/U
         /2qaqD6TUVv1kZFKM2k0YoBVtVNQY3bzmCnnHDUZUXhEhxfQHu1t8kBhhi0o3nM4a0qm
         E1vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 19si793lje.4.2019.03.19.13.36.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:36:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="374777796"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 21:36:56 +0100
Date: Tue, 19 Mar 2019 21:36:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Eliminate camel
 case
In-Reply-To: <20190319203425.19602-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903192136300.2460@hadrien>
References: <20190319203425.19602-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

There was already a v3 on this change, so why a v2 now?

julia

On Wed, 20 Mar 2019, Vatsala Narang wrote:

> Edit CamelCase function name
> Issue found by checkpatch.pl
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> Changes in v2:
>  -correction in subject line and log message.
>
>  drivers/staging/sm750fb/ddk750_display.c | 10 +++++-----
>  drivers/staging/sm750fb/ddk750_display.h |  2 +-
>  drivers/staging/sm750fb/ddk750_power.h   |  2 +-
>  drivers/staging/sm750fb/sm750_hw.c       |  2 +-
>  4 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index f38051eedb6c..887ea8aef43f 100644
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
> -				     4);
> +		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
> +		4);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319203425.19602-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

