X-GM-THRID: 6394764238679703552
X-Received: by 10.25.157.14 with SMTP id g14mr156445lfe.28.1488902060554;
        Tue, 07 Mar 2017 07:54:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls94896ljp.36.gmail; Tue, 07 Mar 2017
 07:54:19 -0800 (PST)
X-Received: by 10.25.201.198 with SMTP id z189mr154367lff.15.1488902059956;
        Tue, 07 Mar 2017 07:54:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si371489wmh.1.2017.03.07.07.54.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 07:54:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,258,1484002800"; 
   d="scan'208";a="263549015"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 16:54:19 +0100
Date: Tue, 7 Mar 2017 16:54:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, 
    Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fix alignment
 with parenthesis
In-Reply-To: <20170307143056.3252-1-sreyamittal5@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071653360.3150@hadrien>
References: <20170307143056.3252-1-sreyamittal5@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Sreya Mittal wrote:

> Fix the checkpatch issue:
> Alignment should match open parenthesis
>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/bcm2835-audio/bcm2835-ctl.c | 2 +-

I don't see this file in staging-testing anymore.

julia


>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/bcm2835-audio/bcm2835-ctl.c
> index a4ffa1b..2d8bc08 100644
> --- a/drivers/staging/bcm2835-audio/bcm2835-ctl.c
> +++ b/drivers/staging/bcm2835-audio/bcm2835-ctl.c
> @@ -107,7 +107,7 @@ static int snd_bcm2835_ctl_get(struct snd_kcontrol *kcontrol,
>  }
>
>  static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
> -	struct snd_ctl_elem_value *ucontrol)
> +				struct snd_ctl_elem_value *ucontrol)
>  {
>  	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
>  	int changed = 0;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307143056.3252-1-sreyamittal5%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

