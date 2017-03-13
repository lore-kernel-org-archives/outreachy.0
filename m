X-GM-THRID: 6397088114020450304
X-Received: by 10.13.194.199 with SMTP id e190mr18536561ywd.93.1489438162561;
        Mon, 13 Mar 2017 13:49:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls8973531otg.18.gmail; Mon, 13 Mar
 2017 13:49:22 -0700 (PDT)
X-Received: by 10.157.2.226 with SMTP id 89mr14739772otl.72.1489438162262;
        Mon, 13 Mar 2017 13:49:22 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si3320097pfd.3.2017.03.13.13.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so19549295pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RUek8EdKs5Iyt24DUoRB4SQiNrskwcFxQ1jFwryD6aI=;
        b=Mdv+UBfc2gflgcbh7xv8S51ddvxpHUcBoEevD/RXpVrfZY/sgRGvPnvqGMQlqKn0wH
         NVZucjT+/p1h+PpiK98fXgJ9prelvZPbHTjONcdjBR5xBPfF2R8aipZuztITDVBqkAWo
         dLN+Nlf2NgMIqzLKBU5lPBKVecDmd7MnAlw3McY3uGyAQDw3J2rcF8OVNUdeMp+1iujd
         f1DBaVw21AwspCyae+EioeISoN7JbX9nLdgrdcMYHir4sXtnZwiIlxd5nR64bBWAPl6L
         gEDpJZttMzqSD78M8SiOKgh3RKGbSd8oVYlzYKq8vY2VnvPlru8We4gwS/9szDmShTkZ
         g1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RUek8EdKs5Iyt24DUoRB4SQiNrskwcFxQ1jFwryD6aI=;
        b=IqJkDpH0eWgge/6z8LJKauHyn7qZZoaK3/BlCkVR93iwjhrpY1oqBRV/IEOGWNxbTb
         TbZ7zknHe7z2uGlf/eY0GRZx3qCZADc6hpPGRUAsc3HiHBpMJupl1v5R7XR17iXBhYQ5
         UEvlAxsqL+5Yg6r29LjTFSuWjSJU5YLkQlqMKajl6qLWfiKGFSEW9M6sEtigyxqA69u+
         WL4pnxaQErtpCsiHa9L9hWrKTe52RCZ3p2lBNWAawEQcHdgEOxQeY66nwKL6NYcGlFRs
         EyKrVRsZf8mqTfGnTDFDvGfIzDIpVMNRJLY1b1nZrufu/WznMtgANzQElHi2qRdM6Lap
         Ksbg==
X-Gm-Message-State: AMke39kNKt6O89rSmNLLvVmj8Msfes+uCsuVU2wiAQoYod1a5L5EepKxKvluo0209WbL+g==
X-Received: by 10.84.129.3 with SMTP id 3mr51221063plb.150.1489438161980;
        Mon, 13 Mar 2017 13:49:21 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w29sm34232165pfi.131.2017.03.13.13.49.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:49:20 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v3 3/4] staging: sm750fb: Alignment should match open parenthesis
Date: Tue, 14 Mar 2017 02:18:49 +0530
Message-Id: <20170313204853.24675-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313204853.24675-1-arushisinghal19971997@gmail.com>
References: <20170313204853.24675-1-arushisinghal19971997@gmail.com>

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


