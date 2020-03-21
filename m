X-GM-THRID: 6806789560169660416
X-Received: by 2002:ad4:500c:: with SMTP id s12mr14931160qvo.138.1584829418130;
        Sat, 21 Mar 2020 15:23:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4695:: with SMTP id g21ls4656363qto.3.gmail; Sat, 21 Mar
 2020 15:23:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsHQr/TtUWxD33a6uaZGeI3wEZVvOUsRB6T7hcEdHDZS0+p70YBCFAXJiQeMQL/cWEh6G5S
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr14864555qtd.86.1584829417088;
        Sat, 21 Mar 2020 15:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829417; cv=none;
        d=google.com; s=arc-20160816;
        b=TZWm3xWnMxUoRAHh+ARDxmX++a2K5igpskCE4Cq4fYSLx5Jl+r6n17yFUkw7y87Xui
         5axBpOZdiWqjQbjn1OET1XAN61iKfGPyrd7EzHqVz20sUv+cZYDn7XIDh/roN8RrrMyb
         9AITB7/cBXT7ZXjdPjh/3+6wqvlXbCGNqtBAgBOkNhbJBJwLEGBH99IY2KbBhwJ8VQEa
         3eWKSwiyGSHyCHSJfFbouy6o8sfBkO8mrKmHrbpWw9jwI7Tc+7NVRPJZn9AOJ0AU3tjM
         5iaz6y+ftmIX8YSB3wyl0un4IOaa/u9qpx8ZmsQBw/AMU16QWRVjjgRPEDdXvxmF8k70
         kW1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=QuTjrbwPSgvBw7KasH82kLdGIg2Chd4cyvMlvYtc5+8=;
        b=hZfZtR3YyDUom11laTLNR05Hh3BSUCqh8U5A1ROvXqQtp/0pjjYkIvHlWJS1jrVQ/K
         scmwRhWuA9WaQ4lKqiMxszKH20fSYC6BSFhiJviDFSkL+ibCp5Y/T1jlfCqZa/a6pH+m
         k4ROa9O7PCx+dfkQr50xZYkqy/jTpDLJUp2dQwnJkKOOUigBCTbJQWyM6j1KJ9a/kNgM
         6o7QdnBcyCtM7yCE54swV5k7sBle0dus5RCBNMguueAMghT1EglkIxw54X7FL4eI3qIx
         H6B5frT9adJ+vXveZLbtSFfjuJOe+JDJe3t1VTP2BkuL6FOheDyGhiPF+a7qLflu1ZUG
         FwXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O/oClR7L";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d193si475220qke.1.2020.03.21.15.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O/oClR7L";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id v23so88182ply.10
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QuTjrbwPSgvBw7KasH82kLdGIg2Chd4cyvMlvYtc5+8=;
        b=O/oClR7LFycFGyWRmdp0FutAkv682n49Tv/ROjxJEk2TGJ+f81Kd4hNCtd4Po5wKJf
         +6QuMqv6Rg04Byb0LbZ00FZNUhgDN1plHdtkWY5eG9kpEHkr2P8Albj5QBLXC5DDSpfu
         MXyzRH/l4qflF/OLPR/doj0oe8jIyF6+5HnsAPg9mSR+fWi5B1SX0rq/0gfBCXRqWue7
         a23oOmCbNEM+qIVfB0W3I6d8kviNNR2CIciNMhTifGSVFvzkeZzZi2nMZfXRKeRRDqlT
         PJ7ppLtVuLYpFwsxc5b5M7+mX2krnDax3SFxte90OtcIUVj/RX3lJHtNaHijVmBdNQcD
         S/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QuTjrbwPSgvBw7KasH82kLdGIg2Chd4cyvMlvYtc5+8=;
        b=F6JchuQ1fkX02mdz/Q/SPe9XBBO0ufzhWMsTSsDNMtfcEYd5J3EMwRxiUExlepvnRX
         B4Z/POPlYZN5zGq7auPBOsAjeqEVA28uhI+XB6o/e97+jHlt4ssE3FP42pdYPdVDijC3
         xt0qfvfBGVaoSMgFssR15TFdH5hddU8FW7LX35Jkp3BoRTNK6YT7+1kYLesigPrZdaOE
         XJfzZ/R3rvWqtsAfxxnNDMVDTngVEspkY1n5wPOCBa+GfWPrGTLE7A+1VQMmpsf1prSj
         Xfh0IUf1DfA2UKmRi0OEB94NSWd1EaHnBOb+sN27f94l5bgLdFCO+zsBcD41357mXeuX
         CkTQ==
X-Gm-Message-State: ANhLgQ14tZuI+Yo4J9EO6emEdaQsmKXDeydnWBXZ/oA/JpeyyD+ffnhq
	UFuqKjYS/cga6nymOfRKWHs=
X-Received: by 2002:a17:902:b710:: with SMTP id d16mr14244709pls.293.1584829416342;
        Sat, 21 Mar 2020 15:23:36 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id f69sm9252124pfa.124.2020.03.21.15.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:23:36 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 03/11] Staging: rtl8188eu: odm_hwconfig: Add space around operators
Date: Sun, 22 Mar 2020 03:53:30 +0530
Message-Id: <42b670d93cbacd0413207b59f587e0147eb618fb.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/odm_hwconfig.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff odm_hwconfig_old.o odm_hwconfig.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/odm_hwconfig.c | 54 ++++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
index d5a9ac51e907..a6f2731b076d 100644
--- a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
@@ -103,33 +103,33 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 		switch (LNA_idx) {
 		case 7:
 			if (VGA_idx <= 27)
-				rx_pwr_all = -100 + 2 * (27-VGA_idx); /* VGA_idx = 27~2 */
+				rx_pwr_all = -100 + 2 * (27 - VGA_idx); /* VGA_idx = 27~2 */
 			else
 				rx_pwr_all = -100;
 			break;
 		case 6:
-			rx_pwr_all = -48 + 2 * (2-VGA_idx); /* VGA_idx = 2~0 */
+			rx_pwr_all = -48 + 2 * (2 - VGA_idx); /* VGA_idx = 2~0 */
 			break;
 		case 5:
-			rx_pwr_all = -42 + 2 * (7-VGA_idx); /* VGA_idx = 7~5 */
+			rx_pwr_all = -42 + 2 * (7 - VGA_idx); /* VGA_idx = 7~5 */
 			break;
 		case 4:
-			rx_pwr_all = -36 + 2 * (7-VGA_idx); /* VGA_idx = 7~4 */
+			rx_pwr_all = -36 + 2 * (7 - VGA_idx); /* VGA_idx = 7~4 */
 			break;
 		case 3:
-			rx_pwr_all = -24 + 2 * (7-VGA_idx); /* VGA_idx = 7~0 */
+			rx_pwr_all = -24 + 2 * (7 - VGA_idx); /* VGA_idx = 7~0 */
 			break;
 		case 2:
 			if (cck_highpwr)
-				rx_pwr_all = -12 + 2 * (5-VGA_idx); /* VGA_idx = 5~0 */
+				rx_pwr_all = -12 + 2 * (5 - VGA_idx); /* VGA_idx = 5~0 */
 			else
-				rx_pwr_all = -6 + 2 * (5-VGA_idx);
+				rx_pwr_all = -6 + 2 * (5 - VGA_idx);
 			break;
 		case 1:
-			rx_pwr_all = 8-2 * VGA_idx;
+			rx_pwr_all = 8 - 2 * VGA_idx;
 			break;
 		case 0:
-			rx_pwr_all = 14-2 * VGA_idx;
+			rx_pwr_all = 14 - 2 * VGA_idx;
 			break;
 		default:
 			break;
@@ -138,7 +138,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 		PWDB_ALL = odm_query_rxpwrpercentage(rx_pwr_all);
 		if (!cck_highpwr) {
 			if (PWDB_ALL >= 80)
-				PWDB_ALL = ((PWDB_ALL-80)<<1) + ((PWDB_ALL-80)>>1) + 80;
+				PWDB_ALL = ((PWDB_ALL - 80) << 1) + ((PWDB_ALL - 80) >> 1) + 80;
 			else if ((PWDB_ALL <= 78) && (PWDB_ALL >= 20))
 				PWDB_ALL += 3;
 			if (PWDB_ALL > 100)
@@ -162,7 +162,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 				else if (SQ_rpt < 20)
 					SQ = 100;
 				else
-					SQ = ((64-SQ_rpt) * 100) / 44;
+					SQ = ((64 - SQ_rpt) * 100) / 44;
 			}
 			pPhyInfo->SignalQuality = SQ;
 			pPhyInfo->RxMIMOSignalQuality[RF_PATH_A] = SQ;
@@ -200,8 +200,8 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 			pPhyInfo->RxMIMOSignalStrength[i] = (u8)RSSI;
 
 			/* Get Rx snr value in DB */
-			pPhyInfo->RxSNR[i] = (s32)(pPhyStaRpt->path_rxsnr[i]/2);
-			dm_odm->PhyDbgInfo.RxSNRdB[i] = (s32)(pPhyStaRpt->path_rxsnr[i]/2);
+			pPhyInfo->RxSNR[i] = (s32)(pPhyStaRpt->path_rxsnr[i] / 2);
+			dm_odm->PhyDbgInfo.RxSNRdB[i] = (s32)(pPhyStaRpt->path_rxsnr[i] / 2);
 		}
 		/*  (2)PWDB, Average PWDB calculated by hardware (for rate adaptive) */
 		rx_pwr_all = (((pPhyStaRpt->cck_sig_qual_ofdm_pwdb_all) >> 1) & 0x7f) - 110;
@@ -280,8 +280,8 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 	if (dm_odm->AntDivType == CG_TRX_SMART_ANTDIV) {
 		if (pDM_FatTable->FAT_State == FAT_TRAINING_STATE) {
 			if (pPktinfo->bPacketToSelf) {
-				antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2<<2) |
-						(pDM_FatTable->antsel_rx_keep_1<<1) |
+				antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2 << 2) |
+						(pDM_FatTable->antsel_rx_keep_1 << 1) |
 						pDM_FatTable->antsel_rx_keep_0;
 				pDM_FatTable->antSumRSSI[antsel_tr_mux] += pPhyInfo->RxPWDBAll;
 				pDM_FatTable->antRSSIcnt[antsel_tr_mux]++;
@@ -289,8 +289,8 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 		}
 	} else if ((dm_odm->AntDivType == CG_TRX_HW_ANTDIV) || (dm_odm->AntDivType == CGCS_RX_HW_ANTDIV)) {
 		if (pPktinfo->bPacketToSelf || pPktinfo->bPacketBeacon) {
-			antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2<<2) |
-					(pDM_FatTable->antsel_rx_keep_1<<1) | pDM_FatTable->antsel_rx_keep_0;
+			antsel_tr_mux = (pDM_FatTable->antsel_rx_keep_2 << 2) |
+					(pDM_FatTable->antsel_rx_keep_1 << 1) | pDM_FatTable->antsel_rx_keep_0;
 			rtl88eu_dm_ant_sel_statistics(dm_odm, antsel_tr_mux, pPktinfo->StationID, pPhyInfo->RxPWDBAll);
 		}
 	}
@@ -328,17 +328,17 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 			} else {
 				if (pPhyInfo->RxPWDBAll > (u32)UndecoratedSmoothedOFDM) {
 					UndecoratedSmoothedOFDM =
-							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor-1)) +
+							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor - 1)) +
 							(RSSI_Ave)) / (Rx_Smooth_Factor);
 					UndecoratedSmoothedOFDM = UndecoratedSmoothedOFDM + 1;
 				} else {
 					UndecoratedSmoothedOFDM =
-							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor-1)) +
+							(((UndecoratedSmoothedOFDM) * (Rx_Smooth_Factor - 1)) +
 							(RSSI_Ave)) / (Rx_Smooth_Factor);
 				}
 			}
 
-			pEntry->rssi_stat.PacketMap = (pEntry->rssi_stat.PacketMap<<1) | BIT(0);
+			pEntry->rssi_stat.PacketMap = (pEntry->rssi_stat.PacketMap << 1) | BIT(0);
 
 		} else {
 			RSSI_Ave = pPhyInfo->RxPWDBAll;
@@ -349,16 +349,16 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 			} else {
 				if (pPhyInfo->RxPWDBAll > (u32)UndecoratedSmoothedCCK) {
 					UndecoratedSmoothedCCK =
-							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor-1)) +
+							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor - 1)) +
 							pPhyInfo->RxPWDBAll) / Rx_Smooth_Factor;
 					UndecoratedSmoothedCCK = UndecoratedSmoothedCCK + 1;
 				} else {
 					UndecoratedSmoothedCCK =
-							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor-1)) +
+							((UndecoratedSmoothedCCK * (Rx_Smooth_Factor - 1)) +
 							pPhyInfo->RxPWDBAll) / Rx_Smooth_Factor;
 				}
 			}
-			pEntry->rssi_stat.PacketMap = pEntry->rssi_stat.PacketMap<<1;
+			pEntry->rssi_stat.PacketMap = pEntry->rssi_stat.PacketMap << 1;
 		}
 		/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
 		if (pEntry->rssi_stat.ValidBit >= 64)
@@ -367,16 +367,16 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 			pEntry->rssi_stat.ValidBit++;
 
 		for (i = 0; i < pEntry->rssi_stat.ValidBit; i++)
-			OFDM_pkt += (u8)(pEntry->rssi_stat.PacketMap>>i) & BIT(0);
+			OFDM_pkt += (u8)(pEntry->rssi_stat.PacketMap >> i) & BIT(0);
 
 		if (pEntry->rssi_stat.ValidBit == 64) {
 			Weighting = min_t(u32, OFDM_pkt << 4, 64);
-			UndecoratedSmoothedPWDB = (Weighting * UndecoratedSmoothedOFDM + (64-Weighting) * UndecoratedSmoothedCCK)>>6;
+			UndecoratedSmoothedPWDB = (Weighting * UndecoratedSmoothedOFDM + (64 - Weighting) * UndecoratedSmoothedCCK) >> 6;
 		} else {
 			if (pEntry->rssi_stat.ValidBit != 0)
 				UndecoratedSmoothedPWDB = (OFDM_pkt * UndecoratedSmoothedOFDM +
-							  (pEntry->rssi_stat.ValidBit-OFDM_pkt) *
-							  UndecoratedSmoothedCCK)/pEntry->rssi_stat.ValidBit;
+							  (pEntry->rssi_stat.ValidBit - OFDM_pkt) *
+							  UndecoratedSmoothedCCK) / pEntry->rssi_stat.ValidBit;
 			else
 				UndecoratedSmoothedPWDB = 0;
 		}
-- 
2.17.1


