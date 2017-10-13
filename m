X-GM-THRID: 6475592721521180672
X-Received: by 10.98.66.134 with SMTP id h6mr135121pfd.49.1507891383900;
        Fri, 13 Oct 2017 03:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.163.135 with SMTP id q7ls1778332pfl.5.gmail; Fri, 13 Oct
 2017 03:43:02 -0700 (PDT)
X-Received: by 10.99.182.79 with SMTP id v15mr149144pgt.163.1507891382873;
        Fri, 13 Oct 2017 03:43:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507891382; cv=none;
        d=google.com; s=arc-20160816;
        b=Lh7B/ZQeJ2UIrec0q1lQNuATqUtTEBml4XnzNWoX3SWS4dJR4pgxxRafew/nu2gWzL
         63eVmJl2sWCv4VEtcMcIGP3TGNg3GS6OTMI25hRnDLjPVmBevvr7FL8Vy0hy1yt3Goct
         DYJG8scOVTufE0J2vlIllYNpB58iu7LE5M8B35lsdTLlYBFLoHwkbsTHk9wn+QSEAAxd
         5w3SnjahbXzS2qPhGEdVIkG3nYoBuj8smr9VHIZHRn+74xMCNB22D+E/JGhgc3IXChTZ
         D+2IjaA4dVG3fXlWZRp5OW5XQV4weMJqsxLhD9RBzGb64ZBAv9IeoXGTVrm8QNvkW1Mi
         yXcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Z5a/ZdmcVBvws48fDkuYU3C4snGjYvtd9xmVYXDHZrM=;
        b=laO9HjyXeavVcRTV60o25KkN4Lh2Xqb1Pc5x7yNINMhOUKUWlULG5CQGnD70YTtUv5
         cLNpLKMvARjbgrZZ9vI/f4j1UQz2ULyiwzkZpV0nFII5nQKvV5KWv5gterUgG4X0QCo7
         ikJ89VzTtVEJkUWd3WTfpVLN0M+UKRs+JSUnleGZy0/6+qdAglaexReouT1K1CK1a9Y+
         pomwIamMHTjzyRkCDd10ujHHRgyjO8ydzSZBsDNNQpQJXsr/c3Q2hEScQG2jvSGrBgGt
         HqRv4hkz8+0lGvgAtpeIHMkKczaGyC0S5IyYuT4LNr5YhrN6kB46zHnw0ztw/Te5eo08
         2Lvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUGsRQIc;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f15si64409plr.1.2017.10.13.03.43.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:43:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUGsRQIc;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b79so9604736pfk.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 03:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z5a/ZdmcVBvws48fDkuYU3C4snGjYvtd9xmVYXDHZrM=;
        b=RUGsRQIcLRXERfoVpxqnr/CCi2fbLJIBkdYpAbXzT5INC/93ACFqZ9ljkEmKI6e0pF
         IqlfmkQBPyW4X0w6+K9SRMs1Oy8NQnVcb9fOVBqveiOrQLeHo9kbK6mZgyHL27KqkZJG
         0yyJhtmIyWvedFS9Btjb/s7ZchtG1csxxyv+Al9Q74mWRECWCCzRPllvqFr4QvawYmDr
         XnaHsO43b6FiVHJhhG76Xzc/TdsDQdamycWc7/HNKbVAijTrrq5MihlLXzU5taeDraBK
         SdK48pJrmKd/gCUh/9GcI8GNL7yPTVMUHJ85pOQPEOwzE8Yz2o9vbq/z6loX2wq0yV6Q
         uC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z5a/ZdmcVBvws48fDkuYU3C4snGjYvtd9xmVYXDHZrM=;
        b=WAd0612ZAELyD8lXGG2dY/fnAf6jnBF/e6e+hp8HLiRXrqdMTG3m7B8749OT/AjSAI
         IH9TDl8uKPveATjsEK1a4/Cb00n5a9eM71Xcs3i4HVpGjFT6fATjaFuGWQmC1sH8MtCI
         KuHYfQ3Z2xXnxaa2E7O5Ne8p0mg4mBeU9U3kb8/K6rRIovQ+2mPppiwrihpGYueYSms/
         8wffG5vcplfCn7kqBQsDPWF0f7nm7W/eeR9z0wTDYqJ9eLPuPCCxAlkZIgK2Bm4rDPUq
         XobjxYzJMNuWc7yFWvp5JUVdEaumo1EqLXqMPggfSy6P1F9EwTdUmti/Hx+IC7Mt8uFF
         Ty/A==
X-Gm-Message-State: AMCzsaVVFUhm8aThowQZoX0Idcy9alsD41yQD2pVB6x6m7jv4isedpev
	V1IMKpVGmcRZg0mt2SlFmpU=
X-Google-Smtp-Source: AOwi7QBW8+i+Z9qoo8rTa2o0ae1krHhg9liPac2J7QgJPRjmH5LTM2+670qBWzQI0oU0lSh5V7DxtA==
X-Received: by 10.159.203.140 with SMTP id ay12mr1032914plb.143.1507891382647;
        Fri, 13 Oct 2017 03:43:02 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id w188sm2144382pfb.67.2017.10.13.03.42.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:43:01 -0700 (PDT)
Date: Fri, 13 Oct 2017 16:12:55 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v13 3/3] drm/tinydrm: Add devres versions of backlight_get
Message-ID: <4b1acbfbddd2a123001e035a62801456891276d5.1507890285.git.meghana.madhyastha@gmail.com>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507890285.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_backlight_get and the corresponding release
function because some drivers use devres versions of functions
for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v13:
 -Add devm_backlight_put to backlight.c

 drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
 drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
 include/linux/backlight.h           |  6 ++++++
 3 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index a932185..e3e7583 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = backlight_get(dev);
+	mipi->backlight = devm_backlight_get(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index c4e94d0..b6c505a 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -617,6 +617,37 @@ struct backlight_device *backlight_get(struct device *dev)
 }
 EXPORT_SYMBOL(backlight_get);
 
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
+
 static void __exit backlight_class_exit(void)
 {
 	class_destroy(backlight_class);
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 987a6d7..8db9ba9 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -214,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
 
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


