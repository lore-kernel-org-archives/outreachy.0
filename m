X-GM-THRID: 6532874572090310656
X-Received: by 10.46.53.4 with SMTP id z4mr517341ljz.22.1521062168232;
        Wed, 14 Mar 2018 14:16:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.146.76 with SMTP id v12ls302448ljg.3.gmail; Wed, 14 Mar
 2018 14:16:06 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsANcYRix8VBbRA5sRqbvfNdHDyRLgEahtObpstebuEjRIrLs50gHhMLYullN9DuDCHG0wO
X-Received: by 10.46.84.66 with SMTP id y2mr494926ljd.5.1521062166606;
        Wed, 14 Mar 2018 14:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521062166; cv=none;
        d=google.com; s=arc-20160816;
        b=hegsv4a1e2kp0H0ujfciaieaKU7+RHp7HNnO/1wLbJQUI7ZMA8o+RI94TXbUXRR5+Q
         GNtFfFiWfIPVeDuOBW+FDY36yy86UwSnzL0dqyHEVeFVbFYTCKpBL27/20bMGKBML+AU
         yEENKLzpl4xptPMfwmkU6+ISY6C5T3NMbu4xX7GOt/GHqML9JePbuu+iLyxMlJjbmko9
         NCv1rjzUt0olaL/UVYLYzQagK9gGSHKL5ZUITpw84Hs2CWfumScaJikwCsLqbOYrRMCN
         fj2Xx76GGK7168L/9yMaBuzv2iI7+T/Btm6fNJRYnB100GPASyHYBqtTDl4qPMq+SlX/
         n7wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+y+EyLFJMMXuv/hmArtuFVav+XKxGaVQ59TFVe1aVuY=;
        b=0/xvhyfY983WvTLDoTgCf18ah22mZiBU9CyEjHPlO4c3hNOfvyqlzMIN71BUJh9gK2
         nZqEYlcgWoaJM5iJaS7F5OyuFHozjCAlW2/4uxbdoZcBSKw0eo9mMZzIL2Du90BDrUUM
         7ekEEiRYQhGnn+VEI07mdHuuOllfLqkQ5Bn0wzxwOkJrb+hAewJ3ulyYpYkCx1KINeiN
         dtB4N4cWnb181KzV7d8dSPSbgVgKZqlDSSxxH52ZYp8sgogCb7USUHt7PL1+wWiQIChW
         gknTQP7T5hcswB8YUFZs1xEgKF9u1FfyIVXAumfUfhlyr2O/oaEH2tInyY92ncDnNolw
         MK4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y2si106887ljd.2.2018.03.14.14.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 14:16:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,307,1517871600"; 
   d="scan'208";a="258324569"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2018 22:16:05 +0100
Date: Wed, 14 Mar 2018 22:16:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove typedef
In-Reply-To: <1521053377-28914-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803142214440.2326@hadrien>
References: <1521053377-28914-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Mar 2018, Nishka Dasgupta wrote:

> Change typedef enum to enum and add backward compatibility. Issue found
> with checkpatch.

I'm not sure to understand what you mean by backward compatibility.

In the resulting code, it would be better to remove the _ in front of the
enum name.  That suggests that it is something hidden, which was the case
but is no longer.

julia


>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/sm750fb/ddk750_display.c | 2 +-
>  drivers/staging/sm750fb/ddk750_display.h | 7 +++----
>  drivers/staging/sm750fb/sm750_hw.c       | 2 +-
>  3 files changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index c6fd901..7710454 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
>  	primary_wait_vertical_sync(delay);
>  }
>
> -void ddk750_setLogicalDispOut(disp_output_t output)
> +void ddk750_setLogicalDispOut(enum _disp_output output)
>  {
>  	unsigned int reg;
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index 523bbf3..3eeb02f 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -89,7 +89,7 @@
>   * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
>   * CRT means crt path DSUB
>   */
> -typedef enum _disp_output_t {
> +enum _disp_output {
>  	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
>  	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
>  	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
> @@ -100,9 +100,8 @@ typedef enum _disp_output_t {
>  	 */
>  	do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
>  	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
> -}
> -disp_output_t;
> +};
>
> -void ddk750_setLogicalDispOut(disp_output_t output);
> +void ddk750_setLogicalDispOut(enum _disp_output output);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index f996f84..3248f88 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
>  			    struct fb_fix_screeninfo *fix)
>  {
>  	int ret;
> -	disp_output_t disp_set;
> +	enum _disp_output disp_set;
>  	int channel;
>
>  	ret = 0;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521053377-28914-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

