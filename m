X-GM-THRID: 6255572920637063168
X-Received: by 10.66.221.100 with SMTP id qd4mr823491pac.0.1456489069054;
        Fri, 26 Feb 2016 04:17:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.65.97 with SMTP id w1ls443944obs.79.gmail; Fri, 26 Feb
 2016 04:17:48 -0800 (PST)
X-Received: by 10.182.227.137 with SMTP id sa9mr863499obc.44.1456489068732;
        Fri, 26 Feb 2016 04:17:48 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id yd9si1839888pab.1.2016.02.26.04.17.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 04:17:48 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fl4so50454737pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 04:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nHGBWdsM+rhMMle/dgRCK4URM2x4+AFEvUUNKY4v2eI=;
        b=ahf0eFZcvWUZRoeTbI1u4Pn24ovcrV/6HVyaw0zRv/G3ZyKWqEUthcHnO6C3cgOilJ
         hbMo36OV+i6C8gqLdw0tlmUfA9QX6QHkH7FStCLG9OAkVnvnccDraPLMEr5/olHneiOf
         G8YJBXwcu7PLMMn8Q68pdzLrVq5xP2kchewPVZYHUBR0KDDs//2cbcsCU8fc5Hkt5YT0
         7Y2E//VkNEcAjkJ8LDlLcmxFcFUjL7cNo6CjZaDj5gRWQAXO93HRo7VCvcaVPfhimDXt
         g/R1LD+OOfUh5/2dY8kU/ZJhzk790i5D4J4Q5KmqtYCgtb6eEaHJQHqjoTXVFXPErhyI
         GkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nHGBWdsM+rhMMle/dgRCK4URM2x4+AFEvUUNKY4v2eI=;
        b=EehE/320NdzLBQD61FP4hExS/RwkAQZ4hzYIXfHQcZ2NaHFm9RMhbCFKRMKbaxh8Et
         /JaKoLW6if6vt416c5XZH01rTVKREqV1a9vSSkY+kUGo6gficmEkl9nC3KCOPXikbtcF
         SoCoHnyOXP+tVKnDHL8TgWAEUlxlG3NR95m3Vp2FfJT8rODAs1X8fOoX9PllrdE4f7rs
         Pl84kHjfJmBMutc5mKwCduwVXzGNoF2VxJeekv0cK5L3cPIZanMwWCLKCRYLs7uUGK4h
         /xXwlhvp+tnBXH0QlmEVMifCoEcs8HbUc7Ij9sTvPD1cxFt/6o43iPXs/XDK73jCmujt
         +U8g==
X-Gm-Message-State: AD7BkJLY5SDv8apL6QWkAZ6tS13f0w9JBsdVON3+P/G9455BpJ25X1N6qYIp1lWkCOlHJw==
X-Received: by 10.66.100.196 with SMTP id fa4mr1572244pab.37.1456489068518;
        Fri, 26 Feb 2016 04:17:48 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i13sm19111394pfi.95.2016.02.26.04.17.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 04:17:47 -0800 (PST)
Date: Fri, 26 Feb 2016 17:47:51 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: Avoid multiple blank lines
Message-ID: <20160226121751.GA13975@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes the checkpatch.pl warnings regarding multiple blank
lines as single blank line is the preferred coding style.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/xgifb/vb_def.h     | 1 -
 drivers/staging/xgifb/vb_setmode.c | 1 -
 drivers/staging/xgifb/vb_struct.h  | 2 --
 drivers/staging/xgifb/vb_table.h   | 3 ---
 4 files changed, 7 deletions(-)

diff --git a/drivers/staging/xgifb/vb_def.h b/drivers/staging/xgifb/vb_def.h
index d9524a2..94e2e3c 100644
--- a/drivers/staging/xgifb/vb_def.h
+++ b/drivers/staging/xgifb/vb_def.h
@@ -228,7 +228,6 @@
 #define RES1280x960x85       0x46
 #define RES1280x960x120      0x47
 
-
 #define XG27_CR8F 0x0C
 #define XG27_SR36 0x30
 #define XG27_SR40 0x04
diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 2078d57..f97c77d 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -5067,7 +5067,6 @@ reg_and_or:
 	}
 }
 
-
 void XGI_UnLockCRT2(struct vb_device_info *pVBInfo)
 {
 	xgifb_reg_and_or(pVBInfo->Part1Port, 0x2f, 0xFF, 0x01);
diff --git a/drivers/staging/xgifb/vb_struct.h b/drivers/staging/xgifb/vb_struct.h
index 0d27594..2fd1a59 100644
--- a/drivers/staging/xgifb/vb_struct.h
+++ b/drivers/staging/xgifb/vb_struct.h
@@ -65,7 +65,6 @@ struct XGI330_TVDataTablStruct {
 	struct SiS_TVData const *DATAPTR;
 };
 
-
 struct XGI_TimingHStruct {
 	unsigned char data[8];
 };
@@ -117,7 +116,6 @@ struct XGI_CRT1TableStruct {
 	unsigned char CR[16];
 };
 
-
 struct XGI301C_Tap4TimingStruct {
 	unsigned short DE;
 	unsigned char  Reg[64];   /* C0-FF */
diff --git a/drivers/staging/xgifb/vb_table.h b/drivers/staging/xgifb/vb_table.h
index f17e5b9..45f2c99 100644
--- a/drivers/staging/xgifb/vb_table.h
+++ b/drivers/staging/xgifb/vb_table.h
@@ -1140,7 +1140,6 @@ static const struct SiS_LVDSData XGI_LVDS1024x768Data_1[] = {
 	{1344, 806, 1344, 806}	/* 06 (512x384,1024x768) */
 };
 
-
 static const struct SiS_LVDSData XGI_LVDS1024x768Data_2[] = {
 	{1344, 806, 1344, 806},
 	{1344, 806, 1344, 806},
@@ -1228,7 +1227,6 @@ static const struct SiS_LVDSData XGI_LVDS1024x768Data_1x75[] = {
 	{1312, 800, 1312, 800}, /* 06 (512x384,1024x768) */
 };
 
-
 static const struct SiS_LVDSData XGI_LVDS1024x768Data_2x75[] = {
 	{1312, 800, 1312, 800}, /* ; 00 (320x200,320x400,640x200,640x400) */
 	{1312, 800, 1312, 800}, /* ; 01 (320x350,640x350) */
@@ -2314,7 +2312,6 @@ static const unsigned char TVAntiFlickList[] = {/* NTSCAntiFlicker */
 	0x00  /* ; 1 new anti-flicker ? */
 };
 
-
 static const unsigned char TVEdgeList[] = {
 	0x00, /* ; 0 NTSC No Edge enhance */
 	0x04, /* ; 1 NTSC Adaptive Edge enhance */
-- 
2.1.4


