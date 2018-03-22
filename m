X-GM-THRID: 6535020696311955456
X-Received: by 10.98.202.217 with SMTP id y86mr6958254pfk.53.1521727667936;
        Thu, 22 Mar 2018 07:07:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8b82:: with SMTP id ay2-v6ls2818049plb.11.gmail;
 Thu, 22 Mar 2018 07:07:46 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvPb0+GIbE8nAdRzTHRtOg43jkbdmJYkLHkeFrhEaQYFcN1P25JzXFU9630YSpCbVxJxPnp
X-Received: by 2002:a17:902:883:: with SMTP id 3-v6mr1458738pll.46.1521727666657;
        Thu, 22 Mar 2018 07:07:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521727666; cv=none;
        d=google.com; s=arc-20160816;
        b=WCgqMnrPWz4FMMhVPFSOFgKvlhOYKQeojIsroZbFEOAjLQrS8n+z3GTay4FKO9xC2m
         sMZdLC8otic1cuaNj8dnVeVcccSbuCQSXcLRTjMIjfHsJtJ7tT50DU+E8SEQ4DaoZaYB
         jDsz8cQrsbwswvcEz03gDfOvS/dRc4uxFqTk5b6eE3ybe1Auy98nRpTf9Irx6299O4Ht
         wSG5n7pQtMjL3Sk4Jn8qCWem7CLu05a7tIGqeD7UXJAPGzahXAndRUdm46aMTWms52LN
         wtxBWQ8MV43xPPaECaUI6p0QxrAbD9PhjyXAnur3fWMsoc4sh6Xxt//uJ85QvXeFGNaW
         gBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=d7FFrN+wyKY4wgiOWRfzi9eN47DObU3oBCaB+Pu7WAY=;
        b=I/i2yQux3nNJAhhB8Z8ocqVqXTVjIPSj4AJfn1K5kwjw8eZ84kL5EY3ifOoesv62Cr
         wXUV4o/FlxUlRKNASU1o8dnsG5VeSHIIjEHET2cJZ8c9qj7abLxFQ8U7g0loYyMv51QO
         Q2OBeilGUTzmSSM5MpOsugNxmaT2vjkoPmtYI1ZU0qry2JBh+QHLhR/Bq4VB+pPG37u/
         LWDDixjN63gFn2HMBX3NjZcUCkFAPl6plkz6RvgAh8yPQPtYaVAdZTVlnfGZD2Ewm7zA
         kStT/kCp6h0/bwaRcWcJWzKlw+RGL9gq5WffjtH+t4U7fGr7yfgPlX4DL38feac7wZBS
         5qQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KfiHKCzC;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x230.google.com (mail-yw0-x230.google.com. [2607:f8b0:4002:c05::230])
        by gmr-mx.google.com with ESMTPS id d4si353390pgv.5.2018.03.22.07.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Mar 2018 07:07:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::230 as permitted sender) client-ip=2607:f8b0:4002:c05::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KfiHKCzC;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x230.google.com with SMTP id r145so2846397ywe.7
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Mar 2018 07:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=d7FFrN+wyKY4wgiOWRfzi9eN47DObU3oBCaB+Pu7WAY=;
        b=KfiHKCzCV+MlpmRDL0by1iD05cVC+R0Aui2G1KPTjWY/8AMM81EyMf0X94gaKFhBPD
         hkxIOURXfK0BPCjVrJaNJR7SLETllX9ASDf7MhLlV4tySPDDsnJrybMJtjsLAPgR9AHf
         jX6XjXMkXWc5wMoOcyUD72vfR/cpGZ/PBRuaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=d7FFrN+wyKY4wgiOWRfzi9eN47DObU3oBCaB+Pu7WAY=;
        b=dCtVHWyLG7Q0gBb/HK7KqAZYTD5YXbL14QELq3HSGPmy3Opl/pqNGZsVN+u738a4ie
         lne/vfW8XaeMv9Kuo9UyIBcx16jrUdHcaAGs01/nSaxIbQTyAnvGmH+SqttJIzA2Fyyl
         mnNHbSrovRuW+jYmskvVbbJCCCsdyk+n8J0a4rmGH6nm9dRZZVFO+3DR2qX8QxysKIWX
         rEBJ9DfmDPQlUyv4NxgHxbwEBoW0mw4odsKWsM8RIECWL6SmECTI08o3uXKMSE4TRMA5
         5+KDAPhyrVtK+5uGSrU/x0F7hNqucqHkbyl6BxQfFpZG1tBHLLN3N7elpY+28wjuAdx6
         d79w==
X-Gm-Message-State: AElRT7GwGGNnaGzaOznFNsc0nhDAlRrOX/2QpLviAPHyDkgJhHhLdtQJ
	pE2HlwpkSS+XlDjOVZftBqeKCA==
X-Received: by 10.13.242.135 with SMTP id b129mr5491523ywf.489.1521727666167;
        Thu, 22 Mar 2018 07:07:46 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:11:ad55:b1db:adfe:3b9f])
        by smtp.gmail.com with ESMTPSA id t126sm1139279ywg.40.2018.03.22.07.07.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 22 Mar 2018 07:07:45 -0700 (PDT)
Date: Thu, 22 Mar 2018 10:07:45 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	Julia Lawall <Julia.Lawall@lip6.fr>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Michal Marek <michal.lkml@markovi.net>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH DRM] drm: Remove drm_property_{un/reference}_blob aliases
Message-ID: <20180322140745.GW223881@art_vandelay>
References: <20180320133749.GA11695@haneen-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180320133749.GA11695@haneen-VirtualBox>
User-Agent: Mutt/1.9.2 (2017-12-15)

On Tue, Mar 20, 2018 at 09:37:49AM -0400, Haneen Mohammed wrote:
> This patch remove the compatibility aliases
> drm_property_{reference/unreference}_blob of
> drm_property_blob_{get/put} since all callers have been converted to the
> prefered _{get/put}.
> 
> Remove the helpers from the semantic patch drm-get-put-cocci.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Pushed to drm-misc-next, thanks!

Sean

> ---
>  include/drm/drm_property.h               | 26 --------------------------
>  scripts/coccinelle/api/drm-get-put.cocci | 10 ----------
>  2 files changed, 36 deletions(-)
> 
> diff --git a/include/drm/drm_property.h b/include/drm/drm_property.h
> index 8a522b4..08d5dbb 100644
> --- a/include/drm/drm_property.h
> +++ b/include/drm/drm_property.h
> @@ -279,32 +279,6 @@ struct drm_property_blob *drm_property_blob_get(struct drm_property_blob *blob);
>  void drm_property_blob_put(struct drm_property_blob *blob);
>  
>  /**
> - * drm_property_reference_blob - acquire a blob property reference
> - * @blob: DRM blob property
> - *
> - * This is a compatibility alias for drm_property_blob_get() and should not be
> - * used by new code.
> - */
> -static inline struct drm_property_blob *
> -drm_property_reference_blob(struct drm_property_blob *blob)
> -{
> -	return drm_property_blob_get(blob);
> -}
> -
> -/**
> - * drm_property_unreference_blob - release a blob property reference
> - * @blob: DRM blob property
> - *
> - * This is a compatibility alias for drm_property_blob_put() and should not be
> - * used by new code.
> - */
> -static inline void
> -drm_property_unreference_blob(struct drm_property_blob *blob)
> -{
> -	drm_property_blob_put(blob);
> -}
> -
> -/**
>   * drm_property_find - find property object
>   * @dev: DRM device
>   * @file_priv: drm file to check for lease against.
> diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
> index ceb71ea..3a09c97 100644
> --- a/scripts/coccinelle/api/drm-get-put.cocci
> +++ b/scripts/coccinelle/api/drm-get-put.cocci
> @@ -40,12 +40,6 @@ expression object;
>  - drm_gem_object_unreference_unlocked(object)
>  + drm_gem_object_put_unlocked(object)
>  |
> -- drm_property_reference_blob(object)
> -+ drm_property_blob_get(object)
> -|
> -- drm_property_unreference_blob(object)
> -+ drm_property_blob_put(object)
> -|
>  - drm_dev_unref(object)
>  + drm_dev_put(object)
>  )
> @@ -72,10 +66,6 @@ __drm_gem_object_unreference(object)
>  |
>  drm_gem_object_unreference_unlocked(object)
>  |
> -drm_property_unreference_blob@p(object)
> -|
> -drm_property_reference_blob@p(object)
> -|
>  drm_dev_unref@p(object)
>  )
>  
> -- 
> 2.7.4
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

