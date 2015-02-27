X-GM-THRID: 4335556624384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,70e644f069875ab,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.163.108 with SMTP id yh12mr5634934obb.43.1425018240656;
        Thu, 26 Feb 2015 22:24:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.153.227 with SMTP id vj3ls231288obb.99.gmail; Thu, 26 Feb
 2015 22:24:00 -0800 (PST)
X-Received: by 10.182.5.104 with SMTP id r8mr11754599obr.19.1425018240472;
        Thu, 26 Feb 2015 22:24:00 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id nt14si362811pab.2.2015.02.26.22.24.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 22:24:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so20185211pad.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 22:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Mn6p1A4NH5HMUF0Rw0HjN/HjkiJ0dpwZkSHTUUvP4TA=;
        b=pQm8AiMSCed58J5Lkm9/y4knxsyxXOsrqM6diHPSfo5g9FYeUuN4Q0h2ZvmolekJTm
         JYvyCp/VEu69kpFUr3d3sGR8/C9QKFMIDjABypWVKatxUv43cyWAmqRr1iymTNK0mqat
         /QeLDxt90nj5Yto+yjRk0LUdmDJgHgZIhIQqi37IgJocfl09vU6UXUire1sGI7c0O+12
         nFgZQp2ioEI+Asc8lak9L9IeqWbBWbxt4WQ0KLBmeddGWqnoTnZZfSzpTCb+S7r+9I70
         L3+s2Yw+TF1c7WVEVzNcMqNIUuOY8KEoq7iCSNxIU6Jw+J1y4Tl8JyDzOyEWANkBkXT6
         90KQ==
X-Received: by 10.70.43.238 with SMTP id z14mr20831779pdl.113.1425018240331;
        Thu, 26 Feb 2015 22:24:00 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id jw8sm2759531pbc.73.2015.02.26.22.23.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 22:23:59 -0800 (PST)
Date: Fri, 27 Feb 2015 11:53:37 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: Remove redundant if conditions
Message-ID: <20150227062337.GA10321@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove redundant if blocks as is2t is always false.
Variable rf is always 1 as is2t is false.
Variable value32 is unused after removing redundant code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 Changes in v2: Added one new unused if() block.

 drivers/staging/rtl8188eu/hal/phy.c | 55 ++-----------------------------------
 1 file changed, 2 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index a91bc6d..56c0bc9 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -464,14 +464,13 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 	u8 thermal_val = 0, delta, delta_lck, delta_iqk, offset;
 	u8 thermal_avg_count = 0;
 	u32 thermal_avg = 0;
-	s32 ele_a = 0, ele_d, temp_cck, x, value32;
+	s32 ele_a = 0, ele_d, temp_cck, x;
 	s32 y, ele_c = 0;
 	s8 ofdm_index[2], cck_index = 0;
 	s8 ofdm_index_old[2] = {0, 0}, cck_index_old = 0;
 	u32 i = 0, j = 0;
-	bool is2t = false;
 
-	u8 ofdm_min_index = 6, rf; /* OFDM BB Swing should be less than +3.0dB */
+	u8 ofdm_min_index = 6, rf = 1; /* OFDM BB Swing should be less than +3.0dB */
 	u8 indexforchannel = 0;
 	s8 ofdm_index_mapping[2][index_mapping_NUM_88E] = {
 		/* 2.4G, decrease power */
@@ -497,11 +496,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 	thermal_val = (u8)phy_query_rf_reg(adapt, RF_PATH_A,
 					   RF_T_METER_88E, 0xfc00);
 
-	if (is2t)
-		rf = 2;
-	else
-		rf = 1;
-
 	if (thermal_val) {
 		/* Query OFDM path A default setting */
 		ele_d = phy_query_bb_reg(adapt, rOFDM0_XATxIQImbalance, bMaskDWord)&bMaskOFDM_D;
@@ -513,17 +507,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
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
 
@@ -666,40 +649,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 
 				}
 
-				if (is2t) {
-					ele_d = (OFDMSwingTable[(u8)ofdm_index[1]] & 0xFFC00000)>>22;
-
-					/* new element A = element D x X */
-					x = dm_odm->RFCalibrateInfo.IQKMatrixRegSetting[indexforchannel].Value[0][4];
-					y = dm_odm->RFCalibrateInfo.IQKMatrixRegSetting[indexforchannel].Value[0][5];
-
-					if ((x != 0) && (*(dm_odm->pBandType) == ODM_BAND_2_4G)) {
-						if ((x & 0x00000200) != 0)	/* consider minus */
-							x = x | 0xFFFFFC00;
-						ele_a = ((x * ele_d)>>8)&0x000003FF;
-
-						/* new element C = element D x Y */
-						if ((y & 0x00000200) != 0)
-							y = y | 0xFFFFFC00;
-						ele_c = ((y * ele_d)>>8)&0x00003FF;
-
-						/* wtite new elements A, C, D to regC88 and regC9C, element B is always 0 */
-						value32 = (ele_d<<22) | ((ele_c&0x3F)<<16) | ele_a;
-						phy_set_bb_reg(adapt, rOFDM0_XBTxIQImbalance, bMaskDWord, value32);
-
-						value32 = (ele_c&0x000003C0)>>6;
-						phy_set_bb_reg(adapt, rOFDM0_XDTxAFE, bMaskH4Bits, value32);
-
-						value32 = ((x * ele_d)>>7)&0x01;
-						phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT28, value32);
-					} else {
-						phy_set_bb_reg(adapt, rOFDM0_XBTxIQImbalance, bMaskDWord, OFDMSwingTable[(u8)ofdm_index[1]]);
-						phy_set_bb_reg(adapt, rOFDM0_XDTxAFE, bMaskH4Bits, 0x00);
-						phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT28, 0x00);
-					}
-
-				}
-
 			}
 		}
 
-- 
1.9.1


