X-GM-THRID: 6329968789142110208
X-Received: by 10.66.145.133 with SMTP id su5mr2836470pab.22.1473810713496;
        Tue, 13 Sep 2016 16:51:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.74 with SMTP id u10ls2518240otd.30.gmail; Tue, 13 Sep
 2016 16:51:53 -0700 (PDT)
X-Received: by 10.237.38.226 with SMTP id q89mr2923899qtd.16.1473810713203;
        Tue, 13 Sep 2016 16:51:53 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si268271pfe.0.2016.09.13.16.51.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 16:51:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so16482pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 16:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=3lBGfWplvqEAEMs3kIU1t8rk0kLz0DP8+tLqV/l33QI=;
        b=v9iYWsONzDvEKyzC9clnsYRzNl0h60zNJj2+jlHQ0eZeY2WyxIBiex0FxIQnBS55n/
         Ug2kLSorxpN96vwVN3SKcY4K57xXt37h6LZ/seUDFxWHS0M0TJ4rrXNQU3YNWNZvOlP8
         I31HgHppYHawmcSe/u5zCUQDfQW97X2sGBIuQyHSbbSQcklMIsEl+EMXqMlMDOBr8o8G
         vvJnOv50XFBjDiC6Lz5DKEy5Fau+7QE9Nldc1L0SzFm/JEHA8w+2P4h4/3Du0+/A3Fu3
         MH+IZTcMWUqylxBOw/my0WNVfmqcDbyv4GIMz+eVYaZGYYkfFhrK1j7Ct7v/FVKh9pNF
         dXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=3lBGfWplvqEAEMs3kIU1t8rk0kLz0DP8+tLqV/l33QI=;
        b=TcqnQICz/egtTLewwwYQk418e9DOgrc1Dn+eoqzQEphqfLuP+CWqapXzGVW4WnuvSE
         MTj6dlitTcd1U+ONOdXDhcyCPdWdK3vpBQL7i+w/iIV8DE9HhO/4Pnmjhvk8KkbSJVfX
         GghW/+D5Nr/eWGaDrDXgTaH2lMTv7SfGWDR9SC/ujppG9N2nmATuOwZyD7uiVyn1NER7
         Q/c7r7HlnjLMtHZguKihUPgqm2gJFj7FxPWY3cK72TpT1gZCLR7k01KR9zMmxLcN7M+Y
         qv/W0xtsTvoRJItLftBd6d21G6nAXPtR8QiT8zn3tcKaB4vbS/WHazuz0+xLHkGe7YcA
         IcRQ==
X-Gm-Message-State: AE9vXwNfCbb0iKPRzH691YK/s5Ejg5c9cqj6Sl++aoxR5wgv7hnBBWJ9tJVZhsyWbQP41A==
X-Received: by 10.66.136.49 with SMTP id px17mr5870926pab.83.1473810712917;
        Tue, 13 Sep 2016 16:51:52 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d5sm33439090pfa.44.2016.09.13.16.51.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 16:51:52 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 3/6] staging: xgifb: remove blank line after open brace
Date: Wed, 14 Sep 2016 05:21:02 +0530
Message-Id: <1d329963856cd1e15df3c22de89f6af7d2b46710.1473809551.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>

Fixes the check patch issue, Blank lines aren't necessary after an open
brace '{'.

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


