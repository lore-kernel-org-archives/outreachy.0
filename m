X-GM-THRID: 6475592721521180672
X-Received: by 10.55.200.18 with SMTP id c18mr2288824qkj.11.1507823769555;
        Thu, 12 Oct 2017 08:56:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.98.11 with SMTP id w11ls2092306qkb.1.gmail; Thu, 12 Oct
 2017 08:56:09 -0700 (PDT)
X-Received: by 10.55.73.15 with SMTP id w15mr2139371qka.25.1507823769050;
        Thu, 12 Oct 2017 08:56:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507823768; cv=none;
        d=google.com; s=arc-20160816;
        b=KpREZWwvA1KYiFc5QJjOeoaQNieWBxUiO5CdEhRjJFDy964mfuzZp3gl/UJIuNHSA+
         HP8SaMSlcljySVYaIUdyiD2few5AkNYrCrg3kmOrthjbP0LqhlF3ofXJsV3X+JKm6KU7
         oPc5mETaNfDoopoFeH/6EzSy8OZKMTgTCV/lON7fJ849jMG/DeTa00AdToayHBCdQJMe
         agPRJr5cy3wji4eIgk0lMmcljtPBxRm36MU1hq6hm0aKseFMHnrjAt7Pj3Lut1KfkpsF
         qMwN+JB4XxyRuvo/4h5Pp8Kml+6lgf05JF7oevS+5bPtungmWa9dwWG0g/eGJf4JUZQ6
         JQUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=7DbSyDgbnkWD0/rtf2VJU1S2J5TR3u4UeZsvURk0t80=;
        b=trWi6X2jjo2i4uqx4L1/U+skycARkKDQhV1s6f+bTPpZ7w5HXw6S1QVWpnqlkpKFOM
         wezayoMDu2msvTyXrUqWE+EcX/bZEXi8wXB5dfLbhKH2FvkCWNr89S9q0IIDxo8E4TVZ
         ECEDJ0I5UyAZ+2wX28gQ1LVgPh3hsk+cKyt8lM0l7JbqikAFZ99f5SPJtkplFKRAqhr3
         hpw/durZk/PXelC2BxeNVhKnA1D91/YaFj0Lske+l9q39mXfTE8m3wOTn0F74Q5kyiL3
         2wyir+Zkph0ZuAch2dI3KAb/GMnpapuLSp3sHL2OtRazPfm5Dkx501k8+qgzSkRho7u4
         CoQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJV0Eosj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id a13si225943qtd.3.2017.10.12.08.56.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJV0Eosj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id b85so5411264pfj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 08:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7DbSyDgbnkWD0/rtf2VJU1S2J5TR3u4UeZsvURk0t80=;
        b=YJV0EosjdEMfygMxe8mqLP84wCU/3Adjokt0iPpVzVtNa9e0cfyxLrUK+D0gKQTRQa
         Lj5b9Rv0WC4TwDL17+fcoWJgJRkKgqSUmwUDuXQt/DOP1bGbxUuP9+n/Az7vQbShLgqr
         uitsL0ReUdPbUdmSmQJNDUvRivIQkr+/dQHDz9J4yZKWpO9wuz3B8kkQ/yvcAaNmf0F/
         HM/YInY6An9dEpGNqnxLXk+r6p6qi4zFtSTm9Rxr7EeP8U3BXLbC7OKxpqfuS5QZxS3U
         9RAfY+NJiEORbeoOwSSo5lO6p+HQzQZvnAaeYFuIDGi23j1c6akMT+/7SWDMGN6AKTb2
         W2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7DbSyDgbnkWD0/rtf2VJU1S2J5TR3u4UeZsvURk0t80=;
        b=LaYycXxYaDhmf3d+kF8B/5Hk363ZkOsk2qUi9bxbriPoKjg/+jqvmXYYN6IGfT+lB2
         1Y/g751zJkqXV4jWfN33OWUIdQnbnNJ2FjJpauHDyLV2JSqLgjcWCXyX15VKO7SmJe7i
         ojLFzDZWUzt9TPaqMuy3ptTve0HG/uqBRvOiqsuFB/pSZzTGuCB9OsKTUDe86WjZmOuV
         zTljzZ0Am0R51PcipM7KklEfTes6uycji0MetnwRXXifRR3F29YU3rH1IFZtV4Swt6s8
         Hg/ADfYB68aH2P9qW4Z7/j1yZmQMKiK1P3o+MptXm98wSerjdXDRHZ+D8m/LjM6UxHrc
         haGQ==
X-Gm-Message-State: AMCzsaU7BIQIWfcstaea1TTUCNIEnfHC/jMd4G7rBRxbGI4vCTsGU7AZ
	a3WzbLVxqJt2Pd16Npc9QXA=
X-Google-Smtp-Source: AOwi7QBec+Oko4tVMts1ibYGYXZjkf/8eDHrses4NM0WX614cgaRSifWgGDwhilDmfqgoT5HsE4QWg==
X-Received: by 10.159.206.137 with SMTP id bg9mr580549plb.95.1507823768434;
        Thu, 12 Oct 2017 08:56:08 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id d74sm12618584pfe.167.2017.10.12.08.56.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:56:07 -0700 (PDT)
Date: Thu, 12 Oct 2017 21:26:00 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v12 3/3] drm/tinydrm: Add devres versions of backlight_get
Message-ID: <bde34c13ea289cd2f0c5c0011c1b10db9c6a8c18.1507823238.git.meghana.madhyastha@gmail.com>
References: <cover.1507823238.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507823238.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_backlight_get and the corresponding release
function because some drivers use devres versions of functions
for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v12:
 -Move backlight_put() to the patch 2/3 from patch 3/3.

 drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
 drivers/video/backlight/backlight.c | 25 +++++++++++++++++++++++++
 include/linux/backlight.h           | 16 ++++++++++++++++
 3 files changed, 42 insertions(+), 1 deletion(-)

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
index f3e95b3..3663f26 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -623,6 +623,31 @@ static inline void backlight_put(struct backlight_device *bd)
 		put_device(&bd->dev);
 }
 
+/**
+ ** devm_backlight_get - Resource-managed backlight_get()
+ ** @dev: Device
+ **
+ ** Device managed version of backlight_get(). The reference on the backlight
+ ** device is automatically dropped on driver detach.
+ **/
+struct backlight_device *devm_backlight_get(struct device *dev)
+{
+	struct backlight_device *bd;
+	int ret;
+
+	bd = backlight_get(dev);
+	if (!bd)
+		return NULL;
+	ret = devm_add_action(dev, devm_backlight_get_release, bd);
+	if (ret) {
+		backlight_put(bd);
+		return ERR_PTR(ret);
+	}
+
+	return bd;
+}
+EXPORT_SYMBOL(devm_backlight_get);
+
 static void __exit backlight_class_exit(void)
 {
 	class_destroy(backlight_class);
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


