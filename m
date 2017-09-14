X-GM-THRID: 6465542343215808512
X-Received: by 10.202.177.8 with SMTP id a8mr12115074oif.48.1505376657476;
        Thu, 14 Sep 2017 01:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.192.65 with SMTP id u62ls4666456itf.16.gmail; Thu, 14 Sep
 2017 01:10:56 -0700 (PDT)
X-Received: by 10.176.90.12 with SMTP id l12mr12633673uad.85.1505376656861;
        Thu, 14 Sep 2017 01:10:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505376656; cv=none;
        d=google.com; s=arc-20160816;
        b=iKPQAmQnXTJLhu9j42if3tqqVMLuiMg8sOvaInjiUqe4E2yx746cRY/1/nMvgkKIn9
         leAesui8X1KQC5rYe7l9cH3riGCjqpWS63YBvlCbA6fwE4O34kywnjrHBg7uqu/2NsnY
         B0EsoVnzeOKMAvPEtjDXs4Z/jmXxuxU3jY/JDv8QqQIObzorQ3oGCyo8tHsXq7Xpoa44
         UVx4Vq47lphGsIASIvSTVCvEwsdlLuXSFM9O0c8QWY/gsjQOFFQGI93cYOr04KO+lFKz
         l3c2O3LbskFwpgBRSFJx3KG7jidFiDoUEIqmHOdI60B1L3uW8hruzmpbuzpVr8xeaF52
         HFeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=FQo057VOnjwakrAY/TUAJztj+eTcbZVPgAlDomK2MAc=;
        b=1DIz/0HpLcjWFlMQPilIa+Fpt03xgMutuBJIluuNBHJqTjn4P8D+td4kzBQ6q90PtE
         D+sMFw+otvutIn/zB4FFhrT+vWt2ezpM7v6wf/iwLzpslsYfx9RUdRijsML9d1Vuby9C
         BCedEGy0Q14OVIcDNYcHboxL46HO9o1dPNQZLXfcECnTluwPCQcW7FG6RIG5UrX6x7cG
         VeVBMXn3affmR4RHtJInSL+2brKd4CK4MyJRoQrWZQf0E2mTm1WQBjDpB4JALNkJ9t0o
         5cLDUteutmnQhNWpCFKLVJDZXSXCIs9RlymsWtxxTgktITanKzpzLQZk8+LVUGtbIyjV
         cuNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsheMqeR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id v25si1556597pfg.11.2017.09.14.01.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:10:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsheMqeR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so1189129pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FQo057VOnjwakrAY/TUAJztj+eTcbZVPgAlDomK2MAc=;
        b=rsheMqeRlPc4Q2b0gDLjy7de4zLd2RxfC+bbZycooLcrp6UQezTvUWuatq/X7E8Nc2
         qqPijXw+5HsTml3y1WIFARCMzwEgyWDhpwov1gSzt10mA3+/z5pfFGjEhEpmu0Id92cX
         0iM+uWOqaO73Ie0n7TW7f6Vpsjl2qP0TzHsNVoq70titQYsUGGPuJu7SyB8rKuHGknvR
         FW06Bx+W9Gl3IIslilATIfxHP7t+eBVT2aRz78NJS5hfVuc3Xe4Wx0zQK1n0GbwcIl99
         Bo/OD1TVJ0mNsxCgt0kxA3w2otzgmnkCjL96KjhMmi8as4VENND9VEOoKVKvRfHaG0C2
         NMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FQo057VOnjwakrAY/TUAJztj+eTcbZVPgAlDomK2MAc=;
        b=NbzqD1fOwt1Gb1AObI7bOAK7Ugv6E5iQZcaAmhykJlZ111ixNK1ghBAyItOGUCyGfi
         fLuI51Vbif5V9lmP5sMV8qk3XpaFoeq7pkrzprhUQ4PkuM5OaG9yVFp/OPB6N46Nv+bP
         pqHKUPP1GQfJ6f6iJjEs1Jl73grqfoCQNDC0nNkEiiWaxrj1oypAEg6fuZyIU12PBaJ3
         yh0Vqmov0p6cRD/LXYQgcBLlQwa6zr20V03TCYbOviE+9inNui9lyt8MTW3xmaPUSRUe
         7SkH2xKzAzH1WfLtsa1UevcMOGVKWcEhOvIw3pzjjQELQKuuCNGDEV5SyaSCFVyoe430
         bYiw==
X-Gm-Message-State: AHPjjUgSotdxQ6Nt9jCtEwWz9p7A59ZSUbwsyu9JiK9cbm4dLaHOMcFu
	dhvV+EvkOywPjiic28Q=
X-Google-Smtp-Source: AOwi7QAYSYDEOqzcYmL4XPsTD/YvCdbfOG2GlWFeLNOciyvIcIyGmKrwESHTA2cs2eqyj6L9ustYdw==
X-Received: by 10.159.244.21 with SMTP id x21mr8599379plr.440.1505376656187;
        Thu, 14 Sep 2017 01:10:56 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id b1sm25170998pgn.55.2017.09.14.01.10.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:10:55 -0700 (PDT)
Date: Thu, 14 Sep 2017 13:40:49 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 2/4] drm/agpsupport: Remove assignment in if condition
Message-ID: <d30cb59d92c8a98d0665ef6ae2a56b364dc61098.1505376068.git.meghana.madhyastha@gmail.com>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505376068.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the assignment so that it happens before the if condition.
Merged multiple similar conditionals to a single conditional statement.
This results in syntax which is easier to read.

Found by checkpath.pl

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v3:
 -Added "Merged multiple similar conditionals" to the commit
 message.
 
 drivers/gpu/drm/drm_agpsupport.c | 31 ++++++++++++++++++-------------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index d9e8cdd..860d57a 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -101,7 +101,8 @@ int drm_agp_acquire(struct drm_device *dev)
 		return -ENODEV;
 	if (dev->agp->acquired)
 		return -EBUSY;
-	if (!(dev->agp->bridge = agp_backend_acquire(dev->pdev)))
+	dev->agp->bridge = agp_backend_acquire(dev->pdev);
+	if (!dev->agp->bridge)
 		return -ENODEV;
 	dev->agp->acquired = 1;
 	return 0;
@@ -203,12 +204,14 @@ int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
 
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
@@ -275,9 +278,8 @@ int drm_agp_unbind(struct drm_device *dev, struct drm_agp_binding *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
-		return -EINVAL;
-	if (!entry->bound)
+	entry = drm_agp_lookup_entry(dev, request->handle);
+	if (!entry || !entry->bound)
 		return -EINVAL;
 	ret = drm_unbind_agp(entry->memory);
 	if (ret == 0)
@@ -316,12 +318,12 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
-		return -EINVAL;
-	if (entry->bound)
+	entry = drm_agp_lookup_entry(dev, request->handle);
+	if (!entry || entry->bound)
 		return -EINVAL;
 	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
-	if ((retcode = drm_bind_agp(entry->memory, page)))
+	retcode = drm_bind_agp(entry->memory, page);
+	if (retcode)
 		return retcode;
 	entry->bound = dev->agp->base + (page << PAGE_SHIFT);
 	DRM_DEBUG("base = 0x%lx entry->bound = 0x%lx\n",
@@ -359,7 +361,8 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
+	entry = drm_agp_lookup_entry(dev, request->handle);
+	if (!entry)
 		return -EINVAL;
 	if (entry->bound)
 		drm_unbind_agp(entry->memory);
@@ -398,11 +401,13 @@ struct drm_agp_head *drm_agp_init(struct drm_device *dev)
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


