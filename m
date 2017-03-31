X-GM-THRID: 6403243531754799104
X-Received: by 10.107.174.72 with SMTP id x69mr1514040ioe.50.1490944510609;
        Fri, 31 Mar 2017 00:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls20028636otb.2.gmail; Fri, 31 Mar
 2017 00:15:10 -0700 (PDT)
X-Received: by 10.31.168.212 with SMTP id r203mr1051970vke.10.1490944509988;
        Fri, 31 Mar 2017 00:15:09 -0700 (PDT)
Received: by 10.55.73.144 with SMTP id w138msqka;
        Thu, 30 Mar 2017 23:26:37 -0700 (PDT)
X-Received: by 10.46.74.2 with SMTP id x2mr432183lja.2.1490941596785;
        Thu, 30 Mar 2017 23:26:36 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id a126si93952wmd.2.2017.03.30.23.26.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 23:26:36 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c0c::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch;
       spf=neutral (google.com: 2a00:1450:400c:c0c::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr0-x242.google.com with SMTP id k6so16406437wre.3
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 23:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=V4WMY8rINm4EpXOK/xbtQLxfAl/DrnwLI6q1DBuR0Os=;
        b=KA+f4w7jvlqlbWp2inf+G+ytLmG8+OGequnCE+aLsVzktj0gzlEhBDIFwiOli1Qwuu
         Dw73FUaGTcFwPtbZPA8qvc/8zfg700LjRsMEgZJznTOff8KtF0I+JoxC73C4BQWpHjmH
         nPiV7uL2LSIkoMN5a927ocUWfTAuscvU/4llo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=V4WMY8rINm4EpXOK/xbtQLxfAl/DrnwLI6q1DBuR0Os=;
        b=bJx+BJfawuvqykTyhrRdMwJ6a1JTg2u9JtyjfwBLe3U8hUCEg9bIFybJEhvhqfGtQT
         GKLMckQaHxbTCk5tvbQKYvAwxqyo7HrvHAF++Vi1LxtWyrNfd6y2ymgZKiFwC8E/h+B4
         6nVBeErLK3ZYSnCUnBCBw3GT9D4BNW+XxwysqLSynQVeFLTjJ9xJgHFf/q0TCZ/UotRx
         MUsGfmZ4gVRrBBBcOX9+/jBAjB4ZS983yFm23J+IoXInF59JxuNFvMOw49/LKNM7r96z
         8fHlKEnt7tJtONsjQdcLNXIlOgtytX58Meesl48exIJXWQveZ9DyoVDYyKvQpRZDT+er
         4Anw==
X-Gm-Message-State: AFeK/H1HQ/9LPv3+zKy0laGRMVwt9NqGYRp78q/eDXdvVEnXFHkgAYNb4kw77HsO0ZNW/A==
X-Received: by 10.223.150.168 with SMTP id u37mr1269312wrb.184.1490941596491;
        Thu, 30 Mar 2017 23:26:36 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:563a:0:c2b5:dd51:f7b6:65bb])
        by smtp.gmail.com with ESMTPSA id e16sm5406238wra.62.2017.03.30.23.26.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 Mar 2017 23:26:35 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 31 Mar 2017 08:26:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: daniel.vetter@intel.com, jani.nikula@linux.intel.com,
	seanpaul@chromium.org, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, corbet@lwn.net,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH] drivers: gpu: drm: dr_fb_cma_helper: Fix kerneldoc
 comments
Message-ID: <20170331062632.fxkhe3aql2tdduft@phenom.ffwll.local>
Mail-Followup-To: Tamara Diaconita <diaconitatamara@gmail.com>,
	daniel.vetter@intel.com, jani.nikula@linux.intel.com,
	seanpaul@chromium.org, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, corbet@lwn.net,
	Tamara Diaconita <diaconita.tamara@gmail.com>
References: <20170330105507.6090-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170330105507.6090-1-diaconita.tamara@gmail.com>
X-Operating-System: Linux phenom 4.9.0-2-amd64 
User-Agent: NeoMutt/20170306 (1.8.0)

On Thu, Mar 30, 2017 at 01:55:07PM +0300, Tamara Diaconita wrote:
> Remove the description for the non-existing 'num_crtc' to fix the
> build warning: ./drivers/gpu/drm/drm_fb_cma_helper.c:557: warning:
> Excess function parameter 'num_crtc' description in
> 'drm_fbdev_cma_init'.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Not sure what this is generated against, but we've fixed this a while ago
already. Thanks anyway.
-Daniel

> ---
>  drivers/gpu/drm/drm_fb_cma_helper.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_fb_cma_helper.c b/drivers/gpu/drm/drm_fb_cma_helper.c
> index 596fabf..72aa32b 100644
> --- a/drivers/gpu/drm/drm_fb_cma_helper.c
> +++ b/drivers/gpu/drm/drm_fb_cma_helper.c
> @@ -547,7 +547,6 @@ EXPORT_SYMBOL_GPL(drm_fbdev_cma_init_with_funcs);
>   * drm_fbdev_cma_init() - Allocate and initializes a drm_fbdev_cma struct
>   * @dev: DRM device
>   * @preferred_bpp: Preferred bits per pixel for the device
> - * @num_crtc: Number of CRTCs
>   * @max_conn_count: Maximum number of connectors
>   *
>   * Returns a newly allocated drm_fbdev_cma struct or a ERR_PTR.
> -- 
> 2.9.3
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

