X-GM-THRID: 2832175464448
X-Received: by 10.182.78.69 with SMTP id z5mr12284765obw.4.1424704028276;
        Mon, 23 Feb 2015 07:07:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.40 with SMTP id y8ls666871obg.51.gmail; Mon, 23 Feb
 2015 07:07:08 -0800 (PST)
X-Received: by 10.182.91.79 with SMTP id cc15mr12686190obb.20.1424704028030;
        Mon, 23 Feb 2015 07:07:08 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id m1si120474pdc.0.2015.02.23.07.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 07:07:07 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjp10 with SMTP id p10so26031156pdj.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 07:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BT3184r9eYwUWOpGmzvhh/lznfxfIYkjniO6C396sFo=;
        b=PUBZcgKRqNwdh71jo8Apebe7CxbzufyO2KOUpt08Hf9hJnO7NtTrM23BgSwD5KQO0g
         xt6Mjkcx8PBdQ89oGTjQDDoToG7gi7W2gPaStz1C3ICXXu/ZGEVPmpS7wBFbYx/3A9XD
         0VQ6iUDY5UcRnsX+1EemDzN13z+4O1mwIX6GqcaanXVDqifBDzEmieVT8V6DkZqhI5TJ
         CSF/fWXq+U7RjpxTrc4xEkmzSN9ZoKpHK/rK130QHkLSVPQ2/CxMeY/j13vD6LiSSu1b
         6PFIVq4GPJ7Dfg6Iqwd+wbMwnD736Yd9Tskh5mnHAG4LKIZH87suFQVxNyinJsee5tlf
         9UgQ==
X-Received: by 10.70.128.231 with SMTP id nr7mr20608672pdb.116.1424704027859;
        Mon, 23 Feb 2015 07:07:07 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id cb9sm36256111pad.46.2015.02.23.07.07.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 07:07:06 -0800 (PST)
Date: Mon, 23 Feb 2015 20:36:47 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove redundant if conditions
Message-ID: <20150223150647.GA12403@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The if branches are redundant as is2t is declared false
and is not modified before the if statements.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index e005150..e7ede44 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -471,7 +471,8 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 	u32 i = 0, j = 0;
 	bool is2t = false;
 
-	u8 ofdm_min_index = 6, rf; /* OFDM BB Swing should be less than +3.0dB */
+	u8 ofdm_min_index = 6;
+	u8  rf = 1; /* OFDM BB Swing should be less than +3.0dB */
 	u8 indexforchannel = 0;
 	s8 ofdm_index_mapping[2][index_mapping_NUM_88E] = {
 		/* 2.4G, decrease power */
@@ -496,12 +497,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 
 	thermal_val = (u8)phy_query_rf_reg(adapt, RF_PATH_A,
 					   RF_T_METER_88E, 0xfc00);
-
-	if (is2t)
-		rf = 2;
-	else
-		rf = 1;
-
 	if (thermal_val) {
 		/* Query OFDM path A default setting */
 		ele_d = phy_query_bb_reg(adapt, rOFDM0_XATxIQImbalance, bMaskDWord)&bMaskOFDM_D;
@@ -513,17 +508,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 			}
 		}
 
-		/* Query OFDM path B default setting */
-		if (is2t) {
-			ele_d = phy_query_bb_reg(adapt, rOFDM0_XBTxIQImbalance, bMaskDWord)&bMaskOFDM_D;
-			for (i = 0; i < OFDM_TABLE_SIZE_92D; i++) {
-				if (ele_d == (OFDMSwingTable[i]&bMaskOFDM_D)) {
-					ofdm_index_old[1] = (u8)i;
-					break;
-				}
-			}
-		}
-
 		/* Query CCK default setting From 0xa24 */
 		temp_cck = dm_odm->RFCalibrateInfo.RegA24;
 
-- 
1.9.1


