X-GM-THRID: 6330674938515554304
X-Received: by 10.66.85.104 with SMTP id g8mr8073270paz.33.1473975151764;
        Thu, 15 Sep 2016 14:32:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls4750182otd.46.gmail; Thu, 15 Sep
 2016 14:32:31 -0700 (PDT)
X-Received: by 10.200.35.252 with SMTP id r57mr8087074qtr.30.1473975151440;
        Thu, 15 Sep 2016 14:32:31 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si3148762pfe.0.2016.09.15.14.32.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so2598266pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 14:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=p+Ke4G22JZun6TMt64I3jJqtz3feOSTOEQ/QtggV6xY=;
        b=QPxejpv5gsN32Pj20y5O7kXBRDPhLd1ILPyo0pitoRU/VkC+MkrTc/nJNwUQesqwg3
         ho1lUwKNenyst/X6tvAhNk2UNe/Hs3zItfr1cR+XKuuMTkdZxMHLEs8ID69jn/nyqKuM
         OKUVyC0MioJUArhji930rm9GNIN1NUg1dQHx4XmDzLen48cLJnOwgVrxK8hL9pYjsYtp
         8GuNIzb2RZEEIEaFN+S7upqYRWeSWsGyMq9wNjILbRTf6dQF/IweouZedJpFLw0a3HkO
         9TC2oTyey5LPzKJIxrdt6axQzll8jW4NN5zLJ9/yuwHJHqQG+EM1Mrn3FJU1nFHGCA96
         eubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=p+Ke4G22JZun6TMt64I3jJqtz3feOSTOEQ/QtggV6xY=;
        b=avbIFenZ8BvX/x5ZzCE1GQlqI7vj2UsAxhQbwMauxpUBgFDUxwWA29paj5N6q2OouD
         oKim2sVLw+WoGtzKPT8cDwPxMHDgNA1RJ+9Pv6dZE7A8YZUDHVCKtQqeOXE4h1Esi/ZN
         qxAmdyAahri//cI6kPUbRgl9IMVYC6iLYIZdLw9tXRFj4GyjFEQhl3t5IJXX578KTSPt
         7FIA552JLjDSZI2vRmTkUCxoSHku4IIiMoCQFGe80mqpTSP72tlEwQlZiCbAkJZzSaLT
         xT5CflZ9Jb8+64GTA/0fOSgY8fBbJJjgG1P46MSvBEUCUayyES6PMnUBtHv7sH2L5i5L
         XTuQ==
X-Gm-Message-State: AE9vXwMAbH7fuoAyLqmCfNVeseGKTJGNs+wtDxHuapC+zwglMlUnsHPQE0d7XhBNUk0NHg==
X-Received: by 10.66.88.227 with SMTP id bj3mr18033047pab.113.1473975151196;
        Thu, 15 Sep 2016 14:32:31 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f195sm47231985pfa.26.2016.09.15.14.32.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:32:30 -0700 (PDT)
Date: Fri, 16 Sep 2016 03:02:21 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/5] staging: sm750fb: Add blank line after declarations
Message-ID: <fa0e9f0f8ad81718bc561337284d7aa6f6a5ffca.1473975000.git.aquannie@gmail.com>
References: <cover.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is preferred to add a blank line after function, struct, union and enum
declarations for better readability. Issue detected by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.h    | 3 +++
 drivers/staging/sm750fb/ddk750_display.h | 1 +
 drivers/staging/sm750fb/ddk750_mode.h    | 2 ++
 drivers/staging/sm750fb/ddk750_power.h   | 1 +
 drivers/staging/sm750fb/sm750_cursor.c   | 3 +++
 5 files changed, 10 insertions(+)

diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index 0891384..5ef8aad 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -14,6 +14,7 @@ typedef enum _logical_chip_type_t {
 	SM750,
 	SM750LE,
 }
+
 logical_chip_type_t;
 
 typedef enum _clock_type_t {
@@ -23,6 +24,7 @@ typedef enum _clock_type_t {
 	VGA0_PLL,
 	VGA1_PLL,
 }
+
 clock_type_t;
 
 typedef struct _pll_value_t {
@@ -35,6 +37,7 @@ typedef struct _pll_value_t {
 	unsigned long OD;
 	unsigned long POD;
 }
+
 pll_value_t;
 
 /* input struct to initChipParam() function */
diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index ca35aa1..04b8eba 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -97,6 +97,7 @@ typedef enum _disp_output_t {
 	do_CRT_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
 	do_CRT_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
 }
+
 disp_output_t;
 
 void ddk750_setLogicalDispOut(disp_output_t);
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index e846dc2..453c294 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -7,6 +7,7 @@ typedef enum _spolarity_t {
 	POS = 0, /* positive */
 	NEG, /* negative */
 }
+
 spolarity_t;
 
 
@@ -33,6 +34,7 @@ typedef struct _mode_parameter_t {
 	/* Clock Phase. This clock phase only applies to Panel. */
 	spolarity_t clock_phase_polarity;
 }
+
 mode_parameter_t;
 
 int ddk750_setModeTiming(mode_parameter_t *, clock_type_t);
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 5963691..c777d67 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -7,6 +7,7 @@ typedef enum _DPMS_t {
 	crtDPMS_SUSPEND = 0x2,
 	crtDPMS_OFF = 0x3,
 }
+
 DPMS_t;
 
 #define setDAC(off) {							\
diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index d622d65..77563dc 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -54,6 +54,7 @@ void hw_cursor_enable(struct lynx_cursor *cursor)
 	reg = (cursor->offset & HWC_ADDRESS_ADDRESS_MASK) | HWC_ADDRESS_ENABLE;
 	POKE32(HWC_ADDRESS, reg);
 }
+
 void hw_cursor_disable(struct lynx_cursor *cursor)
 {
 	POKE32(HWC_ADDRESS, 0);
@@ -65,6 +66,7 @@ void hw_cursor_setSize(struct lynx_cursor *cursor,
 	cursor->w = w;
 	cursor->h = h;
 }
+
 void hw_cursor_setPos(struct lynx_cursor *cursor,
 						int x, int y)
 {
@@ -74,6 +76,7 @@ void hw_cursor_setPos(struct lynx_cursor *cursor,
 		(x & HWC_LOCATION_X_MASK));
 	POKE32(HWC_LOCATION, reg);
 }
+
 void hw_cursor_setColor(struct lynx_cursor *cursor,
 						u32 fg, u32 bg)
 {
-- 
2.7.4


