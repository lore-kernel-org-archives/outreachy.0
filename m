X-GM-THRID: 6470705412124442624
X-Received: by 10.98.196.204 with SMTP id h73mr706779pfk.35.1506699114768;
        Fri, 29 Sep 2017 08:31:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.74.206 with SMTP id c75ls2038156pfj.12.gmail; Fri, 29 Sep
 2017 08:31:54 -0700 (PDT)
X-Received: by 10.98.72.157 with SMTP id q29mr695314pfi.27.1506699114119;
        Fri, 29 Sep 2017 08:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506699114; cv=none;
        d=google.com; s=arc-20160816;
        b=blb5vKmYU0P4zNg302Brj+3+k1Amp+1WAKCQrzVU3G1ITip52eqCbCwpNw/kaaDzSr
         thQOBuDlMJQ8+ulwuq8VlE/pR1DU30zLQkpL/s8h1ZR1xsVRVOz2BSPlKU76cfm9ti/t
         44JAOie87YLMidxor8f1ZikOecGVZukdrwaQG+4dofhqrzHaBtfZYMPUeWhDx5eGSQDn
         35lLFCxZweXarrb4lEcZIMPEzQkaSuvnCllS8KsOtttX10RN9EYIECt+O1mA5Y6mGJN8
         Cu0EP0yjWSH/vP85J8fiFafA3CP2FCqBMW3UCHRO81wiN3YavrW4Tfgs8RMt8clCclq8
         7veg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=tt5ML43vC7uOwpRfGCQSUp+dOmFLKP9MuvWjrHB3O1Q=;
        b=VLiIokUCpflLIfqP1L8yiJPOIVqNIiCf6zEN54YyTrJPCtIoJOMfgiSZYgLK7sIkeF
         MMrUkNmYZHbYtz7lmKyRcdY4Q055lGS9sQsaTXJBeB89H2iMY6gP3fmqfJudAZtIiiU1
         6bgShGJJHz5VIjNMirVPnHSgn9cabDAXkU8/YbUR9Yn4+LepDrkXoA9b6D2b1BCXMeBc
         uHC0uMqodJdpbawuCtzhF/+pDUWgHtg1CaM5oFqn/IWveLmgK/rEUYhHik3NMnTcbtnK
         3E9QqW5M/UHUzF/EshnDo1dEGKdTTIf3FMvYCGt0CPeI7j65bOXXnDcZb2Xu5nhyh7UX
         yyfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W7IgskKk;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id x71si583616pfe.0.2017.09.29.08.31.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W7IgskKk;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so5956pfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 08:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tt5ML43vC7uOwpRfGCQSUp+dOmFLKP9MuvWjrHB3O1Q=;
        b=W7IgskKkt6OCB4c1T1xk7Bpty5PnhuaUDxCbbSTpsiUTuVzG5TZBWFnQpxeBnvtRz0
         ROK+qyWfntiAxNZlCA8pCKCW7aiDRAxxmQ0ABmiP5eXP2yKTP1e+Lu1z9tF6pZcqmffS
         OXMh0nuVkmx1gHA0BWPCynZX5LmD0i3Ihp/1COhdfgR6MJsrnZ7ldxHrRn4WiVcqgGYE
         LFj762S6LPYoFx0AMtRTqvTv9540VcNhgC0BEkRVHj0yN4DpibBey+3AAyjb8qNJ73n0
         SGWfhpFBzXqPJwfa1H+HNTMHhN1AMLT2ryB3Qf7lcTZGuoDQeCL7auMkLSQUWJAicO0Z
         9iuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tt5ML43vC7uOwpRfGCQSUp+dOmFLKP9MuvWjrHB3O1Q=;
        b=UCLdCbNBGKA6Lso83BzxwKGBc1XEmTUdw/8tpsVXataC/AQtlDZPbthuh0nZIKsqMF
         4SXJBmGwRJV61i0qNy9PEhCAqtDqqmKbwz4K0PUvTArmbAs+N/o2A1AIFL0e7lGwZsfO
         FI786tx2Kc6jUoNVob7esq4C+GnvyjoK7yO9gTEhKonZrV0gmieLyZHp2Rm6whLTiEpM
         PrUAK/ntgKMAGjxMpZEKTY16bNK6S11E80RqYLt+OGAGZzlbOwAQPJ4t/CK1BZaYKD0v
         7FtkLVfmcCH0hcEI35glq0ujsZSnX+U8I7+VrFI4GAbywUs2GqWKqcNsfhXUxOMnnLFp
         YufQ==
X-Gm-Message-State: AHPjjUiJdMbo+Q6z0z3yxBpWEBK5fvJkN//uvVy771k0nXETAlFUsGyA
	pf+WVQpvNGCaRvFpIV9HqXw=
X-Google-Smtp-Source: AOwi7QDsHnSQ+vtiBtC+dpf+vmZUiKgQeTyGFWBYrqnLfUAsNqn3vSPqRqMtOTzVUqHllNBIjUoEHQ==
X-Received: by 10.98.144.89 with SMTP id a86mr7876220pfe.64.1506699113715;
        Fri, 29 Sep 2017 08:31:53 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id k12sm7860593pgt.3.2017.09.29.08.31.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:31:52 -0700 (PDT)
Date: Fri, 29 Sep 2017 21:01:46 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 2/3] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <d9f46a0f5e14a0ff4386b64037d6abeed60ebb0c.1506698677.git.meghana.madhyastha@gmail.com>
References: <cover.1506698677.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506698677.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_drm_of_find_backlight and the corresponding release
function because some drivers such as tinydrm use devres versions
of functions for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v4:
-Made the release function an internal static function.
-Removed specific reference to tinydrm in the function comments.

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


