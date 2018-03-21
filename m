X-GM-THRID: 6534991187044990976
X-Received: by 10.99.120.202 with SMTP id t193mr6078210pgc.154.1521641384835;
        Wed, 21 Mar 2018 07:09:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:28c1:: with SMTP id f59-v6ls1666429plb.1.gmail; Wed,
 21 Mar 2018 07:09:43 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuB7mj5X9yvANSEgD/aln9EBAT+8VC3CQZTdog8b7EICIKt1Vdfy0urnWgmxQQ3/JUeNCVH
X-Received: by 2002:a17:902:7883:: with SMTP id q3-v6mr7253600pll.23.1521641383665;
        Wed, 21 Mar 2018 07:09:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521641383; cv=none;
        d=google.com; s=arc-20160816;
        b=VxypkvodcFkdg0xbNDeLCSdbhXC4imW6XeMSmnAKCgzfTjc3yKT+CnjneRVZLIS7mn
         XO48a9KSTl6FPDduna74trjtdo/OlNareF6+0+RgCWOPIKUG47icWy/vZQvdLG3BoOAH
         wPCZIhiTX63TwDEYgU1RTlb48c6S9stbKJLtORoYb7CVK74Bu37O5ovyVjn/S/vRRG7x
         r2g1Wu2CplyGMt2WmRzRB8P92GzqcuHFAqCWQrenwJsnja1fqGB21PhR1h+lwbM3KyON
         I9wVNUyCr6VICkqVo0ULiFnaSeISiqXYqIQIerTc2P1Orapsbof2iUz79hcOo6DoLv3f
         05PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=cubat8L1r7+uh0V8ja7yEX8VUbJMrp6U8wS3v7qRiAA=;
        b=Cmq5Mrpyn3JeXm6Jmqt++fsu6fPHWnfut7MTHGhEP3KNWyyf7qwez4fAlM8i+/vW59
         kEoST7IHIi8jv7ETmdc8kdhbWnjOojDTZXg0+mP3vuhxOuxY0G/4UJfi4ZdAYbp0N2n5
         JHN7/9198KAjAWZVPpd49pu4rQBh1I1BYAPGZcHhbU20mvLM82ajKL5cSt3t/mTLBigT
         VV3Mkdelf4otqPOJd8kG318N0fC7BIBYl6k+Tst50nX2sjoblS3nQHzTNHVNInahbXgV
         gLhIn0pYL0n9dFi0V9UTH/BaZMUM5GcOKgcm+01DsoJix19OwT9KkvBiFHYxrJa4hQAK
         DCNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XSfb9tNK;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::233 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x233.google.com (mail-yw0-x233.google.com. [2607:f8b0:4002:c05::233])
        by gmr-mx.google.com with ESMTPS id f9si100303pgq.2.2018.03.21.07.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Mar 2018 07:09:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::233 as permitted sender) client-ip=2607:f8b0:4002:c05::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XSfb9tNK;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::233 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x233.google.com with SMTP id v130so1408704ywa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Mar 2018 07:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cubat8L1r7+uh0V8ja7yEX8VUbJMrp6U8wS3v7qRiAA=;
        b=XSfb9tNKHJt6/bbtQfNG9lxfTIvOGehJIkBQ2F/NCNlAFLhywq63Ejrm6kVgs5UY7a
         ZAzv9hVk08q1ab5lBpLsmo598O6YQXeLi2GHX0SWMkiJGNCsaDV5PK0cQ8LSCQkuv+yg
         qHhgdxeGWlrxHfKrbUHDJlxHZeJADDPmSbA3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cubat8L1r7+uh0V8ja7yEX8VUbJMrp6U8wS3v7qRiAA=;
        b=UDWgt4sb9wgpr9zN3Zbw4kRZUQWYT2inCfymjJsf6tfaeR1IqEoykSW8DDGAPYDBqG
         z4AwsPSXLc365ItlVJ89rHnTFSB1F8Cbf7fYLqNtvw/Gtkzu0QsDODjjOmgy0q14gMhS
         KNL6PzycROytIN51nizQENKSri5DsOI8FugiICt4Ci9M4yce+8e20X4AwkATRGRsruSR
         56S1wfRhtN4C+Vb33n8lskMunVGhB8e+mKLtTHvp8IMXQdK9M2IyrJhateK5m38sUcmF
         n+9c683JjY+VZ4rkU8GiPcUbf2bNAhV2BpnBQqdGEaYvClmBuqtl00CVhFm/xNnFPdWZ
         nP/A==
X-Gm-Message-State: AElRT7HfZ4w3XZeKkekKKS6UOEjgtXIr+ZCnZ7RM4LxazNjGdpsxPraC
	9gPJgGbKasFR1rb6HS5HDL/DMg==
X-Received: by 10.129.51.145 with SMTP id z139mr12007127ywz.512.1521641383299;
        Wed, 21 Mar 2018 07:09:43 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:11:ad55:b1db:adfe:3b9f])
        by smtp.gmail.com with ESMTPSA id p4sm1576476ywb.47.2018.03.21.07.09.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 21 Mar 2018 07:09:42 -0700 (PDT)
Date: Wed, 21 Mar 2018 10:09:42 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	seanpaul@chromium.org, daniel.vetter@intel.com
Subject: Re: [PATCH DRM] drm/zte: Replace include drmP.h with drm_print.h
Message-ID: <20180321140942.GT223881@art_vandelay>
References: <20180320114320.GA23062@haneen-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180320114320.GA23062@haneen-VirtualBox>
User-Agent: Mutt/1.9.2 (2017-12-15)

On Tue, Mar 20, 2018 at 07:43:20AM -0400, Haneen Mohammed wrote:
> Remove drmP.h as it is not needed anymore since nothing it defines is
> used in these files and use drm_print.h instead as these files are using
> the debug macros defined there.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Thanks for the patch, Haneen, this lgtm.

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/zte/zx_drm_drv.c | 2 +-
>  drivers/gpu/drm/zte/zx_hdmi.c    | 2 +-
>  drivers/gpu/drm/zte/zx_plane.c   | 2 +-
>  drivers/gpu/drm/zte/zx_tvenc.c   | 2 +-
>  drivers/gpu/drm/zte/zx_vga.c     | 2 +-
>  drivers/gpu/drm/zte/zx_vou.c     | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/zte/zx_drm_drv.c b/drivers/gpu/drm/zte/zx_drm_drv.c
> index 6f4205e8..f375cb0 100644
> --- a/drivers/gpu/drm/zte/zx_drm_drv.c
> +++ b/drivers/gpu/drm/zte/zx_drm_drv.c
> @@ -24,7 +24,7 @@
>  #include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
>  #include <drm/drm_of.h>
> -#include <drm/drmP.h>
> +#include <drm/drm_print.h>
>  
>  #include "zx_drm_drv.h"
>  #include "zx_vou.h"
> diff --git a/drivers/gpu/drm/zte/zx_hdmi.c b/drivers/gpu/drm/zte/zx_hdmi.c
> index 13ea90f..4cc9ebd 100644
> --- a/drivers/gpu/drm/zte/zx_hdmi.c
> +++ b/drivers/gpu/drm/zte/zx_hdmi.c
> @@ -23,7 +23,7 @@
>  #include <drm/drm_crtc_helper.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_of.h>
> -#include <drm/drmP.h>
> +#include <drm/drm_print.h>
>  
>  #include <sound/hdmi-codec.h>
>  
> diff --git a/drivers/gpu/drm/zte/zx_plane.c b/drivers/gpu/drm/zte/zx_plane.c
> index 68fd2e2..eeeea99 100644
> --- a/drivers/gpu/drm/zte/zx_plane.c
> +++ b/drivers/gpu/drm/zte/zx_plane.c
> @@ -14,7 +14,7 @@
>  #include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_modeset_helper_vtables.h>
>  #include <drm/drm_plane_helper.h>
> -#include <drm/drmP.h>
> +#include <drm/drm_print.h>
>  
>  #include "zx_common_regs.h"
>  #include "zx_drm_drv.h"
> diff --git a/drivers/gpu/drm/zte/zx_tvenc.c b/drivers/gpu/drm/zte/zx_tvenc.c
> index 0de1a71..355b7fb 100644
> --- a/drivers/gpu/drm/zte/zx_tvenc.c
> +++ b/drivers/gpu/drm/zte/zx_tvenc.c
> @@ -15,7 +15,7 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc_helper.h>
> -#include <drm/drmP.h>
> +#include <drm/drm_print.h>
>  
>  #include "zx_drm_drv.h"
>  #include "zx_tvenc_regs.h"
> diff --git a/drivers/gpu/drm/zte/zx_vga.c b/drivers/gpu/drm/zte/zx_vga.c
> index 3e7e33c..9d18e8a 100644
> --- a/drivers/gpu/drm/zte/zx_vga.c
> +++ b/drivers/gpu/drm/zte/zx_vga.c
> @@ -14,7 +14,7 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc_helper.h>
> -#include <drm/drmP.h>
> +#include <drm/drm_print.h>
>  
>  #include "zx_drm_drv.h"
>  #include "zx_vga_regs.h"
> diff --git a/drivers/gpu/drm/zte/zx_vou.c b/drivers/gpu/drm/zte/zx_vou.c
> index 7491813..7f49c1f 100644
> --- a/drivers/gpu/drm/zte/zx_vou.c
> +++ b/drivers/gpu/drm/zte/zx_vou.c
> @@ -21,7 +21,7 @@
>  #include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_plane_helper.h>
> -#include <drm/drmP.h>
> +#include <drm/drm_print.h>
>  
>  #include "zx_common_regs.h"
>  #include "zx_drm_drv.h"
> -- 
> 2.7.4
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

