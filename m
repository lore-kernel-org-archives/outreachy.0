X-GM-THRID: 6952150809139216384
X-Received: by 2002:a05:600c:4f48:: with SMTP id m8mr3082418wmq.45.1618674349298;
        Sat, 17 Apr 2021 08:45:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls2131363wrx.3.gmail; Sat, 17
 Apr 2021 08:45:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdE4uVr3LGTVQR9BbSmpCTU0ojLNDLdhy6j2LUmqMo8jnK5+4pFYwR6Cp/wg7QYIlOFA/Y
X-Received: by 2002:adf:e491:: with SMTP id i17mr4794332wrm.314.1618674347843;
        Sat, 17 Apr 2021 08:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618674347; cv=none;
        d=google.com; s=arc-20160816;
        b=hI4wbZrtUBcs6WGVIye5zRjsNM5vHs89ZREW1nzdiwIq3wKLBeyFB8+9kQGVEBr/lc
         ZT2GWVoei/8nYc/m85uvgM4amQcYepejx70Vv3a6Y4a1O0+Kz/8OvZorUcScp+y4Aj/c
         VvqWKnJsfwEcEOlaxkikROZtT9JqR2jUVm2n0V1aO1rLZmuQA0ZIg5+E9HHxgl/JtnL7
         y6gOvC/iQ5rwbDJrT64bMOLq/D+sGjHnu9Xet9B5NzhMNHkbLzEbJXATFDgDyxu8pL+h
         A/8nqITf36o7QlFfI6nwTgdz69VfSoAEzNHDhazJVs/5+I/+j4C2bvNJ7ErTLIu3fZXH
         JzWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=ukUCkOaqgiryk3MogdoUmZ7uHOgUNz0xt6YjaeG8CeA=;
        b=0H0VV1dwhaYHLm8bA/KWlpKCh/PERgf3n55vl1BVONkEwekSan/5S8GmcwaiwNfXjj
         gng2IDxB8mmXLEFctCQORMWfxLk5DkSrJ5Qc4HOUAkM5jDFwOj2LkpEOf454qUcrxPKw
         haWmL6DoTbl88doap1rhAbpNWgGXxqvhCe06KIorhVh8sxPe+rmJdkRNwy1hAUtfaUrp
         extLi21UvDfV9ednyS9KixtW+ymPGK2oY2fyOHWTIr5WreXjF50uSDkqxZUXckGb2waC
         PP8FVsxDYazSkq5TLBw4wn3DB0piT38R6H8XUVlC5VTPGz6MIZB4Y3DHQ8axtXldWCVE
         kyAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p189si386752wmp.1.2021.04.17.08.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 08:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ACE5GV6xqoaVzV72HnR6BKrPwzb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roeQD2XbP+VIscVwphNzoAsK9aFzG85od2+MsFJekGDLroW?=
 =?us-ascii?q?65aLxlhLGC/xTFOwnTstFQzr1hda8WMqyUMXFfgdzh6Ae1V/YMqePmzImSie3T?=
 =?us-ascii?q?z2hgQGhRAsldxjx0BQqBHkp9SBMuP+tbKLOn+sFFqzC8EE54Uu2HABA+M9Trm8?=
 =?us-ascii?q?fGj9bPbxIAGnccmWuzpALt2frBHx+U0gx2aV5y6L0pmFKrrzDE?=
X-IronPort-AV: E=Sophos;i="5.82,230,1613430000"; 
   d="scan'208";a="378940764"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Apr 2021 17:45:47 +0200
Date: Sat, 17 Apr 2021 17:45:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, 
    Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
    Maxime Ripard <mripard@kernel.org>, 
    Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, 
    Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH Resend] drm/drm_bufs.c: In switch,
 add break in default case
In-Reply-To: <20210417153540.22017-1-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104171745391.2982@hadrien>
References: <20210417153540.22017-1-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Apr 2021, Fabio M. De Francesco wrote:

> Added a 'break' in the default case of a switch selection statement.

Why?

julia

>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/gpu/drm/drm_bufs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
> index e3d77dfefb0a..fc40aa0adf73 100644
> --- a/drivers/gpu/drm/drm_bufs.c
> +++ b/drivers/gpu/drm/drm_bufs.c
> @@ -79,7 +79,7 @@ static struct drm_map_list *drm_find_matching_map(struct drm_device *dev,
>  				return entry;
>  			break;
>  		default: /* Make gcc happy */
> -			;
> +			break;
>  		}
>  		if (entry->map->offset == map->offset)
>  			return entry;
> --
> 2.31.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210417153540.22017-1-fmdefrancesco%40gmail.com.
>

