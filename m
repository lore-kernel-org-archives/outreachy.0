X-GM-THRID: 6389289622943301632
X-Received: by 10.129.91.214 with SMTP id p205mr8398941ywb.163.1487622415114;
        Mon, 20 Feb 2017 12:26:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.210 with SMTP id r201ls254067iod.30.gmail; Mon, 20 Feb
 2017 12:26:54 -0800 (PST)
X-Received: by 10.36.94.204 with SMTP id h195mr8346873itb.35.1487622414250;
        Mon, 20 Feb 2017 12:26:54 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si2718575pfd.3.2017.02.20.12.26.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 12:26:54 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x243.google.com with SMTP id a123so11561446pgc.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Feb 2017 12:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5j5gkVVJHX5NHRnjcNO6jLttdgJuAXh3fbyBkfJdkwQ=;
        b=0Qm3rlmn2u35WEjJalbxc8XZXbpKwi4KVeGMhSREyMnZdSkhYMqD2qfkqLw98WSAnY
         LCavYJEEp/tdIQEEuxecixDn1qQnytMQ+aYdRW2TTPR03B+Zx5MQoAEtwqda3dOkZ6Jp
         qK1W1eMog87Dk4cVH8+7gS51Is+HJgD9645hwOKT4Px/Igtv2XExJM69hqMXHrxO9Uks
         IRVF2jpVApOkklO2j+iyHBKggElJ3yAJFbSEdDxZUfOmk4z+iUU1xVNxd9PSUof2H8NZ
         VbyUXDG4ONh+ErbVKaVSx20SYTVtWFFGxWzBmBTrYzt+wJj1pVENx4nBNs8gGT55F0fD
         LclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5j5gkVVJHX5NHRnjcNO6jLttdgJuAXh3fbyBkfJdkwQ=;
        b=IREEuubmhk0j8dh1u6oQ8g13XKKdjCJo6AW9dmEiSVOMPNLYPRzF/+Gnrna6g7rDNv
         hvJplLI8/rgneOSzvueIb/Cy41x7AfAk1rKvdDymj9FrhuWcmy2HEXhG77UIWQ/3o9AT
         Vzf3rIlf0yqOkBN/3X8y8WXmDEyFAWpy0DsLh0kMowC7o+QKvPRaTr1ULAWoKJKfI+2I
         DQeK5ZPahF6XdIzL96LrMdl47uCTAH7pQ35gGJT+zu9ymm2gikpTvYbbw+iCQmxIpB6G
         pFcBN6cna94Bw1/DxNUoqJ3tm59X3KDQDszvYdMTejX4WAmBRDDLvR3t1zvlht4FGP+x
         GgsA==
X-Gm-Message-State: AMke39kHVRvaInFNdp5QKSYnJ+SCB4IW9LTYLOnMl8jYn/Yw6EI6Gl+KYobGGYR/ie4eN7wO
X-Received: by 10.99.94.71 with SMTP id s68mr29437744pgb.181.1487622413981;
        Mon, 20 Feb 2017 12:26:53 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id f3sm36738139pfd.10.2017.02.20.12.26.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Feb 2017 12:26:53 -0800 (PST)
Date: Mon, 20 Feb 2017 12:24:40 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: xgifb: add braces around if-statements
Message-ID: <20170220202440.GA8928@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add braces to instances of if-statements found by checkpatch.pl
to conform to kernel style.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/xgifb/XGI_main_26.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 6930f7e..69ed137 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -178,9 +178,9 @@ static int XGIfb_mode_rate_to_ddata(struct vb_device_info *XGI_Pr,
 		*sync |= FB_SYNC_HOR_HIGH_ACT;
 
 	*vmode = FB_VMODE_NONINTERLACED;
-	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080)
+	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080) {
 		*vmode = FB_VMODE_INTERLACED;
-	else {
+	} else {
 		j = 0;
 		while (XGI330_EModeIDTable[j].Ext_ModeID != 0xff) {
 			if (XGI330_EModeIDTable[j].Ext_ModeID ==
@@ -1480,9 +1480,9 @@ static void XGIfb_detect_VB(struct xgifb_video_info *xgifb_info)
 
 	cr32 = xgifb_reg_get(XGICR, IND_XGI_SCRATCH_REG_CR32);
 
-	if ((cr32 & SIS_CRT1) && !XGIfb_crt1off)
+	if ((cr32 & SIS_CRT1) && !XGIfb_crt1off) {
 		XGIfb_crt1off = 0;
-	else {
+	} else {
 		if (cr32 & 0x5F)
 			XGIfb_crt1off = 1;
 		else
@@ -1500,18 +1500,19 @@ static void XGIfb_detect_VB(struct xgifb_video_info *xgifb_info)
 			xgifb_info->display2 = XGIFB_DISP_NONE;
 	}
 
-	if (XGIfb_tvplug != -1)
+	if (XGIfb_tvplug != -1) {
 		/* Override with option */
 		xgifb_info->TV_plug = XGIfb_tvplug;
-	else if (cr32 & SIS_VB_HIVISION) {
+	} else if (cr32 & SIS_VB_HIVISION) {
 		xgifb_info->TV_type = TVMODE_HIVISION;
 		xgifb_info->TV_plug = TVPLUG_SVIDEO;
-	} else if (cr32 & SIS_VB_SVIDEO)
+	} else if (cr32 & SIS_VB_SVIDEO) {
 		xgifb_info->TV_plug = TVPLUG_SVIDEO;
-	else if (cr32 & SIS_VB_COMPOSITE)
+	} else if (cr32 & SIS_VB_COMPOSITE) {
 		xgifb_info->TV_plug = TVPLUG_COMPOSITE;
-	else if (cr32 & SIS_VB_SCART)
+	} else if (cr32 & SIS_VB_SCART) {
 		xgifb_info->TV_plug = TVPLUG_SCART;
+	}
 
 	if (xgifb_info->TV_type == 0) {
 		temp = xgifb_reg_get(XGICR, 0x38);
-- 
2.7.4


