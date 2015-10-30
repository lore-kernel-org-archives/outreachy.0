X-GM-THRID: 6211433707094409216
X-Received: by 10.129.4.203 with SMTP id 194mr6289244ywe.33.1446213795062;
        Fri, 30 Oct 2015 07:03:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.32.35 with SMTP id f3ls398861obi.94.gmail; Fri, 30 Oct
 2015 07:03:14 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr6222612obb.34.1446213794668;
        Fri, 30 Oct 2015 07:03:14 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id iz5si629558pbc.2.2015.10.30.07.03.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:03:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so75604817pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 07:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jLTOhMqVNiGCzj6ikAxgoCEVJQkoaAGn6QJK8I8HJKo=;
        b=cbsJ4iP91Uqs+zhSS3zb8aahCkFdDIOEL/cwRTwmLBbF/0j20E1uvQ6NRPiR9KDw7g
         AWYXJmcbzxxza8jRVjkjQklQNJeRkNjO1Os3JMa239IHfp0HrldntCV7iUOO7w+WSdOo
         vE4QOl+X+udk/oB0pSHv5G6+x0LFVg0vwO9bvFnl4h4KcJuHq6r9HwAia4O7c3IWnbAy
         id6Z5QySuSd9/WvpM/HrHLW2cxhqXz5S9bz13q3zfibbPDMZen05OpgF5rH/JvSixmN3
         Zz6ZZpBXnuY5GHx6rO4QEUAMFQK0yLMxMmSDbHwaDu/E6shxspNAS6GewcoaM+bZab7s
         XeAg==
X-Received: by 10.68.239.105 with SMTP id vr9mr9072979pbc.161.1446213794499;
        Fri, 30 Oct 2015 07:03:14 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id d2sm8483837pat.24.2015.10.30.07.03.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 07:03:14 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/2] Staging: sm750fb: Remove unused modedb.h file
Date: Fri, 30 Oct 2015 19:33:02 +0530
Message-Id: <1446213783-30267-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
References: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563378A1.00CC,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The header file modedb.h is only included in sm750.c but the things
defined by modedb.h are not used anywhere in sm750.c. Thus, drop
the include in sm750.c and modedb.h can be dropped completely.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Made commit message clearer

 drivers/staging/sm750fb/modedb.h | 233 ---------------------------------------
 drivers/staging/sm750fb/sm750.c  |   2 -
 2 files changed, 235 deletions(-)
 delete mode 100644 drivers/staging/sm750fb/modedb.h

diff --git a/drivers/staging/sm750fb/modedb.h b/drivers/staging/sm750fb/modedb.h
deleted file mode 100644
index 83cb2e2..0000000
--- a/drivers/staging/sm750fb/modedb.h
+++ /dev/null
@@ -1,233 +0,0 @@
-
-static const struct fb_videomode modedb2[] = {
-	{
-		/* 640x400 @ 70 Hz, 31.5 kHz hsync */
-		NULL, 70, 640, 400, 39721, 40, 24, 39, 9, 96, 2,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 640x480 @ 60 Hz, 31.5 kHz hsync */
-		NULL, 60, 640, 480, 39721, 40, 24, 32, 11, 96, 2,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 800x600 @ 56 Hz, 35.15 kHz hsync */
-		NULL, 56, 800, 600, 27777, 128, 24, 22, 1, 72, 2,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1024x768 @ 87 Hz interlaced, 35.5 kHz hsync */
-		NULL, 87, 1024, 768, 22271, 56, 24, 33, 8, 160, 8,
-		0, FB_VMODE_INTERLACED
-	}, {
-		/* 640x400 @ 85 Hz, 37.86 kHz hsync */
-		NULL, 85, 640, 400, 31746, 96, 32, 41, 1, 64, 3,
-		FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED
-	}, {
-		/* 640x480 @ 72 Hz, 36.5 kHz hsync */
-		NULL, 72, 640, 480, 31746, 144, 40, 30, 8, 40, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 640x480 @ 75 Hz, 37.50 kHz hsync */
-		NULL, 75, 640, 480, 31746, 120, 16, 16, 1, 64, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 800x600 @ 60 Hz, 37.8 kHz hsync */
-		NULL, 60, 800, 600, 25000, 88, 40, 23, 1, 128, 4,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 640x480 @ 85 Hz, 43.27 kHz hsync */
-		NULL, 85, 640, 480, 27777, 80, 56, 25, 1, 56, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1152x864 @ 89 Hz interlaced, 44 kHz hsync */
-		NULL, 69, 1152, 864, 15384, 96, 16, 110, 1, 216, 10,
-		0, FB_VMODE_INTERLACED
-	}, {
-		/* 800x600 @ 72 Hz, 48.0 kHz hsync */
-		NULL, 72, 800, 600, 20000, 64, 56, 23, 37, 120, 6,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1024x768 @ 60 Hz, 48.4 kHz hsync */
-		NULL, 60, 1024, 768, 15384, 168, 8, 29, 3, 144, 6,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 640x480 @ 100 Hz, 53.01 kHz hsync */
-		NULL, 100, 640, 480, 21834, 96, 32, 36, 8, 96, 6,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1152x864 @ 60 Hz, 53.5 kHz hsync */
-		NULL, 60, 1152, 864, 11123, 208, 64, 16, 4, 256, 8,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 800x600 @ 85 Hz, 55.84 kHz hsync */
-		NULL, 85, 800, 600, 16460, 160, 64, 36, 16, 64, 5,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1024x768 @ 70 Hz, 56.5 kHz hsync */
-		NULL, 70, 1024, 768, 13333, 144, 24, 29, 3, 136, 6,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/*  1280x960-60 VESA */
-		NULL, 60, 1280, 960, 9259, 312, 96, 36, 1, 112, 3,
-		FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED, FB_MODE_IS_VESA
-	}, {
-		/*  1280x1024-60 VESA */
-		NULL, 60, 1280, 1024, 9259, 248, 48, 38, 1, 112, 3,
-		FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED, FB_MODE_IS_VESA
-	}, {
-		/* 1280x1024 @ 87 Hz interlaced, 51 kHz hsync */
-		NULL, 87, 1280, 1024, 12500, 56, 16, 128, 1, 216, 12,
-		0, FB_VMODE_INTERLACED
-	}, {
-		/* 800x600 @ 100 Hz, 64.02 kHz hsync */
-		NULL, 100, 800, 600, 14357, 160, 64, 30, 4, 64, 6,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1024x768 @ 76 Hz, 62.5 kHz hsync */
-		NULL, 76, 1024, 768, 11764, 208, 8, 36, 16, 120, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1152x864 @ 70 Hz, 62.4 kHz hsync */
-		NULL, 70, 1152, 864, 10869, 106, 56, 20, 1, 160, 10,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1280x1024 @ 61 Hz, 64.2 kHz hsync */
-		NULL, 61, 1280, 1024, 9090, 200, 48, 26, 1, 184, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1400x1050 @ 60Hz, 63.9 kHz hsync */
-		NULL, 68, 1400, 1050, 9259, 136, 40, 13, 1, 112, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1400x1050 @ 75,107 Hz, 82,392 kHz +hsync +vsync*/
-		NULL, 75, 1400, 1050, 9271, 120, 56, 13, 0, 112, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1400x1050 @ 60 Hz, ? kHz +hsync +vsync*/
-		NULL, 60, 1400, 1050, 9259, 128, 40, 12, 0, 112, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1024x768 @ 85 Hz, 70.24 kHz hsync */
-		NULL, 85, 1024, 768, 10111, 192, 32, 34, 14, 160, 6,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1152x864 @ 78 Hz, 70.8 kHz hsync */
-		NULL, 78, 1152, 864, 9090, 228, 88, 32, 0, 84, 12,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1280x1024 @ 70 Hz, 74.59 kHz hsync */
-		NULL, 70, 1280, 1024, 7905, 224, 32, 28, 8, 160, 8,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1600x1200 @ 60Hz, 75.00 kHz hsync */
-		NULL, 60, 1600, 1200, 6172, 304, 64, 46, 1, 192, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1152x864 @ 84 Hz, 76.0 kHz hsync */
-		NULL, 84, 1152, 864, 7407, 184, 312, 32, 0, 128, 12,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1280x1024 @ 74 Hz, 78.85 kHz hsync */
-		NULL, 74, 1280, 1024, 7407, 256, 32, 34, 3, 144, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1024x768 @ 100Hz, 80.21 kHz hsync */
-		NULL, 100, 1024, 768, 8658, 192, 32, 21, 3, 192, 10,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1280x1024 @ 76 Hz, 81.13 kHz hsync */
-		NULL, 76, 1280, 1024, 7407, 248, 32, 34, 3, 104, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1600x1200 @ 70 Hz, 87.50 kHz hsync */
-		NULL, 70, 1600, 1200, 5291, 304, 64, 46, 1, 192, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1152x864 @ 100 Hz, 89.62 kHz hsync */
-		NULL, 100, 1152, 864, 7264, 224, 32, 17, 2, 128, 19,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1280x1024 @ 85 Hz, 91.15 kHz hsync */
-		NULL, 85, 1280, 1024, 6349, 224, 64, 44, 1, 160, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1600x1200 @ 75 Hz, 93.75 kHz hsync */
-		NULL, 75, 1600, 1200, 4938, 304, 64, 46, 1, 192, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1600x1200 @ 85 Hz, 105.77 kHz hsync */
-		NULL, 85, 1600, 1200, 4545, 272, 16, 37, 4, 192, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1280x1024 @ 100 Hz, 107.16 kHz hsync */
-		NULL, 100, 1280, 1024, 5502, 256, 32, 26, 7, 128, 15,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 1800x1440 @ 64Hz, 96.15 kHz hsync  */
-		NULL, 64, 1800, 1440, 4347, 304, 96, 46, 1, 192, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 1800x1440 @ 70Hz, 104.52 kHz hsync  */
-		NULL, 70, 1800, 1440, 4000, 304, 96, 46, 1, 192, 3,
-		FB_SYNC_HOR_HIGH_ACT|FB_SYNC_VERT_HIGH_ACT,
-		FB_VMODE_NONINTERLACED
-	}, {
-		/* 512x384 @ 78 Hz, 31.50 kHz hsync */
-		NULL, 78, 512, 384, 49603, 48, 16, 16, 1, 64, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 512x384 @ 85 Hz, 34.38 kHz hsync */
-		NULL, 85, 512, 384, 45454, 48, 16, 16, 1, 64, 3,
-		0, FB_VMODE_NONINTERLACED
-	}, {
-		/* 320x200 @ 70 Hz, 31.5 kHz hsync, 8:5 aspect ratio */
-		NULL, 70, 320, 200, 79440, 16, 16, 20, 4, 48, 1,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 320x240 @ 60 Hz, 31.5 kHz hsync, 4:3 aspect ratio */
-		NULL, 60, 320, 240, 79440, 16, 16, 16, 5, 48, 1,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 320x240 @ 72 Hz, 36.5 kHz hsync */
-		NULL, 72, 320, 240, 63492, 16, 16, 16, 4, 48, 2,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 400x300 @ 56 Hz, 35.2 kHz hsync, 4:3 aspect ratio */
-		NULL, 56, 400, 300, 55555, 64, 16, 10, 1, 32, 1,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 400x300 @ 60 Hz, 37.8 kHz hsync */
-		NULL, 60, 400, 300, 50000, 48, 16, 11, 1, 64, 2,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 400x300 @ 72 Hz, 48.0 kHz hsync */
-		NULL, 72, 400, 300, 40000, 32, 24, 11, 19, 64, 3,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 480x300 @ 56 Hz, 35.2 kHz hsync, 8:5 aspect ratio */
-		NULL, 56, 480, 300, 46176, 80, 16, 10, 1, 40, 1,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 480x300 @ 60 Hz, 37.8 kHz hsync */
-		NULL, 60, 480, 300, 41858, 56, 16, 11, 1, 80, 2,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 480x300 @ 63 Hz, 39.6 kHz hsync */
-		NULL, 63, 480, 300, 40000, 56, 16, 11, 1, 80, 2,
-		0, FB_VMODE_DOUBLE
-	}, {
-		/* 480x300 @ 72 Hz, 48.0 kHz hsync */
-		NULL, 72, 480, 300, 33386, 40, 24, 11, 19, 80, 3,
-		0, FB_VMODE_DOUBLE
-	},
-};
-static const int nmodedb2 = sizeof(modedb2);
diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 860e1c2..c78421b 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -21,8 +21,6 @@
 #include "sm750_accel.h"
 #include "sm750_cursor.h"
 
-#include "modedb.h"
-
 /*
  * #ifdef __BIG_ENDIAN
  * ssize_t lynxfb_ops_write(struct fb_info *info, const char __user *buf,
-- 
2.1.4


