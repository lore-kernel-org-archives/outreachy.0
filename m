X-GM-THRID: 6470705412124442624
X-Received: by 10.28.128.140 with SMTP id b134mr26767wmd.3.1506930442429;
        Mon, 02 Oct 2017 00:47:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.191.29 with SMTP id p29ls1834186wmf.8.canary-gmail; Mon, 02
 Oct 2017 00:47:21 -0700 (PDT)
X-Received: by 10.28.15.72 with SMTP id 69mr1550115wmp.3.1506930441824;
        Mon, 02 Oct 2017 00:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506930441; cv=none;
        d=google.com; s=arc-20160816;
        b=YIlQYXuCZzeCd+fJO/oVPmMyboArkF3hr8J3+YGpy7BYya5JXo7+F9VSmu9yLmDH6U
         Rl+gD9laH5JPSTdEQEfIuhWYT/Ja8qt3XGnyPLugJJTDUn/IBoSdEF/WvQ71FOPzpHqj
         I1HZihp90kjwFHlNyvPdFucEf2yVZCAr8KlYjUyLkW6Pt9kPWcADQMzVPge7RcYL0Uli
         LZTZCnrj8ZTV8m0gtWxN6MbyJSj04J4aTew0Xfimk04XOwevZPU0ruimmzaOWvXj8CJa
         4S0+0ToS5nT9Oculk1U9+f5YmyuRJZR7yZZpbjdhzrEnbFmpkKP8qdafptU7jxK7REUV
         iTLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=dFAbkdGzkmYjhInYIY0D6vbVe8i/ls8K1xNnbR5My0A=;
        b=AhYRgrT3zpws+Zvvt9eIuyFjIBVqMf8tQv8xLGe3Z2+VOkd7/mGOUEmDqjGPToBgYJ
         PPZFrgROLYOODFxTjo22eYeenOrN3NomhtY0TJYrQwMGOM4P+cgIF8xkCAA1hiPUis6p
         HGPQv7t0rvcaMYpTgDS8wkHgoR0HiQwnuHeB93EJSVArH9QH20KwVsJCe8I1ZH2s/pMX
         Q+Yow6xNVZMyxkBWUu6w1Zfk4AAVPEoee2yDcGeURavy/vOKZv/u2CDEiN7MPaMY3r99
         EoYwjqunpHoCTgpFpK5HhiY9nZlJAdS8Q+xQeFzwVaPDCC5/FyV9PEe8zWY7QxptktlY
         ASXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=UO86wWb7;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id e14si682709wmg.1.2017.10.02.00.47.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:47:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=UO86wWb7;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x243.google.com with SMTP id b189so2977810wmd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=dFAbkdGzkmYjhInYIY0D6vbVe8i/ls8K1xNnbR5My0A=;
        b=UO86wWb75nb3rst+RMd5a6ANyx6Uo0sEj/vGGSyS4nDyWE5hxdD0qxzgkS1KfjOYEm
         xqCBnfb1G2rRCLdliQjcuQYEu8oMEqh9PUNuGcofNzg2BpqhSeiA/FSk2yTdnY6hOse1
         5gi3n2mVgedOG+eXGh16SNl21O+xXYilUiDkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=dFAbkdGzkmYjhInYIY0D6vbVe8i/ls8K1xNnbR5My0A=;
        b=MbwItElQt1dfQx+wGgUYL0MRXwZM1uIA8gAlR13OOCvJP5VvsSebFgBmm7EO53MNHP
         LQXa47rMVW8MTiarQjlcGUFlQcufBHL5tyBOTGRRTLUIPUaLaGXfrpPZVD1qtpvoYUAQ
         m74H076gI34LWNm73Ux5JmRJq2nR73qP3O9A9doJbTD3jZTYEJXsG4d4ggYsy3zxf0w8
         jeJ54Bza3krfbBjpj/Jwg6j/Y4+F2ss3EEQw8M2RdU/EebH324P/vAdFJiOSJQuk5bEN
         N9NPOIScIuYOKhyylq1/P/0Ed2xPcLEdVdAdp94ww7ii1l+fDXuXepOYpuXr1yw3QkHX
         /rcw==
X-Gm-Message-State: AHPjjUit/Zc3I6dNoTolyIQMudOtLsAXwpSkS0LWUm+utpLRjZaT9l4/
	h0tzi/MBxQJkGK5l5Nq6a1gADg==
X-Google-Smtp-Source: AOwi7QBSmiHUngo0yAl8eqOS6ipwcC6HzTVi6RF/CIu2Rt5ZsS9vkfpdqwpbWc56Lbflx2lTgAG+Kg==
X-Received: by 10.80.146.178 with SMTP id k47mr18948271eda.197.1506930441317;
        Mon, 02 Oct 2017 00:47:21 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id c25sm9224915edb.57.2017.10.02.00.47.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Oct 2017 00:47:20 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 2 Oct 2017 09:47:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20171002074718.jinjkmc76igo2lkx@phenom.ffwll.local>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
 <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
 <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
 <20170929122025.GA29498@meghana-HP-Pavilion-Notebook>
 <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
 <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
 <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Fri, Sep 29, 2017 at 05:41:04PM +0200, Noralf Tr�nnes wrote:
> 
> Den 29.09.2017 16.13, skrev Meghana Madhyastha:
> > On Fri, Sep 29, 2017 at 02:33:12PM +0200, Noralf Tr�nnes wrote:
> > > Den 29.09.2017 14.20, skrev Meghana Madhyastha:
> > > > On Fri, Sep 29, 2017 at 02:10:31PM +0200, Noralf Tr�nnes wrote:
> > > > > Den 29.09.2017 05.22, skrev Meghana Madhyastha:
> > > > > > On Thu, Sep 28, 2017 at 06:02:27PM +0200, Noralf Tr�nnes wrote:
> > > > > > > Den 28.09.2017 16.08, skrev Daniel Vetter:
> > > > > > > > On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
> > > > > > > > > Rename tinydrm_of_find_backlight to drm_of_find_backlight
> > > > > > > > > and move it into drm_of.c from tinydrm-helpers.c. This is
> > > > > > > > > because other drivers in the drm subsystem might need to call
> > > > > > > > > this function. In that case and otherwise, it is better from
> > > > > > > > > an organizational point of view to move it into drm_of.c along
> > > > > > > > > with the other _of.c functions.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > > > > > > > > ---
> > > > > > > > > Changes in v3:
> > > > > > > > > -Change it back to a single patch from two patches in v2
> > > > > > > > > 
> > > > > > > > >   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
> > > > > > > > >   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
> > > > > > > > >   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> > > > > > > > >   include/drm/drm_of.h                           |  1 +
> > > > > > > > >   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> > > > > > > > >   5 files changed, 47 insertions(+), 42 deletions(-)
> > > > > > > > > 
> > > > > > > > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > > > > > > > > index 8dafbdf..d878d3a 100644
> > > > > > > > > --- a/drivers/gpu/drm/drm_of.c
> > > > > > > > > +++ b/drivers/gpu/drm/drm_of.c
> > > > > > > > > @@ -1,6 +1,7 @@
> > > > > > > > >   #include <linux/component.h>
> > > > > > > > >   #include <linux/export.h>
> > > > > > > > >   #include <linux/list.h>
> > > > > > > > > +#include <linux/backlight.h>
> > > > > > > > >   #include <linux/of_graph.h>
> > > > > > > > >   #include <drm/drmP.h>
> > > > > > > > >   #include <drm/drm_bridge.h>
> > > > > > > > > @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> > > > > > > > >   	return ret;
> > > > > > > > >   }
> > > > > > > > >   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> > > > > > > > > +
> > > > > > > > > +/**
> > > > > > > > > + * drm_of_find_backlight - Find backlight device in device-tree
> > > > > > > > > + * @dev: Device
> > > > > > > > > + *
> > > > > > > > > + * This function looks for a DT node pointed to by a property named 'backlight'
> > > > > > > > > + * and uses of_find_backlight_by_node() to get the backlight device.
> > > > > > > > > + * Additionally if the brightness property is zero, it is set to
> > > > > > > > > + * max_brightness.
> > > > > > > > > + *
> > > > > > > > > + * Note: It is the responsibility of the caller to call put_device() when
> > > > > > > > > + * releasing the resource.
> > > > > > > > > + *
> > > > > > > > > + * Returns:
> > > > > > > > > + * NULL if there's no backlight property.
> > > > > > > > > + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> > > > > > > > > + * is found.
> > > > > > > > > + * If the backlight device is found, a pointer to the structure is returned.
> > > > > > > > > + */
> > > > > > > > > +struct backlight_device *drm_of_find_backlight(struct device *dev)
> > > > > > > > > +{
> > > > > > > > > +	struct backlight_device *backlight;
> > > > > > > > > +	struct device_node *np;
> > > > > > > > > +
> > > > > > > > > +	np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > > > > > > > +	if (!np)
> > > > > > > > > +		return NULL;
> > > > > > > > > +
> > > > > > > > > +	backlight = of_find_backlight_by_node(np);
> > > > > > > > > +	of_node_put(np);
> > > > > > > > > +
> > > > > > > > > +	if (!backlight)
> > > > > > > > > +		return ERR_PTR(-EPROBE_DEFER);
> > > > > > > > > +
> > > > > > > > > +	if (!backlight->props.brightness) {
> > > > > > > > > +		backlight->props.brightness = backlight->props.max_brightness;
> > > > > > > > > +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > > > > > > > > +			      backlight->props.brightness);
> > > > > > > > > +	}
> > > > > > > > > +
> > > > > > > > > +	return backlight;
> > > > > > > > > +}
> > > > > > > > > +EXPORT_SYMBOL(drm_of_find_backlight);
> 
> <snip>
> 
> > > > > > > Another problem I discovered when trying to compile this, is that if
> > > > > > > DRM is builtin and LCD_CLASS_DEVICE is a module:
> > > > > > > 
> > > > > > > drivers/gpu/drm/drm_of.c:292: undefined reference to
> > > > > > > `of_find_backlight_by_node'
> > > > > > > 
> > > > > > > I see that I solved this in tinydrm by just selecting
> > > > > > > BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
> > > > > > > force LCD_CLASS_DEVICE to be builtin if DRM is builtin.
> > > > > > > 
> > > > > > > Arnd fixed a similar type of dependecy in the repaper driver by forcing
> > > > > > > repaper to be a module if necessary. To be honest, I don't know why his
> > > > > > > fix works:
> > > > > > > https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002
> > > > > > I didn't quite understand how we could use this fix for the current
> > > > > > case. Isn't this specific to the repaper driver dependency ?
> > > > > This is the solution Daniel mentions:
> > > > > 
> > > > >  �menuconfig DRM
> > > > >  ���� tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI
> > > > > support)"
> > > > >  ���� depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
> > > > > +�� depends on (LCD_CLASS_DEVICE || LCD_CLASS_DEVICE=n)
> > > > I had tried this but it resulted in a recursive dependencies error.
> > > What's the error?
> > > Could this have something to do with tinydrm selecting backlight and
> > > depending on DRM?
> > > 
> > > Noralf.
> > Looks like a case of circular dependencies. The exact error is this:
> > 
> > scripts/kconfig/mconf  Kconfig
> > drivers/gpu/drm/Kconfig:7:error: recursive dependency detected!
> > For a resolution refer to Documentation/kbuild/kconfig-language.txt
> > subsection "Kconfig recursive dependency limitations"
> > drivers/gpu/drm/Kconfig:7:	symbol DRM depends on LCD_CLASS_DEVICE
> > For a resolution refer to Documentation/kbuild/kconfig-language.txt
> > subsection "Kconfig recursive dependency limitations"
> > drivers/video/backlight/Kconfig:16:	symbol LCD_CLASS_DEVICE is
> > selected by FB_CLPS711X
> > For a resolution refer to Documentation/kbuild/kconfig-language.txt
> > subsection "Kconfig recursive dependency limitations"
> > drivers/video/fbdev/Kconfig:338:	symbol FB_CLPS711X depends on FB
> > For a resolution refer to Documentation/kbuild/kconfig-language.txt
> > subsection "Kconfig recursive dependency limitations"
> > drivers/video/fbdev/Kconfig:5:	symbol FB is selected by
> > DRM_KMS_FB_HELPER
> > For a resolution refer to Documentation/kbuild/kconfig-language.txt
> > subsection "Kconfig recursive dependency limitations"
> > drivers/gpu/drm/Kconfig:73:	symbol DRM_KMS_FB_HELPER is selected by
> > DRM_FBDEV_EMULATION
> > For a resolution refer to Documentation/kbuild/kconfig-language.txt
> > subsection "Kconfig recursive dependency limitations"
> > drivers/gpu/drm/Kconfig:90:	symbol DRM_FBDEV_EMULATION depends on
> > DRM
> > 
> > Long story short, the dependency loop is as follows:
> > 
> > DRM -> LCD_CLASS_DEVICE ->  FB_CLPS711X -> FB -> DRM_KMS_FB_HELPER ->
> > DRM_FBDEV_EMULATION -> DRM
> 
> I have messed up the options here, it should be BACKLIGHT_CLASS_DEVICE:
> 
> menuconfig DRM
> ��� depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)
> 
> It doesn't help with the recusrsive problem, but at least it makes sense:
> 
> drivers/gpu/drm/Kconfig:7:����� symbol DRM depends on BACKLIGHT_CLASS_DEVICE
> drivers/video/backlight/Kconfig:158:��� symbol BACKLIGHT_CLASS_DEVICE is
> selected by DRM_RADEON
> drivers/gpu/drm/Kconfig:164:��� symbol DRM_RADEON depends on DRM
> 
> I don't know how to solve this...

You can't mix depends and select on the same symbol. More or less. So
either all depends or all selects, but select only works well if the
option is a top-level one (otherwise you also need to select _all_ its
dependencies).

And yes backlight is known to be an especially bad horror show in Kconfig,
unfortunately no one yet managed to clean up the mess :-/

So correct fix is to check out what all the other drivers do and then do
the same (and hope there's a clear majority).

Also adding Jani, who looked at the backlight Kconfig mess in the past.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

