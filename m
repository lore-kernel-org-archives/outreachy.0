X-GM-THRID: 6806789560169660416
X-Received: by 2002:a02:6241:: with SMTP id d62mr14369241jac.86.1584829564889;
        Sat, 21 Mar 2020 15:26:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3ccf:: with SMTP id j76ls2412173ilf.8.gmail; Sat, 21 Mar
 2020 15:26:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu1YPewDz+9ADLKUy7XBfbJZjJNA4TMGmOilylD3kpAyaTK0zPa7EkavP42+GPeQAqxfbrv
X-Received: by 2002:a05:6e02:c89:: with SMTP id b9mr11602979ile.77.1584829563569;
        Sat, 21 Mar 2020 15:26:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829563; cv=none;
        d=google.com; s=arc-20160816;
        b=nqbm/hxZmRaeo70EkygTMcjVFXjN+/bHBAr8k9zUis+/4aq8lQnMwwBki5DlpRweSA
         OOb7Kl59WgyTnSW56d+Nog+wl6dG9heCT69gd240jH/Ret9Pc86V1D3uHOTtW0c+r4iz
         rYMYtfIZ2J9+F1DWHcY4Hs60wcWBbl32XuN8Su838pA9/Y5Djg+yO158FNEdSezm1A4R
         PF4vUr7+kXCcCxHW4h63RTJabwHLZfABFNdGP7OivmK1zAwmcwY1Z0yZy1vJq7p64d7Y
         QtvnF4iVULIeRdfvJORla9epMkZiQ9qrFI97hyLpR6slfcdHJxl7K5FP8uP1RqDm1hdG
         Z8Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CaluLXUXfZxlHtTK/ZZ9nONRZzC/o1xY2RHE9zq/mMc=;
        b=cyn5E+66D9vrUViSvnuipfsrQ47GNjZEqIn4NUsoUB/E6o2fblTkwuAEic10Aqiqvs
         q0wkDuQ7niMV3hYKS46vfMAV6KauiwdxgVnbOQpdFOVRYDrH8MA9jKmuesK2TPbB10or
         kUro+EA7rHIL1x33NzJ+8brfkgiRlgXKsfD14s0I0WN1fa2VeJQ/vvFVelPACmFaQ0Np
         7IlpKRkJ5P0qqoSqtKGUzfFYzp6ckaSL6cZirdI0yjf41tlrugvOUUTiUUJcgHtLJ6kU
         bE6i+f7y775yihGvKcI1pAwocG02U1L+WKTRrrq8UtWPd/UPJpIhobUGRckZw1mmYGi+
         NNsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R5+nDK6B;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s201si648406ilc.0.2020.03.21.15.26.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:26:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R5+nDK6B;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id g2so4143209plo.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CaluLXUXfZxlHtTK/ZZ9nONRZzC/o1xY2RHE9zq/mMc=;
        b=R5+nDK6B32M84RBs9ZC7pCm3tmQhJuz7j6xiXTfvEZ7oSvasgO20t1th9zbt8Ai6oE
         qgUAngIOVTPXFYHKKfJQjuCuI1qu4QasD3PMXTZG+J1ajGwfIXT6JXhOjrJcEyU8VaVl
         H/z3aruOnUu+CM0DqYwYcHqqNRwmj2lFQAT+FiBI/IqBfZFSWi5qejkYWA6W5Uu1OpcT
         QSvwoy3Cq9tbWA4XYuBvlEpF7QqLd+myqUzKn0OJfePrC7x4bUcFaexujov9PAW9rnN4
         fVpVNQJIy6rcJZ4zHrscKr9Onrxwxhiiu8Ks9sN/C5Ymr2Q+OzYALCK7J9qTj1RJ7sfi
         QeZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CaluLXUXfZxlHtTK/ZZ9nONRZzC/o1xY2RHE9zq/mMc=;
        b=IdEKKM0xsaboKiDKASuPnLZxxTRXBX+YFRALDGOViyD00FQRMjUQcJHWHl+n9chmaz
         X01esWjIQKYaZVIeI2EoPWq7V/6xshlX872GLa7yyRHvU8vQ0hWGt5H6aFCj33N3m1st
         yWIhJPd5zClGuxErfp9RsU5nyjNKOVmnGnkpl/HeWa7f8DWk94KB4dJ0vmYBFuIQBRDW
         Z0L+OS9N02RtL9Vtg6YCWWgq9k0HFZwnkEEipvI/rv/QzV/mq8qn6k+Sll2AcP+tHdnm
         6bpi+VAatQjXlHC4dSG1+oGC23IZ74antIAoZqr45Q1kA+Lh6UcN9oBuavLVro6ZOCJd
         Dw7Q==
X-Gm-Message-State: ANhLgQ3OLkFwSHYI5+GO/48cnerCmaVEFGruAGzkX9voAbxjYlDFNgZD
	h9HMzPQ4pwL2uQ/Zc/KZCGc=
X-Received: by 2002:a17:90a:c001:: with SMTP id p1mr17306711pjt.86.1584829562738;
        Sat, 21 Mar 2020 15:26:02 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id nh4sm7955956pjb.39.2020.03.21.15.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:26:02 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 06/11] Staging: rtl8188eu: rf: Add space around operators
Date: Sun, 22 Mar 2020 03:55:56 +0530
Message-Id: <1dcec882b2008ab68a29f587d197e78feecb1559.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rf.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rf_old.o rf.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/rf.c | 60 +++++++++++++++---------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf.c b/drivers/staging/rtl8188eu/hal/rf.c
index 6fe4daea8fd5..00a9f692bb06 100644
--- a/drivers/staging/rtl8188eu/hal/rf.c
+++ b/drivers/staging/rtl8188eu/hal/rf.c
@@ -49,9 +49,9 @@ void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
 		tx_agc[RF_PATH_B] = 0x3f3f3f3f;
 		for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
 			tx_agc[idx1] = powerlevel[idx1] |
-				      (powerlevel[idx1]<<8) |
-				      (powerlevel[idx1]<<16) |
-				      (powerlevel[idx1]<<24);
+				      (powerlevel[idx1] << 8) |
+				      (powerlevel[idx1] << 16) |
+				      (powerlevel[idx1] << 24);
 		}
 	} else {
 		if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level1) {
@@ -63,17 +63,17 @@ void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
 		} else {
 			for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
 				tx_agc[idx1] = powerlevel[idx1] |
-					       (powerlevel[idx1]<<8) |
-					       (powerlevel[idx1]<<16) |
-					       (powerlevel[idx1]<<24);
+					       (powerlevel[idx1] << 8) |
+					       (powerlevel[idx1] << 16) |
+					       (powerlevel[idx1] << 24);
 			}
 			if (hal_data->EEPROMRegulatory == 0) {
 				tmpval = hal_data->MCSTxPowerLevelOriginalOffset[0][6] +
-					 (hal_data->MCSTxPowerLevelOriginalOffset[0][7]<<8);
+					 (hal_data->MCSTxPowerLevelOriginalOffset[0][7] << 8);
 				tx_agc[RF_PATH_A] += tmpval;
 
 				tmpval = hal_data->MCSTxPowerLevelOriginalOffset[0][14] +
-					 (hal_data->MCSTxPowerLevelOriginalOffset[0][15]<<24);
+					 (hal_data->MCSTxPowerLevelOriginalOffset[0][15] << 24);
 				tx_agc[RF_PATH_B] += tmpval;
 			}
 		}
@@ -100,15 +100,15 @@ void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
 	}
 
 	/*  rf-A cck tx power */
-	tmpval = tx_agc[RF_PATH_A]&0xff;
+	tmpval = tx_agc[RF_PATH_A] & 0xff;
 	phy_set_bb_reg(adapt, rTxAGC_A_CCK1_Mcs32, bMaskByte1, tmpval);
-	tmpval = tx_agc[RF_PATH_A]>>8;
+	tmpval = tx_agc[RF_PATH_A] >> 8;
 	phy_set_bb_reg(adapt, rTxAGC_B_CCK11_A_CCK2_11, 0xffffff00, tmpval);
 
 	/*  rf-B cck tx power */
-	tmpval = tx_agc[RF_PATH_B]>>24;
+	tmpval = tx_agc[RF_PATH_B] >> 24;
 	phy_set_bb_reg(adapt, rTxAGC_B_CCK11_A_CCK2_11, bMaskByte0, tmpval);
-	tmpval = tx_agc[RF_PATH_B]&0x00ffffff;
+	tmpval = tx_agc[RF_PATH_B] & 0x00ffffff;
 	phy_set_bb_reg(adapt, rTxAGC_B_CCK1_55_Mcs32, 0xffffff00, tmpval);
 }
 
@@ -124,9 +124,9 @@ static void getpowerbase88e(struct adapter *adapt, u8 *pwr_level_ofdm,
 	for (i = 0; i < 2; i++) {
 		powerbase0 = pwr_level_ofdm[i];
 
-		powerbase0 = (powerbase0<<24) | (powerbase0<<16) |
-			     (powerbase0<<8) | powerbase0;
-		*(ofdmbase+i) = powerbase0;
+		powerbase0 = (powerbase0 << 24) | (powerbase0 << 16) |
+			     (powerbase0 << 8) | powerbase0;
+		*(ofdmbase + i) = powerbase0;
 	}
 	/* Check HT20 to HT40 diff */
 	if (adapt->HalData->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
@@ -134,8 +134,8 @@ static void getpowerbase88e(struct adapter *adapt, u8 *pwr_level_ofdm,
 	else
 		powerlevel[0] = pwr_level_bw40[0];
 	powerbase1 = powerlevel[0];
-	powerbase1 = (powerbase1<<24) | (powerbase1<<16) |
-		     (powerbase1<<8) | powerbase1;
+	powerbase1 = (powerbase1 << 24) | (powerbase1 << 16) |
+		     (powerbase1 << 8) | powerbase1;
 	*mcs_base = powerbase1;
 }
 static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
@@ -157,7 +157,7 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 		switch (regulatory) {
 		case 0:
 			chnlGroup = 0;
-			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index+(rf ? 8 : 0)] +
+			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index + (rf ? 8 : 0)] +
 				((index < 2) ? powerbase0[rf] : powerbase1[rf]);
 			break;
 		case 1: /*  Realtek regulatory */
@@ -167,7 +167,7 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 			if (hal_data->pwrGroupCnt >= hal_data->PGMaxGroup)
 				Hal_GetChnlGroup88E(channel, &chnlGroup);
 
-			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index+(rf ? 8 : 0)] +
+			write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index + (rf ? 8 : 0)] +
 					((index < 2) ? powerbase0[rf] : powerbase1[rf]);
 			break;
 		case 2:	/*  Better regulatory */
@@ -179,14 +179,14 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 			chnlGroup = 0;
 
 			if (index < 2)
-				pwr_diff = hal_data->TxPwrLegacyHtDiff[rf][channel-1];
+				pwr_diff = hal_data->TxPwrLegacyHtDiff[rf][channel - 1];
 			else if (hal_data->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
-				pwr_diff = hal_data->TxPwrHt20Diff[rf][channel-1];
+				pwr_diff = hal_data->TxPwrHt20Diff[rf][channel - 1];
 
 			if (hal_data->CurrentChannelBW == HT_CHANNEL_WIDTH_40)
-				customer_pwr_limit = hal_data->PwrGroupHT40[rf][channel-1];
+				customer_pwr_limit = hal_data->PwrGroupHT40[rf][channel - 1];
 			else
-				customer_pwr_limit = hal_data->PwrGroupHT20[rf][channel-1];
+				customer_pwr_limit = hal_data->PwrGroupHT20[rf][channel - 1];
 
 			if (pwr_diff >= customer_pwr_limit)
 				pwr_diff = 0;
@@ -200,9 +200,9 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 				if (pwr_diff_limit[i] > pwr_diff)
 					pwr_diff_limit[i] = pwr_diff;
 			}
-			customer_limit = (pwr_diff_limit[3]<<24) |
-					 (pwr_diff_limit[2]<<16) |
-					 (pwr_diff_limit[1]<<8) |
+			customer_limit = (pwr_diff_limit[3] << 24) |
+					 (pwr_diff_limit[2] << 16) |
+					 (pwr_diff_limit[1] << 8) |
 					 (pwr_diff_limit[0]);
 			write_val = customer_limit + ((index < 2) ? powerbase0[rf] : powerbase1[rf]);
 			break;
@@ -221,7 +221,7 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 		else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level2)
 			write_val = 0x00000000;
 
-		*(out_val+rf) = write_val;
+		*(out_val + rf) = write_val;
 	}
 }
 
@@ -240,12 +240,12 @@ static void write_ofdm_pwr_reg(struct adapter *adapt, u8 index, u32 *pvalue)
 	for (rf = 0; rf < 2; rf++) {
 		write_val = pvalue[rf];
 		for (i = 0; i < 4; i++) {
-			pwr_val[i] = (u8)((write_val & (0x7f<<(i*8)))>>(i*8));
+			pwr_val[i] = (u8)((write_val & (0x7f << (i * 8))) >> (i * 8));
 			if (pwr_val[i]  > RF6052_MAX_TX_PWR)
 				pwr_val[i]  = RF6052_MAX_TX_PWR;
 		}
-		write_val = (pwr_val[3]<<24) | (pwr_val[2]<<16) |
-			    (pwr_val[1]<<8) | pwr_val[0];
+		write_val = (pwr_val[3] << 24) | (pwr_val[2] << 16) |
+			    (pwr_val[1] << 8) | pwr_val[0];
 
 		if (rf == 0)
 			regoffset = regoffset_a[index];
-- 
2.17.1


