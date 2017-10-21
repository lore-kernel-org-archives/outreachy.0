X-GM-THRID: 6475592721521180672
X-Received: by 10.101.74.1 with SMTP id s1mr1839567pgq.143.1508587152721;
        Sat, 21 Oct 2017 04:59:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.236.65 with SMTP id h1ls2477984pln.13.gmail; Sat, 21 Oct
 2017 04:59:11 -0700 (PDT)
X-Received: by 10.98.36.70 with SMTP id r67mr1843617pfj.60.1508587151463;
        Sat, 21 Oct 2017 04:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508587151; cv=none;
        d=google.com; s=arc-20160816;
        b=jAn/Nwq3A9W4DscWEB33OGzQVOpPzZoerYwXj1bOh8f60fc63KX3vW+FV9x7cBHspx
         Z0exraluw7qRTtP8obDGfo5n0J0MzaRsNccqVd1ogrwxNgGkxnr92ZkWpNEfwnlqOzL2
         S1Pv3JyFsMSppef+j7C5loYxdSxGE2z/NxKUlmkZu+N5qFf47uF6FaHyWXB3jDNVScU2
         ZEbTbffdqmwuXaviKx5RXrYWLvDrgmkmtZrRCE4xebhegyWP2yQTtedRp7MgPPTxhioF
         E0CrIP1eRymGj01JpH1qNUSmTBnX/VYcsuFv7kEoccj6yc4KtlDMkc3dcuifY1NRNkMF
         5e6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=h+Tg+X3qDiHFgKmlv38OaJXtDSB3nGvqHqqLXohFXFg=;
        b=pP838cBv09IFHAln8wxDG+T8cxO75ZHXAwWclT0REDmuff0bx0KGhS113XDOlYNm9r
         IEiH+g1KYt/6FcvI1T7pUwj6hpYr9wgg3+nn0OrA3BmUKItOd6Vf+gscSRoImERpTqac
         BGQB+kokjYZXvKsMEX+EmKLUU8vsck1MrBcy3qWzUrE7h2E01d6Du/JS2r9V/hKTtjlg
         24tKYvsS+3gOoGuJmM7DFajQbiceR7sglaIRZz/muK2cnfZitVQgyztLdYgj08alYbO1
         vazjmkthaJKZdxbS4vDQhd0OfNaREmhN+U8B4cnsAAo2xN4n0Je4TauHMkjm9yCrrIbU
         nimA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JtZC4ppE;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f20si233108plj.0.2017.10.21.04.59.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JtZC4ppE;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p87so13919148pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Oct 2017 04:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=h+Tg+X3qDiHFgKmlv38OaJXtDSB3nGvqHqqLXohFXFg=;
        b=JtZC4ppEhiIr7FXH4MEeLGszRtgCG6IMqk2rI6PZSW9PXv7zqbE+lB0ayQXvfkzk9H
         2MoupcBPxr94DDU181BQQ8j4Jn0eQ4oyf2q/Z9fo/RnpjzE0f6PumQyCjaSjBtFR0S51
         REWWA/AUR7LIYJujPRTmtPYAi4bhpeEhrEV0sbfrcRwpyn9p3YvjrHHEhU8eao8j8WYT
         fuGcbMv9lafEklT5sHf+az2eRTNDKRZW27EfyLf5uOUBseTtZ4uJXwzAtwaXjYkcySlI
         fN7zIlhreaZiQ2pToAAJjlbNi9CY7Yui27SqysmtCTacnH3K0jKMUuxsV77CrWYfgaQl
         Jhmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=h+Tg+X3qDiHFgKmlv38OaJXtDSB3nGvqHqqLXohFXFg=;
        b=FuQPnvEa7UHXClynkO3UR89s6ibP18oirSlpYzNLL3gptOF55ZY3jjxG8IZR1HxlNl
         xzJ128ullcdn8PhiYSHHi8QiUaw6UPjXeXx53GcSgBj2kM7yceZrP2gVUxFHg0czx4oM
         bKjpd1hp1UCZcRWANzUBDX+p7onzSfj17CoPm5+2FcBfpAoAGe0usvBdbkhhwgixoP/g
         nLCmOxk220n/tnAXF4L8EOLQv/pC8Nvwu2uhqPhF2Oo1heRXQvbuRXTLE6Oulg+cnbxc
         Jat8Iqw+5RuBzVlw0VW3oqEJ0gnCKcs2Gh9pQYFxo442ZIW5RQmd78sMOG/48mQ57Wvv
         tu6A==
X-Gm-Message-State: AMCzsaViKIfhhs5g+HGFxs4SPXUVOfDInNkM5pouIqrzys5vWnFgXO6H
	N9lY6+M/cQgMRjgisXX331c=
X-Google-Smtp-Source: ABhQp+S3iTaooGQiXvjEZeaVLWQVPkTZ+VBJlKbzD5XKELHV9t/oF20TSyX97mGSFGTrSoC1X77n6w==
X-Received: by 10.98.65.156 with SMTP id g28mr7808010pfd.11.1508587151204;
        Sat, 21 Oct 2017 04:59:11 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.166.123])
        by smtp.gmail.com with ESMTPSA id c9sm5639575pfj.76.2017.10.21.04.59.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:59:10 -0700 (PDT)
Date: Sat, 21 Oct 2017 17:29:04 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v14 3/3] drm/tinydrm: Add devres versions of of_find_backlight
Message-ID: <7fbf6029ce807e5517056682c9f18207997a08d6.1508586429.git.meghana.madhyastha@gmail.com>
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508586429.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_of_find_backlight and the corresponding release
function because some drivers use devres versions of functions
for acquiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v14:
 - s/devm_backlight_get/devm_of_find_backlight/
 - change commit message from requiring to acquiring

 drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
 drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
 include/linux/backlight.h           |  7 +++++++
 3 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 53ab5a0..568834a 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = of_find_backlight(dev);
+	mipi->backlight = devm_of_find_backlight(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index 76d46c3..4bb7bf3 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -617,6 +617,37 @@ struct backlight_device *of_find_backlight(struct device *dev)
 }
 EXPORT_SYMBOL(of_find_backlight);
 
+static void devm_backlight_put(void *data)
+{
+	backlight_put(data);
+}
+
+/**
+ * devm_of_find_backlight - Resource-managed of_find_backlight()
+ * @dev: Device
+ *
+ * Device managed version of of_find_backlight(). The reference on the backlight
+ * device is automatically dropped on driver detach.
+ */
+struct backlight_device *devm_of_find_backlight(struct device *dev)
+{
+	struct backlight_device *bd;
+	int ret;
+
+	bd = of_find_backlight(dev);
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
+EXPORT_SYMBOL(devm_of_find_backlight);
+
 static void __exit backlight_class_exit(void)
 {
 	class_destroy(backlight_class);
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index f98b684..a52bda0 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -214,11 +214,18 @@ of_find_backlight_by_node(struct device_node *node)
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 struct backlight_device *of_find_backlight(struct device *dev);
+struct backlight_device *devm_of_find_backlight(struct device *dev);
 #else
 static inline struct backlight_device *of_find_backlight(struct device *dev)
 {
 	return NULL;
 }
+
+static inline struct backlight_device *
+devm_of_find_backlight(struct device *dev)
+{
+	return NULL;
+}
 #endif
 
 #endif
-- 
2.7.4


