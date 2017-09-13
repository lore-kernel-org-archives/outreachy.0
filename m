X-GM-THRID: 6465297812332478464
X-Received: by 10.129.182.18 with SMTP id u18mr12064863ywh.228.1505319451736;
        Wed, 13 Sep 2017 09:17:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.211 with SMTP id q202ls3429341iod.11.gmail; Wed, 13
 Sep 2017 09:15:43 -0700 (PDT)
X-Received: by 10.98.215.68 with SMTP id v4mr10144152pfl.32.1505319343390;
        Wed, 13 Sep 2017 09:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505319343; cv=none;
        d=google.com; s=arc-20160816;
        b=V1PMJbMdOI2aAHim9hweFScJu483nwrZKZHLpopGI73lqJH3u9EcTYtHISRYDpzxuQ
         D0pov0mwj5cHpgJ7aNIkHeirfSpNaR9DjKdfDIeURFVVSMxJcVks0unycwL7nW4kEsAZ
         8vwID0dOBydDrd3vzczC9abCqFxHPPPw8fTEqu5PYO4LAVpeVEQscBwRY5ol6xAtMdDC
         AjaHV/iOhaz4TlHNJxCTVo8ranJhtgRm0jBIrAEv2PucLebAuPQ8RR965vHn9p//BoZI
         jEkpUYWTw8pUXkIXpiJ9hY3NuHB24h6FurKBm1qgkD2U89oQiusJj1Mwfj+K+xJrSZhV
         O0lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=8MUg3L5eBnQ8oepSN2yDYttmZKfA08igUjxlrjcUpZY=;
        b=qvA34x7pKDDaCsoPzVhG9Z1EuTk311w8pisZxrv2zmivK29/SIYFD1KuLTHZZyQzwE
         Zp6jGLtzgVfJ1w7t9K0wTmwrgt/k1w0G9MbYCBcYiJnfqD17/NxX2ATUeYZbzD7eWFod
         5VO5eJQBqrCcLCEZiXFBVN1vsDC+QIClJ/NPIH2uMX8UjszjD+vlDgmlW5UOQMG618Yd
         5keYWw6EPILPdplMdkjvQHf7rgk1vLffMRphT4FALwKVlE/QFhbkt8k6qC8VBei2UaTX
         ROnoK0n4tZ51O2kA9YEXm3xYRE1OxyeMiXHssyZBybuyojPBbQTqE9sP6XbnzcLZ8XOK
         38DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhiNp65Z;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id q15si1229558pfi.7.2017.09.13.09.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhiNp65Z;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v82so321342pgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 09:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8MUg3L5eBnQ8oepSN2yDYttmZKfA08igUjxlrjcUpZY=;
        b=DhiNp65ZJJM6ox5aymiMQYRokcoDjHrMyEIRbmkI0SJiAP5ES6kUITG7tFMT7Yztd7
         mvdCdZeRZ79w2euLpbPjqsmVVOUb0+fVQ8YDIMk4k6714Pc6y3YM7j1ofqIuL7AjvQ2o
         ByGNxnE3jN/iTlE7kFrQs2l+3LhxKRcmU/h6uD8+idGAo8d3UaChNZoDfVapk7PGk7wx
         jZzUhtoKHgrMWi/BLPtEPeuZNPNVIygH4AuvnylgLI796CYeLtiIUzqwNF+MrFJq5tjW
         vVJ0aU0XMOKhLuEALPen6fP8IIQ6QRzwjscd0AOdVoji+dJ2cn+txEAPsdaLtX2+QSD1
         dVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8MUg3L5eBnQ8oepSN2yDYttmZKfA08igUjxlrjcUpZY=;
        b=Ncl19q6YBj+i+4cx3dYEeUoQo/VCVZTpqS1z94e/BY1+K7+pv0G+Nu9sULDuWB11vH
         TPG0JWZaDFqti78qI8EPWcRfibJKVWl3gAyu6XDr8XVYwaNWE9Ml2648K9h0swwOa4d+
         P0uTUxT6WAK+y0BZFKL3Bb6SCXq5Os+niMMy8ODK9G3rDxCmSbHJfSseiD9N1NqpgbQj
         hceJwSkafOJVxs81rm9tB3pnwvC4cBTp0bhtD05sucpzIhm/RnwFfIoDsWf0Aj6giAaz
         t96akU9MRpuzI6ReyhVip5JaTQWUS8D3AYJH72b+MtgpO7yHqF310zlXtyxE9GwKFyue
         Zl6g==
X-Gm-Message-State: AHPjjUjueegsYnWGo6Mk0akvTN/hLKgfzGbD/L2oHkP2GBxYstWRV4AG
	70TuPiIuQGaRKnCZEyI=
X-Google-Smtp-Source: ADKCNb5hMo5vGVUiGJGNFWgyC8eddmPlk7YYQHDx3tjNRaCOtSh3NpslXzN3Phuts8x8bRGLISzyJA==
X-Received: by 10.99.98.68 with SMTP id w65mr18485493pgb.234.1505319342783;
        Wed, 13 Sep 2017 09:15:42 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id x189sm24605337pfx.188.2017.09.13.09.15.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:15:41 -0700 (PDT)
Date: Wed, 13 Sep 2017 21:45:37 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm: Remove assignment in if condition
Message-ID: <20170913161531.GA3239@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the assignment so that it happens before the if
condition. This results in syntax which is easier to read.

Found by checkpath.pl

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/drm_agpsupport.c | 31 ++++++++++++++++++-------------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index 993e486..737f028 100644
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
@@ -272,9 +275,8 @@ int drm_agp_unbind(struct drm_device *dev, struct drm_agp_binding *request)
 
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
@@ -313,12 +315,12 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
 
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
@@ -356,7 +358,8 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
 
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
-	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
+	entry = drm_agp_lookup_entry(dev, request->handle);
+	if (!entry)
 		return -EINVAL;
 	if (entry->bound)
 		drm_unbind_agp(entry->memory);
@@ -394,11 +397,13 @@ struct drm_agp_head *drm_agp_init(struct drm_device *dev)
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


