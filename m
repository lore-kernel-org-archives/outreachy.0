X-GM-THRID: 6475592721521180672
X-Received: by 10.101.77.15 with SMTP id i15mr394913pgt.29.1507800376925;
        Thu, 12 Oct 2017 02:26:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.29.214 with SMTP id d205ls1003698pfd.11.gmail; Thu, 12 Oct
 2017 02:26:16 -0700 (PDT)
X-Received: by 10.101.64.204 with SMTP id u12mr410230pgp.43.1507800376306;
        Thu, 12 Oct 2017 02:26:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507800376; cv=none;
        d=google.com; s=arc-20160816;
        b=l3fAedTqOL7u1iprOMG9KgaFJ+Yt42JgaW2xxFhldMhlkzFCB29w//rZLw198bWBT6
         ZOpGyoFllaJJttjVjw7SnU8Nh/yrnBBRl8eiyIqrQQ3dYtoGgO+9T2Z95NnbVf8SBPEl
         JYO2YL6CnieTvUh2/uARmO/t+XfwIbGJ/HVGk/C7N6b4aPKopI2Sd3LuyeE5B0oAfd/1
         /I5pHR7oGfu9mezSMZCwndzUAVJTnxqHHLw2ugdS6o3wwU9y77oU7q0kwYqH5tdPAtq8
         iqZcqP/JwIm+zORmxgpS1264z1nKKzZ2DsMKa7NgvnXCEQmlHK14TvD9ILHONSFXYjgQ
         PrPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=wJV3+duZQ8ii285Fs7lnOBVUuLyHU7cNWQVcqshhado=;
        b=ZzD/ygJMk8ni+IRoTHWpyUikimiBcCHce9M6LkLaFdNsIjTwERonFDLEkzkI7AuNoB
         qOt1VFCCCVN7Fr0RmMRkrBtckR83NSzbeIA/5S8CEl9gPc5K6Y2dLgFAWXAGPemqFwS3
         VnrkDaf+Zvf2QdyMY+B03ANX1VHP8hVJgwPM8+6rontjrPkHiNxOV0N/L46IRtcpvx1V
         U6jnSmBjoFLho6NT/WgmrzSTlW9mHmY1wroFF+BJctvs3lfE8foO4FK2uM/NBvH6g2uW
         s5IRoYUbF+MWsy68gGbecIJoRmFjND1zTnTvgV984tYfHL5LzMyfhYGY1h4As616VFz1
         yBkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WnjuvETl;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f15si924plr.1.2017.10.12.02.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WnjuvETl;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so5282865pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wJV3+duZQ8ii285Fs7lnOBVUuLyHU7cNWQVcqshhado=;
        b=WnjuvETlduRh9JvxPFFQPb31VZkl561n6xki9n796dIJAWiFSNvgqEysp2BEXEHVGv
         1f3LH+Ar5exsCq1AyGZ4MucDgP2yvIUHbdQ70O5DGAVcC57DBU5H6aZobEKhQAssWIKH
         smGfYAgCT5R0zNHEQII8du93zbLyJqhbj9qnDVwfpQnjuuJ7FYUIud34j+g/fur/YnV/
         Sb7mH10CCJVCEa5Fwyg39zVtVakEJmU5w/8R/JFDEQCSDik9+/Qta75ax1kzapCTfwbs
         PiJpRtr6OGjRNcfcyqzEWWLB6YG3iJzgrsW8qzrwJUZ5yZrI23hre6U5rHki9/5Cn1Df
         h1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wJV3+duZQ8ii285Fs7lnOBVUuLyHU7cNWQVcqshhado=;
        b=WQK0NfYgKSvyWULNTZaTwgmE9TEbyoka/kyYNS3AVDXDJ7EsjSVr/wNXzZnsnE7O15
         PkRoOMtDE+cDFY+6PtrwoxUyW/f1aGgrzM/SaHZhkLn7n0247jW1xIpSJdqsJd75pL28
         Filw5FRaS0zVs3zi/YbyM9QLJVjYUEtKYloJD0EVCTzgypV9JQhIulSWIzSNZYAeIQFj
         Bk5gkoGNH2VMPW37KEkOfl+d5rYJFC3+qu4Xo46jIVaLm4ASGQakB5nEuQUGAPZkdf1p
         pmS1Krqj8ccZ5EDFn0Mh0N+tgL1efBMjPBvfAqWt3xl6Yv2mM5McicMeTkcOi2Sd0N8u
         AkYg==
X-Gm-Message-State: AMCzsaUVm405PSxKogm4LAUz+a5qLxVlQoz/Pvo3EqeZ6tWgtDpOBuQt
	V9EVGXFzVkKWZIW57joYcwfshJ8Lar4=
X-Google-Smtp-Source: AOwi7QD+PP9UXlKxwxi7s1B7omOn2xTFgwONWEtuxEVku4CxI3KH+hlymGHkc6ak0f9O1bO7QpoGkQ==
X-Received: by 10.99.185.71 with SMTP id v7mr1638264pgo.24.1507800376078;
        Thu, 12 Oct 2017 02:26:16 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id y5sm30846988pfd.89.2017.10.12.02.26.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:26:15 -0700 (PDT)
Date: Thu, 12 Oct 2017 14:56:06 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v10 3/3] drm/tinydrm: Add devres versions of backlight_get
Message-ID: <364de9223eaad01072ab1e1186be55ec62635de9.1507799712.git.meghana.madhyastha@gmail.com>
References: <cover.1507799712.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507799712.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_backlight_get and the corresponding release
function because some drivers use devres versions of functions
for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v10:
-None

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
index 1debb60..fff2d1a 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -618,6 +618,37 @@ struct backlight_device *backlight_get(struct device *dev)
 	return bd;
 }
 EXPORT_SYMBOL(backlight_get);
+
+static void devm_backlight_put(void *data)
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
+	ret = devm_add_action(dev, devm_backlight_put, bd);
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


