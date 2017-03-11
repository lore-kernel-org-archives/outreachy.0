X-GM-THRID: 6396076706969419776
X-Received: by 10.46.83.7 with SMTP id h7mr4229998ljb.24.1489224325410;
        Sat, 11 Mar 2017 01:25:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.84 with SMTP id x20ls1144484ljd.47.gmail; Sat, 11 Mar
 2017 01:25:24 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr3824947ljb.2.1489224324931;
        Sat, 11 Mar 2017 01:25:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t131si145563wmf.1.2017.03.11.01.25.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:25:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,145,1486422000"; 
   d="scan'208";a="264122790"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 10:25:24 +0100
Date: Sat, 11 Mar 2017 10:25:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Sudip Mukherjee <sudipm.mukherjee@gmail.com>, teddy.wang@siliconmotion.com, 
    Greg KH <gregkh@linuxfoundation.org>, linux-fbdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: function prototype
 argument should have an identifier name
In-Reply-To: <CA+XqjF_k+MyLno8O=oX2mB808uPz5SBmuFsgEu3jM+2Qo8RUMw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703111021450.2202@hadrien>
References: <CA+XqjF_k+MyLno8O=oX2mB808uPz5SBmuFsgEu3jM+2Qo8RUMw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

This is the patch that I previously commented on.  Thus the subject line
should contain v2.  Please try to remember to do this every time.  It is
very confusing to see something one thinks one has already seen with no
version information.  There should also be a description of the change
since the previous version under the ---.

julia

On Sat, 11 Mar 2017, Arushi Singhal wrote:

>
> function prototype arguments like 'struct vb_device_info *','unsigned
> long' etc. should have an identifier name.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_display.h | 2 +-
>  drivers/staging/sm750fb/ddk750_mode.h    | 2 +-
>  drivers/staging/sm750fb/ddk750_power.h   | 2 +-
>  drivers/staging/sm750fb/sm750.h          | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index e2a3f84ca4c5..609bf742efff 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -102,6 +102,6 @@ typedef enum _disp_output_t {
>  }
>  disp_output_t;
>
> -void ddk750_setLogicalDispOut(disp_output_t);
> +void ddk750_setLogicalDispOut(disp_output_t output);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
> index 2183e664cf4b..6d204b8b4a01 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.h
> +++ b/drivers/staging/sm750fb/ddk750_mode.h
> @@ -34,6 +34,6 @@ typedef struct _mode_parameter_t {
>  }
>  mode_parameter_t;
>
> -int ddk750_setModeTiming(mode_parameter_t *, clock_type_t);
> +int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> index ec0b99d6a7ad..44c4fc587e96 100644
> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -14,7 +14,7 @@ DPMS_t;
>  	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
>  }
>
> -void ddk750_set_dpms(DPMS_t);
> +void ddk750_set_dpms(DPMS_t state);
>  void sm750_set_power_mode(unsigned int powerMode);
>  void sm750_set_current_gate(unsigned int gate);
>
> diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
> index 306711ed55f9..5ea455dee949 100644
> --- a/drivers/staging/sm750fb/sm750.h
> +++ b/drivers/staging/sm750fb/sm750.h
> @@ -184,7 +184,7 @@ static inline unsigned long ps_to_hz(unsigned int psvalue)
>  }
>
>  int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
> -int hw_sm750_inithw(struct sm750_dev*, struct pci_dev *);
> +int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
> -void hw_sm750_initAccel(struct sm750_dev *);
> +void hw_sm750_initAccel(struct sm750_dev *hw_sm750_initAccel);
>  int hw_sm750_deWait(void);
>  int hw_sm750le_deWait(void);
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF_k%2BMyLno8O%3DoX2mB808uPz5SBmuFsgEu3jM%2B2Qo8RUMw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

