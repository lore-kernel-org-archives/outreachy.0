X-GM-THRID: 6753896393761357824
X-Received: by 2002:a50:9136:: with SMTP id e51mr20683184eda.71.1572767132204;
        Sun, 03 Nov 2019 00:45:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:b788:: with SMTP id dt8ls2913274ejb.8.gmail; Sun, 03
 Nov 2019 00:45:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1evxmgwQ2i5QpQ/CJZkUXREc9yMNVgkP2MFbtvHITgkZ0zBBsEKICfFbwMS+uFa4B3fKU
X-Received: by 2002:a17:906:494e:: with SMTP id f14mr18746445ejt.42.1572767131430;
        Sun, 03 Nov 2019 00:45:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572767131; cv=none;
        d=google.com; s=arc-20160816;
        b=suSNgyQbH7ebXVEK1HIdOKIc8xABomneBRZK1p3mIpKgse/bFKQQuH3T0juLkXItlj
         luBwj39s9ZYQjuiOV62Fp+msN+fNpYdPAUTsK7gCozR94U2GJgnT/i6P88zOZylJ1ei1
         HXlS+ubrT/RG130437QJGq3m6ZwWzuvAya/9Lb4Yog59mXp38H/OgsJStJCHVZwYEPEA
         qHgQMqRt3iRq3WG31nfREwZnipIWOyJeabbtvr1FBil4RRwuaR7+H8pNMioNpMsQ206a
         rOMxWxhSbpPvTrcqMkqcRidvcWyCuErl8uKAi6PDtkr7hKUOPd8mILTYm9UATbqf1aP9
         bMPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=dyNZtobROD9qpAV78mnQMr5Y7BdrUGJpASGfnsEM1DY=;
        b=u2Z1H0I66MeQdJkmiRw7SXj2LkuQBnDK/2oN77O22nBFNuwJOL+Q1eIBjqQGqKd8hd
         vU2V3NfwbFqIRpGeAyxfM8ZJxa3B3EAsw7kWKKvJ07B/mdBg3VGM7krST3M4uEwJ4il2
         JSwqFQb9aWEK6PvQaDdwHiMsIRn/iuFQRUji+fBdIQyzE6waVtZybSpxnrpBPBdm0SVR
         Gb2bGXGHsTUPYFC01oYt/UYle58WDRMqstgljvXloBBoKS/tjBdeVeR5RPhAlRMFMEqX
         1xU+Rpr5ug3ky1BK69bHTzpAX45f8j1er1yLapH+MbMiV3sxNc59OLzd6pG0ngOYm3j8
         IKRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y21si923461ejp.1.2019.11.03.00.45.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 00:45:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,262,1569276000"; 
   d="scan'208";a="410038141"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 08:45:18 +0100
Date: Sun, 3 Nov 2019 08:45:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5 07/10] staging: vc04_services:
 Renames remote use callback
In-Reply-To: <5ea44f2d87ff127023dffb70da182e32faac39e8.1572755439.git.jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1911030843440.2744@hadrien>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com> <5ea44f2d87ff127023dffb70da182e32faac39e8.1572755439.git.jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Jamal Shareef wrote:

> Renames remote use callback function pointer to match kernel style.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> index 6f3d3b00066d..869ca218c515 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> @@ -93,7 +93,7 @@ struct vchiq_config {
>  };
>
>  typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
> -typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
> +typedef void (*vchiq_remote_callback)(void *cb_arg);
>
>  extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
>  extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
> @@ -136,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
>  	enum vchiq_service_option option, int value);
>
>  extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
> -	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
> +	vchiq_remote_callback callback, void *cb_arg);
>  extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
>
>  extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,


Are any of these definitions actually useful?  It is suspicious to change
a prototype without changing the corresponding definition, but grep
suggests that there is none (and no use either).  And likewise no
definition or use of the other two functions that we see here.

julia

> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5ea44f2d87ff127023dffb70da182e32faac39e8.1572755439.git.jamal.k.shareef%40gmail.com.
>

