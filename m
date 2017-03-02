X-GM-THRID: 6392947471116402688
X-Received: by 10.46.87.27 with SMTP id l27mr2108562ljb.28.1488474900439;
        Thu, 02 Mar 2017 09:15:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls426815lji.30.gmail; Thu, 02 Mar
 2017 09:14:58 -0800 (PST)
X-Received: by 10.25.204.21 with SMTP id c21mr1826312lfg.19.1488474898943;
        Thu, 02 Mar 2017 09:14:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si836274wmn.2.2017.03.02.09.14.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:14:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,232,1484002800"; 
   d="scan'208";a="215355110"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 18:14:58 +0100
Date: Thu, 2 Mar 2017 18:14:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging: bcm2835-camera:
 replace printk(KERN_ERR) with pr_err
In-Reply-To: <2bc758017cfeb61511404784716e44f3fe689101.1488473946.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703021809120.3414@hadrien>
References: <cover.1488473946.git.aishpant@gmail.com> <2bc758017cfeb61511404784716e44f3fe689101.1488473946.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 2 Mar 2017, Aishwarya Pant wrote:

> Fix checkpatch warning: pr_err(...  to printk(KERN_ERR ...
> For newer drivers, the convention for printing kernel messages is to use
> dev_* (if device information is available) or pr_* family of macros

This could be more concise as "Use dev_err(... rather than printk(KERN_ERR
... Problem found by checkpatch.".

The subject line is no longer correct.

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
> Changes in v2:
> 	-Prefer dev_err to pr_err where device information is available
>
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> index 46814fd..8cf7a02 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> @@ -141,7 +141,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
>
>  	if (changed) {
>  		if (bcm2835_audio_set_ctls(chip))
> -			printk(KERN_ERR "Failed to set ALSA controls..\n");
> +			dev_err(chip->card->dev, "Failed to set ALSA controls..\n");
>  	}

If you merge the conditional tests using &&, then you can get rid of the
braces and the whole dev_err call will fit within 80 characters.

julia

>  unlock:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2bc758017cfeb61511404784716e44f3fe689101.1488473946.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

