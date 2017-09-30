X-GM-THRID: 6470705412124442624
X-Received: by 10.99.181.19 with SMTP id y19mr971817pge.47.1506791671600;
        Sat, 30 Sep 2017 10:14:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.209.206 with SMTP id y72ls2929876plh.7.gmail; Sat, 30 Sep
 2017 10:14:30 -0700 (PDT)
X-Received: by 10.101.72.12 with SMTP id h12mr996650pgs.145.1506791670562;
        Sat, 30 Sep 2017 10:14:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506791670; cv=none;
        d=google.com; s=arc-20160816;
        b=AGWtklEzMtt3/jX23dFxi2shYNV2Dbw0ShlGOAsD5FvclwCelfoQ58Vc0bkH2C3DEo
         ub/YWT1NlF9EhggyYN92Ie0jVfsgHHcMpXlva5EFPiQ4jcglf9Rxut4aZhHyrk5aHGk1
         Ro4XiBEC2Q9Fn0mN+P/BUQot6SMSMb70JxWBrQ37jA3gkWgpw6J7pxnVR/LKp5eK933m
         /OdErGiaN6bMBuJe4x9zTjOsYa76aPT6K1l2fh2NbxQT9VilObDhFjmt7k65Pn4jg3E3
         B6ZBeN6YCmjP0gUisW6y4nn6WX+86FWqfGsS0MMOiUKi3o6LqaeV/+YbqIy9Xub15gP4
         0akA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=HhSkohEhEaOEoV5+4VX6fNP7yTfZy1fldLw0OXxIs0w=;
        b=i9nojbkvnswYbnced+X8sJwmw3HexyO5Z6LX75QN5F/tjciWuX5jgi1fciSSRs06n8
         WUaI+6L9OgxIbvraiPXRKRcYDfWdgP6CPZE0vQ/oYh7ZfREjwt3yykCCbnSRULDDOW9j
         HKmHCpWakQEC7UxTuib9K8lJu7Y3x+JbtqiQ/PKMvCIYgtg+dYLZrChfIC9prrZhm7vz
         lXkGUQvZyiTftss6Ep6oF7X8rDpCUFD63FJPY2783iK2UwfvKbeebqMcF4dB0CWebzLC
         aKVcObh+/Z9fGi2+t4VgpN9h9kUHOc7Iyl32T6kbGEmzFq0nv9kMNhBRdKw3vgaKD4SF
         BQ6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iLNasOKX;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id p73si616179pfk.27.2017.09.30.10.14.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 10:14:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iLNasOKX;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id y192so1813251pgd.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 10:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HhSkohEhEaOEoV5+4VX6fNP7yTfZy1fldLw0OXxIs0w=;
        b=iLNasOKXBZfcX0rgl+v9nUJBouYo+SqpXNhE83kAwqppEO1VPyv6Cu0j26xkQeiTO7
         nkJtX89MNmaDKnSYbveelrBrs+BClTH8XdA4xzVUxjJ6ugLxRampH6BwkiTorDtDxKn+
         P9RcSrWUYYG4XDeY1QnYZ8Ze261xFrE7/JYf1aYDfIL2tM8Xl0bIzJLjoJVz0dexs+zQ
         OTcutAtF7e5ad4UdD2l4AY/b9QjdpGslUGpQm+bFh7c6/yN0pm7RF+mB4LmFy9ve4fiM
         +PdeJ26j2RGg7eS50sjD6MhejcyI/tRv5MriEkfzz76Vi+W4i/iYjdmoChB5wE543WB5
         VplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HhSkohEhEaOEoV5+4VX6fNP7yTfZy1fldLw0OXxIs0w=;
        b=FRXhCzxKPqeoFope/G+0s3c4FvzQAshVFVZUWoOVo9bAqQBsWBPzkMOPjb7HaDVE3W
         TLsFEULzrLvCgAxg7yMDzSt3ZSDPntiUl3Yi2+pd4b0Y8TNIcUQLt50UJJUc9jxBCYDb
         v08OT4mq5k8JaDzTE2UAOpiFmPIwypx9Q9aywT2tj1P4P7OFv+r71MWPQBQhqMJN5Dwc
         edpnr9PdBK9Y/nYuJRbXQ8/ljRp5dwFr4UTydvD4w49leJwOIKy8CPesP5mTxODBk+Az
         1pf3ZVRvYNfp+Vp2OJNHKjgpHRGZPj5Qf1xPHQblMlF3fFZFiH9ce1uuoq29Ktm8VH5K
         irww==
X-Gm-Message-State: AHPjjUjUD6D4lP/BX79sGebWMSelITkKMdu9RS6+NfqGp41TDVwlToJg
	1vOMlZ+iQEdc+Aoriv8d/AB55J1v
X-Google-Smtp-Source: AOwi7QDqklL8hIEEP/BUksdrani6x+f/nqvWZkw8Uyr6xEWjHLCZ25cuj4Bre4m1m1y2x2zBX2bjvA==
X-Received: by 10.99.49.129 with SMTP id x123mr4175325pgx.123.1506791670315;
        Sat, 30 Sep 2017 10:14:30 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id f9sm10972742pfe.150.2017.09.30.10.14.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 10:14:29 -0700 (PDT)
Date: Sat, 30 Sep 2017 22:44:18 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v6 2/2] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <fe521b7135f8e16b7779d5573f8b686587d81903.1506786158.git.meghana.madhyastha@gmail.com>
References: <cover.1506786158.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506786158.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_drm_of_find_backlight and the corresponding release
function because some drivers such as tinydrm use devres versions
of functions for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v6:
- Remove docstring for devm_drm_of_backlight_release because it is
 and internal function.

 drivers/gpu/drm/drm_of.c           | 40 ++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/mi0283qt.c |  2 +-
 include/linux/backlight.h          |  7 +++++++
 3 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index d878d3a..6fb3fe5 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -304,3 +304,43 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
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
index 682b4db..6724e5e 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = drm_of_find_backlight(dev);
+	mipi->backlight = devm_drm_of_find_backlight(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 47a095e..f601f15 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -175,12 +175,19 @@ of_find_backlight_by_node(struct device_node *node)
 #if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 struct backlight_device *
 drm_of_find_backlight(struct device *dev);
+devm_drm_of_find_backlight(struct device *dev);
 #else
 static inline struct backlight_device *
 drm_of_find_backlight(struct device *dev)
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
 
 #endif
-- 
2.7.4


