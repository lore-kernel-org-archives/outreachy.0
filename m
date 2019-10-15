X-GM-THRID: 6747862437229232128
X-Received: by 2002:a17:90a:4f86:: with SMTP id q6mr536727pjh.71.1571172755514;
        Tue, 15 Oct 2019 13:52:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8a8c:: with SMTP id x12ls100068pjn.5.gmail; Tue, 15
 Oct 2019 13:52:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwpQtYSVovn3J/LmDW52QGN/Uuv2QceS2VJkLanSX7Nq5SR74uxbBKJf86xF2ttcOhgXUq6
X-Received: by 2002:a17:902:900c:: with SMTP id a12mr26823403plp.30.1571172754188;
        Tue, 15 Oct 2019 13:52:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571172754; cv=none;
        d=google.com; s=arc-20160816;
        b=VpUwa2nyQVoM+Kv50u72iJMKtoy2c7D3L3WXG6uP0FMFhwS0PHd4HxsGnfXT48fw8J
         CXyVmVB2HAkd6Re+GB5gzkyrGX0wrBY35Adqn3lXXv3tysMf8cw4vV7DKuwcpCTGsGtl
         ocpkZrhDzvpPhstk+ZIm2KOiSnTzlGamtuOUI7ADbQpPj/p//Cab1v4ODPPEolvS9+79
         1XtbAbGp+ZS9myhUTXLM+/nEjBehfG1HFW5mBw3QlKpC3DXwQOOBzLfJFCLWr55DInND
         yOEk/Z3sd7AmczCLqo54q7am0CaZxD7mgIcbQH64sB14tGYCwkUNaygiydvd5vvJQ9af
         ukIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=A7UfjBm076vN5CuQx7YcOPLMg11b0FmGhO6xsSnZEU8=;
        b=WYTf3I5yaxNY6h8vbuEBubpgiLQ7MBCXvuYDRJmQ8PZy0/qWB8Dos5tLtY+NvxNoPJ
         wJzMnGFBzOLNVP7L91SCJNhsED+ecwEuEgDN8Urk/0abFclhUs7mlLDDaOqkFbsSZpW+
         46YuHpx2bRuogUuy5UyICWzue2dRq1n7+Jxj8sHrvkpUkSKIpICujv5pMwbHX5IZQ7JE
         OSVVHOZlCEYipsVA68OVjXu/kCCCIL0Saoc23FeVAHyfgtte2o2VQg0yAlNWy4cjWl6b
         X3gArg6YMdjFEi3PFqMQloWn+48d5hoy70o6+NlBw9a7p4sTSPqwhZJUCOylsQjL+jjT
         tcng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JgQS20sz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h1si165872pju.1.2019.10.15.13.52.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 13:52:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JgQS20sz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id x127so13235513pfb.7
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Oct 2019 13:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=A7UfjBm076vN5CuQx7YcOPLMg11b0FmGhO6xsSnZEU8=;
        b=JgQS20sz8hJdD+jUT/zBR7sydksrfB6RTRI5MZEgvHyHHIjBBxVGjUcJV1O9S6hZ/E
         gBB7Cy91Rh9dAiPY4XuulSOWMK4BqwxROPVsb5eoXeYea4GEfYJFWND1jU9Mnr+CA7co
         ilyGGBe2Yzc1fGEcj88E2r0cAvUFJmfT0Rj+Qzlak2IinchmI/XFgUxyxvnwK6u5Z3a3
         nWX87sc6o6cCZyJGU8uFWIjB5CLcmj4+dbF3qnl4K2MWouxmDpi1npFc+gE7+WfbL6zz
         fXwzLcNDCnrrsgMDrKbFBBBcCpL61jie4M5IySKO+tbucdL2uS5GULWa3sz1tPu1sjqk
         FIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=A7UfjBm076vN5CuQx7YcOPLMg11b0FmGhO6xsSnZEU8=;
        b=Zt3OLaiCm4goUL/edPypjS+HPQEMnSe9CCfjDFQuGWXLXmBkAknIsyrbjjPMNtbJuu
         +Lu2lQOGUq3shWyuNBYpvwv+f26bblm7KgTiXsz3mU6Ll8XD9+hNZdR883p5iOWgz9Em
         aMoLLGRHZHz6f0Zbrc48uUGPsk2L38WZ7+uZ0PI916WQJS1MuVjk5d3qnxWbfwVYVweN
         J6PexO3THbmPzgSz3h5w6beXCokv3DmiWR8cAKWBi1OFndxG+HDNToGrXQWE08G9fAMk
         vdLn7QoPjgzywjZmmg0bTyhMuG13eJ0OGLuhkLjur1t383y3OxRNpBrTNEi1hPUjFejb
         yjIA==
X-Gm-Message-State: APjAAAWu22h9QYWY4zh/aYB53uwmcIm+FSVP66M3ki7aEP6/2Re0TbZI
	XMc1iSdZAP8UtUvclOy9nHkf+TTpWzs=
X-Received: by 2002:a65:638a:: with SMTP id h10mr2832822pgv.388.1571172753479;
        Tue, 15 Oct 2019 13:52:33 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id o15sm191953pjs.14.2019.10.15.13.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 13:52:33 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: Fix comments and assignments over 80 chars
Date: Tue, 15 Oct 2019 13:52:13 -0700
Message-Id: <20191015205213.16158-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix lines over 80 characters in length. Issue
found by checkpatch.

Fix typo "mean" to "means". Add comment for
ROP value in sm750_accel.h as it is in
sm750_accel.c file.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changes in v2:
 - Reverted code back to original style in lines 136 through 142
   of sm750.c file for better readability.
---
 drivers/staging/sm750fb/sm750.c       |  8 +++-
 drivers/staging/sm750fb/sm750_accel.c | 69 ++++++++++++++++++++-------
 drivers/staging/sm750fb/sm750_accel.h | 51 ++++++++++++++++----
 3 files changed, 100 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 59568d18ce23..092f1c686a37 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -695,7 +695,9 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_secondary;
-			/* not consider of padding stuffs for oScreen,need fix */
+			/* not consider of padding stuffs for oScreen,
+			 * need fix
+			 */
 			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
@@ -709,7 +711,9 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
-			/* not consider of padding stuffs for oScreen,need fix */
+			/* not consider of padding stuffs for oScreen,
+			 * need fix
+			 */
 			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index dbcbbd1055da..d523df58d067 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -148,10 +148,14 @@ unsigned int rop2)   /* ROP value */
 	unsigned int nDirection, de_ctrl;
 
 	nDirection = LEFT_TO_RIGHT;
-	/* Direction of ROP2 operation: 1 = Left to Right, (-1) = Right to Left */
+	/* Direction of ROP2 operation: 1 = Left to Right,
+	 *                             (-1) = Right to Left
+	 */
 	de_ctrl = 0;
 
-	/* If source and destination are the same surface, need to check for overlay cases */
+	/* If source and destination are the same surface,
+	 * need to check for overlay cases.
+	 */
 	if (sBase == dBase && sPitch == dPitch) {
 		/* Determine direction of operation */
 		if (sy < dy) {
@@ -289,19 +293,51 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 }
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
-		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
-		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
-		 u32 dBase,    /* Address of destination: offset in frame buffer */
-		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
-		 u32 bytePerPixel,      /* Color depth of destination surface */
+		 const char *pSrcbuf,   /* pointer to start of source buffer
+					 * in system memory
+					 */
+
+		 u32 srcDelta,		/* Pitch value (in bytes) of the
+					 * source buffer, +ive means top down
+					 * and -ive means button up
+					 */
+
+		 u32 startBit,		/* Mono data can start at any bit in a
+					 * byte, this value should be 0 to 7
+					 */
+
+		 u32 dBase,		/* Address of destination: offset in
+					 * frame buffer
+					 */
+
+		 u32 dPitch,		/* Pitch value of destination surface
+					 * in BYTE
+					 */
+
+		 u32 bytePerPixel,	/* Color depth of destination surface */
+
 		 u32 dx,
-		 u32 dy,       /* Starting coordinate of destination surface */
+		 u32 dy,		/* Starting coordinate of destination
+					 * surface
+					 */
+
 		 u32 width,
-		 u32 height,   /* width and height of rectangle in pixel value */
-		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
-		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
-		 u32 rop2)     /* ROP value */
+		 u32 height,		/* width and height of rectangle in
+					 * pixel value
+					 */
+
+		 u32 fColor,		/* Foreground color
+					 * (corresponding to a 1 in the
+					 * monochrome data)
+					 */
+
+		 u32 bColor,		/* Background color
+					 * (corresponding to a 0 in the
+					 * monochrome data)
+					 */
+
+		 u32 rop2)	      /* ROP value */
+
 {
 	unsigned int ulBytesPerScan;
 	unsigned int ul4BytesPerScan;
@@ -379,9 +415,10 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	/* Write MONO data (line by line) to 2D Engine data port */
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
-		for (j = 0; j < (ul4BytesPerScan / 4); j++)
-			write_dpPort(accel, *(unsigned int *)(pSrcbuf + (j * 4)));
-
+		for (j = 0; j < (ul4BytesPerScan / 4); j++) {
+			write_dpPort(accel,
+				     *(unsigned int *)(pSrcbuf + (j * 4)));
+		}
 		if (ulBytesRemain) {
 			memcpy(ajRemain, pSrcbuf + ul4BytesPerScan,
 			       ulBytesRemain);
diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c4f42002a50f..9ce8dd8e44c5 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -210,17 +210,48 @@ unsigned int height, /* width and height of rectangle in pixel value */
 unsigned int rop2);
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
-		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
-		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
-		 u32 dBase,    /* Address of destination: offset in frame buffer */
-		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
+		 const char *pSrcbuf,	/* pointer to start of source buffer in
+					 * system memory
+					 */
+
+		 u32 srcDelta,          /* Pitch value (in bytes) of the source
+					 * buffer, +ive means top down and
+					 * -ive means button up
+					 */
+
+		 u32 startBit,		/* Mono data can start at any bit
+					 * in a byte, this value should
+					 * be 0 to 7
+					 */
+
+		 u32 dBase,		/* Address of destination: offset in
+					 * frame buffer
+					 */
+
+		 u32 dPitch,		/* Pitch value of destination surface
+					 * in BYTE
+					 */
+
 		 u32 bytePerPixel,      /* Color depth of destination surface */
+
 		 u32 dx,
-		 u32 dy,       /* Starting coordinate of destination surface */
+		 u32 dy,		/* Starting coordinate of destination
+					 * surface
+					 */
 		 u32 width,
-		 u32 height,   /* width and height of rectangle in pixel value */
-		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
-		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
-		 u32 rop2);
+		 u32 height,		/* width and height of rectangle
+					 * in pixel value
+					 */
+
+		 u32 fColor,		/* Foreground color
+					 * (corresponding to a 1 in the
+					 * monochrome data
+					 */
+
+		 u32 bColor,		/* Background color
+					 * (corresponding to a 0 in the
+					 * monochrome data
+					 */
+
+		 u32 rop2);		/* ROP value */
 #endif
-- 
2.17.1


