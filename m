X-GM-THRID: 6527317257974972416
X-Received: by 10.46.22.25 with SMTP id w25mr1021194ljd.8.1519762972893;
        Tue, 27 Feb 2018 12:22:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.17.66 with SMTP id f63ls255558lje.1.gmail; Tue, 27 Feb 2018
 12:22:51 -0800 (PST)
X-Google-Smtp-Source: AG47ELsoeb/0KkTNLWBCFJZVz5tNmDcY+T2I7XVl5quhGK2sxfNgTz/XsDytfO8hA8ZXfiKYtcIw
X-Received: by 10.46.23.6 with SMTP id l6mr251918lje.11.1519762971414;
        Tue, 27 Feb 2018 12:22:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519762971; cv=none;
        d=google.com; s=arc-20160816;
        b=R5YvGvrbpn72CR+BVWiWz5s04BAsLX0O+JeX7KmjZOUyBDJCLHfRgexqM/TVieDRRq
         ESbWqAxhDo2t9XlFgM+3gL2gU4ZyznWcNriRZb56UwuwYtp4Q3EUNE0SvIMjDpVzrpJ1
         BvDCOkTLggCQoTpkLODU0EHToqeDNtldyz0l6BCHx8Y6rYJk2zD96HnTtCTBftQKXtrV
         n/VGw4Ibdi5rltBvr/APBXBqnihfB0OfoAvfRqFu06vEEKcQz5znsCLtyVJ8Y9oU0LVZ
         RfXAZDYmCuZsZfpVFLdTpcxOzkWsQwUktTMHxXYPzSSV8iCzl6D77GckbvXrM5ax9pjw
         xELA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=eQd+Wx0cWYDKeekkV9E++ZK2EDspQD9iEDTSzzklcg0=;
        b=oxJuSb/RoIrdMxhemuOmDclcuTZkyE+y2lxl7jRTgXNbR0h53vyJQHG/vR9XszGsrW
         Swt72ph6nvXqAT5gWUSK+xc+S0HhjsbfdnQw0lrr/rmtFAYzsfbg1QfU3j+8rVWbG38L
         NOH98bfO6k4lNjTGWJY9H+vN0Pd8GCdRlFuWtYHiNnIGqwBLxtMHb8u0Fh5ZzmPM7oPn
         anAtmvnyM1r5Nk3BB3iGki3l9guuRIowGN/eXSdI0e70rIdUehq6EYQAKaXfaI7IQ7nx
         v8+FtNrdUO8NNQoEu38+07hdjDRnGr6C8IhumLl64dnmzMdzX/J87lxpm73OAyeSS8Gb
         pVJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w7si559704ljw.4.2018.02.27.12.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 12:22:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,402,1515452400"; 
   d="scan'208";a="315551729"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2018 21:22:50 +0100
Date: Tue, 27 Feb 2018 21:22:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org, 
    f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:vc04_services:bcm2835-camera:mmal-vchiq.c
 Blank line added
In-Reply-To: <1519759788-26097-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1802272121410.2575@hadrien>
References: <1519759788-26097-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 28 Feb 2018, Nishka Dasgupta wrote:

> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>
> ---
> Blank line added after declaration. Issue found with checkpatch.

This needs to be cleaned up in the same way as the previous ones.

>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index e3460b7..c90754f 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -1979,6 +1979,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  	static VCHI_CONNECTION_T *vchi_connection;
>
>  	static VCHI_INSTANCE_T vchi_instance;
> +
>  	SERVICE_CREATION_T params = {
>  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
>  		.service_id		= VC_MMAL_SERVER_NAME,

This looks like a false positive, as the last three lines above are
declaring another variable.  The blank line comes at the end of the
variable declaration list.

julia

> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519759788-26097-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

