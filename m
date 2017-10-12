X-GM-THRID: 6475592721521180672
X-Received: by 10.99.39.65 with SMTP id n62mr274502pgn.121.1507788860041;
        Wed, 11 Oct 2017 23:14:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.163.135 with SMTP id q7ls890148pfl.5.gmail; Wed, 11 Oct
 2017 23:14:19 -0700 (PDT)
X-Received: by 10.101.69.67 with SMTP id x3mr354432pgr.132.1507788859357;
        Wed, 11 Oct 2017 23:14:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507788859; cv=none;
        d=google.com; s=arc-20160816;
        b=Fl/qZwhSWVHTiEdWTxKGUpd56zkZktSL0YvXfeWRqkgmJ12WAev5XgToAdy+rrg+iM
         dNn4F9HhrV66FPMC/03F4ywCmkeY7F3mf91zksLuP11SgQSMNMv4NC351u1w+9mUs8zX
         WACnabsWY1dmcMUpx4n8Klm7uepf624LTnNonwYKirwRmTiPye/spLr/P6v9qWXhlbjp
         hkmakEqDnoPbEmaNPBqlfUJFG3PLi96V+0WuWi4rOw7PuHk7mRKDy5z6Znhs2AzveSEN
         VxPfDSwNYwzXbmP2oE7aAvx1gv/X+OZZ6pJYao6tonu5G2LhLt2hzrALTGL/YxCof1DV
         6xeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=NZXBPbjnlDXUBgyLf9BxY+PyMhqfM6P0r1gIk/9095g=;
        b=0mSd/DjR1fKj3LN6gu0cF/zsrQtizFN8/J47RApvPi7cvupQf3SdAoTQaEYnX1xWB2
         7erUcGrGt6a6vbzJDPOsvPkXRD9IYq4D154iHLDuMo7LNWttMv7iA7OfMbQPEiyd4T5q
         YlUDkr8aLnVroE8vD5nCynDQxZSHuD/gVeZ4eQWdGlhndFcregIaRBaNQLw74kqxwm6y
         DIPPKBVzMg84bPQGIqDIXWn2u6Vbk4IxdZaGBrRFQxwFy5EUbytFhUx3yqy2bh+RlMyy
         paE0XExv1fKTvgX+ptL+2b2nB/cxCeZq4YAxfyi662IZFcO0QpcQIW+VyYvC8sdf+Vx8
         QJAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INUnroDW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e6si81015pgt.2.2017.10.11.23.14.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:14:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INUnroDW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z80so4784233pff.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 23:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NZXBPbjnlDXUBgyLf9BxY+PyMhqfM6P0r1gIk/9095g=;
        b=INUnroDW9VY8qaBsO8Pxp+nq/xXEXtoj1dDE/RGC0nXjTuSKo2R/yI/0IrqIMj2xm1
         vVVj4uaibmhg9Cvf3+q/8UmnpyU9flNoDZQqlsMi0OB6T0QUVVEFHTTmNIVLXkSIGj8x
         kJqzXQE4xTE5R9NCCyKy0zIvSc+ghOntlihZ5391pZcj7immfjmCN47/qChVQi+7yCeO
         6wkK2nlr0Sn/jQD0bCzSQ4JNDV2Z7IcRRw5ElmRUx+tzJWMieTEZEh5hmmzFW+poQtVA
         P9E4k3CPqG7pdRBEsmkoZEZuQg2/M3fW3xWVByZ5e73BdYfG+EGKEoXBE9HFptr3s5h0
         xxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NZXBPbjnlDXUBgyLf9BxY+PyMhqfM6P0r1gIk/9095g=;
        b=ZfksUQPWS6FpgzSYXbsvPt33mw/fVPfpiSWk/R9Yb0gikW7AatQXnt3pfpDy70RzrJ
         C3fRSIPkX+Wh3CsXJqZswq35AnVRRrg2duMRsLDkrUGM4CJfhe6Dpb4ZrMYa0ebL1CKd
         cz2O5dqdYPIqjUv/y3UNmOAWK0aYJ1yBWYbvUuv26I6EXPe/DAVKl6yk2iMWOql4/inx
         xqmNULvK3Znwfs2E6gwgpue+0G51en6VPq9jF5Xd6R32qDZK/24806UpYTosHkbfLsp9
         a8Gz3TiYDXsE4STpykaJnRV6Ak2IVaGDk0/Esw5Pd0yPUu6Kes9tMUOmeI32Y8Zj12W5
         QaEw==
X-Gm-Message-State: AMCzsaUrynbAv1xovRy/wCpFhWF2AWD+FJt8kvhDBmbBe+pl+CoMJ7Js
	82HaS3Lth944gaSpq4BMj+1dzCBA
X-Google-Smtp-Source: AOwi7QDG6x8sPAhDjDWiv15YAZjUuR4XCAxP3cUY/Pc1P09sFzZ0GG/d2Fm5ir9uVx7yL4iHoSrrgA==
X-Received: by 10.99.116.19 with SMTP id p19mr1283142pgc.47.1507788859142;
        Wed, 11 Oct 2017 23:14:19 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id u3sm25567523pfu.5.2017.10.11.23.14.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:14:18 -0700 (PDT)
Date: Thu, 12 Oct 2017 11:44:12 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v9 3/3] drm/tinydrm: Add devres versions of backlight_get
Message-ID: <2d82f4e4ddd47472a1577c4494c3b88fe89fc12f.1507788241.git.meghana.madhyastha@gmail.com>
References: <cover.1507788241.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507788241.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_backlight_get and the corresponding release
function because some drivers use devres versions of functions
for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v9:
 -Change function name from devm_backlight_get_release to
devm_backlight_put because it is more apt name.

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


