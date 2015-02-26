X-GM-THRID: 3944967307264
X-Received: by 10.42.16.141 with SMTP id p13mr9839741ica.6.1424981392829;
        Thu, 26 Feb 2015 12:09:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.98 with SMTP id rv2ls306855igb.34.gmail; Thu, 26 Feb
 2015 12:09:52 -0800 (PST)
X-Received: by 10.42.235.15 with SMTP id ke15mr71757icb.8.1424981392643;
        Thu, 26 Feb 2015 12:09:52 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id hs7si246662pad.1.2015.02.26.12.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:09:52 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablf10 with SMTP id lf10so16519497pab.6
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 12:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8Mr0d6tO5V2Iwjqqflr52X7upkNv0M/xISBVQKDedE0=;
        b=1G5IGM34013EUzkUpwbEbwsBSSYDOgRwcssCPmT0F7g8DRBRo14dMH5+etQGNAcMyu
         9APzTrfK9Gw6xRtPVzRUJF0cf3AuS00f8gUbBkEBQSXt1GDbNGULikyLWK4EGeImlrDC
         mhavSy5UdUGPY+JtuqJBK00U3w1BVTz4e3me1A4ZQLX2KTaYOkrluq7swg0i+kUZPuFM
         PUlVDxYri8/2qSSH5toSa6pEYUuseQg0EhmjK/Dk22BF5N280fo6liw75KYaSkmp/wEf
         wK2RDRUu09z0Bh4jHdIYd3xHjFHagm6AXwuL2kjD4w9NDhpr9CqOgGsdOlvo9hW1heqL
         Di2g==
X-Received: by 10.66.221.70 with SMTP id qc6mr17843707pac.92.1424981392494;
        Thu, 26 Feb 2015 12:09:52 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id mi9sm1888374pab.3.2015.02.26.12.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:09:51 -0800 (PST)
Date: Fri, 27 Feb 2015 01:39:32 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unnecessary if condition
Message-ID: <20150226200932.GA32544@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove this branch as is2t is defined false and is not
modified. The variable value32 is then unused.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 37 +------------------------------------
 1 file changed, 1 insertion(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 5822ca6..1540e1d 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -458,7 +458,7 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 	u8 thermal_val = 0, delta, delta_lck, delta_iqk, offset;
 	u8 thermal_avg_count = 0;
 	u32 thermal_avg = 0;
-	s32 ele_a = 0, ele_d, temp_cck, x, value32;
+	s32 ele_a = 0, ele_d, temp_cck, x;
 	s32 y, ele_c = 0;
 	s8 ofdm_index[2], cck_index = 0;
 	s8 ofdm_index_old[2] = {0, 0}, cck_index_old = 0;
@@ -653,41 +653,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 					ele_c = ((y * ele_d)>>8)&0x000003FF;
 
 				}
-
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


