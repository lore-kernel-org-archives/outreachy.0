X-GM-THRID: 6208484659895992320
X-Received: by 10.107.28.67 with SMTP id c64mr11771193ioc.1.1445525479802;
        Thu, 22 Oct 2015 07:51:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.50 with SMTP id 47ls833120qgo.70.gmail; Thu, 22 Oct
 2015 07:51:18 -0700 (PDT)
X-Received: by 10.13.235.207 with SMTP id u198mr12519672ywe.3.1445525478158;
        Thu, 22 Oct 2015 07:51:18 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id fa8si1746661pab.1.2015.10.22.07.51.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 07:51:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so92841588pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 07:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JWG77RB+7YyaCiaEn9hq7G3pyulETg07yBeP+a6JWLo=;
        b=zsUj0DlhyntkwvKDxEB7NodbD/iSDyPTWbR6VObABUWs90P4sZDnp+oW49CiFrzQz2
         DpmqPVKXLsuW81CTr6xmrDxf90Ly4DFcS0oIRWbHaoD5PdGusa1xGKSMYnIS19Yq4Njs
         y6hGY9oraz9M0ArIjQk8POmbg14y7rkyWBmeywJx7C6W9GgpWsJLaGmZ/hT9Jx7jnBkM
         PUa3AGxIyMGGJD0JG319lqI1ZfEx+85njCVFf2R3Irk2Pr2BrHSCV+PbSWX6C0d7rku8
         KZsE4BF6mxV37LDgtmzcfIEzbP7F1fD47nTQm5xSBekcMdDhWMHNcJ0WrnH2j5xZd7fl
         GsDg==
X-Received: by 10.68.215.73 with SMTP id og9mr18068514pbc.122.1445525477970;
        Thu, 22 Oct 2015 07:51:17 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.34.222])
        by smtp.gmail.com with ESMTPSA id iy1sm14281947pbb.85.2015.10.22.07.51.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 07:51:17 -0700 (PDT)
Date: Thu, 22 Oct 2015 20:21:22 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: xgifb: Replace udelay, mdelay functions with
 usleep_range
Message-ID: <20151022145122.GA14720@navya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl check:

CHECK: usleep_range is preferred over udelay.

Replace mdelay with usleep_range function too.
Add 1 millisecond to the delay time to get a
reasonable upper limit which saves one wakeup call.
Do same throughout the file.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v3:
  -Replace the mdelay call too with usleep_range.
  -Mention the change in the commit message and subject

Changes in v2:
  -Use the right function definition of usleep_range.
  -Make commit message better.

 drivers/staging/xgifb/vb_init.c | 82 ++++++++++++++++++++---------------------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 2b233af..0b8bbd7 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -51,7 +51,7 @@ XGINew_GetXG20DRAMType(struct xgi_hw_device_info *HwDeviceExtension,
 	} else if (HwDeviceExtension->jChipType == XG21) {
 		/* Independent GPIO control */
 		xgifb_reg_and(pVBInfo->P3d4, 0xB4, ~0x02);
-		udelay(800);
+		usleep_range(800, 1800);
 		xgifb_reg_or(pVBInfo->P3d4, 0x4A, 0x80); /* Enable GPIOH read */
 		/* GPIOF 0:DVI 1:DVO */
 		data = xgifb_reg_get(pVBInfo->P3d4, 0x48);
@@ -80,20 +80,20 @@ static void XGINew_DDR1x_MRS_340(unsigned long P3c4,
 	xgifb_reg_set(P3c4, 0x16, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x80);
 
-	mdelay(3);
+	usleep_range(3, 1003);
 	xgifb_reg_set(P3c4, 0x18, 0x00);
 	xgifb_reg_set(P3c4, 0x19, 0x20);
 	xgifb_reg_set(P3c4, 0x16, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x80);
 
-	udelay(60);
+	usleep_range(60, 1060);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x01);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
 	xgifb_reg_set(P3c4, 0x16, 0x83);
-	mdelay(1);
+	usleep_range(1, 1001);
 	xgifb_reg_set(P3c4, 0x1B, 0x03);
-	udelay(500);
+	usleep_range(500, 1500);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
@@ -136,65 +136,65 @@ static void XGINew_DDRII_Bootup_XG27(
 	/* Set Double Frequency */
 	xgifb_reg_set(P3d4, 0x97, pVBInfo->XGINew_CR97); /* CR97 */
 
-	udelay(200);
+	usleep_range(200, 1200);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS2 */
 	xgifb_reg_set(P3c4, 0x19, 0x80); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS3 */
 	xgifb_reg_set(P3c4, 0x19, 0xC0); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS1 */
 	xgifb_reg_set(P3c4, 0x19, 0x40); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(30);
+	usleep_range(30, 1030);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 
 	xgifb_reg_set(P3c4, 0x18, 0x42); /* Set SR18 */ /* MRS, DLL Enable */
 	xgifb_reg_set(P3c4, 0x19, 0x0A); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x00); /* Set SR16 */
-	udelay(30);
+	usleep_range(30, 1030);
 	xgifb_reg_set(P3c4, 0x16, 0x00); /* Set SR16 */
 	xgifb_reg_set(P3c4, 0x16, 0x80); /* Set SR16 */
 
 	xgifb_reg_set(P3c4, 0x1B, 0x04); /* Set SR1B */
-	udelay(60);
+	usleep_range(60, 1060);
 	xgifb_reg_set(P3c4, 0x1B, 0x00); /* Set SR1B */
 
 	xgifb_reg_set(P3c4, 0x18, 0x42); /* Set SR18 */ /* MRS, DLL Reset */
 	xgifb_reg_set(P3c4, 0x19, 0x08); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x00); /* Set SR16 */
 
-	udelay(30);
+	usleep_range(30, 1030);
 	xgifb_reg_set(P3c4, 0x16, 0x83); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 
 	xgifb_reg_set(P3c4, 0x18, 0x80); /* Set SR18 */ /* MRS, ODT */
 	xgifb_reg_set(P3c4, 0x19, 0x46); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(30);
+	usleep_range(30, 1030);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS */
 	xgifb_reg_set(P3c4, 0x19, 0x40); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(30);
+	usleep_range(30, 1030);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15, 1015);
 
 	/* Set SR1B refresh control 000:close; 010:open */
 	xgifb_reg_set(P3c4, 0x1B, 0x04);
-	udelay(200);
+	usleep_range(200, 1200);
 
 }
 
@@ -208,7 +208,7 @@ static void XGINew_DDR2_MRS_XG20(struct xgi_hw_device_info *HwDeviceExtension,
 
 	xgifb_reg_set(P3d4, 0x97, 0x11); /* CR97 */
 
-	udelay(200);
+	usleep_range(200, 1200);
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* EMRS2 */
 	xgifb_reg_set(P3c4, 0x19, 0x80);
 	xgifb_reg_set(P3c4, 0x16, 0x05);
@@ -229,18 +229,18 @@ static void XGINew_DDR2_MRS_XG20(struct xgi_hw_device_info *HwDeviceExtension,
 	xgifb_reg_set(P3c4, 0x16, 0x05);
 	xgifb_reg_set(P3c4, 0x16, 0x85);
 
-	udelay(15);
+	usleep_range(15, 1015);
 	xgifb_reg_set(P3c4, 0x1B, 0x04); /* SR1B */
-	udelay(30);
+	usleep_range(30, 1030);
 	xgifb_reg_set(P3c4, 0x1B, 0x00); /* SR1B */
-	udelay(100);
+	usleep_range(100, 1100);
 
 	xgifb_reg_set(P3c4, 0x18, 0x42); /* MRS1 */
 	xgifb_reg_set(P3c4, 0x19, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x05);
 	xgifb_reg_set(P3c4, 0x16, 0x85);
 
-	udelay(200);
+	usleep_range(200, 1200);
 }
 
 static void XGINew_DDR1x_MRS_XG20(unsigned long P3c4,
@@ -250,20 +250,20 @@ static void XGINew_DDR1x_MRS_XG20(unsigned long P3c4,
 	xgifb_reg_set(P3c4, 0x19, 0x40);
 	xgifb_reg_set(P3c4, 0x16, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x80);
-	udelay(60);
+	usleep_range(60, 1060);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00);
 	xgifb_reg_set(P3c4, 0x19, 0x40);
 	xgifb_reg_set(P3c4, 0x16, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x80);
-	udelay(60);
+	usleep_range(60, 1060);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x01);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
 	xgifb_reg_set(P3c4, 0x16, 0x83);
-	mdelay(1);
+	usleep_range(1, 1001);
 	xgifb_reg_set(P3c4, 0x1B, 0x03);
-	udelay(500);
+	usleep_range(500, 1500);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
@@ -533,7 +533,7 @@ static unsigned short XGINew_SetDRAMSize20Reg(
 			      0x14,
 			      (xgifb_reg_get(pVBInfo->P3c4, 0x14) & 0x0F) |
 				(data & 0xF0));
-		udelay(15);
+		usleep_range(15, 1015);
 	}
 	return memsize;
 }
@@ -552,7 +552,7 @@ static int XGINew_ReadWriteRest(unsigned short StopAddr,
 		writel(Position, fbaddr + Position);
 	}
 
-	udelay(500); /* Fix #1759 Memory Size error in Multi-Adapter. */
+	usleep_range(500, 1500); /* Fix #1759 Memory Size error in Multi-Adapter. */
 
 	Position = 0;
 
@@ -602,7 +602,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				/* 22bit + 2 rank + 32bit */
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x52);
-				udelay(15);
+				usleep_range(15, 1015);
 
 				if (XGINew_ReadWriteRest(24, 23, pVBInfo) == 1)
 					return;
@@ -616,7 +616,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 					xgifb_reg_set(pVBInfo->P3c4,
 						      0x14,
 						      0x42);
-					udelay(15);
+					usleep_range(15, 1015);
 
 					if (XGINew_ReadWriteRest(23,
 								 23,
@@ -631,14 +631,14 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				/* 22bit + 2 rank + 16bit */
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x41);
-				udelay(15);
+				usleep_range(15, 1015);
 
 				if (XGINew_ReadWriteRest(23, 22, pVBInfo) == 1)
 					return;
 				xgifb_reg_set(pVBInfo->P3c4,
 					      0x13,
 					      0x31);
-				udelay(15);
+				usleep_range(15, 1015);
 			}
 
 		} else { /* Dual_16_8 */
@@ -649,7 +649,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				/* 0x41:16Mx16 bit*/
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x41);
-				udelay(15);
+				usleep_range(15, 1015);
 
 				if (XGINew_ReadWriteRest(23, 22, pVBInfo) == 1)
 					return;
@@ -664,7 +664,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 					xgifb_reg_set(pVBInfo->P3c4,
 						      0x14,
 						      0x31);
-					udelay(15);
+					usleep_range(15, 1015);
 
 					if (XGINew_ReadWriteRest(22,
 								 22,
@@ -680,7 +680,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				/* 0x30:8Mx8 bit*/
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x30);
-				udelay(15);
+				usleep_range(15, 1015);
 
 				if (XGINew_ReadWriteRest(22, 21, pVBInfo) == 1)
 					return;
@@ -689,7 +689,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				xgifb_reg_set(pVBInfo->P3c4,
 					      0x13,
 					      0x31);
-				udelay(15);
+				usleep_range(15, 1015);
 			}
 		}
 		break;
@@ -808,7 +808,7 @@ static int XGINew_DDRSizing340(struct xgi_hw_device_info *HwDeviceExtension,
 	for (i = 0; i < size; i++) {
 		/* SetDRAMSizingType */
 		xgifb_reg_and_or(pVBInfo->P3c4, 0x13, 0x80, dram_table[i][1]);
-		udelay(15); /* should delay 50 ns */
+		usleep_range(50, 1050); /* should delay 50 ns */
 
 		memsize = XGINew_SetDRAMSize20Reg(dram_table[i][0], pVBInfo);
 
-- 
1.9.1


