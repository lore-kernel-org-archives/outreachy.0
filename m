X-GM-THRID: 6753896393761357824
X-Received: by 2002:a2e:9149:: with SMTP id q9mr14725901ljg.49.1572765246902;
        Sun, 03 Nov 2019 00:14:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8585:: with SMTP id b5ls1455882lji.13.gmail; Sun, 03 Nov
 2019 00:14:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYAWhYCgNupFAlGhrp9S8pgPOCsKTngaG3mJNhJ5aMu+9SxyoncoGlxWdl1x3/wNudRbqP
X-Received: by 2002:a2e:478a:: with SMTP id u132mr2210347lja.181.1572765245813;
        Sun, 03 Nov 2019 00:14:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572765245; cv=none;
        d=google.com; s=arc-20160816;
        b=YCbumGBlmVxUBeAzwYIAD3C+WkvsfnufuFjk9cWgSGEL+LjtgtL4kUymnr5YjkKzqk
         gC+OpARZSuxIrdKXHDgLH/sKst5EqjLNDDht+VkbEB4Sva09wAwvwd22pLoGHvAcm/HO
         umr2m5u8WKlAQp10vQy229JUoVA5s2gKVX8b4R0LDxd9Hoz+mqmbTq+nYvymaGvjevZg
         Z7GFLUnglSOEVHCKMhZPhBzj3mCx/CuFZc7EnTMWnWpACGbUK/Bg7tXIcqevAcMPVSFC
         NRSkw4c3JYW5d2V8nqMkbCuru8igw8kIOv4qq4ub3dHj1ebQBK0KmVysViuTyNLt2P+4
         elpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=dc/jhtppzeCMuHZC80n+1B4l2kiM0XpKPBtQCaM8GRA=;
        b=kc42dTQIRhsHszu/kKFLr3Yn9Tn2JrnhrMKj1YYiuugSo4Gd3MV2UQu4pLeDtabvb5
         /AmBMo4ffd3x61wY1c5+i1/bA9mFAS76NpzBBtRfLIC1um9t4oy87rE2fwpsNPcLN+iJ
         bnGoRa+p4cw67aKSAuJVgcvdAR6TleVkPXcEpmwxvYpMs2iPu3Q0zyDSR4f/Cv/fRhCI
         S+r/P0Z27qwX8gPYS8tf3WZdj+TD0CKEcWnwDP8yU8KZds4VSOEYw3x92+tyuEUF6Sii
         PR7ZMhynvSGYxEtByQ1Gc2vF774zHHG33esSrJxCCQgTOfRK+vu6+LSEM8oDK5AoOWGo
         OUOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z18si242309lfh.1.2019.11.03.00.14.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 00:14:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,262,1569276000"; 
   d="scan'208";a="410036209"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 08:14:04 +0100
Date: Sun, 3 Nov 2019 08:14:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5 10/10] staging: vc04_services:
 Removes platform struct typedef
In-Reply-To: <a78981f351beff822a8fe0aaecfb9132314636a5.1572755439.git.jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1911030808320.2744@hadrien>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com> <a78981f351beff822a8fe0aaecfb9132314636a5.1572755439.git.jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Jamal Shareef wrote:

> Removes opaque platform struct typedef. Issue found by checkpatch.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h    | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> index 5bc5c816bd1c..e1d97ddd88b1 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> @@ -237,7 +237,7 @@ struct remote_event {
>  	u32 __unused;
>  };
>
> -typedef struct opaque_platform_state_t *VCHIQ_PLATFORM_STATE_T;
> +struct opaque_platform_state;

Interesting.  I didn't realize that C was able to declare the name of a
type in a typedef.  I would have expected there there would have to be a
definition of opaque_platform_state_t somewhere, at least as struct
opaque_platform_state_t, but it seems that that is not necessary.

julia

>
>  struct vchiq_slot {
>  	char data[VCHIQ_SLOT_SIZE];
> @@ -469,7 +469,7 @@ struct vchiq_state {
>  	struct vchiq_service_quota service_quotas[VCHIQ_MAX_SERVICES];
>  	struct vchiq_slot_info slot_info[VCHIQ_MAX_SLOTS];
>
> -	VCHIQ_PLATFORM_STATE_T platform_state;
> +	struct opaque_platform_state *platform_state;
>  };
>
>  struct bulk_waiter {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a78981f351beff822a8fe0aaecfb9132314636a5.1572755439.git.jamal.k.shareef%40gmail.com.
>

