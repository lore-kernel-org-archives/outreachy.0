X-GM-THRID: 6330674938515554304
X-Received: by 10.13.204.207 with SMTP id o198mr479492ywd.167.1474053636426;
        Fri, 16 Sep 2016 12:20:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.13 with SMTP id n13ls1299052ith.20.canary; Fri, 16 Sep
 2016 12:20:34 -0700 (PDT)
X-Received: by 10.66.145.98 with SMTP id st2mr526026pab.68.1474053634491;
        Fri, 16 Sep 2016 12:20:34 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z4si2949434pam.0.2016.09.16.12.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 12:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so2520448pfy.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 12:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GkBFgveERnyzHv5O8x+zjfQkz66t/y71QouttHQdpak=;
        b=n++wX7AslEoTAcosgZDqOa1pspoPqBNNUOspIjRB4LXN5MbqwLOMpr6u0YgTjwq1Un
         fg53N4bbgIzZK7mV/2QghuwNlXfgdsPC9Cqyp0QC1Y6yGLqoBL9AD+JNoTGYmOmzQJeB
         AEV2ymmNG+on2qJ7oaXhL3uyZgfFiwJag77SoVlJq6UThncD8yIay6dX8YGsCNMZONis
         uA/mgovarh71J4KwKt9gqf8oEhzRiHPrw8wqCrvoES2kkeIHHkKBykUR6q3bR4RLAJIm
         wADdbwPHktbakojAuv1ibEUSVKxRtNRf1EUFJ5eNL1/MwmqXOjiBrT8n+B5mOL/xnMK2
         tq6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GkBFgveERnyzHv5O8x+zjfQkz66t/y71QouttHQdpak=;
        b=ElYFB6TI+rupczxs2wL3NBNcJ8LFjqYGzJRy70/5HKvS5koFcX/jgpgWsXShvJDpMA
         lb/gsmg57rboWt7NnpAv3M3V8aheVFatO36vpJi/fVVAoT9eHNOGLFs4PiGO8K8y65vZ
         LpZeUIA3h3KUBAXo5+ylwQHdpUWNCLD62X91SYX0UZioZr5NRFn1gwZaU/nMimkI0saO
         uox77Y2gp0L+7TkSmwaiScPK0MbZ1/RAJAit1oPs4LcTUF/ZxbhricCkZ6JNk9F6cmaw
         juGVvMK7HMvO9tdDoCnL5IHU+zmJ4cCAXGPhHez+Cc8Zz2XWhQtsSxEaj55mAheTGKD/
         z9Tg==
X-Gm-Message-State: AE9vXwNnSnQopl7DmhXOZEaMi59uNrorbiND2H2eF14S4ILcf6m4VKNl7yl+hja1tw+UDw==
X-Received: by 10.98.130.137 with SMTP id w131mr25508851pfd.5.1474053634281;
        Fri, 16 Sep 2016 12:20:34 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id s89sm53944614pfi.83.2016.09.16.12.20.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 12:20:33 -0700 (PDT)
Date: Fri, 16 Sep 2016 12:20:32 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Add spaces
 around '|'
Message-ID: <20160916192031.GA22106@d830.WORKGROUP>
References: <20160916125213.GA16144@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916125213.GA16144@toblerone>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Sep 16, 2016 at 06:22:13PM +0530, Rehas Sachdeva wrote:
> Adds spaces on either side of a '|'. Issue dound by checkpatch.

spell check -> found
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
> Change in v2:
> Refresh commit against the latest tree.

Hi Rehas,

This fails to apply to my tree.  It appears to be built upon
your other patchset:
[PATCH 0/5] staging: sm750fb: Fix multiple checkpatch warnings
which is still pending.

So, you can go at least 3 ways here..
- rebase now against a clean staging tree and resend
- wait til that patchset is in the staging tree.  rebase and resend
- pull it into that patchset.

alisons








> 
>  drivers/staging/sm750fb/ddk750_display.h | 44 ++++++++++++++++----------------
>  1 file changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index 04b8eba..f69d798 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -8,8 +8,8 @@
>  #define PNL_2_OFFSET 0
>  #define PNL_2_MASK (3 << PNL_2_OFFSET)
>  #define PNL_2_USAGE	(PNL_2_MASK << 16)
> -#define PNL_2_PRI	((0 << PNL_2_OFFSET)|PNL_2_USAGE)
> -#define PNL_2_SEC	((2 << PNL_2_OFFSET)|PNL_2_USAGE)
> +#define PNL_2_PRI	((0 << PNL_2_OFFSET) | PNL_2_USAGE)
> +#define PNL_2_SEC	((2 << PNL_2_OFFSET) | PNL_2_USAGE)
>  
>  
>  /* primary timing & plane enable bit
> @@ -19,8 +19,8 @@
>  #define PRI_TP_OFFSET 4
>  #define PRI_TP_MASK BIT(PRI_TP_OFFSET)
>  #define PRI_TP_USAGE (PRI_TP_MASK << 16)
> -#define PRI_TP_ON ((0x1 << PRI_TP_OFFSET)|PRI_TP_USAGE)
> -#define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET)|PRI_TP_USAGE)
> +#define PRI_TP_ON ((0x1 << PRI_TP_OFFSET) | PRI_TP_USAGE)
> +#define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET) | PRI_TP_USAGE)
>  
>  
>  /* panel sequency status
> @@ -29,8 +29,8 @@
>  #define PNL_SEQ_OFFSET 6
>  #define PNL_SEQ_MASK BIT(PNL_SEQ_OFFSET)
>  #define PNL_SEQ_USAGE (PNL_SEQ_MASK << 16)
> -#define PNL_SEQ_ON (BIT(PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
> -#define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
> +#define PNL_SEQ_ON (BIT(PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
> +#define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
>  
>  /* dual digital output
>  	80000[19]
> @@ -38,8 +38,8 @@
>  #define DUAL_TFT_OFFSET 8
>  #define DUAL_TFT_MASK BIT(DUAL_TFT_OFFSET)
>  #define DUAL_TFT_USAGE (DUAL_TFT_MASK << 16)
> -#define DUAL_TFT_ON (BIT(DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
> -#define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
> +#define DUAL_TFT_ON (BIT(DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
> +#define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
>  
>  /* secondary timing & plane enable bit
>  	1:80200[8] & 80200[2] on
> @@ -48,8 +48,8 @@
>  #define SEC_TP_OFFSET 5
>  #define SEC_TP_MASK BIT(SEC_TP_OFFSET)
>  #define SEC_TP_USAGE (SEC_TP_MASK << 16)
> -#define SEC_TP_ON  ((0x1 << SEC_TP_OFFSET)|SEC_TP_USAGE)
> -#define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET)|SEC_TP_USAGE)
> +#define SEC_TP_ON  ((0x1 << SEC_TP_OFFSET) | SEC_TP_USAGE)
> +#define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET) | SEC_TP_USAGE)
>  
>  /* crt path select
>  	80200[19:18]
> @@ -57,8 +57,8 @@
>  #define CRT_2_OFFSET 2
>  #define CRT_2_MASK (3 << CRT_2_OFFSET)
>  #define CRT_2_USAGE (CRT_2_MASK << 16)
> -#define CRT_2_PRI ((0x0 << CRT_2_OFFSET)|CRT_2_USAGE)
> -#define CRT_2_SEC ((0x2 << CRT_2_OFFSET)|CRT_2_USAGE)
> +#define CRT_2_PRI ((0x0 << CRT_2_OFFSET) | CRT_2_USAGE)
> +#define CRT_2_SEC ((0x2 << CRT_2_OFFSET) | CRT_2_USAGE)
>  
>  
>  /* DAC affect both DVI and DSUB
> @@ -67,8 +67,8 @@
>  #define DAC_OFFSET 7
>  #define DAC_MASK BIT(DAC_OFFSET)
>  #define DAC_USAGE (DAC_MASK << 16)
> -#define DAC_ON ((0x0 << DAC_OFFSET)|DAC_USAGE)
> -#define DAC_OFF ((0x1 << DAC_OFFSET)|DAC_USAGE)
> +#define DAC_ON ((0x0 << DAC_OFFSET) | DAC_USAGE)
> +#define DAC_OFF ((0x1 << DAC_OFFSET) | DAC_USAGE)
>  
>  /* DPMS only affect D-SUB head
>  	0[31:30]
> @@ -76,8 +76,8 @@
>  #define DPMS_OFFSET 9
>  #define DPMS_MASK (3 << DPMS_OFFSET)
>  #define DPMS_USAGE (DPMS_MASK << 16)
> -#define DPMS_OFF ((3 << DPMS_OFFSET)|DPMS_USAGE)
> -#define DPMS_ON ((0 << DPMS_OFFSET)|DPMS_USAGE)
> +#define DPMS_OFF ((3 << DPMS_OFFSET) | DPMS_USAGE)
> +#define DPMS_ON ((0 << DPMS_OFFSET) | DPMS_USAGE)
>  
>  
>  
> @@ -86,16 +86,16 @@
>  	CRT means crt path DSUB
>  */
>  typedef enum _disp_output_t {
> -	do_LCD1_PRI = PNL_2_PRI|PRI_TP_ON|PNL_SEQ_ON|DAC_ON,
> -	do_LCD1_SEC = PNL_2_SEC|SEC_TP_ON|PNL_SEQ_ON|DAC_ON,
> -	do_LCD2_PRI = CRT_2_PRI|PRI_TP_ON|DUAL_TFT_ON,
> -	do_LCD2_SEC = CRT_2_SEC|SEC_TP_ON|DUAL_TFT_ON,
> +	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
> +	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
> +	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
> +	do_LCD2_SEC = CRT_2_SEC | SEC_TP_ON | DUAL_TFT_ON,
>  	/*
>  	do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
>  	do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
>  	*/
> -	do_CRT_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
> -	do_CRT_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
> +	do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
> +	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
>  }
>  
>  disp_output_t;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916125213.GA16144%40toblerone.
> For more options, visit https://groups.google.com/d/optout.

