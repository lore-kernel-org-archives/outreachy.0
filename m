X-GM-THRID: 6468555141619384320
X-Received: by 10.101.85.68 with SMTP id t4mr6856969pgr.4.1506430166849;
        Tue, 26 Sep 2017 05:49:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.35.203 with SMTP id r11ls4976283qtr.10.gmail; Tue, 26 Sep
 2017 05:49:26 -0700 (PDT)
X-Received: by 10.55.66.69 with SMTP id p66mr5324809qka.17.1506430166178;
        Tue, 26 Sep 2017 05:49:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506430166; cv=none;
        d=google.com; s=arc-20160816;
        b=N5WODE+71G+4nvO8rE2Sy/AkMoaXEM6gVqhrnuZTAeF/V/RChLouG7nYTaJU9pTcaj
         4enstWdEhU+DTzgA2DuSycUWLTGnUht9Yy31ABsQgRav5Lu8Edyi0bMS88itQdok6OM8
         3OndZanZRwP3f2mhH93cXTmv+xv/jSilFETR5HxcuKYp2gEqPWBd14khIEAGw15XH9As
         uUJL9+3H0rdgAwjnobRkqv4ac03srLP304kr+/ItYLPErLhWEu/3OMOIT1670wr6G665
         nDJKYqUO8cu3ckHSfBI8SDJcnz1aHlnkiMVV3RH7rmqI4Zi/MDjZT2e3xF3Fck6Ch3w4
         UdPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=5ifMarwy14ewc2kca8hesqTdEQU1CBH3B3PTyrhbBrc=;
        b=qjO2SHTkogkb0khZE7TbDd8oORog8+cVC6xydD1YySyYGglWbokoF8oib4+3xa2rsU
         +YAD9Eb/oESeJDGuXkS7kBgn8HBhPuUlTDybcDfvNk2yECS0xlU6pkc5ksfISrBpjiom
         15+wkfZFha2mqdZQLCxR9ufNQT5cBMEjlnZVWetto2ZY4Bmx37iLm/CcBYFRUoY2s/eQ
         affYcOYfn2zVcJ4xC8M0ubxN6TLYBLskYQLNPjym8sazuyOiR3mHCsxT2hGub3D5jB3e
         QjC1xel1v+IUH4a871F7x43TJnKvRaMgq6Fx7jBbV9oZpKH6qYHdXSuc4zw9+D8ZvUs8
         a1jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=irFX3muT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f189si633080pfa.1.2017.09.26.05.49.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 05:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=irFX3muT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m30so6717619pgn.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 05:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=5ifMarwy14ewc2kca8hesqTdEQU1CBH3B3PTyrhbBrc=;
        b=irFX3muTdtKAXOmo5/YQVDMwhlnkarRx1tqDL80sYQ5joyrHPI2dQBpSEKuzNY7VNW
         WP3iNfnutscK6Hp0xHb8MYyhPBOVfnYkh3OAT0MVCFjVLxhiqFnHcX2xpBCVN0/Pbov4
         v1HxtYipbv6qzl5aOu0PF67UKV6YVYu4RYQboN+MfhLgfpq6/84E3dxgehH01rx/igg4
         5CkESUS/GesDwZsVULftf35qyGbkJDmTm3TBLKYY/rYehDotfU94WnXao50VQNhhSTKq
         M87KKcFhInPsiDL7cYQQCEa0WWQYLiMYFZrYBp5+zijp/W2FGb35NRDW3sVa1/kl6WwJ
         /plQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=5ifMarwy14ewc2kca8hesqTdEQU1CBH3B3PTyrhbBrc=;
        b=ebtgG+dV5RWgYbHNUIi03MgkVAfEMNOyGVnvUcDIJRmnZK8gYvPh6djIh0CsMEHrOA
         xdhKhknOQxpY9Yma8d9nxyLjigFSNV8vrTsfW08Wb+4gwMaoMKCW8tj0woDkHt/5Ci4B
         YHrkbEYZrNNQV9mh5E6FJsG7ekEi7JMgNGor740Pkfgy2qZOhIPd5Fh2lpp6kg3cGMXD
         6LktLHyZYN9c97MI9R4V1BffNuA8FETKTyh1qmGGnmxG+GT0h8FRonkm80ctsqdbiB/5
         wmtDHWe1uy6UX5jZ28+yLaGsOwIRE5EZ3+NSgLSkPPDBaR2efzLCug3BlJdaEA4KHziK
         b9dA==
X-Gm-Message-State: AHPjjUh7R0C5hjJ8L03HOn7SDd7oZpN0KHk6Ik7bOqQBe4MG40+2csqV
	pP+ILgRfxCfxAVPd/qeAoRA=
X-Google-Smtp-Source: AOwi7QCII3uV0q/cc93xPIgdJ10sRvq7wy3Ey90PtAUuTSY1V72wshP/Z2xqhgMOdrTJjMpD2F8lHg==
X-Received: by 10.98.212.26 with SMTP id a26mr10576734pfh.333.1506430165695;
        Tue, 26 Sep 2017 05:49:25 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id s62sm17261889pfe.91.2017.09.26.05.49.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 05:49:24 -0700 (PDT)
Date: Tue, 26 Sep 2017 18:19:18 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>,
	Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	dri-devel@lists.freedesktop.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	seanpaul@chromium.org
Subject: Re: [PATCH v2] drm/tinydrm: Move backlight helpers to a separate file
Message-ID: <20170926124915.GA9756@meghana-HP-Pavilion-Notebook>
References: <20170922150935.GA15912@meghana-HP-Pavilion-Notebook>
 <3dd313c8-daa7-a395-183c-c2dfac4dd4b4@tronnes.org>
 <ecdafe5f-1434-b3cf-82bb-a3286ee96d3e@tronnes.org>
 <20170926111650.GA7624@meghana-HP-Pavilion-Notebook>
 <20170926113214.ahxqmqspsd3olu73@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170926113214.ahxqmqspsd3olu73@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 26, 2017 at 01:32:15PM +0200, Daniel Vetter wrote:
> On Tue, Sep 26, 2017 at 04:46:53PM +0530, Meghana Madhyastha wrote:
> > On Mon, Sep 25, 2017 at 06:31:58PM +0200, Noralf Trønnes wrote:
> > > 
> > > Den 25.09.2017 16.56, skrev Noralf Trønnes:
> > > >Hi Meghana,
> > > >
> > > >
> > > >Den 22.09.2017 17.09, skrev Meghana Madhyastha:
> > > >>Move backlight helpers from tinydrm-helpers.c to
> > > >>tinydrm-backlight.c. This is because it is organizationally
> > > >>simpler to understand and advantageous to group functions
> > > >>performing a similar function to a separate file as opposed to
> > > >>having one helper file with heteregenous helper functions.
> > > >>
> > > >>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > > >>---
> > > >
> > > >I don't think there is much gain in just moving the code like this.
> > > >
> > > >The idea is to add a drm_backlight helper that can be useful for all
> > > >DRM drivers that use the backlight subsystem.
> > 
> > Yes I agree. That definitely makes more sense.
> > > 
> > > The full path to that helper would be:
> > > drivers/gpu/drm/drm_backlight.c
> > > 
> > > >This is what the TODO says:
> > > >https://dri.freedesktop.org/docs/drm/gpu/todo.html#tinydrm
> > > >
> > > >- backlight helpers, probably best to put them into a new drm_backlight.c.
> > > >  This is because drivers/video is de-facto unmaintained. We could also
> > > >  move drivers/video/backlight to drivers/gpu/backlight and take it all
> > > >  over within drm-misc, but that’s more work.
> > > >
> > > >There is also this discussion to take into account:
> > > >KMS backlight ABI proposition
> > > >https://lists.freedesktop.org/archives/dri-devel/2017-February/133206.html
> > > >
> > > >
> > > >I don't remember what came out of that discussion.
> > > >
> > > >Noralf.
> > 
> > After having discussed this with Daniel on the #dri-devel irc channel, 
> > here are some of the points suggested.
> > 
> > Daniel suggested that I first look into the usage of shared backlight
> > helpers in drm (specifically backlight_update_status to begin with). The idea
> > was to see whether there is any pattern in usage and/or code dupication.
> > If there is, then the next step would be to write helper functions which
> > can be used by other drivers (and not just tinydrm). 
> > 
> > To start with, I went through the instances of backlight_update_status
> > in the drm code, and made the following observations(most of them are
> > very simple/naive observations).
> > 
> > - backlight_update_status is usually called in backlight init (and
> >   sometimes exit) functions of the drivers just after the device is registered.
> >   So backlight_update_status is called with the registered device as the
> >   parameter.
> > 
> > Here are the following cases of properties changed/set before 
> > backlight_update_status is called.
> > 
> > - CASE 1: Brightness is changed (either a macro BRIGHTNESS_MAX_LEVEL 100
> >   is defined or it is manually set) This happens in the following files:
> > 
> >   gma500/cdv_device.c, gma500/mdfld_device.c, gma500/oaktrail_device.c,
> >   gma500/psb_device.c, noveau/noveau_backlight.c(here brightness is determined by fuction
> >   static int nv50_get_intensity)
> > 
> > - CASE 2: Power property is set (to FB_BLANK_UNBLANK mostly)
> >   This happens in the following files:
> > 
> >   omapdrm/displays/panel-dpi.c, panel/panel-innolux-p079zca.c,
> >   panel/panel-jdi-lt070me05000.c, panel/panel-sharp-lq101r1sx01.c, 
> >   panel/panel-sharp-ls043t1le01.c, tilcdc/tilcdc_panel.c
> >   
> > - CASE 3: State is set
> >   This happens in the following files:
> > 
> >   tinydrm/tinydrm-helpers.c
> > 
> > - CASE 4: Power and brightness properties are set
> >   This happens in the following files:
> > 
> >   atombios_encoders.c, radeon/radeon_legacy_encoders.c, 
> >   shmobile/shmob_drm_backlight.c
> > 
> > - CASE 5: Power and the state properties are set
> >   This happens in the following files:
> > 
> >   panel/panel-lvds.c, panel/panel-panasonic-vvx10f034n00.c,
> >   panel/panel-simple.c, panel/panel-sitronix-st7789v.c
> > 
> > Please let me know if I am wrong / missed something. As for next steps,
> > wouldn't it be an overkill to have a separate helper function for each
> > of these cases ? Perhaps a generic helper function which would somehow
> > address these cases would be more appropriate ? Thank you for your
> > time/patience.
> 
> I suspect that a lot of these combinations are just plain wrong, but
> happen to kinda work with the combination of gpu driver and backlight
> driver they're used on. tbh I have no idea which one is the correct
> version for enabling a backlight correctly ...

So does this mean that different devices require different combinations
in order to enable a backlight ? Is it wrong or is it just that it
depends on the gpu driver ?

> So definitely a good task to refactor this into a proper helper, but looks
> a lot more involved than at first sight.

Yes it does look more involved than it did initially. Would a good
starting point be then to try to find out if there is one common
combination that can be used to enable any backlight device of any gpu
driver ?  

> Do you have any of the hardware supported by any of these drivers? lsmod
> and then comparing with the modules you're building in your own tree
> should help you figure this out.
> -Daniel

I don't have all of the hardware. However, some of the modules such as
radeon, amdgpu and gma500 drivers were successfully loaded so my system
supports some of the hardware.

-Meghana

> > 
> > -Meghana
> > 
> > > >>Changes in v2:
> > > >>  -Improved commit message by explaining why the changes were made.
> > > >>
> > > >>  drivers/gpu/drm/tinydrm/core/Makefile            |   2 +-
> > > >>  drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c | 103
> > > >>+++++++++++++++++++++++
> > > >>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c   |  94
> > > >>---------------------
> > > >>  drivers/gpu/drm/tinydrm/mi0283qt.c               |   1 +
> > > >>  drivers/gpu/drm/tinydrm/mipi-dbi.c               |   1 +
> > > >>  include/drm/tinydrm/tinydrm-backlight.h          |  18 ++++
> > > >>  6 files changed, 124 insertions(+), 95 deletions(-)
> > > >>  create mode 100644 drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > > >>  create mode 100644 include/drm/tinydrm/tinydrm-backlight.h
> > > >>
> > > >>diff --git a/drivers/gpu/drm/tinydrm/core/Makefile
> > > >>b/drivers/gpu/drm/tinydrm/core/Makefile
> > > >>index fb221e6..389ca7a 100644
> > > >>--- a/drivers/gpu/drm/tinydrm/core/Makefile
> > > >>+++ b/drivers/gpu/drm/tinydrm/core/Makefile
> > > >>@@ -1,3 +1,3 @@
> > > >>-tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-helpers.o
> > > >>+tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-backlight.o
> > > >>tinydrm-helpers.o
> > > >>    obj-$(CONFIG_DRM_TINYDRM) += tinydrm.o
> > > >>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > > >>b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > > >>new file mode 100644
> > > >>index 0000000..dc6f17d
> > > >>--- /dev/null
> > > >>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > > >>@@ -0,0 +1,103 @@
> > > >>+#include <linux/backlight.h>
> > > >>+#include <linux/dma-buf.h>
> > > >>+#include <linux/pm.h>
> > > >>+#include <linux/swab.h>
> > > >>+
> > > >>+#include <drm/tinydrm/tinydrm.h>
> > > >>+#include <drm/tinydrm/tinydrm-backlight.h>
> > > >>+
> > > >>+/**
> > > >>+ * tinydrm_of_find_backlight - Find backlight device in device-tree
> > > >>+ * @dev: Device
> > > >>+ *
> > > >>+ * This function looks for a DT node pointed to by a property named
> > > >>'backlight'
> > > >>+ * and uses of_find_backlight_by_node() to get the backlight device.
> > > >>+ * Additionally if the brightness property is zero, it is set to
> > > >>+ * max_brightness.
> > > >>+ *
> > > >>+ * Returns:
> > > >>+ * NULL if there's no backlight property.
> > > >>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no
> > > >>backlight device
> > > >>+ * is found.
> > > >>+ * If the backlight device is found, a pointer to the structure is
> > > >>returned.
> > > >>+ */
> > > >>+
> > > >>+struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> > > >>+{
> > > >>+    struct backlight_device *backlight;
> > > >>+    struct device_node *np;
> > > >>+
> > > >>+    np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > >>+    if (!np)
> > > >>+        return NULL;
> > > >>+
> > > >>+    backlight = of_find_backlight_by_node(np);
> > > >>+    of_node_put(np);
> > > >>+
> > > >>+    if (!backlight)
> > > >>+        return ERR_PTR(-EPROBE_DEFER);
> > > >>+
> > > >>+    if (!backlight->props.brightness) {
> > > >>+        backlight->props.brightness = backlight->props.max_brightness;
> > > >>+        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > > >>+                  backlight->props.brightness);
> > > >>+    }
> > > >>+
> > > >>+    return backlight;
> > > >>+}
> > > >>+EXPORT_SYMBOL(tinydrm_of_find_backlight);
> > > >>+
> > > >>+/**
> > > >>+ * tinydrm_enable_backlight - Enable backlight helper
> > > >>+ * @backlight: Backlight device
> > > >>+ *
> > > >>+ * Returns:
> > > >>+ * Zero on success, negative error code on failure.
> > > >>+ */
> > > >>+int tinydrm_enable_backlight(struct backlight_device *backlight)
> > > >>+{
> > > >>+    unsigned int old_state;
> > > >>+    int ret;
> > > >>+
> > > >>+    if (!backlight)
> > > >>+        return 0;
> > > >>+
> > > >>+    old_state = backlight->props.state;
> > > >>+    backlight->props.state &= ~BL_CORE_FBBLANK;
> > > >>+    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > > >>+              backlight->props.state);
> > > >>+
> > > >>+    ret = backlight_update_status(backlight);
> > > >>+    if (ret)
> > > >>+        DRM_ERROR("Failed to enable backlight %d\n", ret);
> > > >>+
> > > >>+    return ret;
> > > >>+}
> > > >>+EXPORT_SYMBOL(tinydrm_enable_backlight);
> > > >>+
> > > >>+/**
> > > >>+ * tinydrm_disable_backlight - Disable backlight helper
> > > >>+ * @backlight: Backlight device
> > > >>+ *
> > > >>+ * Returns:
> > > >>+ * Zero on success, negative error code on failure.
> > > >>+ */
> > > >>+int tinydrm_disable_backlight(struct backlight_device *backlight)
> > > >>+{
> > > >>+    unsigned int old_state;
> > > >>+    int ret;
> > > >>+
> > > >>+    if (!backlight)
> > > >>+        return 0;
> > > >>+
> > > >>+    old_state = backlight->props.state;
> > > >>+    backlight->props.state |= BL_CORE_FBBLANK;
> > > >>+    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > > >>+              backlight->props.state);
> > > >>+    ret = backlight_update_status(backlight);
> > > >>+    if (ret)
> > > >>+        DRM_ERROR("Failed to disable backlight %d\n", ret);
> > > >>+
> > > >>+    return ret;
> > > >>+}
> > > >>+EXPORT_SYMBOL(tinydrm_disable_backlight);
> > > >>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > >>b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > >>index bd6cce0..ee8ad8c 100644
> > > >>--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > >>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > >>@@ -236,100 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void
> > > >>*vaddr, struct drm_framebuffer *fb,
> > > >>  }
> > > >>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> > > >>  -/**
> > > >>- * tinydrm_of_find_backlight - Find backlight device in device-tree
> > > >>- * @dev: Device
> > > >>- *
> > > >>- * This function looks for a DT node pointed to by a property named
> > > >>'backlight'
> > > >>- * and uses of_find_backlight_by_node() to get the backlight device.
> > > >>- * Additionally if the brightness property is zero, it is set to
> > > >>- * max_brightness.
> > > >>- *
> > > >>- * Returns:
> > > >>- * NULL if there's no backlight property.
> > > >>- * Error pointer -EPROBE_DEFER if the DT node is found, but no
> > > >>backlight device
> > > >>- * is found.
> > > >>- * If the backlight device is found, a pointer to the structure is
> > > >>returned.
> > > >>- */
> > > >>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> > > >>-{
> > > >>-    struct backlight_device *backlight;
> > > >>-    struct device_node *np;
> > > >>-
> > > >>-    np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > >>-    if (!np)
> > > >>-        return NULL;
> > > >>-
> > > >>-    backlight = of_find_backlight_by_node(np);
> > > >>-    of_node_put(np);
> > > >>-
> > > >>-    if (!backlight)
> > > >>-        return ERR_PTR(-EPROBE_DEFER);
> > > >>-
> > > >>-    if (!backlight->props.brightness) {
> > > >>-        backlight->props.brightness = backlight->props.max_brightness;
> > > >>-        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > > >>-                  backlight->props.brightness);
> > > >>-    }
> > > >>-
> > > >>-    return backlight;
> > > >>-}
> > > >>-EXPORT_SYMBOL(tinydrm_of_find_backlight);
> > > >>-
> > > >>-/**
> > > >>- * tinydrm_enable_backlight - Enable backlight helper
> > > >>- * @backlight: Backlight device
> > > >>- *
> > > >>- * Returns:
> > > >>- * Zero on success, negative error code on failure.
> > > >>- */
> > > >>-int tinydrm_enable_backlight(struct backlight_device *backlight)
> > > >>-{
> > > >>-    unsigned int old_state;
> > > >>-    int ret;
> > > >>-
> > > >>-    if (!backlight)
> > > >>-        return 0;
> > > >>-
> > > >>-    old_state = backlight->props.state;
> > > >>-    backlight->props.state &= ~BL_CORE_FBBLANK;
> > > >>-    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > > >>-              backlight->props.state);
> > > >>-
> > > >>-    ret = backlight_update_status(backlight);
> > > >>-    if (ret)
> > > >>-        DRM_ERROR("Failed to enable backlight %d\n", ret);
> > > >>-
> > > >>-    return ret;
> > > >>-}
> > > >>-EXPORT_SYMBOL(tinydrm_enable_backlight);
> > > >>-
> > > >>-/**
> > > >>- * tinydrm_disable_backlight - Disable backlight helper
> > > >>- * @backlight: Backlight device
> > > >>- *
> > > >>- * Returns:
> > > >>- * Zero on success, negative error code on failure.
> > > >>- */
> > > >>-int tinydrm_disable_backlight(struct backlight_device *backlight)
> > > >>-{
> > > >>-    unsigned int old_state;
> > > >>-    int ret;
> > > >>-
> > > >>-    if (!backlight)
> > > >>-        return 0;
> > > >>-
> > > >>-    old_state = backlight->props.state;
> > > >>-    backlight->props.state |= BL_CORE_FBBLANK;
> > > >>-    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > > >>-              backlight->props.state);
> > > >>-    ret = backlight_update_status(backlight);
> > > >>-    if (ret)
> > > >>-        DRM_ERROR("Failed to disable backlight %d\n", ret);
> > > >>-
> > > >>-    return ret;
> > > >>-}
> > > >>-EXPORT_SYMBOL(tinydrm_disable_backlight);
> > > >>    #if IS_ENABLED(CONFIG_SPI)
> > > >>  diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > >>b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > >>index 7e5bb7d..c161d45 100644
> > > >>--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > >>+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > >>@@ -12,6 +12,7 @@
> > > >>  #include <drm/tinydrm/ili9341.h>
> > > >>  #include <drm/tinydrm/mipi-dbi.h>
> > > >>  #include <drm/tinydrm/tinydrm-helpers.h>
> > > >>+#include <drm/tinydrm/tinydrm-backlight.h>
> > > >>  #include <linux/delay.h>
> > > >>  #include <linux/gpio/consumer.h>
> > > >>  #include <linux/module.h>
> > > >>diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > > >>b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > > >>index 2caeabc..dc84f26 100644
> > > >>--- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > > >>+++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > > >>@@ -11,6 +11,7 @@
> > > >>    #include <drm/tinydrm/mipi-dbi.h>
> > > >>  #include <drm/tinydrm/tinydrm-helpers.h>
> > > >>+#include <drm/tinydrm/tinydrm-backlight.h>
> > > >>  #include <linux/debugfs.h>
> > > >>  #include <linux/dma-buf.h>
> > > >>  #include <linux/gpio/consumer.h>
> > > >>diff --git a/include/drm/tinydrm/tinydrm-backlight.h
> > > >>b/include/drm/tinydrm/tinydrm-backlight.h
> > > >>new file mode 100644
> > > >>index 0000000..6a7b6d5
> > > >>--- /dev/null
> > > >>+++ b/include/drm/tinydrm/tinydrm-backlight.h
> > > >>@@ -0,0 +1,18 @@
> > > >>+/*
> > > >>+ * Copyright (C) 2016 Noralf Trønnes
> > > >>+ *
> > > >>+ * This program is free software; you can redistribute it and/or modify
> > > >>+ * it under the terms of the GNU General Public License as published by
> > > >>+ * the Free Software Foundation; either version 2 of the License, or
> > > >>+ * (at your option) any later version.
> > > >>+ */
> > > >>+
> > > >>+#ifndef __LINUX_TINYDRM_BACKLIGHT_H
> > > >>+#define __LINUX_TINYDRM_BACKLIGHT_H
> > > >>+
> > > >>+struct backlight_device;
> > > >>+struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> > > >>+int tinydrm_enable_backlight(struct backlight_device *backlight);
> > > >>+int tinydrm_disable_backlight(struct backlight_device *backlight);
> > > >>+
> > > >>+#endif /* __LINUX_TINYDRM_BACKLIGHT_H */
> > > >
> > > >_______________________________________________
> > > >dri-devel mailing list
> > > >dri-devel@lists.freedesktop.org
> > > >https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > > >
> > > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

