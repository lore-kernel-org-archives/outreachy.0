X-GM-THRID: 6470133937327833088
X-Received: by 10.28.55.209 with SMTP id e200mr110480wma.0.1506502413191;
        Wed, 27 Sep 2017 01:53:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.71 with SMTP id p68ls264086wmg.2.gmail; Wed, 27 Sep
 2017 01:53:32 -0700 (PDT)
X-Received: by 10.223.184.197 with SMTP id c5mr56341wrg.17.1506502412673;
        Wed, 27 Sep 2017 01:53:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506502412; cv=none;
        d=google.com; s=arc-20160816;
        b=iahmOH86JqVSWrhAXB8Cq9P3xeqqxkBBCsXO+dzz7wocza2xu26m8za/PQuBxz/WuR
         ByjY5rCRJWTyKX0TcwXbm7hqNJpktkGlccX5hw+/xouu9VhsK1MHdvthk1r33iKzRLEf
         0rRNoIIvGSWNd+PzMZ21CrMZ/XQaovfhd0jTB99cwuNpVXv7gMcIH+NPfzf9DBIGxwou
         hVQ2umhitL9zkHw+7/sybppF7R7Rcis9nvKZKKQ+XGZetw/4cNU8/MGBRlWGOsm4+LB+
         3Se+Afj3SSBuE1ypMdXCapJoyLgS30x2j/ALkUu4g+eFGdR9UhxAzYrQY1tjUcyKCvkP
         QW9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=OeH+b3HYx87koBzBDl1Ax7VL8XjCL5X5BW6XezD1s84=;
        b=ms+GNrtOg6KN23FZOlq/QqYLKGA35lmHgxwduR20ydxRYNvcOs/WJ7pDmXXNqGC3JU
         YePMXaKMP+ta/L67+K99olkfPlniuMyk1jCRfOX6/bRnqHPiQDu7rta9VI/j2xlSSPYa
         X6+W5lKaGdMxuTkLpuHpGnevQcbALFGgiaEif8SFsf4i1BltQyHAgztAFCtTHLIcj7ff
         /l5QoGGgP1gosDW7kF7Yi3SmMbESCymYTeu8Jev7ZNa3O3ntEDjkWS+FM7DY2POL0c56
         oqwyGkCecm1MLsKDmV668oQZpiiAOGM3ht6MttZCn0mUzr3mgD8WaK+s2OItNhEgC10r
         WhpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=F/m8W9O7;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id j4si443913wmi.2.2017.09.27.01.53.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 01:53:32 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=F/m8W9O7;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id i131so10844172wma.1
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 01:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OeH+b3HYx87koBzBDl1Ax7VL8XjCL5X5BW6XezD1s84=;
        b=F/m8W9O7wwKnXSEIlEBV5dRYCPH2l0S8/Vg6ZbiNh6f9PBv/4U62cRDKElzmHNrE/H
         tBtfiZNGns26sKCaugZxHtw3qXzkYrgmTNc0p2T4zvasvLXUgMpIZIrMkzPWpm6Ta52o
         RA6Cbzc5mVeCbL5oH0KJeVhiGxmSvDVXNTp8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=OeH+b3HYx87koBzBDl1Ax7VL8XjCL5X5BW6XezD1s84=;
        b=baLWecRLKrPMSKF5CbX2a4ltU2XK2/xWO2XJB5Np2du9wpwsqK/VQwBbb4LcecnT+g
         V3wlyD7pwXcE8vxjP1pzgNj1QKD4kdqCZyWXlwsmGO0AgxUS6hCZYbkRHYJzxswGj/Wg
         bHjAnjmLyWN1tPufBVvoq5TnUaI3oKUc8OdG5xeL/EEx6EZchOzQAd9HKoDYOJ+1t/MM
         1zvxJ+Rg1JsZPAL7oh9qGJXIKFK1L/qyS8SMKt6tQc3WW+K5IFiNDDZrblwVM2PPxeVW
         K8fEHx/zg7qp3BkaauJFBTMXOdOm7iCIR/+pWMKY1yXHN//4lHO0J9wgmc8Bo6EH47xA
         22fw==
X-Gm-Message-State: AHPjjUiVlXyfSpGxhJMlwfzC7gwC32Kr+KHj7XF/ukacsp49qOSI9HQx
	OyBX5g9byxRwMON+syGdFVpkaw==
X-Google-Smtp-Source: AOwi7QCCXUUQaZJbonfvlV4mLXYXQ8OYo50ET3kt3AiYuktyfFawxqNKmmp1aSI5wiGqRQ/aWQV+PQ==
X-Received: by 10.80.174.36 with SMTP id c33mr1047926edd.191.1506502412405;
        Wed, 27 Sep 2017 01:53:32 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id g2sm2265775eda.23.2017.09.27.01.53.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Sep 2017 01:53:31 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 Sep 2017 10:53:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm/core: clean up references to
 drm_dev_unref()
Message-ID: <20170927085329.mim4cyjgwj5b3qh2@phenom.ffwll.local>
References: <20170926170400.GA7671@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170926170400.GA7671@aishwarya>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Tue, Sep 26, 2017 at 10:34:00PM +0530, Aishwarya Pant wrote:
> This is a continuation of a previous commit ("drm: introduce drm_dev_{get/put}
> functions") to replace all references to drm_dev_unref() in drm core files with
> drm_dev_put().
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
> This patch is on top of branch drm-misc-next of drm-misc tree. I hope that's the
> right one.

Yup.

Applied, thanks for your patch.
-Daniel

> 
>  drivers/gpu/drm/drm_pci.c   | 2 +-
>  drivers/gpu/drm/drm_prime.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_pci.c b/drivers/gpu/drm/drm_pci.c
> index 1235c98..4db9c51 100644
> --- a/drivers/gpu/drm/drm_pci.c
> +++ b/drivers/gpu/drm/drm_pci.c
> @@ -274,7 +274,7 @@ int drm_get_pci_dev(struct pci_dev *pdev, const struct pci_device_id *ent,
>  	drm_pci_agp_destroy(dev);
>  	pci_disable_device(pdev);
>  err_free:
> -	drm_dev_unref(dev);
> +	drm_dev_put(dev);
>  	return ret;
>  }
>  EXPORT_SYMBOL(drm_get_pci_dev);
> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index 782b95e..8de93a2 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -342,7 +342,7 @@ void drm_gem_dmabuf_release(struct dma_buf *dma_buf)
>  	/* drop the reference on the export fd holds */
>  	drm_gem_object_put_unlocked(obj);
>  
> -	drm_dev_unref(dev);
> +	drm_dev_put(dev);
>  }
>  EXPORT_SYMBOL(drm_gem_dmabuf_release);
>  
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926170400.GA7671%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

