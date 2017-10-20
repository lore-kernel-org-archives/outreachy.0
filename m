X-GM-THRID: 6475500386308325376
X-Received: by 10.176.9.223 with SMTP id e31mr2904217uah.54.1508519877926;
        Fri, 20 Oct 2017 10:17:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.131.146 with SMTP id f140ls2421726vkd.13.gmail; Fri, 20 Oct
 2017 10:17:56 -0700 (PDT)
X-Received: by 10.31.154.202 with SMTP id c193mr2726975vke.6.1508519876895;
        Fri, 20 Oct 2017 10:17:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508519876; cv=none;
        d=google.com; s=arc-20160816;
        b=NDl1FhAg5ho9f1xUhYRGGSn/7Y/5oBqH5E9hYK0r25uo6hYxlx7F/7z3RoufaXxwra
         loGo0m0g2K4/ZfS6D289Gz1Crr1ByEJ4o7c6V9dbgx9MxF1uPHdlP7AtBl9Zk+yWIHpo
         3Glvmkl8+hEe/GLFrCpnTzqB/eTsvdgSop7MzhrpwRsGyWNYRdMMrAzg31G8y5tDFsqQ
         4VvBAT4bLtaPTJVRlmmke0FcxmIr3sLsarXGDpPkj6CEw/aeqUpkZBH9t6Zj4OLcgJQ/
         K7YCsljyyS6SLAR4jjLoXoLq/9AGPCQy9hzU/xmlQzdxzvIPlyQsI1IB/3Lq3UOxoaPO
         Ognw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=IE8k6hoiBLZnIhAyeoxElmjazU0Qy7TnU2arC/c+ac0=;
        b=kYMmMG/6utSMCdqK6Rlxlkyc+U0OydsLQu0qTX9U0hilk9q50slnVzK6EtfD4YmnSU
         fggWJc/+jFZYsOj8mRnYrtOzXOtPyTJNz0HXCV0RGPqWO/c58ddEHHt8Q+QE0e+8YAjO
         56rtj+O574shjGmGgOESl6s75tFRlUp4c9hkg5HCABb/JCM0RcYd96dbpHGmPbyl+Wve
         YXdfI/wUuGaS65pzz8NGOXP5JZHq3EL9vpKyb+Ic/ke8jPAPWJF3UaqJiZJ6D21bmfrx
         +Fv6FaIXbPgC6MjdNilzcL29Yzw7bO7Wph/0zm0o/VnMgGaYad3fZ4QM9d0PFWT+8TTg
         yFNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IOum7Ymr;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id d4si92893vkh.0.2017.10.20.10.17.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Oct 2017 10:17:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IOum7Ymr;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-it0-x241.google.com with SMTP id f187so14789575itb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 10:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IE8k6hoiBLZnIhAyeoxElmjazU0Qy7TnU2arC/c+ac0=;
        b=IOum7Ymr1zv67yQgABTwO3Q38N+82GXl/r3tBEgSv9Mmsxy24fHSwz4rLf8SUPr5rA
         w7n5J589LaJGUAnDRau8lJUSQM3GZX+TvMOjU56DTqcnw7bRoc4S3zIl1+ia5hx3XGrn
         T5D8rhvSef1VNAsVB2gxaog+SIa4bLDVoRFRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IE8k6hoiBLZnIhAyeoxElmjazU0Qy7TnU2arC/c+ac0=;
        b=AmDcrID2j2+iDMeUq3D52o+WWPzHZa/9UqP5C0ylJL2VrwieLFK7+TAd2rJ5+f6+e6
         JKDK/WlKZWncq2BwJChMweCr4iacFS7jnWq8whGEOoewCa/s8pA9psRMSCvs75LVVcC+
         9e1Dmhz05lSTHG0O/9SnkAzogingADEcH3G6h8l9744UnaI8FyAacVOePv32+rsygzDp
         VqDoaosIKOrYaeFdakQJpk4ZFIWB/S8hqqdkmcrINLcxw1gFcANKPMIMxH34815kMwrI
         P0ryxAV6pIYJDibZMHl0nLywPw6TRb1po7T4T6Wd/+i9lOtlDPjQ0y4qNKQ/bG6mhgTU
         EyEQ==
X-Gm-Message-State: AMCzsaXAQZwrGddo86z96p45NKYx3w49wDfvhR5jP+j2YuC1GBbaUoaU
	e6kmoZAkkdIIaaA0dPnnrzDeMkv5LVU=
X-Google-Smtp-Source: ABhQp+QJohOMF+p+3c2zrNjcM67LiIx78GGoCc+CzVP+y26o9gtBX8bsfBLMiFHbznAJsyHESqmyLQ==
X-Received: by 10.36.127.202 with SMTP id r193mr3754795itc.117.1508519876349;
        Fri, 20 Oct 2017 10:17:56 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:0:f685:3152:9ba1:429a])
        by smtp.gmail.com with ESMTPSA id e142sm707075ite.28.2017.10.20.10.17.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 20 Oct 2017 10:17:55 -0700 (PDT)
Date: Fri, 20 Oct 2017 13:17:55 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH v4 0/2] drm: Move debug macros out of drmP.h
Message-ID: <20171020171755.loccvo5dngdblird@art_vandelay>
References: <cover.1508297716.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508297716.git.hamohammed.sa@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

On Tue, Oct 17, 2017 at 10:21:19PM -0600, Haneen Mohammed wrote:
> This patchset move debug macros from drmP.h to drm_print.h and move
> printing related functions used by the debug macros from drm_drv.[hc]
> to drm_print.[hc].
> In addition, it fixes old comment style.
> 
> Changes in v4:
> - Move DRM_UT_ debug messaging macros from drmP.h to drm_print.h.
> 
> Changes in v3:
> - Move debug macros and print functions into drm_print.[hc] instead of
> introducing drm_debug.[hc].
> 
> Haneen Mohammed (2):
>   drm: Move debug macros out of drmP.h
>   drm/print: Update old comment style

Applied to drm-misc-next.

Thanks!

Sean

> 
>  drivers/gpu/drm/drm_drv.c   |  47 -----------
>  drivers/gpu/drm/drm_print.c |  47 +++++++++++
>  include/drm/drmP.h          | 193 +-------------------------------------------
>  include/drm/drm_drv.h       |   7 --
>  include/drm/drm_print.h     | 192 +++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 240 insertions(+), 246 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

