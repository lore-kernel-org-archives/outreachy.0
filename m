X-GM-THRID: 6950222578852036608
X-Received: by 2002:a17:906:2cd1:: with SMTP id r17mr26625365ejr.429.1618229523936;
        Mon, 12 Apr 2021 05:12:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:26c7:: with SMTP id u7ls1335976ejc.2.gmail; Mon, 12
 Apr 2021 05:12:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwBHGURwvqIxGvgXM4iEZ4AsyptcneDTE4PDrQB204KsICNi+b0i1PvUXRbF7LaIoITRCx
X-Received: by 2002:a17:906:4b01:: with SMTP id y1mr12042555eju.218.1618229522501;
        Mon, 12 Apr 2021 05:12:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618229522; cv=none;
        d=google.com; s=arc-20160816;
        b=jYGCIc08NwJLU+e6np3SjGkzoY2OONFOSx7kdp1ySeIVGMOYbuxmEtZp8tO1GrGJuw
         D25xeRuzRZeg7tOGi0mQbVRQ6ig+/4oa43DD8EIQapJU27Cc1bPDfDiPz18psMoiparZ
         PI5eqcip96jsaBngzU6HhwMlYf0nW8WcPnBYTCFR26F58klSouwH4x1qRh73FB15S9oS
         4L9kszm92m42lv/LQuXczkcyJHLWixJ81iltYxwwApLf2QQPi5wDnRe/N4pLHepGYR2p
         67rGP41zIQKPWiaccZRA8/mDevNLR3Loju1mW/iJ9zSV/hXjZwUBREyME5MZHIphzc4o
         WG+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LptbleWykRjwV8Nj9LpseiFoEQQ9lAey2RZIBBdtNOI=;
        b=avGCsK9JH7epjghEA32fwWsRE1W0exN38x7Ru+7OZQ7uq1b6V9aYHbt6EvErYOJWkK
         FsBasTOuX/1VjQ9EYHQ0mbzDOOijJjEmxAGqiZbFMXgJJ5OnI6ayxZ4/sKSqarf0w3HF
         kIOw5S7NBNCZ256wnfTpYvrc8K+6y5/VKqMflD85EImUmwI18Y2z8mYKdNcwnNM2cPII
         p7WQKiwPFt5X+ejBHXNL9IO6/iPZo53CHb8WYULBoAIM6S/wTRuxFS9vBMwjlYthw7AY
         Mx83cUu9Aq8nRo7ppn4NjArbgVOmD6ghBdABoZ6wzWioEMuWmUYSmi9evO2Bah/gGYqs
         FGUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=g18GLshh;
       spf=neutral (google.com: 2a00:1450:4864:20::335 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id y16si1016966edq.2.2021.04.12.05.12.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:12:02 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::335 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=g18GLshh;
       spf=neutral (google.com: 2a00:1450:4864:20::335 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-x335.google.com with SMTP id w186so2143899wmg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LptbleWykRjwV8Nj9LpseiFoEQQ9lAey2RZIBBdtNOI=;
        b=g18GLshhhTVKd2/KAhSGm8rgPUepn+fNmnUo/8Myljr4yUsOFwr2iFCH/jU7sUqm98
         7kcZebBDFYdwhNteNdn4PrfceXLIdjZxxIYJjqZzvu+BUWLSVKnRgfEZqp8wbpIaKQ6c
         RI9CZpHobChuj2+jLL8hKlBoRHOkeVQ1UiNSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LptbleWykRjwV8Nj9LpseiFoEQQ9lAey2RZIBBdtNOI=;
        b=GAu/ouykmWwPthrt5OgwLZRA5DvMbt7I/tPIJpQSY+mWxV0KBe5Oacd/n1h5nJJVov
         Arvvp5GGt1ZWF+eCrzS6+dhwXx/GY8JhAFjprIkJsgYM7mQ+N+9qn2ljiFx2+spIj2WF
         3BXtlTRPBOIuw5yrfe+jfnSQNlyPSZChQkAlf6iIAMwDxEZDn2Fj3wmxhvzmOTd3NDIy
         CAtdQgoW2RDtA4pu+QOJp0nLU9Jrcvl0EN78GzY1qlsZ8N2iKpicfkiJoRmtUxDUS4fi
         Mhwgc4QV46QaFg6lBmmvOUn9qpNZl16QRTsLV7vCgOgyCK27FtwoIndxefX56WGmUHAt
         37CQ==
X-Gm-Message-State: AOAM53290xkgr5H/12lQIIHFiD3NFSD3X7ng05lIBDafrSMT54mFOMXF
	WLydlmJqJqvFzeOn2JRtSEhlWg==
X-Received: by 2002:a1c:7ec4:: with SMTP id z187mr26380949wmc.3.1618229522176;
        Mon, 12 Apr 2021 05:12:02 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id k16sm16652243wro.11.2021.04.12.05.12.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:12:01 -0700 (PDT)
Date: Mon, 12 Apr 2021 14:11:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>
Subject: Re: [PATCH] gpu: drm: Replace bare "unsigned" with "unsigned int"
Message-ID: <YHQ5D25KQ+3uADNo@phenom.ffwll.local>
References: <20210412105309.27156-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412105309.27156-1-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Mon, Apr 12, 2021 at 12:53:09PM +0200, Fabio M. De Francesco wrote:
> Replaced the type "unsigned" with "unsigned int" because it is
> preferred. Issue detected by checkpatch.pl.

Huh, I didn't know that, TIL.

> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Thanks for your patche, merged to drm-misc-next for 5.14.
-Daniel

> ---
>  drivers/gpu/drm/drm_atomic.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 5b4547e0f775..46dceb51c90f 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -1302,8 +1302,8 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
>  	struct drm_crtc_state *new_crtc_state;
>  	struct drm_connector *conn;
>  	struct drm_connector_state *conn_state;
> -	unsigned requested_crtc = 0;
> -	unsigned affected_crtc = 0;
> +	unsigned int requested_crtc = 0;
> +	unsigned int affected_crtc = 0;
>  	int i, ret = 0;
>  
>  	DRM_DEBUG_ATOMIC("checking %p\n", state);
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

