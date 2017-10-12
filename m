X-GM-THRID: 6475592721521180672
X-Received: by 10.99.186.79 with SMTP id l15mr370618pgu.177.1507801256540;
        Thu, 12 Oct 2017 02:40:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.241.72 with SMTP id u8ls1060414plm.6.gmail; Thu, 12 Oct
 2017 02:40:55 -0700 (PDT)
X-Received: by 10.99.38.130 with SMTP id m124mr426130pgm.64.1507801255922;
        Thu, 12 Oct 2017 02:40:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507801255; cv=none;
        d=google.com; s=arc-20160816;
        b=fpWbP4tgTuHAtzmnEns/gEuWYgzkI7GXf7+XmaG/SwgMmu1+Ipem4FpV1QJEV5X3sq
         2kz0P9/6BSofR3KHR4quSIhaTGZdpCN3+ncXYz8atftnicJAAdYdqEuRxRmCB3amXVgz
         m+tL8nUAN1CWWmgIU404Pxq2GK+8z6YlDAdm1tdzi/gAouEoXBo1apeqIeLuRqq4bmDw
         tC8G3wtspdGz7Zq+138m4mq7L0xe8DqWzaa0C5tyn+hU8AmaKgeYYRoMhbynlyR4Smik
         kYDFhX60/HC38YDtJw5pMy1moHnynStUbx9aFjdcRO5FGx5JjemfEj5+JSTm9+vWC7J7
         elSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=HK43WHcwim8l/1jds9lcamr/OrO8DZp8qgfE3dWIRWc=;
        b=EqNHZFBttmsi0pFQOOV3fmUtMtJVUIQq/i7/eTMpJdQ3o1A6GL9bvxCcpCrqhXxK3G
         3KwKbzSGmOk7ZQDBlCkqFz0woOyMCv7fBReE7E7Ev1s/pEZDxhTfuHNxEkmT23bPw7xO
         zuPHIUL811wk2re9Fdhfv5NbpRIivCUSJOdoxgQ/m0K3PAuaautGnuIbED9dpILnS3Up
         UwczqOVh/U9r6+GgcPPKhwwJG+TDzgRVnjHYZarGE3WayMJy4d6zuNGxo2Ej/UjvbMX9
         61buCndAraadzxDARHSuqjLK1Y34qX1yGAVYQ/eZvOvwvQhdkKt4Gum9gbWEk63qw4c8
         GXJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJMMFqYh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id y12si1872685pfe.23.2017.10.12.02.40.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:40:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJMMFqYh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id l188so4070401pfc.6
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HK43WHcwim8l/1jds9lcamr/OrO8DZp8qgfE3dWIRWc=;
        b=KJMMFqYhqLXyb9/x0NIdZycwxzZMBPy/X7RRJ4ERWFVcx0gE4KFgnXa2boQvgOrUdr
         4SShl1Am+R+0zNofRc+lT8Dcp+QUSB3/9A1TQlTIUiSn0pVL352JyBMCB5bCgjXfCK45
         4mOAv6UprsxsF+cxIhXBBhZGF/yg/2gHQyydP13cv48ChOrcPJsxiqSp0y4KCy6o9j7C
         Wo1uNGlohCTxLMANsm1CaYUzMtg80a9kcvkw5nxVPW3EGFUPNO2IvwW3dZ8sfDj8guZp
         9Rr0fAglWcl958E3/h0unFbEiryaTuibD4us9GNUgxuAmijz4v11a0L6dOJ9Ea1vOT1K
         00og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HK43WHcwim8l/1jds9lcamr/OrO8DZp8qgfE3dWIRWc=;
        b=KHVK7kGtKF6rIyJlW8aHeu67G1evqYIJaiD3mH8Kfnw/X4I+X12u4q/rRWv82w6q47
         3a6c7GlBZsXKH8RRh4tjYR3xo1PVoD7oFBKgbHrJ4y5TmnVKOFPq0ZqkGLCdJgx0sMjd
         nE9mtBpFsUjGEPThUqrvBnozsk/aBkYiluCLL7++L2wB21M44e1IlssmLLiAsthhKdS0
         Po6Ma3+zsX1GBhEjtH8aCEi0JhdQ2hekDcqw+xFjUVYyQQQKkuu3JX5UIwp/WAahzfmF
         xyVnqVH5td++Sa1XEO/J64+SKIJqF2kjX+KrwThksAOeF1yqHSDNj1mTu7a1pGFlnA1o
         wTzg==
X-Gm-Message-State: AMCzsaUkCYSHB/yw7IRADtMUItwYpyHoeJ7uDhCP09vi8cHuC9URADRp
	p4Pe1CTi4JWm3xAzFNUJM5Y=
X-Google-Smtp-Source: AOwi7QAe26fhVFWchrwsBF35frBVYeWYdj23JeC3Knw74bDojx1daDUtmgBvHbKnWIYJwb9Bv0Atng==
X-Received: by 10.98.20.80 with SMTP id 77mr1690378pfu.307.1507801255693;
        Thu, 12 Oct 2017 02:40:55 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id v15sm27878207pfa.50.2017.10.12.02.40.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:40:54 -0700 (PDT)
Date: Thu, 12 Oct 2017 15:10:47 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v11 3/3] drm/tinydrm: Add devres versions of backlight_get
Message-ID: <a575cec8e84f2781950aefdf562b930ce45cb198.1507800970.git.meghana.madhyastha@gmail.com>
References: <cover.1507800970.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507800970.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_backlight_get and the corresponding release
function because some drivers use devres versions of functions
for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v11:
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


