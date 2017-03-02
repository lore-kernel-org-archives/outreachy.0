X-GM-THRID: 6392863906268708864
X-Received: by 10.25.157.14 with SMTP id g14mr1574336lfe.28.1488456455405;
        Thu, 02 Mar 2017 04:07:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.203 with SMTP id u194ls667752lja.20.gmail; Thu, 02 Mar
 2017 04:07:34 -0800 (PST)
X-Received: by 10.25.195.206 with SMTP id t197mr1687257lff.11.1488456454490;
        Thu, 02 Mar 2017 04:07:34 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si135192wmd.0.2017.03.02.04.07.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 04:07:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,231,1484002800"; 
   d="scan'208";a="262809156"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 13:07:12 +0100
Date: Thu, 2 Mar 2017 13:07:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: bcm2835-camera: replace
 printk(KERN_ERR) with pr_err
In-Reply-To: <873ea58099cfe40f563436342aba1ea5e0f12507.1488453518.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703021306380.3414@hadrien>
References: <cover.1488453518.git.aishpant@gmail.com> <873ea58099cfe40f563436342aba1ea5e0f12507.1488453518.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Aishwarya Pant wrote:

> Fix checkpatch warning: pr_err(...  to printk(KERN_ERR ...
> For newer drivers, the convention for printing kernel messages is to use
> pr_* family of macros
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> index 46814fd..21eaba9 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> @@ -141,7 +141,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
>
>  	if (changed) {
>  		if (bcm2835_audio_set_ctls(chip))
> -			printk(KERN_ERR "Failed to set ALSA controls..\n");
> +			pr_err("Failed to set ALSA controls..\n");

Is it possible to use dev_err?

julia

>  	}
>
>  unlock:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/873ea58099cfe40f563436342aba1ea5e0f12507.1488453518.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

