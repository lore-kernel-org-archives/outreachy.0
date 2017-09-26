X-GM-THRID: 6470000031137005568
X-Received: by 10.25.207.83 with SMTP id f80mr765895lfg.0.1506414856767;
        Tue, 26 Sep 2017 01:34:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.27 with SMTP id k27ls3238936wre.0.gmail; Tue, 26 Sep
 2017 01:34:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBID4rSgjBukQjeugFcFEEfoEqIsopxKoGsp4IeibUFwgfHhHWYnZ84oy9kB300xOVLA0B5
X-Received: by 10.28.35.142 with SMTP id j136mr290690wmj.1.1506414856223;
        Tue, 26 Sep 2017 01:34:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414856; cv=none;
        d=google.com; s=arc-20160816;
        b=wieY0BbUNj8+qNJUV4bQ5eCPhuEBkiSviGGrR0uaSvX4tKlU/PEmBcZYKswzKAMIQ7
         PF1bPM+Ontz+KYSN4CdhuvZ6xT7NvpZCUsbhMyN8HpHnTTtiP3Nfia7z1YlttRRumlsE
         xe3Fq6bxEFc4zp29Be8zCogKBZMcfzODAGO9A8hG/ibhuRQOs3coixkQPzgX9TcwOWbf
         TgnYmEHwq6awnTPxEsrl+qb7w9Ze8hMcqepmVTcA2WQwYnHRKvFY7F86gJqb+fjB7coj
         18mlPngT+K4kYqwJpQDpuQ3JylAAfluoSP4QC37oKevIgxz1bQzdU5hzyLpLStmwey/+
         oF4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=7HL06EnbpsznAmpzU5qyOb/61TeYgamar/4W00bj0Rw=;
        b=WdOVkQakZmC81m3hUh3BBimu2LmyGPMMYEOvULvxPeH9JsqJ7mql4/kGLB3Xm5ldPn
         SPN39BKEam8BUGFmMeAWQo+CJ3I9T66qNL0fDsxtLVrtjyXFSnHXYEwG3dHFq1n3DfR7
         XYNs+cbmL+B5+H7ETFa/R/g9RXYeiq+IGfuU2vNaJ2GSY5A4zIeUShSkTarJmrSxyBYb
         y9dQm817POfcOYfWpPYQrjYzJ7gvMVpyXklnubg2bwdwPVgKmFuP93Iwg3p2f1ruZ46y
         feISIyWI947Y7WKPJZr/ui+Nf3+ZNQjVYlkfQiuP3Zu0iXgjDQCX0ZfpAEP8iEw6E/C5
         oLcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q145si884063wme.4.2017.09.26.01.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:34:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,440,1500933600"; 
   d="scan'208";a="292729509"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 10:34:15 +0200
Date: Tue, 26 Sep 2017 10:34:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: eric@anholt.net, stefan.wahren@i2se.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: vc04_services: fix
 typos
In-Reply-To: <14b2c42fe27d209a1833d6fb7802c9a97142fa7e.1506413998.git.keerthigd4990@gmail.com>
Message-ID: <alpine.DEB.2.20.1709261033591.2925@hadrien>
References: <cover.1506413998.git.keerthigd4990@gmail.com> <14b2c42fe27d209a1833d6fb7802c9a97142fa7e.1506413998.git.keerthigd4990@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Keerthi Reddy wrote:

> some words are misspelled. Fix typos.

Start sentences with a capital letter.

julia

>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 2 +-
>  drivers/staging/vc04_services/interface/vchi/vchi.h     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> index 52cdf4d..1144d9d 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> @@ -70,7 +70,7 @@ enum mmal_msg_type {
>
>  /* port action request messages differ depending on the action type */
>  enum mmal_msg_port_action_type {
> -	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,      /* Unkown action */
> +	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,      /* Unknown action */
>  	MMAL_MSG_PORT_ACTION_TYPE_ENABLE,           /* Enable a port */
>  	MMAL_MSG_PORT_ACTION_TYPE_DISABLE,          /* Disable a port */
>  	MMAL_MSG_PORT_ACTION_TYPE_FLUSH,            /* Flush a port */
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> index ee92189..66a3a06 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> @@ -187,7 +187,7 @@ extern int32_t vchi_service_create( VCHI_INSTANCE_T instance_handle,
>                                      SERVICE_CREATION_T *setup,
>                                      VCHI_SERVICE_HANDLE_T *handle );
>
> -// Routine to destory a service
> +// Routine to destroy a service
>  extern int32_t vchi_service_destroy( const VCHI_SERVICE_HANDLE_T handle );
>
>  // Routine to open a named service
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/14b2c42fe27d209a1833d6fb7802c9a97142fa7e.1506413998.git.keerthigd4990%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

