X-GM-THRID: 6397018299173961728
X-Received: by 10.99.123.7 with SMTP id w7mr15616811pgc.133.1489421904553;
        Mon, 13 Mar 2017 09:18:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls4578856otg.40.gmail; Mon, 13 Mar
 2017 09:18:24 -0700 (PDT)
X-Received: by 10.157.39.196 with SMTP id c62mr14301198otb.70.1489421904123;
        Mon, 13 Mar 2017 09:18:24 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si3138102pfa.4.2017.03.13.09.18.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:18:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so18557299pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RUek8EdKs5Iyt24DUoRB4SQiNrskwcFxQ1jFwryD6aI=;
        b=txi4xYI2ANvXrk5sAlX56Sqpe3OxWjqAN0QpltUZgeZ5HFgnCT+8EqM4M5HkCPGDls
         az1qIZ23PxmCP6G0hVdTtiRTa+i6ohc38gOJftm6r59TYHbeoTmR32OAPYXECSeGKBM4
         yZIMi3a2fu8GGNvwJbfv2NWgF9N4j4CX/d+cK7pMU5gFiTKNVPCTAVbmIeF/pVC8b+Bn
         15b4hWbcRKubFfLA6jGk/hEHtGtV0SrfSWfOC+T9fr9giRz3OKFRsLBd8vEPuH9O3iHC
         Tn06z0JOiB3ZvsPHkZ6kfZvUwzY/p/9T30XZTvLC1z2jAtIjpbuoB2hXLdSBK0mJ4WhB
         faLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RUek8EdKs5Iyt24DUoRB4SQiNrskwcFxQ1jFwryD6aI=;
        b=HMqzYqMb/sbeWZMJp7FO049ZR79Fo6ZCRvzu0zVClm5DscBTu1bCc9+Va8lGsv04Rq
         iYtuQe7z2Nv85E1QccR5wooiRBuOa3sTnJPOmvpMoQDFf2JjR0Qb9+qQ5XAHynNa9J4r
         g3vhYlS4X+3lMCjDe0Khp07p1scsr1wLyNAyhG3VHAdEwvLt32iGGwCqGnK28/VdD7vO
         hpOGC37HJu3pgDuwb9nelNEoD0jv0UJPz4hbKCuZZgayyDdz40yLARVatYU2pJhdj74C
         iJoX1QUVpuCIySlCH/Lu18/yLOs5mSicn8BPOBwLB0nFall2HOsLSiKOWLQqqwk2dOve
         djow==
X-Gm-Message-State: AMke39lVzKPcTP1uT9ksVSgg1b5Zu4ktdRAW/+Kfx8Kbm+jfuYbC5tq8L3fSeBVsinJRTQ==
X-Received: by 10.99.189.9 with SMTP id a9mr37868544pgf.190.1489421903848;
        Mon, 13 Mar 2017 09:18:23 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e68sm33588460pfa.85.2017.03.13.09.18.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:18:22 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 3/4] staging: sm750fb: Alignment should match open parenthesis
Date: Mon, 13 Mar 2017 21:47:59 +0530
Message-Id: <20170313161800.17338-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313161800.17338-1-arushisinghal19971997@gmail.com>
References: <20170313161800.17338-1-arushisinghal19971997@gmail.com>

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 79 +++++++++++++++++------------------
 1 file changed, 39 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 45af806c8d55..eea5aef2956f 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -28,9 +28,9 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 	poke32(CRT_AUTO_CENTERING_TL, 0);
 
 	poke32(CRT_AUTO_CENTERING_BR,
-		(((y - 1) << CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT) &
-			CRT_AUTO_CENTERING_BR_BOTTOM_MASK) |
-		((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
+	       (((y - 1) << CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT) &
+		CRT_AUTO_CENTERING_BR_BOTTOM_MASK) |
+	       ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
 
 	/*
 	 * Assume common fields in dispControl have been properly set before
@@ -72,8 +72,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 }
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam,
-						struct pll_value *pll)
+static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -83,32 +82,32 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
 		/* programe secondary pixel clock */
 		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
 		poke32(CRT_HORIZONTAL_TOTAL,
-			(((pModeParam->horizontal_total - 1) <<
-				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
-				CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
-			((pModeParam->horizontal_display_end - 1) &
-				CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
+		       (((pModeParam->horizontal_total - 1) <<
+			 CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
+			CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
+		       ((pModeParam->horizontal_display_end - 1) &
+			CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
 
 		poke32(CRT_HORIZONTAL_SYNC,
-			((pModeParam->horizontal_sync_width <<
-				CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
-				CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
-			((pModeParam->horizontal_sync_start - 1) &
-				CRT_HORIZONTAL_SYNC_START_MASK));
+		       ((pModeParam->horizontal_sync_width <<
+			 CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
+			CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
+		       ((pModeParam->horizontal_sync_start - 1) &
+			CRT_HORIZONTAL_SYNC_START_MASK));
 
 		poke32(CRT_VERTICAL_TOTAL,
-			(((pModeParam->vertical_total - 1) <<
-				CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
-				CRT_VERTICAL_TOTAL_TOTAL_MASK) |
-			((pModeParam->vertical_display_end - 1) &
-				CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
+		       (((pModeParam->vertical_total - 1) <<
+			 CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
+			CRT_VERTICAL_TOTAL_TOTAL_MASK) |
+		       ((pModeParam->vertical_display_end - 1) &
+			CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
 
 		poke32(CRT_VERTICAL_SYNC,
-			((pModeParam->vertical_sync_height <<
-				CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
-				CRT_VERTICAL_SYNC_HEIGHT_MASK) |
-			((pModeParam->vertical_sync_start - 1) &
-				CRT_VERTICAL_SYNC_START_MASK));
+		       ((pModeParam->vertical_sync_height <<
+			 CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
+			CRT_VERTICAL_SYNC_HEIGHT_MASK) |
+		       ((pModeParam->vertical_sync_start - 1) &
+			CRT_VERTICAL_SYNC_START_MASK));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
@@ -140,25 +139,25 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
 		poke32(PANEL_HORIZONTAL_TOTAL, reg);
 
 		poke32(PANEL_HORIZONTAL_SYNC,
-			((pModeParam->horizontal_sync_width <<
-				PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
-				PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
-			((pModeParam->horizontal_sync_start - 1) &
-				PANEL_HORIZONTAL_SYNC_START_MASK));
+		       ((pModeParam->horizontal_sync_width <<
+			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
+			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
+		       ((pModeParam->horizontal_sync_start - 1) &
+			PANEL_HORIZONTAL_SYNC_START_MASK));
 
 		poke32(PANEL_VERTICAL_TOTAL,
-			(((pModeParam->vertical_total - 1) <<
-				PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
-				PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
-			((pModeParam->vertical_display_end - 1) &
-				PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
+		       (((pModeParam->vertical_total - 1) <<
+			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
+			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
+		       ((pModeParam->vertical_display_end - 1) &
+			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
 
 		poke32(PANEL_VERTICAL_SYNC,
-			((pModeParam->vertical_sync_height <<
-				PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
-				PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
-			((pModeParam->vertical_sync_start - 1) &
-				PANEL_VERTICAL_SYNC_START_MASK));
+		       ((pModeParam->vertical_sync_height <<
+			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
+			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
+		       ((pModeParam->vertical_sync_start - 1) &
+			PANEL_VERTICAL_SYNC_START_MASK));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
-- 
2.11.0


