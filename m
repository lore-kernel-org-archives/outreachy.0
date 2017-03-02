X-GM-THRID: 6392947471116402688
X-Received: by 10.46.22.16 with SMTP id w16mr2224043ljd.8.1488492967486;
        Thu, 02 Mar 2017 14:16:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.92 with SMTP id 28ls817797ljw.54.gmail; Thu, 02 Mar 2017
 14:16:07 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr1993250lfg.13.1488492967201;
        Thu, 02 Mar 2017 14:16:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h198si36771wmg.1.2017.03.02.14.16.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 14:16:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,233,1484002800"; 
   d="scan'208";a="262894442"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 23:16:06 +0100
Date: Thu, 2 Mar 2017 23:16:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 5/5] staging: bcm2835-audio: replace
 printk(KERN_ERR...) with dev_err(...)
In-Reply-To: <9c5b6857fe9d2fd5076d099cdc950468615175c5.1488480443.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703022315540.2175@hadrien>
References: <cover.1488480443.git.aishpant@gmail.com> <9c5b6857fe9d2fd5076d099cdc950468615175c5.1488480443.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 3 Mar 2017, Aishwarya Pant wrote:

> Use dev_err(... in place of printk(KERN_ERR ...
> Problem found by checkpatch
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> ---
> Changes in v3:
> 	-Merge two if conditions
> 	-Edit subject and commit message
> Changes in v2:
> 	-Prefer dev_err to pr_err where device information is available
>
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> index 46814fd..659c3d1 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> @@ -139,10 +139,8 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
>  		}
>  	}
>
> -	if (changed) {
> -		if (bcm2835_audio_set_ctls(chip))
> -			printk(KERN_ERR "Failed to set ALSA controls..\n");
> -	}
> +	if (changed && bcm2835_audio_set_ctls(chip))
> +		dev_err(chip->card->dev, "Failed to set ALSA controls..\n");
>
>  unlock:
>  	mutex_unlock(&chip->audio_mutex);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9c5b6857fe9d2fd5076d099cdc950468615175c5.1488480443.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

