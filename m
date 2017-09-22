X-GM-THRID: 6468555141619384320
X-Received: by 10.159.197.75 with SMTP id d11mr169981plo.56.1506077857979;
        Fri, 22 Sep 2017 03:57:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.152.88 with SMTP id l24ls1434101pgo.18.gmail; Fri, 22 Sep
 2017 03:57:37 -0700 (PDT)
X-Received: by 10.99.120.130 with SMTP id t124mr5292367pgc.109.1506077857044;
        Fri, 22 Sep 2017 03:57:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506077857; cv=none;
        d=google.com; s=arc-20160816;
        b=D8EfSDf98ezZWJo1wCNiwrOrRmbUEhkhHBAPzAcK3LvhUvoqk8G58CuoP0hTtlOEql
         AG+Qb/Mvld0Tf+KeGBNmYeCfacSghYq/k9r7ec910bFXKXMxJLnCYRxKuN0Ny5cWIUel
         u0ubmJ+zskEUJXw7H7cyeWPTnfp0uaZxWxDQ6aUz1emGAeUtdikxMu5lsLJUdLpfen9C
         ig5fBJ2GpaLvE/yIQM9mhnllX3Ra0DPYkoHlm03UYQ1N3JWqzAbXxOs/4CYXSMB5V3gf
         ZDjEdOk8TCuqsFPze89ZnCkKTF27Cvts/1nIhgiq6ds3OVWMJzCKJHxXGzE3pJXIOIik
         qMvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=+6Kis41LWxxbmlxDDFhdayQbwclBnXskcyikno5DqrA=;
        b=L6Bp7E502UoXaXd56eXjN0PSnJ60fAVG/6DllWTkITFa4pIWyffL9xvDvvG4dZZbwD
         /lZ1l18Nhx3WQ56Lby4+nU4vwl5Y7n3lwtIEmanRxIywWV7ttzCBsC2b10xHbqkCToSv
         wkhuxqvEgeQu4fj3c6CkxRmTP8/CWLFULJ4LvVi4c5KAPefNo1DACJ1vkk8lIJbb7PUO
         mqcXMh+3+6w5n7Ggwp01FSJrbtwslmz+wUva0bI/JvIdIhjaG5lmOSLOMNHG/tUKmylf
         ntTDDv4DrPRkN6XX+7iPiom7KWS4FSqLKEAVmSbWsAvjdHhm0XNSWmXIwWd+sPlzG3E4
         N9Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jwx/rteC;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id o128si202849pfg.22.2017.09.22.03.57.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 03:57:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jwx/rteC;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g65so325526pfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 03:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=+6Kis41LWxxbmlxDDFhdayQbwclBnXskcyikno5DqrA=;
        b=Jwx/rteCye0Q55X0aLMZqT5VLcULeBJ+X0Sjm6l+2tvQNfk493JmW0vHHEje39zeLL
         QTrSA6OHHiL/8D7JDCHhCJSJWN6aadxvZKBzlKe9qhYI1bmeXpPDSyTpBAZP73Bo3d8Q
         CGO2XTHdZQtQsNKVmOVdXCzoEqxunIKXe/44LMs6G+o3xtpSM4QdvzKCFgzAFdygVDQl
         CCGqz3r+qTM8A2OV6cmwKz+AmQsGqvMJfbtF2P4fWDaqbKHrD80k0E8x6AsUnTQ+GvHK
         sgvDiIvPHoD/QxzloIzXTExibZemXntrM9U0IZsPXgS+SV3JbXYgKqDsH8nbjhZiDSY2
         /tPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=+6Kis41LWxxbmlxDDFhdayQbwclBnXskcyikno5DqrA=;
        b=osgQRjfA9i68knNdLC1HC0H9fFHHbo+5+9/yefJ/ZpRtSHcIgaA/ogv6xhKL2czfCO
         9PTfRBOc3+FoCTruNFxy3V3M886X5BvQIEbUAvlVhdLFwYrza/iPj8cbo3vEZMYKMkDw
         P905WPRkVJzfHVcO0naogjqOViiDc70o1/0AG6ehmuhQhK2Ah51n8UzeEfrXZuGA62lX
         aM45RNMNXa6LbhqcxWcts04PkUffKA03s1gI2SLryfgziLwc2Qo3VtHZcjMthdpHvUDM
         l1OWFiRHpTBCqyBHnZTJa8Nc/QoKnAIHtp4PYEKZ3nZ12z1v0E5NNS4eVtVDeS/ypsxs
         cYxA==
X-Gm-Message-State: AHPjjUgSLwoXVHRCvyr4jDVSaVebowCbr48quNT2NTfrzbpdFB2XpePn
	X8zMfr42js4BqI5o7LT/25w=
X-Google-Smtp-Source: AOwi7QDx+mHlbkh3wudBR9M6mSY3MlYdWPekzBS9Xvn6QlS+a7gL8FtpAevo3rxll8SmNkfmiI2WXg==
X-Received: by 10.99.115.26 with SMTP id o26mr9115790pgc.9.1506077856637;
        Fri, 22 Sep 2017 03:57:36 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id g5sm6723903pfe.94.2017.09.22.03.57.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 03:57:35 -0700 (PDT)
Date: Fri, 22 Sep 2017 16:27:28 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/tinydrm: Move backlight helpers to a separate file
Message-ID: <20170922105723.GA4335@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.24 (2015-08-30)

Move backlight helpers from tinydrm-helpers.c to
tinydrm-backlight.c

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/tinydrm/core/Makefile            |   2 +-
 drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c | 103 +++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c   |  94 ---------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c               |   1 +
 drivers/gpu/drm/tinydrm/mipi-dbi.c               |   1 +
 include/drm/tinydrm/tinydrm-backlight.h          |  18 ++++
 6 files changed, 124 insertions(+), 95 deletions(-)
 create mode 100644 drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
 create mode 100644 include/drm/tinydrm/tinydrm-backlight.h

diff --git a/drivers/gpu/drm/tinydrm/core/Makefile b/drivers/gpu/drm/tinydrm/core/Makefile
index fb221e6..389ca7a 100644
--- a/drivers/gpu/drm/tinydrm/core/Makefile
+++ b/drivers/gpu/drm/tinydrm/core/Makefile
@@ -1,3 +1,3 @@
-tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-helpers.o
+tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-backlight.o tinydrm-helpers.o
 
 obj-$(CONFIG_DRM_TINYDRM) += tinydrm.o
diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
new file mode 100644
index 0000000..dc6f17d
--- /dev/null
+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
@@ -0,0 +1,103 @@
+#include <linux/backlight.h>
+#include <linux/dma-buf.h>
+#include <linux/pm.h>
+#include <linux/swab.h>
+
+#include <drm/tinydrm/tinydrm.h>
+#include <drm/tinydrm/tinydrm-backlight.h>
+
+/**
+ * tinydrm_of_find_backlight - Find backlight device in device-tree
+ * @dev: Device
+ *
+ * This function looks for a DT node pointed to by a property named 'backlight'
+ * and uses of_find_backlight_by_node() to get the backlight device.
+ * Additionally if the brightness property is zero, it is set to
+ * max_brightness.
+ *
+ * Returns:
+ * NULL if there's no backlight property.
+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
+ * is found.
+ * If the backlight device is found, a pointer to the structure is returned.
+ */
+
+struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
+{
+	struct backlight_device *backlight;
+	struct device_node *np;
+
+	np = of_parse_phandle(dev->of_node, "backlight", 0);
+	if (!np)
+		return NULL;
+
+	backlight = of_find_backlight_by_node(np);
+	of_node_put(np);
+
+	if (!backlight)
+		return ERR_PTR(-EPROBE_DEFER);
+
+	if (!backlight->props.brightness) {
+		backlight->props.brightness = backlight->props.max_brightness;
+		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
+			      backlight->props.brightness);
+	}
+
+	return backlight;
+}
+EXPORT_SYMBOL(tinydrm_of_find_backlight);
+
+/**
+ * tinydrm_enable_backlight - Enable backlight helper
+ * @backlight: Backlight device
+ *
+ * Returns:
+ * Zero on success, negative error code on failure.
+ */
+int tinydrm_enable_backlight(struct backlight_device *backlight)
+{
+	unsigned int old_state;
+	int ret;
+
+	if (!backlight)
+		return 0;
+
+	old_state = backlight->props.state;
+	backlight->props.state &= ~BL_CORE_FBBLANK;
+	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
+		      backlight->props.state);
+
+	ret = backlight_update_status(backlight);
+	if (ret)
+		DRM_ERROR("Failed to enable backlight %d\n", ret);
+
+	return ret;
+}
+EXPORT_SYMBOL(tinydrm_enable_backlight);
+
+/**
+ * tinydrm_disable_backlight - Disable backlight helper
+ * @backlight: Backlight device
+ *
+ * Returns:
+ * Zero on success, negative error code on failure.
+ */
+int tinydrm_disable_backlight(struct backlight_device *backlight)
+{
+	unsigned int old_state;
+	int ret;
+
+	if (!backlight)
+		return 0;
+
+	old_state = backlight->props.state;
+	backlight->props.state |= BL_CORE_FBBLANK;
+	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
+		      backlight->props.state);
+	ret = backlight_update_status(backlight);
+	if (ret)
+		DRM_ERROR("Failed to disable backlight %d\n", ret);
+
+	return ret;
+}
+EXPORT_SYMBOL(tinydrm_disable_backlight);
diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
index bd6cce0..ee8ad8c 100644
--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
@@ -236,100 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
 }
 EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
 
-/**
- * tinydrm_of_find_backlight - Find backlight device in device-tree
- * @dev: Device
- *
- * This function looks for a DT node pointed to by a property named 'backlight'
- * and uses of_find_backlight_by_node() to get the backlight device.
- * Additionally if the brightness property is zero, it is set to
- * max_brightness.
- *
- * Returns:
- * NULL if there's no backlight property.
- * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
- * is found.
- * If the backlight device is found, a pointer to the structure is returned.
- */
-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
-{
-	struct backlight_device *backlight;
-	struct device_node *np;
-
-	np = of_parse_phandle(dev->of_node, "backlight", 0);
-	if (!np)
-		return NULL;
-
-	backlight = of_find_backlight_by_node(np);
-	of_node_put(np);
-
-	if (!backlight)
-		return ERR_PTR(-EPROBE_DEFER);
-
-	if (!backlight->props.brightness) {
-		backlight->props.brightness = backlight->props.max_brightness;
-		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
-			      backlight->props.brightness);
-	}
-
-	return backlight;
-}
-EXPORT_SYMBOL(tinydrm_of_find_backlight);
-
-/**
- * tinydrm_enable_backlight - Enable backlight helper
- * @backlight: Backlight device
- *
- * Returns:
- * Zero on success, negative error code on failure.
- */
-int tinydrm_enable_backlight(struct backlight_device *backlight)
-{
-	unsigned int old_state;
-	int ret;
-
-	if (!backlight)
-		return 0;
-
-	old_state = backlight->props.state;
-	backlight->props.state &= ~BL_CORE_FBBLANK;
-	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
-		      backlight->props.state);
-
-	ret = backlight_update_status(backlight);
-	if (ret)
-		DRM_ERROR("Failed to enable backlight %d\n", ret);
-
-	return ret;
-}
-EXPORT_SYMBOL(tinydrm_enable_backlight);
-
-/**
- * tinydrm_disable_backlight - Disable backlight helper
- * @backlight: Backlight device
- *
- * Returns:
- * Zero on success, negative error code on failure.
- */
-int tinydrm_disable_backlight(struct backlight_device *backlight)
-{
-	unsigned int old_state;
-	int ret;
-
-	if (!backlight)
-		return 0;
-
-	old_state = backlight->props.state;
-	backlight->props.state |= BL_CORE_FBBLANK;
-	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
-		      backlight->props.state);
-	ret = backlight_update_status(backlight);
-	if (ret)
-		DRM_ERROR("Failed to disable backlight %d\n", ret);
-
-	return ret;
-}
-EXPORT_SYMBOL(tinydrm_disable_backlight);
 
 #if IS_ENABLED(CONFIG_SPI)
 
diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 7e5bb7d..c161d45 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -12,6 +12,7 @@
 #include <drm/tinydrm/ili9341.h>
 #include <drm/tinydrm/mipi-dbi.h>
 #include <drm/tinydrm/tinydrm-helpers.h>
+#include <drm/tinydrm/tinydrm-backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c b/drivers/gpu/drm/tinydrm/mipi-dbi.c
index 2caeabc..dc84f26 100644
--- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
+++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
@@ -11,6 +11,7 @@
 
 #include <drm/tinydrm/mipi-dbi.h>
 #include <drm/tinydrm/tinydrm-helpers.h>
+#include <drm/tinydrm/tinydrm-backlight.h>
 #include <linux/debugfs.h>
 #include <linux/dma-buf.h>
 #include <linux/gpio/consumer.h>
diff --git a/include/drm/tinydrm/tinydrm-backlight.h b/include/drm/tinydrm/tinydrm-backlight.h
new file mode 100644
index 0000000..6a7b6d5
--- /dev/null
+++ b/include/drm/tinydrm/tinydrm-backlight.h
@@ -0,0 +1,18 @@
+/*
+ * Copyright (C) 2016 Noralf Tr�nnes
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __LINUX_TINYDRM_BACKLIGHT_H
+#define __LINUX_TINYDRM_BACKLIGHT_H
+
+struct backlight_device;
+struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
+int tinydrm_enable_backlight(struct backlight_device *backlight);
+int tinydrm_disable_backlight(struct backlight_device *backlight);
+
+#endif /* __LINUX_TINYDRM_BACKLIGHT_H */
-- 
2.7.4


