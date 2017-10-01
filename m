X-GM-THRID: 6470705412124442624
X-Received: by 10.98.11.144 with SMTP id 16mr979308pfl.43.1506864904515;
        Sun, 01 Oct 2017 06:35:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.98.3 with SMTP id w3ls2435850pgb.8.gmail; Sun, 01 Oct 2017
 06:35:03 -0700 (PDT)
X-Received: by 10.99.120.130 with SMTP id t124mr1157040pgc.109.1506864903449;
        Sun, 01 Oct 2017 06:35:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506864903; cv=none;
        d=google.com; s=arc-20160816;
        b=yOVNgZn5vhDTgMUzUKb+gATTrd/5yKXutffjih5lwXdKvZJ4FetXwTW79tnLiDpps4
         QwTpIiaG9K8iK7uk5VrJehVSHSUGBPMhGnQT/1EIhuCY49ZB/FhUrHvlFr/BXZGH8ezL
         nWIfY9JmvOspe5LB0n16ZwvXXMfkJI60e+wCXFf8pBb3ga1j9bfibCxtKJY7Fi4iD0ok
         o/uKe3EtehDTK+8gcZ2b7WMV4KINztatDtY5eqIbldzkkNm9vn2w8gCNWjA+0y44YCQs
         Y66gJpyx9cGLVtsiR/U39d8ANIoMEIyn63yeKT3PRQwO2u9J/DbEMxezrLuooWC4+k5h
         FcdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Cme0tKlUQmSHAJCTm/QhX2/5ycQVYn7SgpPzov9UnKk=;
        b=tFJXBFEBF66ZcBrqz8YSEnJZ+cCi7in6xrbQ9cn/id7CgTPkbEh/+xdC9Yq3iRqEEp
         dpdNzeyrGhynnOqOO/dBnNCskZ7v0+Yl8WxPeeFuusvOUIgPyUww0R5RIUjVj0M+8hdx
         LeSRyqO6+o+bfRmbGZbBn5Cj3R3ly1qkqCgPEjSUSvEo1Nz5rj2AI0Y00mAIz66BU38r
         XolccIg8ivEqNr4KOSUyl8p1vwYK1SC2cHTBWV/PBIfaym6IlSXSpDxBO56AXQFzRdwW
         fd0aBTVJMnpd7DA685JwXt16Z54VtYHi3J58qlm9zUQ2hFw9QlPTBy93I7FNyAzHzlWC
         lWHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULzC/l3N;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a28si132870pfe.24.2017.10.01.06.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 06:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULzC/l3N;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id m28so2959566pfi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 06:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Cme0tKlUQmSHAJCTm/QhX2/5ycQVYn7SgpPzov9UnKk=;
        b=ULzC/l3NJF4/YKDIkVMgMrsGir2BCfHjzAWExXGhtRlYP9BjWgTVHaubcz1AE+ys0f
         0oT0F48AB46FkSDTsJTJ2pI+o8vYbp3w017WESwA/0SRdQt6EG4mtA17q+SM1UA9f06X
         t8T92DhM/8WAmNE1aLx3hP67WeV88cLuJN5eJcyWeYsbZCTQgRjjV2BosKn3mDheQw+R
         RMJ5Go822Vjsk2oY+xbuUfwj4yDHpqnQ11SYgINrIfjIp61E4pPW7upsLeWjto1VyCRa
         Ko9GL+o+3cmf/aGyb31kYx9H2Ndf5iCJlW5zjOACDKkjGlgSSZAcSV2AmbT/JTTEFjQe
         QmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Cme0tKlUQmSHAJCTm/QhX2/5ycQVYn7SgpPzov9UnKk=;
        b=tDNAhR+u0Kf9xYVsZfhIF8c0a075x1VSGfEBddhUD00RWQ/+nEtRxnoawvXA0mCSO3
         efBXOhlBKTYot4svtQBBZBuzFgMAqsHcMK/CIGGz85GtryNHugkqE350AFLaNl+JNKtO
         kdGjzSOSMSO+2/C2w1Lm7CVwv2v+BcXQTUjhMEk/PWou2x6hbqN3H7kSUZUzBS2h6Zdh
         qTTc6TQH60X0Ct7X8DPnmdLLKfDHV3Y07qv1VpF8VyvTTe/w+C0lJU1ECb7sHj4wqRGf
         2v4ygzt/9ZDj3SD5ycg19IF2piAsupXu+mHh59HcIvFnb30F/QkeDWYsmaM9qr/Y4vPR
         lzwQ==
X-Gm-Message-State: AMCzsaVvdn1jpb4S3/pf+1+J+wJ0YNIsQ8FrrQBhGFTIxvC4zeBXkQsc
	FtWoh7+9q4V1J5Xfj/Wexv2g00Tc
X-Google-Smtp-Source: AOwi7QBU12+wMTi+hj4qmu/LT9Yce4RuBkL0yEg301Mj5WvDFQ/beYUkZdOfPnvGSodaoz+3GkFcjg==
X-Received: by 10.98.56.210 with SMTP id f201mr2422190pfa.112.1506864903131;
        Sun, 01 Oct 2017 06:35:03 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id x13sm12763251pgt.16.2017.10.01.06.35.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 06:35:01 -0700 (PDT)
Date: Sun, 1 Oct 2017 19:04:56 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v6 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20171001133454.GA4207@meghana-HP-Pavilion-Notebook>
References: <cover.1506786158.git.meghana.madhyastha@gmail.com>
 <bfad07c542b9f5c892c6beddc4ecc2c3297f1f78.1506786158.git.meghana.madhyastha@gmail.com>
 <f7b02ca9-548c-0362-e965-08236e8120e2@tronnes.org>
 <20171001041434.GA16531@meghana-HP-Pavilion-Notebook>
 <b788d90b-07fe-ebb5-171f-876827907e0d@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b788d90b-07fe-ebb5-171f-876827907e0d@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 01, 2017 at 03:26:36PM +0200, Noralf Tr�nnes wrote:
> 
> Den 01.10.2017 06.14, skrev Meghana Madhyastha:
> >On Sat, Sep 30, 2017 at 09:04:57PM +0200, Noralf Tr�nnes wrote:
> >>Den 30.09.2017 19.12, skrev Meghana Madhyastha:
> >>>Rename tinydrm_of_find_backlight to drm_of_find_backlight
> >>>and move it into drm_of.c from tinydrm-helpers.c. This is
> >>>because other drivers in the drm subsystem might need to call
> >>>this function. In that case and otherwise, it is better from
> >>>an organizational point of view to move it into drm_of.c along
> >>>with the other _of.c functions.
> >>>
> >>>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >>>---
> >>>Changes in v6:
> >>>-Move function declarations to linux/backlight.h to resolve
> >>>  module dependency issues.
> >>>
> >>>  drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
> >>>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
> >>>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  2 +-
> >>>  include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> >>>  include/linux/backlight.h                      | 11 +++++++
> >>>  5 files changed, 56 insertions(+), 42 deletions(-)
> >>>
> >>>diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >>>index 8dafbdf..d878d3a 100644
> >>>--- a/drivers/gpu/drm/drm_of.c
> >>>+++ b/drivers/gpu/drm/drm_of.c
> >>>@@ -1,6 +1,7 @@
> >>>  #include <linux/component.h>
> >>>  #include <linux/export.h>
> >>>  #include <linux/list.h>
> >>>+#include <linux/backlight.h>
> >>>  #include <linux/of_graph.h>
> >>>  #include <drm/drmP.h>
> >>>  #include <drm/drm_bridge.h>
> >>>@@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >>>  	return ret;
> >>>  }
> >>>  EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> >>>+
> >>>+/**
> >>>+ * drm_of_find_backlight - Find backlight device in device-tree
> >>>+ * @dev: Device
> >>>+ *
> >>>+ * This function looks for a DT node pointed to by a property named 'backlight'
> >>>+ * and uses of_find_backlight_by_node() to get the backlight device.
> >>>+ * Additionally if the brightness property is zero, it is set to
> >>>+ * max_brightness.
> >>>+ *
> >>>+ * Note: It is the responsibility of the caller to call put_device() when
> >>>+ * releasing the resource.
> >>>+ *
> >>>+ * Returns:
> >>>+ * NULL if there's no backlight property.
> >>>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>>+ * is found.
> >>>+ * If the backlight device is found, a pointer to the structure is returned.
> >>>+ */
> >>>+struct backlight_device *drm_of_find_backlight(struct device *dev)
> >>>+{
> >>>+	struct backlight_device *backlight;
> >>>+	struct device_node *np;
> >>>+
> >>>+	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>>+	if (!np)
> >>>+		return NULL;
> >>>+
> >>>+	backlight = of_find_backlight_by_node(np);
> >>>+	of_node_put(np);
> >>>+
> >>>+	if (!backlight)
> >>>+		return ERR_PTR(-EPROBE_DEFER);
> >>>+
> >>>+	if (!backlight->props.brightness) {
> >>>+		backlight->props.brightness = backlight->props.max_brightness;
> >>>+		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>>+			      backlight->props.brightness);
> >>>+	}
> >>>+
> >>>+	return backlight;
> >>>+}
> >>>+EXPORT_SYMBOL(drm_of_find_backlight);
> >>>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>>index bd6cce0..cd4c6a5 100644
> >>>--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>>@@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >>>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >>>  /**
> >>>- * tinydrm_of_find_backlight - Find backlight device in device-tree
> >>>- * @dev: Device
> >>>- *
> >>>- * This function looks for a DT node pointed to by a property named 'backlight'
> >>>- * and uses of_find_backlight_by_node() to get the backlight device.
> >>>- * Additionally if the brightness property is zero, it is set to
> >>>- * max_brightness.
> >>>- *
> >>>- * Returns:
> >>>- * NULL if there's no backlight property.
> >>>- * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>>- * is found.
> >>>- * If the backlight device is found, a pointer to the structure is returned.
> >>>- */
> >>>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >>>-{
> >>>-	struct backlight_device *backlight;
> >>>-	struct device_node *np;
> >>>-
> >>>-	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>>-	if (!np)
> >>>-		return NULL;
> >>>-
> >>>-	backlight = of_find_backlight_by_node(np);
> >>>-	of_node_put(np);
> >>>-
> >>>-	if (!backlight)
> >>>-		return ERR_PTR(-EPROBE_DEFER);
> >>>-
> >>>-	if (!backlight->props.brightness) {
> >>>-		backlight->props.brightness = backlight->props.max_brightness;
> >>>-		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>>-			      backlight->props.brightness);
> >>>-	}
> >>>-
> >>>-	return backlight;
> >>>-}
> >>>-EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >>>-
> >>>-/**
> >>>   * tinydrm_enable_backlight - Enable backlight helper
> >>>   * @backlight: Backlight device
> >>>   *
> >>>diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>>index 7e5bb7d..682b4db 100644
> >>>--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>>+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>>@@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >>>  	if (IS_ERR(mipi->regulator))
> >>>  		return PTR_ERR(mipi->regulator);
> >>>-	mipi->backlight = tinydrm_of_find_backlight(dev);
> >>>+	mipi->backlight = drm_of_find_backlight(dev);
> >>>  	if (IS_ERR(mipi->backlight))
> >>>  		return PTR_ERR(mipi->backlight);
> >>>diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> >>>index d554ded..e40ef2d 100644
> >>>--- a/include/drm/tinydrm/tinydrm-helpers.h
> >>>+++ b/include/drm/tinydrm/tinydrm-helpers.h
> >>>@@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> >>>  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >>>  			       struct drm_clip_rect *clip);
> >>>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> >>>  int tinydrm_enable_backlight(struct backlight_device *backlight);
> >>>  int tinydrm_disable_backlight(struct backlight_device *backlight);
> >>>diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> >>>index 5f2fd61..47a095e 100644
> >>>--- a/include/linux/backlight.h
> >>>+++ b/include/linux/backlight.h
> >>>@@ -172,4 +172,15 @@ of_find_backlight_by_node(struct device_node *node)
> >>>  }
> >>>  #endif
> >>>+#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> >>>+struct backlight_device *
> >>>+drm_of_find_backlight(struct device *dev);
> >>>+#else
> >>>+static inline struct backlight_device *
> >>>+drm_of_find_backlight(struct device *dev)
> >>>+{
> >>>+	return NULL;
> >>>+}
> >>>+#endif
> >>>+
> >>>  #endif
> >>This isn't what I meant, you only change the of_find_backlight_by_node()
> >>declaration/definition. It should be like this:
> >>
> >>#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> >>struct backlight_device *of_find_backlight_by_node(struct device_node
> >>*node);
> >>#else
> >>static inline struct backlight_device *
> >>of_find_backlight_by_node(struct device_node *node)
> >>{
> >> ��� return NULL;
> >>}
> >>#endif
> >I see. So basically add the function declaration of drm_of_find_backlight
> >and devm_drm_of_find_backlight in drm_of.h and this function declaration
> >need not be inside the #ifdef CONFIG / #else part?
> >So there need not be a dummy version of drm_of_find_backlight here
> >because we are anyway taking care of that in of_find_backliht by node?
> >Sorry for the many versions and thank you for the clarifications.
> 
> You need the dummy part in drm_of.h because you need to handle the
> CONFIG_OF option here as well.
> 
> If drm_of_find_backlight() was only 2-3 lines of code, you could have
> made a static inline function in drm_of.h outside the #if/#else/#endif,
> but since it's longer than that it should be in drm_of.c.
> 
> CONFIG_OF decides if drm_of.c is built (as part of drm.o) or not:
> 
> drivers/gpu/drm/Makefile:
> drm-$(CONFIG_OF) += drm_of.o
> 
> This means we need a function prototype declaration for the CONFIG_OF=y
> case, and an inline function definition for the CONFIG_OF=n case.
> 
> Noralf.

I have one more question. In that case, why wouldn't my previous patch
work ? (i.e  definition and declaration of drm_of_find_backlight
in linux/backlight.h with if/else directives)

Regards,
Meghana

> >Regards,
> >Meghana
> >>And this change needs to be a patch on it's own. The backlight subsystem
> >>has it's own maintainer that will review this change.
> >>It's best to send him/them the whole patchset so they see the context.
> >>
> >>Noralf.
> >>
> 

