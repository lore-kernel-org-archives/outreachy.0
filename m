X-GM-THRID: 6470359344407904256
X-Received: by 10.223.172.196 with SMTP id o62mr801769wrc.10.1506669932901;
        Fri, 29 Sep 2017 00:25:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.83 with SMTP id 80ls512347wmk.1.canary-gmail; Fri, 29
 Sep 2017 00:25:32 -0700 (PDT)
X-Received: by 10.28.212.73 with SMTP id l70mr500673wmg.14.1506669932163;
        Fri, 29 Sep 2017 00:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506669932; cv=none;
        d=google.com; s=arc-20160816;
        b=I2k0UwKKJjm1WkVFjs16GJb21FaWbesU1dJMSCB5d2BR0rFpENs8ujC5BWw+4OpFXE
         yy931Joao+hCNfhLSy/kENWGdH8a0a+v/UEoGSCdHxnRrtp8TGS1HKwLmnMkQy9jY23e
         XtkV87fdt3jaokVO0BVMJv7w8IbGR+TAGVhm5f1/iSs7YYYZ2UxsTMUuEB29HnlXa0tn
         0ZLUJ4xzt2jSluXWYtQXJ0sSoPaMV0ME9e1AaMd3RZyWrsofRElcQQSGJgECRaWT7T/d
         A1L0tjlMaQXrm2vVJalhVNTJF29qzpV8xXKoYq8LINTwanet+uoMSkN/OfGK95GSF3ih
         YMXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=qh7pfbE6N25OeBUcLauyZbC2JCXmls9rXhroV4AfimU=;
        b=viUREJCeZQOs1B0yFfuwHpzSDtJdgMCnK7SB0R0I5ywzhPoIshE6oc04ARXdUWP1+7
         BgV/UnDbC9NF4ybmdnZ++LZ+doxO3fwQ7Sg4f3PnhlYTrin7COnftcQNfSQ8d49D2f9x
         ZVEyiNpMBzQB0SKJCZiTfkkxOsA7nt0aPQFSZ9rkxbD9nUnTgXPWs1Pjah1ZN3LlTVVg
         /1BwJKm/IVLHWlEkxYFFzE/WOEeaoadoYz/3/eq85WSs+s2/ab3LntoF3tjTKGSzrpyL
         ts0sL8QZ6hmLnd2KPszWRfvv6Hw1wlo6rW9Bj2rLM6sGZ1xDuvUYT6G5Cs+NNzhOZjW8
         mB+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=THZwtQ1N;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id b62si355105wmd.3.2017.09.29.00.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 00:25:32 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=THZwtQ1N;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id i131so571114wma.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 00:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qh7pfbE6N25OeBUcLauyZbC2JCXmls9rXhroV4AfimU=;
        b=THZwtQ1NgnclOigcP6shpyC4HZxHftssuQYakhc/k4mX/qHMoHSEo59uwTJAjjHoxs
         Q4ysfeUGBl2Spl2t8+UIQL1Pwes8r/hFhXumlDVWN2d+1vwRdp4eW7Z7LfmxVo7DvZYB
         f6ILiyiBS6Jshw+7EAO7WBqrkv/EyZrJuuxYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=qh7pfbE6N25OeBUcLauyZbC2JCXmls9rXhroV4AfimU=;
        b=Qks39zU1mbKDEF0UG3wF9IVYDAszUKsWloRh5G/50W7NhFENzxCzsqqQBoT3yuz3GP
         9t+9N4iUKONBO9x1YCOCVChfuWS8UXkA9ejkR2mQ04moQECVwH+QJqKAyrSs4aTxeCoD
         pM5z1rr9ZSeOFO0JfYfIdWFjbJ+sd0w2gyOGXIU7L3hYFJwfY6O1Zp6WIovd+mjI5y7d
         REQPRrfBGgPr30n8iBtN7GQJW1jMVBbJGtv1oLT30Ve0Nj9k53Mqj/z1m0oBHsLlp3oB
         jyw/zTnF9Pj88gIWuFIwB4hbTRVbgvEgBEfRoZLxBeqSwBXWil6OiAxD+gZVdlp2K0oH
         lQGQ==
X-Gm-Message-State: AHPjjUgzK+HqOjbvtUoAW6LOkrNnqn3WK6Je6CODLKrJuLBzZXAG+Q2x
	hCPLoe+JftATiGBlZKXaml8beQ==
X-Google-Smtp-Source: AOwi7QD8LQvIx290x10JwOu6nWX4Rvqc4kBCt9jsc1rEiMKq5SVnFP2i24lUt1Ao39VRcyfHgbWLhA==
X-Received: by 10.80.140.251 with SMTP id r56mr8460848edr.299.1506669931795;
        Fri, 29 Sep 2017 00:25:31 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id y8sm3628587edb.86.2017.09.29.00.25.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 29 Sep 2017 00:25:30 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 29 Sep 2017 09:25:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH] drm/armada: Remove unused #include <drmP.h>
Message-ID: <20170929072528.bwfgitxajy3hlo3b@phenom.ffwll.local>
References: <20170927073846.GA14352@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927073846.GA14352@Haneen>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Wed, Sep 27, 2017 at 01:38:46AM -0600, Haneen Mohammed wrote:
> Remove drmP.h as it is not needed anymore since nothing it
> defines is used in these files.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Applied, thanks.
-Daniel
> ---
>  drivers/gpu/drm/armada/armada_510.c   | 1 -
>  drivers/gpu/drm/armada/armada_drv.c   | 1 -
>  drivers/gpu/drm/armada/armada_fb.c    | 1 -
>  drivers/gpu/drm/armada/armada_fbdev.c | 1 -
>  drivers/gpu/drm/armada/armada_gem.c   | 1 -
>  5 files changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
> index ad3d2eb..41a784f 100644
> --- a/drivers/gpu/drm/armada/armada_510.c
> +++ b/drivers/gpu/drm/armada/armada_510.c
> @@ -9,7 +9,6 @@
>   */
>  #include <linux/clk.h>
>  #include <linux/io.h>
> -#include <drm/drmP.h>
>  #include <drm/drm_crtc_helper.h>
>  #include "armada_crtc.h"
>  #include "armada_drm.h"
> diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
> index c993bcc..17bb675 100644
> --- a/drivers/gpu/drm/armada/armada_drv.c
> +++ b/drivers/gpu/drm/armada/armada_drv.c
> @@ -9,7 +9,6 @@
>  #include <linux/component.h>
>  #include <linux/module.h>
>  #include <linux/of_graph.h>
> -#include <drm/drmP.h>
>  #include <drm/drm_crtc_helper.h>
>  #include <drm/drm_of.h>
>  #include "armada_crtc.h"
> diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
> index 51839c1..a38d5a0 100644
> --- a/drivers/gpu/drm/armada/armada_fb.c
> +++ b/drivers/gpu/drm/armada/armada_fb.c
> @@ -5,7 +5,6 @@
>   * it under the terms of the GNU General Public License version 2 as
>   * published by the Free Software Foundation.
>   */
> -#include <drm/drmP.h>
>  #include <drm/drm_crtc_helper.h>
>  #include <drm/drm_fb_helper.h>
>  #include "armada_drm.h"
> diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
> index cf6bad1..a2ce83f 100644
> --- a/drivers/gpu/drm/armada/armada_fbdev.c
> +++ b/drivers/gpu/drm/armada/armada_fbdev.c
> @@ -10,7 +10,6 @@
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  
> -#include <drm/drmP.h>
>  #include <drm/drm_fb_helper.h>
>  #include "armada_crtc.h"
>  #include "armada_drm.h"
> diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
> index 49d40aa..190280e 100644
> --- a/drivers/gpu/drm/armada/armada_gem.c
> +++ b/drivers/gpu/drm/armada/armada_gem.c
> @@ -8,7 +8,6 @@
>  #include <linux/dma-buf.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/shmem_fs.h>
> -#include <drm/drmP.h>
>  #include "armada_drm.h"
>  #include "armada_gem.h"
>  #include <drm/armada_drm.h>
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

