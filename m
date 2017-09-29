X-GM-THRID: 6470705412124442624
X-Received: by 10.28.228.11 with SMTP id b11mr428791wmh.17.1506669211848;
        Fri, 29 Sep 2017 00:13:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.207 with SMTP id m15ls1645644wrb.13.gmail; Fri, 29 Sep
 2017 00:13:30 -0700 (PDT)
X-Received: by 10.223.134.37 with SMTP id 34mr795402wrv.1.1506669210896;
        Fri, 29 Sep 2017 00:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506669210; cv=none;
        d=google.com; s=arc-20160816;
        b=W6EGd7l6lbSYTwSm20jMx9YFjxIYzJpLWg+yYW+S5O0XSPzNqSCdvunrwIjFGy8QMu
         BMzHTsypFtCDCdlsqQp9bmIhQJpeq+ZkEsxPW07gzU9ILhVuc1YE+MUFWJPFzb2HRpcL
         5uMPCRqEYqZJ5INHYQz1kB+H2tKIJZQ+69r8KsKJpNPqfF5gG+5xrebqGPW2Yh/eGYYN
         B/OxubYLos4/ovIRwD1MjJWz7vDalldWNN5BnodkfUgL0AdsABFiMM6TovD6BzFs9PiQ
         neG1O5PYcImLM9a+YWtols/e1vC2y3mEde3QRvaQnjtYTusWu+ZVJWaN9w/n1Kc/jmqw
         0BXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=gsPczhZ0NnTyx9gQdhxfFeVKpsHUVwPmXpuBQ1bLuKQ=;
        b=wyrpnNyyM0yw96+LiH7FleFhWDw/VVDqFV2GZjW9GtJ/VBUObeV2ea4JQO+4z9ZCAD
         EQANb7+6jl9/SUc4z5ICSAM5UNkZQtIg53skf+82WWxxdLp2gw15U//ecCZGWqqUmn96
         pUXCuCryfHcitBxPEpoGa6f1AM39PTdJ5qqfndharbMAS9XBsePpHvMOqc6N32iRO8m7
         KhJaaR4yzGGvjBH1iFI/B+wpq6aqwQLFtokv6bVKRkzH0UMpqfMNCq9uy4ERiIVwmKfc
         ECku04Y94I96ZQbxBi2c1oT70RSbjC8JJt/zQdLBCbbKllAoIZYZ5fPqaGODAvny147N
         idiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=leHVYJZH;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 200si631844wmj.0.2017.09.29.00.13.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 00:13:30 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=leHVYJZH;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x241.google.com with SMTP id f4so548413wmh.4
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 00:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=gsPczhZ0NnTyx9gQdhxfFeVKpsHUVwPmXpuBQ1bLuKQ=;
        b=leHVYJZHgoWq9OejivDGRzh4v+t9xujHW8Yt5Y5EzUd45p2e15jMiKxe/bU0+qq5tq
         zt1ZufyovWufZdn0R7hWZYsJNRf+vp0lt2MUJ6AMl3NRneqxuSDuKV2zy13pqI6B/fO0
         +fwL+D98XYGigTTtslkEVuE8O7dbY9ZYOAUcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=gsPczhZ0NnTyx9gQdhxfFeVKpsHUVwPmXpuBQ1bLuKQ=;
        b=a5SkU/SWjL94Gs160N+n9PIhGU8khgW/yuMf/2g4s0qGW/zmBgm7ObFyhUWPEhLAex
         Cf4sM2ZX2oVPiay5Dfge33b/t4+kGcOelWwhj9mxuVMRTfhOrCKPB+IyL9CKwI/GM9Fb
         DA9A7yYFfTshiAnuKWPgqG9N5R8jcAqerT6GoaaY50SsKlNO9r3+kumZ2lBe6cN73+Du
         MMEHSEVbHtMI1sDB19rtByzfmDEPowjszTRbjFTol7lelLFDL5SZ1OQukv5qYaqgGG3F
         9xd2Z7PiAbHxqajkjB35K7atKnUqnZ4aSEJ99tzsTOIQNEf0UF/vJ1oFs394NpGi5VNg
         /B9A==
X-Gm-Message-State: AHPjjUgl+0XZ8kf2yGmz1Kg/Tl++uHAcaJigwXVTPGHpQAIxPASAjrTS
	PzESbS8H8IxtuhYm3zPVU36IKA==
X-Google-Smtp-Source: AOwi7QC+kpLVvlBMUd70D7cKQBKozhtXUUEle++YsfyZ/J2y/3sSd7G5bIV/a5TkV7uHGtJLomomrA==
X-Received: by 10.80.149.75 with SMTP id v11mr8700372eda.284.1506669210017;
        Fri, 29 Sep 2017 00:13:30 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id r30sm2808502edb.59.2017.09.29.00.13.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 29 Sep 2017 00:13:29 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 29 Sep 2017 09:13:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	Meghana Madhyastha <meghana.madhyastha@gmail.com>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20170929071323.v6twfkrlr2io5x3k@phenom.ffwll.local>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Thu, Sep 28, 2017 at 06:02:27PM +0200, Noralf Tr�nnes wrote:
> 
> Den 28.09.2017 16.08, skrev Daniel Vetter:
> > On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
> > > Rename tinydrm_of_find_backlight to drm_of_find_backlight
> > > and move it into drm_of.c from tinydrm-helpers.c. This is
> > > because other drivers in the drm subsystem might need to call
> > > this function. In that case and otherwise, it is better from
> > > an organizational point of view to move it into drm_of.c along
> > > with the other _of.c functions.
> > > 
> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > > ---
> > > Changes in v3:
> > > -Change it back to a single patch from two patches in v2
> > > 
> > >   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
> > >   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
> > >   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> > >   include/drm/drm_of.h                           |  1 +
> > >   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> > >   5 files changed, 47 insertions(+), 42 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > > index 8dafbdf..d878d3a 100644
> > > --- a/drivers/gpu/drm/drm_of.c
> > > +++ b/drivers/gpu/drm/drm_of.c
> > > @@ -1,6 +1,7 @@
> > >   #include <linux/component.h>
> > >   #include <linux/export.h>
> > >   #include <linux/list.h>
> > > +#include <linux/backlight.h>
> > >   #include <linux/of_graph.h>
> > >   #include <drm/drmP.h>
> > >   #include <drm/drm_bridge.h>
> > > @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> > >   	return ret;
> > >   }
> > >   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> > > +
> > > +/**
> > > + * drm_of_find_backlight - Find backlight device in device-tree
> > > + * @dev: Device
> > > + *
> > > + * This function looks for a DT node pointed to by a property named 'backlight'
> > > + * and uses of_find_backlight_by_node() to get the backlight device.
> > > + * Additionally if the brightness property is zero, it is set to
> > > + * max_brightness.
> > > + *
> > > + * Note: It is the responsibility of the caller to call put_device() when
> > > + * releasing the resource.
> > > + *
> > > + * Returns:
> > > + * NULL if there's no backlight property.
> > > + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> > > + * is found.
> > > + * If the backlight device is found, a pointer to the structure is returned.
> > > + */
> > > +struct backlight_device *drm_of_find_backlight(struct device *dev)
> > > +{
> > > +	struct backlight_device *backlight;
> > > +	struct device_node *np;
> > > +
> > > +	np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > +	if (!np)
> > > +		return NULL;
> > > +
> > > +	backlight = of_find_backlight_by_node(np);
> > > +	of_node_put(np);
> > > +
> > > +	if (!backlight)
> > > +		return ERR_PTR(-EPROBE_DEFER);
> > > +
> > > +	if (!backlight->props.brightness) {
> > > +		backlight->props.brightness = backlight->props.max_brightness;
> > > +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > > +			      backlight->props.brightness);
> > > +	}
> > > +
> > > +	return backlight;
> > > +}
> > > +EXPORT_SYMBOL(drm_of_find_backlight);
> > > diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > index bd6cce0..cd4c6a5 100644
> > > --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> > >   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> > >   /**
> > > - * tinydrm_of_find_backlight - Find backlight device in device-tree
> > > - * @dev: Device
> > > - *
> > > - * This function looks for a DT node pointed to by a property named 'backlight'
> > > - * and uses of_find_backlight_by_node() to get the backlight device.
> > > - * Additionally if the brightness property is zero, it is set to
> > > - * max_brightness.
> > > - *
> > > - * Returns:
> > > - * NULL if there's no backlight property.
> > > - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> > > - * is found.
> > > - * If the backlight device is found, a pointer to the structure is returned.
> > > - */
> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> > > -{
> > > -	struct backlight_device *backlight;
> > > -	struct device_node *np;
> > > -
> > > -	np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > -	if (!np)
> > > -		return NULL;
> > > -
> > > -	backlight = of_find_backlight_by_node(np);
> > > -	of_node_put(np);
> > > -
> > > -	if (!backlight)
> > > -		return ERR_PTR(-EPROBE_DEFER);
> > > -
> > > -	if (!backlight->props.brightness) {
> > > -		backlight->props.brightness = backlight->props.max_brightness;
> > > -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > > -			      backlight->props.brightness);
> > > -	}
> > > -
> > > -	return backlight;
> > > -}
> > > -EXPORT_SYMBOL(tinydrm_of_find_backlight);
> > > -
> > > -/**
> > >    * tinydrm_enable_backlight - Enable backlight helper
> > >    * @backlight: Backlight device
> > >    *
> > > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > index 7e5bb7d..5e3d635 100644
> > > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > @@ -12,6 +12,7 @@
> > >   #include <drm/tinydrm/ili9341.h>
> > >   #include <drm/tinydrm/mipi-dbi.h>
> > >   #include <drm/tinydrm/tinydrm-helpers.h>
> > > +#include <drm/drm_of.h>
> > >   #include <linux/delay.h>
> > >   #include <linux/gpio/consumer.h>
> > >   #include <linux/module.h>
> > > @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> > >   	if (IS_ERR(mipi->regulator))
> > >   		return PTR_ERR(mipi->regulator);
> > > -	mipi->backlight = tinydrm_of_find_backlight(dev);
> > > +	mipi->backlight = drm_of_find_backlight(dev);
> > >   	if (IS_ERR(mipi->backlight))
> > >   		return PTR_ERR(mipi->backlight);
> > > diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> > > index 104dd51..e8fba5b 100644
> > > --- a/include/drm/drm_of.h
> > > +++ b/include/drm/drm_of.h
> > > @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> > >   				int port, int endpoint,
> > >   				struct drm_panel **panel,
> > >   				struct drm_bridge **bridge);
> > > +struct backlight_device *drm_of_find_backlight(struct device *dev);
> > >   #else
> > >   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> > >   						  struct device_node *port)
> > Minor detail I missed: The dummy version for the #else here is missing.
> > Not a problem for tinydrm, but might be an issue for a driver where
> > CONFIG_OF is optional.
> 
> Yeah, we need a dummy version. tinydrm can in theory be used on non-DT
> platforms. The only resource that isn't available there is backlight
> since there is no platform or ACPI way of describing that dependency.
> 
> Another problem I discovered when trying to compile this, is that if
> DRM is builtin and LCD_CLASS_DEVICE is a module:
> 
> drivers/gpu/drm/drm_of.c:292: undefined reference to
> `of_find_backlight_by_node'
> 
> I see that I solved this in tinydrm by just selecting
> BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
> force LCD_CLASS_DEVICE to be builtin if DRM is builtin.

The usual way to force such an optional depency is

depends on (FOO || FOO=n)

That way it's still optional, but if FOO is enabled as a module, you can't
enable the current symbol as built-in. See e.g. how DRM vs. AGP is
handled.
-Daniel
> 
> Arnd fixed a similar type of dependecy in the repaper driver by forcing
> repaper to be a module if necessary. To be honest, I don't know why his
> fix works:
> https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002
> 
> Another way of solving this is to put the function in
> drivers/gpu/drm/drm_backlight.c and add a DRM_BACKLIGHT konfig option
> that does the selection.
> 
> Noralf.
> 
> > Otherwise I think this patch looks good.
> > -Daniel
> > 
> > > diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> > > index d554ded..e40ef2d 100644
> > > --- a/include/drm/tinydrm/tinydrm-helpers.h
> > > +++ b/include/drm/tinydrm/tinydrm-helpers.h
> > > @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> > >   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> > >   			       struct drm_clip_rect *clip);
> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> > >   int tinydrm_enable_backlight(struct backlight_device *backlight);
> > >   int tinydrm_disable_backlight(struct backlight_device *backlight);
> > > -- 
> > > 2.7.4
> > > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

