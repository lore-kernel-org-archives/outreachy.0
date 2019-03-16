X-GM-THRID: 6669057124685840384
X-Received: by 2002:a63:2043:: with SMTP id r3mr3899921pgm.149.1552760878114;
        Sat, 16 Mar 2019 11:27:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls6472448plq.0.gmail; Sat, 16
 Mar 2019 11:27:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRayU7qE2Uz4CvcTMbRsOXGDibQAxptyLKr4ssTtB5ghQgaSSHJCvmvijSGsBTy0q6x8aV
X-Received: by 2002:a17:902:b493:: with SMTP id y19mr3263494plr.7.1552760877524;
        Sat, 16 Mar 2019 11:27:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760877; cv=none;
        d=google.com; s=arc-20160816;
        b=KFLVPFDHUKvz/uXM8ffEcCgcWs60ikY5SFiC1BtJEJe9YHgjKGSz1/e0cJPEUJpfoG
         hAYKFNWQfesoHcrAks6Gmp9UubE/8AxaNRVlce08Itlw8l5RkCrWKc9oP7GcyjAlFv15
         1yloT0ogjYhRZ/9Ufs/AdBuuYjGjI2TwHxeXdCJulchUNNbwBDLs8hL44lXBprI2ZPgt
         lirMf7AbZe0J3nIR4oH/yVKIjsBNFB1AfQhxXqNTrir0e6TKPcN2kX2L61f5TkqseObF
         My4G+w3fHEXpHOvt0A4yc3MzwBpX0cQfdMEJtX/M2sN4HJJaq4eDCOE4n0i/qCslQeb3
         RTbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=z6kTSjrW89AY+qEW1sbKnB+Q44AvwJBfSAeF9kS+2iI=;
        b=IsJUpGX3sa2rTL7uXDPsjVAiyAN6CjeStXgAmuBl2BaOON4VwkEadkSHlUVB3pU8A2
         OGHbWVOF4w02mTF1axbc48SwC8EKsqkei0jm3PcnTfFW7xntmqRpNGH3Ok0s9nY6y0T0
         zbF23px6/7oZqgLIARRyJyOAgAN5GglQ5etoqvsA/GIJ1zT3+JBiQQ3v2BLfAj1bh2S2
         A314dko7qgjbXUvL0OVz9VFIkGO96um5f292cYwWA9yqtE3XA8ZGKrQh9aDwivpbA0xv
         VaTHnP1CtpSKo7OZ4tC8QkWkF9f+8UvqHOlr72ke2IaTA4Pmfw6eY+JYFw5boGdVACrx
         L16Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U/QvRF42";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id a6si286990pfn.3.2019.03.16.11.27.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U/QvRF42";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id n125so8522117pfn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=z6kTSjrW89AY+qEW1sbKnB+Q44AvwJBfSAeF9kS+2iI=;
        b=U/QvRF42S+UNVa3kIlNGum+DySEq6+ul3pWIIYCp6M3dwmYym0giSiAVgbQc+umr8G
         CJkSoKUHU4jchI4HyOBuMgybm1qJG2daPzsW2wSPoKzf4VYdEuvHRJM5+YVv/XEJ6vEg
         Ce7z722OA34BGEgMir0nfrRo2CH60quiq6cYXwv9luezlAbiG0sAbM2l2ysEh2a9j0IB
         lArewLPPPLLGYph+hMDmmO6FMALKR14fxZNz54LTJeLyf+z8fm09H7gQuvXI7zQGo5ng
         2WYqxxdTtJz/2YoCfIHJFp4haQQftF0vqp/XcYtosLS9H5l7C9FxWWsRZy8JzElk4wvs
         0Hag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=z6kTSjrW89AY+qEW1sbKnB+Q44AvwJBfSAeF9kS+2iI=;
        b=XDKiBCQVWe8km1oY9hbjP1KGEfLetxwwFNNmVcoGRP45i2NFUUkY80x7uuwT46/Ks4
         YJ6EppQ3NL5iLhvCrTMa8/AuPZEa5LX71fIECdGtSZLvLoYDxTzaq/3u8uB4J9gMa7T3
         NEsikkgcCJZbmKYLB9YFK+uK8T9ZPaZWuyOmEfpeJQOWzF8krbB1LazF6kRqlIhdcGsD
         LycjSSV2L4GCxGJNheptfEVqWJf0cujlM92IsBQvOrd7hqIjGMuNzA27HAVLAlgrtn2e
         flFxJS3CY/df8bUwHevIhdx8hDq8mfp3yFE4sTUruqGrB82SiKBSB6vnIuFqE0S1IYjG
         Gzpg==
X-Gm-Message-State: APjAAAVqRe0q0jjTIhhg4ApDl3Pz89XTQJz8oFeBYVsjkcdZLFZuoHu8
	hYUZpnmaOp77r8A0o+kgv5o=
X-Received: by 2002:a65:4843:: with SMTP id i3mr9686073pgs.176.1552760877213;
        Sat, 16 Mar 2019 11:27:57 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:56 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 7/9] staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c
Date: Sat, 16 Mar 2019 23:15:41 +0530
Message-Id: <20190316174543.36254-8-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

Remove comparison to NULL in file hal_com_phycfg.c. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	-Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 12c1cd590056..828b328adab8 100644
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


