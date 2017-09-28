X-GM-THRID: 6468311343549120512
X-Received: by 10.28.184.81 with SMTP id i78mr118666wmf.2.1506596553212;
        Thu, 28 Sep 2017 04:02:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls1078745wri.12.gmail; Thu, 28 Sep
 2017 04:02:32 -0700 (PDT)
X-Received: by 10.28.218.143 with SMTP id r137mr105996wmg.15.1506596552418;
        Thu, 28 Sep 2017 04:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506596552; cv=none;
        d=google.com; s=arc-20160816;
        b=FllwvhBOaxx8I/oGp/SUAzSUjrJRu8H3/HGwHWOcILiqhojh00QQ/riRhUi3/jvR7P
         6KX6/u9lmTSqxuBVmUkV14NRV/Z+QYT9p5AhfKT8NfpIeMxIRnCrcJtsgTJRvC398R6r
         0vqXKMokyuB+sxVLV1u8chlQqZTV/89J/x6IC5TAnp0Cw0dk/Hv6gje8HGVtKRPGWUI0
         dipiT0d182VeXpImsZE4KF5gEc6Cc0BULp47GwD3NBY9lgk9oaIAxNPHBwlTHV+eVl/+
         YPbbN4a86/HKwX6HCg9sfvpxNtDK6ese78eVcHBm74SECcppb04KGJZUyl8H7Z47aaAh
         oGhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=i/0dukjfID1+iPwFz/r2UYY8VGojINezdN0SUJTkxWk=;
        b=dqTOPaBDmpZ9Al+n+Chb8K3rkcbsxaI2Xe2vOFENseOYvIYt1YtZy7cWCD2iol05w0
         76ndBPtUY8m0/iB7ADf3zBcu2Je81QWKYpujkH8pyFRD5tzdwj26dtdjc7mVanpnvSyw
         GyBh49ehXVgkeSZlH0kIDHZDY2SJi1+YcPZnaItFJhby7Ys2IF8CRDekyPnaP160nFex
         1tcrhYfo1WYtJMbXW18OQ93r2Y6Wez3wtGGN0pL4O68kfxB32J9PXW9/IcJ23OzGWwMV
         SGC2F7hMzpGdlS5tGuh4iJeOv6PujjcJoJa/99xC0+XiLxEFpzbkl9uLlg40jUol3x08
         Yvxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OTkfSjNf;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id p200si68530wmg.4.2017.09.28.04.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 04:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OTkfSjNf;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id i131so1463029wma.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 04:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=i/0dukjfID1+iPwFz/r2UYY8VGojINezdN0SUJTkxWk=;
        b=OTkfSjNf8pgYnzcT64PKqlwLr2FuXFFBF1KcmR0LYxEVevGtaa+o1v5gjb9Ko14HJM
         sgqi5GeyO4CiuWYhrmWlT2FkQZUwaL85wafFHY97+L5FdRqHwWzSFtEEb57J1IIJt7rr
         wPJHhPZzcitusLZ36d3cB4ISbVnaZ5wfAxgtG9t4KArSM8eVVKRcgfR0z7cuorNMkU9W
         EwKjP+PerEZ1nPX9wVk8Mic/Hr6z9m0QG21Rsqg/07L1nJ9yMaR5drcTIuJjYSvxpQy6
         DyY1fN6dogd/KKaulW3ElY+iMD1xQmDFCwE1a8ErUjIVWCSX/7Czqpd1dsLZk7BlPg56
         vBXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=i/0dukjfID1+iPwFz/r2UYY8VGojINezdN0SUJTkxWk=;
        b=PF5Xh7LH9k9PwCeCQ6t2dvuPLDYY6q+Bbaqv+q+S8SE++jOvDMxyJN3gkWj5hFg4eG
         PIyZZyuj/Ya68El0+G+Vcr4QZqtcGnJTWQ5Oelfi53/gX6VLaQ2xmWma7Byqv/GYh/Yp
         1diyr6QxqfAfelr2f91/La5IjqYRl8GBuR0sEy/X+UXxGnsOu40AVBIltuNb+Z+hwZVR
         4WBsiBrXBOyC6NzTEaVVHPQGjYQ8OATopg7/+8qAE/kEnULJNMXEkKhbal5Jpgphr6F+
         dz2hnHiDqelPtOX6JwdtKy+4BxPLiH6qK0LeMruPEHiF4m0vN8QjiE5eJTzAVjSRd4N9
         LSBw==
X-Gm-Message-State: AHPjjUjmU3sM6BbE26iSSHa6AacmN7vNde8JstRLqmb6gD0C5F0YZITl
	eokVxHbqEFr8iroKiatGulOCKfF4
X-Google-Smtp-Source: AOwi7QBhbMXEkqWfbRbXYHX2IxnhdJXQD5qsRtogMNoi8wNk/jbfHdCIFKaYuFWB+Q61FfDaZY9PiQ==
X-Received: by 10.28.20.80 with SMTP id 77mr665608wmu.154.1506596552156;
        Thu, 28 Sep 2017 04:02:32 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id a79sm280866wma.38.2017.09.28.04.02.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 04:02:31 -0700 (PDT)
Date: Thu, 28 Sep 2017 04:02:30 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: Remove typedef struct
Message-ID: <20170928110230.GA11755@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes typedef from struct and renames it from "typdedef struc vchiq_2835_state_struct" to "struct vchiq_2835_state" as per kernel coding standards.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 12b0e0d..ee00f51 100644
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
@@ -206,12 +206,12 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
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
@@ -219,11 +219,11 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
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


