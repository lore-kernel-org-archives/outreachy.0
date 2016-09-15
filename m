X-GM-THRID: 6330303746353922048
X-Received: by 10.107.162.83 with SMTP id l80mr6698163ioe.29.1473943224446;
        Thu, 15 Sep 2016 05:40:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.234 with SMTP id y97ls3173048ota.3.gmail; Thu, 15 Sep
 2016 05:40:24 -0700 (PDT)
X-Received: by 10.157.16.43 with SMTP id h40mr6072865ote.25.1473943224137;
        Thu, 15 Sep 2016 05:40:24 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id m19si171703itb.0.2016.09.15.05.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so2087973pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bs/UtrpjFc9Wqy0dmoCUaH3LcfWvL4TKwIG0aaPnCFI=;
        b=TR0ZXgx01STUuO7nS1u1M0DTRJxGXxoxnAb/ponCjuklGHWpn6DVyKMH4e/NnA2NSs
         FBaxDbFRIK3W9sTaJKcZfmbj+m/9MAPpQui3kbKrEdfv5jd6wP3QGM1rDcUpBB39wRyT
         RcSjSC1ig9PfN1ksD7qo9LE24ELTT1ooxmrK6EOhwSmO4AynNugQgVni4GvnPzS33tQ5
         CncEWujbzKu2V4JRivbSs64ev5fYTpBGjyfiSIIJWDRLuHnXn7rIILr10L+eR0sQodTp
         Yd8moCbC0yqUionEjTC/+oWAe4DmmsgnlVLGY3f2Kq/uxCgDFYuj1yw4K4m5rMpgVpXt
         6TMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=bs/UtrpjFc9Wqy0dmoCUaH3LcfWvL4TKwIG0aaPnCFI=;
        b=FGywm9G04NOIxtuh0METNEwJYhde+M1YlVdcRVsi6TLxkNkMEKljEq9Cn9Zwte0fy6
         A8P+D/titElOLJ9G2y+wh1v05yvWbccihbm6IgSjhMNsXglHjX2TEQqpcq9oqBEetPCT
         KlR0EzhA3vyMSFwSmLZWU56g90BAF2nVUjpfXAKAUwQIGvEB75KUOJvyU5SMXkKY4V+O
         lsz6zO4OqqrjlHQz2V10AX5H6IA/stXd0PTfn4bdR35P1hpvAR18ZvYpKZhJO9VLY8bZ
         W66Ylwl5tTUgC1z/VbCorMYCg/3EugOILB3wEskkXebdh89/VIxA0GDcxIV+4Ka+y85b
         hV5g==
X-Gm-Message-State: AE9vXwNfWWmRukBARWz9vB70I5Wg6nuzhrLgeOQS2oy0JPM3mCWYHzlyInS2Kd0f59ghmw==
X-Received: by 10.66.150.39 with SMTP id uf7mr14156813pab.23.1473943223898;
        Thu, 15 Sep 2016 05:40:23 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h123sm45162289pfe.69.2016.09.15.05.40.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 05:40:23 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4 3/6] staging: xgifb: remove blank line after open brace
Date: Thu, 15 Sep 2016 18:09:16 +0530
Message-Id: <46c6c6edc9369a3529d2aa987d42443ee601eae5.1473942527.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>

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


