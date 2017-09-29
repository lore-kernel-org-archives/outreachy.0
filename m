X-GM-THRID: 6470705412124442624
X-Received: by 10.98.238.16 with SMTP id e16mr679022pfi.20.1506694416001;
        Fri, 29 Sep 2017 07:13:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.179.36 with SMTP id a33ls2065654plc.10.gmail; Fri, 29 Sep
 2017 07:13:34 -0700 (PDT)
X-Received: by 10.84.246.202 with SMTP id j10mr705809plt.25.1506694414902;
        Fri, 29 Sep 2017 07:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506694414; cv=none;
        d=google.com; s=arc-20160816;
        b=qOwTXkB2WEhOO3JaA9cp4pqDGpKHsJAkGMJzqivlaz+EUoaRxNvgtbXM6l6FOt5jiP
         ceUZo+l1KL6n6z50QV3u0TyMuG2w54fgFWbNN7nvaHR9pgVf0CRcuZu17ObYuJsJSFBe
         VsYULIL4yP3EquDqOEo9mvq2X7oH8vMgTKT0vVTAiZBcAlNbiLXJ2WRJZG3Q3zNdQlTt
         HFLPBFy7Jqxh88vqAHOocJoml5D1twdMSSIl6QAhP3hayvyxmruK2CZIFGJ9InVbsmLb
         cyK1rU34/meVjuiI8xJb1aTexS26z0m94ipoqzPLZHWSw9LAczVR1k2unANpEweuKkBP
         RIJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Wb9mWMX/VlVz9Vpc8zoXEGQahY/KXK0NrFNIAdtoCJc=;
        b=BBWDWBCOZprgsbGIbxbyqsITGkFfTfDY2pXdNDAvmb33P16Co1hox7U4quU17AbWSX
         80rOfL8aiWwqPBgsuXqeWTmWtJjHRhbfje/cSPtZLJ+CG3kOm+l8/N2G+jum+WDB+qjr
         uNMBb6b4Yc0LzFMHBlO/dI5YiNZAhMcGdMPyxds3EN8Rtb70A3QTapOOyF8Ogn5HEgFD
         D+qK6px0ZIEogPnOuIlisjVkWJd3V6IK9EtRwRQqe/IChlQPsWfffN3ikWdu/9kuPLhm
         n4wMicEssChIkt8e6usA6uDMRfC8wigv0g3EZmZeyUsOXdIZbbIhkQUZF8tjz1dXPl1N
         UHTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NE/Xwdn9;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id t77si523199pfi.13.2017.09.29.07.13.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 07:13:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NE/Xwdn9;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so1573339pgt.3
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 07:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Wb9mWMX/VlVz9Vpc8zoXEGQahY/KXK0NrFNIAdtoCJc=;
        b=NE/Xwdn96uGnshNeil9i6Fj9o0AA1Bp2bsOeV2u6dxhlfW0gLJjigtSPMM7rQR+hDr
         enpgFeaeYX7ct9+ECOACcxpsx0p17X0LCdLPWYL7uWcgAhAqjYZaE87KaSA1PG/zb74T
         YBBU+/XOoGBrJHTjvZLCPLlMW3KP+fsqkXREPqG2l+L5Doqfek98DKXo2JasJzrrJNPy
         P6mzMEGMA1+OVZl/+A09wxkF34WOOrwEc7TOHPOPEYgByyYq2XuzNhLoeKUl0i9sn9rn
         0Y7VtC/jzL5oWGzXQsV17btZlINfgxHjONV8ifklcClhplEVTTcpRgatFqPSG1FvbDTP
         sEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Wb9mWMX/VlVz9Vpc8zoXEGQahY/KXK0NrFNIAdtoCJc=;
        b=ZgxpvPv4O+o607RDOFKggdScwDNOFw7dvBKi+Mi7hTeMi+eerrKRoWRrc/l0GjZoQs
         icPPBrMWkFZzfIhlwNVId9/KJKwH3P5lhv8ISFckoJmx12lXEpllbj1Efs8Tkl8M6fFe
         gWV3zgpxlQBaeYTapbGmFSXlcDqKHsR2R5ZI08mmvLR721BPxVP/TbCiWAneStcQ33j8
         KqgeWTZYtDfHzmvPYM1cWwsehUKuPtSR0Pzi57sITNKMrrThaDhn69wN3NX9ROGVuYQz
         8I+3xsIuMzID2UizcYIMWemhBuLTqeIwEreKgPJLVzZWI5D5F7fCnlQYLLFEF/f18cgc
         4dyw==
X-Gm-Message-State: AHPjjUjfWvsXznKzgnKs+Gkde0qr2PRO+3t87dOd4kdi2Kc0u9+Qj8Sj
	SYbZN0On3Rniq9GjgeIGym4=
X-Google-Smtp-Source: AOwi7QAonCep4BQderrJDAW478zcfzH99UdcrVA9YAauwLGWPpz0N757wb3zj/3WKjG2/vPMLc7p9A==
X-Received: by 10.159.253.137 with SMTP id q9mr7164595pls.16.1506694414419;
        Fri, 29 Sep 2017 07:13:34 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id c7sm9733581pfg.85.2017.09.29.07.13.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 07:13:33 -0700 (PDT)
Date: Fri, 29 Sep 2017 19:43:27 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
 <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
 <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
 <20170929122025.GA29498@meghana-HP-Pavilion-Notebook>
 <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 29, 2017 at 02:33:12PM +0200, Noralf Tr�nnes wrote:
> 
> Den 29.09.2017 14.20, skrev Meghana Madhyastha:
> >On Fri, Sep 29, 2017 at 02:10:31PM +0200, Noralf Tr�nnes wrote:
> >>Den 29.09.2017 05.22, skrev Meghana Madhyastha:
> >>>On Thu, Sep 28, 2017 at 06:02:27PM +0200, Noralf Tr�nnes wrote:
> >>>>Den 28.09.2017 16.08, skrev Daniel Vetter:
> >>>>>On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
> >>>>>>Rename tinydrm_of_find_backlight to drm_of_find_backlight
> >>>>>>and move it into drm_of.c from tinydrm-helpers.c. This is
> >>>>>>because other drivers in the drm subsystem might need to call
> >>>>>>this function. In that case and otherwise, it is better from
> >>>>>>an organizational point of view to move it into drm_of.c along
> >>>>>>with the other _of.c functions.
> >>>>>>
> >>>>>>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >>>>>>---
> >>>>>>Changes in v3:
> >>>>>>-Change it back to a single patch from two patches in v2
> >>>>>>
> >>>>>>  drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
> >>>>>>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
> >>>>>>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> >>>>>>  include/drm/drm_of.h                           |  1 +
> >>>>>>  include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> >>>>>>  5 files changed, 47 insertions(+), 42 deletions(-)
> >>>>>>
> >>>>>>diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >>>>>>index 8dafbdf..d878d3a 100644
> >>>>>>--- a/drivers/gpu/drm/drm_of.c
> >>>>>>+++ b/drivers/gpu/drm/drm_of.c
> >>>>>>@@ -1,6 +1,7 @@
> >>>>>>  #include <linux/component.h>
> >>>>>>  #include <linux/export.h>
> >>>>>>  #include <linux/list.h>
> >>>>>>+#include <linux/backlight.h>
> >>>>>>  #include <linux/of_graph.h>
> >>>>>>  #include <drm/drmP.h>
> >>>>>>  #include <drm/drm_bridge.h>
> >>>>>>@@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >>>>>>  	return ret;
> >>>>>>  }
> >>>>>>  EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> >>>>>>+
> >>>>>>+/**
> >>>>>>+ * drm_of_find_backlight - Find backlight device in device-tree
> >>>>>>+ * @dev: Device
> >>>>>>+ *
> >>>>>>+ * This function looks for a DT node pointed to by a property named 'backlight'
> >>>>>>+ * and uses of_find_backlight_by_node() to get the backlight device.
> >>>>>>+ * Additionally if the brightness property is zero, it is set to
> >>>>>>+ * max_brightness.
> >>>>>>+ *
> >>>>>>+ * Note: It is the responsibility of the caller to call put_device() when
> >>>>>>+ * releasing the resource.
> >>>>>>+ *
> >>>>>>+ * Returns:
> >>>>>>+ * NULL if there's no backlight property.
> >>>>>>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>>>>>+ * is found.
> >>>>>>+ * If the backlight device is found, a pointer to the structure is returned.
> >>>>>>+ */
> >>>>>>+struct backlight_device *drm_of_find_backlight(struct device *dev)
> >>>>>>+{
> >>>>>>+	struct backlight_device *backlight;
> >>>>>>+	struct device_node *np;
> >>>>>>+
> >>>>>>+	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>>>>>+	if (!np)
> >>>>>>+		return NULL;
> >>>>>>+
> >>>>>>+	backlight = of_find_backlight_by_node(np);
> >>>>>>+	of_node_put(np);
> >>>>>>+
> >>>>>>+	if (!backlight)
> >>>>>>+		return ERR_PTR(-EPROBE_DEFER);
> >>>>>>+
> >>>>>>+	if (!backlight->props.brightness) {
> >>>>>>+		backlight->props.brightness = backlight->props.max_brightness;
> >>>>>>+		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>>>>>+			      backlight->props.brightness);
> >>>>>>+	}
> >>>>>>+
> >>>>>>+	return backlight;
> >>>>>>+}
> >>>>>>+EXPORT_SYMBOL(drm_of_find_backlight);
> >>>>>>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>>>>>index bd6cce0..cd4c6a5 100644
> >>>>>>--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>>>>>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>>>>>@@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >>>>>>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >>>>>>  /**
> >>>>>>- * tinydrm_of_find_backlight - Find backlight device in device-tree
> >>>>>>- * @dev: Device
> >>>>>>- *
> >>>>>>- * This function looks for a DT node pointed to by a property named 'backlight'
> >>>>>>- * and uses of_find_backlight_by_node() to get the backlight device.
> >>>>>>- * Additionally if the brightness property is zero, it is set to
> >>>>>>- * max_brightness.
> >>>>>>- *
> >>>>>>- * Returns:
> >>>>>>- * NULL if there's no backlight property.
> >>>>>>- * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>>>>>- * is found.
> >>>>>>- * If the backlight device is found, a pointer to the structure is returned.
> >>>>>>- */
> >>>>>>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >>>>>>-{
> >>>>>>-	struct backlight_device *backlight;
> >>>>>>-	struct device_node *np;
> >>>>>>-
> >>>>>>-	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>>>>>-	if (!np)
> >>>>>>-		return NULL;
> >>>>>>-
> >>>>>>-	backlight = of_find_backlight_by_node(np);
> >>>>>>-	of_node_put(np);
> >>>>>>-
> >>>>>>-	if (!backlight)
> >>>>>>-		return ERR_PTR(-EPROBE_DEFER);
> >>>>>>-
> >>>>>>-	if (!backlight->props.brightness) {
> >>>>>>-		backlight->props.brightness = backlight->props.max_brightness;
> >>>>>>-		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>>>>>-			      backlight->props.brightness);
> >>>>>>-	}
> >>>>>>-
> >>>>>>-	return backlight;
> >>>>>>-}
> >>>>>>-EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >>>>>>-
> >>>>>>-/**
> >>>>>>   * tinydrm_enable_backlight - Enable backlight helper
> >>>>>>   * @backlight: Backlight device
> >>>>>>   *
> >>>>>>diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>>>>>index 7e5bb7d..5e3d635 100644
> >>>>>>--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>>>>>+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>>>>>@@ -12,6 +12,7 @@
> >>>>>>  #include <drm/tinydrm/ili9341.h>
> >>>>>>  #include <drm/tinydrm/mipi-dbi.h>
> >>>>>>  #include <drm/tinydrm/tinydrm-helpers.h>
> >>>>>>+#include <drm/drm_of.h>
> >>>>>>  #include <linux/delay.h>
> >>>>>>  #include <linux/gpio/consumer.h>
> >>>>>>  #include <linux/module.h>
> >>>>>>@@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >>>>>>  	if (IS_ERR(mipi->regulator))
> >>>>>>  		return PTR_ERR(mipi->regulator);
> >>>>>>-	mipi->backlight = tinydrm_of_find_backlight(dev);
> >>>>>>+	mipi->backlight = drm_of_find_backlight(dev);
> >>>>>>  	if (IS_ERR(mipi->backlight))
> >>>>>>  		return PTR_ERR(mipi->backlight);
> >>>>>>diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> >>>>>>index 104dd51..e8fba5b 100644
> >>>>>>--- a/include/drm/drm_of.h
> >>>>>>+++ b/include/drm/drm_of.h
> >>>>>>@@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >>>>>>  				int port, int endpoint,
> >>>>>>  				struct drm_panel **panel,
> >>>>>>  				struct drm_bridge **bridge);
> >>>>>>+struct backlight_device *drm_of_find_backlight(struct device *dev);
> >>>>>>  #else
> >>>>>>  static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> >>>>>>  						  struct device_node *port)
> >>>>>Minor detail I missed: The dummy version for the #else here is missing.
> >>>>>Not a problem for tinydrm, but might be an issue for a driver where
> >>>>>CONFIG_OF is optional.
> >>>>Yeah, we need a dummy version. tinydrm can in theory be used on non-DT
> >>>>platforms. The only resource that isn't available there is backlight
> >>>>since there is no platform or ACPI way of describing that dependency.
> >>>>
> >>>>Another problem I discovered when trying to compile this, is that if
> >>>>DRM is builtin and LCD_CLASS_DEVICE is a module:
> >>>>
> >>>>drivers/gpu/drm/drm_of.c:292: undefined reference to
> >>>>`of_find_backlight_by_node'
> >>>>
> >>>>I see that I solved this in tinydrm by just selecting
> >>>>BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
> >>>>force LCD_CLASS_DEVICE to be builtin if DRM is builtin.
> >>>>
> >>>>Arnd fixed a similar type of dependecy in the repaper driver by forcing
> >>>>repaper to be a module if necessary. To be honest, I don't know why his
> >>>>fix works:
> >>>>https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002
> >>>I didn't quite understand how we could use this fix for the current
> >>>case. Isn't this specific to the repaper driver dependency ?
> >>This is the solution Daniel mentions:
> >>
> >> �menuconfig DRM
> >> ���� tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI
> >>support)"
> >> ���� depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
> >>+�� depends on (LCD_CLASS_DEVICE || LCD_CLASS_DEVICE=n)
> >I had tried this but it resulted in a recursive dependencies error.
> 
> What's the error?
> Could this have something to do with tinydrm selecting backlight and
> depending on DRM?
> 
> Noralf.

Looks like a case of circular dependencies. The exact error is this:

scripts/kconfig/mconf  Kconfig
drivers/gpu/drm/Kconfig:7:error: recursive dependency detected!
For a resolution refer to Documentation/kbuild/kconfig-language.txt
subsection "Kconfig recursive dependency limitations"
drivers/gpu/drm/Kconfig:7:	symbol DRM depends on LCD_CLASS_DEVICE
For a resolution refer to Documentation/kbuild/kconfig-language.txt
subsection "Kconfig recursive dependency limitations"
drivers/video/backlight/Kconfig:16:	symbol LCD_CLASS_DEVICE is
selected by FB_CLPS711X
For a resolution refer to Documentation/kbuild/kconfig-language.txt
subsection "Kconfig recursive dependency limitations"
drivers/video/fbdev/Kconfig:338:	symbol FB_CLPS711X depends on FB
For a resolution refer to Documentation/kbuild/kconfig-language.txt
subsection "Kconfig recursive dependency limitations"
drivers/video/fbdev/Kconfig:5:	symbol FB is selected by
DRM_KMS_FB_HELPER
For a resolution refer to Documentation/kbuild/kconfig-language.txt
subsection "Kconfig recursive dependency limitations"
drivers/gpu/drm/Kconfig:73:	symbol DRM_KMS_FB_HELPER is selected by
DRM_FBDEV_EMULATION
For a resolution refer to Documentation/kbuild/kconfig-language.txt
subsection "Kconfig recursive dependency limitations"
drivers/gpu/drm/Kconfig:90:	symbol DRM_FBDEV_EMULATION depends on
DRM

Long story short, the dependency loop is as follows:

DRM -> LCD_CLASS_DEVICE ->  FB_CLPS711X -> FB -> DRM_KMS_FB_HELPER ->
DRM_FBDEV_EMULATION -> DRM

Regards,
Meghana

> >Regards,
> >Meghana
> >>We also have another problem: CONFIG_OF=y && CONFIG_LCD_CLASS_DEVICE=n
> >>That will result in a missing symbol error.
> >>
> >>You can try this change to include/linux/backlight.h:
> >>
> >>-#ifdef CONFIG_OF
> >>+#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_LCD_CLASS_DEVICE)
> >> �struct backlight_device *of_find_backlight_by_node(struct device_node
> >>*node);
> >> �#else
> >> �static inline struct backlight_device *
> >> �of_find_backlight_by_node(struct device_node *node)
> >> �{
> >> ���� return NULL;
> >> �}
> >> �#endif
> >>
> >>This will need to be a patch of its own since it's another subsystem.
> >>
> >>You have to try the various kconfig variations to be sure, I'm no kconfig
> >>expert.
> >>CONFIG_OF=y/n, CONFIG_DRM=y/m, CONFIG_LCD_CLASS_DEVICE=y/m/n
> >>
> >>Noralf.
> >Sure will try this.
> >
> >>>>Another way of solving this is to put the function in
> >>>>drivers/gpu/drm/drm_backlight.c and add a DRM_BACKLIGHT konfig option
> >>>>that does the selection.
> >>>>
> >>>>Noralf.
> >>>>
> >>>>>Otherwise I think this patch looks good.
> >>>>>-Daniel
> >>>>>
> >>>>>>diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> >>>>>>index d554ded..e40ef2d 100644
> >>>>>>--- a/include/drm/tinydrm/tinydrm-helpers.h
> >>>>>>+++ b/include/drm/tinydrm/tinydrm-helpers.h
> >>>>>>@@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> >>>>>>  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >>>>>>  			       struct drm_clip_rect *clip);
> >>>>>>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> >>>>>>  int tinydrm_enable_backlight(struct backlight_device *backlight);
> >>>>>>  int tinydrm_disable_backlight(struct backlight_device *backlight);
> >>>>>>-- 
> >>>>>>2.7.4
> >>>>>>
> 

