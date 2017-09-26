X-GM-THRID: 6468555141619384320
X-Received: by 10.28.230.79 with SMTP id d76mr328452wmh.12.1506425540202;
        Tue, 26 Sep 2017 04:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.87 with SMTP id j84ls462365lfi.17.gmail; Tue, 26 Sep
 2017 04:32:18 -0700 (PDT)
X-Received: by 10.25.142.81 with SMTP id q78mr549513lfd.40.1506425538217;
        Tue, 26 Sep 2017 04:32:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506425538; cv=none;
        d=google.com; s=arc-20160816;
        b=rd0+wEP1iIIL/HmePGy5sTZORLvPCb7iZKWdyLBUOV0Dk1AxsHs3G7d6nMObvYLo/w
         AVcgaDzXaFfvWgjRRK9uYxGuc5DRXM5Bio//PSmQEwbl6ZUERlAfktamluln3FDQXnCc
         iEnr8p2jirvMD/MTr0V0w9P2VqehYWVdaZGk1Ex15GX9pZ+jzd2Iq1FN2sDD/NUM1jMc
         Ti3npS5tdQNJMBRi71UfnlX38g3YhoylhPn/hVkjDlJVTNnXYAICVbexWzoTWDj2SynQ
         zXDu3EQqMIXIBU6K3TkvzI+TE0TOX8Fa8OxKTUPDxacpXz5N7CzhlIJFRzZm4mLj/DSh
         fFlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=6fFuFk+WdVCYYs2jd15l02D1at0VmM4UPsgclInKktQ=;
        b=ON6xXTgrgryBfKY6aLW2hQpaNrzUVwk8i264IEiHaGm3m0fx4u41FJyf7jaGRss48s
         8u/oXE2ckTy9sxxhD3UZN/eDAVWLyN0Ui47q/V7Uink1Dy9PUoNinc+WPJrPlBK27+az
         HD+ARrIZY58KJ7fkIwMf+xxI0KxMZlJ1GRpugGNgoXzMsnKhdHOpjfM4vrtvcwMqpbh+
         BRMrlxXcxbybELdCWaugwU5EsWYqx8fdgRZT5oK0D0sBRtGGbQJHsbz0yNV2+dmNV+bF
         SNuasf0tew/01IE/s8ghGlIx+ZSC3EY2nIHhJXbqHCbNCQMsI0eE68WEPSziurKqr3oZ
         Iv/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=IeRsfqnX;
       spf=neutral (google.com: 2a00:1450:400c:c09::22e is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id p70si113161wma.1.2017.09.26.04.32.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 04:32:18 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::22e is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=IeRsfqnX;
       spf=neutral (google.com: 2a00:1450:400c:c09::22e is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x22e.google.com with SMTP id m72so6809174wmc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 04:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=6fFuFk+WdVCYYs2jd15l02D1at0VmM4UPsgclInKktQ=;
        b=IeRsfqnXcv2FVEpDWVLmz46Vt/51U0RNC2dkQ5OBqb9JSftLIf8R7t5ajU/DmOEpUp
         ywrXikEeG833gsTMbKIQfvdF0jXeGKbepJ1Lld7ROEv7klptcG22/oYRW0KZsFpNkT3E
         k8m3SmGW2kwwDe8vzZqE2efNVPVuqT1oLhQ+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=6fFuFk+WdVCYYs2jd15l02D1at0VmM4UPsgclInKktQ=;
        b=aLvCoru842zJXJdB7odU56Cprid1xxRRDHnrgsBbnHiIz8jAAlHzYZki2U7vUGyki/
         v8iuU2r3fKqvpLyIB/E2kDXiKo8wPYi+VN8Z5BB9nngbLobKJK7uxF8AwNm+KCZMt5S+
         xRW2IsJQs4nYrw2kt6wALbFDmPqV/5+6GVBD3HWnpFZVi6UgMvUApyVXkQIjzAOfGui6
         UdIqhj/qc7SQk8LmIDLBQKOudQEImyQ7QuTftvq6SBXlYigYQ/zRjNzTqbkdch6pJ+9H
         GNcYXhxQpj2dEHDezEbG5p7JYkNg3RKx0+7hCDGR3dozU6uAnomVo0mMeKdxGBZVFWpE
         4VWQ==
X-Gm-Message-State: AHPjjUguZcSNRaskUqE7suKN2NNQCFQT53iencGc/FpxJQRB6Lz/Whii
	AHado+zQfbzQOyQDMgn6pdTJRg==
X-Google-Smtp-Source: AOwi7QBTIJdeGFWCEM4tPprGVlhZtFOyQPYmhpQyH9c8DjkVIjyXxmhJUKpCoIGV7mqUbA3p/mBGhA==
X-Received: by 10.80.165.81 with SMTP id z17mr17588390edb.8.1506425537778;
        Tue, 26 Sep 2017 04:32:17 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id f9sm5879401ede.38.2017.09.26.04.32.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Sep 2017 04:32:16 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 13:32:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/tinydrm: Move backlight helpers to a separate file
Message-ID: <20170926113214.ahxqmqspsd3olu73@phenom.ffwll.local>
References: <20170922150935.GA15912@meghana-HP-Pavilion-Notebook>
 <3dd313c8-daa7-a395-183c-c2dfac4dd4b4@tronnes.org>
 <ecdafe5f-1434-b3cf-82bb-a3286ee96d3e@tronnes.org>
 <20170926111650.GA7624@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170926111650.GA7624@meghana-HP-Pavilion-Notebook>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Tue, Sep 26, 2017 at 04:46:53PM +0530, Meghana Madhyastha wrote:
> On Mon, Sep 25, 2017 at 06:31:58PM +0200, Noralf Trønnes wrote:
> > 
> > Den 25.09.2017 16.56, skrev Noralf Trønnes:
> > >Hi Meghana,
> > >
> > >
> > >Den 22.09.2017 17.09, skrev Meghana Madhyastha:
> > >>Move backlight helpers from tinydrm-helpers.c to
> > >>tinydrm-backlight.c. This is because it is organizationally
> > >>simpler to understand and advantageous to group functions
> > >>performing a similar function to a separate file as opposed to
> > >>having one helper file with heteregenous helper functions.
> > >>
> > >>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > >>---
> > >
> > >I don't think there is much gain in just moving the code like this.
> > >
> > >The idea is to add a drm_backlight helper that can be useful for all
> > >DRM drivers that use the backlight subsystem.
> 
> Yes I agree. That definitely makes more sense.
> > 
> > The full path to that helper would be:
> > drivers/gpu/drm/drm_backlight.c
> > 
> > >This is what the TODO says:
> > >https://dri.freedesktop.org/docs/drm/gpu/todo.html#tinydrm
> > >
> > >- backlight helpers, probably best to put them into a new drm_backlight.c.
> > >  This is because drivers/video is de-facto unmaintained. We could also
> > >  move drivers/video/backlight to drivers/gpu/backlight and take it all
> > >  over within drm-misc, but that’s more work.
> > >
> > >There is also this discussion to take into account:
> > >KMS backlight ABI proposition
> > >https://lists.freedesktop.org/archives/dri-devel/2017-February/133206.html
> > >
> > >
> > >I don't remember what came out of that discussion.
> > >
> > >Noralf.
> 
> After having discussed this with Daniel on the #dri-devel irc channel, 
> here are some of the points suggested.
> 
> Daniel suggested that I first look into the usage of shared backlight
> helpers in drm (specifically backlight_update_status to begin with). The idea
> was to see whether there is any pattern in usage and/or code dupication.
> If there is, then the next step would be to write helper functions which
> can be used by other drivers (and not just tinydrm). 
> 
> To start with, I went through the instances of backlight_update_status
> in the drm code, and made the following observations(most of them are
> very simple/naive observations).
> 
> - backlight_update_status is usually called in backlight init (and
>   sometimes exit) functions of the drivers just after the device is registered.
>   So backlight_update_status is called with the registered device as the
>   parameter.
> 
> Here are the following cases of properties changed/set before 
> backlight_update_status is called.
> 
> - CASE 1: Brightness is changed (either a macro BRIGHTNESS_MAX_LEVEL 100
>   is defined or it is manually set) This happens in the following files:
> 
>   gma500/cdv_device.c, gma500/mdfld_device.c, gma500/oaktrail_device.c,
>   gma500/psb_device.c, noveau/noveau_backlight.c(here brightness is determined by fuction
>   static int nv50_get_intensity)
> 
> - CASE 2: Power property is set (to FB_BLANK_UNBLANK mostly)
>   This happens in the following files:
> 
>   omapdrm/displays/panel-dpi.c, panel/panel-innolux-p079zca.c,
>   panel/panel-jdi-lt070me05000.c, panel/panel-sharp-lq101r1sx01.c, 
>   panel/panel-sharp-ls043t1le01.c, tilcdc/tilcdc_panel.c
>   
> - CASE 3: State is set
>   This happens in the following files:
> 
>   tinydrm/tinydrm-helpers.c
> 
> - CASE 4: Power and brightness properties are set
>   This happens in the following files:
> 
>   atombios_encoders.c, radeon/radeon_legacy_encoders.c, 
>   shmobile/shmob_drm_backlight.c
> 
> - CASE 5: Power and the state properties are set
>   This happens in the following files:
> 
>   panel/panel-lvds.c, panel/panel-panasonic-vvx10f034n00.c,
>   panel/panel-simple.c, panel/panel-sitronix-st7789v.c
> 
> Please let me know if I am wrong / missed something. As for next steps,
> wouldn't it be an overkill to have a separate helper function for each
> of these cases ? Perhaps a generic helper function which would somehow
> address these cases would be more appropriate ? Thank you for your
> time/patience.

I suspect that a lot of these combinations are just plain wrong, but
happen to kinda work with the combination of gpu driver and backlight
driver they're used on. tbh I have no idea which one is the correct
version for enabling a backlight correctly ...

So definitely a good task to refactor this into a proper helper, but looks
a lot more involved than at first sight.

Do you have any of the hardware supported by any of these drivers? lsmod
and then comparing with the modules you're building in your own tree
should help you figure this out.
-Daniel

> 
> -Meghana
> 
> > >>Changes in v2:
> > >>  -Improved commit message by explaining why the changes were made.
> > >>
> > >>  drivers/gpu/drm/tinydrm/core/Makefile            |   2 +-
> > >>  drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c | 103
> > >>+++++++++++++++++++++++
> > >>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c   |  94
> > >>---------------------
> > >>  drivers/gpu/drm/tinydrm/mi0283qt.c               |   1 +
> > >>  drivers/gpu/drm/tinydrm/mipi-dbi.c               |   1 +
> > >>  include/drm/tinydrm/tinydrm-backlight.h          |  18 ++++
> > >>  6 files changed, 124 insertions(+), 95 deletions(-)
> > >>  create mode 100644 drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > >>  create mode 100644 include/drm/tinydrm/tinydrm-backlight.h
> > >>
> > >>diff --git a/drivers/gpu/drm/tinydrm/core/Makefile
> > >>b/drivers/gpu/drm/tinydrm/core/Makefile
> > >>index fb221e6..389ca7a 100644
> > >>--- a/drivers/gpu/drm/tinydrm/core/Makefile
> > >>+++ b/drivers/gpu/drm/tinydrm/core/Makefile
> > >>@@ -1,3 +1,3 @@
> > >>-tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-helpers.o
> > >>+tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-backlight.o
> > >>tinydrm-helpers.o
> > >>    obj-$(CONFIG_DRM_TINYDRM) += tinydrm.o
> > >>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > >>b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > >>new file mode 100644
> > >>index 0000000..dc6f17d
> > >>--- /dev/null
> > >>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> > >>@@ -0,0 +1,103 @@
> > >>+#include <linux/backlight.h>
> > >>+#include <linux/dma-buf.h>
> > >>+#include <linux/pm.h>
> > >>+#include <linux/swab.h>
> > >>+
> > >>+#include <drm/tinydrm/tinydrm.h>
> > >>+#include <drm/tinydrm/tinydrm-backlight.h>
> > >>+
> > >>+/**
> > >>+ * tinydrm_of_find_backlight - Find backlight device in device-tree
> > >>+ * @dev: Device
> > >>+ *
> > >>+ * This function looks for a DT node pointed to by a property named
> > >>'backlight'
> > >>+ * and uses of_find_backlight_by_node() to get the backlight device.
> > >>+ * Additionally if the brightness property is zero, it is set to
> > >>+ * max_brightness.
> > >>+ *
> > >>+ * Returns:
> > >>+ * NULL if there's no backlight property.
> > >>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no
> > >>backlight device
> > >>+ * is found.
> > >>+ * If the backlight device is found, a pointer to the structure is
> > >>returned.
> > >>+ */
> > >>+
> > >>+struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> > >>+{
> > >>+    struct backlight_device *backlight;
> > >>+    struct device_node *np;
> > >>+
> > >>+    np = of_parse_phandle(dev->of_node, "backlight", 0);
> > >>+    if (!np)
> > >>+        return NULL;
> > >>+
> > >>+    backlight = of_find_backlight_by_node(np);
> > >>+    of_node_put(np);
> > >>+
> > >>+    if (!backlight)
> > >>+        return ERR_PTR(-EPROBE_DEFER);
> > >>+
> > >>+    if (!backlight->props.brightness) {
> > >>+        backlight->props.brightness = backlight->props.max_brightness;
> > >>+        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > >>+                  backlight->props.brightness);
> > >>+    }
> > >>+
> > >>+    return backlight;
> > >>+}
> > >>+EXPORT_SYMBOL(tinydrm_of_find_backlight);
> > >>+
> > >>+/**
> > >>+ * tinydrm_enable_backlight - Enable backlight helper
> > >>+ * @backlight: Backlight device
> > >>+ *
> > >>+ * Returns:
> > >>+ * Zero on success, negative error code on failure.
> > >>+ */
> > >>+int tinydrm_enable_backlight(struct backlight_device *backlight)
> > >>+{
> > >>+    unsigned int old_state;
> > >>+    int ret;
> > >>+
> > >>+    if (!backlight)
> > >>+        return 0;
> > >>+
> > >>+    old_state = backlight->props.state;
> > >>+    backlight->props.state &= ~BL_CORE_FBBLANK;
> > >>+    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > >>+              backlight->props.state);
> > >>+
> > >>+    ret = backlight_update_status(backlight);
> > >>+    if (ret)
> > >>+        DRM_ERROR("Failed to enable backlight %d\n", ret);
> > >>+
> > >>+    return ret;
> > >>+}
> > >>+EXPORT_SYMBOL(tinydrm_enable_backlight);
> > >>+
> > >>+/**
> > >>+ * tinydrm_disable_backlight - Disable backlight helper
> > >>+ * @backlight: Backlight device
> > >>+ *
> > >>+ * Returns:
> > >>+ * Zero on success, negative error code on failure.
> > >>+ */
> > >>+int tinydrm_disable_backlight(struct backlight_device *backlight)
> > >>+{
> > >>+    unsigned int old_state;
> > >>+    int ret;
> > >>+
> > >>+    if (!backlight)
> > >>+        return 0;
> > >>+
> > >>+    old_state = backlight->props.state;
> > >>+    backlight->props.state |= BL_CORE_FBBLANK;
> > >>+    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > >>+              backlight->props.state);
> > >>+    ret = backlight_update_status(backlight);
> > >>+    if (ret)
> > >>+        DRM_ERROR("Failed to disable backlight %d\n", ret);
> > >>+
> > >>+    return ret;
> > >>+}
> > >>+EXPORT_SYMBOL(tinydrm_disable_backlight);
> > >>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > >>b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > >>index bd6cce0..ee8ad8c 100644
> > >>--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > >>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > >>@@ -236,100 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void
> > >>*vaddr, struct drm_framebuffer *fb,
> > >>  }
> > >>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> > >>  -/**
> > >>- * tinydrm_of_find_backlight - Find backlight device in device-tree
> > >>- * @dev: Device
> > >>- *
> > >>- * This function looks for a DT node pointed to by a property named
> > >>'backlight'
> > >>- * and uses of_find_backlight_by_node() to get the backlight device.
> > >>- * Additionally if the brightness property is zero, it is set to
> > >>- * max_brightness.
> > >>- *
> > >>- * Returns:
> > >>- * NULL if there's no backlight property.
> > >>- * Error pointer -EPROBE_DEFER if the DT node is found, but no
> > >>backlight device
> > >>- * is found.
> > >>- * If the backlight device is found, a pointer to the structure is
> > >>returned.
> > >>- */
> > >>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> > >>-{
> > >>-    struct backlight_device *backlight;
> > >>-    struct device_node *np;
> > >>-
> > >>-    np = of_parse_phandle(dev->of_node, "backlight", 0);
> > >>-    if (!np)
> > >>-        return NULL;
> > >>-
> > >>-    backlight = of_find_backlight_by_node(np);
> > >>-    of_node_put(np);
> > >>-
> > >>-    if (!backlight)
> > >>-        return ERR_PTR(-EPROBE_DEFER);
> > >>-
> > >>-    if (!backlight->props.brightness) {
> > >>-        backlight->props.brightness = backlight->props.max_brightness;
> > >>-        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > >>-                  backlight->props.brightness);
> > >>-    }
> > >>-
> > >>-    return backlight;
> > >>-}
> > >>-EXPORT_SYMBOL(tinydrm_of_find_backlight);
> > >>-
> > >>-/**
> > >>- * tinydrm_enable_backlight - Enable backlight helper
> > >>- * @backlight: Backlight device
> > >>- *
> > >>- * Returns:
> > >>- * Zero on success, negative error code on failure.
> > >>- */
> > >>-int tinydrm_enable_backlight(struct backlight_device *backlight)
> > >>-{
> > >>-    unsigned int old_state;
> > >>-    int ret;
> > >>-
> > >>-    if (!backlight)
> > >>-        return 0;
> > >>-
> > >>-    old_state = backlight->props.state;
> > >>-    backlight->props.state &= ~BL_CORE_FBBLANK;
> > >>-    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > >>-              backlight->props.state);
> > >>-
> > >>-    ret = backlight_update_status(backlight);
> > >>-    if (ret)
> > >>-        DRM_ERROR("Failed to enable backlight %d\n", ret);
> > >>-
> > >>-    return ret;
> > >>-}
> > >>-EXPORT_SYMBOL(tinydrm_enable_backlight);
> > >>-
> > >>-/**
> > >>- * tinydrm_disable_backlight - Disable backlight helper
> > >>- * @backlight: Backlight device
> > >>- *
> > >>- * Returns:
> > >>- * Zero on success, negative error code on failure.
> > >>- */
> > >>-int tinydrm_disable_backlight(struct backlight_device *backlight)
> > >>-{
> > >>-    unsigned int old_state;
> > >>-    int ret;
> > >>-
> > >>-    if (!backlight)
> > >>-        return 0;
> > >>-
> > >>-    old_state = backlight->props.state;
> > >>-    backlight->props.state |= BL_CORE_FBBLANK;
> > >>-    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> > >>-              backlight->props.state);
> > >>-    ret = backlight_update_status(backlight);
> > >>-    if (ret)
> > >>-        DRM_ERROR("Failed to disable backlight %d\n", ret);
> > >>-
> > >>-    return ret;
> > >>-}
> > >>-EXPORT_SYMBOL(tinydrm_disable_backlight);
> > >>    #if IS_ENABLED(CONFIG_SPI)
> > >>  diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > >>b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > >>index 7e5bb7d..c161d45 100644
> > >>--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > >>+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > >>@@ -12,6 +12,7 @@
> > >>  #include <drm/tinydrm/ili9341.h>
> > >>  #include <drm/tinydrm/mipi-dbi.h>
> > >>  #include <drm/tinydrm/tinydrm-helpers.h>
> > >>+#include <drm/tinydrm/tinydrm-backlight.h>
> > >>  #include <linux/delay.h>
> > >>  #include <linux/gpio/consumer.h>
> > >>  #include <linux/module.h>
> > >>diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > >>b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > >>index 2caeabc..dc84f26 100644
> > >>--- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > >>+++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> > >>@@ -11,6 +11,7 @@
> > >>    #include <drm/tinydrm/mipi-dbi.h>
> > >>  #include <drm/tinydrm/tinydrm-helpers.h>
> > >>+#include <drm/tinydrm/tinydrm-backlight.h>
> > >>  #include <linux/debugfs.h>
> > >>  #include <linux/dma-buf.h>
> > >>  #include <linux/gpio/consumer.h>
> > >>diff --git a/include/drm/tinydrm/tinydrm-backlight.h
> > >>b/include/drm/tinydrm/tinydrm-backlight.h
> > >>new file mode 100644
> > >>index 0000000..6a7b6d5
> > >>--- /dev/null
> > >>+++ b/include/drm/tinydrm/tinydrm-backlight.h
> > >>@@ -0,0 +1,18 @@
> > >>+/*
> > >>+ * Copyright (C) 2016 Noralf Trønnes
> > >>+ *
> > >>+ * This program is free software; you can redistribute it and/or modify
> > >>+ * it under the terms of the GNU General Public License as published by
> > >>+ * the Free Software Foundation; either version 2 of the License, or
> > >>+ * (at your option) any later version.
> > >>+ */
> > >>+
> > >>+#ifndef __LINUX_TINYDRM_BACKLIGHT_H
> > >>+#define __LINUX_TINYDRM_BACKLIGHT_H
> > >>+
> > >>+struct backlight_device;
> > >>+struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> > >>+int tinydrm_enable_backlight(struct backlight_device *backlight);
> > >>+int tinydrm_disable_backlight(struct backlight_device *backlight);
> > >>+
> > >>+#endif /* __LINUX_TINYDRM_BACKLIGHT_H */
> > >
> > >_______________________________________________
> > >dri-devel mailing list
> > >dri-devel@lists.freedesktop.org
> > >https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > >
> > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

