X-GM-THRID: 6476695783848542208
X-Received: by 10.80.202.200 with SMTP id f8mr1113273edi.6.1507973248084;
        Sat, 14 Oct 2017 02:27:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.201.70 with SMTP id p6ls3900194edh.3.gmail; Sat, 14 Oct
 2017 02:27:27 -0700 (PDT)
X-Received: by 10.80.222.130 with SMTP id c2mr1122607edl.8.1507973247535;
        Sat, 14 Oct 2017 02:27:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507973247; cv=none;
        d=google.com; s=arc-20160816;
        b=FwJiKAOVA1mb88K8HXYuQrt7EcSdI/MIfpl4SlhF/cHpetVTy0QLeLTw+7+Z4JsRra
         dN6mSRv0njYrQOfxpbAYNhUEIrn7YqFHhILAl+GV0rEoo7Qd88t8x0qWzDTOlKjl4wTo
         n4wK0Fgj3gHK2v9Fx0yzgO5zdej9rD0zqhImtQ37856Kf4P8GEn2YQdooOxOeA1ipY4V
         kTRH9n9vpOKvJKzCgIWU17O1+6kUjSzeP5ZCt46RlPCdo5wFIvBJELEI/skF950qaAMA
         0J+jUdOFg5jndGgWQqgRqDN2Px6+7RT2FxFIS/TVABR62r7jB8k5U5NQ1fkUlO9bKzxh
         7YHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=MblaHfINkDoZn1Sj3AQMT0nJjmceEGwVg9ce+l4Nlf4=;
        b=jOgwHQCCd2aq31WsWCjvjEk4AA9nt7ooQ0OyaNyEy0hLE6yUDN3P/9dR52GX+omQsm
         hsMFZZH5+qDwuXqqKlCNPA7lsdkVLsoJBYjqD/hYX83niPOHbhfMhLbF7jiAagQ6FSlo
         g9YXSsSW1o7urIV0btrwpLpCgA8KYkl8piOWqMuQ9yNIIdSI8FMbX40xY8yjcee868a+
         oeW49rLka0LdqaKu5sDGPMdDxyU1ZPVwf/t98tkr5x2psJ1ANhPLChtsbrGXGWbsAhJ5
         UBRK1ISSVHHB4VEttKfIasy83S5k3sdxVtQh8qPiTuo+55RLkrkARokCRaJAvl00axl3
         7tdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=POdaMZGQ;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id f21si120095edj.0.2017.10.14.02.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 02:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=POdaMZGQ;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id t69so25261158wmt.2
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MblaHfINkDoZn1Sj3AQMT0nJjmceEGwVg9ce+l4Nlf4=;
        b=POdaMZGQ2vKnBSpCfvLMviBUkmTLn0RTp9lC3+uYBfyxKovsa8IJ7VM0JhoIJ/lOCV
         V6occvXrO9oLU4kg1TNhlGVqC/KZhk3hN/pSPpBvrXbUmvNT0kEde4YoICXGCmzX0crS
         wt8+15+v7gBD9/FooZ7pedU38eJtAbe4TSL5/CopTVIprSMOVcbxTPbwTS6a5/e/VO0w
         +vwomq8PggslI6b2UzvednX8PAC8l4YBCBMQVxkIjph8DlUzm+zZONcEHXjevdcVOBJ1
         v3gs0681+ESFoREAF4kFu7F8oCbyis+iWX20UI5ly/7EBK+oCt2cnT0v5F4s8xL+HyxG
         K/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MblaHfINkDoZn1Sj3AQMT0nJjmceEGwVg9ce+l4Nlf4=;
        b=ejE6enuMawYZrqlBvs2HkeU7pvWZiz+laZT9HOAFnaFKVzp3iQS0I+GcnZY3IdugfJ
         xsfeDULCypbI3y4uwn/lf5e0/7BrKZdYYKMakc2Yieo+qGLBW39M3ONBpgeke8lbd5xb
         98zKnhJZChIQDrkddau5qHIbT9/VQUWEzXKbeXH2Vymrb5XQtM51uO5MFJRoFJlwgOr0
         yF8XWLYPY/SmR+wFl2IgEGs5NkjI9wJXUv7r6yn5HLN6qWo8Fo61x9nTkPANEPMfWQOE
         wfM/BQQnYZJ6IqzD3y2Odaq+ZIEDMv21JeIPGgH8LBeB4lxFS5Pcv4Qhlkus3DC55btk
         Nwew==
X-Gm-Message-State: AMCzsaVDDgkl3GTJoAIaI8aKgV/AR/yJW7ROWILLHq8CZSAgo1nuI4bS
	/yjYj/VcmdPhagydZ2yPhGTjOg==
X-Google-Smtp-Source: ABhQp+QV1KxgKXsWxvPW4LpZR3fqi6ibcr/2sYzpSYJoZtAQ2Q+1lGWAG0ckteYpwwo6msfWXnpLiw==
X-Received: by 10.28.185.75 with SMTP id j72mr3492183wmf.138.1507973247190;
        Sat, 14 Oct 2017 02:27:27 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id 55sm3444353wrw.60.2017.10.14.02.27.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 02:27:26 -0700 (PDT)
Date: Sat, 14 Oct 2017 12:27:25 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: Use __func__ instead of function name
Message-ID: <20171014092725.GA6081@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index a96bae0..88634e4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -420,7 +420,8 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
 				       &dma_addr,
 				       GFP_KERNEL);
 
-	vchiq_log_trace(vchiq_arm_log_level, "create_pagelist - %pK",
+	vchiq_log_trace(vchiq_arm_log_level, "%s - %pK",
+			__func__,
 			pagelist);
 	if (!pagelist)
 		return NULL;
@@ -481,7 +482,8 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
 
 		if (actual_pages != num_pages) {
 			vchiq_log_info(vchiq_arm_log_level,
-				       "create_pagelist - only %d/%d pages locked",
+				       "%s - only %d/%d pages locked",
+				       __func__,
 				       actual_pages,
 				       num_pages);
 
@@ -583,8 +585,8 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
 	struct page **pages    = pagelistinfo->pages;
 	unsigned int num_pages = pagelistinfo->num_pages;
 
-	vchiq_log_trace(vchiq_arm_log_level, "free_pagelist - %pK, %d",
-			pagelistinfo->pagelist, actual);
+	vchiq_log_trace(vchiq_arm_log_level, "%s - %pK, %d",
+			__func__, pagelistinfo->pagelist, actual);
 
 	/*
 	 * NOTE: dma_unmap_sg must be called before the
-- 
2.7.4


