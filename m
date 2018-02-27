X-GM-THRID: 6527317257974972416
X-Received: by 10.223.208.204 with SMTP id z12mr1456293wrh.31.1519762876603;
        Tue, 27 Feb 2018 12:21:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.1.73 with SMTP id 70ls504587wmb.12.canary-gmail; Tue, 27
 Feb 2018 12:21:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELuSOgu7+koHQeVrYoORrnM1explUvRss40vwZsFtmCE6gzhR2AEvPvEGQobrFL2gPaOldfQ
X-Received: by 10.28.150.137 with SMTP id y131mr1498430wmd.6.1519762874929;
        Tue, 27 Feb 2018 12:21:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519762874; cv=none;
        d=google.com; s=arc-20160816;
        b=nZl7AdFMK3GYdTdSX5vAFCogd2Fn9Jycg7Nm2AcZsk4xAAbSnEox7RcPq+3frs65YY
         Z/jzzNoMmKvCqcCMliNDgwsIUPgc00YkSxbptBUjeHsiWAtyesmF6WxJIho4kaY7D/Hd
         4GHELbjN6mFUEvjxP4tWxqL2me+zyQBOkyZsj+xrcitrAmN2DjTiG/RNiJE9xFKbMfdJ
         oT8vjrJo80cBHqOH9+cWZeEDXFVnOHoA4Ae9SWS/++LRa9zquFPrVV5YXqC9xxVMIPbM
         Er9tf0FhD85tiXazrNKV/ANEItRCRlp+oObddG+xFW+c33Keyx2NkrvTbGm5H/Ck8CCm
         Y1Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=LOnZNPcEzkEY5/7Qi7lD8ZVF14NJVJvVbQercQbBgqg=;
        b=bW7M5Rpu7XUOJFQY/UXtFgXBm2Rb/v+Zf48dcbPBhuPiGeheVaSCKYWnv//8y1FRgG
         khifXJtsNghOhYnB2LM4NStTu3rkpCKD6mrJnYjfwMnit4rWLtRvXCPl5zn04h9njfec
         PVsuKVIOIhhAT8D6kvBJ11Gc7edb4nMoBZV6iK5v+VEMUmD+YoBYlkC53xoUtHHdIgbS
         AJjdPm/9H4LztUBT8R/QFwrUYryphVFA7EVnkzjI6AwacpEzBYed4XrAKdXeJzH1Qec2
         UdDHnDMo77BIFnTcPeqvyDopzSbdyYamaiIt84jcqPGe6Und6T9ClWlrVcdntNKwaqUD
         ozSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l1si23108wmc.0.2018.02.27.12.21.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 12:21:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,402,1515452400"; 
   d="scan'208";a="256312704"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2018 21:21:14 +0100
Date: Tue, 27 Feb 2018 21:21:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org, 
    f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:vc04_services:bcm2835-camera:mmal-vchiq.c
 Blank line added
In-Reply-To: <1519759450-25582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1802272119350.2575@hadrien>
References: <1519759450-25582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

This subject line needs to be adjusted too, both for the description of
where the change occurs and the description, that should be in the
imperative.

On Wed, 28 Feb 2018, Nishka Dasgupta wrote:

> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Blank line added after declaration. Issue found with checkpatch.

This description needs to come before the Signed-off-by, not below the
---.  What is below the --- will be discarded when the patch is applied.

It may be helpful to look at some patches made by others at lkml.org

julia

>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index a91ef6e..e3460b7 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -1977,6 +1977,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  	int status;
>  	struct vchiq_mmal_instance *instance;
>  	static VCHI_CONNECTION_T *vchi_connection;
> +
>  	static VCHI_INSTANCE_T vchi_instance;
>  	SERVICE_CREATION_T params = {
>  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519759450-25582-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

