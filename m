X-GM-THRID: 6208143559134019584
X-Received: by 10.182.250.233 with SMTP id zf9mr13623205obc.7.1445532375581;
        Thu, 22 Oct 2015 09:46:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.37 with SMTP id rt5ls187779igb.24.gmail; Thu, 22 Oct
 2015 09:46:15 -0700 (PDT)
X-Received: by 10.67.7.170 with SMTP id dd10mr13275418pad.36.1445532375125;
        Thu, 22 Oct 2015 09:46:15 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id fa8si1805097pab.1.2015.10.22.09.46.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 09:46:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so91253500pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 09:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LvVHPnf7gL4s8/xpQICxANeVlwLrlbCjLu2IJDJN6gw=;
        b=Y79PGcx9eZOZ70lRQ+MNulTUnBF8Ts7BdT2pdfX4Ts9gWg4uP7a98yhTS/qbqOlbRo
         rVLgNkEfofiogHJj+W0x35p6Jxl91g7Zo208UHU8DkZB9ISScm2tELzil0XZiDcfeeQv
         xVD3q1kzpkDkpk3c/yH6G+HLfmj184+SeTjNSgSqDw32GZensEqlgdSoG+txdB0wTboW
         Z+a0oFSyhqwwd4a996aWvCdDoARoUlyjA8nvXMOqW+OXa0oUmnYfGIBEmyR/WwdswMEv
         szPXGgUFygVZvOSzHR0OgyjrHi+W5uww6nTFGXb7xGHrfb+vMRlHM5WwQxGZ1dKfHWnZ
         XjgA==
X-Received: by 10.66.155.167 with SMTP id vx7mr18444568pab.127.1445532374998;
        Thu, 22 Oct 2015 09:46:14 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.34.222])
        by smtp.gmail.com with ESMTPSA id ff2sm4090551pac.14.2015.10.22.09.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 09:46:14 -0700 (PDT)
Date: Thu, 22 Oct 2015 22:16:19 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] Staging: xgifb: Remove blank line before } and after {
Message-ID: <6ac3d275e5daf2f27d475a1b80c1ddff7bd5b346.1445527912.git.navyasri.tech@gmail.com>
References: <cover.1445527912.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445527912.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove blank line after { and before }.
Problem found using checkpatch.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
   -Include one more deletion of a blank line.

 drivers/staging/xgifb/vb_init.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 0b8bbd7..7982f07 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -195,7 +195,6 @@ static void XGINew_DDRII_Bootup_XG27(
 	/* Set SR1B refresh control 000:close; 010:open */
 	xgifb_reg_set(P3c4, 0x1B, 0x04);
 	usleep_range(200, 1200);
-
 }
 
 static void XGINew_DDR2_MRS_XG20(struct xgi_hw_device_info *HwDeviceExtension,
@@ -597,7 +596,6 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 
 			if ((HwDeviceExtension->ulVideoMemorySize - 1)
 					> 0x1000000) {
-
 				pVBInfo->ram_bus = 32; /* 32 bits */
 				/* 22bit + 2 rank + 32bit */
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
@@ -1059,7 +1057,6 @@ static void XGINew_SetModeScratch(struct vb_device_info *pVBInfo)
 	CR38Data &= ~SetYPbPr;
 	CR38Data |= tempch;
 	xgifb_reg_set(pVBInfo->P3d4, 0x38, CR38Data);
-
 }
 
 static unsigned short XGINew_SenseLCD(struct xgi_hw_device_info
@@ -1134,7 +1131,6 @@ static void XGINew_GetXG27Sense(struct vb_device_info *pVBInfo)
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x38, ~0xE0, 0xA0);
 	}
 	xgifb_reg_or(pVBInfo->P3d4, 0x32, LCDSense);
-
 }
 
 static unsigned char GetXG21FPBits(struct vb_device_info *pVBInfo)
@@ -1329,14 +1325,12 @@ unsigned char XGIInitNew(struct pci_dev *pdev)
 	XGI_SenseCRT1(pVBInfo);
 
 	if (HwDeviceExtension->jChipType == XG21) {
-
 		xgifb_reg_and_or(pVBInfo->P3d4,
 				 0x32,
 				 ~Monitor1Sense,
 				 Monitor1Sense); /* Z9 default has CRT */
 		temp = GetXG21FPBits(pVBInfo);
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x37, ~0x01, temp);
-
 	}
 	if (HwDeviceExtension->jChipType == XG27) {
 		xgifb_reg_and_or(pVBInfo->P3d4,
-- 
1.9.1


