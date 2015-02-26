X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.239.41 with SMTP id vp9mr1127879wjc.5.1424942872122;
        Thu, 26 Feb 2015 01:27:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.163 with SMTP id dt3ls1046546wib.34.canary; Thu, 26 Feb
 2015 01:27:51 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr1127876wjc.5.1424942871675;
        Thu, 26 Feb 2015 01:27:51 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ev8si1306678wib.3.2015.02.26.01.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:27:51 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f177.google.com with SMTP id bs8so10996441wib.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MZMfQXO9jJLCQzoKSm+6nEq2UQ/LDWScwA/J6Un/0G4=;
        b=okYJTBit4OZP+Yu+J702tO7EoZi+C4X+x0fhVWRUI+Nf3vIxkxg4z9h+AcJTN2/Y9Z
         yIiiqhmAHOBVuFqHXQMwf2j+Jj31BXS6mfibPtxifEdsborrzznHTwFNv5w/Tng3Vdyw
         F0He00cEbOz1rx/mV55z9gkIPc8SU1aAIvj0G6gswloIFc7e3PQG3DqWPCAPbr0K/d6H
         wFm+8ELk9rhYBkFe5USZW5sqjgJv1kgCEGWMPLs1xFxjY929lhg4pJs9wuB3LOrtDU5z
         h1RQYjcmeE6XR+vpKVvh9vGqBQ1f5CDAattTqsv9jG+zuynAv836p5jy7DzB7fE1ppxx
         gdCg==
X-Received: by 10.180.84.9 with SMTP id u9mr14101202wiy.91.1424942871504;
        Thu, 26 Feb 2015 01:27:51 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id p1sm1882228wib.23.2015.02.26.01.27.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:27:50 -0800 (PST)
Date: Thu, 26 Feb 2015 11:27:44 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 01/24] staging: xgifb: rewrite the right hand side of an
 assignment
Message-ID: <065652d7b827c90c86f4a37cd39d566419251185.1424942339.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 140 ++++++++++++++++++-------------------
 1 file changed, 70 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 1f6f699..a47395e 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -308,11 +308,11 @@ static void XGI_SetCRT1Timing_H(struct vb_device_info *pVBInfo,
 		data |= data1;
 		xgifb_reg_set(pVBInfo->P3d4, 0x05, data);
 		data = xgifb_reg_get(pVBInfo->P3c4, 0x0e);
-		data = data >> 5;
+		data >>= 5;
 		data = data + 3;
 		if (data > 7)
 			data = data - 7;
-		data = data << 5;
+		data <<= 5;
 		xgifb_reg_and_or(pVBInfo->P3c4, 0x0e, ~0xE0, data);
 	}
 }
@@ -347,7 +347,7 @@ static void XGI_SetCRT1Timing_V(unsigned short ModeIdIndex,
 
 	data = pVBInfo->TimingV.data[6];
 	data &= 0x80;
-	data = data >> 2;
+	data >>= 2;
 
 	i = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
 	i &= DoubleScanMode;
@@ -693,18 +693,18 @@ static void XGI_SetCRT1DE(unsigned short ModeIdIndex,
 	tempbx = XGI330_ModeResInfo[resindex].VTotal;
 
 	if (modeflag & HalfDCLK)
-		tempax = tempax >> 1;
+		tempax >>= 1;
 
 	if (modeflag & HalfDCLK)
-		tempax = tempax << 1;
+		tempax <<= 1;
 
 	temp = XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag;
 
 	if (temp & InterlaceMode)
-		tempbx = tempbx >> 1;
+		tempbx >>= 1;
 
 	if (modeflag & DoubleScanMode)
-		tempbx = tempbx << 1;
+		tempbx <<= 1;
 
 	tempcx = 8;
 
@@ -721,7 +721,7 @@ static void XGI_SetCRT1DE(unsigned short ModeIdIndex,
 			(unsigned short) ((tempcx & 0x0ff00) >> 10));
 	xgifb_reg_set(pVBInfo->P3d4, 0x12, (unsigned short) (tempbx & 0xff));
 	tempax = 0;
-	tempbx = tempbx >> 8;
+	tempbx >>= 8;
 
 	if (tempbx & 0x01)
 		tempax |= 0x02;
@@ -750,14 +750,14 @@ static void XGI_SetCRT1Offset(unsigned short ModeNo,
 
 	/* GetOffset */
 	temp = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeInfo;
-	temp = temp >> 8;
+	temp >>= 8;
 	temp = XGI330_ScreenOffset[temp];
 
 	temp2 = XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag;
 	temp2 &= InterlaceMode;
 
 	if (temp2)
-		temp = temp << 1;
+		temp <<= 1;
 
 	temp2 = pVBInfo->ModeType - ModeEGA;
 
@@ -792,7 +792,7 @@ static void XGI_SetCRT1Offset(unsigned short ModeNo,
 	/* SetOffset */
 	DisplayUnit = temp;
 	temp2 = temp;
-	temp = temp >> 8; /* ah */
+	temp >>= 8; /* ah */
 	temp &= 0x0F;
 	i = xgifb_reg_get(pVBInfo->P3c4, 0x0E);
 	i &= 0xF0;
@@ -809,7 +809,7 @@ static void XGI_SetCRT1Offset(unsigned short ModeNo,
 	if (temp2)
 		DisplayUnit >>= 1;
 
-	DisplayUnit = DisplayUnit << 5;
+	DisplayUnit <<= 5;
 	ah = (DisplayUnit & 0xff00) >> 8;
 	al = DisplayUnit & 0x00ff;
 	if (al == 0)
@@ -912,7 +912,7 @@ static void XGI_SetCRT1VCLK(unsigned short ModeIdIndex,
 			index = data;
 			index &= 0xE0;
 			data &= 0x1F;
-			data = data << 1;
+			data <<= 1;
 			data += 1;
 			data |= index;
 			xgifb_reg_set(pVBInfo->P3c4, 0x2C, data);
@@ -1011,7 +1011,7 @@ static void XGI_SetCRT1ModeRegs(struct xgi_hw_device_info *HwDeviceExtension,
 	data2 = 0;
 	data2 |= 0x02;
 	data3 = pVBInfo->ModeType - ModeVGA;
-	data3 = data3 << 2;
+	data3 <<= 2;
 	data2 |= data3;
 	data &= InterlaceMode;
 
@@ -1126,7 +1126,7 @@ static void XGI_LoadDAC(struct vb_device_info *pVBInfo)
 				data2 += 0x15;
 
 			outb(data2, pVBInfo->P3c9);
-			data = data >> 2;
+			data >>= 2;
 		}
 	}
 
@@ -1185,10 +1185,10 @@ static void XGI_GetLVDSResInfo(unsigned short ModeIdIndex,
 	yres = XGI330_ModeResInfo[resindex].VTotal;
 
 	if (modeflag & HalfDCLK)
-		xres = xres << 1;
+		xres <<= 1;
 
 	if (modeflag & DoubleScanMode)
-		yres = yres << 1;
+		yres <<= 1;
 
 	if (xres == 720)
 		xres = 640;
@@ -1450,8 +1450,8 @@ static void XGI_SetLVDSRegs(unsigned short ModeIdIndex,
 
 	xgifb_reg_set(pVBInfo->Part1Port, 0x1A, tempbx & 0x07);
 
-	tempcx = tempcx >> 3;
-	tempbx = tempbx >> 3;
+	tempcx >>= 3;
+	tempbx >>= 3;
 
 	xgifb_reg_set(pVBInfo->Part1Port, 0x16,
 			(unsigned short) (tempbx & 0xff));
@@ -1473,9 +1473,9 @@ static void XGI_SetLVDSRegs(unsigned short ModeIdIndex,
 		tempcx -= tempax;
 
 	tempax = tempbx & 0x07;
-	tempax = tempax >> 5;
-	tempcx = tempcx >> 3;
-	tempbx = tempbx >> 3;
+	tempax >>= 5;
+	tempcx >>= 3;
+	tempbx >>= 3;
 
 	tempcx &= 0x1f;
 	tempax |= tempcx;
@@ -1600,7 +1600,7 @@ static void XGI_SetLVDSRegs(unsigned short ModeIdIndex,
 	temp1 = pVBInfo->VGAHDE << 16;
 
 	temp1 /= temp3;
-	temp3 = temp3 << 16;
+	temp3 <<= 16;
 	temp1 -= 1;
 
 	temp3 = (temp3 & 0xffff0000) + (temp1 & 0xffff);
@@ -1622,10 +1622,10 @@ static void XGI_SetLVDSRegs(unsigned short ModeIdIndex,
 	xgifb_reg_set(pVBInfo->Part1Port, 0x21,
 			(unsigned short) (tempbx & 0xff));
 
-	temp3 = temp3 >> 16;
+	temp3 >>= 16;
 
 	if (modeflag & HalfDCLK)
-		temp3 = temp3 >> 1;
+		temp3 >>= 1;
 
 	xgifb_reg_set(pVBInfo->Part1Port, 0x22,
 			(unsigned short) ((temp3 >> 8) & 0xff));
@@ -1909,7 +1909,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 	tempbx = tempbx | temp;
 	temp = xgifb_reg_get(pVBInfo->P3d4, 0x31);
 	push = temp;
-	push = push << 8;
+	push <<= 8;
 	tempax = temp << 8;
 	tempbx = tempbx | tempax;
 	temp = (SetCRT2ToDualEdge | SetCRT2ToYPbPr525750 | XGI_SetCRT2ToLCDA
@@ -2107,7 +2107,7 @@ static unsigned char XGI_GetLCDInfo(unsigned short ModeIdIndex,
 			if (pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)
 				tempax &= 0x0F;
 			else
-				tempax = tempax >> 4;
+				tempax >>= 4;
 
 			if ((resinfo == 6) || (resinfo == 9)) {
 				if (tempax >= 3)
@@ -2182,7 +2182,7 @@ static unsigned char XG21GPIODataTransfer(unsigned char ujDate)
 	unsigned char i = 0;
 
 	for (i = 0; i < 8; i++) {
-		ujRet = ujRet << 1;
+		ujRet <<= 1;
 		ujRet |= (ujDate >> i) & 1;
 	}
 
@@ -2494,7 +2494,7 @@ static void XGI_GetRAMDAC2DATA(unsigned short ModeIdIndex,
 	tempcx = (unsigned short)
 			XGI_CRT1Table[CRT1Index].CR[14] << 8;
 	tempcx &= 0x0100;
-	tempcx = tempcx << 2;
+	tempcx <<= 2;
 	tempbx |= tempcx;
 	temp1 = (unsigned short) XGI_CRT1Table[CRT1Index].CR[9];
 
@@ -2745,7 +2745,7 @@ static unsigned short XGI_GetOffset(unsigned short ModeNo,
 	temp = XGI330_ScreenOffset[index];
 
 	if (infoflag & InterlaceMode)
-		temp = temp << 1;
+		temp <<= 1;
 
 	colordepth = XGI_GetColorDepth(ModeIdIndex);
 
@@ -2754,7 +2754,7 @@ static unsigned short XGI_GetOffset(unsigned short ModeNo,
 		colordepth = ColorDepth[temp];
 		temp = 0x6B;
 		if (infoflag & InterlaceMode)
-			temp = temp << 1;
+			temp <<= 1;
 	}
 	return temp * colordepth;
 }
@@ -2826,7 +2826,7 @@ static void XGI_SetGroup1(unsigned short ModeIdIndex,
 		xgifb_reg_set(pVBInfo->Part1Port, 0x0A, temp);
 		tempcx = ((pVBInfo->VGAHT - pVBInfo->VGAHDE) / 2) >> 2;
 		pushbx = pVBInfo->VGAHDE / 2 + 16;
-		tempcx = tempcx >> 1;
+		tempcx >>= 1;
 		tempbx = pushbx + tempcx; /* bx BTVGA@HRS 0x0B,0x0C */
 		tempcx += tempbx;
 
@@ -2861,7 +2861,7 @@ static void XGI_SetGroup1(unsigned short ModeIdIndex,
 		xgifb_reg_set(pVBInfo->Part1Port, 0x0A, temp);
 		tempcx = (pVBInfo->VGAHT - pVBInfo->VGAHDE) >> 2; /* cx */
 		pushbx = pVBInfo->VGAHDE + 16;
-		tempcx = tempcx >> 1;
+		tempcx >>= 1;
 		tempbx = pushbx + tempcx; /* bx BTVGA@HRS 0x0B,0x0C */
 		tempcx += tempbx;
 
@@ -2980,7 +2980,7 @@ static void XGI_SetLockRegs(unsigned short ModeNo, unsigned short ModeIdIndex,
 	tempax = pVBInfo->VGAHDE; /* 0x04 Horizontal Display End */
 
 	if (modeflag & HalfDCLK)
-		tempax = tempax >> 1;
+		tempax >>= 1;
 
 	tempax = (tempax / tempcx) - 1;
 	tempbx |= ((tempax & 0x00FF) << 8);
@@ -3015,7 +3015,7 @@ static void XGI_SetLockRegs(unsigned short ModeNo, unsigned short ModeIdIndex,
 		tempax = pVBInfo->VGAHT;
 
 	if (modeflag & HalfDCLK)
-		tempax = tempax >> 1;
+		tempax >>= 1;
 
 	tempax = (tempax / tempcx) - 5;
 	tempcx = tempax; /* 20030401 0x07 horizontal Retrace Start */
@@ -3142,11 +3142,11 @@ static void XGI_SetLockRegs(unsigned short ModeNo, unsigned short ModeIdIndex,
 
 	tempax = push1;
 	tempax -= tempbx; /* 0x0C Vertical Retrace Start */
-	tempax = tempax >> 2;
+	tempax >>= 2;
 	push1 = tempax; /* push ax */
 
 	if (resinfo != 0x09) {
-		tempax = tempax << 1;
+		tempax <<= 1;
 		tempbx += tempax;
 	}
 
@@ -3179,7 +3179,7 @@ static void XGI_SetLockRegs(unsigned short ModeNo, unsigned short ModeIdIndex,
 		}
 	}
 	tempax = push1;
-	tempax = tempax >> 2;
+	tempax >>= 2;
 	tempax++;
 	tempax += tempbx;
 	push1 = tempax; /* push ax */
@@ -3332,7 +3332,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 
 	if (pVBInfo->VDE <= tempax) {
 		tempax -= pVBInfo->VDE;
-		tempax = tempax >> 2;
+		tempax >>= 2;
 		tempax = (tempax & 0x00FF) | ((tempax & 0x00FF) << 8);
 		push1 = tempax;
 		temp = (tempax & 0xFF00) >> 8;
@@ -3377,7 +3377,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 	tempcx = pVBInfo->HT;
 
 	if (XGI_IsLCDDualLink(pVBInfo))
-		tempcx = tempcx >> 1;
+		tempcx >>= 1;
 
 	tempcx -= 2;
 	temp = tempcx & 0x00FF;
@@ -3394,7 +3394,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 		tempcx -= 4;
 
 	temp = tempcx & 0x00FF;
-	temp = temp << 4;
+	temp <<= 4;
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x22, 0x0F, temp);
 
 	tempbx = TimingPoint[j] | ((TimingPoint[j + 1]) << 8);
@@ -3403,7 +3403,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 	temp = tempbx & 0x00FF;
 	xgifb_reg_set(pVBInfo->Part2Port, 0x24, temp);
 	temp = (tempbx & 0xFF00) >> 8;
-	temp = temp << 4;
+	temp <<= 4;
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x25, 0x0F, temp);
 
 	tempbx = push2;
@@ -3428,7 +3428,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 		tempcx -= 4;
 
 	temp = tempcx & 0xFF;
-	temp = temp << 4;
+	temp <<= 4;
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x2A, 0x0F, temp);
 
 	tempcx = push1; /* pop cx */
@@ -3436,7 +3436,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 	temp = TimingPoint[j] | ((TimingPoint[j + 1]) << 8);
 	tempcx -= temp;
 	temp = tempcx & 0x00FF;
-	temp = temp << 4;
+	temp <<= 4;
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x2D, 0x0F, temp);
 
 	tempcx -= 11;
@@ -3462,9 +3462,9 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 		    (VB_SIS301LV | VB_SIS302LV | VB_XGI301C)) {
 			if (!(pVBInfo->TVInfo &
 			    (TVSetYPbPr525p | TVSetYPbPr750p)))
-				tempbx = tempbx >> 1;
+				tempbx >>= 1;
 		} else
-			tempbx = tempbx >> 1;
+			tempbx >>= 1;
 	}
 
 	tempbx -= 2;
@@ -3514,7 +3514,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 		if (pVBInfo->VBInfo & SetCRT2ToTV) {
 			if (!(pVBInfo->TVInfo & (TVSetYPbPr525p
 					| TVSetYPbPr750p)))
-				tempbx = tempbx >> 1;
+				tempbx >>= 1;
 		}
 
 		if (pVBInfo->VBType & (VB_SIS302LV | VB_XGI301C)) {
@@ -3627,7 +3627,7 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 	xgifb_reg_set(pVBInfo->Part2Port, 0x4c, temp);
 
 	temp = ((tempcx & 0xFF00) >> 8) & 0x03;
-	temp = temp << 2;
+	temp <<= 2;
 	temp |= ((tempbx & 0xFF00) >> 8) & 0x03;
 
 	if (pVBInfo->VBInfo & SetCRT2ToYPbPr525750) {
@@ -3691,13 +3691,13 @@ static void XGI_SetLCDRegs(unsigned short ModeIdIndex,
 	tempbx = pVBInfo->HDE; /* RHACTE=HDE-1 */
 
 	if (XGI_IsLCDDualLink(pVBInfo))
-		tempbx = tempbx >> 1;
+		tempbx >>= 1;
 
 	tempbx -= 1;
 	temp = tempbx & 0x00FF;
 	xgifb_reg_set(pVBInfo->Part2Port, 0x2C, temp);
 	temp = (tempbx & 0xFF00) >> 8;
-	temp = temp << 4;
+	temp <<= 4;
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x2B, 0x0F, temp);
 	temp = 0x01;
 
@@ -3713,7 +3713,7 @@ static void XGI_SetLCDRegs(unsigned short ModeIdIndex,
 	temp = tempcx & 0x00FF; /* RVTVT=VT-1 */
 	xgifb_reg_set(pVBInfo->Part2Port, 0x19, temp);
 	temp = (tempcx & 0xFF00) >> 8;
-	temp = temp << 5;
+	temp <<= 5;
 	xgifb_reg_set(pVBInfo->Part2Port, 0x1A, temp);
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x09, 0xF0, 0x00);
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x0A, 0xF0, 0x00);
@@ -3770,7 +3770,7 @@ static void XGI_SetLCDRegs(unsigned short ModeIdIndex,
 	tempch = ((tempcx & 0xFF00) >> 8) & 0x07;
 	tempbh = ((tempbx & 0xFF00) >> 8) & 0x07;
 	tempah = tempch;
-	tempah = tempah << 3;
+	tempah <<= 3;
 	tempah |= tempbh;
 	xgifb_reg_set(pVBInfo->Part2Port, 0x02, tempah);
 
@@ -3787,7 +3787,7 @@ static void XGI_SetLCDRegs(unsigned short ModeIdIndex,
 	temp = tempbx & 0x00FF; /* RTVACTEE=lcdvrs */
 	xgifb_reg_set(pVBInfo->Part2Port, 0x04, temp);
 	temp = (tempbx & 0xFF00) >> 8;
-	temp = temp << 4;
+	temp <<= 4;
 	temp |= (tempcx & 0x000F);
 	xgifb_reg_set(pVBInfo->Part2Port, 0x01, temp);
 	tempcx = pushbx;
@@ -3796,9 +3796,9 @@ static void XGI_SetLCDRegs(unsigned short ModeIdIndex,
 	tempbx &= 0x0FFF;
 
 	if (XGI_IsLCDDualLink(pVBInfo)) {
-		tempax = tempax >> 1;
-		tempbx = tempbx >> 1;
-		tempcx = tempcx >> 1;
+		tempax >>= 1;
+		tempbx >>= 1;
+		tempcx >>= 1;
 	}
 
 	if (pVBInfo->VBType & VB_SIS302LV)
@@ -3826,9 +3826,9 @@ static void XGI_SetLCDRegs(unsigned short ModeIdIndex,
 	tempax = pVBInfo->HT;
 	tempbx = pVBInfo->LCDHRS;
 	if (XGI_IsLCDDualLink(pVBInfo)) {
-		tempax = tempax >> 1;
-		tempbx = tempbx >> 1;
-		tempcx = tempcx >> 1;
+		tempax >>= 1;
+		tempbx >>= 1;
+		tempcx >>= 1;
 	}
 
 	if (pVBInfo->VBType & VB_SIS302LV)
@@ -3843,7 +3843,7 @@ static void XGI_SetLCDRegs(unsigned short ModeIdIndex,
 	xgifb_reg_set(pVBInfo->Part2Port, 0x1C, temp);
 
 	temp = (tempbx & 0xFF00) >> 8;
-	temp = temp << 4;
+	temp <<= 4;
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x1D, ~0x0F0, temp);
 	temp = tempcx & 0x00FF; /* RHSYEXP2S=lcdhre */
 	xgifb_reg_set(pVBInfo->Part2Port, 0x21, temp);
@@ -4044,10 +4044,10 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 	tempbx = pVBInfo->VGAHDE;
 
 	if (modeflag & HalfDCLK)
-		tempbx = tempbx >> 1;
+		tempbx >>= 1;
 
 	if (XGI_IsLCDDualLink(pVBInfo))
-		tempbx = tempbx >> 1;
+		tempbx >>= 1;
 
 	if (tempcx & SetCRT2ToHiVision) {
 		temp = 0;
@@ -4107,7 +4107,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 	xgifb_reg_set(pVBInfo->Part4Port, 0x1A, temp);
 	tempbx = (unsigned short) (tempebx >> 16);
 	temp = tempbx & 0x00FF;
-	temp = temp << 4;
+	temp <<= 4;
 	temp |= ((tempcx & 0xFF00) >> 8);
 	xgifb_reg_set(pVBInfo->Part4Port, 0x19, temp);
 
@@ -4118,10 +4118,10 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 		xgifb_reg_set(pVBInfo->Part4Port, 0x1C, temp);
 		tempax = pVBInfo->VGAHDE;
 		if (modeflag & HalfDCLK)
-			tempax = tempax >> 1;
+			tempax >>= 1;
 
 		if (XGI_IsLCDDualLink(pVBInfo))
-			tempax = tempax >> 1;
+			tempax >>= 1;
 
 		if (pVBInfo->VBInfo & SetCRT2ToLCD) {
 			if (tempax > 800)
@@ -4162,7 +4162,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 		xgifb_reg_and_or(pVBInfo->Part4Port, 0x1F, 0x00C0, temp);
 		tempbx = pVBInfo->HT;
 		if (XGI_IsLCDDualLink(pVBInfo))
-			tempbx = tempbx >> 1;
+			tempbx >>= 1;
 		tempbx = (tempbx >> 1) - 2;
 		temp = ((tempbx & 0x0700) >> 8) << 3;
 		xgifb_reg_and_or(pVBInfo->Part4Port, 0x21, 0x00C0, temp);
@@ -4622,7 +4622,7 @@ static void XGI_SetDelayComp(struct vb_device_info *pVBInfo)
 			tempbl = XGI301TVDelay;
 
 			if (pVBInfo->VBInfo & SetCRT2ToDualEdge)
-				tempbl = tempbl >> 4;
+				tempbl >>= 4;
 			if (pVBInfo->VBInfo &
 			    (SetCRT2ToLCD | XGI_SetCRT2ToLCDA)) {
 				tempbh = XGI301LCDDelay;
@@ -4785,7 +4785,7 @@ static void XGI_SetAntiFlicker(struct vb_device_info *pVBInfo)
 	tempbx = XGI_GetTVPtrIndex(pVBInfo);
 	tempbx &= 0xFE;
 	tempah = TVAntiFlickList[tempbx];
-	tempah = tempah << 4;
+	tempah <<= 4;
 
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x0A, 0x8F, tempah);
 }
@@ -4799,7 +4799,7 @@ static void XGI_SetEdgeEnhance(struct vb_device_info *pVBInfo)
 	tempbx = XGI_GetTVPtrIndex(pVBInfo);
 	tempbx &= 0xFE;
 	tempah = TVEdgeList[tempbx];
-	tempah = tempah << 5;
+	tempah <<= 5;
 
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x3A, 0x1F, tempah);
 }
@@ -5101,7 +5101,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 	unsigned short RefreshRateTableIndex, i, index, temp;
 
 	index = xgifb_reg_get(pVBInfo->P3d4, 0x33);
-	index = index >> pVBInfo->SelectCRT2Rate;
+	index >>= pVBInfo->SelectCRT2Rate;
 	index &= 0x0F;
 
 	if (pVBInfo->LCDInfo & LCDNonExpanding)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

