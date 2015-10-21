X-GM-THRID: 6208125602285748224
X-Received: by 10.66.158.229 with SMTP id wx5mr8408974pab.3.1445441879279;
        Wed, 21 Oct 2015 08:37:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.13.36 with SMTP id e4ls1509289igc.13.canary; Wed, 21 Oct
 2015 08:37:58 -0700 (PDT)
X-Received: by 10.66.252.6 with SMTP id zo6mr8084332pac.29.1445441878784;
        Wed, 21 Oct 2015 08:37:58 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1142144pbb.0.2015.10.21.08.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 08:37:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id rc13so57860474pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 08:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5UocuSzeyTPjb0p7ucrtVYizQtgrjmFvy4kodH+t2Fg=;
        b=mGBH0vdOyykozW8tdBGy6csGzunTG1o67/trCPmb0Dh8aPJ6i611wdSnilQDj/DDus
         B+n27aWzaZsVDm47leyTxRJ4NkICVVBNA4J0t/ngthMcBkSXiL6MHKUfX+aa5tmOtlXo
         g0JMB/HOJxk1WDREeMtvnCaVYIeRwvjf+f0zJBfP/w+pNpRhc3pCpaxbBCJ2QTAuqaW0
         5m5n/0O4GypQIr3gim1x2ej0t/QziKlveTmrZicvkuygNVCdSjcCljSqtXHEWAugkbD5
         +Gq7+X5dVMNamC7/jQd4PxEfF6bjKq50TXxFtn3l5qizMTBmu91WPR7s9+Pm4bMJKiBm
         ZNFQ==
X-Received: by 10.68.216.193 with SMTP id os1mr11243695pbc.110.1445441878636;
        Wed, 21 Oct 2015 08:37:58 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.33.173])
        by smtp.gmail.com with ESMTPSA id i9sm9775860pbq.84.2015.10.21.08.37.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 08:37:58 -0700 (PDT)
Date: Wed, 21 Oct 2015 21:08:00 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: xgifb: Replace udelay function with usleep_range
Message-ID: <20151021153800.GA3140@navya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl check:

CHECK: usleep_range is preferred over udelay

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 78 ++++++++++++++++++++---------------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 2b233af..ea358a0 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_TYPE340[4][2] = {
 	{ 16, 0x45},
 	{  8, 0x35},
 	{  4, 0x31},
-	{  2, 0x21} };
+	{  2, 0x21} };e
 
 static const unsigned short XGINew_DDRDRAM_TYPE20[12][2] = {
 	{ 128, 0x5D},
@@ -51,7 +51,7 @@ XGINew_GetXG20DRAMType(struct xgi_hw_device_info *HwDeviceExtension,
 	} else if (HwDeviceExtension->jChipType == XG21) {
 		/* Independent GPIO control */
 		xgifb_reg_and(pVBInfo->P3d4, 0xB4, ~0x02);
-		udelay(800);
+		usleep_range(800);
 		xgifb_reg_or(pVBInfo->P3d4, 0x4A, 0x80); /* Enable GPIOH read */
 		/* GPIOF 0:DVI 1:DVO */
 		data = xgifb_reg_get(pVBInfo->P3d4, 0x48);
@@ -86,14 +86,14 @@ static void XGINew_DDR1x_MRS_340(unsigned long P3c4,
 	xgifb_reg_set(P3c4, 0x16, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x80);
 
-	udelay(60);
+	usleep_range(60);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x01);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
 	xgifb_reg_set(P3c4, 0x16, 0x83);
 	mdelay(1);
 	xgifb_reg_set(P3c4, 0x1B, 0x03);
-	udelay(500);
+	usleep_range(500);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
@@ -136,65 +136,65 @@ static void XGINew_DDRII_Bootup_XG27(
 	/* Set Double Frequency */
 	xgifb_reg_set(P3d4, 0x97, pVBInfo->XGINew_CR97); /* CR97 */
 
-	udelay(200);
+	usleep_range(200);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS2 */
 	xgifb_reg_set(P3c4, 0x19, 0x80); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS3 */
 	xgifb_reg_set(P3c4, 0x19, 0xC0); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS1 */
 	xgifb_reg_set(P3c4, 0x19, 0x40); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(30);
+	usleep_range(30);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 
 	xgifb_reg_set(P3c4, 0x18, 0x42); /* Set SR18 */ /* MRS, DLL Enable */
 	xgifb_reg_set(P3c4, 0x19, 0x0A); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x00); /* Set SR16 */
-	udelay(30);
+	usleep_range(30);
 	xgifb_reg_set(P3c4, 0x16, 0x00); /* Set SR16 */
 	xgifb_reg_set(P3c4, 0x16, 0x80); /* Set SR16 */
 
 	xgifb_reg_set(P3c4, 0x1B, 0x04); /* Set SR1B */
-	udelay(60);
+	usleep_range(60);
 	xgifb_reg_set(P3c4, 0x1B, 0x00); /* Set SR1B */
 
 	xgifb_reg_set(P3c4, 0x18, 0x42); /* Set SR18 */ /* MRS, DLL Reset */
 	xgifb_reg_set(P3c4, 0x19, 0x08); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x00); /* Set SR16 */
 
-	udelay(30);
+	usleep_range(30);
 	xgifb_reg_set(P3c4, 0x16, 0x83); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 
 	xgifb_reg_set(P3c4, 0x18, 0x80); /* Set SR18 */ /* MRS, ODT */
 	xgifb_reg_set(P3c4, 0x19, 0x46); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(30);
+	usleep_range(30);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* Set SR18 */ /* EMRS */
 	xgifb_reg_set(P3c4, 0x19, 0x40); /* Set SR19 */
 	xgifb_reg_set(P3c4, 0x16, 0x20); /* Set SR16 */
-	udelay(30);
+	usleep_range(30);
 	xgifb_reg_set(P3c4, 0x16, 0xA0); /* Set SR16 */
-	udelay(15);
+	usleep_range(15);
 
 	/* Set SR1B refresh control 000:close; 010:open */
 	xgifb_reg_set(P3c4, 0x1B, 0x04);
-	udelay(200);
+	usleep_range(200);
 
 }
 
@@ -208,7 +208,7 @@ static void XGINew_DDR2_MRS_XG20(struct xgi_hw_device_info *HwDeviceExtension,
 
 	xgifb_reg_set(P3d4, 0x97, 0x11); /* CR97 */
 
-	udelay(200);
+	usleep_range(200);
 	xgifb_reg_set(P3c4, 0x18, 0x00); /* EMRS2 */
 	xgifb_reg_set(P3c4, 0x19, 0x80);
 	xgifb_reg_set(P3c4, 0x16, 0x05);
@@ -229,18 +229,18 @@ static void XGINew_DDR2_MRS_XG20(struct xgi_hw_device_info *HwDeviceExtension,
 	xgifb_reg_set(P3c4, 0x16, 0x05);
 	xgifb_reg_set(P3c4, 0x16, 0x85);
 
-	udelay(15);
+	usleep_range(15);
 	xgifb_reg_set(P3c4, 0x1B, 0x04); /* SR1B */
-	udelay(30);
+	usleep_range(30);
 	xgifb_reg_set(P3c4, 0x1B, 0x00); /* SR1B */
-	udelay(100);
+	usleep_range(100);
 
 	xgifb_reg_set(P3c4, 0x18, 0x42); /* MRS1 */
 	xgifb_reg_set(P3c4, 0x19, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x05);
 	xgifb_reg_set(P3c4, 0x16, 0x85);
 
-	udelay(200);
+	usleep_range(200);
 }
 
 static void XGINew_DDR1x_MRS_XG20(unsigned long P3c4,
@@ -250,20 +250,20 @@ static void XGINew_DDR1x_MRS_XG20(unsigned long P3c4,
 	xgifb_reg_set(P3c4, 0x19, 0x40);
 	xgifb_reg_set(P3c4, 0x16, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x80);
-	udelay(60);
+	usleep_range(60);
 
 	xgifb_reg_set(P3c4, 0x18, 0x00);
 	xgifb_reg_set(P3c4, 0x19, 0x40);
 	xgifb_reg_set(P3c4, 0x16, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x80);
-	udelay(60);
+	usleep_range(60);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x01);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
 	xgifb_reg_set(P3c4, 0x16, 0x83);
 	mdelay(1);
 	xgifb_reg_set(P3c4, 0x1B, 0x03);
-	udelay(500);
+	usleep_range(500);
 	xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
 	xgifb_reg_set(P3c4, 0x19, 0x00);
 	xgifb_reg_set(P3c4, 0x16, 0x03);
@@ -533,7 +533,7 @@ static unsigned short XGINew_SetDRAMSize20Reg(
 			      0x14,
 			      (xgifb_reg_get(pVBInfo->P3c4, 0x14) & 0x0F) |
 				(data & 0xF0));
-		udelay(15);
+		usleep_range(15);
 	}
 	return memsize;
 }
@@ -552,7 +552,7 @@ static int XGINew_ReadWriteRest(unsigned short StopAddr,
 		writel(Position, fbaddr + Position);
 	}
 
-	udelay(500); /* Fix #1759 Memory Size error in Multi-Adapter. */
+	usleep_range(500); /* Fix #1759 Memory Size error in Multi-Adapter. */
 
 	Position = 0;
 
@@ -602,7 +602,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				/* 22bit + 2 rank + 32bit */
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x52);
-				udelay(15);
+				usleep_range(15);
 
 				if (XGINew_ReadWriteRest(24, 23, pVBInfo) == 1)
 					return;
@@ -616,7 +616,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 					xgifb_reg_set(pVBInfo->P3c4,
 						      0x14,
 						      0x42);
-					udelay(15);
+					usleep_range(15);
 
 					if (XGINew_ReadWriteRest(23,
 								 23,
@@ -631,14 +631,14 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				/* 22bit + 2 rank + 16bit */
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x41);
-				udelay(15);
+				usleep_range(15);
 
 				if (XGINew_ReadWriteRest(23, 22, pVBInfo) == 1)
 					return;
 				xgifb_reg_set(pVBInfo->P3c4,
 					      0x13,
 					      0x31);
-				udelay(15);
+				usleep_range(15);
 			}
 
 		} else { /* Dual_16_8 */
@@ -649,7 +649,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				/* 0x41:16Mx16 bit*/
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x41);
-				udelay(15);
+				usleep_range(15);
 
 				if (XGINew_ReadWriteRest(23, 22, pVBInfo) == 1)
 					return;
@@ -664,7 +664,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 					xgifb_reg_set(pVBInfo->P3c4,
 						      0x14,
 						      0x31);
-					udelay(15);
+					usleep_range(15);
 
 					if (XGINew_ReadWriteRest(22,
 								 22,
@@ -680,7 +680,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				xgifb_reg_set(pVBInfo->P3c4, 0x13, 0xB1);
 				/* 0x30:8Mx8 bit*/
 				xgifb_reg_set(pVBInfo->P3c4, 0x14, 0x30);
-				udelay(15);
+				usleep_range(15);
 
 				if (XGINew_ReadWriteRest(22, 21, pVBInfo) == 1)
 					return;
@@ -689,7 +689,7 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 				xgifb_reg_set(pVBInfo->P3c4,
 					      0x13,
 					      0x31);
-				udelay(15);
+				usleep_range(15);
 			}
 		}
 		break;
@@ -808,7 +808,7 @@ static int XGINew_DDRSizing340(struct xgi_hw_device_info *HwDeviceExtension,
 	for (i = 0; i < size; i++) {
 		/* SetDRAMSizingType */
 		xgifb_reg_and_or(pVBInfo->P3c4, 0x13, 0x80, dram_table[i][1]);
-		udelay(15); /* should delay 50 ns */
+		usleep_range(15); /* should delay 50 ns */
 
 		memsize = XGINew_SetDRAMSize20Reg(dram_table[i][0], pVBInfo);
 
-- 
1.9.1


