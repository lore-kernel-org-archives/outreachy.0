X-GM-THRID: 6950222578852036608
X-Received: by 2002:a2e:b4a5:: with SMTP id q5mr17946688ljm.7.1618230524223;
        Mon, 12 Apr 2021 05:28:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls1077446lfv.1.gmail; Mon,
 12 Apr 2021 05:28:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxplEkaJlZikF7Y0THbgI4nc6L2lzFZ+W9y6ggZ71MFWXpYoxWIDE3toHGcAU5y9t0jQT1L
X-Received: by 2002:ac2:551d:: with SMTP id j29mr15509083lfk.56.1618230522723;
        Mon, 12 Apr 2021 05:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618230522; cv=none;
        d=google.com; s=arc-20160816;
        b=Fv4QhwG7Rskwyp1pOMdNRIpHu0khf8tLuYuAEjZOOmVNN2FQbJjqMDO5DKR0PYCHPn
         uLK3PiJDgnnx8n1qtBgdiXp7eVrbsNrfu8IwEX9mcUC7PDKP7MUUQ8dKOaqsyfBvASQl
         UoQCuRSMFb6uwLI2R8bNkmPdfEueQ6cWIw5aNDWzXa9rqmthYDDx3Z+m75zlPDRv8tVa
         owPez7P4BL/5wGDFnY2dSIABLx1ZCWbTDVsMVl37gtFZ33BMWP6xBWsUoVKeWW2OLfZO
         OZ3aLx/jVz5MQEZgQok2cOJyRWrydTiaNypxAhP+ogOqql5RJyEmG9J200sG5PWdY2kL
         YGIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oXOFzLZjvk0LyNOjmi5s2GiY2P2vUSqf5iSqo2K7jHE=;
        b=at2I8Ax5/xcSvMEynSwwlEq/UujTQ8r9OKCB82wMgq1bPY1Zm9n5n5bqaSgcIc7OWC
         pGetJHf7CNmNbNpfWavGq95/AipZEJp50MgBDTYGWdlL4BZxChJhOd3/n2YVkdPhh1mo
         POzdQumJHzfOGHDpr3iStGwLRQ+nWfO23UovYl9K/0WBJLqlNlGA41IjL5mMtACNrY/E
         nP9uKyOf+T+C/bKxvFMS0U9oSYfEu8zyCoxtIyvg45bIr2v9aYuW+8nH8WWmaXL9kFGH
         OhtrcOiqTazABx8vk4EiAQR+QAt4XWiQb4CMtOUomEVnj4ScvdKp+tZvw/OKryOhf61F
         Cvhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mTH11GKH;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id d19si658844ljo.1.2021.04.12.05.28.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mTH11GKH;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id r12so19955383ejr.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oXOFzLZjvk0LyNOjmi5s2GiY2P2vUSqf5iSqo2K7jHE=;
        b=mTH11GKHf/4UYU1YHUwQ+zG9Wnuuk06YYbVfv9ix18rl/RhS6+HdsDZ5vbTAiWcXCR
         GFU95Ss07dMBftcwhGseeyLn6qZPeArRBuZWWx5ar04KVmg/KSsrIUcO+uNvxAVWG4lz
         d36A5Xj2cUSCmDQt9KRPndk0ejErn8JnI/aEhJxeRBsHXEYXXF4eOjEOMBQ3/hwNNC7D
         y9YveGlJpaRgEj9l6ra2b3Efu7I0xB1whiemL+VjOb/KOsa++xXZs7vQESpv36ig8Roq
         3Mow0wnWS0QVso4SrZ9rS3TFfTja952x/Jrx5xNzan1df80HfueuQMk86w9V+KdLHwQd
         k5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oXOFzLZjvk0LyNOjmi5s2GiY2P2vUSqf5iSqo2K7jHE=;
        b=ZJSFhePAT1+EBNvE4pD8Vchi7pzTj7VL43yGkUZbMdEiWuX+M3jINaL9rrJ2XhuLNt
         fS7VkbDUoW7xHaOgvn1Hb8md6TZFvmiGQGd/3nJpBaYsVbB+e/5ybT5WbljbvfAbICcw
         ipEa6KGARknbSRsF1fnbjgwpCGoV5S4cnHHFvJWn6g42/MIVgA9no1hlCKYyzF/qW4p5
         SYKMFv1JeFnb/zwHItnvHmtskNMxZH5TQypHZ3KDuz8O4lUGnlvdQAnH1lYJKe34bSmQ
         w8EOLP+5AILDDM5N3u3pTP59mxYwNx3KbmndiJc4DS9yyBSeNcM0V17cKRDOvZp4t3Fl
         ue0A==
X-Gm-Message-State: AOAM533YyGP7n0lmLT6yy0cX/HATWpBB7qsRODEEuh2JPnwXGqC3vJrt
	LPf9ttPkh34yx+zU/rUJakQ=
X-Received: by 2002:a17:906:5e15:: with SMTP id n21mr1499484eju.57.1618230522478;
        Mon, 12 Apr 2021 05:28:42 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id m14sm6494871edd.63.2021.04.12.05.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:28:41 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com, Daniel Vetter <daniel.vetter@ffwll.ch>, Melissa Wen <melissa.srw@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>
Subject: Re: [PATCH] gpu: drm: Replace bare "unsigned" with "unsigned int"
Date: Mon, 12 Apr 2021 14:28:40 +0200
Message-ID: <6109116.xc2Yry14yg@linux.local>
In-Reply-To: <YHQ5D25KQ+3uADNo@phenom.ffwll.local>
References: <20210412105309.27156-1-fmdefrancesco@gmail.com> <YHQ5D25KQ+3uADNo@phenom.ffwll.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 12, 2021 2:11:59 PM CEST Daniel Vetter wrote:
> On Mon, Apr 12, 2021 at 12:53:09PM +0200, Fabio M. De Francesco wrote:
> > Replaced the type "unsigned" with "unsigned int" because it is
> > preferred. Issue detected by checkpatch.pl.
> 
> Huh, I didn't know that, TIL.
> 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> 
> Thanks for your patche, merged to drm-misc-next for 5.14.
> -Daniel
>
I am happy that my first dri-devel patch has been accepted.

Thanks,

Fabio 
> 
> > ---
> > 
> >  drivers/gpu/drm/drm_atomic.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_atomic.c
> > b/drivers/gpu/drm/drm_atomic.c
> > index 5b4547e0f775..46dceb51c90f 100644
> > --- a/drivers/gpu/drm/drm_atomic.c
> > +++ b/drivers/gpu/drm/drm_atomic.c
> > @@ -1302,8 +1302,8 @@ int drm_atomic_check_only(struct drm_atomic_state
> > *state)> 
> >  	struct drm_crtc_state *new_crtc_state;
> >  	struct drm_connector *conn;
> >  	struct drm_connector_state *conn_state;
> > 
> > -	unsigned requested_crtc = 0;
> > -	unsigned affected_crtc = 0;
> > +	unsigned int requested_crtc = 0;
> > +	unsigned int affected_crtc = 0;
> > 
> >  	int i, ret = 0;
> >  	
> >  	DRM_DEBUG_ATOMIC("checking %p\n", state);





