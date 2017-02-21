X-GM-THRID: 6389612389434654720
X-Received: by 10.107.132.225 with SMTP id o94mr8100964ioi.85.1487697565912;
        Tue, 21 Feb 2017 09:19:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.1 with SMTP id f1ls3779188iof.6.gmail; Tue, 21 Feb 2017
 09:19:25 -0800 (PST)
X-Received: by 10.99.181.11 with SMTP id y11mr9160072pge.83.1487697565068;
        Tue, 21 Feb 2017 09:19:25 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si2444800pfk.0.2017.02.21.09.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:19:25 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so8638725pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 09:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PdaAdYpgelhYgYQQKoPkZRo7MFB+EZyYkAwl4tFp28M=;
        b=nXPNOoUrMFpMK0xtg6hvc2RQ428xxt4QwWFEFsUUHkiWx11G82QUKT3WqPavu5jWJl
         Jc1Gw5kszkbS1Y5AC4cES7S0Fkpah0X1MUDHprfeFirZyHvo41++wHLXY6iVZ7bCrn7F
         Tf1X/rriStA5M8923jRTS9OLW/XkgxsvaQ+Aa6/g0ZQEMjwEZAxE7LvUdasODV95GeEB
         tuLywcscYV+bHY+jwgU8MIuVYPzE1uzBURAmMPPionlVbQZ4CFRuK3E2fAK1nIehagC2
         mC76LpsdgAsHxIgY/kD/WrtFaPxw30+DBesiKiehhWxJ5Z5E9mtv5Ey8py7eWsbm3TMi
         2S5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PdaAdYpgelhYgYQQKoPkZRo7MFB+EZyYkAwl4tFp28M=;
        b=KyWaP7g53uAG6wgIVVvsh2AhfFcQf/jI1/fexN57xTJD1Ecot4Tt/o7Ec+iEXx1/O1
         dKf9Tamjiqjo92WRAQ3hwgfLHxr+PXNxq6n9Hs/TkL0KR5fmDieLGHpkVAP4AtANKd0O
         mYwcKFxumNfOy6vbR6lzdWT2zWUZXel03xis60p0qjFN22w7dxObOWAMsHRErxdfTlNf
         AM1Sxjbp/ybUG4eJejn8gUKyR16Wp7kt+dDceB1cegUF2sCEPPm7KE0FFe3HXXmeHjl4
         hmM34pmFHPjtet8cPU4a713IT/OCZtfj697XPXRE0mWtxh/SL1260KjagpIlDMFW3QI2
         1U4g==
X-Gm-Message-State: AMke39nDuunIT0onNV5Ep1UeklELUZ4bFlOpnuQ1rnnlncir8nLGAinkos9HGGS8VvC0uw==
X-Received: by 10.98.30.4 with SMTP id e4mr34423555pfe.19.1487697564812;
        Tue, 21 Feb 2017 09:19:24 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m6sm42105761pfg.126.2017.02.21.09.19.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 09:19:23 -0800 (PST)
Date: Tue, 21 Feb 2017 22:49:20 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: correct the multiple line dereference to fix
 coding stye errors
Message-ID: <20170221171920.GA18917@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Error was reported by checkpatch.pl as
WARNING: Avoid multiple line dereference...
if there is boolean operator then it is fixed by Splitting line at
boolean operator.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 15 +++++----------
 drivers/staging/xgifb/vb_setmode.c  | 19 +++++++------------
 2 files changed, 12 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 6930f7eb741b..4fd9bfafccc5 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -880,28 +880,23 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
 			if ((filter >= 0) && (filter <= 7)) {
 				pr_debug("FilterTable[%d]-%d: %*ph\n",
 					 filter_tb, filter,
-					 4, XGI_TV_filter[filter_tb].
-						   filter[filter]);
+					 4, XGI_TV_filter[filter_tb].filter[filter]);
 				xgifb_reg_set(
 					XGIPART2,
 					0x35,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][0]));
+					(XGI_TV_filter[filter_tb].filter[filter][0]));
 				xgifb_reg_set(
 					XGIPART2,
 					0x36,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][1]));
+					(XGI_TV_filter[filter_tb].filter[filter][1]));
 				xgifb_reg_set(
 					XGIPART2,
 					0x37,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][2]));
+					(XGI_TV_filter[filter_tb].filter[filter][2]));
 				xgifb_reg_set(
 					XGIPART2,
 					0x38,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][3]));
+					(XGI_TV_filter[filter_tb].filter[filter][3]));
 			}
 		}
 	}
diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 7c7c8c8f1df3..00f1ae3adcda 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -221,8 +221,7 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 
 	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
 	       tempbx; (*i)--) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
 		if (infoflag & tempax)
 			return 1;
 
@@ -231,8 +230,7 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 	}
 
 	for ((*i) = 0;; (*i)++) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
 		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
 				!= tempbx) {
 			return 0;
@@ -654,8 +652,8 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
 	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
 						      RES640x480x60))
 		index = 12;
-	else if (ModeNo == 0x2E && (XGI330_RefIndex[RefreshRateTableIndex].
-				Ext_CRT1CRTC == RES640x480x72))
+	else if (ModeNo == 0x2E && (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
+				RES640x480x72))
 		index = 13;
 	else if (ModeNo == 0x2F)
 		index = 14;
@@ -5092,8 +5090,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 
 	i = 0;
 	do {
-		if (XGI330_RefIndex[RefreshRateTableIndex + i].
-			ModeID != ModeNo)
+		if (XGI330_RefIndex[RefreshRateTableIndex + i].ModeID != ModeNo)
 			break;
 		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
 		temp &= ModeTypeMask;
@@ -5105,8 +5102,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 	} while (index != 0xFFFF);
 	if (!(pVBInfo->VBInfo & SetCRT2ToRAMDAC)) {
 		if (pVBInfo->VBInfo & SetInSlaveMode) {
-			temp = XGI330_RefIndex[RefreshRateTableIndex + i - 1].
-				Ext_InfoFlag;
+			temp = XGI330_RefIndex[RefreshRateTableIndex + i - 1].Ext_InfoFlag;
 			if (temp & InterlaceMode)
 				i++;
 		}
@@ -5483,8 +5479,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 						   ModeIdIndex))
 				return 0;
 
-		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
-						Ext_ModeFlag & ModeTypeMask;
+		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;
 
 		pVBInfo->SetFlag = 0;
 		pVBInfo->VBInfo = DisableCRT2Display;
-- 
2.11.0


