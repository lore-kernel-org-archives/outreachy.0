X-GM-THRID: 6668944264527872000
X-Received: by 2002:a24:680f:: with SMTP id v15mr4455969itb.31.1552734589991;
        Sat, 16 Mar 2019 04:09:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7644:: with SMTP id z65ls2212731itb.4.gmail; Sat, 16 Mar
 2019 04:09:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwb/wMfDmF8UO185ZfdP69Vna9s8F8J8nfG6wwHQ36fFnPnvf7/RNMiHk40t8vLFqGHJbro
X-Received: by 2002:a24:5c5:: with SMTP id 188mr4763034itl.3.1552734589158;
        Sat, 16 Mar 2019 04:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552734589; cv=none;
        d=google.com; s=arc-20160816;
        b=bk8aNKWGWOC1vL/tXQL0V+Q7zL6ZntpthuqUXIW+dl3aGZTeEedHEI8/y5Iae5W40h
         rYJShOpD92NmSji+qwUnD8gc/ENpM6RQFzm7aw9aiJx/Qb/30ecHZ3VAV04BlmbVuvr+
         2VnpoCsR1NpkK0+1/v2uDGWUrhL0Bklr54VlwWyrHikhZIQZNJ+IUbI0Dhy2JNaXf04D
         LgNsMny1Bv2c7eqeZ6npu+wdursdLCUvvxtyWSzWhMMRPwODHACmRKm7fOwiYyZIH4Im
         LZq86tR4DYhHKlh+QUTHYeD3gfM9XGJD9y7TbSmS9BKk0ffJHOqIDQ3pPbqiNGg/FFni
         8QWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Sx4Te/vVbzclje5Z6QaB8oPXdrKDAOB5YpAPHfjaPdM=;
        b=kqSa8PE9q5E2sWgKdBP7K3n8GV74FxGa4xzDV5zR9dtoLYIYTCU+aA31cW5Ok7UEnU
         ZMErI5+CYXjGz5f4ClbjojOQeuYCViESJsozXaESVp8UHgfq2RzUFEf8ASzZFLgSH7XZ
         h5/RMPJEWlKO6Vfp9MQM+S+zkFBj7jBrduXtpKGsow6Z9wvtUt0+ogU88P72dhwBBvF8
         rg+yR5hUpA5q2edjYIjcMU8IG8AHUCYsjYRZqVezPnP9jKdE8eyN/uTPnUxgTKAA/eri
         AvcX6Aev8iVtPkMhZpgdNZUHLuISuZPjuUt5aAQ25FYqU9XU+HKwrsebyQ4jbPfqd8yT
         izOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CEHIpIXj;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id n6si213326iod.1.2019.03.16.04.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CEHIpIXj;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id a3so8088315pff.11
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 04:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Sx4Te/vVbzclje5Z6QaB8oPXdrKDAOB5YpAPHfjaPdM=;
        b=CEHIpIXj00v//f50Wpkap36zMc5FSfS0jmkEO4s0+My5LOEzihyJCsvY+fAKpVUyR1
         yOmxxSGHY4Cih5XrFxj+XbaTk9dJLy4zZLp/wMWhSyan2RF732Aqcsx3BANOypiRLZ8a
         j5Mg29GAfdU5UaiT1lg7DA5m4xKMbjrFwjDrIoDk51Sblv6QlihfDwYt+yA0c8CetNIF
         DVD53gAml+yqt0wCzJurQmO/q/IY/2h7l58ENIqk29Ldshjoy465cCk75oHfPMZHqTZn
         vhC/ZG1zb6iOfTcMJtf4oXnR7TpjUGHf80ZwbLesYzY4bQ2Y8/RkKMg37isSvU/c52JL
         ZiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Sx4Te/vVbzclje5Z6QaB8oPXdrKDAOB5YpAPHfjaPdM=;
        b=EdyidtSLXI/wBo/BwGAvT45hAT7+ZMecP4imMYOu7+i0ZeFtUejWJowJIExOsyZhSQ
         fD/Lbo7gTgKCpMVecCLQrOzZSvYJNzo+Qck+xjg0aWXSRlrQhzf2NPLjPH+wSwENu2/n
         7lxhFQaX3q3BzGUcepb5Qb1kiWeHgaMRJ+soc6CxsZL4NII36hPuZwTF1pPec40wS0/+
         wRjDEtAGq3tAonKFKrCzzrmKjAqLC2kVLhyAP3ytR1Ckr98gLnasvGFX1Lh6s1UD/VW3
         34BL7ESNfQV2GwYtHk6e3M0twbu0+fkwnUpEre0jejSysu0h2D+P9TVkPWXbmy3tp0ZR
         FaNQ==
X-Gm-Message-State: APjAAAVPEcF/1RlxbjzueigKt7/2ERAeb2eh8pCe8DhgaLGCqPVBm/ko
	E/ex7eU4QHNhLZ/kleQ5Mvw=
X-Received: by 2002:a17:902:850c:: with SMTP id bj12mr8980587plb.69.1552734588769;
        Sat, 16 Mar 2019 04:09:48 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id d11sm12097156pfh.29.2019.03.16.04.09.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:48 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 2/3] staging: rtl8723bs: hal: Remove comparision to NULL
Date: Sat, 16 Mar 2019 15:57:58 +0530
Message-Id: <20190316102759.20272-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316102759.20272-1-himadri18.07@gmail.com>
References: <20190316102759.20272-1-himadri18.07@gmail.com>

Remove comparision to NULL. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 12c1cd590056..e15182af2663 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -2236,7 +2236,7 @@ int phy_ConfigMACWithParaFile(struct adapter *Adapter, char *pFileName)
 
 	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
 
-	if ((pHalData->mac_reg_len == 0) && (pHalData->mac_reg == NULL)) {
+	if ((pHalData->mac_reg_len == 0) && !pHalData->mac_reg) {
 		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
 
 		if (rtw_is_file_readable(file_path_bs) == true) {
@@ -2311,7 +2311,7 @@ int phy_ConfigBBWithParaFile(
 
 	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
 
-	if ((pBufLen != NULL) && (*pBufLen == 0) && (pBuf == NULL)) {
+	if (pBufLen && (*pBufLen == 0) && !pBuf) {
 		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
 
 		if (rtw_is_file_readable(file_path_bs) == true) {
@@ -2336,7 +2336,7 @@ int phy_ConfigBBWithParaFile(
 			}
 		}
 	} else {
-		if ((pBufLen != NULL) && (*pBufLen == 0) && (pBuf == NULL)) {
+		if (pBufLen && (*pBufLen == 0) && !pBuf) {
 			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
 			rtStatus = _SUCCESS;
 		} else
@@ -2680,7 +2680,7 @@ int phy_ConfigBBWithPgParaFile(struct adapter *Adapter, char *pFileName)
 
 	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
 
-	if ((pHalData->bb_phy_reg_pg_len == 0) && (pHalData->bb_phy_reg_pg == NULL)) {
+	if ((pHalData->bb_phy_reg_pg_len == 0) && !pHalData->bb_phy_reg_pg) {
 		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
 
 		if (rtw_is_file_readable(file_path_bs) == true) {
@@ -2696,7 +2696,7 @@ int phy_ConfigBBWithPgParaFile(struct adapter *Adapter, char *pFileName)
 			}
 		}
 	} else {
-		if ((pHalData->bb_phy_reg_pg_len != 0) && (pHalData->bb_phy_reg_pg != NULL)) {
+		if ((pHalData->bb_phy_reg_pg_len != 0) && pHalData->bb_phy_reg_pg) {
 			memcpy(pHalData->para_file_buf, pHalData->bb_phy_reg_pg, pHalData->bb_phy_reg_pg_len);
 			rtStatus = _SUCCESS;
 		} else
@@ -2743,7 +2743,7 @@ int PHY_ConfigRFWithParaFile(
 
 	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
 
-	if ((pBufLen != NULL) && (*pBufLen == 0) && (pBuf == NULL)) {
+	if (pBufLen && (*pBufLen == 0) && !pBuf) {
 		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
 
 		if (rtw_is_file_readable(file_path_bs) == true) {
@@ -2768,7 +2768,7 @@ int PHY_ConfigRFWithParaFile(
 			}
 		}
 	} else {
-		if ((pBufLen != NULL) && (*pBufLen == 0) && (pBuf == NULL)) {
+		if (pBufLen && (*pBufLen == 0) && !pBuf) {
 			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
 			rtStatus = _SUCCESS;
 		} else
@@ -2925,7 +2925,7 @@ int PHY_ConfigRFWithTxPwrTrackParaFile(struct adapter *Adapter, char *pFileName)
 
 	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
 
-	if ((pHalData->rf_tx_pwr_track_len == 0) && (pHalData->rf_tx_pwr_track == NULL)) {
+	if ((pHalData->rf_tx_pwr_track_len == 0) && !pHalData->rf_tx_pwr_track) {
 		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
 
 		if (rtw_is_file_readable(file_path_bs) == true) {
@@ -3238,7 +3238,7 @@ int PHY_ConfigRFWithPowerLimitTableParaFile(
 
 	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
 
-	if ((pHalData->rf_tx_pwr_lmt_len == 0) && (pHalData->rf_tx_pwr_lmt == NULL)) {
+	if ((pHalData->rf_tx_pwr_lmt_len == 0) && !pHalData->rf_tx_pwr_lmt) {
 		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
 
 		if (rtw_is_file_readable(file_path_bs) == true) {
-- 
2.17.1


