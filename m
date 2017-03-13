X-GM-THRID: 6397018299173961728
X-Received: by 10.99.43.2 with SMTP id r2mr5127649pgr.145.1489421909623;
        Mon, 13 Mar 2017 09:18:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls573521otd.12.gmail; Mon, 13 Mar
 2017 09:18:29 -0700 (PDT)
X-Received: by 10.129.88.85 with SMTP id m82mr15785125ywb.97.1489421909233;
        Mon, 13 Mar 2017 09:18:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si3162053pfb.7.2017.03.13.09.18.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so18488162pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5Mpnn8x+r4kbUJw3SKWAh0bi3OA1FXolh88E7gIl1zw=;
        b=MtscO9vTniBUlOIkyEmFDQjtJTkhcg6mVlYnsmPIUoi1KEHytAM87IgsMTIb9DCIC2
         NHGdR0itwscZzp526oFjXMOBnc8k1a+f3jsuYiWhdc0OtGei5cLLme99fXtIlzEXvKCY
         zzHhA132Xu+41GbDG5A/5Sxehcc9RknaJnTqwRX/x3RGmuUKiA53NErz0heYQrchX2HW
         GIwmJIR8g22sin3AEPsE64FqnyuM7M+5nouTpw8juNbfC9ahAqO16aVT8mAZjHBqHJQd
         Uz6I/PVItLW6py462VVeRWg9IAc1zgSJQf2CElNOYlIXBHr6l/aUTlMfKE4cgo5e5Aen
         JuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5Mpnn8x+r4kbUJw3SKWAh0bi3OA1FXolh88E7gIl1zw=;
        b=sPYdBdhLJ4rTdFBZ5zMGrAK6lMYLMhNKbQoSVIqDm9csNberxQIUWXbuvEZmJVIOki
         fk7LBzbMmUj9mczo0T8vd0Zk/3vrkojkU/ccb9us0qynykHhhUth0dKslTaU64MZmHnf
         lcLpq7Akkpfe9OyUy30upcgtVO4eeSfOuqmqvFIU47v2Y1HlEiCwgRFN4KuByXhvQhx8
         FNKsEgvzw0qYGlxRmAMbjm5kn4RnEAz5CDE4J7oWgufH5zu6TpCCJjCXDfOMLwhUoYYv
         PRylr/57Wb7QonnI9DfLe/QMt8H0H0/nk2KSWFIK5QCyXLSGwsqk+f3pjv9VVY8t8KPN
         iJiA==
X-Gm-Message-State: AMke39nNW/kN0P/3NyVRj47IK/46pvgXaFupxJkR/jE365lTZ/MDYkv8BlZKxM4crrwckQ==
X-Received: by 10.84.197.3 with SMTP id m3mr48222414pld.89.1489421908932;
        Mon, 13 Mar 2017 09:18:28 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u78sm33583512pfa.101.2017.03.13.09.18.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:18:27 -0700 (PDT)
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
Subject: [PATCH v2 4/4] staging: sm750fb: Remove typedefs
Date: Mon, 13 Mar 2017 21:48:00 +0530
Message-Id: <20170313161800.17338-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313161800.17338-1-arushisinghal19971997@gmail.com>
References: <20170313161800.17338-1-arushisinghal19971997@gmail.com>

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


