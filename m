X-GM-THRID: 6468555141619384320
X-Received: by 10.13.202.134 with SMTP id m128mr7470558ywd.148.1506092990821;
        Fri, 22 Sep 2017 08:09:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.4 with SMTP id r4ls1585280pgt.9.gmail; Fri, 22 Sep 2017
 08:09:49 -0700 (PDT)
X-Received: by 10.99.115.86 with SMTP id d22mr5656026pgn.161.1506092989676;
        Fri, 22 Sep 2017 08:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506092989; cv=none;
        d=google.com; s=arc-20160816;
        b=Cd/DnxVjWvzx7X6BSpuR+NB0OK6oDWlxASoYwRkjVwTYCChVgynJU1ZJrU8TEp4kQ2
         7pKkKdwQRx7UAf+bQC61b14erDwSmHiwLruruo7lxcvwjH20PBKFzvAJzMnv9CKhSvEw
         mBIh5XpD4GG9VOJDHp17fgTmCGP8cTNFUeuhAg+MYt32OV1D+kka9/ta9Anu5DGhEwaK
         ahz1fvjLP+5j4y+bkkvkGhyvP0K2eufoXkr3NzDHGIGGMLhk4TFG+n+tGr6PABgd7n2P
         F0OMM6jIW5Khspi6khI0zA8HpZURXvJncZUOIszcfCn8kfM5BgTrFt0W77CaBgRPtO0b
         QS4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=WzWclN+SUW2JeoILRj7UIcgNnix+6Ga9RJMYIUS5Tss=;
        b=ManoDjo+LGMJoqtMGW1KpTGZiDReIsCrWBNTVC6nCRSHRQrjZ1bEqQ0f1jP61K//9X
         wB21VZ9l81Xt3Y9uJwwkSy2to69dtyYBJG3M0tzobifelqkVQpQZ+5Ln3pxwJxP1xHY7
         VD6tzXJmyJxzyxI0OIPDINj5bKVqzg1EcPrioeG4NdMuDhDYafBh6JXCndv0fnEbQ0sj
         AZh6Erz50kpdylOjgImLmH7fzIfb7DvQZbJzUkXItHW0Ykn72Tfz10AQrQ4t3CR2VLjr
         eLgcxdQPHTervcU018L+6IQkVp0AhP/fH4hQEQs98Ke8uRhetQHTu0lt5yEYOAVJzV3p
         7OSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gLdBjM0A;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r78si6852pfb.3.2017.09.22.08.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 08:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gLdBjM0A;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so798772pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 08:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=WzWclN+SUW2JeoILRj7UIcgNnix+6Ga9RJMYIUS5Tss=;
        b=gLdBjM0A5imNAFAO/Me8iKjp3x9KpmLqnTIK1Nq/A9X2BYEJ53QH650K/OqdK14ALr
         KymHT7FndZaD8AxvSwetJrLPJS7aEdfR8E8z7M1T1NeZYEao0McIOCTpsMyUg1LST2mM
         jwfcIDPMSuDpmPGBMZrGLc66qa9gxxkKab1ZsF/JnvtDFeKyFSh+Ti5x3C/tYmfLwB7j
         FrniJf8fggtt5UPuMSc8pKwe3+x2X57pkZyOio+EtMckE3UUwmgRyiJVjB28eNaYYSr5
         8Bk18elDIrGHExWxMG6ZZu+yOTEVY/0Wizb1TQb0sN71c0ja1dT9LLpqwpZ8AkNpGkeJ
         uVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=WzWclN+SUW2JeoILRj7UIcgNnix+6Ga9RJMYIUS5Tss=;
        b=PjwYqmYDbza+VrnAU3c+UqwLca4pm7pS/4/79TmTfRPWc8zzYPZExmbuLT6qTPM1mE
         H/pkIt64Q/bTvM4X8q1csij4OVSn6HPMcT9k63qQhCx+/g1TtU9Mji9B9ybPfyLxxV6E
         TvM5P0ilsVSXcUgXknRC9SD6boKtEPegr4ybUazldjgXJ63AqzNw/wlmtKpNDOGv3EDG
         EbUcyVBBE9vXkbt/j3lri69dn+9Foxwh8kO2joInwr+1+p6XuoSGUfo2AU11A8D014Ub
         O+iAa6MV82amBFVFenGRhN7F8atoCa+jqHgy9j/t8Kxy9PHtc0eVj3wepu4OaIAZmcit
         3lug==
X-Gm-Message-State: AHPjjUhb0my8KazN51WokonUqzsrEO0+deayT81KoNcRoxaRsTDGUaRw
	NMTt+XPlZU1klg9y4sGbNU8=
X-Google-Smtp-Source: AOwi7QCqsnZlEqViuJZWanQ4Artg+W9L5PYPQJrWOSTDDqgLTdiYRoWZxmWoegQz6bdWuXlNOdMCBw==
X-Received: by 10.101.82.202 with SMTP id z10mr9475664pgp.176.1506092989317;
        Fri, 22 Sep 2017 08:09:49 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id 20sm58538pft.109.2017.09.22.08.09.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 08:09:48 -0700 (PDT)
Date: Fri, 22 Sep 2017 20:39:41 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] drm/tinydrm: Move backlight helpers to a separate file
Message-ID: <20170922150935.GA15912@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.24 (2015-08-30)

Move backlight helpers from tinydrm-helpers.c to
tinydrm-backlight.c. This is because it is organizationally
simpler to understand and advantageous to group functions
performing a similar function to a separate file as opposed to
having one helper file with heteregenous helper functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
 -Improved commit message by explaining why the changes were made.

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


