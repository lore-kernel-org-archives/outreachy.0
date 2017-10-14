X-GM-THRID: 6476685007232434176
X-Received: by 10.28.29.8 with SMTP id d8mr384922wmd.27.1507971244299;
        Sat, 14 Oct 2017 01:54:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.172.47 with SMTP id v44ls2067039wrc.11.gmail; Sat, 14 Oct
 2017 01:54:03 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RDznYvv99FXj/LwVzSkdWKdUQj8w6KbcKzzXGp/WuWuVozmHvO+MrRx5UZ2j04pquAnGLV
X-Received: by 10.28.0.7 with SMTP id 7mr407410wma.26.1507971243867;
        Sat, 14 Oct 2017 01:54:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507971243; cv=none;
        d=google.com; s=arc-20160816;
        b=BUh83rBubNsqI/soC999s1e0H41L6vkfz99eXQqJi2fXAtnsJyu8J8Dr6TQLafZfGE
         Js1KaLrIGnFnKfAJhytrPmPCAVa7nH7iLjXefdSI+F8rROG4lcoq61Zqdptf3IIdwkn5
         b7vekmxmxU/XbP2zOz3YJot5gYj2BcSahsFfuHwQ0fgdNFgCRSIJpxW/1EK00Bunoiqw
         ZIgpP2vd4nXt0KmGUn4CC5ZG9s1vBK7zhWDQ5ccC5PUVkN8NOtnb2NHR+jDxWACO10H/
         BvTPUdLn7Mrw2PYQAC7Z9MxRyLbT7Um9p5Imp4d8LhPcV8oGdvaiDE/UU5447vsFpohx
         R/NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=N7T1F1ppyjZe5AHHlm8PZhNZjyXHPugzWzjxhCiEI4I=;
        b=vD+gCUNr1b0qcWhaz4IL7CIQfzGWzydaeVi5kI6osI4YSi8Hf5vnUzlR9FEwUreHjS
         S0DGwzTZK8Vcj66HO28P51sDaQFSzs/Kbny35AZqpfAgNIyvHzaZusO2eZmDcWVkJIZE
         hou/nsRLqYTo6PlNsx3Ur6yBOCftv3tb2Nk6/shKKTmy4vTxTlc1AkjnNKF95OKX9DRZ
         ChaqZPGm7heFmOYP3r8wNABGPYEtgr/GcSjcr64TmKkCFNdXcb6V5JIfjoNOTH7WlIzu
         WmWjleFl+ecQAbQvVhUNJFys5PnztnB2H3gAMaSvhYV4Kw02jxIlMhWkg5TV9yX949eE
         xjsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m62si199948wmi.1.2017.10.14.01.54.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 01:54:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,375,1503352800"; 
   d="scan'208";a="296181699"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2017 10:53:58 +0200
Date: Sat, 14 Oct 2017 10:53:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
    Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Remove
 unnecessary braces
In-Reply-To: <20171014084535.GA3681@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710141049350.19037@hadrien>
References: <20171014084535.GA3681@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Oct 2017, Mihaela Muraru wrote:

> Remove unnecessary braces for single statements.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index a96bae0..1c67e9a 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -209,9 +209,7 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
>  	((struct vchiq_2835_state *)state->platform_state)->inited = 1;

These casts are not very nice, and having them over and over is worse.
Maybe you could introduce a local variable with the right type.

julia

>  	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
>  	if (status != VCHIQ_SUCCESS)
> -	{
>  		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
> -	}
>  	return status;
>  }
>
> @@ -219,9 +217,7 @@ VCHIQ_ARM_STATE_T*
>  vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
>  {
>  	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
> -	{
>  		BUG();
> -	}
>  	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
>  }
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014084535.GA3681%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

