X-GM-THRID: 6948926928626647040
X-Received: by 2002:a5e:de0d:: with SMTP id e13mr8793436iok.208.1617923129489;
        Thu, 08 Apr 2021 16:05:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9501:: with SMTP id d1ls1134268iom.5.gmail; Thu, 08 Apr
 2021 16:05:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvICLBzRIyRE6aGQlkHFPDFgIodjFsZSSvy6GwstDLSCNHFya+pcIA+bPa+QbhA26rYPYt
X-Received: by 2002:a5e:8717:: with SMTP id y23mr1129961ioj.111.1617923128675;
        Thu, 08 Apr 2021 16:05:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617923128; cv=none;
        d=google.com; s=arc-20160816;
        b=S9g761wFljxvY8593gG3P7GXZ+pV8QTJVU+OMaKXJ0SetH2dK0VxWM624Ei/Y+S7PQ
         DvSgqYGDx8w4N7nioOgUWmkiJwoqbc3Pc5YBdIsyb6cQY9HBMgLiPnxffbKIBykDWwhp
         K8AVqsY1GBjAtj38wxs+7P6H3l5iA0KBQ1g7wCBWrg0e6gIO2OiL6BSy22WAJIy+2ik2
         T+/8or41GDFlBMliNEHMt2yN2sjzxjOHzm0D3hpTnd8InHdmi1RlJvk6fZsGEkVIf9ll
         fg+ChuQtS1SLM5/eweXcRsSinnx3M5TH3y/8AVeAtMxKvk1fteXhwNtYk1S8SKKT1Ntv
         ljUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=n86d8I0VVSWF4Xuv5hVTXdKVgAMp4Cd1RqhEoJubX0Y=;
        b=yNgxRPwFNqU0Mi7AtrLv14xMwMpN5PTfSx8gP3xN9mUPN4iFLhPiW+3gC0n6Lr8h9p
         LeaBavZr/1EQn1y2yICYltPEGkpbYmqPFrPHzoWVpGrfUgkIJ7TKtvpD5TMEKGNNxfkB
         x4w04SYGA3JnvtpqWue1U0CjUkFwTMPIVLckFHUuTmsQ3OzDpe+7Y/bx2XQRaHqhuiBd
         v+FUtCEwo2JPqmxTFtVA3bV4V2O0Jf76GPtLxXPtCw5Y4hjhUyIQZH2piGt3GbF1Sc8n
         xhotyG7GtAaQWtsYNENVOG3+H+mHjqedh/FdkjDnY31CrhuTjtp+zHDM8Lc4FF3ZIFOd
         PU2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QhgPRZJu;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id y13si25968ilv.0.2021.04.08.16.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 16:05:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QhgPRZJu;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id q5so2937373pfh.10
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 16:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=n86d8I0VVSWF4Xuv5hVTXdKVgAMp4Cd1RqhEoJubX0Y=;
        b=QhgPRZJuZUrw6Lzc1Yw4KS8Vt59PLm4jF7notnmmmapKWK1ZBf9rR0aL1diuN1t/+7
         ndtZWza9MAqx9XEMHSMFlLvSffSVGsWIMCaRhcKlxT+EVjaFe7FfddBn5ndsnrbp5B/F
         0QmkZNKWyJZu2ufVkFQynSL7k2cBT+BqLMGf3HtYSijqWgcoNXXZEBuZRBue20zEYK0E
         NjoFubxirjFAyw1b4QTXLDMaOduuyZwt7GPPWjCVAZZO/MynFUkTkybt4YAfWXWis5mw
         CnSYvVL2bxTe+tcrn5KwVgj4Z2dnouXn8yavbhc9KEQQhvltwPDIlDktVAy8xfs+KYgi
         dIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=n86d8I0VVSWF4Xuv5hVTXdKVgAMp4Cd1RqhEoJubX0Y=;
        b=KuPjp8W/jtGlyUaDJXIE0YX8dNkb9EPlRXZgoKU2VdnKk4fGpq8hiStG+xkNTMmCAf
         4/e5NVNqd2To01Qvw8Nn6lnJgbounWgQI9mQi+Od59G/AE3DJDbOxN6NDyvGN9QcIIVy
         W0DjMwapQb7VsHjQ/mAr7o11JQuAcpLBAUNzhurVTZ95vK/Z6PfN23rN9pw2ZEO80yQ/
         74JQYUzS3QjE2Se4BA8YsztQ4Jkrzusf8zXkBpbgGMpm7iRl0SDq5Gf5gZlmWAtzl026
         Nu/hq9ba77nYdvGaXHyKKiAPFDLXU40wB/WcnelTqeF8QrVZv7tzynTmvFR9qgFicXqY
         xP8g==
X-Gm-Message-State: AOAM530TusewRGYV6THioBJK4R6S/vOykQrXMgrOoeWjBvEw6BEfgOB3
	VE5BrlxBx1tTK75M8ET/Cfw=
X-Received: by 2002:a63:e913:: with SMTP id i19mr9948560pgh.426.1617923128228;
        Thu, 08 Apr 2021 16:05:28 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.243.224])
        by smtp.gmail.com with ESMTPSA id f5sm384469pjo.3.2021.04.08.16.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 16:05:27 -0700 (PDT)
Date: Fri, 9 Apr 2021 04:35:14 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: media: zoran: add '*' in subsequent line
Message-ID: <YG+MKk9C/fTd7vj4@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Added '*' in susbsequent lines for block comments to meet linux kernel
coding style.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/zoran/zr36050.c | 34 +++++++++++++--------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index 2826f4e5d37b..663ac2b3434e 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -25,7 +25,7 @@
 #include "videocodec.h"
 
 /* it doesn't make sense to have more than 20 or so,
-  just to prevent some unwanted loops */
+ * just to prevent some unwanted loops */
 #define MAX_CODECS 20
 
 /* amount of chips attached via this driver */
@@ -43,7 +43,7 @@ MODULE_PARM_DESC(debug, "Debug level (0-4)");
 	} while (0)
 
 /* =========================================================================
-   Local hardware I/O functions:
+ *  Local hardware I/O functions:
 
    read/write via codec layer (registers are located in the master device)
    ========================================================================= */
@@ -80,7 +80,7 @@ static void zr36050_write(struct zr36050 *ptr, u16 reg, u8 value)
 }
 
 /* =========================================================================
-   Local helper function:
+ *  Local helper function:
 
    status read
    ========================================================================= */
@@ -95,7 +95,7 @@ static u8 zr36050_read_status1(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
+ *  Local helper function:
 
    scale factor read
    ========================================================================= */
@@ -112,7 +112,7 @@ static u16 zr36050_read_scalefactor(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
+ *  Local helper function:
 
    wait if codec is ready to proceed (end of processing) or time is over
    ========================================================================= */
@@ -133,7 +133,7 @@ static void zr36050_wait_end(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
+ *  Local helper function:
 
    basic test of "connectivity", writes/reads to/from memory the SOF marker
    ========================================================================= */
@@ -174,7 +174,7 @@ static int zr36050_basic_test(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Local helper function:
+ *  Local helper function:
 
    simple loop for pushing the init datasets
    ========================================================================= */
@@ -192,7 +192,7 @@ static int zr36050_pushit(struct zr36050 *ptr, u16 startreg, u16 len, const char
 }
 
 /* =========================================================================
-   Basic datasets:
+ *  Basic datasets:
 
    jpeg baseline setup data (you find it on lots places in internet, or just
    extract it from any regular .jpg image...)
@@ -294,7 +294,7 @@ static const char zr36050_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
 static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 
 /* =========================================================================
-   Local helper functions:
+ *  Local helper functions:
 
    calculation and setup of parameter-dependent JPEG baseline segments
    (needed for compression only)
@@ -303,7 +303,7 @@ static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 /* ------------------------------------------------------------------------- */
 
 /* SOF (start of frame) segment depends on width, height and sampling ratio
-			 of each color component */
+ *			 of each color component */
 
 static int zr36050_set_sof(struct zr36050 *ptr)
 {
@@ -334,7 +334,7 @@ static int zr36050_set_sof(struct zr36050 *ptr)
 /* ------------------------------------------------------------------------- */
 
 /* SOS (start of scan) segment depends on the used scan components
-			of each color component */
+ *			of each color component */
 
 static int zr36050_set_sos(struct zr36050 *ptr)
 {
@@ -378,7 +378,7 @@ static int zr36050_set_dri(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   Setup function:
+ *  Setup function:
 
    Setup compression/decompression of Zoran's JPEG processor
    ( see also zoran 36050 manual )
@@ -531,13 +531,13 @@ static void zr36050_init(struct zr36050 *ptr)
 }
 
 /* =========================================================================
-   CODEC API FUNCTIONS
+ *  CODEC API FUNCTIONS
 
    this functions are accessed by the master via the API structure
    ========================================================================= */
 
 /* set compression/expansion mode and launches codec -
-   this should be the last call from the master before starting processing */
+ *  this should be the last call from the master before starting processing */
 static int zr36050_set_mode(struct videocodec *codec, int mode)
 {
 	struct zr36050 *ptr = (struct zr36050 *)codec->data;
@@ -707,7 +707,7 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
 }
 
 /* =========================================================================
-   Exit and unregister function:
+ *  Exit and unregister function:
 
    Deinitializes Zoran's JPEG processor
    ========================================================================= */
@@ -732,7 +732,7 @@ static int zr36050_unset(struct videocodec *codec)
 }
 
 /* =========================================================================
-   Setup and registry function:
+ *  Setup and registry function:
 
    Initializes Zoran's JPEG processor
 
@@ -813,7 +813,7 @@ static const struct videocodec zr36050_codec = {
 };
 
 /* =========================================================================
-   HOOK IN DRIVER AS KERNEL MODULE
+ *  HOOK IN DRIVER AS KERNEL MODULE
    ========================================================================= */
 
 static int __init zr36050_init_module(void)
-- 
2.30.2


