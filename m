X-GM-THRID: 6952817933661765632
X-Received: by 2002:a5d:69ca:: with SMTP id s10mr2689890wrw.78.1619081273721;
        Thu, 22 Apr 2021 01:47:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls6047330wrs.0.gmail; Thu, 22 Apr
 2021 01:47:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBLEEfFEjXRm+hCPA1RR/AO5ETCJ0Z88Ly4WAA2r3rzmfb1NAlhE6SXfsgpYrCaUnXXOU9
X-Received: by 2002:adf:cc87:: with SMTP id p7mr2718595wrj.388.1619081272256;
        Thu, 22 Apr 2021 01:47:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619081272; cv=none;
        d=google.com; s=arc-20160816;
        b=xXKKzGLofdDnZocXCe2xwer+C0pv4siin0kKHo6E8wJ9B6flDFeUGoJUiQ6OqzuTat
         Xm+j+22N3ADxMGaTFipgUN3PF5MvZBGeVymT0n0wzKPpHTsXJJORrJsCYhhxJNFQp3By
         zGfzbHdW4gvF0JH/N6F/YcDAx6skHxlF7qOBfDLP/6Lj8D+9hftWtFFKCbLuhwgfPYhW
         onLQuZRiG9le9Of+dz+nPwHzqxIXiW+iyZ8bM/h9clOBCDvpviAQpKw8ZROkXrS9952q
         3lc5jSbUuqd+1Fcxi4RSgQIQTRKNGpfjVlIKB0DYpGxi9wGWwQPYcYchUYO7gxHIzteM
         l3Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=vhe86cA9Lih/Xt94SXw0z79g/E1uDPv2HAfY3KSx+U8=;
        b=XgEw58COMMNVCmqjRwxLcxUN0XBLTtyN3G16MSG0D8Gv7JecnJlpM1Xlr8YYtCbLIQ
         8TimSHEWgEvunDNQZVLeNLm6MDDCebvtZmmC5oz42sxeCvBelN08lP0IqkVs30c1KLgm
         VorlowXYauOEz90gfwcpu2dxm8Yqe/J+oioLTnba7RhVFWO8L/mn1LIINxJEpOCAhfvE
         g00jNpDf88fmgLqfNJ7iIUE5I5HaY74Jqn0Yo3XKEs3JrNd52Wit6UzRYHHVyw27KLqk
         hcAaIsMHbkq09aB09smsQj2Zor3l6/WAuIn3B9r7Do6Io3ZEgxg9GxM6S/KDVNBAjs1F
         l7EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=QVQ0oK3P;
       spf=neutral (google.com: 2a00:1450:4864:20::429 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id p65si1409422wmp.0.2021.04.22.01.47.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 01:47:52 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::429 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=QVQ0oK3P;
       spf=neutral (google.com: 2a00:1450:4864:20::429 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x429.google.com with SMTP id x7so43902042wrw.10
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Apr 2021 01:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=vhe86cA9Lih/Xt94SXw0z79g/E1uDPv2HAfY3KSx+U8=;
        b=QVQ0oK3P9q5+OKlOxd2cm20f+Pe+5e1RcMSaxC+9Gh0mXJKMsYMm7TE9eBkDByCvJk
         z0t0VbWjfYIHDAGtcSzpLvKSkPXl/BV6E9PlCvPXDiKVnASbaWpqxRa49TmfmEiHGPhO
         y0vxBUIf7EKTCWvPJvWApPxrMKOr8qz8XVCNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=vhe86cA9Lih/Xt94SXw0z79g/E1uDPv2HAfY3KSx+U8=;
        b=rdfBKwp0EIVbi+0Jw6S3b/aYl7AJoizQOkgpAmvy7AIBcFNQ15vUFn0xM15nwQAUBq
         04RA/0VExC/TsIlUVdklb0wv+5dcwSTH57Lh3lU/XeUdBzXrDJUdcU3h4EBM4DCOOLCr
         wdonIacdXuoC1QWcdzeYHQUESLyZHdGvbaioi8jEOMaSEMKebcmworEntNgqLR3hTjik
         N/yuBENTbLMZaKudOk3ISml//0Lw74fNGeXhNXo5DGhsrglpyiwTVlSYdYOCQruJoNJi
         KSSx3NfFuL6rGFpv4I8zRF5MsU2tDzdZxRKkehAh9ddz0HAYSxHSdxtLti8xzD3aoBjo
         l9Lg==
X-Gm-Message-State: AOAM533HoyxQPiMkkli6h4KFVsefFOAQI0umzI3Opgp6z0+sd05g3Oia
	2YZahF2AV84xemwsICegHWKFyw==
X-Received: by 2002:adf:fb43:: with SMTP id c3mr2731711wrs.360.1619081272055;
        Thu, 22 Apr 2021 01:47:52 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id o62sm5253687wme.5.2021.04.22.01.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 01:47:51 -0700 (PDT)
Date: Thu, 22 Apr 2021 10:47:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
	melissa.srw@gmail.com, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] drm: drm_connector.c: Use tabs for code indents
Message-ID: <YIE4HTjVGbBPaRQG@phenom.ffwll.local>
Mail-Followup-To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@linux.ie, melissa.srw@gmail.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
 <0200474fbdb1149856308bccb8e467415f0b3d99.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0200474fbdb1149856308bccb8e467415f0b3d99.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Wed, Apr 21, 2021 at 08:42:49PM +0100, Beatriz Martins de Carvalho wrote:
> Remove space and use tabs for indent the code to follow the
> Linux kernel coding conventions.
> Problem found by checkpatch
> 
> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>

Both of your patch sets applied to drm-misc-next for 5.14, thanks a lot.
-Daniel

> ---
>  drivers/gpu/drm/drm_connector.c | 38 ++++++++++++++++-----------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 7631f76e7f34..38600c3a6ab2 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1958,11 +1958,11 @@ int drm_connector_set_path_property(struct drm_connector *connector,
>  	int ret;
>  
>  	ret = drm_property_replace_global_blob(dev,
> -	                                       &connector->path_blob_ptr,
> -	                                       strlen(path) + 1,
> -	                                       path,
> -	                                       &connector->base,
> -	                                       dev->mode_config.path_property);
> +					       &connector->path_blob_ptr,
> +					       strlen(path) + 1,
> +					       path,
> +					       &connector->base,
> +					       dev->mode_config.path_property);
>  	return ret;
>  }
>  EXPORT_SYMBOL(drm_connector_set_path_property);
> @@ -1988,11 +1988,11 @@ int drm_connector_set_tile_property(struct drm_connector *connector)
>  
>  	if (!connector->has_tile) {
>  		ret  = drm_property_replace_global_blob(dev,
> -		                                        &connector->tile_blob_ptr,
> -		                                        0,
> -		                                        NULL,
> -		                                        &connector->base,
> -		                                        dev->mode_config.tile_property);
> +							&connector->tile_blob_ptr,
> +							0,
> +							NULL,
> +							&connector->base,
> +							dev->mode_config.tile_property);
>  		return ret;
>  	}
>  
> @@ -2003,11 +2003,11 @@ int drm_connector_set_tile_property(struct drm_connector *connector)
>  		 connector->tile_h_size, connector->tile_v_size);
>  
>  	ret = drm_property_replace_global_blob(dev,
> -	                                       &connector->tile_blob_ptr,
> -	                                       strlen(tile) + 1,
> -	                                       tile,
> -	                                       &connector->base,
> -	                                       dev->mode_config.tile_property);
> +					       &connector->tile_blob_ptr,
> +					       strlen(tile) + 1,
> +					       tile,
> +					       &connector->base,
> +					       dev->mode_config.tile_property);
>  	return ret;
>  }
>  EXPORT_SYMBOL(drm_connector_set_tile_property);
> @@ -2076,10 +2076,10 @@ int drm_connector_update_edid_property(struct drm_connector *connector,
>  
>  	ret = drm_property_replace_global_blob(dev,
>  					       &connector->edid_blob_ptr,
> -	                                       size,
> -	                                       edid,
> -	                                       &connector->base,
> -	                                       dev->mode_config.edid_property);
> +					       size,
> +					       edid,
> +					       &connector->base,
> +					       dev->mode_config.edid_property);
>  	if (ret)
>  		return ret;
>  	return drm_connector_set_tile_property(connector);
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

