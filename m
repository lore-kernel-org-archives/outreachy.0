X-GM-THRID: 6468311343549120512
X-Received: by 10.223.172.196 with SMTP id o62mr497461wrc.10.1506597124224;
        Thu, 28 Sep 2017 04:12:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls17177wme.3.canary-gmail; Thu, 28
 Sep 2017 04:12:03 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBcB1ZwX1/9uUMofOjjBjX1Tw4Bfux4GLyrkPH3BwIICdWUQn5mXaURwUzMLdf01gMnUZX+
X-Received: by 10.223.152.207 with SMTP id w73mr500253wrb.13.1506597123129;
        Thu, 28 Sep 2017 04:12:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506597123; cv=none;
        d=google.com; s=arc-20160816;
        b=Wr6n0oIxzxYxfseD90lteHC0DIq6aWj6q7Celem2+e3A59RmWcO1zRiCNEGf/uZe+U
         ONVE02+w608L3oW8FA7xrdpFBIRHd9GRSyhuZmpK9Cm0hdRPkcuorEI4pU8TRR9NBI/a
         JYwoRD/IybmvrB+WJ0Ze8bY6Wj8xwGGrpYsgc45GOx9SsuI+Ol8Qw+HAG/qUvOSpsL6F
         88xqf9jToAQxZ2Y1bNkGIqey9ZFK9qVvxkBykwcED5//qw8Tszm/pPaQwBXzxBkKhexV
         Wd0A78D7Sn8Hzx5KvDUam0avCD+76jEfkjZwmOpHhHdPvodNlEYzk1uN1jxE147HBBfB
         vQTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/9Lmy4BSt0gbn9gmfyVT/NSn/3UwXo6q6ZlCeoI7PF4=;
        b=ahncmJhdNDKYYfGdJOyRsWXcvyNxwMnNLGiXEkpoxePi9yvZNUJdLhLGxQeaITH6JH
         qxBLUxG1udmkQ8WHvy3d7lFrGxZxO5kaQZvriv2FCV+9USLR3EHXTPSvTnjchB1Z7KAQ
         55erJeKO0E60xflj+U6KrpqDS1IUttZdZ4vaOqYsL6VfuX4SdYyp4uNshCqpnc9AL6J0
         c8NNFEdsLSLTXWZ8lqq1esIrawLM+HPwE91UtoSHyIggGzfch3Wc3kFTsSxQR3Jpm2g+
         EfkICz8+TdBdl/bd5zumGC2/idXGY5pgNNqslqZvy+HNnIUCJu6wwXVhoRgRaowUhmZE
         yr9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si219969wmj.0.2017.09.28.04.12.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 04:12:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,449,1500933600"; 
   d="scan'208";a="293114193"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Sep 2017 13:12:02 +0200
Date: Thu, 28 Sep 2017 13:12:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
    Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Remove typedef
 struct
In-Reply-To: <20170928110230.GA11755@ubuntu>
Message-ID: <alpine.DEB.2.20.1709281308320.2865@hadrien>
References: <20170928110230.GA11755@ubuntu>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Sep 2017, Mihaela Muraru wrote:

> This patch removes typedef from struct and renames it from "typdedef struc vchiq_2835_state_struct" to "struct vchiq_2835_state" as per kernel coding standards.

The log message should fit within at most 70-some characters per line.

Otherwise, this code seems to have a lot of cleanup potential.  Besides
all the typedefs, you can also try to get rid of the pervasive casts and
to use more kernel-standard return values.  It looks like the inited field
could have type bool and true/false values too.  These would all be other
patches of course.

julia

>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index 12b0e0d..ee00f51 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -59,10 +59,10 @@
>  #define BELL0	0x00
>  #define BELL2	0x08
>
> -typedef struct vchiq_2835_state_struct {
> +struct vchiq_2835_state {
>  	int inited;
>  	VCHIQ_ARM_STATE_T arm_state;
> -} VCHIQ_2835_ARM_STATE_T;
> +};
>
>  struct vchiq_pagelist_info {
>  	PAGELIST_T *pagelist;
> @@ -206,12 +206,12 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
>  {
>  	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
>
> -	state->platform_state = kzalloc(sizeof(VCHIQ_2835_ARM_STATE_T), GFP_KERNEL);
> -	((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 1;
> -	status = vchiq_arm_init_state(state, &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state);
> +	state->platform_state = kzalloc(sizeof(struct vchiq_2835_state), GFP_KERNEL);
> +	((struct vchiq_2835_state *)state->platform_state)->inited = 1;
> +	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
>  	if (status != VCHIQ_SUCCESS)
>  	{
> -		((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 0;
> +		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
>  	}
>  	return status;
>  }
> @@ -219,11 +219,11 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
>  VCHIQ_ARM_STATE_T*
>  vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
>  {
> -	if (!((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited)
> +	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
>  	{
>  		BUG();
>  	}
> -	return &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state;
> +	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
>  }
>
>  void
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928110230.GA11755%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

