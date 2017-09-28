X-GM-THRID: 6470878632393834496
X-Received: by 10.28.143.13 with SMTP id r13mr274870wmd.30.1506618836877;
        Thu, 28 Sep 2017 10:13:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.188.18 with SMTP id s18ls1298160wrg.9.gmail; Thu, 28 Sep
 2017 10:13:55 -0700 (PDT)
X-Received: by 10.28.157.82 with SMTP id g79mr282596wme.20.1506618835880;
        Thu, 28 Sep 2017 10:13:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506618835; cv=none;
        d=google.com; s=arc-20160816;
        b=OHmm4LFgg30F+dNm4kFf/+uhI/D2v3rHhtZnib6Ar9nQoY01mZ8xp7RHY/ShRGXabZ
         8N+TMgoHOPIWbdoaR+ijHfFUzl1oGqjoFonJvHbS6baBjWEI935HLNtikXyD0q3iIZOK
         YYOvYhQ4CTLTVOJBpmdduIZKvGqrwZ7L13uR+71AhfYhpZM+DrwShvKvAURDmb5oEY6R
         7Ctisn16BIBNJi7gKzMBJ63vj3eYgMhqz8B510ZQHsXJQm65KpO5uzChcSt0IrLibGLj
         9tlCH2j9tvXXGpk0C9b5sLmofzMXh8bPK80IvBL7B/usDDr+CDZmH/rDIZk1OCP+jMbq
         nRuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=aJ28Stru69OdbadPG7I6DvZJ7jeJGa6OfzxbCwWTNnQ=;
        b=NgL7QmWU1vBz2tYk1ijy6UvZ/7DQyIfESBVml0z3UUCBPrX2jaHxRozg6r245As02h
         uuVeIIrhAazJOEuLrwoRlZ4WhXA48RngBRV7D39xvb0XzP5FlPCVW9xL2t4NR4IrHX9U
         7mil1+ndV41diLfYak3dBwSpTDvojtcftB46+lfxyW4eL4ND5w6L0jauJPh79rRrIPdJ
         S9oxMs2QTzuc6J2vMnWHyLiIbsxwnKw03tY+IzqPCfSIWaM/ORsJn4gZmLQNpHGrVFlc
         rW/iUSs/Ou+inxHL8MbuBFfpuxU41tefoG0W1+NOe5K6+ZUdMfCCXWI9gTnYXbwV+HAq
         etFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QO6qys9Z;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id q145si323261wme.4.2017.09.28.10.13.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 10:13:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QO6qys9Z;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id i124so3603742wmf.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 10:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aJ28Stru69OdbadPG7I6DvZJ7jeJGa6OfzxbCwWTNnQ=;
        b=QO6qys9ZY+9ecxCY8biMi0apW4xjSStYURu6Mz8W8uLSDvqD/nG5A7e/0enhwLBzl3
         E7i149atMYIePqKOjL/ZagbAWY9X05IvWMj/4pIZDJ/MSwdGwcf00gtWRLjdqX2DLryt
         nlNCrxMJ0opsFOxyDkZZkzS4z04X8BZ383M5nAMviUJXLY2L4nLrqXgd1Am2IFJ5ow0n
         UDhz3E3nsnCU5ws4AIkXDSj8MCWHBmk6UTI0FJkDFU1409IXLhbkNNiORdPS88KE4/nm
         m8FJN1wzm2Kp+R61rH57gKXbjAkOF739sGIoiZ7wwPjr3uPhvjs4Jwy+/EyjrROcwflj
         i0Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aJ28Stru69OdbadPG7I6DvZJ7jeJGa6OfzxbCwWTNnQ=;
        b=RjpGTAxhuScQJJC0ZB2cPQGrrmkk6Hg9X301mX+oRQKRl5ugvEBig44Q0PAFAr4XFp
         o48YYkwd/D11YrSDKEGhk3gijOoFAnuTYE7RetKUUNRITPqP578h1+BxKBTPngYJIbEn
         pY6RcpsRjdJsoxBVRltUVmYMIkv4As+RqP/GQj3hDKlo1K3MMjvy5EL2t4BzZdo1itvW
         RwXJcMaYb3qDx+K0a8DxwbgCprLiYAmVHguhLaEdU9Iy63ayvEes6/I1MFtS0fX4ONB9
         8YHBMdXQ4hPydpxvbkHPrDHrwakhB8mLb0KiYH9QOosF4i8cVM+8AJrVzjjnTufQxcaE
         Qf+A==
X-Gm-Message-State: AMCzsaVvUTdm9Qf4gDof56xw+gQvN7SfzRClmSoxDmIeiEcC91DPwqAz
	QIRhkN/8nrM/Sy5ASq32aMQ=
X-Google-Smtp-Source: AOwi7QDl0zZourPjrPsFkShILwW7E73mJsXr/RLK7q+T37eyLnosAptkZWEfevjf7uilKwvGBfAv1g==
X-Received: by 10.28.23.76 with SMTP id 73mr1954649wmx.70.1506618835622;
        Thu, 28 Sep 2017 10:13:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id q16sm965043wrg.49.2017.09.28.10.13.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 10:13:55 -0700 (PDT)
Date: Thu, 28 Sep 2017 20:13:53 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vc04_services: Remove typedef struct
 vchiq_2835_state_struc
Message-ID: <20170928171352.GA4399@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes typedef from struct and renames it from "typedef
struct vchiq_2835_state_struct" to "struct vchiq_2835_state" as per
kernel coding standards.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Change in v2:
	- change the subject line
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 29702ea..a96bae0 100644
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
@@ -205,12 +205,12 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
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
@@ -218,11 +218,11 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
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


