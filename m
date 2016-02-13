X-GM-THRID: 6250819727244918784
X-Received: by 10.182.135.169 with SMTP id pt9mr7205112obb.17.1455383416970;
        Sat, 13 Feb 2016 09:10:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.164 with SMTP id f36ls1037664ioi.28.gmail; Sat, 13 Feb
 2016 09:10:16 -0800 (PST)
X-Received: by 10.66.159.167 with SMTP id xd7mr7589054pab.5.1455383416636;
        Sat, 13 Feb 2016 09:10:16 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id g136si1499681ywb.5.2016.02.13.09.10.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 09:10:16 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id e61so7607688qgf.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 09:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GeLi8eCFPOeAy78igvLwk8tz7Bctk4AppdSJ0v7yjKs=;
        b=GRbUptJ5H9Mibp4DFfmsuQ8UQoy3C42c5hLM+x/PBcTJHR3L9KdNSWX/VRtbyfzwNs
         cyzc3J9MHpp3rHs+2aVB0YPMaPjp8bZJsr7ltM3Y9k2YrShK/ksDZDvsiGW8Q6zNFGaj
         qHLhmjdLzB92IDaafak/BLAwq7DTBbaixAZblXQSyVHYAXFkiQAnE4T0LTo2ypsQjB18
         cujCjlzGQqQ+xbsB8Z4FXmgpWMwTUqAa+llR6M2nK66qXtP+DyxtiwPTSA9QqNDiiRdG
         2WQDlYfUVpj+lANcG4mCAZbdVjDC4DX1S2v4f8opJCs0Z6zqj6fkGQY9GdinDFRh0XkQ
         /0kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=GeLi8eCFPOeAy78igvLwk8tz7Bctk4AppdSJ0v7yjKs=;
        b=aJR0pAHDiArlztvYoN7iqcOcYE3k62MbZSFx96e9NFeRn+V7lSHclhAWI1jhCQTZtk
         m+itl0Z5KB1cAZ1Soj9/HHwIxTJfiFFdyIcl2tvm2tI8GgyMAfvNu+9OqEvmox1KdWr0
         0AmR2UTUffPe1KA6yPKfy6BlTFoIKNMSFzLRXNZtXIwaravQ2YwcR2xudy+y0g0xOouu
         iVZ4rurOHqcwh9suoWxOMXAlo/+HS7q+8UQA4Sjp4Ba1UI2XGmB8OxVexbah4/ZhZ8tC
         b/xJMW1DU5y2RyWhI9Dj77XG9HpIF63ERWC3R7pyQ18GDqYDfXTyUOzwP40PR12cv3fl
         4kAA==
X-Gm-Message-State: AG10YOQVaAMGgluQRoVqiewexYlau1k/8fcpvICdBfZdUs7j8+gOX6L7qMbn6Zkjjpndng==
X-Received: by 10.140.166.198 with SMTP id m189mr9855077qhm.35.1455383416424;
        Sat, 13 Feb 2016 09:10:16 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id g4sm7739774qhc.32.2016.02.13.09.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 09:10:15 -0800 (PST)
Date: Sat, 13 Feb 2016 17:09:36 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: xgifb: Fix comment style
Message-ID: <20160213220936.GA22396@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix comments to use trailing */ on separate lines and * on subsequent
lines. Found by checkpatch.pl 

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Corrected accidentally modified comment in line 56 in the previous
   patch

 drivers/staging/xgifb/vb_init.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 879a7e6..7034921 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -57,7 +57,8 @@ XGINew_GetXG20DRAMType(struct xgi_hw_device_info *HwDeviceExtension,
 		data = xgifb_reg_get(pVBInfo->P3d4, 0x48);
 		/* HOTPLUG_SUPPORT */
 		/* for current XG20 & XG21, GPIOH is floating, driver will
-		 * fix DDR temporarily */
+		 * fix DDR temporarily 
+		 */
 		/* DVI read GPIOH */
 		data &= 0x01; /* 1=DDRII, 0=DDR */
 		/* ~HOTPLUG_SUPPORT */
@@ -354,7 +355,8 @@ static void XGINew_DDR2_DefaultRegister(
 	unsigned long P3d4 = Port, P3c4 = Port - 0x10;
 
 	/* keep following setting sequence, each setting in
-	 * the same reg insert idle */
+	 * the same reg insert idle 
+	 */
 	xgifb_reg_set(P3d4, 0x82, 0x77);
 	xgifb_reg_set(P3d4, 0x86, 0x00);
 	xgifb_reg_get(P3d4, 0x86); /* Insert read command for delay */
@@ -698,11 +700,11 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 		break;
 	case XG42:
 		/*
-		 XG42 SR14 D[3] Reserve
-		 D[2] = 1, Dual Channel
-		 = 0, Single Channel
-
-		 It's Different from Other XG40 Series.
+		 * XG42 SR14 D[3] Reserve
+		 * D[2] = 1, Dual Channel
+		 * = 0, Single Channel
+		 *
+		 * It's Different from Other XG40 Series.
 		 */
 		if (XGINew_CheckFrequence(pVBInfo) == 1) { /* DDRII, DDR2x */
 			pVBInfo->ram_bus = 32; /* 32 bits */
-- 
2.5.0


