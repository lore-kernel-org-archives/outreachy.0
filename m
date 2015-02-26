X-GM-THRID: 3977169076224
X-Received: by 10.236.210.113 with SMTP id t77mr9708300yho.13.1424983352590;
        Thu, 26 Feb 2015 12:42:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.67 with SMTP id c61ls272247qge.52.gmail; Thu, 26 Feb
 2015 12:42:32 -0800 (PST)
X-Received: by 10.236.216.69 with SMTP id f65mr9481102yhp.58.1424983352384;
        Thu, 26 Feb 2015 12:42:32 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ri9si254681pdb.1.2015.02.26.12.42.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:42:32 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablf10 with SMTP id lf10so16688637pab.12
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 12:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BLrDzcj6V0Lkgylj0vSJE8A24ihNPWrB8ZnNd/BKxR4=;
        b=eg0MorxqGfJYp3GdBqtQyEI1LsqUeFPXXp2fyxJ9C40Qmkq/F5fNtgJgzEOsqAuI4u
         tp96epEPtVHEZfBI8KP/VUPnZomhkdU1N6XAdQODBkhMZ7BbnLYeyiQW9jW8N0o0h/91
         bpnThc3UtCFVG9fcNr9c/YdVaD7YVfc6YwE3MeEg1EANwIKmkM4yBZkA749pM0DNb0P4
         RMiToavilg/1BgIWCVBR/1CipTkqBIc+Xk0G1Jy+MhnwcY/RGxNmHbrJYKqMwgm0jaGo
         0Slg/hTrpA+CnM5RCoBCMm7oSIGhgErp7wYA2/cl5WXcXCExMJaPUID79YsY+nNAAphN
         FyTg==
X-Received: by 10.68.136.228 with SMTP id qd4mr17968836pbb.122.1424983352234;
        Thu, 26 Feb 2015 12:42:32 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ia9sm1877817pbc.26.2015.02.26.12.42.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:42:31 -0800 (PST)
Date: Fri, 27 Feb 2015 02:12:10 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unnecessary code
Message-ID: <20150226204210.GA3571@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Code removed as variables assigned are not used anywhere.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 1540e1d..8a85c4a 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -458,15 +458,13 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 	u8 thermal_val = 0, delta, delta_lck, delta_iqk, offset;
 	u8 thermal_avg_count = 0;
 	u32 thermal_avg = 0;
-	s32 ele_a = 0, ele_d, temp_cck, x;
-	s32 y, ele_c = 0;
+	s32 ele_d, temp_cck;
 	s8 ofdm_index[2], cck_index = 0;
 	s8 ofdm_index_old[2] = {0, 0}, cck_index_old = 0;
 	u32 i = 0, j = 0;
 	bool is2t = false;
 
 	u8 ofdm_min_index = 6, rf; /* OFDM BB Swing should be less than +3.0dB */
-	u8 indexforchannel = 0;
 	s8 ofdm_index_mapping[2][index_mapping_NUM_88E] = {
 		/* 2.4G, decrease power */
 		{0, 0, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 10, 11},
@@ -623,11 +621,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 			if (dm_odm->RFCalibrateInfo.TxPowerTrackControl) {
 				dm_odm->RFCalibrateInfo.bDoneTxpower = true;
 
-				/* Adujst OFDM Ant_A according to IQK result */
-				ele_d = (OFDMSwingTable[(u8)ofdm_index[0]] & 0xFFC00000)>>22;
-				x = dm_odm->RFCalibrateInfo.IQKMatrixRegSetting[indexforchannel].Value[0][0];
-				y = dm_odm->RFCalibrateInfo.IQKMatrixRegSetting[indexforchannel].Value[0][1];
-
 				/*  Revse TX power table. */
 				dm_odm->BbSwingIdxOfdm = (u8)ofdm_index[0];
 				dm_odm->BbSwingIdxCck = (u8)cck_index;
@@ -641,18 +634,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 					dm_odm->BbSwingIdxCckCurrent = dm_odm->BbSwingIdxCck;
 					dm_odm->BbSwingFlagCck = true;
 				}
-
-				if (x != 0) {
-					if ((x & 0x00000200) != 0)
-						x = x | 0xFFFFFC00;
-					ele_a = ((x * ele_d)>>8)&0x000003FF;
-
-					/* new element C = element D x Y */
-					if ((y & 0x00000200) != 0)
-						y = y | 0xFFFFFC00;
-					ele_c = ((y * ele_d)>>8)&0x000003FF;
-
-				}
 			}
 		}
 
-- 
1.9.1


