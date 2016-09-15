X-GM-THRID: 6330303746353922048
X-Received: by 10.129.84.69 with SMTP id i66mr7782344ywb.29.1473966523423;
        Thu, 15 Sep 2016 12:08:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.24 with SMTP id o24ls3900794otb.35.gmail; Thu, 15 Sep
 2016 12:08:43 -0700 (PDT)
X-Received: by 10.157.40.120 with SMTP id h53mr8025390otd.44.1473966523016;
        Thu, 15 Sep 2016 12:08:43 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si3049658pfe.0.2016.09.15.12.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so2438869pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bs/UtrpjFc9Wqy0dmoCUaH3LcfWvL4TKwIG0aaPnCFI=;
        b=dP6pzx1+LQewB7MoUDFgm84lFy0SBlZ7EgdA6waf+gVPVqBlCm7than6F5SMTJGoZX
         pqhGJCc88sFeA5/qdxkRIsJ1sd+Wwl4Xxj4dob30ILVAgqOV/lDa4JLKdunM9rD4g+Lt
         HnudhpAiOKaAsW3YCtK5bD97tFx3kII7szCxPEMnNhJDxBoo8xYY0yWr+XaiLCElMGqU
         o822mLhwq8qClb8QBkqVTLY+7ecZP5jnhrBQ70yJ/c9qweE68pZQB1j8e4U/OnCDj7OV
         eF9jXTpOnHuDwJBwPXnbdpMtEv3+STKDgEBXIDOjt868VpqYAd/VLKUmLJFkJC5K6gkK
         jnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=bs/UtrpjFc9Wqy0dmoCUaH3LcfWvL4TKwIG0aaPnCFI=;
        b=FUkoH2VwOv8176rnO7HxnMRyBpmkcMLbOTbAKWwozRZsQ/iX7XJ2J81xN62yESQ1lS
         mR7QCYW7BGXUP4/3oSvkwQG1oIikWcReliTHBDTSY4tGsGPfw0Cskydl3S8LTXwiSLmK
         rj9w+zaCgEELy6Kx3Y1STIaU9yHeAuFCC18GqRAnftlQoFhbZI/9OTMMQ1CUt7QY4ARB
         17oGzeBZQYL0oZSZW0BOIiiSswV4BLeBNfUXJdFJWSGTwdxvpAxsoMudj7wkKAj8oDV+
         TH7SHpgtem1ppuYf9GgnMrQ/ffmSCjKfdsbUB3eEmCR1KEbd55/Dt30aizhJCylgK8zs
         AISg==
X-Gm-Message-State: AE9vXwN5vU8uq/WyQrpSZXavh73aSKH34TYmsyxPRE0hlKyaUDKxMXIT3Vnfs+EWWciK/g==
X-Received: by 10.66.84.163 with SMTP id a3mr17111633paz.101.1473966522726;
        Thu, 15 Sep 2016 12:08:42 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id vy9sm6795538pab.22.2016.09.15.12.08.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:08:42 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5 3/6] staging: xgifb: remove blank line after open brace
Date: Fri, 16 Sep 2016 00:37:11 +0530
Message-Id: <6339025a8a9c46adda969d278c2edea05c7e962b.1473965827.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>

delete a blank line after an open brace to fix the check patch issue,
Blank lines aren't necessary after an open brace '{'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index af3f4d0..41dcc6d3 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1647,7 +1647,6 @@ static void XGI_GetLCDVCLKPtr(unsigned char *di_0, unsigned char *di_1,
 static unsigned char XGI_GetVCLKPtr(unsigned short RefreshRateTableIndex,
 		unsigned short ModeIdIndex, struct vb_device_info *pVBInfo)
 {
-
 	unsigned short index, modeflag;
 	unsigned char tempal;
 
@@ -2291,7 +2290,6 @@ static void XGI_DisplayOn(struct xgifb_video_info *xgifb_info,
 		struct xgi_hw_device_info *pXGIHWDE,
 		struct vb_device_info *pVBInfo)
 {
-
 	xgifb_reg_and_or(pVBInfo->P3c4, 0x01, 0xDF, 0x00);
 	if (pXGIHWDE->jChipType == XG21) {
 		if (pVBInfo->IF_DEF_LVDS == 1) {
@@ -2338,7 +2336,6 @@ void XGI_DisplayOff(struct xgifb_video_info *xgifb_info,
 		struct xgi_hw_device_info *pXGIHWDE,
 		struct vb_device_info *pVBInfo)
 {
-
 	if (pXGIHWDE->jChipType == XG21) {
 		if (pVBInfo->IF_DEF_LVDS == 1) {
 			/* LVDS backlight off */
@@ -2455,7 +2452,6 @@ exit:
 
 static unsigned char XGI_IsLCDDualLink(struct vb_device_info *pVBInfo)
 {
-
 	if ((pVBInfo->VBInfo & (SetCRT2ToLCD | XGI_SetCRT2ToLCDA)) &&
 			(pVBInfo->LCDInfo & SetLCDDualLink)) /* shampoo0129 */
 		return 1;
@@ -4389,7 +4385,6 @@ static void xgifb_set_lvds(struct xgifb_video_info *xgifb_info,
 					(value << 2) & 0x7C);
 
 	for (temp = 0, value = 0; temp < 3; temp++) {
-
 		xgifb_reg_and_or(pVBInfo->P3c4, 0x31, ~0x30, value);
 		xgifb_reg_set(pVBInfo->P3c4,
 			      0x2B, xgifb_info->lvds_data.VCLKData1);
@@ -5416,7 +5411,6 @@ static void XGI_SetCRT1Group(struct xgifb_video_info *xgifb_info,
 	if (HwDeviceExtension->jChipType >= XG21) {
 		temp = xgifb_reg_get(pVBInfo->P3d4, 0x38);
 		if (temp & 0xA0) {
-
 			if (HwDeviceExtension->jChipType == XG27)
 				XGI_SetXG27CRTC(RefreshRateTableIndex, pVBInfo);
 			else
-- 
2.9.2


