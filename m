X-GM-THRID: 6330303746353922048
X-Received: by 10.157.59.100 with SMTP id z91mr3846573otb.6.1473888702079;
        Wed, 14 Sep 2016 14:31:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.86 with SMTP id u83ls703606itc.20.gmail; Wed, 14 Sep
 2016 14:31:41 -0700 (PDT)
X-Received: by 10.107.29.129 with SMTP id d123mr4292856iod.9.1473888701605;
        Wed, 14 Sep 2016 14:31:41 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si1625303pfx.2.2016.09.14.14.31.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 14:31:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so1276247pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 14:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dDPSYdHHyEmM9rbXvb9uXySFI3eY0UjvRHPK5NYlq1s=;
        b=PWhejJingpHvTLtevfySKiP1cep3yY08IxpRw7bQiz/bGx2S+QWZoAXuKkhQqWOz7t
         s5cQuNWE5xznKU4mtuWyKXNtU6wYjFEHkCq5idXe/jo3m08Pi4BpCQZXdLo68oOHcnn7
         WWQcHM8qTNdqQ51wG8Yg46mZTQ1UhzFAlmRY9ZrpmaV8sCcAXv3KKd1sLG5ADqNlrNsW
         fVXti2UR+84tHJQft5224CpGyXlv0gK+ddSJjx8VQ4++qGgybiuns9VyySx8YaeX8OYN
         3/kDTW86+7rrAlIQ92SCAUtPnuQegq3W+O0wD5BItuEPUauGWth/T1kxcgcAsWtY5xiJ
         AeEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dDPSYdHHyEmM9rbXvb9uXySFI3eY0UjvRHPK5NYlq1s=;
        b=GjYcEMGsYTWUz6R+0bacvaFQZKLzvTgiSDjGD+/MEFDTr7pCK/0JfxlXJRvJsR4UoA
         WCt7EW31nxoWNSSw1/BbcdvBuGyLjtsyXMX21Apf0VdVbmGRUQ5hDJjKSRvCS8vM4lIz
         U7ov330eecwku5Vb6FzOrazWfQjVtiTRsiHLX5Tp8GZ9GZNXMLtPGDMGlzxvZcWlAsyS
         oMRotxxCOmhs+ZlEdl+OiNL6S2ubg/JQYWyOcMWSOqphMEBc/IpgBT9jQlxgqP1oViBY
         GSGiZFvs/RUtGJiceNJTXqBtLgBy6qvF1NawpYLcT5BLidwI3yYAoHVlOKjxuWKaR8Tx
         MYqg==
X-Gm-Message-State: AE9vXwN0e3O2wgLtzRS/HFjSUm1gExtt5+oo+d8gW2ncaUPgierJJTTF/KPDkclnwqN/Nw==
X-Received: by 10.98.55.1 with SMTP id e1mr8479541pfa.58.1473888701255;
        Wed, 14 Sep 2016 14:31:41 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i78sm7889970pfj.67.2016.09.14.14.31.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 14:31:40 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3 3/6] staging: xgifb: remove blank line after open brace
Date: Thu, 15 Sep 2016 03:00:40 +0530
Message-Id: <4eaf9db9d4c42a573a5ac36b9e61a3a7105fcff0.1473888416.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>

delete a blank line after an open brace to fix the check patch issue, Blank lines aren't necessary after an open
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


