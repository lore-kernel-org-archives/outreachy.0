X-GM-THRID: 6390824128052461568
X-Received: by 10.99.251.83 with SMTP id w19mr5126630pgj.24.1488124415237;
        Sun, 26 Feb 2017 07:53:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls2779298otx.21.gmail; Sun, 26 Feb
 2017 07:53:34 -0800 (PST)
X-Received: by 10.31.15.129 with SMTP id 123mr2315293vkp.16.1488124414781;
        Sun, 26 Feb 2017 07:53:34 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si2676323pfk.0.2017.02.26.07.53.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:53:34 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 5so9804781pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dUW0c9rjgOBO76Dl95wEqMpm85Le6vgEcVoON9hangM=;
        b=ss/SHGXxhPHDct6ay1tktAeKhGG3USyX7vcAR8QZW2M9kECdnxd7BKXC/xmXJDGKI/
         5FroGYu7wvttcEGRXFIPFt/6rPvknlWC8CN5fJjfurrhogrv2FErgeoPEaPyVcsCpv0q
         GKzEZKsiYxonF8QPfDwDDeBa3hJ3rhhWCIW5ez0yWpsCHklGJ5cR+3TbCDAgINiOKsBQ
         Jph/0tUL2zJo/8l70yZnG5NxQdLuhdskaLToxp3OWaTCCH88MjpuuJEoRflwlnLEfqGX
         PNp5DLq7hpqolkCybXmkCyoEatpqfV2K9l5DidybAUDTjQkXKYM6mSo8AQxS+YCNkSwL
         QoaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dUW0c9rjgOBO76Dl95wEqMpm85Le6vgEcVoON9hangM=;
        b=HnX91X9k2EcM9NCgtsAC2NOQcwDxInriLKwhv0KEr9+4g/LS2YgA4Akgwo1FP8WsGd
         +hqIuJa3Q7pHrIEUA+mKnsCtuRp2LX3+VbHBlY/hTQ0/ah2PhBiTUkXFb80RsJP0Emfm
         y2cPe3dVrU0zYcQguDOsD33fav0KM+u+bOHipRQxEZ1i1gY9oSiTK8BGrS8zPNlKtORf
         THFX78Jd9HtHcR18Vx9B5GOyVjhNn0Vdz9EyH1+8d8REAEM+wS6ST6dQlDgtTHGim0Pg
         LIDBZ32VBbJtrFxJ/n9vwUn2NXBDVb5jkTO8fmjQezQ5mdN7ACcnIpH5WICBwbrv86xm
         uXjA==
X-Gm-Message-State: AMke39nMLtzwZueeRf2hTo+hZvLWEypFVDffL89XW9dDhvqq3mwSYKTHBPqIShqQX7lsiQ==
X-Received: by 10.98.77.132 with SMTP id a126mr15586225pfb.90.1488124414480;
        Sun, 26 Feb 2017 07:53:34 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u14sm25455226pfg.18.2017.02.26.07.53.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:53:33 -0800 (PST)
Date: Sun, 26 Feb 2017 21:23:29 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: xgifb: correct the multiple line dereference
Message-ID: <20170226155329.GA19949@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Error was reported by checkpatch.pl as "Avoid multiple line
dereference".And If there is boolean operator then it is 
fixed by Splitting line at boolean operator to satisfy coding 
style.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
  - changes done such that no other errors can generate.
  - Improve the coding style.

 drivers/staging/xgifb/XGI_main_26.c | 30 +++++++++---------------------
 drivers/staging/xgifb/vb_setmode.c  | 14 +++++++-------
 2 files changed, 16 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 6930f7eb741b..f363c7c1963d 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -878,30 +878,18 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
 			}
 
 			if ((filter >= 0) && (filter <= 7)) {
+				const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
+
 				pr_debug("FilterTable[%d]-%d: %*ph\n",
-					 filter_tb, filter,
-					 4, XGI_TV_filter[filter_tb].
-						   filter[filter]);
-				xgifb_reg_set(
-					XGIPART2,
-					0x35,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][0]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x36,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][1]));
+					 filter_tb, filter, 4, f);
 				xgifb_reg_set(
-					XGIPART2,
-					0x37,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][2]));
+					XGIPART2, 0x35, f[0]);
+			        xgifb_reg_set(
+					XGIPART2, 0x36, f[1]);
+			        xgifb_reg_set(
+					XGIPART2, 0x37, f[2]);
 				xgifb_reg_set(
-					XGIPART2,
-					0x38,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][3]));
+					XGIPART2, 0x38, f[3]);
 			}
 		}
 	}
diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 7c7c8c8f1df3..1220d0cea87d 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -221,8 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 
 	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
 	       tempbx; (*i)--) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		infoflag =
+		XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
 		if (infoflag & tempax)
 			return 1;
 
@@ -231,8 +231,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 	}
 
 	for ((*i) = 0;; (*i)++) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+		infoflag =
+		XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
 		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
 				!= tempbx) {
 			return 0;
@@ -5092,8 +5092,8 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 
 	i = 0;
 	do {
-		if (XGI330_RefIndex[RefreshRateTableIndex + i].
-			ModeID != ModeNo)
+		if (XGI330_RefIndex[RefreshRateTableIndex + i].ModeID
+				!= ModeNo)
 			break;
 		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
 		temp &= ModeTypeMask;
@@ -5484,7 +5484,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 				return 0;
 
 		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
-						Ext_ModeFlag & ModeTypeMask;
+				Ext_ModeFlag & ModeTypeMask;
 
 		pVBInfo->SetFlag = 0;
 		pVBInfo->VBInfo = DisableCRT2Display;
-- 
2.11.0


