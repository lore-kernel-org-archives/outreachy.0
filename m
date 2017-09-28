X-GM-THRID: 6470708862295998464
X-Received: by 10.84.233.69 with SMTP id k5mr389724plt.8.1506579309607;
        Wed, 27 Sep 2017 23:15:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.130.66 with SMTP id 60ls1025922plc.14.gmail; Wed, 27 Sep
 2017 23:15:08 -0700 (PDT)
X-Received: by 10.98.204.139 with SMTP id j11mr396571pfk.11.1506579308625;
        Wed, 27 Sep 2017 23:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506579308; cv=none;
        d=google.com; s=arc-20160816;
        b=RipYpp1vTsUNDS+WHoHoAV41d3AKZlrsfvHpH510M7kleD4DTECaf4N7hNJ28+PLdC
         fDfQBIyT1qSWZCT6/aaOcpjiQLO6nU1d5IKvQZFV75IWE7oE7DMzL1weCv6RihbfRtTW
         VYGNJnifDt/LXZXanJ0MHOg39M3qsYipVQHEURkylyCr2XTdgF5dAjehGmwLmvKkQFY5
         p9farvtlxwH10Spk358uifTc2ES8PkLYBhZV43Iq18C2T/8qaPACkEF37nZsFwXgcMqQ
         pSTKsEltaWDMc11H67T6L3hAh88HpmdWLJ2d0ZkEs+Wcqpyt6M1xzsa66itQjdcdBj8h
         DuJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:reply-to:message-id
         :subject:to:from:date:dkim-signature:arc-authentication-results;
        bh=mTGI+xn7XFHQbXZd4jINmdDnuoboNdl6DAaPjoGTpxk=;
        b=M93Uyb2QeY3SZeoujG+aIJutCn/yfnuwxiSkQMoO5XJ4iw3qnQuj+4zs7M2dkToOv/
         Tya0ojOc5C0IYkIgwBTfiDEgvImPwKppHKyX2OuokEQdcnvExp6XF5r6+MOJtEgl8R6/
         Xn1VA4g5NacnNLGuhmbgjcP10yoNhKvs4/AKCQVwDOgrKChFFkUpUiVw/UaXP60GuDXb
         D4fYAXAVJyV6W7Kt+UfV/bYE7ApfQJ36El0RZ/kgm9GroBchFXVJq/BmllJHVVYSHpqX
         ye1kxOBDbXBNIoTCzGgBsK9d3b8ulGjfgEiyZ6wvSSLRtKwP/65IZ9j24SP5cQCyNEzW
         H1gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zwmh5XEK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h3si112381pfk.9.2017.09.27.23.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:15:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zwmh5XEK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u18so809956pgo.1
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 23:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:reply-to:mime-version
         :content-disposition:user-agent;
        bh=mTGI+xn7XFHQbXZd4jINmdDnuoboNdl6DAaPjoGTpxk=;
        b=Zwmh5XEKUs2DrT8D9gJ+QzuoDcsnTDX+NiTfVEerqWKx+KaedYZeVdjt/SnhSSK+IU
         bawH2f9l+8tDNK9NaWxHJWV9s6DQ9NWCP/SHdJWCb8arWUVftDIIY3gFkOc05PtlBB10
         Ch75x7L8QBLfnTaBZhLim+8w3I0p6Kfv4hAWVSlkkod8WuG8PU3E6FNKEQTU2x7d3Ttt
         0yAvuEa4cbfzuyq1gff8UL0v/JFTgXOE6OzDXaZrzRI0J+3VUUpmMtt1vY8SQmAPmNfa
         4Q4Pq2kfanHrKoFvHZR9IR6jSKC0hR0qwPTuOM9bQAqWem44bdsUllxU+Ie2a1Icg4j0
         c/pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:reply-to
         :mime-version:content-disposition:user-agent;
        bh=mTGI+xn7XFHQbXZd4jINmdDnuoboNdl6DAaPjoGTpxk=;
        b=NvKcsHL/mAU77xXUDPfluqgB4jRZ5B1pw/VzxKzVModUmpj+/fxTxGqo3hjHvt8FGe
         iEhgQcuXrOh9qJCdGQkvucmDce0XCgRhbaXmNWEu88Tn7t5/aPEuifz4qG5LPqIpN+9L
         zAd4wH1oqb64IKssxUH8vNRgbdTlzhPoGeDX2GaAEeBtGjsnKw9NaNHARtDB8bGpCinD
         B3C8m2foQxXT+dQLPkSSCYzebV9Ezq+K0YiWBlbvdEkLfdWS/VUDe6DG7ABFa+PU6xVd
         gArZHJFRBEAI0LWWtVDmIY+UTm7zPFPXXJN2g/euRjndpE5Eu/qolukJhnZ93FuHjYgs
         BGyg==
X-Gm-Message-State: AHPjjUjFa1Kllqsxr7pWh2hlc50QI4WA5X1tijMoHr4nKHVBCY0ycJMw
	Ei6qnyg7DURRufAHYcvrTZA=
X-Google-Smtp-Source: AOwi7QB5uQQV+pR+yyI602I4CB9xMhdvVF1I+pR7FPM1lTiAcru1Druf/JiFLikZLkV4nBtRg/2eCg==
X-Received: by 10.98.11.19 with SMTP id t19mr3411294pfi.212.1506579308373;
        Wed, 27 Sep 2017 23:15:08 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id t76sm1301716pfj.43.2017.09.27.23.15.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:15:07 -0700 (PDT)
Date: Thu, 28 Sep 2017 11:45:01 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <20170928061456.GA30919@meghana-HP-Pavilion-Notebook>
Reply-To: cover.1506578051.git.meghana.madhyastha@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add devm_drm_of_find_backlight and the corresponding release
function because some drivers such as tinydrm use devres versions
of functions for requiring device resources.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
-This was not present in the initial version.

 drivers/gpu/drm/drm_of.c | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_of.h     |  2 ++
 2 files changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index d878d3a..26090e1 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -304,3 +304,50 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
 	return backlight;
 }
 EXPORT_SYMBOL(drm_of_find_backlight);
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
+			      backlight->dev);
+	if (ret) {
+		put_device(backlight->dev);
+		return ERR_PTR(ret);
+	}
+
+	return backlight;
+}
+EXPORT_SYMBOL(devm_drm_of_find_backlight);
+
+/**
+ * devm_drm_of_find_backlight_release - Release backlight device
+ *
+ * This is the release function corresponding to the devm_drm_of_find_backlight.
+ * Each devres entry is associated with a release function.
+ */
+static void devm_drm_of_find_backlight_release(void *data)
+{
+	put_device(data);
+}
+EXPORT_SYMBOL(devm_drm_of_find_backlight_release)
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index e8fba5b..89a37da 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -30,6 +30,8 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 				struct drm_panel **panel,
 				struct drm_bridge **bridge);
 struct backlight_device *drm_of_find_backlight(struct device *dev);
+struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
+static void devm_drm_of_find_backlight_release(void *data)
 #else
 static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
 						  struct device_node *port)
-- 
2.7.4


