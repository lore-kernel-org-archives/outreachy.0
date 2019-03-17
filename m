X-GM-THRID: 6669239463558774784
X-Received: by 2002:a17:902:f46:: with SMTP id 64mr3901471ply.138.1552803337788;
        Sat, 16 Mar 2019 23:15:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:430a:: with SMTP id j10ls5149674pgq.0.gmail; Sat, 16 Mar
 2019 23:15:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzM9nVt6bfl9bKa5yUQ6w6e3EqWeJG5qZfs+PREKUB40uvtT3iEE2XvN/9tUmV+Pea97cLZ
X-Received: by 2002:a62:48d9:: with SMTP id q86mr4484575pfi.111.1552803336875;
        Sat, 16 Mar 2019 23:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803336; cv=none;
        d=google.com; s=arc-20160816;
        b=i1Ph1HZ+RDmOWsYcZ4V8PdYg5b5Y6fc5uFldiAFVJIi5SbR92xTEU0Q1cT1MkIvfs6
         FIFWMZ+D0IIJJRuiFeesP6Kjqg6F2Dea1+ErKSwyzPBcXAJgaHJtAC8HLovssprbTStQ
         Vsnszn1czEp6EKXnahQPmPKdzjD/2AtE/z/05kgjia30k+e9an2BhiZm6GTyCRH30qpG
         B3jHLEtM+FpfkuCXHctTysFXR1lcUtRLkLGCOq8NmPIOhTLm+bisidGL080QmrHIn6i1
         h4/dS0ZxKeXqsGHp0ExaQTIdUlQbkwQV2DSYbEYoWaKM7fWIF34RywEXE4u8dULdLnPT
         NpwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=z6kTSjrW89AY+qEW1sbKnB+Q44AvwJBfSAeF9kS+2iI=;
        b=hP4OCr/G4WHLyyRMfQmHjHIoKnB+9kX/yvstLH9rcfaIwbHUFdjUfIttX1Q9AkBddb
         s1YNNba+eZJzp2sZFP/i65rZWJ6RGP8M3D1LncwC8W56qA6Jmeham6TQuCKMDiBRJTjD
         zu8cQ+5epg5nEtKrOMn+N25Gr7trPJIuqbBi4YU0rD43TdiIRaapTHhRqx9lbqg0N+V1
         il6H3JADQB+v15cT5quYtbp/wJOmaqS1ewhGITsZqfDVX9dhg/inm6LJn4Sf3u5uOv+V
         uMDZAjryc41IxAHytZHc9AQwawVKzr4Rxs3uRh7NRDqLLLANEfY2t3q4Wq5wOP1eE+89
         FTxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqEyxLCq;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id b19si244615pls.5.2019.03.16.23.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqEyxLCq;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc44.google.com with SMTP id x129so10530958ywc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=z6kTSjrW89AY+qEW1sbKnB+Q44AvwJBfSAeF9kS+2iI=;
        b=tqEyxLCqzajW49M/u5Kx5YK/sJ/KI4pRurlEFO5EJmjDJWZ6zSX3Cr4/mvY++ZZZAH
         r4oxJs1fgwMMtA3wiKh81/kD+dRyqrQpNmlQXiuG5eWBpGCyNu0UF+zIZsKlb2msgSFj
         BfEpTcbmPs8VeNegNrojxHa/6Zcb2sViEaR1nzoniqdvrX3bS99UM38ePovKB44muqV8
         wpVWS1O+3SIj+naIBjZh0KDrg59DiX5QYKrff5N1JwowwL7wWkU/oZf8lU+JiYwtlxrK
         jCY6QBWw1t4+WPUrjpUYDcMq15H5msTwL2eV5b5T044d8RpE/0JZIHhaqU6W9ugmQeIX
         tf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=z6kTSjrW89AY+qEW1sbKnB+Q44AvwJBfSAeF9kS+2iI=;
        b=uD/MBNlrdPi7nuv59QYcud+XLxw5AUP1MszbnNbl705NmJHZtomehGZPYc8NTfKCBD
         m284hj1HiMzWzPiLEiuXNXim3y0Rmz4VwAAYIgrYvZfJbn0O3Rwc6N6ugSHX6RKnErWk
         Nk5mg7GDchhzF880p525Ykp4kX2KWdS3o1EuU0Mm4Y7l1lHQu/oqupMzuHWU07uj0HV0
         g/+l5mdQbPHPlahZC1k7yJiRECoKkMsNVGIJ2H/upP4Fe4vteW1N3dS5NhprSiS7XV2T
         gJQ44rglj+I2xG/vgsQdFVtWE/2JhMCljWT9VBB249KnF60LRlOOXM2Q5JiyJMlYYRLz
         Lr0A==
X-Gm-Message-State: APjAAAU/5NXwKcxqdO9PDEzPgnAIORvuQcKsvWB7NqV318SQToGRdh3C
	4j+wQu4ZDTEPvtoq7BkDETc=
X-Received: by 2002:a81:8583:: with SMTP id v125mr9166006ywf.79.1552803336007;
        Sat, 16 Mar 2019 23:15:36 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:35 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 07/11] staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c
Date: Sun, 17 Mar 2019 11:44:57 +0530
Message-Id: <20190317061501.85447-8-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

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


