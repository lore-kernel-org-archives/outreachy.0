X-GM-THRID: 6470705412124442624
X-Received: by 10.101.66.65 with SMTP id d1mr180867pgq.179.1506831285501;
        Sat, 30 Sep 2017 21:14:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.185.6 with SMTP id z6ls2862915pfe.1.gmail; Sat, 30 Sep 2017
 21:14:44 -0700 (PDT)
X-Received: by 10.101.75.199 with SMTP id p7mr115439pgr.112.1506831284311;
        Sat, 30 Sep 2017 21:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506831284; cv=none;
        d=google.com; s=arc-20160816;
        b=GL2BbonAoq/30A49/cy9Twl1ZEazR/eM3O8oEFKyqN0YRNbixQFykfDfCRM7MSDWj3
         fEf8Jjs7JnvyBYC9q5Co9NFM8F8K0KafGpqKo4nP7GGFdHy4s2kBbX7b5NRi3tTPvAP9
         IwGwR9ozWyIe+oC0Hfuu1/vT6qpbBfPET14DG8+sNzv9T7sjPXdjCa7aTW74c+kZ/H6h
         tE8u+bZAvm+QAusU8BL/b+8N58GdjQ7FdJ0rgT80khwsNWo0//8KR2LdU420UR98PBQW
         tfcpADbg4iplgkjffZFUbA1za9uKo+1jnjkS5i74I3Wg0wTF0x+vasaycoiELINjdxWc
         ThOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=pRYtw9LKlxJTMBDBXPQxg+ydB9Y3NXwtk1ry3kZFYaE=;
        b=A2Ni4NOjjC6Zctfv/xqZy+nyj0ZJX7BLowHN8LlwPGzQZnc+Y4wdMmmntBrvsgv45s
         CB0/cQerstkjIBn3QOJgV82Wrfna/NCtekdrI11nCsadYbcQGzTXubkhC33PqTHg4hR+
         z/Tv//YzRHBw42FJnadjqa0fpRDAgOwMg7Fc9uVhOvff83m4qFWiRz0EtLkgveAZO4ou
         Q8WgtWkroGQJaaCRdDt3SLMa43YoE8Df7hws+bEk+ganbvwagYIdB+ohvqiHh/a6hjeo
         dxAwsNp5rmPWzp8YQqea2NwiSV4OoXK3rNhpazK3Ai+vIxArWc5rQFP2oRlToaKyJWSW
         eYgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lji659Lb;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id q15si839157pfi.7.2017.09.30.21.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 21:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lji659Lb;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g65so2284592pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 21:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=pRYtw9LKlxJTMBDBXPQxg+ydB9Y3NXwtk1ry3kZFYaE=;
        b=lji659Lb+r6iYwYUy3fGHsKJ/3xxoHKLGxrEulRwHaQCoIODL/lHZ4OxeYgpGNj2X2
         oAN3vAt0qGIgvcQoem34OEuGg01Vut94zQtONZlfVUKHzim+fy1osD8jcjFM1FQvxrKq
         nO0XN8ABpDCTKVIYXFMCryVJcCNcdGimgA31mVBtK2hSgTJ455a5EjvyjirPKrtiCBlu
         Fs9Moifx/rUSJnqiTpmKbArGZidRpq2BabBaWWTvrOYvq3mdgUFxZELH2p9IWnBRsX9K
         Ov4jvKJjOELS/rdrf8KXIGDj3vyqZbdWDjvii13/1wCFZVQijyGNdyVVmcRBxEH2GEhS
         0qFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=pRYtw9LKlxJTMBDBXPQxg+ydB9Y3NXwtk1ry3kZFYaE=;
        b=b9yEtykb5byAdyBvlXcNkVJ6duNJzsrEuCtB/Ew3i9RhAn68FK5W4Q6j3EpKTivZTF
         xzLVA3tcusZTW6TRKeKCE/MjLChbha0tELs/M3Me9b7lG+RjUW+6wMCRFeu0nTMcn2ZH
         QUp3y9Q4bI+qee+U8c5gmi0XHINF0skehZfEDuNqgOViBulKrDWtCxMyzjtWfeoCul9X
         SWpMZKt2pVShpXm3oMLqswk7a8O3iIVeQt4tmvbGFCQAajcvJQbNAM2hw/Dbds9tUo9T
         COQ3d+J0yWXltCbSrVuE0KE7gu3iE8BKTBd4LL2FUz2RLIO1uZFllE7VT98fwrHt8zRN
         wsnQ==
X-Gm-Message-State: AHPjjUgYjoZcGfakcSLQqh8hC7yPVo3Y3SWsk87uNdoFzr3jozW7M+Gc
	2KkmOHTpg4SmmQlKMDMOdm0=
X-Google-Smtp-Source: AOwi7QBGURs0KzSZ0DWnidx3sUEOvGm9kqPusL8erbiSPmMJcGlmyVd5BtnCdVGsc83HUTYYIidM9g==
X-Received: by 10.98.87.193 with SMTP id i62mr11459238pfj.186.1506831283888;
        Sat, 30 Sep 2017 21:14:43 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id y16sm11207565pfe.68.2017.09.30.21.14.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 21:14:42 -0700 (PDT)
Date: Sun, 1 Oct 2017 09:44:36 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v6 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20171001041434.GA16531@meghana-HP-Pavilion-Notebook>
References: <cover.1506786158.git.meghana.madhyastha@gmail.com>
 <bfad07c542b9f5c892c6beddc4ecc2c3297f1f78.1506786158.git.meghana.madhyastha@gmail.com>
 <f7b02ca9-548c-0362-e965-08236e8120e2@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f7b02ca9-548c-0362-e965-08236e8120e2@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 30, 2017 at 09:04:57PM +0200, Noralf Tr�nnes wrote:
> 
> Den 30.09.2017 19.12, skrev Meghana Madhyastha:
> >Rename tinydrm_of_find_backlight to drm_of_find_backlight
> >and move it into drm_of.c from tinydrm-helpers.c. This is
> >because other drivers in the drm subsystem might need to call
> >this function. In that case and otherwise, it is better from
> >an organizational point of view to move it into drm_of.c along
> >with the other _of.c functions.
> >
> >Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >---
> >Changes in v6:
> >-Move function declarations to linux/backlight.h to resolve
> >  module dependency issues.
> >
> >  drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
> >  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
> >  drivers/gpu/drm/tinydrm/mi0283qt.c             |  2 +-
> >  include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> >  include/linux/backlight.h                      | 11 +++++++
> >  5 files changed, 56 insertions(+), 42 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >index 8dafbdf..d878d3a 100644
> >--- a/drivers/gpu/drm/drm_of.c
> >+++ b/drivers/gpu/drm/drm_of.c
> >@@ -1,6 +1,7 @@
> >  #include <linux/component.h>
> >  #include <linux/export.h>
> >  #include <linux/list.h>
> >+#include <linux/backlight.h>
> >  #include <linux/of_graph.h>
> >  #include <drm/drmP.h>
> >  #include <drm/drm_bridge.h>
> >@@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> >+
> >+/**
> >+ * drm_of_find_backlight - Find backlight device in device-tree
> >+ * @dev: Device
> >+ *
> >+ * This function looks for a DT node pointed to by a property named 'backlight'
> >+ * and uses of_find_backlight_by_node() to get the backlight device.
> >+ * Additionally if the brightness property is zero, it is set to
> >+ * max_brightness.
> >+ *
> >+ * Note: It is the responsibility of the caller to call put_device() when
> >+ * releasing the resource.
> >+ *
> >+ * Returns:
> >+ * NULL if there's no backlight property.
> >+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >+ * is found.
> >+ * If the backlight device is found, a pointer to the structure is returned.
> >+ */
> >+struct backlight_device *drm_of_find_backlight(struct device *dev)
> >+{
> >+	struct backlight_device *backlight;
> >+	struct device_node *np;
> >+
> >+	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >+	if (!np)
> >+		return NULL;
> >+
> >+	backlight = of_find_backlight_by_node(np);
> >+	of_node_put(np);
> >+
> >+	if (!backlight)
> >+		return ERR_PTR(-EPROBE_DEFER);
> >+
> >+	if (!backlight->props.brightness) {
> >+		backlight->props.brightness = backlight->props.max_brightness;
> >+		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >+			      backlight->props.brightness);
> >+	}
> >+
> >+	return backlight;
> >+}
> >+EXPORT_SYMBOL(drm_of_find_backlight);
> >diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >index bd6cce0..cd4c6a5 100644
> >--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >@@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >  /**
> >- * tinydrm_of_find_backlight - Find backlight device in device-tree
> >- * @dev: Device
> >- *
> >- * This function looks for a DT node pointed to by a property named 'backlight'
> >- * and uses of_find_backlight_by_node() to get the backlight device.
> >- * Additionally if the brightness property is zero, it is set to
> >- * max_brightness.
> >- *
> >- * Returns:
> >- * NULL if there's no backlight property.
> >- * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >- * is found.
> >- * If the backlight device is found, a pointer to the structure is returned.
> >- */
> >-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >-{
> >-	struct backlight_device *backlight;
> >-	struct device_node *np;
> >-
> >-	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >-	if (!np)
> >-		return NULL;
> >-
> >-	backlight = of_find_backlight_by_node(np);
> >-	of_node_put(np);
> >-
> >-	if (!backlight)
> >-		return ERR_PTR(-EPROBE_DEFER);
> >-
> >-	if (!backlight->props.brightness) {
> >-		backlight->props.brightness = backlight->props.max_brightness;
> >-		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >-			      backlight->props.brightness);
> >-	}
> >-
> >-	return backlight;
> >-}
> >-EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >-
> >-/**
> >   * tinydrm_enable_backlight - Enable backlight helper
> >   * @backlight: Backlight device
> >   *
> >diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >index 7e5bb7d..682b4db 100644
> >--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >@@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >  	if (IS_ERR(mipi->regulator))
> >  		return PTR_ERR(mipi->regulator);
> >-	mipi->backlight = tinydrm_of_find_backlight(dev);
> >+	mipi->backlight = drm_of_find_backlight(dev);
> >  	if (IS_ERR(mipi->backlight))
> >  		return PTR_ERR(mipi->backlight);
> >diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> >index d554ded..e40ef2d 100644
> >--- a/include/drm/tinydrm/tinydrm-helpers.h
> >+++ b/include/drm/tinydrm/tinydrm-helpers.h
> >@@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> >  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >  			       struct drm_clip_rect *clip);
> >-struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> >  int tinydrm_enable_backlight(struct backlight_device *backlight);
> >  int tinydrm_disable_backlight(struct backlight_device *backlight);
> >diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> >index 5f2fd61..47a095e 100644
> >--- a/include/linux/backlight.h
> >+++ b/include/linux/backlight.h
> >@@ -172,4 +172,15 @@ of_find_backlight_by_node(struct device_node *node)
> >  }
> >  #endif
> >+#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> >+struct backlight_device *
> >+drm_of_find_backlight(struct device *dev);
> >+#else
> >+static inline struct backlight_device *
> >+drm_of_find_backlight(struct device *dev)
> >+{
> >+	return NULL;
> >+}
> >+#endif
> >+
> >  #endif
> 
> This isn't what I meant, you only change the of_find_backlight_by_node()
> declaration/definition. It should be like this:
> 
> #if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> struct backlight_device *of_find_backlight_by_node(struct device_node
> *node);
> #else
> static inline struct backlight_device *
> of_find_backlight_by_node(struct device_node *node)
> {
> ��� return NULL;
> }
> #endif
I see. So basically add the function declaration of drm_of_find_backlight
and devm_drm_of_find_backlight in drm_of.h and this function declaration 
need not be inside the #ifdef CONFIG / #else part? 
So there need not be a dummy version of drm_of_find_backlight here
because we are anyway taking care of that in of_find_backliht by node?
Sorry for the many versions and thank you for the clarifications.

Regards,
Meghana
> And this change needs to be a patch on it's own. The backlight subsystem
> has it's own maintainer that will review this change.
> It's best to send him/them the whole patchset so they see the context.
> 
> Noralf.
> 

