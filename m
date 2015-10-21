X-GM-THRID: 6208143559134019584
X-Received: by 10.182.120.231 with SMTP id lf7mr8258020obb.50.1445446166512;
        Wed, 21 Oct 2015 09:49:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.165 with SMTP id c5ls504399obh.96.gmail; Wed, 21 Oct
 2015 09:49:26 -0700 (PDT)
X-Received: by 10.182.240.202 with SMTP id wc10mr9050455obc.9.1445446166258;
        Wed, 21 Oct 2015 09:49:26 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si1178144pbb.0.2015.10.21.09.49.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so61901375pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 09:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6eGxs1I8Ja31xMelz6DyFq1L+XjYFNgxoi9TOKKUinA=;
        b=bN+bBNXkAIgu+ic7fQ6Rb7njSLUtfZ++6hxMceOTgqrkc49kt29uJzney/lTzlj3uJ
         GD02DBs6HZADLOVtOHqE4vmu5jx2VXBYGqTEBBK/tC3yGiNklw6qPvSf+YFuqdmdxLv+
         wtq3femBwMCmtRcA1ed9jktNTUkM86cXDW37V28pQBt1T8/SjYtp6I2r5Mde3LuHXmVt
         Qwu10xNhGcc2VP7VyVZcZRg4kXq+hHLE6QzlUiQvT7HPe1cU2Ok6c+wSsY8qmNCFj9Dh
         VFL66WF1QN7N7ET6mXKBssFyMA6rUXmYW8U1rZe0s0EcxyZKyNS+nWWQMhZNui95d6ro
         8nfQ==
X-Received: by 10.68.65.37 with SMTP id u5mr11567888pbs.76.1445446166119;
        Wed, 21 Oct 2015 09:49:26 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.33.173])
        by smtp.gmail.com with ESMTPSA id ez1sm10068492pab.6.2015.10.21.09.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 09:49:25 -0700 (PDT)
Date: Wed, 21 Oct 2015 22:19:28 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] Staging: xgifb: Remove blank line before } and after {
Message-ID: <e581c18e38e2daa7503adbed328006672c7a21bb.1445445320.git.navyasri.tech@gmail.com>
References: <cover.1445445320.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445445320.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove blank line after { and before }.
Problem found using checkpatch.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 6204a98..2eee3ac 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -195,7 +195,6 @@ static void XGINew_DDRII_Bootup_XG27(
 	/* Set SR1B refresh control 000:close; 010:open */
 	xgifb_reg_set(P3c4, 0x1B, 0x04);
 	usleep_range(200);
-
 }
 
 static void XGINew_DDR2_MRS_XG20(struct xgi_hw_device_info *HwDeviceExtension,
@@ -1059,7 +1058,6 @@ static void XGINew_SetModeScratch(struct vb_device_info *pVBInfo)
 	CR38Data &= ~SetYPbPr;
 	CR38Data |= tempch;
 	xgifb_reg_set(pVBInfo->P3d4, 0x38, CR38Data);
-
 }
 
 static unsigned short XGINew_SenseLCD(struct xgi_hw_device_info
@@ -1134,7 +1132,6 @@ static void XGINew_GetXG27Sense(struct vb_device_info *pVBInfo)
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x38, ~0xE0, 0xA0);
 	}
 	xgifb_reg_or(pVBInfo->P3d4, 0x32, LCDSense);
-
 }
 
 static unsigned char GetXG21FPBits(struct vb_device_info *pVBInfo)
@@ -1329,14 +1326,12 @@ unsigned char XGIInitNew(struct pci_dev *pdev)
 	XGI_SenseCRT1(pVBInfo);
 
 	if (HwDeviceExtension->jChipType == XG21) {
-
 		xgifb_reg_and_or(pVBInfo->P3d4,
 				 0x32,
 				 ~Monitor1Sense,
 				 Monitor1Sense); /* Z9 default has CRT */
 		temp = GetXG21FPBits(pVBInfo);
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x37, ~0x01, temp);
-
 	}
 	if (HwDeviceExtension->jChipType == XG27) {
 		xgifb_reg_and_or(pVBInfo->P3d4,
-- 
1.9.1


