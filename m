X-GM-THRID: 6468555141619384320
X-Received: by 10.157.51.145 with SMTP id u17mr1059602otc.38.1506424623962;
        Tue, 26 Sep 2017 04:17:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.75.213 with SMTP id y204ls1569759ywa.16.gmail; Tue, 26 Sep
 2017 04:17:03 -0700 (PDT)
X-Received: by 10.13.228.132 with SMTP id n126mr6530913ywe.197.1506424623229;
        Tue, 26 Sep 2017 04:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506424623; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmAOzGp1DrJsPBspi7MXwi7KAlUfnBPkF258Qkcjew5ENH0fCz/KP/o6xQpDbl6v99
         i8O1p8S5s2nhC/h1dWuOr3FFyG/lQSYueNGhACllYVcadK63Jw78Yl85RiSv11BPD0SX
         0jj7W3odw/xF0ikQv9Qs2VgOSvFrEVd4LBDHh7pfnkdwjIdJNr5PXsdc2EupglbRjEpQ
         thIq/u8azfolTLdFIeXRR/F/RITgsNwKcLCTMm3TjcDG2mpp7nukk5Od/TwoQVyRbUNT
         mm+2BSZTbDdECk9PhPE5FRYq5YPigPKn27qCXM4WLFz7qMMk+Tg0bQJPujh5rOxAAIak
         4wVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=7VxaQVQ40dzz43S83YjV0ktxO7/ynkROthrOUTUZZ/E=;
        b=g9h6VYZ7MFyL3fzTPtwlTzePm6NG4wectzDE6Ervpg+4newJV1+Hysg09Jg/8RUAZj
         qX1fQexiQDm5Smw2RoXzlHWgF/OgmnkSF896FI77AysoTSt8haS6bjEqnVanz+hgOVb0
         jUbiie90TtZdTk0r3PFCQdWZi9DV3INbQXpYwzyOatBhQPCSHdU4TN3N/dzKVoDQT7pc
         pmlSz9UzmptNG84RIaZ8kT+P4ObNAetykMTZmAlCGNnvNEJupu5PQVOe3f1fVVlgRWcf
         yXAT7yANCwMhg37K+IavE3OgBtEm5KPQOkPcuYdPEdcNFCIct53SR3b3v1NvPzYmPAZc
         s8gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkUJx4Df;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f189si616915pfa.1.2017.09.26.04.17.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 04:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkUJx4Df;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so4879938pfj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 04:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=7VxaQVQ40dzz43S83YjV0ktxO7/ynkROthrOUTUZZ/E=;
        b=mkUJx4DfNNAyvQ2+jMZy5vVBqxiXT9LV4C8rXhDViuxa7JGK09pBFRA/r8X69VqYd6
         r+N85sba7fBy+VmNX+nIghg0aBUb/zpY1YNCYfSFnV6IEf8KzmzjoyjEjHzT2TEBDRUG
         4DfIm3/A/q3/dOi2s6EX/FO4pyHQfv+HaRmnoHcXvep+f2pni6fCFN1amllC2m9pVpMB
         deGDp3LQhwSU+tdCLupnMIIBXDe4WC2NaR6hQY1VJ5mzk8+vyHUz22ZgxhUUOoyetjOt
         EE2f4fn/d0ZOHC+EA4UeULTURx6uhSzbOhbykEsjssPRoOp2kNXM6szd4CuIytAi3IH/
         eytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=7VxaQVQ40dzz43S83YjV0ktxO7/ynkROthrOUTUZZ/E=;
        b=O/eBn5xYFlAdQgXKkbYJ9gic6c7Nevhp5iqzdgvxpbywMf9PlAUVAyF+G9s3CFC71H
         c9mHeqgwBK5flO4ADzR+yr5QWzikLem4sVbWygLzYI4yNS15laoa8ehZtTagFLxh9RYQ
         kEiXuep6aahu/ES4wpArv500M8OEdtI0kNNE7ssTXIdqgTGPAhExirl0vZlGijY8JO/p
         LlInojS7xAd94TjwEz59DFIIzYFzlfrDjoQFlvYBZ9jRlUmI2hTWTFUtRQitw6OxpHci
         iMxrHOTdWckvtlufusd+XX/amiJ4xgnO5rAxbTiLtN4ECapTNlsWpuS3/frKx+kzYk3X
         xceQ==
X-Gm-Message-State: AHPjjUi2ijWqNWGQOKu1swqdqlaCmIixsrmzemhviMHYUggBFc647nH9
	S/Ux6s3/gaOv2SyjfizZ5BXE6579
X-Google-Smtp-Source: AOwi7QCo63eiWUI3myR+2gc8RkG2Uq90FECjaYmXy6na4v0201BNvtSqRd4bS8d0k6NnAw4IapYvrg==
X-Received: by 10.98.71.198 with SMTP id p67mr10347516pfi.15.1506424622803;
        Tue, 26 Sep 2017 04:17:02 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id j13sm15931639pfk.107.2017.09.26.04.16.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 04:17:01 -0700 (PDT)
Date: Tue, 26 Sep 2017 16:46:53 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/tinydrm: Move backlight helpers to a separate file
Message-ID: <20170926111650.GA7624@meghana-HP-Pavilion-Notebook>
References: <20170922150935.GA15912@meghana-HP-Pavilion-Notebook>
 <3dd313c8-daa7-a395-183c-c2dfac4dd4b4@tronnes.org>
 <ecdafe5f-1434-b3cf-82bb-a3286ee96d3e@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ecdafe5f-1434-b3cf-82bb-a3286ee96d3e@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Sep 25, 2017 at 06:31:58PM +0200, Noralf Trønnes wrote:
> 
> Den 25.09.2017 16.56, skrev Noralf Trønnes:
> >Hi Meghana,
> >
> >
> >Den 22.09.2017 17.09, skrev Meghana Madhyastha:
> >>Move backlight helpers from tinydrm-helpers.c to
> >>tinydrm-backlight.c. This is because it is organizationally
> >>simpler to understand and advantageous to group functions
> >>performing a similar function to a separate file as opposed to
> >>having one helper file with heteregenous helper functions.
> >>
> >>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >>---
> >
> >I don't think there is much gain in just moving the code like this.
> >
> >The idea is to add a drm_backlight helper that can be useful for all
> >DRM drivers that use the backlight subsystem.

Yes I agree. That definitely makes more sense.
> 
> The full path to that helper would be:
> drivers/gpu/drm/drm_backlight.c
> 
> >This is what the TODO says:
> >https://dri.freedesktop.org/docs/drm/gpu/todo.html#tinydrm
> >
> >- backlight helpers, probably best to put them into a new drm_backlight.c.
> >  This is because drivers/video is de-facto unmaintained. We could also
> >  move drivers/video/backlight to drivers/gpu/backlight and take it all
> >  over within drm-misc, but that’s more work.
> >
> >There is also this discussion to take into account:
> >KMS backlight ABI proposition
> >https://lists.freedesktop.org/archives/dri-devel/2017-February/133206.html
> >
> >
> >I don't remember what came out of that discussion.
> >
> >Noralf.

After having discussed this with Daniel on the #dri-devel irc channel, 
here are some of the points suggested.

Daniel suggested that I first look into the usage of shared backlight
helpers in drm (specifically backlight_update_status to begin with). The idea
was to see whether there is any pattern in usage and/or code dupication.
If there is, then the next step would be to write helper functions which
can be used by other drivers (and not just tinydrm). 

To start with, I went through the instances of backlight_update_status
in the drm code, and made the following observations(most of them are
very simple/naive observations).

- backlight_update_status is usually called in backlight init (and
  sometimes exit) functions of the drivers just after the device is registered.
  So backlight_update_status is called with the registered device as the
  parameter.

Here are the following cases of properties changed/set before 
backlight_update_status is called.

- CASE 1: Brightness is changed (either a macro BRIGHTNESS_MAX_LEVEL 100
  is defined or it is manually set) This happens in the following files:

  gma500/cdv_device.c, gma500/mdfld_device.c, gma500/oaktrail_device.c,
  gma500/psb_device.c, noveau/noveau_backlight.c(here brightness is determined by fuction
  static int nv50_get_intensity)

- CASE 2: Power property is set (to FB_BLANK_UNBLANK mostly)
  This happens in the following files:

  omapdrm/displays/panel-dpi.c, panel/panel-innolux-p079zca.c,
  panel/panel-jdi-lt070me05000.c, panel/panel-sharp-lq101r1sx01.c, 
  panel/panel-sharp-ls043t1le01.c, tilcdc/tilcdc_panel.c
  
- CASE 3: State is set
  This happens in the following files:

  tinydrm/tinydrm-helpers.c

- CASE 4: Power and brightness properties are set
  This happens in the following files:

  atombios_encoders.c, radeon/radeon_legacy_encoders.c, 
  shmobile/shmob_drm_backlight.c

- CASE 5: Power and the state properties are set
  This happens in the following files:

  panel/panel-lvds.c, panel/panel-panasonic-vvx10f034n00.c,
  panel/panel-simple.c, panel/panel-sitronix-st7789v.c

Please let me know if I am wrong / missed something. As for next steps,
wouldn't it be an overkill to have a separate helper function for each
of these cases ? Perhaps a generic helper function which would somehow
address these cases would be more appropriate ? Thank you for your
time/patience.

-Meghana

> >>Changes in v2:
> >>  -Improved commit message by explaining why the changes were made.
> >>
> >>  drivers/gpu/drm/tinydrm/core/Makefile            |   2 +-
> >>  drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c | 103
> >>+++++++++++++++++++++++
> >>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c   |  94
> >>---------------------
> >>  drivers/gpu/drm/tinydrm/mi0283qt.c               |   1 +
> >>  drivers/gpu/drm/tinydrm/mipi-dbi.c               |   1 +
> >>  include/drm/tinydrm/tinydrm-backlight.h          |  18 ++++
> >>  6 files changed, 124 insertions(+), 95 deletions(-)
> >>  create mode 100644 drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> >>  create mode 100644 include/drm/tinydrm/tinydrm-backlight.h
> >>
> >>diff --git a/drivers/gpu/drm/tinydrm/core/Makefile
> >>b/drivers/gpu/drm/tinydrm/core/Makefile
> >>index fb221e6..389ca7a 100644
> >>--- a/drivers/gpu/drm/tinydrm/core/Makefile
> >>+++ b/drivers/gpu/drm/tinydrm/core/Makefile
> >>@@ -1,3 +1,3 @@
> >>-tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-helpers.o
> >>+tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-backlight.o
> >>tinydrm-helpers.o
> >>    obj-$(CONFIG_DRM_TINYDRM) += tinydrm.o
> >>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> >>b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> >>new file mode 100644
> >>index 0000000..dc6f17d
> >>--- /dev/null
> >>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> >>@@ -0,0 +1,103 @@
> >>+#include <linux/backlight.h>
> >>+#include <linux/dma-buf.h>
> >>+#include <linux/pm.h>
> >>+#include <linux/swab.h>
> >>+
> >>+#include <drm/tinydrm/tinydrm.h>
> >>+#include <drm/tinydrm/tinydrm-backlight.h>
> >>+
> >>+/**
> >>+ * tinydrm_of_find_backlight - Find backlight device in device-tree
> >>+ * @dev: Device
> >>+ *
> >>+ * This function looks for a DT node pointed to by a property named
> >>'backlight'
> >>+ * and uses of_find_backlight_by_node() to get the backlight device.
> >>+ * Additionally if the brightness property is zero, it is set to
> >>+ * max_brightness.
> >>+ *
> >>+ * Returns:
> >>+ * NULL if there's no backlight property.
> >>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no
> >>backlight device
> >>+ * is found.
> >>+ * If the backlight device is found, a pointer to the structure is
> >>returned.
> >>+ */
> >>+
> >>+struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >>+{
> >>+    struct backlight_device *backlight;
> >>+    struct device_node *np;
> >>+
> >>+    np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>+    if (!np)
> >>+        return NULL;
> >>+
> >>+    backlight = of_find_backlight_by_node(np);
> >>+    of_node_put(np);
> >>+
> >>+    if (!backlight)
> >>+        return ERR_PTR(-EPROBE_DEFER);
> >>+
> >>+    if (!backlight->props.brightness) {
> >>+        backlight->props.brightness = backlight->props.max_brightness;
> >>+        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>+                  backlight->props.brightness);
> >>+    }
> >>+
> >>+    return backlight;
> >>+}
> >>+EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >>+
> >>+/**
> >>+ * tinydrm_enable_backlight - Enable backlight helper
> >>+ * @backlight: Backlight device
> >>+ *
> >>+ * Returns:
> >>+ * Zero on success, negative error code on failure.
> >>+ */
> >>+int tinydrm_enable_backlight(struct backlight_device *backlight)
> >>+{
> >>+    unsigned int old_state;
> >>+    int ret;
> >>+
> >>+    if (!backlight)
> >>+        return 0;
> >>+
> >>+    old_state = backlight->props.state;
> >>+    backlight->props.state &= ~BL_CORE_FBBLANK;
> >>+    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> >>+              backlight->props.state);
> >>+
> >>+    ret = backlight_update_status(backlight);
> >>+    if (ret)
> >>+        DRM_ERROR("Failed to enable backlight %d\n", ret);
> >>+
> >>+    return ret;
> >>+}
> >>+EXPORT_SYMBOL(tinydrm_enable_backlight);
> >>+
> >>+/**
> >>+ * tinydrm_disable_backlight - Disable backlight helper
> >>+ * @backlight: Backlight device
> >>+ *
> >>+ * Returns:
> >>+ * Zero on success, negative error code on failure.
> >>+ */
> >>+int tinydrm_disable_backlight(struct backlight_device *backlight)
> >>+{
> >>+    unsigned int old_state;
> >>+    int ret;
> >>+
> >>+    if (!backlight)
> >>+        return 0;
> >>+
> >>+    old_state = backlight->props.state;
> >>+    backlight->props.state |= BL_CORE_FBBLANK;
> >>+    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> >>+              backlight->props.state);
> >>+    ret = backlight_update_status(backlight);
> >>+    if (ret)
> >>+        DRM_ERROR("Failed to disable backlight %d\n", ret);
> >>+
> >>+    return ret;
> >>+}
> >>+EXPORT_SYMBOL(tinydrm_disable_backlight);
> >>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>index bd6cce0..ee8ad8c 100644
> >>--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>@@ -236,100 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void
> >>*vaddr, struct drm_framebuffer *fb,
> >>  }
> >>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >>  -/**
> >>- * tinydrm_of_find_backlight - Find backlight device in device-tree
> >>- * @dev: Device
> >>- *
> >>- * This function looks for a DT node pointed to by a property named
> >>'backlight'
> >>- * and uses of_find_backlight_by_node() to get the backlight device.
> >>- * Additionally if the brightness property is zero, it is set to
> >>- * max_brightness.
> >>- *
> >>- * Returns:
> >>- * NULL if there's no backlight property.
> >>- * Error pointer -EPROBE_DEFER if the DT node is found, but no
> >>backlight device
> >>- * is found.
> >>- * If the backlight device is found, a pointer to the structure is
> >>returned.
> >>- */
> >>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >>-{
> >>-    struct backlight_device *backlight;
> >>-    struct device_node *np;
> >>-
> >>-    np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>-    if (!np)
> >>-        return NULL;
> >>-
> >>-    backlight = of_find_backlight_by_node(np);
> >>-    of_node_put(np);
> >>-
> >>-    if (!backlight)
> >>-        return ERR_PTR(-EPROBE_DEFER);
> >>-
> >>-    if (!backlight->props.brightness) {
> >>-        backlight->props.brightness = backlight->props.max_brightness;
> >>-        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>-                  backlight->props.brightness);
> >>-    }
> >>-
> >>-    return backlight;
> >>-}
> >>-EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >>-
> >>-/**
> >>- * tinydrm_enable_backlight - Enable backlight helper
> >>- * @backlight: Backlight device
> >>- *
> >>- * Returns:
> >>- * Zero on success, negative error code on failure.
> >>- */
> >>-int tinydrm_enable_backlight(struct backlight_device *backlight)
> >>-{
> >>-    unsigned int old_state;
> >>-    int ret;
> >>-
> >>-    if (!backlight)
> >>-        return 0;
> >>-
> >>-    old_state = backlight->props.state;
> >>-    backlight->props.state &= ~BL_CORE_FBBLANK;
> >>-    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> >>-              backlight->props.state);
> >>-
> >>-    ret = backlight_update_status(backlight);
> >>-    if (ret)
> >>-        DRM_ERROR("Failed to enable backlight %d\n", ret);
> >>-
> >>-    return ret;
> >>-}
> >>-EXPORT_SYMBOL(tinydrm_enable_backlight);
> >>-
> >>-/**
> >>- * tinydrm_disable_backlight - Disable backlight helper
> >>- * @backlight: Backlight device
> >>- *
> >>- * Returns:
> >>- * Zero on success, negative error code on failure.
> >>- */
> >>-int tinydrm_disable_backlight(struct backlight_device *backlight)
> >>-{
> >>-    unsigned int old_state;
> >>-    int ret;
> >>-
> >>-    if (!backlight)
> >>-        return 0;
> >>-
> >>-    old_state = backlight->props.state;
> >>-    backlight->props.state |= BL_CORE_FBBLANK;
> >>-    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> >>-              backlight->props.state);
> >>-    ret = backlight_update_status(backlight);
> >>-    if (ret)
> >>-        DRM_ERROR("Failed to disable backlight %d\n", ret);
> >>-
> >>-    return ret;
> >>-}
> >>-EXPORT_SYMBOL(tinydrm_disable_backlight);
> >>    #if IS_ENABLED(CONFIG_SPI)
> >>  diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>index 7e5bb7d..c161d45 100644
> >>--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>@@ -12,6 +12,7 @@
> >>  #include <drm/tinydrm/ili9341.h>
> >>  #include <drm/tinydrm/mipi-dbi.h>
> >>  #include <drm/tinydrm/tinydrm-helpers.h>
> >>+#include <drm/tinydrm/tinydrm-backlight.h>
> >>  #include <linux/delay.h>
> >>  #include <linux/gpio/consumer.h>
> >>  #include <linux/module.h>
> >>diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> >>b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> >>index 2caeabc..dc84f26 100644
> >>--- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> >>+++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> >>@@ -11,6 +11,7 @@
> >>    #include <drm/tinydrm/mipi-dbi.h>
> >>  #include <drm/tinydrm/tinydrm-helpers.h>
> >>+#include <drm/tinydrm/tinydrm-backlight.h>
> >>  #include <linux/debugfs.h>
> >>  #include <linux/dma-buf.h>
> >>  #include <linux/gpio/consumer.h>
> >>diff --git a/include/drm/tinydrm/tinydrm-backlight.h
> >>b/include/drm/tinydrm/tinydrm-backlight.h
> >>new file mode 100644
> >>index 0000000..6a7b6d5
> >>--- /dev/null
> >>+++ b/include/drm/tinydrm/tinydrm-backlight.h
> >>@@ -0,0 +1,18 @@
> >>+/*
> >>+ * Copyright (C) 2016 Noralf Trønnes
> >>+ *
> >>+ * This program is free software; you can redistribute it and/or modify
> >>+ * it under the terms of the GNU General Public License as published by
> >>+ * the Free Software Foundation; either version 2 of the License, or
> >>+ * (at your option) any later version.
> >>+ */
> >>+
> >>+#ifndef __LINUX_TINYDRM_BACKLIGHT_H
> >>+#define __LINUX_TINYDRM_BACKLIGHT_H
> >>+
> >>+struct backlight_device;
> >>+struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> >>+int tinydrm_enable_backlight(struct backlight_device *backlight);
> >>+int tinydrm_disable_backlight(struct backlight_device *backlight);
> >>+
> >>+#endif /* __LINUX_TINYDRM_BACKLIGHT_H */
> >
> >_______________________________________________
> >dri-devel mailing list
> >dri-devel@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/dri-devel
> >
> 

