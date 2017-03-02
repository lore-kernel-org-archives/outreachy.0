X-GM-THRID: 6392863906268708864
X-Received: by 10.25.223.67 with SMTP id q3mr1588489lfj.1.1488456570868;
        Thu, 02 Mar 2017 04:09:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls690571ljp.36.gmail; Thu, 02 Mar 2017
 04:09:30 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr1587130lfg.13.1488456570403;
        Thu, 02 Mar 2017 04:09:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si1697660wmg.3.2017.03.02.04.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 04:09:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,231,1484002800"; 
   d="scan'208";a="262809555"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 13:09:29 +0100
Date: Thu, 2 Mar 2017 13:09:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: bcm2835-camera: Logical
 continuations should be on the previous line
In-Reply-To: <3ef2134adc43bc842339c2e81db48c97a31e43fd.1488453518.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703021307330.3414@hadrien>
References: <cover.1488453518.git.aishpant@gmail.com> <3ef2134adc43bc842339c2e81db48c97a31e43fd.1488453518.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Aishwarya Pant wrote:

> Keep logical continuations on the same line to improve code readability
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> index 99e9ca3..17d34c0 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> @@ -122,8 +122,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
>  			changed = 1; /* should return 0 to signify no change but the mixer takes this as the opposite sign (no idea why) */
>  			goto unlock;
>  		}
> -		if (changed
> -			|| (ucontrol->value.integer.value[0] != chip2alsa(chip->volume))) {
> +		if (changed || (ucontrol->value.integer.value[0] != chip2alsa(chip->volume))) {

A better solution would be to put the || on the same line as changed, line
ucontrol up with the right side of the ( on the if, and drop the unneeded
()s around the != test.  Then the code would come closer to fitting withn
80 chars.

julia

>
>  			chip->volume = alsa2chip(ucontrol->value.integer.value[0]);
>  			changed = 1;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3ef2134adc43bc842339c2e81db48c97a31e43fd.1488453518.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

