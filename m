X-GM-THRID: 6470705412124442624
X-Received: by 10.99.121.141 with SMTP id u135mr594265pgc.156.1506590166378;
        Thu, 28 Sep 2017 02:16:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.96.13 with SMTP id u13ls1025621pgb.31.gmail; Thu, 28 Sep
 2017 02:16:05 -0700 (PDT)
X-Received: by 10.99.38.4 with SMTP id m4mr628646pgm.9.1506590165727;
        Thu, 28 Sep 2017 02:16:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506590165; cv=none;
        d=google.com; s=arc-20160816;
        b=d1F74fEEC9J6nzAwQKM0Z/pMKAyorHFtnz7PRy9sfkR9S3Yp+H9EGjthzUgce0o9OF
         HD4u3xVhJWw+ck1dp0euZIZO6Z/Qe7aTT9otgmibZsrfe/t59IATWVDVyDYfpBbDu9hN
         4tzCc/zvj/sbmdOS27Pb7nEjocqbs6o21kZyA2TD2Cli7NbpbQmRFpqpCQiOUmmXta9d
         rjL4pyfejpg2tGtVQY5z50sdpfNvf3G4qNUAhfqhNFCAQozTA2528QjhLgfGyh6TI6ma
         xcOKz8CKRpNm0IFlsXlBfUxWIkZirZ9lTAg2oiyujWMw7dGHgbJ3PutXfdkgiOyzkIUy
         Y80Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=eZeeAdMUdbHSu9nObcDT1854qktRcCNxp7oBltNnKfM=;
        b=b3qwn/K+Rrw9D3jInKcQNkictBHj4TDJO9H6fiQY8+e0ZN48sjyc6//vzURsiHyKay
         dcuSmZMwORybEAws1912ChqNDeYlLYnNQEu37nI4xEhFhkzdwiN3bgxmX8fQn7RasSqz
         tLFNomZy3A8tlFM5/d2zYSSBcoRIHlo51Uz91nAn5zkWYUXgrKaRr782q0rHrp/zz6hQ
         tSkB8LGHMKcVt4ouK5amiUs1hZ9XU7hnWTDWzLxGFqz/Z5FuU8Ul/2NIkZswesimZ0Hm
         M65CvUfabfRllc6IMzZLDrjh9pwkE+zqRbHi4FGfk6kzuLR04pFUUnROeF7DO68c6Emn
         tX9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GBXUJVt1;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q15si159387pfi.7.2017.09.28.02.16.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:16:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GBXUJVt1;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u18so1323598pgo.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 02:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eZeeAdMUdbHSu9nObcDT1854qktRcCNxp7oBltNnKfM=;
        b=GBXUJVt1pmg8FnTXnDZoYnhJ+HpWIXZPHZSI8CC4kI4GJ2pb4jBfucD39hbU4G+wZr
         xEaiWlbop+BC+vdYJABmOfDVXabDP/oieKL/fFhmI1OfkORBquf9KcPXJNvEqYCoVEdw
         Rsebyxv77DO8yx7CV3Mwo03VwWfVr+PI73m2kXSl7omOoMnS4XY1wkpU+52J/ZPzpAHo
         jMFpT+rrzvVwF3PccJ+8cETF+74d7kQbY0nIaC9nF3Mf7sEJzTIgmDcKCZF2eXyJISzk
         p8SHTQvSigqVNDvA5ev/gBb5T3K4AgIh4QADxpHXhxwDbkxGPKxj/D4AJRGwIebPWjD5
         WqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eZeeAdMUdbHSu9nObcDT1854qktRcCNxp7oBltNnKfM=;
        b=peuAAdW4zHK7L7qhyN/eVXI5mFF2UlDbhgANIhGtgdoPKOhbyRSlkLhUlW4qq+EKUj
         yTe7amfvWp1w7/LvKegJz+F3/bOHMjDfEehfGhSeq0adg7gCuO+9Eg6HkHcIgHv2OGSc
         KJ/WtPCuOeVbed5THBOG4nwEiTpyapuCJRcoTq3jWwoRoS5GX5RCl5Rq0i5AZPfHDbmm
         V61abXa2svmD3OOVQSxTBuqNLbF0OZwl28qh0E/68FiQTiIMK/3T2TmgQ5YDd0LYGlln
         UaXBUIhvOnURibAWEnkHsMTcWT/taOpLz+QxsA9KyeGl93/tlUj/xF82U773F+6MqXm+
         2cBw==
X-Gm-Message-State: AHPjjUha6czEvEET8fzYrKno3A+tKf8aeSAlIj96X4slkGOrRXF0yurD
	AmnBiAjIjNXhEh6LOLKf5ps=
X-Google-Smtp-Source: AOwi7QD+2DFYwXc3R+M62TAIg/uPsfH/bJdq4xCxOokbtgaJribPsee0apagOCbtfoy8LLyqrJjjGQ==
X-Received: by 10.99.99.197 with SMTP id x188mr3748173pgb.49.1506590165486;
        Thu, 28 Sep 2017 02:16:05 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id a29sm1807978pgn.75.2017.09.28.02.16.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:16:04 -0700 (PDT)
Date: Thu, 28 Sep 2017 14:45:58 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 2/2] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <bb974658fdf1945e13120b58f77755f8184a7212.1506589807.git.meghana.madhyastha@gmail.com>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506589807.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_drm_of_find_backlight and the corresponding release
function because some drivers such as tinydrm use devres versions
of functions for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v3:
-None

 drivers/gpu/drm/drm_of.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_of.h     |  2 ++
 2 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index d878d3a..238e8e5 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -304,3 +304,51 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
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
+EXPORT_SYMBOL(devm_drm_of_find_backlight_release);
+
+/**
+ * devm_drm_of_find_backlight - Find backlight device in device-tree
+ * devres version of the function
+ * @dev: Device
+ *
+ * This is the devres version of the function drm_of_find_backlight.
+ * Some drivers such as tinydrm use devres versions of functions for
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
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index e8fba5b..071fb3b 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -30,7 +30,9 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 				struct drm_panel **panel,
 				struct drm_bridge **bridge);
 struct backlight_device *drm_of_find_backlight(struct device *dev);
+struct backlight_device *devm_drm_of_find_backlight(struct device *dev);
 #else
+static void devm_drm_of_find_backlight_release(void *data);
 static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
 						  struct device_node *port)
 {
-- 
2.7.4


