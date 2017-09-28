X-GM-THRID: 6470878632393834496
X-Received: by 10.28.142.201 with SMTP id q192mr269398wmd.23.1506619608436;
        Thu, 28 Sep 2017 10:26:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.83 with SMTP id 80ls216602wmk.1.canary-gmail; Thu, 28
 Sep 2017 10:26:47 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBGQkyyDJgSv7Sa+1ww4Zk87h9YNWna6NXR6KepW/zqJSvfgNHbYhZPKjcwUYLaipt0XSqk
X-Received: by 10.223.152.12 with SMTP id v12mr616075wrb.12.1506619607465;
        Thu, 28 Sep 2017 10:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506619607; cv=none;
        d=google.com; s=arc-20160816;
        b=MCx7CjNAN0F9LMrOGKRFPrJ8UinwdI5/8gWGn0uhMJmFiwUaduGn9QlPoApR5nMglt
         qqlBxmgY/g18mchpex25Rkr+10m3gq5Iv8BpiY3bCgcBkGu5vYeb6MPdh8iYrBI9pWbV
         7u4PKN7TJcVdeP4LYbDu9v07mbfjybamPxymMoQDapXsMmsLaRslHwg1qZG0+/6P6esN
         osoWGMKZAZa4lyptz5rBUsX4ZQQh3FRifDDD60W+ZaDhex+9EnAWPjPRwst9bexnyUw4
         T3dCwrB6NrGDalNOymDRF84a/AtsgsXO1uTT8r8ULx9NH8D99a9r6Itfl9z07+w9jsAo
         7f0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=wajuizJzqBv++dfRtY4+3P/2HiNEYL7+2HiaRCsZFTM=;
        b=n+tDJbXE2qR3PExcwoHPHD91SHcyLV8hs7FNKyjSSeO/hawMwBtukVis0BmOWpMdRI
         0IHYgGjZLMznZmlDN+4fNhF4IogOk3hSVcNZCMTJcD9w6UVjgWuZP9Q+z2B6Ndw3+XHW
         YsJJIQYDJ2HZTiYeUtFnqTDrkpVJY/clV04njvJ5s0LQi34PUbGsD6BYn+W+YPnsmeQF
         txytBXW1zr4BwxUant/mzRMQgEcBt7Gvl7nDYHnKopqK5qleGcGKHGJODHix56q2G3jX
         j1DUtX7EqHgPd/Tu6/TBQSkZjggeyT/ha/kNXmis7FmfgPKTvYPI3/BV2PXYzQODsSsp
         N32Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 191si162770wmn.2.2017.09.28.10.26.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 10:26:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,450,1500933600"; 
   d="scan'208";a="293182797"
Received: from unknown (HELO hadrien.local) ([193.43.158.229])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Sep 2017 19:26:46 +0200
Date: Thu, 28 Sep 2017 19:26:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
    Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vc04_services: Remove
 typedef struct vchiq_2835_state_struc
In-Reply-To: <20170928171352.GA4399@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1709281926280.2899@hadrien>
References: <20170928171352.GA4399@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line is missing a t at the end.

julia

On Thu, 28 Sep 2017, Mihaela Muraru wrote:

> This patch removes typedef from struct and renames it from "typedef
> struct vchiq_2835_state_struct" to "struct vchiq_2835_state" as per
> kernel coding standards.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>
> ---
> Change in v2:
> 	- change the subject line
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index 29702ea..a96bae0 100644
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
> @@ -205,12 +205,12 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
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
> @@ -218,11 +218,11 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928171352.GA4399%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

