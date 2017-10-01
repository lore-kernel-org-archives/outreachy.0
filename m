X-GM-THRID: 6470705412124442624
X-Received: by 10.98.205.194 with SMTP id o185mr1015704pfg.37.1506878951479;
        Sun, 01 Oct 2017 10:29:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.242.17 with SMTP id m17ls3083410pfh.11.gmail; Sun, 01 Oct
 2017 10:29:10 -0700 (PDT)
X-Received: by 10.101.72.66 with SMTP id i2mr1202305pgs.143.1506878950739;
        Sun, 01 Oct 2017 10:29:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506878950; cv=none;
        d=google.com; s=arc-20160816;
        b=MxD7aA5Xc7OV5pgINatqgsp8xBitPVXJsZGgdzntMMSHf63dg5HKzZedkZ5vUJy+cG
         eFA30NoPgxm4ik6ZrC70MjLjP+A98GhpP/Z04IFHsGgPK4YI3VBL925Dp4w5imdQFRTQ
         QXScfMu/uTgubxtF2dysEZXAxDfoCBKUdmfn5CiLeyhXFMY/nhfgt0ksOKVGDUxR8Zj0
         qyQHuXW+aPApTdECQlFKwIgSKW7QwhaBiLaNE/ni7r40XHU/xwbt5FfmRH10KPmwsEZi
         IyezZRjQj50wLTjPg0Wtk2uTJK2jBgfS6wRRvUdF1zXzBtHEykt5sFdLjiZBAflWfHw3
         O5CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=P0AC8cd5sOo188MnlKDmK4+E/NdkZtH+hWBD+f+ltko=;
        b=Vk9lWVjbBFuHUOhV0PWyCDYvy9XrmOL+nL9f6Yq4Qju/xIE04C8HFbYkJrxQKsQ3FO
         /9kyg3PsNRATUYiejGoL+luX0JIbc3uqYtqLrOyYPpwswa93aGZBDKURVp+2KU3YBHb6
         gSURp+hYxb+HqQ7KLf840qQPp6fUal/iUjrz5xwePNB6tc9Z6X+9Jkqzp914d2aRz33c
         NRkUMPjuxoktK5yStGS/3np4oSDnzoblyCc8XhNkHYW5COvbNJUACqCnVwpSN9yUFCCP
         0ISC+hks0GUy9jmKo/EDHyb8a5obfShMl8cGqIxgqFpH1vXqzO72E40hNQjS0Wor6MqH
         hiVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dPfj3eAh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si899474pfb.5.2017.10.01.10.29.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:29:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dPfj3eAh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id p5so1264261pgn.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 10:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=P0AC8cd5sOo188MnlKDmK4+E/NdkZtH+hWBD+f+ltko=;
        b=dPfj3eAh0lTguRmU73ElfAUq16aWeX1OQDzl+i2S/nxoo0YtrW54kA+p6B/ndyeDF+
         780HfZy7bGcKDfd2nacPpcVqqGS0cDMy74uLNhNO2fn2iHw0kulGmG1GXKMSESazbUuH
         2T/7bWv2E6v8V1wh9IxuzvwAEOwT168gB75HlKM0bmpFVYk3WKg/EoH5SemrsPrLxhSN
         05Q7JBp6tdcgDafAX2BFRszzsV+gtGCvPHILJ51ZNNgmJGhj/POBjV5BnefaVD6Kcw7m
         j7KcWjergz3uh7bn1np31mCijW514ikY4XAy68GxSfwY0Z0HzSNKImwgTn+iDZi0mhmM
         VkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=P0AC8cd5sOo188MnlKDmK4+E/NdkZtH+hWBD+f+ltko=;
        b=CboxW59a3D+SWjX4Ir+klJ4Z+IUoP2KkeVzmEa4EopfMY2OZz+rvvLZu4s4vGQq1nT
         6QcihRwoLYe8sluf1MY78NSFUSRtdEbibVUP68AycbzlFxuGD4qwVoSIYK2nSe1yGCcN
         2H1fyralOWmcyjaBIZ+stlqmnH9RLEOl/LOyNZON4A+9hfEX0w4f8QjsRyQxL9ukYNIa
         sUQL0+m0W986rrqZ/NnxiK1SAcPJM/aVLN06AvNTnZ42VHZ4OytNx6nI1+yUohs04nZv
         Xc4v8gJLNAWZ/DTyMDppQlQRMHQmmjbs9cQ78v2msHm3rMkGSKGHUi8xElzq9lUupfOK
         nP5Q==
X-Gm-Message-State: AHPjjUiC/kpDz7Esn79mhCZ+b1nD06G6NZiUSGTg6qmJdI7cXTWO2eHV
	X+n1AL1E6ZVjZTKxYqAQMuiAH1Ca
X-Google-Smtp-Source: AOwi7QCR8cyZcdMXY8tPf0OD0LVUxFVZUmGMHQ6cgoTHSjMyVW7XFKspE41hSrVmHpS4njtBRG/WMg==
X-Received: by 10.99.102.1 with SMTP id a1mr10636080pgc.431.1506878950487;
        Sun, 01 Oct 2017 10:29:10 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id g16sm14508379pfd.6.2017.10.01.10.29.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:29:09 -0700 (PDT)
Date: Sun, 1 Oct 2017 22:59:03 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>,
	Daniel Thompson <daniel.thompson@linaro.org>
Subject: [PATCH v7 3/3] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <0e118ec513d94378559531442c60b2eab9ebdd7f.1506878301.git.meghana.madhyastha@gmail.com>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506878301.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_drm_of_find_backlight and the corresponding release
function because some drivers use devres versions of functions
for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v7:
-None

 drivers/gpu/drm/drm_of.c           | 40 ++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/mi0283qt.c |  2 +-
 include/drm/drm_of.h               |  7 +++++++
 3 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 7417725..82b5113 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -305,3 +305,43 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
 	return backlight;
 }
 EXPORT_SYMBOL(drm_of_find_backlight);
+
+static void devm_drm_of_find_backlight_release(void *data)
+{
+	put_device(data);
+}
+
+/**
+ * devm_drm_of_find_backlight - Find backlight device in device-tree
+ * devres version of the function
+ * @dev: Device
+ *
+ * This is the devres version of the function drm_of_find_backlight.
+ * Some drivers use devres versions of functions for
+ * requiring device resources.
+ *
+ * Returns:
+ * NULL if there's no backlight property.
+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
+ * is found.
+ * If the backlight device is found, a pointer to the structure is returned.
+ */
+struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
+{
+	struct backlight_device *backlight;
+	int ret;
+
+	backlight = drm_of_find_backlight(dev);
+	if (IS_ERR_OR_NULL(backlight))
+		return backlight;
+
+	ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
+			      &backlight->dev);
+	if (ret) {
+		put_device(&backlight->dev);
+		return ERR_PTR(ret);
+	}
+
+	return backlight;
+}
+EXPORT_SYMBOL(devm_drm_of_find_backlight);
diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 5e3d635..d37f658 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -190,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = drm_of_find_backlight(dev);
+	mipi->backlight = devm_drm_of_find_backlight(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index 6e93311..b95f3fb 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -30,6 +30,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 				struct drm_panel **panel,
 				struct drm_bridge **bridge);
 struct backlight_device *drm_of_find_backlight(struct device *dev);
+struct backlight_device *devm_drm_of_find_backlight(struct device *dev);
 #else
 static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
 						  struct device_node *port)
@@ -72,6 +73,12 @@ drm_of_find_backlight(struct device *dev)
 {
 	return NULL;
 }
+
+static inline struct backlight_device *
+devm_drm_of_find_backlight(struct device *dev)
+{
+	return NULL;
+}
 #endif
 
 static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
-- 
2.7.4


