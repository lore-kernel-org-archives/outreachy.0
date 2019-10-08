X-GM-THRID: 6743623075363815424
X-Received: by 2002:a0d:f987:: with SMTP id j129mr24960881ywf.474.1570538124014;
        Tue, 08 Oct 2019 05:35:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:8109:: with SMTP id o9ls539350ybk.3.gmail; Tue, 08 Oct
 2019 05:35:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/rp4nhsCRULrkyu4KjPse4fNTEB3lZMCm21+OpZvt+6WL3bGIWSXACL6kKRZqmxZzoLUe
X-Received: by 2002:a25:3216:: with SMTP id y22mr14807882yby.491.1570538122927;
        Tue, 08 Oct 2019 05:35:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570538122; cv=none;
        d=google.com; s=arc-20160816;
        b=01qIjw3i1iteqrm7alWtbvkttA55SqmLwFSGkgoIBqooaRiPaUYDsn647MKb1ZLWDk
         L+xjiTyEIZ5acx559DybDwLq/r7H3oT3M8x5Eh2hZWhgrdPmbKbYesIW/0N1CTri77HS
         PvPas4WyhAln5eLHpFuHpraE/Bnl6nJKjlVq2ormpu12k/zwpfbkQlzKFNY9Mc7UD9O7
         no7kEHG7JVdNSqTf6mnsSLrVIwQq9wfieZnFDE+WZOLjmKiDguwoOBVM1+SjvF5N8tqE
         NtYZFwn/Cd5sOnEGZjY/akjuSgqa42+cTo/h2K7dVp3+8BDTRqm3BWjqIzBhqxpxCRL2
         +/9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+lwv2Hf2GULMwQkhkFjzu0WFNwMn49J1cbkdTqklb/0=;
        b=0bfSr7aQnQKQLqasttnC2EzHp+0KBcUdvFQla8bMohFm/rSNLsdBpIGCqg2CTsHZpU
         KdgWMzmcC/ZFV31ThXcAhyRWt7kcISze02c3lw/rtkIjBH4TRcYGGEeLdcYeRtGsYr/8
         4beuFiS7pZmG3lCy1ow6T7j0awSYtTwdd4uY7D5NwEuzjq3lJ7GqprFKYNG/gNYo74zb
         mBk/s+a3DHP4y91PT132/XXpUxdLM6gNHQAIZPbC4j1NPYUZqaTB8wSB9zuI/OClIZNt
         lFsoD4wT88dM+eA7d8RwvpiGbpFdlaDBNeB2ZXNyqGns29YPzQnOUGW+kdGqeX/2gKXL
         F80Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vZck+p7P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u129si583876ywc.1.2019.10.08.05.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 05:35:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vZck+p7P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.205.136.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 300B520679;
	Tue,  8 Oct 2019 12:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570538121;
	bh=x89XuxCaWsC1Su850MEDVbN32v1ny2s8AIlMM9GY+ks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vZck+p7P+X9lm/umDkwfQ5CC4Ll9ifBVvtw925R9M5E6vYrlNZbnamN9O7dAOykbR
	 LtBXbJLLZAu35WNKnpOeGB6TW0hyC6PuJzrMIxEu4EgBZFKU3pXc5fxGvooX3zgn4D
	 QH/PBIjkorxkvM0nIZjIKLSf0XcXAm27M3DX2ipw=
Date: Tue, 8 Oct 2019 14:35:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vc04_services: Avoid NULL comparison
Message-ID: <20191008123518.GA2763989@kroah.com>
References: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Oct 07, 2019 at 03:29:28PM -0700, Nachammai Karuppiah wrote:
> Remove NULL comparison. Issue found using checkpatch.pl
> 
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> 
> ---
> 
> Changes in V2
>    - Remove all NULL comparisons in vc04_services/interface directory.
> ---
>  .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--
>  .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 28 +++++++++++-----------
>  .../vc04_services/interface/vchiq_arm/vchiq_core.c |  4 ++--
>  .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  2 +-
>  4 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index 8dc730c..7cdb21e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -526,11 +526,11 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
>  			return NULL;
>  		}
>  
> -		WARN_ON(g_free_fragments == NULL);
> +		WARN_ON(!g_free_fragments);
>  
>  		down(&g_free_fragments_mutex);
>  		fragments = g_free_fragments;
> -		WARN_ON(fragments == NULL);
> +		WARN_ON(!fragments);
>  		g_free_fragments = *(char **) g_free_fragments;
>  		up(&g_free_fragments_mutex);
>  		pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index b1595b1..b930148 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -826,8 +826,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  
>  		/* Remove all services */
>  		i = 0;
> -		while ((service = next_service_by_instance(instance->state,
> -			instance, &i)) != NULL) {
> +		while (service = next_service_by_instance(instance->state,
> +			instance, &i)) {

As you can see, this added a build warning.  Please always be careful
about your patches to not have them do that :(

Please fix up and resend.

thanks,

greg k-h

