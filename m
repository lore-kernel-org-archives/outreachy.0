X-GM-THRID: 6534531198530617344
X-Received: by 10.28.230.84 with SMTP id d81mr1314072wmh.12.1521468836822;
        Mon, 19 Mar 2018 07:13:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.134.106 with SMTP id 39ls585775wrw.7.gmail; Mon, 19 Mar
 2018 07:13:55 -0700 (PDT)
X-Google-Smtp-Source: AG47ELs+NUsXtga5InZbP2Z1A14c2a9eM/zedT/UkC3iqGIr/3sJenAU530mLAr9rN35Ji/pJcHX
X-Received: by 10.223.187.6 with SMTP id r6mr1090351wrg.9.1521468835648;
        Mon, 19 Mar 2018 07:13:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521468835; cv=none;
        d=google.com; s=arc-20160816;
        b=swR6xq7WgqoqbIPsodBZWN85lHpcbJi73rgdowc4oz8CjQvGpG0ezlbh4lobvgPenH
         wV+fSQLx8DNnkPg1IOzmzjB9++2cbXiYeqXtu2Fvu4bWOVpeLTiOPjiWEgVnwL5IQ2Jk
         L7XMTuf8D49JBm2sYMLb1KbwxCGViYwFHQWPHdsfiD4klP0RTnD6po3k3lOe9bC+hISo
         aOpY5m4TVpPwxM79LEpaAk4KCh81l6213ThdGKmssy4JLvL2cVuf/HHaPZELAcHjavLI
         G4udk+YlgLdPkAOOEvH/d9wMnsrcDVGWwKc50VlowrSOWxe+j4XrFMpgqKgEvd6xO6iV
         xSVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=5ALTqZuPEDdj3ZAwDGmi5xhRIf+RO2ifQqIaSafh/ow=;
        b=oLC3eHm2m96lKXKBTvmxwEcq+Vta+gZaJDjzXW9yesf+mvxLUIxY5TdBzLhrRaQ1C+
         kd48fsMEk8ZutoMamva8hIV5xAMowXxM/rwvIAP2qASHjgWF8ZH2JS+gJdPuDJb7AzIk
         TtGCqdwS5/hHpYC+UM3tl470/TXUeUshlxQuSeNAXtjfm/LkZogE7G18aGtHvOb5/gJg
         0ZSIGV/dsoRBXhWF9KKuvl0d8Fe31ADQgoNyNnG+HV9eCg4BzJTIxHgOaNR+AL/g0fP8
         9CbyDmV0NEcQDeJFWuayd4gkO5zODRSYu3P1HUaPSDQXSav3dxiLKS+peUNnEJPX4dg3
         Yvig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ACLmw0uv;
       spf=neutral (google.com: 2a00:1450:400c:c09::233 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id r10si297228wmg.2.2018.03.19.07.13.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 07:13:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::233 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ACLmw0uv;
       spf=neutral (google.com: 2a00:1450:400c:c09::233 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x233.google.com with SMTP id f19so2869018wmc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 07:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5ALTqZuPEDdj3ZAwDGmi5xhRIf+RO2ifQqIaSafh/ow=;
        b=ACLmw0uvrEeFOK597y88nGD5yUUYr1oYJJhMCZX/9JmJ/Og4oqhtVkKfj5FP37zDK9
         pYOT3r79hi5PzDCmOxIlIA4mKURml30yLJ4D90V4/QHpoi6tUOD+2RRwL4pG3UXShN0p
         ZPC79Pr0iSBgvtTVonPolBTYTtuCd3xiOqMZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=5ALTqZuPEDdj3ZAwDGmi5xhRIf+RO2ifQqIaSafh/ow=;
        b=lXfmcWhus34AGIl5OQzDXPHbftmuEYQBQRy8ZtFDFtwhLLA+W+8fOjFhORdpGI7LJn
         MxQF7AyRa7i7zfOcme7yCBn8JnYALz9VGg90JUFggXtFbm/q1vYhVeMgllFNwM5OP2fz
         8QiuPYIkAh9p5veyu/tOJT2+G9MmtlWULmr/Daa/M2o342udSx0JGBOTlQWRyl5wf46C
         ksziDTw92/7/jeQasJSBcgr4+uqNfs+fOHPhaJm5yeOOWZ72KGYRsaktwAuY70HPneBm
         1i3re9WbQrVU5acT1rIzhWXf2YS0IONvAelczL2wlFXl6ZMyT7Xj04g3/YmIZhdHmTC1
         lICg==
X-Gm-Message-State: AElRT7GBVDyaKEIj3x4CTi1/KxoCCFjCoxjaltqIERoYJAu8mYipwYn5
	6zlBYxEjnCcJoa/jrt6jAn7NWXIQ
X-Received: by 10.80.157.130 with SMTP id w2mr13748208ede.123.1521468835238;
        Mon, 19 Mar 2018 07:13:55 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id o3sm277066edi.24.2018.03.19.07.13.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Mar 2018 07:13:54 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 19 Mar 2018 15:13:52 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: remove
 drm_mode_object_{un/reference} aliases
Message-ID: <20180319141352.GQ14155@phenom.ffwll.local>
References: <20180319055820.GA17502@haneen-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180319055820.GA17502@haneen-VirtualBox>
X-Operating-System: Linux phenom 4.15.0-1-amd64 
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 19, 2018 at 01:58:20AM -0400, Haneen Mohammed wrote:
> This patch remove the compatibility aliases
> drm_mode_object_{reference/unreference} of drm_mode_object_{get/put}
> since all callers have been converted to the prefered _{get/put}.
> 
> Remove the helpers from the semantic patch drm-get-put-cocci.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Yay, one set down, a few more to go!

Thanks for taking care of this.
-Daniel

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
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180319055820.GA17502%40haneen-VirtualBox.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

