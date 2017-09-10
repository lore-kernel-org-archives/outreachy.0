X-GM-THRID: 6463987902323884032
X-Received: by 10.25.229.18 with SMTP id c18mr531877lfh.1.1505021912099;
        Sat, 09 Sep 2017 22:38:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls130848lja.28.gmail; Sat, 09 Sep 2017
 22:38:30 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA284Oab7yVUasBJKNmPcSI9q1wCAaJ79Pkn1eBoc3r9/ZgpflrErscQnPAtBsOD5fTYGks
X-Received: by 10.25.195.206 with SMTP id t197mr40147lff.40.1505021910735;
        Sat, 09 Sep 2017 22:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505021910; cv=none;
        d=google.com; s=arc-20160816;
        b=Cfq5F4UTTSyjKto8OHuPVtPvYuqmiKe3wVUIVuO6guQcbf4M+0iQ2L/q7qS53tEAri
         5h0QbmFL574SAQa0S0e040CEu+XK0orVwoR66UWRQMAA12cr0s795bqbTnLRneoPth2X
         /jTbvlftqeq6OMs641hmdD4jPvqPaL1vm59T54geTvXDK0keGAORJ5u5RJpEkM2bAL+Z
         j4Dg8/JuRjVWJwbFvVVT0rPWqtYY5jbNA/g3TwcVxYk6Tr3cqPp2Wth4yDihITpmoLAs
         x3gSRbMAGaV727TGqLRWaJbOj/ef09qGVUmSt1C9jspFRH4KtyoE1iKzfFWDPMPvqUSJ
         tprg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=KpeDeimygscUatRVDNeKC9P9+I+22ceHBFpPQNI6dnM=;
        b=NTCesD8Z48y/Wi/ceVIuRDU7Jrkew0HpPYUsirge78uz6+gUgaFKdVJdvQPLl+OjL5
         PMKAMNDmK2+4VSi6mdsFlk6ks+PtRd5n6twXLFz5g4JToj2BXDgP9fdzY8Cyyy3yRiLH
         u1AoJevy9pAF6fm+LaMei1Ts4dOo6ZVWvgl12Yv1019yGCSS18iQjbhl6JjARy9m55cm
         dFpdaaGrVtofBuPFNuixeC23WKOdlkSfo+xua+zvvNBn5vKODZWrCtpjTGRAL8oivBcm
         8+7U71UGiTYly3RPeDwIr3DD8wtyGNu0OpfG9hPeWSFBV+DRAdeEWtiXPeNKbHj2KmwH
         VApQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i90si356126wmh.5.2017.09.09.22.38.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 22:38:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,371,1500933600"; 
   d="scan'208";a="290331719"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 07:38:30 +0200
Date: Sun, 10 Sep 2017 07:38:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vc04_services: bcm2835-camera:
 Add blank line after declarations
In-Reply-To: <20170910033412.GA26296@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709100733030.2063@hadrien>
References: <20170910033412.GA26296@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Meghana Madhyastha wrote:

> This patch adds a blank line after declarations. This enhances readability.
>
> Problem found using checkpatch.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 4360db6..7a7b00e 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -1982,6 +1982,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  	struct vchiq_mmal_instance *instance;
>  	static VCHI_CONNECTION_T *vchi_connection;
>  	static VCHI_INSTANCE_T vchi_instance;
> +
>  	SERVICE_CREATION_T params = {
>  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
>  		.service_id		= VC_MMAL_SERVER_NAME,

This looks like a declaration too.  I guess the typedef makes it so that
checkpatch doesn't recognize it as such.  Perhaps you can remove the
typedefs instead.  It could be good to start with just one, because
removing a typedef requires changes in many files, and it is better to do
one thing correctly than to do many things and risk introducing a mistake.

julia


> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170910033412.GA26296%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

