X-GM-THRID: 2698279649280
X-Received: by 10.236.4.134 with SMTP id 6mr10732543yhj.35.1424681450059;
        Mon, 23 Feb 2015 00:50:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.111 with SMTP id j102ls2323701qge.31.gmail; Mon, 23 Feb
 2015 00:50:49 -0800 (PST)
X-Received: by 10.236.40.112 with SMTP id e76mr12171898yhb.5.1424681449892;
        Mon, 23 Feb 2015 00:50:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id nt14si2372929pab.2.2015.02.23.00.50.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 00:50:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so23876106pdb.9
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 00:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=U8MJu+nS/TZc5HN4ANt1m0hufo7dUQw+JLNdoMgeMoE=;
        b=sr6RtlTSWpxvmyo8RP+t8aQrAVSrh75VRJQUxSWT2X8sisBLMjsqS549ZyQ77kDwoU
         INnw9Wd5QMU62p/y2V/d8vsQF4FsZPYzOXW39C3209BjtOAEK0zUOHm5AHl6HlLXeubx
         tIdg7dQAxPRFNu8dn6yecVfBFCV4RLRSevIlyQAolddkkeGRraJxNow2PaO6ukZddnPD
         lriBzD1ZUoBB/QK9R1DScoTxV/MimYr6ExFlRzhwiW7lsLdzphRCiGUHWRpfOk8cBSJM
         haAL9iUA/woWN+wh+DCJisYlH/vYGqw8+lUL2uukXup7VSync2sqVCrYyLu/gQw5Py0U
         CXMQ==
X-Received: by 10.66.124.227 with SMTP id ml3mr17451474pab.28.1424681449756;
        Mon, 23 Feb 2015 00:50:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ao5sm25395380pbc.66.2015.02.23.00.50.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 00:50:48 -0800 (PST)
Date: Mon, 23 Feb 2015 14:20:30 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unnecessary variable
Message-ID: <20150223085030.GA1602@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unneccessary variable and replace its uses with another
variable which is previously defined.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3f663fe..3950cb3 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -72,12 +72,10 @@ static u32 rf_serial_read(struct adapter *adapt,
 	u32 ret = 0;
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	struct bb_reg_def *phyreg = &hal_data->PHYRegDef[rfpath];
-	u32 newoffset;
 	u32 tmplong, tmplong2;
 	u8 rfpi_enable = 0;
 
 	offset &= 0xff;
-	newoffset = offset;
 
 	tmplong = phy_query_bb_reg(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord);
 	if (rfpath == RF_PATH_A)
@@ -87,7 +85,7 @@ static u32 rf_serial_read(struct adapter *adapt,
 					    bMaskDWord);
 
 	tmplong2 = (tmplong2 & (~bLSSIReadAddress)) |
-		   (newoffset<<23) | bLSSIReadEdge;
+		   (offset<<23) | bLSSIReadEdge;
 
 	phy_set_bb_reg(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord,
 		       tmplong&(~bLSSIReadEdge));
-- 
1.9.1


