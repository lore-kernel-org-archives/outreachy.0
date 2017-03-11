X-GM-THRID: 6396076706969419776
X-Received: by 10.99.139.202 with SMTP id j193mr6473095pge.151.1489202671936;
        Fri, 10 Mar 2017 19:24:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls1683618otf.16.gmail; Fri, 10 Mar
 2017 19:24:31 -0800 (PST)
X-Received: by 10.157.31.115 with SMTP id x48mr8456024otx.95.1489202671594;
        Fri, 10 Mar 2017 19:24:31 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y203si1692822pfb.0.2017.03.10.19.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:24:31 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so12696408pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RUek8EdKs5Iyt24DUoRB4SQiNrskwcFxQ1jFwryD6aI=;
        b=j+HBUq0GZBoi77NL/W3/zzzeq9IN3cMRaaezBwmmh+2oMEu+pdKpHh/jRqz3ZL6jV0
         Jz2yTu82FbEbz7/Ng8jlxhGxaZAHuzJvzioUZ4V6RuZjSOlRsoJLIs4odRFl7VyE3jSF
         M3l77CXvFmKeTD270RshtE1vhJ+c+HWB9xjx92ND6TSrvfx8L0sVvoNr4d1sPk4lywjM
         H3Ncks9AAQK/6bX9woLLcFGI9XXRvzAcJv5+rxB88K6PeDZaJ5BOt/5xXoIPnnGEY2ig
         41cCYS1La3mxEOSld0lwcmqX0HwQgoFAoqpDvefKmMo4dKLRwPw+WZUUfkdJEH0mpDmN
         4M9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RUek8EdKs5Iyt24DUoRB4SQiNrskwcFxQ1jFwryD6aI=;
        b=XY9vOoXpw6zxHZxaN7vwUnU3wFTK4XIOmPPd/Bb24ueWwZ6E6k0Fe8YYumAJhJ5964
         Xr+wWHmx12ZabL6fzR/taWU5hNH4N9HZegn+wT6hwlve/reAj3fwnIRTMcv4n8sSbIWl
         OAYfXLZ9LzfIXOPJP0t0DtmT2hiLATb6tHghliy/b+vRnrNnYB67KHnDOQ+zD73n3g+y
         g3GxsTC+Vgj7y0z8c5JWRE1XNQjVaDb2HwKlODugSy3g5fVJE9b7lIj0s0PwgQxpZTPY
         jLFhqviDeD7Rhf3CPKLFx7bIvnLiiSlbpKNiLekxO55p99I5hkSevHzXszoal9/XJpSS
         SInQ==
X-Gm-Message-State: AMke39krkJncwcI6wLJ+WIJDX9jHXGAKNvIP27epUxSrEBEA3nSTpa7icKu58ju/eBSj8A==
X-Received: by 10.84.141.1 with SMTP id 1mr30756662plu.178.1489202671304;
        Fri, 10 Mar 2017 19:24:31 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l72sm21020895pfi.93.2017.03.10.19.24.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:24:30 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 3/3] staging: sm750fb: Alignment should match open parenthesis
Date: Sat, 11 Mar 2017 08:54:10 +0530
Message-Id: <20170311032410.8265-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170311032410.8265-1-arushisinghal19971997@gmail.com>
References: <20170311032410.8265-1-arushisinghal19971997@gmail.com>

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


