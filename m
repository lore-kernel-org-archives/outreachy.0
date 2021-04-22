X-GM-THRID: 6954012466570330112
X-Received: by 2002:a05:6512:3741:: with SMTP id a1mr3205857lfs.121.1619110266811;
        Thu, 22 Apr 2021 09:51:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:890b:: with SMTP id d11ls1569960lji.9.gmail; Thu, 22 Apr
 2021 09:51:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyT74ZvICPjXm+ljMPOeP5QjdZNfXAU7m/0eq2+47ffkncsxbWsrdycyYJN86SbhHxIxYh4
X-Received: by 2002:a2e:7a09:: with SMTP id v9mr2970922ljc.503.1619110265013;
        Thu, 22 Apr 2021 09:51:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619110265; cv=none;
        d=google.com; s=arc-20160816;
        b=NGtbUPkAvMPhlcqzfu3DJI2rmJPyuZg5oV53tF0eDELYEU6c+V1R8GAlmsPW9Vo8UU
         nc3Fe+YfRG0PiP8tGKMP9SFcdsRrv45I6OW2lQU/dnRCBjGFCy1/50H7mB06Zj255+T2
         uNuPyX36p2RCzpJNZFP+KGF4Bp2OMbYmUVLHfn9dZSdeTRWOUTwkCYyjnaJvWtrAX4Mz
         faSFwnBgbbHc1I984PhIOGVJY/Ewigl/VMaE7nVn8a1hKavO1hFytnngIjviR8pbBGgv
         Q0NCtpF1G9ryvLPfGWJBKhONhj0pgRS2bzvZpTlMj1KpeNR5PYm57QLOjO9F+DVpCCsQ
         6ACw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2pmAAOlphVEHdnesrIql5j61oUTICxEPDYF38ZYro+4=;
        b=Bw+fUC4AKvCX3Kl5w7M4RvC/P/rmt73ZmSTUbqxz/5/QhJS9XZDq1cXXMfu+dRFG+U
         UBLtU6+u+Dfxtn5DXx6BBMFdpPpOZ+A9tkKhX1b6kAHsPsiqkkOQ/m5ZVK8I3flUuhkk
         jfAJIKGavTus7YSRp/jlABV6rbipNUzmSjs1CRSnLztKi8NXlHtrdknmN6puG/k5vMb1
         7Zu0/ivXFSZyC5OomyRnIApbNrL91R+Hj2jVNM3fS55SmodJsDM2KrF6UgzcVuJ4+6o5
         e5l7xUvVvc10L0l4arscGTjxM82/vk3YVqZ97Gj5SHdowkV4+8k0rRL3GBSoL4mdd4Fi
         anDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="XNUj/TZ/";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id u11si421663lji.3.2021.04.22.09.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 09:51:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="XNUj/TZ/";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2pmAAOlphVEHdnesrIql5j61oUTICxEPDYF38ZYro+4=; b=XNUj/TZ/3Y5CP92TUWGlGR0b9l
	pKHKyqo2nzYRqDSeP5P+cBk5x0uyLs85EEm9ZdnX1toRiu5tBaefkIV8uNQEmbMYgj4k9SRL37TjN
	w/ZBpVmEq7SPKecX+9zWgeAlkMiS9THCHJOQ00ygQ+vpoTb1UzRgTKAWZz+OXBSq7mDQR07ncYw0h
	eO8jaG5ZMKTJeCQm8lf6weyjKzVPasCXtbe2680rV3wgev+/6E5m2I51rVKWJvtquRMmwXruAoxIw
	W1neIHx3RD371qXEEPpsoujjN7wvmxiLidWLL5hraUrty3K2phXSTgNV19bwBe7TBiavwJJSUGMkS
	54QGLypQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lZcXC-000Xk6-DC; Thu, 22 Apr 2021 16:50:42 +0000
Date: Thu, 22 Apr 2021 17:50:34 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [PATCH] drm/amd/amdgpu/amdgpu_drv.c: Replace
 drm_modeset_lock_all with drm_modeset_lock
Message-ID: <20210422165034.GP3596236@casper.infradead.org>
References: <20210422155951.6314-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210422155951.6314-1-fmdefrancesco@gmail.com>

On Thu, Apr 22, 2021 at 05:59:51PM +0200, Fabio M. De Francesco wrote:
> -		drm_modeset_lock_all(drm_dev);
> -
>  		drm_for_each_crtc(crtc, drm_dev) {
> +			drm_modeset_lock(&crtc->mutex, NULL);
>  			if (crtc->state->active) {
>  				ret = -EBUSY;
> -				break;
>  			}
> +			drm_modeset_unlock(&crtc->mutex);
> +			if (ret < 0)
> +				break;
>  		}
>  
> -		drm_modeset_unlock_all(drm_dev);
> -

I might remove the {} around ret = -EBUSY, but this is good.

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>

