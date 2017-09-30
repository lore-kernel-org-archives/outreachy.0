X-GM-THRID: 6470705412124442624
X-Received: by 10.101.65.70 with SMTP id x6mr988654pgp.13.1506762359053;
        Sat, 30 Sep 2017 02:05:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.49.194 with SMTP id x185ls1995926pgx.23.gmail; Sat, 30 Sep
 2017 02:05:58 -0700 (PDT)
X-Received: by 10.101.75.199 with SMTP id p7mr3698pgr.112.1506762358332;
        Sat, 30 Sep 2017 02:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506762358; cv=none;
        d=google.com; s=arc-20160816;
        b=wNklJlAuLLbpy/9/NaBHGH93AbMPQkkfdCthaM4bwN9Jo7ovSWiwUihgblVnGn+tFX
         csO7Q+ocOsQorBySmX9IpR2sipQPTUeUEkiOFJayxl1N710Cgk8ikVf/4K01u1V9FIAw
         NaddTQ2Is3JaBqGMuZXVAxvCc24EQ7kE1k+p3/PhHg1f53TBy1nmVnQgoWkZrLd9Anjg
         K+swHRyJtNLm/wAUSqssYlSus2gPRzGNS0JXDajxhcKZBxSTQk9/UVOqZPyjRP5aIRKM
         LLhyXU0S3FYc0bu76jB00PjTLQjRHd+Bg6+9bC33n0PUEMhho9RkEF5ClUGxHPTXldm3
         LMsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=tbhLnzYMqVo+6Xbty8PzwoFejBrYt76tBoemS7Bjr+Q=;
        b=jPqoPURF1500SAV2vQVGZXwUmJV56CNct0s0KuR7xL3lqkEiVt7xgdO1YtgOAliTgz
         wxJth0gGrFBlyVbPBK4rOlxRPJiL+CypRxqPH2eIYb/REz72ZnvOVUyhsZ87acgxyyHY
         Zpb7YbLLyn7Igyvlr0GuDQfVr44/htQ+6CiCp2gBwGCOjNa/1HfUAYgtYE5xyiPA6W1O
         FHKnSgjLCrhFq7OBEzu5o52o7ZIN3P3aJo4RHZfjm0OSko1Nol3uit3/aQ/bs5TPL7dA
         SYmA7MkwSPn9R6Ajp9lA9U2AnZ1HUjVmhvvVePtxQvpRSpLss061PTpio+lmor8OmTsU
         Tt8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JEE0OnKJ;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id t77si649280pfi.13.2017.09.30.02.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JEE0OnKJ;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id a7so1239168pfj.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 02:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tbhLnzYMqVo+6Xbty8PzwoFejBrYt76tBoemS7Bjr+Q=;
        b=JEE0OnKJZ0u38k4EO6jUHP6mSQUpz3aq7ek/8N5RkOKiONOAjQmf3o53YWtfcLsB1z
         ZJcZRRIA6R4X6DuvTW0F3MR7wXLVlHXeaYplY3GLq92qNx45ghc5wHKQS5vF1K7HY+Pr
         KVPx9BFqZsSg3bdNQRpUWzhvXhQqZ+2NdEz+wDCEhdK+24dN2W7Rc3lBVF3EpeOactkk
         eRry8J1gltZ1APs3shHtzPc1FroSaEfIDpWxkYW2stU9CluvlYuJmD2uAGtcuwRdzog8
         6OygrTD/aI90HYTtVrucsPDiqu1KOHnrenqjVpI8jJNfkOH+HIORz/NZSi876PTzNu3o
         Z4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tbhLnzYMqVo+6Xbty8PzwoFejBrYt76tBoemS7Bjr+Q=;
        b=pxPBgMfa6zgbppHYrIUO9e5h90EHYk2arxKp9gQiM6BjWQxGSU4mDz/bmKJcAgTxOs
         6Q52F1vqpSkknNRn8KY1FLt50uyvOmyU1NPceclJLHL/SZD0AlcOSjFNKAsYIOPghY+h
         oBpUrHCZdAT0niQErR5x0lEvBmCUnpkOpYyYMGWE4daVT7ngIH6ZjDeA4if21uSEd9LG
         tIvDsDpURSbLDrY05PWIYtWgQwucce/zA9RSWO21S0E7rz3oHlwCc+VJFOseANJ88gnl
         iIQ85nyRTosjLCrDamucF5w3tFNGMmQheiEMt3yLpIDSbF4m3or1W11jOd2i9bI6u4eT
         eoXg==
X-Gm-Message-State: AHPjjUhJRoVEnYR/TgRiRbEl6na3XP9u2aVQTg5YtdhYpG0P2ONg+h/B
	4T/wfEwNS+fzHoCWF0GMhIRbpj6w
X-Google-Smtp-Source: AOwi7QB89BuvOgicRTpwSVlCxQwFeKzlnOVSTo8tvy6MAcytET9yXrIKQFmHFwxwLf2BuwxA3W3HhA==
X-Received: by 10.101.81.135 with SMTP id h7mr8104663pgq.48.1506762358089;
        Sat, 30 Sep 2017 02:05:58 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id g68sm9336234pfc.64.2017.09.30.02.05.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:05:57 -0700 (PDT)
Date: Sat, 30 Sep 2017 14:35:50 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 2/4] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <d9f46a0f5e14a0ff4386b64037d6abeed60ebb0c.1506762029.git.meghana.madhyastha@gmail.com>
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506762028.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_drm_of_find_backlight and the corresponding release
function because some drivers such as tinydrm use devres versions
of functions for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v5:
-None

 drivers/gpu/drm/drm_of.c           | 47 ++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/mi0283qt.c |  2 +-
 include/drm/drm_of.h               |  1 +
 3 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index d878d3a..cd80dfc 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -304,3 +304,50 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
 	return backlight;
 }
 EXPORT_SYMBOL(drm_of_find_backlight);
+
+/**
+ * devm_drm_of_find_backlight_release - Release backlight device
+ * @dev: Device
+ *
+ * This is the release function corresponding to the devm_drm_of_find_backlight.
+ * Each devres entry is associated with a release function.
+ */
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
index e8fba5b..b2d6e0c 100644
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
-- 
2.7.4


