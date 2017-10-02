X-GM-THRID: 6470705412124442624
X-Received: by 10.223.172.196 with SMTP id o62mr1478301wrc.10.1506931100604;
        Mon, 02 Oct 2017 00:58:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.131 with SMTP id u125ls1873973wmd.0.gmail; Mon, 02 Oct
 2017 00:58:19 -0700 (PDT)
X-Received: by 10.223.138.151 with SMTP id y23mr1448486wry.21.1506931099573;
        Mon, 02 Oct 2017 00:58:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506931099; cv=none;
        d=google.com; s=arc-20160816;
        b=awPOkIzObOA8SrIvBUTnNrnbgjQrH7ui2dDjA9or9yRl9zrISW/7a2ye93fIPed0PW
         Vj2EPiRz+r4jAW9s/4nnfqaJSh90yyHr+VLMJwrhRzHa06CB9NiS4FzeGNxBuuP/DiaT
         HQ5w2sqGipaz5XX8QP/TzbywefvuOEPY0Y5qvCgqA/T+EjlH1daYLsEl5koqlXznAjNK
         NATJy+VD933N3/In85CCMHVnkQwtASEwEzG9Ob4URXyJgggP0QRdMlrHPg0YKYZ5qNLU
         5pQ30wLiHuHaZFVwvOjeUpAAvqcWSEzMbIzXE0IqZ8BvdrCdR/+g7IIY9F7CJaFzkXGR
         o55g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=wH2TstXAV1uSljTjC4RFgftvRJoyptbtZO6a2mGrNG0=;
        b=HVQjqKDvAaLddW832cQWd/Pr5tHUxPJzpmimelRczPhMk6X09IT11Vq5vdc8hkhboZ
         kP+rdLx36adDATm4sDPDfaaelc4Zh0TGAA8hE6bIb1IQgpovxltcXJs/tnMLxjjk0akZ
         APwHuS0yvDKhbkEnv6Dd+7T0Mp0YKWq5I6429pEZuLMFwGe9txpBvihKqPRAjtrl89Nf
         7SvhpRsepSvU7/HNvxO/hGl48Ncn+M8tfYHG8osn2d88NOWrCLZW+NXcjQbSg0bnzpjq
         kny7vbgbFsZxj8ENzC4PgflRUoK04lvQM9fgYBYGWlyVyQ6M3m8JvWN9fFZRFc10REyW
         Ts5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=GtKMzf3j;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id q195si97523wme.4.2017.10.02.00.58.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:58:19 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=GtKMzf3j;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id b189so2994399wmd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=wH2TstXAV1uSljTjC4RFgftvRJoyptbtZO6a2mGrNG0=;
        b=GtKMzf3j6a8evbBgZMrS0+j8I+SwtSCFSmWbymLbQ0VMgpWsOmCc6CyL1LjQIaFopp
         TeY/JomKp44dVgq8KCvgU4h1lcut1QhokHQPUFKXiQAftupg+qSeUP20bjnvalpLVumS
         dmcfPuoNemEO04WGdAkMHyXb3oqz2fiOHFap4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=wH2TstXAV1uSljTjC4RFgftvRJoyptbtZO6a2mGrNG0=;
        b=CNIjlNDcg98EsNWiSXpMwLGC4RYxtVRh9sKiJqFf3SiEUKxtfWCAbv75NZa3uoIxSd
         4FSa7ABG1B/A9KNH7ItdFbcnvgRKFaSb8CEKSI1FqHn0xYO5E3Q8JVodgVUHuDZhZV+u
         XNhZp5DIhllDROAcYssnuZKPJnrKasHgIMEU75eBL+c5H+n4AFz1Yv0kO6O7mz2FesfE
         rGHFBorZbe9FwFFMnLLcLrn6Xt5gbr3syZ5bP44+JFBx2Tm4siwyQBd89NI4y8Xgodx7
         3sZX8HCyS3s/vw1mRVY5DoVBo/5ZYR+Xj58SYQiBIF7KAX99CCOV6QGyeSoZI+ZnDGCQ
         CFuQ==
X-Gm-Message-State: AHPjjUgV/S17LJyIlAm+ylik5G1Orxunu7PsfkbFFv6hXadXag2rDPmg
	8mZPfUaAn/KzOXd5Hi908llnZg==
X-Google-Smtp-Source: AOwi7QDwFas4smwQQXSW8tnmSRldZq++0SiB9uQ1AACLvNEBCuzE1V1JHDfq9XKL0h3gylm/Ctxo+Q==
X-Received: by 10.80.136.81 with SMTP id c17mr19136541edc.13.1506931099305;
        Mon, 02 Oct 2017 00:58:19 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id n49sm8754669edd.40.2017.10.02.00.58.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Oct 2017 00:58:18 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 2 Oct 2017 09:58:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 4/4] drm/tinydrm: select BACKLIGHT_LCD_SUPPORT,
 BACKLIGHT_CLASS_DEVICE
Message-ID: <20171002075816.fwhkvrue2u22e6vd@phenom.ffwll.local>
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
 <a5ae26112f5e8d76e3ba46eae0c3137005496444.1506762029.git.meghana.madhyastha@gmail.com>
 <be741e6d-e5a2-a0ba-7ab8-9d07f8f36f99@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <be741e6d-e5a2-a0ba-7ab8-9d07f8f36f99@tronnes.org>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Sat, Sep 30, 2017 at 03:49:43PM +0200, Noralf Tr�nnes wrote:
> 
> Den 30.09.2017 11.10, skrev Meghana Madhyastha:
> > Add select BACKLIGHT_LCD_SUPPORT, BACKLIGHT_CLASS_DEVICE to
> > the Kconfig of drm. This is required for the successful build of
> > drm_of_find_backlight helpers.
> > 
> > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > ---
> > Changes in v5:
> > -This commit was not present in v4. Selecting BACKLIGHT_LCD_SUPPORT,
> > BACKLIGHT_CLASS_DEVICE in the Kconfig file under the symbol DRM seems
> > to fix the Kbuild error drm_of.c:(.text+0x3bc): undefined reference to
> > `of_find_backlight_by_node'.
> > 
> >   drivers/gpu/drm/Kconfig | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > index 83cb2a8..3ba5632 100644
> > --- a/drivers/gpu/drm/Kconfig
> > +++ b/drivers/gpu/drm/Kconfig
> > @@ -7,6 +7,8 @@
> >   menuconfig DRM
> >   	tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI support)"
> >   	depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
> > +	select BACKLIGHT_LCD_SUPPORT
> > +	select BACKLIGHT_CLASS_DEVICE
> >   	select HDMI
> >   	select FB_CMDLINE
> >   	select I2C
> 
> A night's sleep has made this more clear, we don't need 'depends on'
> or select as you have tried here, it's enough that we make a change in
> the backlight subsystem as I outlined earlier:
> 
> include/linux/backlight.h:
> 
> -#ifdef CONFIG_OF
> +#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> �struct backlight_device *of_find_backlight_by_node(struct device_node
> *node);
> �#else
> �static inline struct backlight_device *
> �of_find_backlight_by_node(struct device_node *node)
> �{
> ���� return NULL;
> �}
> �#endif
> 
> Now we don't have to care about backlight being built-in, module or
> disabled.
> 
> This patch has to be the first in the patchset. No single patch can break
> anything
> even if it's fixed later. This is so people can bisect.

Adding Jani to double-check this plan ...
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

