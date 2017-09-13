X-GM-THRID: 6465205340686254080
X-Received: by 10.13.194.195 with SMTP id e186mr4443800ywd.30.1505298199674;
        Wed, 13 Sep 2017 03:23:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.68 with SMTP id 65ls2793254ioi.0.gmail; Wed, 13 Sep 2017
 03:23:19 -0700 (PDT)
X-Received: by 10.107.3.25 with SMTP id 25mr10263746iod.45.1505298199085;
        Wed, 13 Sep 2017 03:23:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505298199; cv=none;
        d=google.com; s=arc-20160816;
        b=urVX7sXnkDYM9RawPg7hk1Lm73IzjJSm++pveFv4Jx7T5gK+/lkk7P+EZPgLppVzGr
         /TPkgmU0tw0do3CkPqVrbQ7ogjS5cLR3Olmc9vW8dZ4hz4wsQ1dqc1L2Rw0klynUELM5
         tDdjvdTZ7bX4aC52Zc/BPa8wsAe65eoVDVkawZQ21X75Weqo6Xmzc1sD2dQGGDnINkv8
         ZnDfNXYug7iTWPVN6O9MaPtH6RDAkbknGq1USn8Q9BdmpkCF2U1Q7o1EvDWPW7+jaQej
         satp1NUnElGLCX7PeEW3N/CqDT6EV9wqZ72vuDTFyAc6JU+RpcuGxktvzHyDEGrQr/NI
         hqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=WPXmb0juB8nCQcOtN/VAKOZOZdQ94yxz5sm5rnMqk98=;
        b=O6JLEPBbkYGpjKZ4FlhnA2896Ny968Pk6mTaFB+0JcHoJEy8PBpUfLm7GdUxRN9h5t
         YSCdXyPP/JOIgy4mgDhfOOYFJIA280Oo30V7iRUkXbp0yT2ieiK0/UuMtxO7kxRZ0F36
         gHVHoUfmL8DIUL5siW89QjUZKSSC4yiwXqrLSYZysKMtKT9Fu2ROv+kKt9oXaPrwubdu
         LlJfikPBWdEJrNaahhnYCbQ23leUHCHPh6xkoUvex1+WtJMb8saLC+9hweYwNNOsYa4C
         SQ/U+exyJoyUV2IroGWfvL68ERZ//TvvEKCzzsm+4SAFWq8y6FFLdxwJrXd4ZKmVuAkw
         tNPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=egbQ12Nw;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r78si332052pfb.3.2017.09.13.03.23.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:23:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=egbQ12Nw;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v5so7442370pgn.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 03:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WPXmb0juB8nCQcOtN/VAKOZOZdQ94yxz5sm5rnMqk98=;
        b=egbQ12NwEFYOBY+IMv02+QyPTYb7NPN2xFl5+e1wF8oppbg7C3lREr3mOL1mv9/unV
         LoqQwC/sqqomHi76ojTp1IKq80BhR3iDapQ2hWH6Pm/foOBVL2T0hOKMsBp+HPeMFl0H
         lM0cEgU8w3+MqLzGxR3iyfNaO/WLoHrIsXabJEuUxzi4bgijZYPPlSBhGYm+DAYeBTeV
         m9k1j3W1UAP4IUL3IhVmWM8KNW6pxVBLYLw5hecxh7OMchRKrUab1nh1TT/DpHtHSeJQ
         +92uU2nRVJbAKoTJBelyGCoM2bBm3qOWrHtWc0VnW1nno8flY6Z3JYh4m6EETfA3LBQc
         Sz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WPXmb0juB8nCQcOtN/VAKOZOZdQ94yxz5sm5rnMqk98=;
        b=bfkRncpCFzBmveeo9mcvgbDknmb5Rf0KtszQV26kt0go2Ng0+hqaNUM+mtGMJbB93l
         NFSVnVTaRhb0wvPx5/geLnteDfw16LUBoVaPaxT1U645mGTK+VxUSDrpnwoZyJMWXScy
         O7Cr6mksowKSpsnQkoOCQMURHO/HBT+6SJ85Am/RZ7d7lv0IERya6t3+cQGmmzaXkFPw
         eqpt2NmGPrDmMfq1hHnse0W1CjQFqAjJs1nRnMa2NofLjJY75XeaHWeBfJzLCNhPclI2
         bRIbsPxwEyotu1NjILSrROwDYFPcbCN8vzQTBsEhHqrF0Pff/b4ChKGP9/lSUYxF9vf2
         qTYg==
X-Gm-Message-State: AHPjjUg/y10ZnIWzbCc3w3mwGLUkBjLhq0xnzrw4DnolLxTukRrPtFms
	4+FBMxpzV4Jitg==
X-Google-Smtp-Source: ADKCNb6Vl4fNEYEDMN8sDX0R01ayDoE+/sik5yfqqZbf3NVCAbSiGNe5SOGCC5l27y6D/y2QErLflQ==
X-Received: by 10.98.102.20 with SMTP id a20mr17928983pfc.208.1505298198785;
        Wed, 13 Sep 2017 03:23:18 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id s76sm15851405pfj.119.2017.09.13.03.23.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:23:17 -0700 (PDT)
Date: Wed, 13 Sep 2017 15:53:12 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] GPU: DRM: Remove assignment in if condition
Message-ID: <5eb79800ec4c7218e23841345ba81e3a515901e7.1505296813.git.meghana.madhyastha@gmail.com>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505296813.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch moves the assignment so that
it happens before the if condition. This
results in syntax which is easier to read.

Found by checkpath.pl

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/drm_agpsupport.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index 993e486..08933d6 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -100,7 +100,8 @@ int drm_agp_acquire(struct drm_device *dev)
 		return -ENODEV;
 	if (dev->agp->acquired)
 		return -EBUSY;
-	if (!(dev->agp->bridge = agp_backend_acquire(dev->pdev)))
+	dev->agp->bridge = agp_backend_acquire(dev->pdev);
+	if (!dev->agp->bridge)
 		return -ENODEV;
 	dev->agp->acquired = 1;
 	return 0;
@@ -200,12 +201,14 @@ int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = kzalloc(sizeof(*entry), GFP_KERNEL)))
+	entry = kzalloc(sizeof(*entry), GFP_KERNEL);
+	if (!entry)
 		return -ENOMEM;
 
 	pages = (request->size + PAGE_SIZE - 1) / PAGE_SIZE;
 	type = (u32) request->type;
-	if (!(memory = agp_allocate_memory(dev->agp->bridge, pages, type))) {
+	memory = agp_allocate_memory(dev->agp->bridge, pages, type);
+	if (!memory) {
 		kfree(entry);
 		return -ENOMEM;
 	}
@@ -272,7 +275,8 @@ int drm_agp_unbind(struct drm_device *dev, struct drm_agp_binding *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
+	entry = drm_agp_lookup_entry(dev, request->handle);
+	if (!entry)
 		return -EINVAL;
 	if (!entry->bound)
 		return -EINVAL;
@@ -313,12 +317,14 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
+	entry = drm_agp_lookup_entry(dev, request->handle);
+	if (!entry)
 		return -EINVAL;
 	if (entry->bound)
 		return -EINVAL;
 	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
-	if ((retcode = drm_bind_agp(entry->memory, page)))
+	retcode = drm_bind_agp(entry->memory, page);
+	if (retcode)
 		return retcode;
 	entry->bound = dev->agp->base + (page << PAGE_SHIFT);
 	DRM_DEBUG("base = 0x%lx entry->bound = 0x%lx\n",
@@ -356,7 +362,8 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
+	entry = drm_agp_lookup_entry(dev, request->handle);
+	if (!entry)
 		return -EINVAL;
 	if (entry->bound)
 		drm_unbind_agp(entry->memory);
@@ -394,11 +401,13 @@ struct drm_agp_head *drm_agp_init(struct drm_device *dev)
 {
 	struct drm_agp_head *head = NULL;
 
-	if (!(head = kzalloc(sizeof(*head), GFP_KERNEL)))
+	head = kzalloc(sizeof(*head), GFP_KERNEL);
+	if (!head)
 		return NULL;
 	head->bridge = agp_find_bridge(dev->pdev);
 	if (!head->bridge) {
-		if (!(head->bridge = agp_backend_acquire(dev->pdev))) {
+		head->bridge = agp_backend_acquire(dev->pdev);
+		if (!head->bridge) {
 			kfree(head);
 			return NULL;
 		}
-- 
2.7.4


