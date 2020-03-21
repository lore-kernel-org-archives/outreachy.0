X-GM-THRID: 6806789560169660416
X-Received: by 2002:a02:3b0d:: with SMTP id c13mr14409507jaa.85.1584829352274;
        Sat, 21 Mar 2020 15:22:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:e87:: with SMTP id p7ls203557jas.6.gmail; Sat, 21
 Mar 2020 15:22:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvQS+/VZd8BQdgc27tTEc4jdS42vCJaLlEFQAubGZo9zjhdGtXro9+QdV/hB2a/Ef7qyzYI
X-Received: by 2002:a02:dc6:: with SMTP id 189mr14301848jax.100.1584829350880;
        Sat, 21 Mar 2020 15:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829350; cv=none;
        d=google.com; s=arc-20160816;
        b=owrhhKy5tRGubeNia49Q9W73/rxq4D2FvyXqzXBIffCGT8YRlB2k0H4yJmO1gdxzuO
         LE0Kjqv0fUU8Dy+CH0qbwWfrJOpdHQI9Izu7rkGdaZOb4zle/VFsUNNutI0ZbJjsKxLU
         7J/R63VLPOEh/0ZdVkEeF8Fam/yDNoEIu83p7dU6KbEhg++XTY8hJxnYrNkfcaNR6vx/
         d+hwSgRQJrEo/18tH/JlmflEqkiWno+YMskGD/ki4WWPPhGTylz4JWHYBI9sW5oZHOUv
         Txhkk3igdqWc9e14pfmkSPDQUlSlvKWOabAkNHkiC8Scwo/7CGAd0TElLtD6TI3Ds3+n
         LCtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=MY+G2hlK5/8tfRjJ5IkhCQI+Jk9ce+VkAcNN6+q6uB4=;
        b=v/KXNS05TnBMGN9xw+gts24UubyW1z+HiVl92Lm9cUw7ARixmlb2mqaC+gMYO2R54r
         EzMKw8BBOjdCtb0Q++q6ZBzU26XyEecPR+tav1GwlrnS9mQV5FmvnRt7RJhUqZgldSBQ
         4Zlt16LB2RReaGgADXNppEYS9iQahkdEIbahYmnQ76QIcdOCw6fZnJaag50Jj/2pf+4I
         H0of3wmRoql28OO1dpHs+1Mj+t8QzailEwVtwpEQUx8nzoyB8UPfQpjYzwSrDT7f+pK4
         Tp40ojE59clrUastzrbMLpLjiFfSPqKnh+3WOaqHMco1vIUSo63Ytp6kOOSNP/sadYSa
         clPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QeMuzZhZ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m8si5102ili.2.2020.03.21.15.22.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QeMuzZhZ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b22so5047672pgb.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MY+G2hlK5/8tfRjJ5IkhCQI+Jk9ce+VkAcNN6+q6uB4=;
        b=QeMuzZhZDRB/cG2USjSBPOKOTQ8R/Y8haELJnPrcMxW9DLyLQRJ+u14ggPP4nGMHOG
         GY0Tnb8aZLJeZ7Yi2iDgOs7qQLB9lWKM6NTbHHMG3P1IxsusSpAbSjk4mkwLWh6lDUGJ
         evguRC2cARelGunO32+lnTcnDzMNdg+0s24NLF6kLIHs25AGvL8ILJ3lNx1KE+TfyI+A
         k36oOBLtiZuyiqtKaA84f2zLFrZFqx9eF3GmFlS1ZXpx6vVRjnxB4BS+QalwhOWOX74Q
         9HpREU2ExIP89Tt5lpLofnhOLGwzIsro/MGoE60I6bn9Vo0DfVps+I85qAIbCMxMCuRi
         TA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=MY+G2hlK5/8tfRjJ5IkhCQI+Jk9ce+VkAcNN6+q6uB4=;
        b=gDx/m3NqwElBwiX1nVfI572tqVApOB1MBSk+tAFcd6vPPNgzIuJQwgZn+5gyrQWb93
         HMBLP3hX97pS1uB4RKRYMhkycqWkuRR2sHUCyVqjRGDkphpV+F7rbZlfn4ygx6UCufa2
         LvGu5YIDUxsgxnoqYgcjT7UIO8+Y6cbQHArUFciAadBL1e5QqqvulRBBkatf2Axc4s3d
         ss5La5L6bKcfGJ6mkpyp0dQWdN/tFQW1rhO/Gw42N3FR1gAT1LVm0XBAQWWBEVzSPz2n
         iidQc4X2PZ2Vibp8xFr9ef7IvbMnlpYQGP3ssC2FZI55t+N3fEFxaA8xfJBcOhoTtq4t
         w9Ww==
X-Gm-Message-State: ANhLgQ0lrWy58bwMg6rWXvgXtoK2EZ+B3ncDhfa5V7hk18AXfWh2KXor
	bAFKiLyGjOFhnmzQZpAYpaKP22Z5Q4w=
X-Received: by 2002:a63:30c4:: with SMTP id w187mr15665598pgw.239.1584829350163;
        Sat, 21 Mar 2020 15:22:30 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id h4sm9288688pfg.177.2020.03.21.15.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:22:29 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 02/11] Staging: rtl8188eu: odm: Add space around operators
Date: Sun, 22 Mar 2020 03:52:20 +0530
Message-Id: <3ebed98f7e2871bfd2cdded831e121e797e5d253.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/odm.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff odm_old.o odm.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/odm.c | 48 ++++++++++++++---------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 7489491f5aaa..a6eb9798b6f8 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -342,7 +342,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 	u8 CurrentIGI = pDM_DigTable->CurIGValue;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG()==>\n"));
-	if ((!(pDM_Odm->SupportAbility&ODM_BB_DIG)) || (!(pDM_Odm->SupportAbility&ODM_BB_FA_CNT))) {
+	if ((!(pDM_Odm->SupportAbility & ODM_BB_DIG)) || (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD,
 			     ("odm_DIG() Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n"));
 		return;
@@ -419,7 +419,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 		}
 
 		if (pDM_DigTable->LargeFAHit >= 3) {
-			if ((pDM_DigTable->ForbiddenIGI+1) > pDM_DigTable->rx_gain_range_max)
+			if ((pDM_DigTable->ForbiddenIGI + 1) > pDM_DigTable->rx_gain_range_max)
 				pDM_DigTable->rx_gain_range_min = pDM_DigTable->rx_gain_range_max;
 			else
 				pDM_DigTable->rx_gain_range_min = (pDM_DigTable->ForbiddenIGI + 1);
@@ -432,7 +432,7 @@ void odm_DIG(struct odm_dm_struct *pDM_Odm)
 			pDM_DigTable->Recover_cnt--;
 		} else {
 			if (pDM_DigTable->LargeFAHit < 3) {
-				if ((pDM_DigTable->ForbiddenIGI-1) < DIG_Dynamic_MIN) { /* DM_DIG_MIN) */
+				if ((pDM_DigTable->ForbiddenIGI - 1) < DIG_Dynamic_MIN) { /* DM_DIG_MIN) */
 					pDM_DigTable->ForbiddenIGI = DIG_Dynamic_MIN; /* DM_DIG_MIN; */
 					pDM_DigTable->rx_gain_range_min = DIG_Dynamic_MIN; /* DM_DIG_MIN; */
 					ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Normal Case: At Lower Bound\n"));
@@ -518,24 +518,24 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 	phy_set_bb_reg(adapter, ODM_REG_OFDM_FA_RSTD_11N, BIT(31), 1); /* hold page D counter */
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE1_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_Fast_Fsync = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_SB_Search_fail = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_Fast_Fsync = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_SB_Search_fail = (ret_value & 0xffff0000) >> 16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE2_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_OFDM_CCA = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Parity_Fail = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_OFDM_CCA = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_Parity_Fail = (ret_value & 0xffff0000) >> 16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE3_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_Rate_Illegal = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Crc8_fail = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_Rate_Illegal = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_Crc8_fail = (ret_value & 0xffff0000) >> 16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE4_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_Mcs_fail = (ret_value&0xffff);
+	FalseAlmCnt->Cnt_Mcs_fail = (ret_value & 0xffff);
 
 	FalseAlmCnt->Cnt_Ofdm_fail = FalseAlmCnt->Cnt_Parity_Fail + FalseAlmCnt->Cnt_Rate_Illegal +
 				     FalseAlmCnt->Cnt_Crc8_fail + FalseAlmCnt->Cnt_Mcs_fail +
 				     FalseAlmCnt->Cnt_Fast_Fsync + FalseAlmCnt->Cnt_SB_Search_fail;
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_SC_CNT_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_BW_LSC = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_BW_USC = (ret_value & 0xffff0000)>>16;
+	FalseAlmCnt->Cnt_BW_LSC = (ret_value & 0xffff);
+	FalseAlmCnt->Cnt_BW_USC = (ret_value & 0xffff0000) >> 16;
 
 	/* hold cck counter */
 	phy_set_bb_reg(adapter, ODM_REG_CCK_FA_RST_11N, BIT(12), 1);
@@ -544,10 +544,10 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_CCK_FA_LSB_11N, bMaskByte0);
 	FalseAlmCnt->Cnt_Cck_fail = ret_value;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_CCK_FA_MSB_11N, bMaskByte3);
-	FalseAlmCnt->Cnt_Cck_fail +=  (ret_value & 0xff)<<8;
+	FalseAlmCnt->Cnt_Cck_fail +=  (ret_value & 0xff) << 8;
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_CCK_CCA_CNT_11N, bMaskDWord);
-	FalseAlmCnt->Cnt_CCK_CCA = ((ret_value&0xFF)<<8) | ((ret_value&0xFF00)>>8);
+	FalseAlmCnt->Cnt_CCK_CCA = ((ret_value & 0xFF) << 8) | ((ret_value & 0xFF00) >> 8);
 
 	FalseAlmCnt->Cnt_all = (FalseAlmCnt->Cnt_Fast_Fsync +
 				FalseAlmCnt->Cnt_SB_Search_fail +
@@ -583,7 +583,7 @@ void odm_CCKPacketDetectionThresh(struct odm_dm_struct *pDM_Odm)
 	u8 CurCCK_CCAThres;
 	struct false_alarm_stats *FalseAlmCnt = &(pDM_Odm->FalseAlmCnt);
 
-	if (!(pDM_Odm->SupportAbility & (ODM_BB_CCK_PD|ODM_BB_FA_CNT)))
+	if (!(pDM_Odm->SupportAbility & (ODM_BB_CCK_PD | ODM_BB_FA_CNT)))
 		return;
 	if (pDM_Odm->ExtLNA)
 		return;
@@ -630,10 +630,10 @@ void ODM_RF_Saving(struct odm_dm_struct *pDM_Odm, u8 bForceInNormal)
 		Rssi_Low_bound = 45;
 	}
 	if (pDM_PSTable->initialize == 0) {
-		pDM_PSTable->Reg874 = (phy_query_bb_reg(adapter, 0x874, bMaskDWord)&0x1CC000)>>14;
-		pDM_PSTable->RegC70 = (phy_query_bb_reg(adapter, 0xc70, bMaskDWord) & BIT(3))>>3;
-		pDM_PSTable->Reg85C = (phy_query_bb_reg(adapter, 0x85c, bMaskDWord)&0xFF000000)>>24;
-		pDM_PSTable->RegA74 = (phy_query_bb_reg(adapter, 0xa74, bMaskDWord)&0xF000)>>12;
+		pDM_PSTable->Reg874 = (phy_query_bb_reg(adapter, 0x874, bMaskDWord) & 0x1CC000) >> 14;
+		pDM_PSTable->RegC70 = (phy_query_bb_reg(adapter, 0xc70, bMaskDWord) & BIT(3)) >> 3;
+		pDM_PSTable->Reg85C = (phy_query_bb_reg(adapter, 0x85c, bMaskDWord) & 0xFF000000) >> 24;
+		pDM_PSTable->RegA74 = (phy_query_bb_reg(adapter, 0xa74, bMaskDWord) & 0xF000) >> 12;
 		pDM_PSTable->initialize = 1;
 	}
 
@@ -718,13 +718,13 @@ u32 ODM_Get_Rate_Bitmap(struct odm_dm_struct *pDM_Odm, u32 macid, u32 ra_mask, u
 		else
 			rate_bitmap = 0x0000000f;
 		break;
-	case (ODM_WM_A|ODM_WM_G):
+	case (ODM_WM_A | ODM_WM_G):
 		if (rssi_level == DM_RATR_STA_HIGH)
 			rate_bitmap = 0x00000f00;
 		else
 			rate_bitmap = 0x00000ff0;
 		break;
-	case (ODM_WM_B|ODM_WM_G):
+	case (ODM_WM_B | ODM_WM_G):
 		if (rssi_level == DM_RATR_STA_HIGH)
 			rate_bitmap = 0x00000f00;
 		else if (rssi_level == DM_RATR_STA_MIDDLE)
@@ -732,8 +732,8 @@ u32 ODM_Get_Rate_Bitmap(struct odm_dm_struct *pDM_Odm, u32 macid, u32 ra_mask, u
 		else
 			rate_bitmap = 0x00000ff5;
 		break;
-	case (ODM_WM_B|ODM_WM_G|ODM_WM_N24G):
-	case (ODM_WM_A|ODM_WM_B|ODM_WM_G|ODM_WM_N24G):
+	case (ODM_WM_B | ODM_WM_G | ODM_WM_N24G):
+	case (ODM_WM_A | ODM_WM_B | ODM_WM_G | ODM_WM_N24G):
 		if (rssi_level == DM_RATR_STA_HIGH) {
 			rate_bitmap = 0x000f0000;
 		} else if (rssi_level == DM_RATR_STA_MIDDLE) {
@@ -911,7 +911,7 @@ void odm_RSSIMonitorCheckCE(struct odm_dm_struct *pDM_Odm)
 			if (psta->rssi_stat.UndecoratedSmoothedPWDB > tmpEntryMaxPWDB)
 				tmpEntryMaxPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
 			if (psta->rssi_stat.UndecoratedSmoothedPWDB != (-1))
-				PWDB_rssi[sta_cnt++] = (psta->mac_id | (psta->rssi_stat.UndecoratedSmoothedPWDB<<16));
+				PWDB_rssi[sta_cnt++] = (psta->mac_id | (psta->rssi_stat.UndecoratedSmoothedPWDB << 16));
 		}
 	}
 
-- 
2.17.1


