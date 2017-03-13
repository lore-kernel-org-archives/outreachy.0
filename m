X-GM-THRID: 6397088114020450304
X-Received: by 10.99.110.73 with SMTP id j70mr17170036pgc.143.1489438168592;
        Mon, 13 Mar 2017 13:49:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.2 with SMTP id a2ls1844479itc.15.canary-gmail; Mon, 13
 Mar 2017 13:49:26 -0700 (PDT)
X-Received: by 10.99.55.71 with SMTP id g7mr18059376pgn.157.1489438166953;
        Mon, 13 Mar 2017 13:49:26 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si3352174pfx.8.2017.03.13.13.49.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so19499521pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5Mpnn8x+r4kbUJw3SKWAh0bi3OA1FXolh88E7gIl1zw=;
        b=iFFZlviyg6U8P9cOogeTaW9+EAVljVhvqOg6O7fF3deefrJcB2FIzjJQ5nMRrt36vK
         XVxLPjJMvi6SzsRaPKtorcGh/y1EjgVuPA2Ya/Nfq5dFvwn6ANpCzONKPNdn3b3yJfTF
         7YB64sx5es5575AFEhpkf8JRW0UBM5hNZBIFatnIxuDGJiAYl15pudYoqQ27RTlUtiih
         YKEwMhhWZdpDzfhLt0wAfIl18kEZ2MbCvW3Mp+r2uAiDL3wu9r2sIbB2Vaapeuf8l/Jw
         J8f89dhfRw2Y1BL50PKKUGS9iJXmQI864hG/qNfhjBmRXDj1OjDI7VOOU4IUYg2KOGXd
         Lotg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5Mpnn8x+r4kbUJw3SKWAh0bi3OA1FXolh88E7gIl1zw=;
        b=TnsvF6o3jGm51UOIrJee57YPynakpMFSOz/cxG66eDZg6K+nsYlMO3UqwNLzMhtf9e
         Th1z5t6p06mWSgPXMtLbkEsLnp8jM9a+pus7/YUuRIG0XZew+VlnMEOE4xcE8MoMbBN0
         pZ1hM4rNfyvhjAZeSigmI2t+/uyk7I7N0GKO0ybD4B584Lc2kHLkTC55IACgoyQMEqey
         wdGYHfj+rMYhHOBLUnyttYlIWKqiTYWrFK5IbH2H3vCk2JEUI4ICm8feJeBwyXma4uXe
         fNHKo7lFX2qOKFZP1OGsxPOgWaYVbvjSzRGMN/2yHhMqwUK8mPzOZRPlAbGPk2JTu1Qm
         rNDA==
X-Gm-Message-State: AMke39lVOhpk5liaLYqzBZCFy4PPpdIkrxGGR+EOCFr29XwMEkfxZCTrUBTecUll9qP1Ug==
X-Received: by 10.84.192.137 with SMTP id c9mr50833397pld.17.1489438166713;
        Mon, 13 Mar 2017 13:49:26 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o189sm34555923pga.12.2017.03.13.13.49.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:49:25 -0700 (PDT)
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
Subject: [PATCH v3 4/4] staging: sm750fb: Remove typedefs
Date: Tue, 14 Mar 2017 02:18:50 +0530
Message-Id: <20170313204853.24675-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313204853.24675-1-arushisinghal19971997@gmail.com>
References: <20170313204853.24675-1-arushisinghal19971997@gmail.com>

This patch removes typedefs from structures and renames them as per
kernel coding standards.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c |  6 +++---
 drivers/staging/sm750fb/ddk750_mode.h | 20 +++++++++-----------
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 3 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index eea5aef2956f..25da678179f7 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -12,7 +12,7 @@
  * HW only supports 7 predefined pixel clocks, and clock select is
  * in bit 29:27 of Display Control register.
  */
-static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam, unsigned long dispControl)
+static unsigned long displayControlAdjust_SM750LE(struct _mode_parameter_t *pModeParam, unsigned long dispControl)
 {
 	unsigned long x, y;
 
@@ -72,7 +72,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 }
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
+static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -198,7 +198,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
 	return ret;
 }
 
-int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
+int ddk750_setModeTiming(struct _mode_parameter_t *parm, clock_type_t clock)
 {
 	struct pll_value pll;
 	unsigned int uiActualPixelClk;
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index 6d204b8b4a01..5f8347d87800 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -3,37 +3,35 @@
 
 #include "ddk750_chip.h"
 
-typedef enum _spolarity_t {
+enum _spolarity_t {
 	POS = 0, /* positive */
 	NEG, /* negative */
-}
-spolarity_t;
+};
 
-typedef struct _mode_parameter_t {
+struct _mode_parameter_t {
 	/* Horizontal timing. */
 	unsigned long horizontal_total;
 	unsigned long horizontal_display_end;
 	unsigned long horizontal_sync_start;
 	unsigned long horizontal_sync_width;
-	spolarity_t horizontal_sync_polarity;
+	enum _spolarity_t horizontal_sync_polarity;
 
 	/* Vertical timing. */
 	unsigned long vertical_total;
 	unsigned long vertical_display_end;
 	unsigned long vertical_sync_start;
 	unsigned long vertical_sync_height;
-	spolarity_t vertical_sync_polarity;
+	enum _spolarity_t vertical_sync_polarity;
 
 	/* Refresh timing. */
 	unsigned long pixel_clock;
 	unsigned long horizontal_frequency;
-	unsigned long vertical_frequency;
+	enum _spolarity_t vertical_frequency;
 
 	/* Clock Phase. This clock phase only applies to Panel. */
-	spolarity_t clock_phase_polarity;
-}
-mode_parameter_t;
+	enum _spolarity_t clock_phase_polarity;
+};
 
-int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock);
+int ddk750_setModeTiming(struct _mode_parameter_t *parm, clock_type_t clock);
 
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index fab3fc9c8330..4233e0bf12a7 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -252,7 +252,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 {
 	int ret, fmt;
 	u32 reg;
-	mode_parameter_t modparm;
+	struct _mode_parameter_t modparm;
 	clock_type_t clock;
 	struct sm750_dev *sm750_dev;
 	struct lynxfb_par *par;
-- 
2.11.0


