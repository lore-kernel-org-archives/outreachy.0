X-GM-THRID: 6534531198530617344
X-Received: by 10.129.125.131 with SMTP id y125mr4754856ywc.94.1521465366020;
        Mon, 19 Mar 2018 06:16:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2687:: with SMTP id m129-v6ls1269240ybm.16.gmail; Mon,
 19 Mar 2018 06:16:05 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtZM12F8YLzRRTGXpwz7dUM2N4rDTMt9thUZithOGn40zaEkSIP5yyfcPSlACmVrBdkcmCc
X-Received: by 2002:a25:1482:: with SMTP id 124-v6mr2826449ybu.71.1521465365042;
        Mon, 19 Mar 2018 06:16:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521465365; cv=none;
        d=google.com; s=arc-20160816;
        b=01p1RZAN5q4XImpnoaQQVl3yfhhP5iTsraioYpIGybH3H4jGjMOY/Z3/I+fVoalUXV
         laieK5Wqkq3ZaQao377iPwCUthNtX9zDbMqpjwQ/188e0ilqv5cMwS4rDOTHUyW0oPj+
         9vdE0bHG3Fy2mmreiGuHic8qspq+tQUfoo8MPUGgyZcBOlMaT0EaLLvv5q4yu9s+o5uO
         bMBZtkcUWzyuV1ty2ZvXM1GKz6kcU+EuMSLPGt+iNCy1oYIXQ+J8Fn37HNeOFqqka3Bs
         1ougPt+Iq148g7fwSeX0XyW3CVVnZa9cP5c2qYsWQri0uJu9FwvtPXk7bdGQdOlM7qbU
         bkvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Rdv3D4Q+xlJKViXGW+glu+NKNbglXG2ELwGXs1Oa7AY=;
        b=lruwsi+8h8kX0dgqK2077is7J6O8ky+WY9vat3CqNxBIZzn9y/3oDJUW0K2W4Qiw4t
         3phyqlm/RLrHIGkssF5LLM37pifxWGmGWT7tri5XPsHftFuXmigTgZJjuKmX1LNnwNHZ
         ii3rEcNTISphvnQLq3+SducjZGJ5jGqve5kDMJMdlaCAW0qktDQkiJkPU7CaIBTCccYX
         /8NcD63ymOpR3T1+QFha2MnutWuicLTTh3ggUgIKuhP3aWyNAr/xd8Io6VU3x5BepYKd
         DxAVZo57JbFRwXOMgSZ4aqWpsN3qvYpjWdyghA0Zg/rNOXKzWGzt2aSnov2qXk4gq2i6
         ldBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oK+L4NmO;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id 126-v6si787ybf.2.2018.03.19.06.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 06:16:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oK+L4NmO;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yb0-x242.google.com with SMTP id b4-v6so57632ybi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 06:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Rdv3D4Q+xlJKViXGW+glu+NKNbglXG2ELwGXs1Oa7AY=;
        b=oK+L4NmOw+7DZ5XUHRh9DWMyEgzfQrEhwINR8hW35Q/QuOOEXjp0FlWjaNXRP8wFry
         tH+zFK4G/0ABK6zgpTTE6AzuKc2jECXRpfwewDjvD9O4740ZeKdqZK4AlKAHNupsQqG0
         MRSciK5+qDJYsgTBM2nTAtwJaa4DdE7+cfhqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Rdv3D4Q+xlJKViXGW+glu+NKNbglXG2ELwGXs1Oa7AY=;
        b=ASj9uIKrBQZsDSIjk8jpyYo1CGF51fsNRBRohhS9Ri9luhKpvYcVChil1+ov7tMV1r
         rClnpwOR1zgo0bVlS3j6qse2GGJfLrmQDh2Es5nNpmJLX0/Cqmh+hoiul9zYJeKqX277
         gSAEOZ8z1GKPnlK157dswI7vlUYZgn/Yorkwu7a9X0+7l5nLAarW56LKBiGkPQMRmC06
         JuHBCcBuCS6QHYX6TagckWt3vi89IrH/KisXWFsdKyxHXOFC1n85UCf7v6du6QJGGU9v
         0rgGN+isr/hUd14yPic0hS6HwOnTvvfeGDP90kq8/T0E7gl/wfpOwAro4f6iJSqttPNN
         GbbA==
X-Gm-Message-State: AElRT7EwznEUSMqkki0Z3L94LOHMQTGxAydar4KtSF5xRQRcBDfDKL1w
	DYT6NVpgAwIZ+RXgddjS3+fk6Q==
X-Received: by 2002:a25:fc10:: with SMTP id v16-v6mr6800519ybd.386.1521465361261;
        Mon, 19 Mar 2018 06:16:01 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:11:ad55:b1db:adfe:3b9f])
        by smtp.gmail.com with ESMTPSA id x8sm2817221ywa.65.2018.03.19.06.16.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Mar 2018 06:16:00 -0700 (PDT)
Date: Mon, 19 Mar 2018 09:16:00 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH DRM] drm: remove drm_mode_object_{un/reference} aliases
Message-ID: <20180319131600.GH223881@art_vandelay>
References: <20180319055820.GA17502@haneen-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180319055820.GA17502@haneen-VirtualBox>
User-Agent: Mutt/1.9.2 (2017-12-15)

On Mon, Mar 19, 2018 at 01:58:20AM -0400, Haneen Mohammed wrote:
> This patch remove the compatibility aliases
> drm_mode_object_{reference/unreference} of drm_mode_object_{get/put}
> since all callers have been converted to the prefered _{get/put}.
> 
> Remove the helpers from the semantic patch drm-get-put-cocci.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Thanks for your patch, applied to drm-misc-next.

Sean

> ---
>  include/drm/drm_mode_object.h            | 24 ------------------------
>  scripts/coccinelle/api/drm-get-put.cocci | 10 ----------
>  2 files changed, 34 deletions(-)
> 
> diff --git a/include/drm/drm_mode_object.h b/include/drm/drm_mode_object.h
> index 7ba3913..c34a3e8 100644
> --- a/include/drm/drm_mode_object.h
> +++ b/include/drm/drm_mode_object.h
> @@ -120,30 +120,6 @@ struct drm_mode_object *drm_mode_object_find(struct drm_device *dev,
>  void drm_mode_object_get(struct drm_mode_object *obj);
>  void drm_mode_object_put(struct drm_mode_object *obj);
>  
> -/**
> - * drm_mode_object_reference - acquire a mode object reference
> - * @obj: DRM mode object
> - *
> - * This is a compatibility alias for drm_mode_object_get() and should not be
> - * used by new code.
> - */
> -static inline void drm_mode_object_reference(struct drm_mode_object *obj)
> -{
> -	drm_mode_object_get(obj);
> -}
> -
> -/**
> - * drm_mode_object_unreference - release a mode object reference
> - * @obj: DRM mode object
> - *
> - * This is a compatibility alias for drm_mode_object_put() and should not be
> - * used by new code.
> - */
> -static inline void drm_mode_object_unreference(struct drm_mode_object *obj)
> -{
> -	drm_mode_object_put(obj);
> -}
> -
>  int drm_object_property_set_value(struct drm_mode_object *obj,
>  				  struct drm_property *property,
>  				  uint64_t val);
> diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
> index 91fceb8..ceb71ea 100644
> --- a/scripts/coccinelle/api/drm-get-put.cocci
> +++ b/scripts/coccinelle/api/drm-get-put.cocci
> @@ -16,12 +16,6 @@ expression object;
>  @@
>  
>  (
> -- drm_mode_object_reference(object)
> -+ drm_mode_object_get(object)
> -|
> -- drm_mode_object_unreference(object)
> -+ drm_mode_object_put(object)
> -|
>  - drm_connector_reference(object)
>  + drm_connector_get(object)
>  |
> @@ -62,10 +56,6 @@ position p;
>  @@
>  
>  (
> -drm_mode_object_unreference@p(object)
> -|
> -drm_mode_object_reference@p(object)
> -|
>  drm_connector_unreference@p(object)
>  |
>  drm_connector_reference@p(object)
> -- 
> 2.7.4
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

