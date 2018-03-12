X-GM-THRID: 6531834360584208384
X-Received: by 2002:a19:9647:: with SMTP id y68-v6mr599024lfd.42.1520876088802;
        Mon, 12 Mar 2018 10:34:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:1942:: with SMTP id 63-v6ls1476644lfz.6.gmail; Mon, 12
 Mar 2018 10:34:47 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvAXZE0p/9Rmg5sCORertyRmmymHeTXkheuAxJIuDutSVeYGkTb5a1+8fSxXwxCy3TJQraq
X-Received: by 2002:a19:a1c6:: with SMTP id k189-v6mr368654lfe.40.1520876087011;
        Mon, 12 Mar 2018 10:34:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520876086; cv=none;
        d=google.com; s=arc-20160816;
        b=Th8VCsouDTruExaLwEnscE0uUVjrjI6oR48nRBIFhBRwRO4M0fCu31aGkSpEwolmCk
         CKrzr+DvUxnBerdvKAev6aQS/823OcQ5Q+/+Et2us/l9Xa16MKgGso9NgNIPN10WClLK
         98Tr041cOzBtOQuMCvO12mhhQUJl4CLS+ymtRtFZotNATVgpNI63SW8rQg2+S3XB3Vtj
         1HDH3er5CT+Kw0sRE9rSjLqTVQt+9JvEZTY5ExXezPta8WSc52D/cRGEvkMsNGNEbodw
         aUX/l47dOYmdpLVovUSaAS7H8GpgR6WajUfAXq0Yhn54upI93D2Scr73nQ+kqEN0+kc+
         nrlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=zRvlWbfsmfQafGAxMj/BK4VXx3MdEbwyi0dZB6s7r8I=;
        b=Sr08CYNGjGgBZ3qVETX2aRMOBXGIS6D4MkmQUChjX0TLaI5chpGzpF19JGGixlPDhz
         b5J6AcIFPu/OVKCm4BN88nJX0VoFU00OFFDbICB+mqd4zcJy5soZv7+axJkIAPgEKKQs
         wQidMF7fB66ub6+e2Ju/Rj3eHaky6QeTNQavwZQsWGzqqIYU1EohBX2gU3CmB16lER97
         0/Ohv3+vEM9YvMs73BJbozhMOJFNugPGply2Oy0O7d05Jcwj5mOSA8mOzyqqu9LfrxO7
         ZzWLwV3H7VwtmCq6mjQUrvPMG/zV4oyIxVUdZpOst4dzIIbVSwBnBhzBeGNbp80/A827
         Tupg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=A5aslViJ;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id w7-v6si239104lfc.2.2018.03.12.10.34.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Mar 2018 10:34:46 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=A5aslViJ;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x241.google.com with SMTP id q83so18325587wme.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Mar 2018 10:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zRvlWbfsmfQafGAxMj/BK4VXx3MdEbwyi0dZB6s7r8I=;
        b=A5aslViJTUpESjIoWRaUQeARnkU2t/MQRb4aaFWzEK6N2TEaU2OoT/d1431yMDAFMY
         gmb9DsEe87tYUSF0gDd9sycNxfnAQfa6y9Sy0csMzbQXJ6bostCUsKpZ5GuMlGr4xEqe
         3dy9lZD5oPZ92i68kNv9LYHQWecaOgMstq96Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=zRvlWbfsmfQafGAxMj/BK4VXx3MdEbwyi0dZB6s7r8I=;
        b=Cx1mJpuvi4bmBte8MEkoutDsj++4zuAcQ32s28NWmuQySE57WoMH3bhDRLzk+bLe5N
         u5KbCeTG/YlsL/NQLCQgqrK6x743fj4QTYZtOY3kp9ekiOQREBdvk9NXew49T197wG5J
         2uTnykd7zJlmChLXV8DoGjcyGtI8YfcRQrT4BrG28mtzfDKGK1h9y78KCTMJokdZk55U
         J/rDpD71peVZU1++ilvSE9IB7ADqVFmz5oNQ3TSE7QNJ4PSgiCJmNWmitlEMRj2R7NHd
         WQCBEcpWT9g6v4jnlSAmauRw6XyDA5+x5kfbcWh/wGFCTkiqxP+Lj4Vc4gojNM8MimD6
         dVqw==
X-Gm-Message-State: AElRT7HtesEEfITmx43ctlPOAPXBersmF44Obhd59EqzUncT0GTMgMPp
	LRCBf0C8VdQ3zXLpldaheucJTQ==
X-Received: by 10.80.151.39 with SMTP id c36mr11999372edb.3.1520876086316;
        Mon, 12 Mar 2018 10:34:46 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id y3sm5505092edb.92.2018.03.12.10.34.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Mar 2018 10:34:45 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 12 Mar 2018 18:34:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	VMware Graphics <linux-graphics-maintainer@vmware.com>,
	Sinclair Yeh <syeh@vmware.com>,
	Thomas Hellstrom <thellstrom@vmware.com>,
	David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
	seanpaul@chromium.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH DRM] drm/vmwgfx: replace drm_*_unreference with drm_*_put
Message-ID: <20180312173443.GP8589@phenom.ffwll.local>
References: <20180311233313.GA19721@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180311233313.GA19721@Haneen>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.9.3 (2018-01-21)

On Sun, Mar 11, 2018 at 05:33:13PM -0600, Haneen Mohammed wrote:
> This patch replace instances of drm_framebuffer_unreference with _put()
> suffix, because it is shorter and consistent with the kernel use of
> *_get/put() suffixes.
> This was done with the following Coccinelle script:
> 
> @r@
> expression e;
> @@
> 
> (
> -drm_framebuffer_reference(e);
> +drm_framebuffer_get(e);
> |
> -drm_framebuffer_unreference(e);
> +drm_framebuffer_put(e);
> )
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Sinclair/Thomas: Ok if I pull this in through drm-misc? Makes outreachy
applicant book-keeping easier since iirc the vmwgfx tree isn't in
linux-next. But ok if you want to merge it too.
-Daniel


> ---
>  drivers/gpu/drm/vmwgfx/vmwgfx_fb.c    | 2 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c b/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
> index d23a18a..be7d7fb 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
> @@ -500,7 +500,7 @@ static int vmw_fb_kms_detach(struct vmw_fb_par *par,
>  	}
>  
>  	if (cur_fb) {
> -		drm_framebuffer_unreference(cur_fb);
> +		drm_framebuffer_put(cur_fb);
>  		par->set_fb = NULL;
>  	}
>  
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
> index 67f8446..c5e8eae 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
> @@ -316,7 +316,7 @@ int vmw_present_ioctl(struct drm_device *dev, void *data,
>  out_no_surface:
>  	ttm_read_unlock(&dev_priv->reservation_sem);
>  out_no_ttm_lock:
> -	drm_framebuffer_unreference(fb);
> +	drm_framebuffer_put(fb);
>  out_no_fb:
>  	drm_modeset_unlock_all(dev);
>  out_no_copy:
> @@ -393,7 +393,7 @@ int vmw_present_readback_ioctl(struct drm_device *dev, void *data,
>  
>  	ttm_read_unlock(&dev_priv->reservation_sem);
>  out_no_ttm_lock:
> -	drm_framebuffer_unreference(fb);
> +	drm_framebuffer_put(fb);
>  out_no_fb:
>  	drm_modeset_unlock_all(dev);
>  out_no_copy:
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

