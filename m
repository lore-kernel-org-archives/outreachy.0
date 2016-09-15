X-GM-THRID: 6330303746353922048
X-Received: by 10.107.169.66 with SMTP id s63mr8219797ioe.16.1473966520828;
        Thu, 15 Sep 2016 12:08:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls4201987otw.9.gmail; Thu, 15 Sep 2016
 12:08:40 -0700 (PDT)
X-Received: by 10.200.39.131 with SMTP id w3mr7703017qtw.13.1473966520361;
        Thu, 15 Sep 2016 12:08:40 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si3049658pfe.0.2016.09.15.12.08.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:08:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so2438869pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=o5Cgo/4NHkxETNmPC2Bf1U2U2cUjD+5pXNyXbm46CKs=;
        b=nzhHtUFvMSRiIIcOr/UEyl9FTKU6j6Yy61PXadFk38bu5nfyYorBvyFD366S1v+ihE
         pG92BrLEDgLOdvn+l+kResu311RxGVOm26UQGi+kPxHkZAo7StcODUOkGEPUD0W5VaWM
         TAJNdsVhg6QH4BiJeHp7IhGFmf2d1cZoTJrpL3LVuiJLLmYZjk02m+52cs/1QnD6LDH0
         oErOmMyf2NvjUgu9eWctVs0mKPEpNdVk9AYR34/OYfZE7v38GtbSGHoNVyzwk1Lax8Ij
         jvnVVn8D5YM0NR6qpkiUO9zspqTzPesS8I599YzdRy6L4c7gqcGJsw1xoF0773c/dApP
         D6Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=o5Cgo/4NHkxETNmPC2Bf1U2U2cUjD+5pXNyXbm46CKs=;
        b=axeNMuJjwI27sT0LLpUZUKe6o4DNYtjdccbv0g7hMlrAMI+RUZX0+bPvih+dbNOiBA
         Bw2mNF1awg86L/JwJAgxtJZusJaciSaNiVWtJgHrFr5hACa4R1UysYYnHKdrAstOVkSt
         /PvxyrS+ScCk5AEfYmGMNlUOlFatekKA6jSeEbWFbis6LpfSjrQ2DK5us0sajh/Js3za
         ASbgdYhc+MQsyp07OZo8T7QnJo74WLAuohcsxIAYFe8ZS5bg64JLe8rZeWhayk+VDDzU
         Z6ZCgcJetv5B3ITl7AJ14l8s987+5pB+uRw34qPl2KjdUamUmoV8jEs68ZMQ0WTLpEf7
         EaNQ==
X-Gm-Message-State: AE9vXwO4U5FXOv/502cz0gF8QKL0RXWKqyfDNRdzBUtpUqu6WI6F2OoUkz3OmSxXSpcThw==
X-Received: by 10.66.86.105 with SMTP id o9mr17051966paz.108.1473966520042;
        Thu, 15 Sep 2016 12:08:40 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id vy9sm6795538pab.22.2016.09.15.12.08.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:08:39 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5 2/6] staging: xgifb: remove unnecessary parentheses
Date: Fri, 16 Sep 2016 00:37:10 +0530
Message-Id: <88bef30e67473dad1148b5e8e1e819ff15a4dc1f.1473965826.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>

! has higher priority than && or ||, so remove parentheses around
! expressions to make the code more readable.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 316209f..af3f4d0 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -214,7 +214,7 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 		if (!(pVBInfo->VBInfo & TVSetPAL) &&
 		    (modeflag & NoSupportSimuTV) &&
 		    (pVBInfo->VBInfo & SetInSlaveMode) &&
-		    (!(pVBInfo->VBInfo & SetNotSimuMode)))
+		    !(pVBInfo->VBInfo & SetNotSimuMode))
 			return 0;
 	}
 
@@ -1655,7 +1655,7 @@ static unsigned char XGI_GetVCLKPtr(unsigned short RefreshRateTableIndex,
 	modeflag = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
 
 	if ((pVBInfo->SetFlag & ProgrammingCRT2) &&
-	    (!(pVBInfo->LCDInfo & EnableScalingLCD))) { /* {LCDA/LCDB} */
+	    !(pVBInfo->LCDInfo & EnableScalingLCD)) { /* {LCDA/LCDB} */
 		index = XGI_GetLCDCapPtr(pVBInfo);
 		tempal = pVBInfo->LCDCapList[index].LCD_VCLK;
 
@@ -1716,7 +1716,7 @@ static void XGI_GetVCLKLen(unsigned char tempal, unsigned char *di_0,
 {
 	if (pVBInfo->VBType & (VB_SIS301 | VB_SIS301B | VB_SIS302B
 			| VB_SIS301LV | VB_SIS302LV | VB_XGI301C)) {
-		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
+		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
 		    (pVBInfo->SetFlag & ProgrammingCRT2)) {
 			*di_0 = XGI_VBVCLKData[tempal].Part4_A;
 			*di_1 = XGI_VBVCLKData[tempal].Part4_B;
@@ -1741,8 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 	for (i = 0; i < 4; i++) {
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
-		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
-				(!(pVBInfo->VBInfo & SetInSlaveMode))) {
+		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
+				!(pVBInfo->VBInfo & SetInSlaveMode)) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
@@ -1986,7 +1986,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 	}
 
 	if (!(tempbx & DisableCRT2Display)) {
-		if ((!(tempbx & DriverMode)) || (!(modeflag & CRT2Mode))) {
+		if (!(tempbx & DriverMode) || !(modeflag & CRT2Mode)) {
 			if (!(tempbx & XGI_SetCRT2ToLCDA))
 				tempbx |= (SetInSlaveMode | SetSimuScanMode);
 		}
@@ -2132,7 +2132,7 @@ static unsigned char XGI_GetLCDInfo(unsigned short ModeIdIndex,
 
 	if ((pVBInfo->LCDResInfo == Panel_1400x1050) &&
 	    (pVBInfo->VBInfo & SetCRT2ToLCD) && (resinfo == 9) &&
-	    (!(tempbx & EnableScalingLCD)))
+	    !(tempbx & EnableScalingLCD))
 		/*
 		 * set to center in 1280x1024 LCDB
 		 * for Panel_1400x1050
@@ -3922,7 +3922,7 @@ static void XGI_SetTap4Regs(struct vb_device_info *pVBInfo)
 		xgifb_reg_set(pVBInfo->Part2Port, i, Tap4TimingPtr->Reg[j]);
 
 	if ((pVBInfo->VBInfo & SetCRT2ToTV) &&
-	    (!(pVBInfo->VBInfo & SetCRT2ToHiVision))) {
+	    !(pVBInfo->VBInfo & SetCRT2ToHiVision)) {
 		/* Set Vertical Scaling */
 		Tap4TimingPtr = XGI_GetTap4Ptr(1, pVBInfo);
 		for (i = 0xC0, j = 0; i < 0xFF; i++, j++)
@@ -3932,7 +3932,7 @@ static void XGI_SetTap4Regs(struct vb_device_info *pVBInfo)
 	}
 
 	if ((pVBInfo->VBInfo & SetCRT2ToTV) &&
-	    (!(pVBInfo->VBInfo & SetCRT2ToHiVision)))
+	    !(pVBInfo->VBInfo & SetCRT2ToHiVision))
 		/* Enable V.Scaling */
 		xgifb_reg_and_or(pVBInfo->Part2Port, 0x4E, ~0x14, 0x04);
 	else
@@ -4142,8 +4142,8 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 					| TVSetHiVision))) {
 				temp |= 0x0001;
 				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
-						(!(pVBInfo->TVInfo
-								& TVSimuMode)))
+						!(pVBInfo->TVInfo
+								& TVSimuMode))
 					temp &= (~0x0001);
 			}
 		}
@@ -4476,7 +4476,7 @@ static void XGI_DisableBridge(struct xgifb_video_info *xgifb_info,
 
 		if ((pVBInfo->VBInfo &
 			(DisableCRT2Display | SetSimuScanMode)) ||
-		    ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
+		    (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
 		    (pVBInfo->VBInfo &
 			(SetCRT2ToRAMDAC | SetCRT2ToLCD | SetCRT2ToTV))))
 			xgifb_reg_or(pVBInfo->Part1Port, 0x00, 0x80);
@@ -4587,7 +4587,7 @@ static void XGI_GetTVPtrIndex2(unsigned short *tempbx, unsigned char *tempcl,
 
 	if (pVBInfo->VBType & (VB_SIS301B | VB_SIS302B | VB_SIS301LV
 			| VB_SIS302LV | VB_XGI301C)) {
-		if ((!(pVBInfo->VBInfo & SetInSlaveMode)) || (pVBInfo->TVInfo
+		if (!(pVBInfo->VBInfo & SetInSlaveMode) || (pVBInfo->TVInfo
 				& TVSimuMode)) {
 			*tempbx += 8;
 			*tempcl += 1;
@@ -4988,8 +4988,8 @@ reg_and_or:
 	if (pVBInfo->VBInfo & (SetCRT2ToRAMDAC | SetCRT2ToTV | SetCRT2ToLCD
 			| XGI_SetCRT2ToLCDA)) {
 		tempah &= (~0x08);
-		if ((pVBInfo->ModeType == ModeVGA) && (!(pVBInfo->VBInfo
-				& SetInSlaveMode))) {
+		if ((pVBInfo->ModeType == ModeVGA) && !(pVBInfo->VBInfo
+				& SetInSlaveMode)) {
 			tempah |= 0x010;
 		}
 		tempah |= 0x080;
@@ -5486,7 +5486,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 		XGI_DisableBridge(xgifb_info, HwDeviceExtension, pVBInfo);
 
 		if (pVBInfo->VBInfo & (SetSimuScanMode | XGI_SetCRT2ToLCDA) ||
-			(!(pVBInfo->VBInfo & SwitchCRT2))) {
+			!(pVBInfo->VBInfo & SwitchCRT2)) {
 			XGI_SetCRT1Group(xgifb_info, HwDeviceExtension, ModeNo,
 					ModeIdIndex, pVBInfo);
 
-- 
2.9.2


