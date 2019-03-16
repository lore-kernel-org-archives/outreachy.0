X-GM-THRID: 6668976439860133888
X-Received: by 2002:a25:d4cf:: with SMTP id m198mr4414460ybf.80.1552742082523;
        Sat, 16 Mar 2019 06:14:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5bc4:: with SMTP id p187ls2393658ybb.14.gmail; Sat, 16
 Mar 2019 06:14:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5LyrxeQKBdrNme7bV0YpAGs2IG2rpfhX5BwSW1bXg6/4EDNVFVZalktXeLYDkjacq/F15
X-Received: by 2002:a25:3241:: with SMTP id y62mr4281612yby.61.1552742081768;
        Sat, 16 Mar 2019 06:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742081; cv=none;
        d=google.com; s=arc-20160816;
        b=LNHqXrv9I8W32vW7NByzEeN5rBwwFh6tdxoLUoaKUF2Hk2oESFIloVpMsQVfeCydLE
         hGBxdyjyQrtLXlXUtrbYin+/YAfjSHw3DmvvNerS+DrzoZ2K8z17JTyLd6WZ0AHXn1/o
         cfzNoq1F/tEt55JI+IXUFK4MpS8JbM3gtxo3bA46ue01pcKiI36SgRl6elgBYqIhhk02
         g3Cd3uZomjpiKAluI/Avkj6/HEcMaJtsl1SynHJNGqlAmCU60J+y/KT2h+BevcWBG0vc
         IjRn9P9+s4W/Vj6ZYUDpIpYaLcYQCQZL1KGd6lBSkE8Uz2hv5dbevzKfkEGUf6hEpMrJ
         UJIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=QHRHnPWHkdJnEB1tv0ue/lF3oBy8Iujl6ZooXaHmuXI=;
        b=KS3kSdP3+9CH30s1gukIMYJ4OxGALg4veYSngYq4MIlwYSybwFXxrEf76qlOLiwmgQ
         Gh52Gq99C/A9PJ18Fef9c6doeGx9v4L+Jsb7HIPtW4zDq+WZylRskYO19V9htNIn44PO
         4Oc1sR5jjJU2MeHPDheWuXLi/4adNE++n2IU/WRyHQPyT6AmfXURZAmJc4GSmpTrQnWI
         1aYWrVcKlrjgtXRYj7JWq1gBFEx+BY2ZLNaq9UHfNFrN/ZUsit15auGFCyhcyAVHh4A9
         QA2aw+j/z5G//T0Zp9zPD4HbRt0QWnfOFh8FtgrJS7hkpEGpwImW3eNGP7BymmDoQO9n
         RUmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Klh93ja3;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s11si215132ywg.3.2019.03.16.06.14.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Klh93ja3;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i20so8230705pfo.6
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QHRHnPWHkdJnEB1tv0ue/lF3oBy8Iujl6ZooXaHmuXI=;
        b=Klh93ja3H+zqSaTHyuWTGVuA8uBOTpuvbbkIl6VZwrx18FuOBmuDkwIAL3cmHu2/l2
         /lX0bArsCwX86zY/qZ3yTi4lQutUeOp94jNES/sg4JqnIpVLdYfaHkktg5S+zrpp9Ffo
         m7LEoCHXYSJTYBriXJs4/j59qxZzGHGUXOoHe5YAPXNR/EDJlZk6Kvp1SfkMOBAw7fx1
         dlYi6dFc2f15bUDoLSy6E2h7L6PPQp8JatVUxL6PXP0lrn3yZ7cX7juA7f+1ibbylcMK
         3X99aehEvPOubWow9C8ZJ2Lo6TjQd8gnBbwseN7GeNCroOrZ8bO95wHXBtNAIBcEcMW1
         kY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QHRHnPWHkdJnEB1tv0ue/lF3oBy8Iujl6ZooXaHmuXI=;
        b=dM6BIB1RpWfodIpgFWznT6ixrrh97TZiwsiMPNxrVF8ZJ7TLaaa8sTnIq5cVZQyrgw
         Diuv0xP+Oq1Z723BSEcZw6JpQU8idg77U4RrAoTjmFCciQx2bRgMF24EP+AZ8WoQEw47
         4MeJZWYhz6jiqSE69az6p7Z01liTZIOMASRnLG5nSF+Z/6ApH0+zsdtdOkbteak23I/R
         5r2kJmSyd9V/mCE/ajFk/3LxGEkGqQ85TtIQg/0aH2u6U+S+x6C/AohpBSlimiw21OAJ
         DTcd6euD2222/EPry1QUIlcj5CMvzdH8OJBdAuG/QVEc5nY2Dx+AVeaH5RAAuY+YfzrU
         jUag==
X-Gm-Message-State: APjAAAVquLO6eBbwGYawztd5c7q57xYMb+BNHg9WYwlJKqMXUrPdbaDn
	vx2V4RlEx4PsNpJ5HorzNko=
X-Received: by 2002:a17:902:1101:: with SMTP id d1mr9457798pla.19.1552742080897;
        Sat, 16 Mar 2019 06:14:40 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id k3sm17852578pfc.59.2019.03.16.06.14.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:39 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 2/4] staging: rtl8723bs: hal: Remove NULL comparisions
Date: Sat, 16 Mar 2019 18:02:49 +0530
Message-Id: <20190316123251.24875-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316123251.24875-1-himadri18.07@gmail.com>
References: <20190316123251.24875-1-himadri18.07@gmail.com>

Remove comparision to NULL. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line
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


