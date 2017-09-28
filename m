X-GM-THRID: 6468311343549120512
X-Received: by 10.28.157.82 with SMTP id g79mr179793wme.20.1506606105596;
        Thu, 28 Sep 2017 06:41:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.142.199 with SMTP id q190ls92722wmd.4.canary-gmail; Thu, 28
 Sep 2017 06:41:44 -0700 (PDT)
X-Received: by 10.223.157.134 with SMTP id p6mr526544wre.14.1506606104836;
        Thu, 28 Sep 2017 06:41:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506606104; cv=none;
        d=google.com; s=arc-20160816;
        b=gGrBcOMoPoJk0afbIW0ukPFuokbasL/QtLlhLpe4xjQdF7zxFQLsjJjmrgIgpGojZQ
         KM/6PLHfW3/cQcNuOwfSiCh2tkXlBo8wqJ6wv/PKecQ7kli3T4UC4Ly4l4NClB76EU1F
         T7FalgZ/fH4Hu0M4p/kVYFR6sDh8ToLiha4EmIxwF1x17mA480yt690jQJMXPfMwm7j5
         pvGSeUhYPEwayoVjyrX+MymqKwJRe3dYdBky7FQAeEIeGUg+yS9vKHV8jk7FKeeyMETM
         ZBt6i4H/1wWC+8Ywz1bvBfKJsR17sfjomdZYIvwpkuVY8tdvCi/9qxwsmUq5gTnYjSf6
         8E1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=DTNkAJkCnZ/sySkdI+1bJdmHOVgweCZO6COEWeHMH2Y=;
        b=j0wg4SNzmFNvGIiNraFID/kPvXALpQj4ZLpiuGWFr6LNx2HH2ZbzeZ2aW/rAqyq8wY
         Ov2Hj3oJbqEKpQJ919K6E9os7WFFvaIcNDnIo37Pw2rPK23goEdu6uB2h1ln5BnIth5J
         7hzbXV5s+H/qJrubSVPHzm7veHQ7TsmCRbHTRM/JJZvj11BTV9ynSwgcQzDq0vKKqMIN
         ePWsPEVOU36uRD0WpBm5ZrGo/eBevTrOxH9Mw4MvK2IwNb/NOkA9pk2CcvqBecQbACdk
         pa9QVxF2cjJv9sPSHEMcY2dCNgO2imwXowsgNtc6N3Ew+wzj2FKYujxxR67QJQxG5eeI
         Tt3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GDXSbADo;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id l133si121437wmb.3.2017.09.28.06.41.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 06:41:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GDXSbADo;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id m127so1866021wmm.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 06:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DTNkAJkCnZ/sySkdI+1bJdmHOVgweCZO6COEWeHMH2Y=;
        b=GDXSbADojaYZJJxPS3GP44Koivr5UFTBpyPtJFKQU+06P16kTJmy/hWeKoOHzKIlFs
         1tyRcpua0SpBAAvgopdTrodgnpTJ6wA5NFnL8fj0YXe8ampb5hS7aJogi6yJVQMFsolD
         nM6U3pdKyI0SZknB5G7yQEWr4E1Y7mdDGK+HOKQdt7QwvQLMOpsu8kpYhqejYYyJ2Au1
         4GHvcerRXXU0KMqL6iJJww+BJQtyeuf+clNF072MUJ0ChdsvjU/c8OI2vGmWPq9MkWm8
         KcMtgE9hQ3P8/8K/Q+WZ1OwDYLQBnytsaF9PNZHHeO4/TEC6c2i8yrXh6BIOl6O5FPTk
         JeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DTNkAJkCnZ/sySkdI+1bJdmHOVgweCZO6COEWeHMH2Y=;
        b=VWF7d+8nSsVMpruSPljcT3efEsMlH7GST7HqwyPBzYwsxzjNPQV9l+8u4Ed1KrHZxJ
         5Vd3n+NFoTFVHgIcBQv/NZAmF764GqZa2w8nXSp8G9JoaQbSqmh6Hu2ZB8jwlLp2VEKV
         toedlorMqdmPy1Hmo+iaXQL0DyJAz/2rdpi4gsT86PxJkioXoPVZwgnaFAig9r9NTkNv
         78Dmk+z6cKJuR2PpjRX3jXMoyHuSrQMlcVdRFYRnLOSZmMtmR+OT+C8cNNE9i8IGGgqa
         6wU1xGu4OO+uDALQiiNq/5uIQTTHsGANoTLu/hjBNehFZbXL+n87Z+ImLV54letsZrOR
         XQOA==
X-Gm-Message-State: AHPjjUi+i0Wg55dEZSmz4CW37nPTL/AhqNi7gupaXvYWyGJVcmlv2Bhj
	a4TiBftQj5yqPrRXf6rQ0tI9mw==
X-Google-Smtp-Source: AOwi7QBzgDLNt3fdoEeMvnF61MdT01W65KiVwClB2WiMvJAt5caPkMurjXmMEZo5JORwsSO7mWksPg==
X-Received: by 10.28.195.132 with SMTP id t126mr1174331wmf.0.1506606104479;
        Thu, 28 Sep 2017 06:41:44 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id y13sm260212wrc.81.2017.09.28.06.41.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 06:41:43 -0700 (PDT)
Date: Thu, 28 Sep 2017 06:41:42 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: vc04_services: Remove typedef struct
Message-ID: <20170928134142.GA5180@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes typedef from struct and renames it from "typedef
struct vchiq_2835_state_struct" to "struct vchiq_2835_state" as per
kernel coding standards.

Issue found by checkpatch.pl

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Change in v3:
	- add the right modified file in patch.
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 0159ca4..14bcd6f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -59,10 +59,10 @@
 #define BELL0	0x00
 #define BELL2	0x08
 
-typedef struct vchiq_2835_state_struct {
+struct vchiq_2835_state {
 	int inited;
 	VCHIQ_ARM_STATE_T arm_state;
-} VCHIQ_2835_ARM_STATE_T;
+};
 
 struct vchiq_pagelist_info {
 	PAGELIST_T *pagelist;
@@ -207,12 +207,12 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
 {
 	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
 
-	state->platform_state = kzalloc(sizeof(VCHIQ_2835_ARM_STATE_T), GFP_KERNEL);
-	((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 1;
-	status = vchiq_arm_init_state(state, &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state);
+	state->platform_state = kzalloc(sizeof(struct vchiq_2835_state), GFP_KERNEL);
+	((struct vchiq_2835_state *)state->platform_state)->inited = 1;
+	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
 	if (status != VCHIQ_SUCCESS)
 	{
-		((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 0;
+		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
 	}
 	return status;
 }
@@ -220,11 +220,11 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
 VCHIQ_ARM_STATE_T*
 vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
 {
-	if (!((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited)
+	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
 	{
 		BUG();
 	}
-	return &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state;
+	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
 }
 
 void
-- 
2.7.4


