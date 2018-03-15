X-GM-THRID: 6532874572090310656
X-Received: by 10.28.203.134 with SMTP id b128mr40542wmg.31.1521137342828;
        Thu, 15 Mar 2018 11:09:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.29 with SMTP id u29ls1028026wma.5.gmail; Thu, 15 Mar
 2018 11:09:01 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtdxeyk1XfMsbmPzDkmfavOBOwAyfdtalsuuSBnVZ9AnPJOiBGcS/Z6DTi11bylfHRaYi+M
X-Received: by 10.28.7.77 with SMTP id 74mr376379wmh.13.1521137341910;
        Thu, 15 Mar 2018 11:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521137341; cv=none;
        d=google.com; s=arc-20160816;
        b=b79XJQkn9kz2sQ6PFknqlgItKs695xVRgRsVESAE1XgQwqItzI1qz1fz6bqzhKmr/r
         JMcM301PJyo2Zv7z7e3cIMAGkSY8OcKk+1DS+oB3dp4TIhfsr7kaiTSdj5Avp7g74SJE
         Mr2as2ZylrSGP4TRamQz5pwmDDDaNs23sRoqRWpsT8J0ncTgU4KERq0GUAXUVeWdlet7
         myeIHmSPNnM3CCJAfHmYx4rEXm/9RkG/qtCIjckxuwNhGeC08nhafBYTg48JS7CGMoi1
         aSmAmYlggYlLZieJms1mK0C3C+s1KVfaED7a+cd0IWYMAvjJ4xfhv1BNaR05uUYqEslD
         mgRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ZOxl4wE8F6HSBx5vSfVJ7Otnwf3UEFjCgmKkeELqXjU=;
        b=rPRanuJWftIWgSHst8ybEfSyzqiL9fxeco//2PADn7w5MJ0XtfB0sKth0GyepcnBMR
         EXlHN0lBkZmmV0VMS2aMro5tSBLNcSKWI0Qri4A97j7viwPSi1iuDa9EgTaPW1HvfAIs
         qgKYbEcQpytJtIc+6A5Ayi3ph8dTjEzmk//yF0k5r1lA3cYGWJnBVpOJVsWjzUH4JBKH
         XK4FE0pLkvABWC38ymsj0AiX99c3USN6wXbC3WN915UbVaCmn4s1xuw5ar3kx13pPmAM
         r/ddvxRGwrrvJnxf+GmAV4MN+gLWN5aLNtiZU9AfW36x8cFJcL3wCnln+4PlAPbdjNKS
         fmGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f137si192316wme.0.2018.03.15.11.09.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 11:09:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,311,1517871600"; 
   d="scan'208";a="258470312"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2018 19:09:01 +0100
Date: Thu, 15 Mar 2018 19:08:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Remove typedef
In-Reply-To: <1521136755-3760-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803151908410.3302@hadrien>
References: <1521136755-3760-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 15 Mar 2018, Nishka Dasgupta wrote:

> Change typedef enum to enum and ensure compatibility of change. Issue
> found with checkpatch.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v3:
>  - Integrate both v1 and v2 into one commit.
>
>  drivers/staging/sm750fb/ddk750_display.c | 2 +-
>  drivers/staging/sm750fb/ddk750_display.h | 7 +++----
>  drivers/staging/sm750fb/sm750_hw.c       | 2 +-
>  3 files changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index c6fd901..1273e7d 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
>  	primary_wait_vertical_sync(delay);
>  }
>
> -void ddk750_setLogicalDispOut(disp_output_t output)
> +void ddk750_setLogicalDispOut(enum disp_output output)
>  {
>  	unsigned int reg;
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index 523bbf3..7fd101d 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -89,7 +89,7 @@
>   * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
>   * CRT means crt path DSUB
>   */
> -typedef enum _disp_output_t {
> +enum disp_output {
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
> +void ddk750_setLogicalDispOut(enum disp_output output);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index f996f84..edeae9d 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
>  			    struct fb_fix_screeninfo *fix)
>  {
>  	int ret;
> -	disp_output_t disp_set;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521136755-3760-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

