X-GM-THRID: 6470409000186806272
X-Received: by 10.28.88.197 with SMTP id m188mr210078wmb.4.1506515540380;
        Wed, 27 Sep 2017 05:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.133.188 with SMTP id 57ls404973wrt.2.gmail; Wed, 27 Sep
 2017 05:32:19 -0700 (PDT)
X-Received: by 10.223.175.194 with SMTP id y2mr135308wrd.8.1506515539236;
        Wed, 27 Sep 2017 05:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506515539; cv=none;
        d=google.com; s=arc-20160816;
        b=XccNjgQb/WFZgr0wr2HqKJphL+tG1GAhPfM/wd3oi3edgsUolACeTM7ITF8qh3Sw5u
         w8Nbib/Ofh7mvUySSIYEijp5OvZAALJ09jBXtMh0qq+m+pLvflrPSuQvdRI6Zpj+SRZj
         awb+tJNd9vdVL48DvWGcYTFTL44FsrebH2ylBsYTk6Vy2Q0QDKh8ATi/KBZQ0ArxxAGk
         uhMuaPnvvWOxAlaFcgRXdnGmxND5soyegjT8AbH9KnRbGZvYNywXAQS+SO7AbXlH6BwV
         TvsWhM7WjH/nORJCsrNVsDfA/oW1MQdPo4G4NZ80H0G4R4zyHjT7DO+BClV/s5Tt1vFM
         DI5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=3UefAJKM5tNYYBtXYe9z30TDz2ZxU+jbaCsUyHsX1wM=;
        b=mRyE76D4SIItigFprIJRDwinV+fdd0DYjMu01S9FgV6cBNMp6c862FvWObQJiapivi
         qq7Mo1Dh+zA/VET0zmqooE5HP3sOLAe1cZvMgtBq3l1PLyw60qS1tQ+rZtEM6uceB7NB
         g803Psv36RfNRQ16pMtXFMDet1PacYue/1j7YAdJ3UrwasI2iH5JBx+ojMlfByOqZkjd
         TI+ONuZVKLFlNrViZit+zIBCuoVwi+K3NIxUQK/zkDCx/cLrspjpop1tNZdo6rl9hd4l
         LMQklz4lvU0ohbJySNtQWeK79xs61PD0y9vHTHoz/W24Pg+jPx+EON5jgzZDxxCrfxN3
         lOrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=fviqC/0c;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id j4si516288wmi.2.2017.09.27.05.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 05:32:19 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=fviqC/0c;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id f4so11282423wmh.4
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 05:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3UefAJKM5tNYYBtXYe9z30TDz2ZxU+jbaCsUyHsX1wM=;
        b=fviqC/0c10LQIWJ4IhLv9qWDWD+bceDVbX9TeEUjvSUvyPDvJNM9X3usSDxVMfLMc5
         a24yrVKZNPYE4b+9XZ5tCJToaJ5O8TZOBNDyuAI14SdYrBgt1e2rBrrf7UFOQVeFLJ4j
         h6wLpV63hjaYTiwrAt/Hr1o9XbGCVfHfEyDMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=3UefAJKM5tNYYBtXYe9z30TDz2ZxU+jbaCsUyHsX1wM=;
        b=DU4ggdxG61sRHCohm9Ct+loLQ0qqaO8BsunzCwAFXtYDzgxxugMtyg4IDYZbQ/GaX+
         MqGIVnDLXpFtxGqX80ZGRvWqBZnWgjf3B+Ozsk6/kgVry2IkBR69rL/B4dnM51Elc7hH
         DKnL3Egs6bvThdjQ0DLgvdPjZEWr5z0MzZR9n9f6afdFV8qHNaDI5EcAyX2HgOdZeo5H
         LdhGzn1MBw4E3WxKjl0QG9maFfFqPayUS+uqYgSAIk0g+nY9czSNkV+T7jv2uUTjzHvL
         QdvljLJW+CbvWYtpyxVlv18iW9xuERY5XRSG5NIKdXXSN5uOZcI4II5Z9zwvG79d4av9
         j2lQ==
X-Gm-Message-State: AHPjjUgCm5ljtyy1Fs9PLdb9QuJUkFKw2mnw6+HfDsc1T21W4046v7U3
	QdV1FqXJcW5TR8F81mBxvzLPmpFK
X-Google-Smtp-Source: AOwi7QCsOHj0j5iQzmvNVy6RROfZy0FQL/OOWuRWe7GjryY5rNZTutfNW6HxDPF7Abs+HR7BfGwTVw==
X-Received: by 10.80.134.88 with SMTP id 24mr1816673edt.47.1506515538848;
        Wed, 27 Sep 2017 05:32:18 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id n49sm5011664edd.40.2017.09.27.05.32.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Sep 2017 05:32:18 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 Sep 2017 14:32:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: dri-devel@lists.freedesktop.org, daniel@ffwll.ch, seanpaul@chromium.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/Documentation: Refine TODO for backlight helpers in
 tinydrm
Message-ID: <20170927123216.4mcetjedytpaqmxg@phenom.ffwll.local>
References: <20170927105116.GA30391@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927105116.GA30391@meghana-HP-Pavilion-Notebook>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Wed, Sep 27, 2017 at 04:21:23PM +0530, Meghana Madhyastha wrote:
> Add a summary which resulted from discussions on what should
> be done to refactor backlight helpers in tinydrm so that
> they can be used in other drivers as well.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Applied, thanks.

One thing that just crossed my mind is that we could still move
tinydrm_of_find_backlight into drm_of.c (and rename to
drm_of_find_backlight). Plus check out all other drivers for similar code.

That should be a much more well defined task, suitable for the application
period. Signed up?

Thanks, Daniel

> ---
>  Documentation/gpu/todo.rst | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> index 22af55d..1acf84fe 100644
> --- a/Documentation/gpu/todo.rst
> +++ b/Documentation/gpu/todo.rst
> @@ -353,7 +353,16 @@ those drivers as simple as possible, so lots of room for refactoring:
>  - backlight helpers, probably best to put them into a new drm_backlight.c.
>    This is because drivers/video is de-facto unmaintained. We could also
>    move drivers/video/backlight to drivers/gpu/backlight and take it all
> -  over within drm-misc, but that's more work.
> +  over within drm-misc, but that's more work. Backlight helpers require a fair
> +  bit of reworking and refactoring. A simple example is the enabling of a backlight.
> +  Tinydrm has helpers for this. It would be good if other drivers can also use the
> +  helper. However, there are various cases we need to consider i.e different
> +  drivers seem to have different ways of enabling/disabling a backlight.
> +  We also need to consider the backlight drivers (like gpio_backlight). The situation
> +  is further complicated by the fact that the backlight is tied to fbdev
> +  via fb_notifier_callback() which has complicated logic. For further details, refer
> +  to the following discussion thread:
> +  https://groups.google.com/forum/#!topic/outreachy-kernel/8rBe30lwtdA
>  
>  - spi helpers, probably best put into spi core/helper code. Thierry said
>    the spi maintainer is fast&reactive, so shouldn't be a big issue.
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

