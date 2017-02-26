X-GM-THRID: 6390824128052461568
X-Received: by 10.157.16.117 with SMTP id o50mr4933083oto.78.1488126398949;
        Sun, 26 Feb 2017 08:26:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.15 with SMTP id p15ls11836998ota.27.gmail; Sun, 26 Feb
 2017 08:26:38 -0800 (PST)
X-Received: by 10.31.162.195 with SMTP id l186mr2758379vke.18.1488126398649;
        Sun, 26 Feb 2017 08:26:38 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si2404248pfa.4.2017.02.26.08.26.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 08:26:38 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so9860530pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 08:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JdK472kq8EoROzMXTI2fIk7CoH8slxfc72ZvR1LS8TY=;
        b=qYFeWUYtIvJrcd2M6JqcY3LIeZR2YeCmU+AZmP0ll1Wkv49CF53fUd+TOlI9szfhyl
         jJ8rPAEUiH18MZtkvOrUwxS1LuObOeVfiQknpY51Oj1CzUo6TkHNbIwG++4Z4btV+BNS
         cyPyC/WECw8dc56w/rDkyrFAbsf1Ojft9rfiO60O8dJqvDTKXL+11jQmYwwYsLbeOq6V
         0IS6k6o9oLg7orNhytn09oP/H+jnIEr7HKLUetadrrPHufNisp1KDJUwk8IFK8NWKQHq
         afCTv0dzlsCeuP8x3qy/0d23wy2S9OgiTpbCMpTK2j/Oe47BNPRqnoImWI9w3KjN09we
         OixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JdK472kq8EoROzMXTI2fIk7CoH8slxfc72ZvR1LS8TY=;
        b=eaPfoWHr5kZ623+S/b+MIqxfyWTHPwf0x9+Vsfmk7lnHRawJpzBbeNbyCiGxdZJWHb
         WHPfvT1wCXP8RQFKvTknisLmLxVbqntG6YCnSWw1da5gZTuOBLd4vtS6BCJgnSVVo5DE
         BFF/EWV4wrruLd5n6rOzvoWZb/g/Rei4n7HkiWAmgLqX79W6by5SV2W9seO6thtIezTy
         k5r83Vp8WcNPDJHqDNWeptOt+nxtxcTnqjqEw6KY2dbBvad/BpUfp/hqSkCEK34dYU5K
         hAVYaMZRteTbZThDBs+QmVCC26IEMNaISVJVKyNiuUlr0FliUZNasUoPmUe0ez2g78fg
         C8iw==
X-Gm-Message-State: AMke39n29s37tpfnY6DSopwgYdwSb4jRir9PI/x0LUYoBT0sUSpqeEmKTtHxj4O2DxpdDw==
X-Received: by 10.84.229.10 with SMTP id b10mr18166435plk.148.1488126397964;
        Sun, 26 Feb 2017 08:26:37 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h3sm25471602pfc.82.2017.02.26.08.26.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 08:26:36 -0800 (PST)
Date: Sun, 26 Feb 2017 21:56:34 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: xgifb: correct the multiple line dereference
Message-ID: <20170226162633.GA20191@arushi-HP-Pavilion-Notebook>
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
changes in v4
  - changes done such that no other errors can generate.
  - Improve the coding style.

 drivers/staging/xgifb/XGI_main_26.c | 30 +++++++-----------------------
 drivers/staging/xgifb/vb_setmode.c  | 14 +++++++-------
 2 files changed, 14 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 6930f7eb741b..825f7dcd2f49 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -878,30 +878,14 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
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
-				xgifb_reg_set(
-					XGIPART2,
-					0x37,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][2]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x38,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][3]));
+					 filter_tb, filter, 4, f);
+				xgifb_reg_set(XGIPART2, 0x35, f[0]);
+			        xgifb_reg_set(XGIPART2, 0x36, f[1]);
+			        xgifb_reg_set(XGIPART2, 0x37, f[2]);
+				xgifb_reg_set(XGIPART2, 0x38, f[3]);
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


