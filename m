X-GM-THRID: 6751675507334447104
X-Received: by 2002:a05:6402:a4f:: with SMTP id bt15mr2830628edb.121.1571996954364;
        Fri, 25 Oct 2019 02:49:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d58b:: with SMTP id r11ls1092887edq.10.gmail; Fri, 25
 Oct 2019 02:49:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+LHT3U5tr8zLnX7289OHqPvSEsbw8Ju8szwYGsOxOy+Y68WfbTfsJZQ6F82TyOQwCYp91
X-Received: by 2002:a50:fa42:: with SMTP id c2mr2907303edq.112.1571996953314;
        Fri, 25 Oct 2019 02:49:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571996953; cv=none;
        d=google.com; s=arc-20160816;
        b=fyc4/Z6C0uuk2I7Swod+pgjhagD3SoOc7zoIz5zLUtH3yOPhEdJfyX7VoZ4kudIKu5
         2E5NpQvyXkzpWnhHqdqk+N1CGMKn5uZ/CH8Qvah+Y+SEIw1gZ2V3bkUW5DL6Au2VadfU
         s2/oM0XrrNQ3ZruvIpmWLUeLdKPprEdkZLS/OnCqfeOWi1tzmoBBzDpfQ6cngxmv5M6j
         Vm7EB14oHziIeJO6dwfnJVEspokCC6E/yKQy4hICk8TKBdHvpLKfCt3NaSPRmoXQmBzd
         TSz+mtUvZ/mKnXnhzOGA9eeUiPBh7XofIAcAr7uxrh6GzKgTOVIALuL9hpq7GLNDK1ky
         baSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3uzPaMEUG7uzlUaWgLj84V/5JtUR6Pevk4lkhYdYRgg=;
        b=vjzv1TrSPCXQX993zmJYt+6UgdWC2qRVjRiDT2qZJr6+rVMbUWijChT6Y901dKTBn/
         c7oWLt9uGwy59OTUw0IaD8RsnwrEOM29o44BFhZiLu80xOSRCsY8j+C1RlbBNLKk9gOF
         UKnNLCfT+iD4RBLUIIljdQFW1G0vht+rtha1FDHdIcVm8nZpEfrHV2OXCLTvuu7smUH5
         CFM7r+YU4w1mVn4UMYYaMXBCGjvkEKLwDDygb07EMygB96c0ttYrFkIx41OZzR84g7Lz
         kzv9tqcVRsB4+pqyTHL2X/36ye5eDTWPt70cqWN2PR1nWuf4Uad+Bqb4WgDL6eLzQdQ7
         x5GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ilh8wyes;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a15si69757ejj.0.2019.10.25.02.49.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 02:49:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ilh8wyes;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id w18so1569993wrt.3
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 02:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3uzPaMEUG7uzlUaWgLj84V/5JtUR6Pevk4lkhYdYRgg=;
        b=ilh8wyesMchbb9NRybDxrhIKd3t7KS4WEAJhQEvgBO70lPCJrL27bNYUejtd4AHFcy
         zRmXLq0PTnXnDjGkDJPwpa6xjTnzjkZE0qIca5JafDVC+rIH9RIyWTpBfKCJcYoESMwH
         6gFUrZnM2qJOlP+0GEZhMqBbV3iOjps4qSSvo2021RJdetxIEAswV6b8Yq/gSe0C6Xxz
         RuEVk9u9J9MqHgMwjVXe/C6h3kWNjaWX13/NlNjtCEELK9m4leLkBoaPdZOyBHB5X244
         61HwCnc3i76BlYzO8u+GDW6N1N3o0/SYF6p4ogJ0FDwCDCqUvAzJ4cEA4xPI2enFnPAK
         wjlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3uzPaMEUG7uzlUaWgLj84V/5JtUR6Pevk4lkhYdYRgg=;
        b=AVtqmYPCplqBiACjBqxbtN42j9Ks3LvFxlHcgZ9QJbdhRyOn/YOlTcvVHxqTYlIFBj
         JcVdynrAtcbJTtUt+BddMkz9XA9o+qDaegL/ACGr4SPvmv8ObB+4JrjJRBIJ1RSFOSBt
         pGp+X4YtLw+oOew6gHy7vkOnGxgXA1SLGCleuypV40CUmWqq1BKEcxc7Nui/sOMDoOKp
         JKZL5djRisqqragu9yCErKQ6HU6G/CphmHWZhZ5zr0GlwskFFrccKIXD4n/5CWdrtmK2
         DScG2IvvHdGRGwWvNseIJc6IJFFKIsoK5AOSPeOR3w3P2/F5lmt2lQEqLftCSZCICnKX
         eqtg==
X-Gm-Message-State: APjAAAXbtWeeAYzNwKGIKbGb1/Qcs3LLdPse/TJQiOLTueI3IG83s8CJ
	AcrqKx5Rpdu3F4dU++RPMipfRWyqIvpc4g==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr2109312wrr.207.1571996952978;
        Fri, 25 Oct 2019 02:49:12 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.38])
        by smtp.googlemail.com with ESMTPSA id q14sm2130403wre.27.2019.10.25.02.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 02:49:12 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	sean@poorly.run,
	airlied@linux.ie,
	daniel@ffwll.ch,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [Outreachy][PATCH] drm: use DIV_ROUND_UP helper macro for calculations
Date: Fri, 25 Oct 2019 12:49:07 +0300
Message-Id: <20191025094907.3582-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace open coded divisor calculations with the DIV_ROUND_UP kernel
macro for better readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/drm_agpsupport.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index 6e09f27fd9d6..4c7ad46fdd21 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -212,7 +212,7 @@ int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
 	if (!entry)
 		return -ENOMEM;
 
-	pages = (request->size + PAGE_SIZE - 1) / PAGE_SIZE;
+	pages = DIV_ROUND_UP(request->size, PAGE_SIZE);
 	type = (u32) request->type;
 	memory = agp_allocate_memory(dev->agp->bridge, pages, type);
 	if (!memory) {
@@ -325,7 +325,7 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
 	entry = drm_agp_lookup_entry(dev, request->handle);
 	if (!entry || entry->bound)
 		return -EINVAL;
-	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
+	page = DIV_ROUND_UP(request->offset, PAGE_SIZE);
 	retcode = drm_bind_agp(entry->memory, page);
 	if (retcode)
 		return retcode;
-- 
2.23.0


