X-GM-THRID: 6395446243166781440
X-Received: by 10.46.5.136 with SMTP id 130mr2093301ljf.6.1489065141087;
        Thu, 09 Mar 2017 05:12:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.72 with SMTP id a69ls714398ljb.42.gmail; Thu, 09 Mar
 2017 05:12:20 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr2323448ljb.24.1489065140478;
        Thu, 09 Mar 2017 05:12:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p144si655087wme.2.2017.03.09.05.12.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 05:12:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,268,1486422000"; 
   d="scan'208";a="263851469"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 14:12:20 +0100
Date: Thu, 9 Mar 2017 14:12:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 1/7] staging: bcm2835-audio: Replace
 kmalloc with kzalloc
In-Reply-To: <43aa5452c7e19cdf5bb0c1046c4c11a82569083a.1489055580.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703091411450.3186@hadrien>
References: <cover.1489055580.git.aishpant@gmail.com> <43aa5452c7e19cdf5bb0c1046c4c11a82569083a.1489055580.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Aishwarya Pant wrote:

> Replace kmalloc and memset with kzalloc.
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index c54bef3..005e287 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -290,11 +290,10 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
>  		return NULL;
>  	}
>  	/* Allocate memory for this instance */
> -	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
> +	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
>  	if (!instance)
>  		return NULL;
>
> -	memset(instance, 0, sizeof(*instance));
>  	instance->num_connections = num_connections;
>
>  	/* Create a lock for exclusive, serialized VCHI connection access */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/43aa5452c7e19cdf5bb0c1046c4c11a82569083a.1489055580.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

