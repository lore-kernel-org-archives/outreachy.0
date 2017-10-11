X-GM-THRID: 6475592721521180672
X-Received: by 10.159.252.136 with SMTP id bb8mr1480805plb.11.1507716937110;
        Wed, 11 Oct 2017 03:15:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.2.206 with SMTP id 197ls290930pfc.7.gmail; Wed, 11 Oct 2017
 03:15:36 -0700 (PDT)
X-Received: by 10.101.65.3 with SMTP id w3mr1612022pgp.50.1507716936474;
        Wed, 11 Oct 2017 03:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507716936; cv=none;
        d=google.com; s=arc-20160816;
        b=NM7uhNVZzdpsSPfLvvDCkNl5dY2U6Y9DqhtaTmmG7+PuoaVLy/bIAWQfwaJSxGy/ea
         9qBzZiFpVEi5BRQPh0eb62aSRqHgsmP8ECEgh7Qh4Ru23RaP/K7J0+cl0wDrIDOrNwbL
         xQGStRcNx5fl2s4KBBJUHr6Yy4wxV+OgLJqL3YPOyy6V/ZF1WUv7hWY0vfnYF/E+qbi3
         NqvyvDIC2yGaLhpWMYzgEVBzyaj17gmmL+74TOi2+dJYGO51Tdi6Mbi82E4fqEbdADk8
         jPgOasWmF3N0Lnknrdkb58w/hjDx1vntKqJJ/qWfjhh1FM6swm1lpXsgCDzgLlcbatdE
         EUcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=2FJFimG/wBJy8MxD0kfPEekhevEEmnyAYgqUDOWf3ms=;
        b=NydWf6lTtC0DXzvXC7ViRaFbXl8xFUBUWbtHRC85JmLAkWSpy9pujfYa5eakxYNsG/
         VsAcZeyktUlFr49226hBTKFWu5hzxSXEs/Y7nMlu0ppXSWUczCawq2/rJb2UrTvs6kGE
         WGTaBPJtlFTQQcYppcAUN+9Y9+B7ldMPF3MVGT2dz/Nrk8VmITCKKbbltZMluV8joHyF
         3nj4PJw6e1BaAm9+JAGeEgB4pqEs0COfz3IZb2uXAXbocfYDaEnjhXst0Be31PJ/OdL+
         UDWBiVLyXVxZ8cZ7nysXA+iLwVqnd5FeRbpJLqEY1amPiLBFy0zD/6szdsGvaUNOwwuD
         LiTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KYGqdBjq;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id w65si1362134pfa.21.2017.10.11.03.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KYGqdBjq;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b11so1714074pgn.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 03:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2FJFimG/wBJy8MxD0kfPEekhevEEmnyAYgqUDOWf3ms=;
        b=KYGqdBjqRHItBpLxgFQhWytrqMv75OnDwDUQyEInrb2p4O5eNa4cjcitud38e3PRpY
         9jZbQPP5uLJHU83gzuAaJCkYxI+7F4swELBTLi9RFE50nDlYIXkF1tem/lz5ou0Vp1+4
         eZ24fjSOdTB/0EjZWGq7NW3Phc/6s7vgM7fGeF4KirZ8R9aE53GjzuSGhVSNhjpFbGkd
         aDZaNpypz5k34IGPOWgY8TT6Rfa5a/YE3UTWO9EZizwqTdgaoV5QGICZ8PS4fLaW/jGz
         hgBu5NF/IQMcqMvhO7IwMscvOW9WlbiSTE6mb92qC0s4fizdperPI2wqFvqKMMa8Gr6p
         GADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2FJFimG/wBJy8MxD0kfPEekhevEEmnyAYgqUDOWf3ms=;
        b=G3bN6txcdC4+X1Jr2+rTsVKnSDpZtLOSLeBirrBe8bsp36/1HPsvddceNL47jaxWoJ
         HbNmEQ5Y8eMeAI2H0wze2FM8Cy/LxMmKyQz86xDV7aBfogDK3xEuYjm4Ud+Gvyb+GHRl
         XQsS2b0569D1C92/a8dYZDbcojlUXKhZAMHxUSW2mwvsA/qRTJfB4E6XbMmg+H8XESsf
         B/udk9ZkkewkLiScPjqNQmiSs1UEG57j4lgVGU2pxbmg9VFhjMj6fBR8PD9bfvQqnK8q
         PdSQn4l47w/AH8QovuoAOswTTLfcItPYLQ7LyoODZYZ39iJ+4caFCHuIaQWpSCJGqjAn
         TJbQ==
X-Gm-Message-State: AMCzsaX7AR4B80s0Zn+4IRa9aBeNdW02A7+RG3lCO7EVG4vSHnRoaKVC
	XBr3uYDhbkYp0xL7sjdKz5LMcTa9
X-Google-Smtp-Source: AOwi7QA3W8jLB48H/UABb9Ni4APo9+6grTjRjTMUjdM52Z9pNewJkTt4X26ZEZ6+C0pgw0ehVjsFSw==
X-Received: by 10.98.217.78 with SMTP id s75mr14892754pfg.40.1507716936223;
        Wed, 11 Oct 2017 03:15:36 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id p88sm27089762pfi.174.2017.10.11.03.15.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:15:35 -0700 (PDT)
Date: Wed, 11 Oct 2017 15:45:30 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v8 3/3] drm/tinydrm: Add devres versions of backlight_get
Message-ID: <6dd8ab4eb88a75613a7bd69c9ff7278f03dd6ea4.1507714297.git.meghana.madhyastha@gmail.com>
References: <cover.1507714297.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507714297.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_backlight_get and the corresponding release
function because some drivers use devres versions of functions
for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v8:
-Put the devres version to backlight.c along with backlight_get.

 drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
 drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
 include/linux/backlight.h           | 16 ++++++++++++++++
 3 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index edf9502..03fec36 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -190,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = backlight_get(dev);
+	mipi->backlight = devm_backlight_get(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index 1debb60..9b24dc2 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -618,6 +618,37 @@ struct backlight_device *backlight_get(struct device *dev)
 	return bd;
 }
 EXPORT_SYMBOL(backlight_get);
+
+static void devm_backlight_get_release(void *data)
+{
+	backlight_put(data);
+}
+
+/**
+ * devm_backlight_get - Resource-managed backlight_get()
+ * @dev: Device
+ *
+ * Device managed version of backlight_get(). The reference on the backlight
+ * device is automatically dropped on driver detach.
+ */
+struct backlight_device *devm_backlight_get(struct device *dev)
+{
+	struct backlight_device *bd;
+	int ret;
+
+	bd = backlight_get(dev);
+	if (!bd)
+		return NULL;
+
+	ret = devm_add_action(dev, devm_backlight_get_release, bd);
+	if (ret) {
+		backlight_put(bd);
+		return ERR_PTR(ret);
+	}
+
+	return bd;
+}
+EXPORT_SYMBOL(devm_backlight_get);
 #endif
 
 static void __exit backlight_class_exit(void)
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 1d713b3..0bfadb6 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -183,6 +183,16 @@ static inline int backlight_disable(struct backlight_device *bd)
 	return backlight_update_status(bd);
 }
 
+/**
+ ** backlight_put - Drop backlight reference
+ ** @bd: the backlight device to put
+ **/
+static inline void backlight_put(struct backlight_device *bd)
+{
+	if (bd)
+		put_device(&bd->dev);
+}
+
 struct generic_bl_info {
 	const char *name;
 	int max_intensity;
@@ -204,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 struct backlight_device *backlight_get(struct device *dev);
+struct backlight_device *devm_backlight_get(struct device *dev);
 #else
 static inline struct backlight_device *backlight_get(struct device *dev)
 {
 	return NULL;
 }
+
+static inline struct backlight_device *devm_backlight_get(struct device *dev)
+{
+	return NULL;
+}
 #endif
 
 #endif
-- 
2.7.4


