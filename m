X-GM-THRID: 6532874572090310656
X-Received: by 10.28.112.6 with SMTP id l6mr694037wmc.8.1521136171101;
        Thu, 15 Mar 2018 10:49:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.124.15 with SMTP id x15ls1107981wmc.4.canary-gmail; Thu, 15
 Mar 2018 10:49:29 -0700 (PDT)
X-Google-Smtp-Source: AG47ELucT9TbC9tDIlE1G+OrbGU++pkuIPOQVSzxSmN6+4YZdOMXCruusrFKcGVHqZgZ+wtoL+Po
X-Received: by 10.28.12.137 with SMTP id 131mr752524wmm.18.1521136169790;
        Thu, 15 Mar 2018 10:49:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521136169; cv=none;
        d=google.com; s=arc-20160816;
        b=XG+ULWuxmUtgy61yeP+KK1FS1AP0xrF1qRjBSjcmwO6WP9+nv191KhYpcJzxE5L337
         UOV6DonEa1ZpcW60Gn5HZU1ED6LqS/yb7Wm6L8Gu40G0Gz62VqD/DTnveSb07r4/I7vs
         q1RPAk3ina1V96rPFRzo1RyizL3zYgTr3IFPdvRXPKg3W2SsYrQLceDuV/JNnXbMfiZW
         IrTWC6sZwls/Ij3A2AcPni5RPK7a/sJww22AMtWJjKEyJNfRFqOg9AAr5eiYmFXc6XoY
         OCBdAAV4HpJOSl7eigDWXks2WGzK78OVLphngY9ERWhWQtqYq4dBbQSHPrjT4yE3Zx+v
         io8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=dyaIBJ8lO626qLq4B0X5TUNxuQpuYS+5N0yjlnQPjzI=;
        b=nHm0Yb9KQnl4fo0DKnIYytTCcCzP/PmGJeI/HYJ5H2ZAn+J2nMmLX+QMw+sI+U1XIY
         QVHi2BW4yID+kwja2nW2cbwhQUEPQ/091bVPBCDSIXtgMRN/erxbPeyG0XhZZkfY7f3Y
         Pdm2N0q1mFtGq09Bbij4/RB81WYRRT1sQ2dKuqW8zbvlPXVPZIa6QtPyCNOD0GrbF56x
         1cM+D3MVGcEthHLhmcGcMEOgvL5b3kFRov1X3FxQTZoFxuCLOwWubXjb9Q/51xnjk2Tq
         5tQFURfYYPFbd2Vp4XQicRtV4Ddmb22Ulb3vIM6BlBv3QwXI1r5ZtQC//kd8InnUs4QR
         Vejg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k27si176488wre.3.2018.03.15.10.49.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 10:49:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,311,1517871600"; 
   d="scan'208";a="318241174"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2018 18:49:29 +0100
Date: Thu, 15 Mar 2018 18:49:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove typedef
In-Reply-To: <1521135477-2802-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803151848460.3302@hadrien>
References: <1521135477-2802-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 15 Mar 2018, Nishka Dasgupta wrote:

> Change typedef enum to enum and ensure compatibility with the change.
> Issue found with checkpatch.

I think that this patch is on top of your previous patch.  You need to
undo your previous patch and make a new one on top of Greg's tree.

julia


>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Remove leading _ of affected variable declarations.
>  - Make commit message clearer.
>
>  drivers/staging/sm750fb/ddk750_display.c | 2 +-
>  drivers/staging/sm750fb/ddk750_display.h | 4 ++--
>  drivers/staging/sm750fb/sm750_hw.c       | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index 7710454..1273e7d 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
>  	primary_wait_vertical_sync(delay);
>  }
>
> -void ddk750_setLogicalDispOut(enum _disp_output output)
> +void ddk750_setLogicalDispOut(enum disp_output output)
>  {
>  	unsigned int reg;
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index 3eeb02f..7fd101d 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -89,7 +89,7 @@
>   * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
>   * CRT means crt path DSUB
>   */
> -enum _disp_output {
> +enum disp_output {
>  	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
>  	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
>  	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
> @@ -102,6 +102,6 @@ enum _disp_output {
>  	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
>  };
>
> -void ddk750_setLogicalDispOut(enum _disp_output output);
> +void ddk750_setLogicalDispOut(enum disp_output output);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index 3248f88..edeae9d 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
>  			    struct fb_fix_screeninfo *fix)
>  {
>  	int ret;
> -	enum _disp_output disp_set;
> +	enum disp_output disp_set;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521135477-2802-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

