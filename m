X-GM-THRID: 6342587309964132352
X-Received: by 10.66.17.228 with SMTP id r4mr49566pad.101.1476748685380;
        Mon, 17 Oct 2016 16:58:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.124 with SMTP id l57ls3669306ote.44.gmail; Mon, 17 Oct
 2016 16:58:05 -0700 (PDT)
X-Received: by 10.200.51.97 with SMTP id u30mr74601qta.16.1476748685016;
        Mon, 17 Oct 2016 16:58:05 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id x14si4557814vkd.3.2016.10.17.16.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 16:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id 83so7764718vkd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 16:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Moql1P974P92seZuoRRe5ZR2RpWNKcdVIxd3X9tPE9I=;
        b=uLpomYOFuNlHGsC0QI9ibbKNTEncKCEEBjA9a4taJ9NPLou1zztYTX6Ni3eXcc+dCC
         Xlb3wF9MSeaV4HTc+eTge3LEwG+YW70+TZuDnVYMiSPPdgCk1P0BSjGP6mBYQeXILORJ
         mdU8+icSCjld5FyLwZx3YjD6MBpeRmMDYhyUwalO2+T0do+EhbvbeXf8sZhsx7UyeOLS
         oPfQhjwtusY91w13jESbhz7cHPpqkV/QmJSRnhRc/KzDObUR6w8lOY+5+/HfZMoUoq84
         01cqOIVmeuby8JwsvKxtMBjagH6xw+e64daWjMY/4s43Ld1HxTerZXJ/X2ShRsPXGXcj
         wOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Moql1P974P92seZuoRRe5ZR2RpWNKcdVIxd3X9tPE9I=;
        b=N0C9S44nybCg04o5450pzVm8tlHxd4Ky/my39ECm36fvhvRj/OhYQf+Y5aOaVJPs8z
         rtlcCMg/IpGlfwiaBjPAQdEYFynf6r8JZrT2tXnzxUELOA6p8k5ZWxK4Z1gLN3yqsJgc
         5yLLavzIO1f6kNxX4IRDXDzPTq/D/TVl//T/AYKREnKpu+grm385SD7ELUbfcTKAmu9q
         a3iJzc8DLGaIdRAZVirR0BR/VpVRuw/Wm9EzgMSlE2N8G7pvFAVz0qHea1sEPOWjpr8M
         r6jZgmcIF7yYtbriNZ2fHBbLMgLbn9ETtQ/7oiQP+n4hlsYkcWMcgEllh5yminnYCrXz
         XdNg==
X-Gm-Message-State: AA6/9RmgXhS92Jv+ds5aXvG2wIHlkqvUQ0PeZHl+Ij4DHxaUizd4xvvHPdrkLxf7I29wnw==
X-Received: by 10.31.5.15 with SMTP id 15mr59070vkf.164.1476748684868;
        Mon, 17 Oct 2016 16:58:04 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id s17sm12872750vka.26.2016.10.17.16.58.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 16:58:04 -0700 (PDT)
Date: Mon, 17 Oct 2016 21:57:58 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: arnaud.patard@rtp-net.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: xgifb: Remove unnecessary parentheses.
Message-ID: <20161017235758.GA21742@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The removed parentheses are unnecessary and don't add readability.

Found using Coccinelle semantic patch:
@@ expression e, e1, e2; @@
e &=
(
        (e1 == e2)
|
-       (e1)
+       e1
)

@@ expression e, e1, e2; @@
e |=
(
        (e1 == e2)
|
-       (e1)
+       e1
)

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index f4bcb156..6467d96 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -507,7 +507,7 @@ static void XGI_SetXG27CRTC(unsigned short RefreshRateTableIndex,
 	/* SR0B */
 	Tempax = XGI_CRT1Table[index].CR[5];
 	Tempax &= 0xC0; /* Tempax[7:6]: SR0B[7:6]: HRS[9:8]*/
-	Tempbx |= (Tempax << 2); /* Tempbx: HRS[9:0] */
+	Tempbx |= Tempax << 2; /* Tempbx: HRS[9:0] */
 
 	Tempax = XGI_CRT1Table[index].CR[4]; /* CR5 HRE */
 	Tempax &= 0x1F; /* Tempax[4:0]: HRE[4:0] */
@@ -530,7 +530,7 @@ static void XGI_SetXG27CRTC(unsigned short RefreshRateTableIndex,
 	Tempax = XGI_CRT1Table[index].CR[5]; /* SR0B */
 	Tempax &= 0xC0; /* Tempax[7:6]: SR0B[7:6]: HRS[9:8]*/
 	Tempax >>= 6; /* Tempax[1:0]: HRS[9:8]*/
-	Tempax |= ((Tempbx << 2) & 0xFF); /* Tempax[7:2]: HRE[5:0] */
+	Tempax |= (Tempbx << 2) & 0xFF; /* Tempax[7:2]: HRE[5:0] */
 	/* SR2F [7:2][1:0]: HRE[5:0]HRS[9:8] */
 	xgifb_reg_set(pVBInfo->P3c4, 0x2F, Tempax);
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x30, 0xE3, 00);
@@ -548,12 +548,12 @@ static void XGI_SetXG27CRTC(unsigned short RefreshRateTableIndex,
 	Tempax >>= 2; /* Tempax[0]: VRS[8] */
 	/* SR35[0]: VRS[8] */
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x35, ~0x01, Tempax);
-	Tempcx |= (Tempax << 8); /* Tempcx <= VRS[8:0] */
-	Tempcx |= ((Tempbx & 0x80) << 2); /* Tempcx <= VRS[9:0] */
+	Tempcx |= Tempax << 8; /* Tempcx <= VRS[8:0] */
+	Tempcx |= (Tempbx & 0x80) << 2; /* Tempcx <= VRS[9:0] */
 	/* Tempax: SR0A */
 	Tempax = XGI_CRT1Table[index].CR[14];
 	Tempax &= 0x08; /* SR0A[3] VRS[10] */
-	Tempcx |= (Tempax << 7); /* Tempcx <= VRS[10:0] */
+	Tempcx |= Tempax << 7; /* Tempcx <= VRS[10:0] */
 
 	/* Tempax: CR11 VRE */
 	Tempax = XGI_CRT1Table[index].CR[11];
@@ -1201,12 +1201,12 @@ static void const *XGI_GetLcdPtr(struct XGI330_LCDDataTablStruct const *table,
 	while (table[i].PANELID != 0xff) {
 		tempdx = pVBInfo->LCDResInfo;
 		if (tempbx & 0x0080) { /* OEMUtil */
-			tempbx &= (~0x0080);
+			tempbx &= ~0x0080;
 			tempdx = pVBInfo->LCDTypeInfo;
 		}
 
 		if (pVBInfo->LCDInfo & EnableScalingLCD)
-			tempdx &= (~PanelResInfo);
+			tempdx &= ~PanelResInfo;
 
 		if (table[i].PANELID == tempdx) {
 			tempbx = table[i].MASK;
@@ -1918,7 +1918,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 			tempbx |= SetCRT2ToHiVision;
 
 			if (temp != YPbPrMode1080i) {
-				tempbx &= (~SetCRT2ToHiVision);
+				tempbx &= ~SetCRT2ToHiVision;
 				tempbx |= SetCRT2ToYPbPr525750;
 			}
 		}
-- 
2.7.4


