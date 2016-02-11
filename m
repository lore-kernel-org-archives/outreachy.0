X-GM-THRID: 6250087330161360896
X-Received: by 10.51.17.34 with SMTP id gb2mr15890656igd.10.1455211855583;
        Thu, 11 Feb 2016 09:30:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.9 with SMTP id g9ls1349140qgd.40.gmail; Thu, 11 Feb
 2016 09:30:54 -0800 (PST)
X-Received: by 10.129.159.131 with SMTP id w125mr17303721ywg.26.1455211854937;
        Thu, 11 Feb 2016 09:30:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id y131si673808ywc.0.2016.02.11.09.30.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:30:54 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id y89so43110886qge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Yz1dtWqwO6oz6vI9AxdyUhprBumBIOvtFTkrBH33HUk=;
        b=EW9STZTaM18HMvIgtyz0QUWkU9jyB7mvq12xXRDbY7HqaX4U2QX7Wk5HprsUa4BdPi
         ku/8EV8U6IG03/FAomtqQ8AYcfh81bX703V6Mn4LwLJp2sp7sufol3cJTgsg5ctNVwIu
         55paREg5Ki9TfxV91SWP9vPU1YxRjcATru4nNq4cMssvQ2Tcu1GmMqx95QMM+1j8yEPC
         TwuHiuCbflyfxeqWyQFymdCen9O/f0ld62QAkTTe5O8+zi00Qa+OUumPxkU87jIss146
         Bh2F8s9AAlK8fNffLmhN8WdufxOVyMuwzZPy7TszR9FElnGhRW4WS14gRuJ4Mc8mG/gv
         u3og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Yz1dtWqwO6oz6vI9AxdyUhprBumBIOvtFTkrBH33HUk=;
        b=WBPGTj5mQxSfKg+WkNl17VCUTXW0W34iOnckDM9P/hrMiQgInY6LShXUXEUfhA/XFi
         b5ROOjP0wCY4LhxD+SsiSsIfVCVLcguJ61KQ3Vf1g8vuq1qBXhOASg9igzhShD09eHGg
         6GUUkpQfdOHDFvTLlS7lk8y273RQcXmF8CV8dZ7WcFihAnhnEK7YtPE/6ddumX4saiai
         e+tvr8ij5YTE38RAUOIwoy06IGq5bnf4CfFeac7Oti13G0feWe2muXY/FxRDQcM7WaC/
         zXIJ+YmAXHGUFSYlDWS1DqaTCE7mYAvmDs6/GkjqwlvBel71LTbnVVZ+V/O3X42kJFUy
         ubMQ==
X-Gm-Message-State: AG10YORItCYZCg5Sb6uzgrz75ps44yzQ4QLntoQpPOnPa3sTCSsrMz/4BiwcKF+PPEj6QQ==
X-Received: by 10.140.43.67 with SMTP id d61mr56512709qga.18.1455211854799;
        Thu, 11 Feb 2016 09:30:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 191sm3731265qhq.17.2016.02.11.09.30.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:30:54 -0800 (PST)
Date: Thu, 11 Feb 2016 17:30:16 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: Remove unneeded parentheses
Message-ID: <20160211223016.GA4694@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unneeded parentheses around the right hand side of assignments as
they are not needed. Semantic patch:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a =
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 20 ++++++++++----------
 drivers/staging/xgifb/vb_setmode.c  | 14 +++++++-------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 3f20f91..733cd8e 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -655,26 +655,26 @@ static void XGIfb_pre_setmode(struct xgifb_video_info *xgifb_info)
 
 	switch (xgifb_info->display2) {
 	case XGIFB_DISP_CRT:
-		cr30 = (SIS_VB_OUTPUT_CRT2 | SIS_SIMULTANEOUS_VIEW_ENABLE);
+		cr30 = SIS_VB_OUTPUT_CRT2 | SIS_SIMULTANEOUS_VIEW_ENABLE;
 		cr31 |= SIS_DRIVER_MODE;
 		break;
 	case XGIFB_DISP_LCD:
-		cr30 = (SIS_VB_OUTPUT_LCD | SIS_SIMULTANEOUS_VIEW_ENABLE);
+		cr30 = SIS_VB_OUTPUT_LCD | SIS_SIMULTANEOUS_VIEW_ENABLE;
 		cr31 |= SIS_DRIVER_MODE;
 		break;
 	case XGIFB_DISP_TV:
 		if (xgifb_info->TV_type == TVMODE_HIVISION)
-			cr30 = (SIS_VB_OUTPUT_HIVISION
-					| SIS_SIMULTANEOUS_VIEW_ENABLE);
+			cr30 = SIS_VB_OUTPUT_HIVISION
+					| SIS_SIMULTANEOUS_VIEW_ENABLE;
 		else if (xgifb_info->TV_plug == TVPLUG_SVIDEO)
-			cr30 = (SIS_VB_OUTPUT_SVIDEO
-					| SIS_SIMULTANEOUS_VIEW_ENABLE);
+			cr30 = SIS_VB_OUTPUT_SVIDEO
+					| SIS_SIMULTANEOUS_VIEW_ENABLE;
 		else if (xgifb_info->TV_plug == TVPLUG_COMPOSITE)
-			cr30 = (SIS_VB_OUTPUT_COMPOSITE
-					| SIS_SIMULTANEOUS_VIEW_ENABLE);
+			cr30 = SIS_VB_OUTPUT_COMPOSITE
+					| SIS_SIMULTANEOUS_VIEW_ENABLE;
 		else if (xgifb_info->TV_plug == TVPLUG_SCART)
-			cr30 = (SIS_VB_OUTPUT_SCART
-					| SIS_SIMULTANEOUS_VIEW_ENABLE);
+			cr30 = SIS_VB_OUTPUT_SCART
+					| SIS_SIMULTANEOUS_VIEW_ENABLE;
 		cr31 |= SIS_DRIVER_MODE;
 
 		if (XGIfb_tvmode == 1 || xgifb_info->TV_type == TVMODE_PAL)
diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index c886dd2..6903c81 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1905,8 +1905,8 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 	push <<= 8;
 	tempax = temp << 8;
 	tempbx = tempbx | tempax;
-	temp = (SetCRT2ToDualEdge | SetCRT2ToYPbPr525750 | XGI_SetCRT2ToLCDA
-		| SetInSlaveMode | DisableCRT2Display);
+	temp = SetCRT2ToDualEdge | SetCRT2ToYPbPr525750 | XGI_SetCRT2ToLCDA
+		| SetInSlaveMode | DisableCRT2Display;
 	temp = 0xFFFF ^ temp;
 	tempbx &= temp;
 
@@ -2887,7 +2887,7 @@ static void XGI_SetGroup1(unsigned short ModeIdIndex,
 	xgifb_reg_set(pVBInfo->Part1Port, 0x0C, temp);
 	temp = tempcx & 0x00FF;
 	xgifb_reg_set(pVBInfo->Part1Port, 0x0D, temp);
-	tempcx = (pVBInfo->VGAVT - 1);
+	tempcx = pVBInfo->VGAVT - 1;
 	temp = tempcx & 0x00FF;
 
 	xgifb_reg_set(pVBInfo->Part1Port, 0x0E, temp);
@@ -2925,7 +2925,7 @@ static void XGI_SetGroup1(unsigned short ModeIdIndex,
 	temp = tempbx & 0x00FF;
 	xgifb_reg_set(pVBInfo->Part1Port, 0x10, temp);
 	temp = ((tempbx & 0xFF00) >> 8) << 4;
-	temp = ((tempcx & 0x000F) | (temp));
+	temp = (tempcx & 0x000F) | (temp);
 	xgifb_reg_set(pVBInfo->Part1Port, 0x11, temp);
 	tempax = 0;
 
@@ -4080,7 +4080,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 	tempcx |= 0x04000;
 
 	if (tempeax <= tempebx) {
-		tempcx = (tempcx & (~0x4000));
+		tempcx = tempcx & (~0x4000);
 		tempeax = pVBInfo->VGAVDE;
 	} else {
 		tempeax -= tempebx;
@@ -4130,7 +4130,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 		temp = (tempax & 0xFF00) >> 8;
 		temp = (temp & 0x0003) << 4;
 		xgifb_reg_set(pVBInfo->Part4Port, 0x1E, temp);
-		temp = (tempax & 0x00FF);
+		temp = tempax & 0x00FF;
 		xgifb_reg_set(pVBInfo->Part4Port, 0x1D, temp);
 
 		if (pVBInfo->VBInfo & (SetCRT2ToTV | SetCRT2ToHiVision)) {
@@ -4932,7 +4932,7 @@ static void XGI_SetCRT2ModeRegs(struct vb_device_info *pVBInfo)
 			tempcl -= ModeVGA;
 			if (tempcl >= 0) {
 				/* BT Color */
-				tempah = (0x008 >> tempcl);
+				tempah = 0x008 >> tempcl;
 				if (tempah == 0)
 					tempah = 1;
 				tempah |= 0x040;
-- 
2.5.0


