X-GM-THRID: 6399206725724930048
X-Received: by 10.129.56.136 with SMTP id f130mr13025778ywa.150.1489931420955;
        Sun, 19 Mar 2017 06:50:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.194 with SMTP id 185ls3234885iof.19.gmail; Sun, 19 Mar
 2017 06:50:19 -0700 (PDT)
X-Received: by 10.99.124.27 with SMTP id x27mr3077311pgc.50.1489931419931;
        Sun, 19 Mar 2017 06:50:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si2227019pfb.0.2017.03.19.06.50.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 06:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id p189so8358486pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 06:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+E7+07m6HGbsj3bvo58U+Z/NwXBug81zMx9uWx8DDKI=;
        b=TCg8/xWcCauCTN7ctOtkV6fcMzqmxTUOcoWPcKEeNh/uIdoWlmiCcyuQDhuNu2XApj
         CqrHlB6s1Z5FVh+9TJJpKNuvL4Y+ggoEF9HvatZlfXpBn9S4MHCdDI1aI0roOs+MWV5b
         GtF3Ps3V3AkAdC2t5R/+B8iU8kTvY7hlxpsV2tyWQoTsDggsg9ocl9Z8ESGa6QqaxOMv
         HcQJabZaYUvJpYJjuliBqvff5tDlPnzDDN7E5t5Zmzgu2F21cJ6N4HA1Ot5ewJMEwRfD
         ovLS+z+ccTuVRRFIwGGr5WW6Trd6x/1tdl5YHEgDWUeVwoOiSDg9aUeHwm4LPUSnFHMN
         eHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+E7+07m6HGbsj3bvo58U+Z/NwXBug81zMx9uWx8DDKI=;
        b=pm0G3A9P4Hp1qpeeFHTBMHeBYjk3lxAc4QgXMqShWQYUqNveUl2KlwabRwbvFdlGDe
         bw2m1dDeoR+5Tt7x5vJVf4JYiaapdKfDBvAwktrMaT4MMvB//MPy/x/NFP0XIWqfq3bv
         acjN7/RqE+E452FncmEh9by1VHuvdFje1B8eOBuoWCNx9Px0481QxzPV4Ky4CJAcPOGI
         GfGsj6540wp8FmMigP8I5UUlpIdQ7Bal/i02niZO8Vh5GFfGtWawOV/j+KoF+EK8fzDi
         h/3KKLFClwtTHr7N1hqrlMCnl29xGt6mUZR7c87xCjvtHBuv3Lun3z29uQh/Ohbx4OOJ
         5p2w==
X-Gm-Message-State: AFeK/H2mb1cOBSkNEVVJkIfRD6pR2fELscQj+jB4Vo1Tjf0LunBIwfIbCxMDSggmt4k5kQ==
X-Received: by 10.98.34.211 with SMTP id p80mr28077056pfj.174.1489931419279;
        Sun, 19 Mar 2017 06:50:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m6sm27416510pfm.22.2017.03.19.06.50.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 06:50:18 -0700 (PDT)
Date: Sun, 19 Mar 2017 19:20:13 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging: sm750fb: Remove typedefs from structures and enum
Message-ID: <20170319135013.GA1349@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes typedefs from structure and enum and renames them as per
kernel coding standards.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v5
 - make the commit message more relevant.
 - remove prefix and suffix underscore.

 drivers/staging/sm750fb/ddk750_mode.c |  6 +++---
 drivers/staging/sm750fb/ddk750_mode.h | 18 ++++++++----------
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 3 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 5f18ce4d10de..61d339437764 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -12,7 +12,7 @@
  * HW only supports 7 predefined pixel clocks, and clock select is
  * in bit 29:27 of Display Control register.
  */
-static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam, unsigned long dispControl)
+static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam, unsigned long dispControl)
 {
 	unsigned long x, y;
 
@@ -72,7 +72,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 }
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
+static int programModeRegisters(struct mode_parameter *pModeParam, struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -207,7 +207,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
 	return ret;
 }
 
-int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
+int ddk750_setModeTiming(struct mode_parameter *parm, clock_type_t clock)
 {
 	struct pll_value pll;
 	unsigned int uiActualPixelClk;
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index 6d204b8b4a01..07cb3f14d1ce 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -3,26 +3,25 @@
 
 #include "ddk750_chip.h"
 
-typedef enum _spolarity_t {
+enum spolarity {
 	POS = 0, /* positive */
 	NEG, /* negative */
-}
-spolarity_t;
+};
 
-typedef struct _mode_parameter_t {
+struct mode_parameter {
 	/* Horizontal timing. */
 	unsigned long horizontal_total;
 	unsigned long horizontal_display_end;
 	unsigned long horizontal_sync_start;
 	unsigned long horizontal_sync_width;
-	spolarity_t horizontal_sync_polarity;
+	enum spolarity horizontal_sync_polarity;
 
 	/* Vertical timing. */
 	unsigned long vertical_total;
 	unsigned long vertical_display_end;
 	unsigned long vertical_sync_start;
 	unsigned long vertical_sync_height;
-	spolarity_t vertical_sync_polarity;
+	enum spolarity vertical_sync_polarity;
 
 	/* Refresh timing. */
 	unsigned long pixel_clock;
@@ -30,10 +29,9 @@ typedef struct _mode_parameter_t {
 	unsigned long vertical_frequency;
 
 	/* Clock Phase. This clock phase only applies to Panel. */
-	spolarity_t clock_phase_polarity;
-}
-mode_parameter_t;
+	enum spolarity clock_phase_polarity;
+};
 
-int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock);
+int ddk750_setModeTiming(struct mode_parameter *parm, clock_type_t clock);
 
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index fab3fc9c8330..baf1bbdc92ff 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -252,7 +252,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 {
 	int ret, fmt;
 	u32 reg;
-	mode_parameter_t modparm;
+	struct mode_parameter modparm;
 	clock_type_t clock;
 	struct sm750_dev *sm750_dev;
 	struct lynxfb_par *par;
-- 
2.11.0


