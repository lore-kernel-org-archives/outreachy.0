X-GM-THRID: 6399911887326150656
X-Received: by 10.107.131.35 with SMTP id f35mr8511806iod.68.1490095611823;
        Tue, 21 Mar 2017 04:26:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls1618270otb.2.gmail; Tue, 21 Mar
 2017 04:26:51 -0700 (PDT)
X-Received: by 10.129.41.84 with SMTP id p81mr18774631ywp.36.1490095611492;
        Tue, 21 Mar 2017 04:26:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s67si1111557pfs.4.2017.03.21.04.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n11so10196046pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GXTETvuq+rlDef82v4e70nY67EJxm0WOMUBaTbJhJo4=;
        b=AyZKWUD1DTPOJx4Ex6jnA9tQOrUZvqjH1RJNgGqyIzBFUWrlrnpcz2yEXyEEJC4+I7
         CcLVNWx8fn19YhzyW1trBIOw7wz6rBctzHpd3JUC7cwwNfgF2qYj3T9szeKXFqHgP3e5
         Rx/cySW2WK86IcRFBhuni3DhwBgOIpEd6IIXgc70NHkzLAi2mcp6lNWCbzrQMn2lCbw0
         nEj/iHB3V6yN+Yb2b/kfbV01Hhv4S0g7lrnx/A8GmRcgLg8TPrRj4TjbOFmio1wziaTp
         YM+jE86MQzeNarC5uzamZKo4jnO1rBNYUM8v12096fOhHEEE4LdGrWSxEwaS1tQboPdi
         FGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=GXTETvuq+rlDef82v4e70nY67EJxm0WOMUBaTbJhJo4=;
        b=ril/D98FikLIAZCn02QxgVQB9Eit3sH7iV9T03cVunZIUxRtmxigcXCBxhFt2tBcXG
         lN7Dl/8+2Bk1+p6+hLzGgRQTweBnlrsrJmIcGQlMViyF0cCYF+Fr5XdA2UzB10d6+mPR
         rQBlZNEwqncjTixf8iNUAPw1wchJvMoH7nY7TXHSTPKJ649WMmE9nxNky8Qg61hl208p
         ykvykK7/QcC32qDlHI+F8ScE9zu5+FEBUwBS6TS8rb9fi4U2dNjA25EzyKoWlstltS05
         2ZtHyqvdosbve20qF2GVX8pozZKGvTw1f8wNfGsww/7ry65KBY87xP+vYlwfk6QJqa3c
         gBYQ==
X-Gm-Message-State: AFeK/H0yONTHbSIRV0vs29OTictdA6dtg/VyXFnk4opj6S0SiK0p7258IQfyjyOKi6pqQw==
X-Received: by 10.84.199.170 with SMTP id r39mr46556351pld.144.1490095611208;
        Tue, 21 Mar 2017 04:26:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l29sm29206820pfb.118.2017.03.21.04.26.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:26:50 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/2] staging: sm750fb: Remove typedefs from struct
Date: Tue, 21 Mar 2017 16:56:38 +0530
Message-Id: <20170321112639.32495-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321112639.32495-1-arushisinghal19971997@gmail.com>
References: <20170321112639.32495-1-arushisinghal19971997@gmail.com>

This patch removes typedefs from structure and renames them as
per kernel coding standards.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 8 +++++---
 drivers/staging/sm750fb/ddk750_mode.h | 8 +++-----
 drivers/staging/sm750fb/sm750_hw.c    | 2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 37b5d4850fb9..bb673e18999b 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -12,7 +12,8 @@
  * HW only supports 7 predefined pixel clocks, and clock select is
  * in bit 29:27 of Display Control register.
  */
-static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam, unsigned long dispControl)
+static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
+						  unsigned long dispControl)
 {
 	unsigned long x, y;
 
@@ -72,7 +73,8 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 }
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
+static int programModeRegisters(struct mode_parameter *pModeParam,
+				struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -203,7 +205,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
 	return ret;
 }
 
-int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
+int ddk750_setModeTiming(struct mode_parameter *parm, clock_type_t clock)
 {
 	struct pll_value pll;
 	unsigned int uiActualPixelClk;
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index 6d204b8b4a01..9dc4d6c5a779 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -9,7 +9,7 @@ typedef enum _spolarity_t {
 }
 spolarity_t;
 
-typedef struct _mode_parameter_t {
+struct mode_parameter {
 	/* Horizontal timing. */
 	unsigned long horizontal_total;
 	unsigned long horizontal_display_end;
@@ -31,9 +31,7 @@ typedef struct _mode_parameter_t {
 
 	/* Clock Phase. This clock phase only applies to Panel. */
 	spolarity_t clock_phase_polarity;
-}
-mode_parameter_t;
-
-int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock);
+};
 
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


