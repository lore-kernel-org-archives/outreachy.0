X-GM-THRID: 6889129421220872192
X-Received: by 2002:a4a:d554:: with SMTP id q20mr4483741oos.23.1604000440931;
        Thu, 29 Oct 2020 12:40:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:a10e:: with SMTP id i14ls263407ool.5.gmail; Thu, 29 Oct
 2020 12:40:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwTIPxsRqFKJt6PnQbzXx0dWt6QNfFVTEo61MmSQ3KuBHCXy8lr43P16rY85yvNPPo5zq5d
X-Received: by 2002:a4a:b811:: with SMTP id g17mr4538327oop.82.1604000439531;
        Thu, 29 Oct 2020 12:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604000439; cv=none;
        d=google.com; s=arc-20160816;
        b=VtAoF6HWyUf/73WXZvVjKAsbFa7Mhbwiw0Rt5QtrAerj/+uPoX9xOKwpjc6lWz3K9K
         0PDV1GNLsLFHbbeM9xqAK1efDNzYtqG9S/o70b6lhQ45LTP0fPWhuzMbpa4ZT3XzBGdb
         8tTEKUO5uSWr82wFVmdJLgiXsNDHewamIbEHvBdwzgZjbwhnRr+PrJI/FRxHvrssjbfF
         Va2YCW1AiWxE8LF0eXMhURteGhIH2F+SUXCoD+4CxiZaKSyG6u+4waTEWzbxw45y4DG2
         qCSAKueu0NbmiH0j1ixS4fumFvAXRiZx7/9Jq7sb8mZWZt4ctBh/T7fQXVU/oN/J59H8
         xctg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l674MujklVjQUv22DGAyhUsp3Qdc0cxhNrgioZoamu0=;
        b=a2t32D/waywRXpaQSafUFR8uoZXVEHBzAXgtsAAhClJsigKW4hH2/VeHTzZrlejDai
         mixBIpVLhD1crmxRS8HpB0Qm8jjgwo82rns5Em05LwnWcKN5viUflVedhsikiVPDCQhO
         CmWdek38qc0+3G+n/msyXCqqgwgTJd7VSF41cKTEwSytiWl0REje76ywkJYDT/Nyx+uB
         lk5/4ltTqwH0aAjcYjH1SbTtwo94GWMn3h5AQik1plFtGDodkC48zKfG+3nZX92wYxos
         7IBDxeirb2GITtJlQyne/L0C4WSIdW+SLp8BooUsHY0P6YNYt67XhG86NTb0gECjaFpR
         iwvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEPnn2U+;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id v11si270137oiv.0.2020.10.29.12.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEPnn2U+;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id c20so3209452pfr.8
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 12:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l674MujklVjQUv22DGAyhUsp3Qdc0cxhNrgioZoamu0=;
        b=rEPnn2U+s8xVUzhUCST5pV2vJP6zDQDmgqoEtd35dM0nVNxLxJEbdS49vPD1jNFkIP
         kymWCJ1b1ZNYKj3UOR3E8Vhjx5TQLUdDA+YrZ8c8pMxGHy997mQ2vOuuePofcZ4M7Cue
         bdT8ahMlYvq9bA4jIYD56JLLjEDxL571qOdC466k2O4r43iHRZQiq+yZ5gSmJoi8xr94
         0LRYNfkrP02sHCK6AfHTnekBF9Cn4VYcMjFBzngy7rmj+C0ij48ws8oXeWlpUIzMHjVd
         DEEkXLh4q5ZO53WlHHFPTWYI/yHF6KSD5AQojMfsxx5V1FNZzdeONOUOD93GIMiX+F+5
         CZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l674MujklVjQUv22DGAyhUsp3Qdc0cxhNrgioZoamu0=;
        b=BU+KrfW+y4JZ9DwEwMXXdYRQ0z2vS0lJJ1TbPA0n3GJWP6m2R3uXNjaKZG0/6cxkau
         nnhDh7cvDJdhxEMIsZLRS+KzHKshx8/tCO0ipWUVnBnL+eiPZHSuqgLVAOAsrDZijsBc
         //lxxajRpid5MwMOP8j440IxZdOrgtqVfyf+AiluKUlj+Z/HiviL/4SoJXGp4KTXcEYb
         fpljrUmLRdzGtGOsYy9i7JsvHhYCFrwqNrsoMidsIgcycUZVOeT24k8MDoJp4ExqJ9lY
         8iS123eoCJJVtO32xGkL18N5x7TsLog4shw8pfM+TggfPqKZ03c6XGsqdo2MRtYoz8oK
         G/Xg==
X-Gm-Message-State: AOAM533N0/QlQYBbr0QCmxKPQaEtsJxFBI4BCHrRLfAS7HpA1Hu8skK5
	l6X70s+KPcQJpG1iuoglLTSiexHK61QS8NJo
X-Received: by 2002:a17:90a:c68c:: with SMTP id n12mr1435352pjt.98.1604000438582;
        Thu, 29 Oct 2020 12:40:38 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.185.125])
        by smtp.googlemail.com with ESMTPSA id 9sm6397715pjs.1.2020.10.29.12.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:40:38 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 1/4] staging: rtl8723bs: hal: fix position of constant in comparison
Date: Fri, 30 Oct 2020 03:40:26 +0800
Message-Id: <20201029194029.141165-2-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029194029.141165-1-amarjargal16@gmail.com>
References: <20201029194029.141165-1-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch warning "Comparisons should place the constant on the
right side of the test".

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 112 +++++++++---------
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   |  82 ++++++-------
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    |   6 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c    |  22 ++--
 drivers/staging/rtl8723bs/hal/hal_com.c       |   2 +-
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    |  56 ++++-----
 drivers/staging/rtl8723bs/hal/odm.c           |   4 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |   2 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  46 +++----
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |   2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |   4 +-
 11 files changed, 169 insertions(+), 169 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index c60e8c58d9cc..82ace6ceca15 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -1670,7 +1670,7 @@ static bool halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
 
 	if (
 		!bWifiConnected &&
-		BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus
+		pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE
 	) {
 		BTC_PRINT(
 			BTC_MSG_ALGORITHM,
@@ -1683,7 +1683,7 @@ static bool halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
 		bCommon = true;
 	} else if (
 		bWifiConnected &&
-		(BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE)
 	) {
 		BTC_PRINT(
 			BTC_MSG_ALGORITHM,
@@ -1696,7 +1696,7 @@ static bool halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
 		bCommon = true;
 	} else if (
 		!bWifiConnected &&
-		(BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE)
 	) {
 		BTC_PRINT(
 			BTC_MSG_ALGORITHM,
@@ -1709,7 +1709,7 @@ static bool halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
 		bCommon = true;
 	} else if (
 		bWifiConnected &&
-		(BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE)
 	) {
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Wifi connected + BT connected-idle!!\n"));
 
@@ -1718,7 +1718,7 @@ static bool halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
 		bCommon = true;
 	} else if (
 		!bWifiConnected &&
-		(BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE != pCoexDm->btStatus)
+		(pCoexDm->btStatus != BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE)
 	) {
 		BTC_PRINT(
 			BTC_MSG_ALGORITHM,
@@ -1766,9 +1766,9 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 	);
 
 	if (
-		(BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN == wifiStatus) ||
-		(BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN == wifiStatus) ||
-		(BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT == wifiStatus)
+		(wifiStatus == BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN) ||
+		(wifiStatus == BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN) ||
+		(wifiStatus == BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT)
 	) {
 		if (
 			pCoexDm->curPsTdma != 1 &&
@@ -2105,7 +2105,7 @@ static void halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
 		pCoexDm->bAutoTdmaAdjust = false;
 		return;
 	} else if (pBtLinkInfo->bA2dpOnly) { /* A2DP */
-		if (BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE == wifiStatus) {
+		if (wifiStatus == BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE) {
 			halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 32);
 			halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 			pCoexDm->bAutoTdmaAdjust = false;
@@ -2160,7 +2160,7 @@ static void halbtc8723b1ant_ActionWifiNotConnectedScan(
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
 	/*  tdma and coex table */
-	if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) {
+	if (pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) {
 		if (pBtLinkInfo->bA2dpExist) {
 			halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 32);
 			halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
@@ -2172,8 +2172,8 @@ static void halbtc8723b1ant_ActionWifiNotConnectedScan(
 			halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 		}
 	} else if (
-		(BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_SCO_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
 	) {
 		halbtc8723b1ant_ActionBtScoHidOnlyBusy(
 			pBtCoexist, BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN
@@ -2217,7 +2217,7 @@ static void halbtc8723b1ant_ActionWifiConnectedScan(PBTC_COEXIST pBtCoexist)
 	halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 
 	/*  tdma and coex table */
-	if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) {
+	if (pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) {
 		if (pBtLinkInfo->bA2dpExist) {
 			halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 32);
 			halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
@@ -2229,8 +2229,8 @@ static void halbtc8723b1ant_ActionWifiConnectedScan(PBTC_COEXIST pBtCoexist)
 			halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 		}
 	} else if (
-		(BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_SCO_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
 	) {
 		halbtc8723b1ant_ActionBtScoHidOnlyBusy(
 			pBtCoexist, BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN
@@ -2312,7 +2312,7 @@ static void halbtc8723b1ant_ActionWifiConnected(PBTC_COEXIST pBtCoexist)
 	/*  power save state */
 	if (
 		!bApEnable &&
-		BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus &&
+		pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_BUSY &&
 		!pBtCoexist->btLinkInfo.bHidOnly
 	) {
 		if (pBtCoexist->btLinkInfo.bA2dpOnly) { /* A2DP */
@@ -2343,14 +2343,14 @@ static void halbtc8723b1ant_ActionWifiConnected(PBTC_COEXIST pBtCoexist)
 
 	/*  tdma and coex table */
 	if (!bWifiBusy) {
-		if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) {
+		if (pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) {
 			halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
 				pBtCoexist,
 				BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE
 			);
 		} else if (
-			(BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
-			(BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
+			(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_SCO_BUSY) ||
+			(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
 		) {
 			halbtc8723b1ant_ActionBtScoHidOnlyBusy(pBtCoexist,
 				BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE);
@@ -2363,14 +2363,14 @@ static void halbtc8723b1ant_ActionWifiConnected(PBTC_COEXIST pBtCoexist)
 				halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
 		}
 	} else {
-		if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) {
+		if (pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) {
 			halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
 				pBtCoexist,
 				BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY
 			);
 		} else if (
-			(BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
-			(BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
+			(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_SCO_BUSY) ||
+			(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
 		) {
 			halbtc8723b1ant_ActionBtScoHidOnlyBusy(
 				pBtCoexist,
@@ -2474,9 +2474,9 @@ static void halbtc8723b1ant_RunCoexistMechanism(PBTC_COEXIST pBtCoexist)
 	}
 
 	if (
-		(BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_SCO_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
 	){
 		bIncreaseScanDevNum = true;
 	}
@@ -2869,8 +2869,8 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(PBTC_COEXIST pBtCoexist)
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = %s / %s/ %s/ AP =%d/ %s ", "Wifi status", \
 		(bWifiUnder5G ? "5G" : "2.4G"),
-		((bWifiUnderBMode) ? "11b" : ((BTC_WIFI_BW_LEGACY == wifiBw) ? "11bg" : (((BTC_WIFI_BW_HT40 == wifiBw) ? "HT40" : "HT20")))),
-		((!bWifiBusy) ? "idle" : ((BTC_WIFI_TRAFFIC_TX == wifiTrafficDir) ? "uplink" : "downlink")),
+		((bWifiUnderBMode) ? "11b" : ((wifiBw == BTC_WIFI_BW_LEGACY) ? "11bg" : (((wifiBw == BTC_WIFI_BW_HT40) ? "HT40" : "HT20")))),
+		((!bWifiBusy) ? "idle" : ((wifiTrafficDir == BTC_WIFI_TRAFFIC_TX) ? "uplink" : "downlink")),
 		pCoexSta->nScanAPNum,
 		(pCoexSta->bCCKLock) ? "Lock" : "noLock"
 	);
@@ -2897,8 +2897,8 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(PBTC_COEXIST pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = [%s/ %d/ %d/ %d] ", "BT [status/ rssi/ retryCnt/ popCnt]", \
-		((pBtCoexist->btInfo.bBtDisabled) ? ("disabled") : ((pCoexSta->bC2hBtInquiryPage) ? ("inquiry/page scan") : ((BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus) ? "non-connected idle" :
-		((BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus) ? "connected-idle" : "busy")))),
+		((pBtCoexist->btInfo.bBtDisabled) ? ("disabled") : ((pCoexSta->bC2hBtInquiryPage) ? ("inquiry/page scan") : ((pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE) ? "non-connected idle" :
+		((pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE) ? "connected-idle" : "busy")))),
 		pCoexSta->btRssi, pCoexSta->btRetryCnt, pCoexSta->popEventCnt
 	);
 	CL_PRINTF(cliBuf);
@@ -3188,7 +3188,7 @@ void EXhalbtc8723b1ant_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	if (pBtCoexist->bManualControl ||	pBtCoexist->bStopCoexDm)
 		return;
 
-	if (BTC_IPS_ENTER == type) {
+	if (type == BTC_IPS_ENTER) {
 		BTC_PRINT(
 			BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS ENTER notify\n")
 		);
@@ -3197,7 +3197,7 @@ void EXhalbtc8723b1ant_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 		halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, false, 0);
 		halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
 		halbtc8723b1ant_SetAntPath(pBtCoexist, BTC_ANT_PATH_BT, false, true);
-	} else if (BTC_IPS_LEAVE == type) {
+	} else if (type == BTC_IPS_LEAVE) {
 		BTC_PRINT(
 			BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS LEAVE notify\n")
 		);
@@ -3214,12 +3214,12 @@ void EXhalbtc8723b1ant_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
 		return;
 
-	if (BTC_LPS_ENABLE == type) {
+	if (type == BTC_LPS_ENABLE) {
 		BTC_PRINT(
 			BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS ENABLE notify\n")
 		);
 		pCoexSta->bUnderLps = true;
-	} else if (BTC_LPS_DISABLE == type) {
+	} else if (type == BTC_LPS_DISABLE) {
 		BTC_PRINT(
 			BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS DISABLE notify\n")
 		);
@@ -3241,7 +3241,7 @@ void EXhalbtc8723b1ant_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
 		return;
 
-	if (BTC_SCAN_START == type) {
+	if (type == BTC_SCAN_START) {
 		pCoexSta->bWiFiIsHighPriTask = true;
 		BTC_PRINT(
 			BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n")
@@ -3302,13 +3302,13 @@ void EXhalbtc8723b1ant_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
 		return;
 	}
 
-	if (BTC_SCAN_START == type) {
+	if (type == BTC_SCAN_START) {
 		/* BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n")); */
 		if (!bWifiConnected)	/*  non-connected scan */
 			halbtc8723b1ant_ActionWifiNotConnectedScan(pBtCoexist);
 		else	/*  wifi is connected */
 			halbtc8723b1ant_ActionWifiConnectedScan(pBtCoexist);
-	} else if (BTC_SCAN_FINISH == type) {
+	} else if (type == BTC_SCAN_FINISH) {
 		/* BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN FINISH notify\n")); */
 		if (!bWifiConnected)	/*  non-connected scan */
 			halbtc8723b1ant_ActionWifiNotConnected(pBtCoexist);
@@ -3332,7 +3332,7 @@ void EXhalbtc8723b1ant_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	)
 		return;
 
-	if (BTC_ASSOCIATE_START == type) {
+	if (type == BTC_ASSOCIATE_START) {
 		pCoexSta->bWiFiIsHighPriTask = true;
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n"));
 		 pCoexDm->nArpCnt = 0;
@@ -3360,10 +3360,10 @@ void EXhalbtc8723b1ant_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 type)
 		return;
 	}
 
-	if (BTC_ASSOCIATE_START == type) {
+	if (type == BTC_ASSOCIATE_START) {
 		/* BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n")); */
 		halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(pBtCoexist);
-	} else if (BTC_ASSOCIATE_FINISH == type) {
+	} else if (type == BTC_ASSOCIATE_FINISH) {
 		/* BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT FINISH notify\n")); */
 
 		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
@@ -3388,7 +3388,7 @@ void EXhalbtc8723b1ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	)
 		return;
 
-	if (BTC_MEDIA_CONNECT == type) {
+	if (type == BTC_MEDIA_CONNECT) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA connect notify\n"));
 
 		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_UNDER_B_MODE, &bWifiUnderBMode);
@@ -3416,13 +3416,13 @@ void EXhalbtc8723b1ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
 
 	/*  only 2.4G we need to inform bt the chnl mask */
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_WIFI_CENTRAL_CHNL, &wifiCentralChnl);
-	if ((BTC_MEDIA_CONNECT == type) && (wifiCentralChnl <= 14)) {
+	if ((type BTC_MEDIA_CONNECT) && (wifiCentralChnl <= 14)) {
 		/* H2C_Parameter[0] = 0x1; */
 		H2C_Parameter[0] = 0x0;
 		H2C_Parameter[1] = wifiCentralChnl;
 		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
 
-		if (BTC_WIFI_BW_HT40 == wifiBw)
+		if (wifiBw == BTC_WIFI_BW_HT40)
 			H2C_Parameter[2] = 0x30;
 		else
 			H2C_Parameter[2] = 0x20;
@@ -3460,11 +3460,11 @@ void EXhalbtc8723b1ant_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 type)
 		return;
 
 	if (
-		BTC_PACKET_DHCP == type ||
-		BTC_PACKET_EAPOL == type ||
-		BTC_PACKET_ARP == type
+		type == BTC_PACKET_DHCP ||
+		type == BTC_PACKET_EAPOL ||
+		type == BTC_PACKET_ARP
 	) {
-		if (BTC_PACKET_ARP == type) {
+		if (type == BTC_PACKET_ARP) {
 			BTC_PRINT(
 				BTC_MSG_INTERFACE,
 				INTF_NOTIFY,
@@ -3525,9 +3525,9 @@ void EXhalbtc8723b1ant_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	}
 
 	if (
-		BTC_PACKET_DHCP == type ||
-		BTC_PACKET_EAPOL == type ||
-		((BTC_PACKET_ARP == type) && (pCoexSta->bWiFiIsHighPriTask))
+		type == BTC_PACKET_DHCP ||
+		type == BTC_PACKET_EAPOL ||
+		((type == BTC_PACKET_ARP) && (pCoexSta->bWiFiIsHighPriTask))
 	)
 		halbtc8723b1ant_ActionWifiConnectedSpecialPacket(pBtCoexist);
 }
@@ -3567,7 +3567,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 			BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("0x%02x, ", tmpBuf[i]));
 	}
 
-	if (BT_INFO_SRC_8723B_1ANT_WIFI_FW != rspSource) {
+	if (rspSource != BT_INFO_SRC_8723B_1ANT_WIFI_FW) {
 		pCoexSta->btRetryCnt = pCoexSta->btInfoC2h[rspSource][2]&0xf;
 
 		if (pCoexSta->btRetryCnt >= 1)
@@ -3675,7 +3675,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 		pCoexDm->btStatus = BT_8723B_1ANT_BT_STATUS_SCO_BUSY;
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT SCO busy!!!\n"));
 	} else if (btInfo&BT_INFO_8723B_1ANT_B_ACL_BUSY) {
-		if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY != pCoexDm->btStatus)
+		if (pCoexDm->btStatus != BT_8723B_1ANT_BT_STATUS_ACL_BUSY)
 			pCoexDm->bAutoTdmaAdjust = false;
 
 		pCoexDm->btStatus = BT_8723B_1ANT_BT_STATUS_ACL_BUSY;
@@ -3686,9 +3686,9 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 	}
 
 	if (
-		(BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_SCO_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
 	)
 		bBtBusy = true;
 	else
@@ -3717,7 +3717,7 @@ void EXhalbtc8723b1ant_PnpNotify(PBTC_COEXIST pBtCoexist, u8 pnpState)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));
 
-	if (BTC_WIFI_PNP_SLEEP == pnpState) {
+	if (pnpState == BTC_WIFI_PNP_SLEEP) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to SLEEP\n"));
 
 		halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
@@ -3726,7 +3726,7 @@ void EXhalbtc8723b1ant_PnpNotify(PBTC_COEXIST pBtCoexist, u8 pnpState)
 		halbtc8723b1ant_SetAntPath(pBtCoexist, BTC_ANT_PATH_BT, false, true);
 
 		pBtCoexist->bStopCoexDm = true;
-	} else if (BTC_WIFI_PNP_WAKE_UP == pnpState) {
+	} else if (pnpState == BTC_WIFI_PNP_WAKE_UP) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to WAKE UP\n"));
 		pBtCoexist->bStopCoexDm = false;
 		halbtc8723b1ant_InitHwConfig(pBtCoexist, false, false);
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 2779dba92bab..1107cc97494d 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -1518,7 +1518,7 @@ static bool halbtc8723b2ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
 
 		bCommon = true;
 	} else {
-		if (BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus) {
+		if (pCoexDm->btStatus == BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE) {
 			bLowPwrDisable = false;
 			pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable);
 			halbtc8723b2ant_LimitedRx(pBtCoexist, NORMAL_EXEC, false, false, 0x8);
@@ -1535,7 +1535,7 @@ static bool halbtc8723b2ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
 			halbtc8723b2ant_SwMechanism2(pBtCoexist, false, false, false, 0x18);
 
 			bCommon = true;
-		} else if (BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus) {
+		} else if (pCoexDm->btStatus == BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE) {
 			bLowPwrDisable = true;
 			pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable);
 
@@ -2062,7 +2062,7 @@ static void halbtc8723b2ant_ActionSco(PBTC_COEXIST pBtCoexist)
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
 
-	if (BTC_WIFI_BW_LEGACY == wifiBw) /* for SCO quality at 11b/g mode */
+	if (wifiBw == BTC_WIFI_BW_LEGACY) /* for SCO quality at 11b/g mode */
 		halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
 	else  /* for SCO quality & wifi performance balance at 11n mode */
 		halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 8);
@@ -2070,7 +2070,7 @@ static void halbtc8723b2ant_ActionSco(PBTC_COEXIST pBtCoexist)
 	halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, false, 0); /* for voice quality */
 
 	/*  sw mechanism */
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2117,7 +2117,7 @@ static void halbtc8723b2ant_ActionHid(PBTC_COEXIST pBtCoexist)
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
 
-	if (BTC_WIFI_BW_LEGACY == wifiBw) /* for HID at 11b/g mode */
+	if (wifiBw == BTC_WIFI_BW_LEGACY) /* for HID at 11b/g mode */
 		halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
 	else  /* for HID quality & wifi performance balance at 11n mode */
 		halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 9);
@@ -2131,7 +2131,7 @@ static void halbtc8723b2ant_ActionHid(PBTC_COEXIST pBtCoexist)
 		halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 13);
 
 	/*  sw mechanism */
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2181,7 +2181,7 @@ static void halbtc8723b2ant_ActionA2dp(PBTC_COEXIST pBtCoexist)
 
 		/*  sw mechanism */
 		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
-		if (BTC_WIFI_BW_HT40 == wifiBw) {
+		if (wifiBw == BTC_WIFI_BW_HT40) {
 			halbtc8723b2ant_SwMechanism1(pBtCoexist, true, false, false, false);
 			halbtc8723b2ant_SwMechanism2(pBtCoexist, true, false, true, 0x18);
 		} else {
@@ -2213,7 +2213,7 @@ static void halbtc8723b2ant_ActionA2dp(PBTC_COEXIST pBtCoexist)
 
 	/*  sw mechanism */
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2263,7 +2263,7 @@ static void halbtc8723b2ant_ActionA2dpPanHs(PBTC_COEXIST pBtCoexist)
 
 	/*  sw mechanism */
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2319,7 +2319,7 @@ static void halbtc8723b2ant_ActionPanEdr(PBTC_COEXIST pBtCoexist)
 
 	/*  sw mechanism */
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2370,7 +2370,7 @@ static void halbtc8723b2ant_ActionPanHs(PBTC_COEXIST pBtCoexist)
 	halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, false, 1);
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2422,7 +2422,7 @@ static void halbtc8723b2ant_ActionPanEdrA2dp(PBTC_COEXIST pBtCoexist)
 		(btRssiState == BTC_RSSI_STATE_STAY_HIGH)
 	) {
 		halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 12);
-		if (BTC_WIFI_BW_HT40 == wifiBw)
+		if (wifiBw == BTC_WIFI_BW_HT40)
 			halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, false, true, 3);
 		else
 			halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, false, false, 3);
@@ -2432,7 +2432,7 @@ static void halbtc8723b2ant_ActionPanEdrA2dp(PBTC_COEXIST pBtCoexist)
 	}
 
 	/*  sw mechanism */
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2477,7 +2477,7 @@ static void halbtc8723b2ant_ActionPanEdrHid(PBTC_COEXIST pBtCoexist)
 		(btRssiState == BTC_RSSI_STATE_HIGH) ||
 		(btRssiState == BTC_RSSI_STATE_STAY_HIGH)
 	) {
-		if (BTC_WIFI_BW_HT40 == wifiBw) {
+		if (wifiBw == BTC_WIFI_BW_HT40) {
 			halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 3);
 			halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 11);
 			pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x780);
@@ -2495,7 +2495,7 @@ static void halbtc8723b2ant_ActionPanEdrHid(PBTC_COEXIST pBtCoexist)
 	}
 
 	/*  sw mechanism */
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2548,7 +2548,7 @@ static void halbtc8723b2ant_ActionHidA2dpPanEdr(PBTC_COEXIST pBtCoexist)
 		(btRssiState == BTC_RSSI_STATE_HIGH) ||
 		(btRssiState == BTC_RSSI_STATE_STAY_HIGH)
 	) {
-		if (BTC_WIFI_BW_HT40 == wifiBw)
+		if (wifiBw == BTC_WIFI_BW_HT40)
 			halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, true, true, 2);
 		else
 			halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, true, false, 3);
@@ -2556,7 +2556,7 @@ static void halbtc8723b2ant_ActionHidA2dpPanEdr(PBTC_COEXIST pBtCoexist)
 		halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, true, true, 3);
 
 	/*  sw mechanism */
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2598,7 +2598,7 @@ static void halbtc8723b2ant_ActionHidA2dp(PBTC_COEXIST pBtCoexist)
 	halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 6);
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
-	if (BTC_WIFI_BW_LEGACY == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_LEGACY) {
 		if (BTC_RSSI_HIGH(btRssiState))
 			halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 2);
 		else if (BTC_RSSI_MEDIUM(btRssiState))
@@ -2631,7 +2631,7 @@ static void halbtc8723b2ant_ActionHidA2dp(PBTC_COEXIST pBtCoexist)
 		halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, true, true, 2);
 
 	/*  sw mechanism */
-	if (BTC_WIFI_BW_HT40 == wifiBw) {
+	if (wifiBw == BTC_WIFI_BW_HT40) {
 		if (
 			(wifiRssiState == BTC_RSSI_STATE_HIGH) ||
 			(wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
@@ -2673,7 +2673,7 @@ static void halbtc8723b2ant_RunCoexistMechanism(PBTC_COEXIST pBtCoexist)
 	}
 
 	algorithm = halbtc8723b2ant_ActionAlgorithm(pBtCoexist);
-	if (pCoexSta->bC2hBtInquiryPage && (BT_8723B_2ANT_COEX_ALGO_PANHS != algorithm)) {
+	if (pCoexSta->bC2hBtInquiryPage && (algorithm != BT_8723B_2ANT_COEX_ALGO_PANHS)) {
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT is under inquiry/page scan !!\n"));
 		halbtc8723b2ant_ActionBtInquiry(pBtCoexist);
 		return;
@@ -2986,8 +2986,8 @@ void EXhalbtc8723b2ant_DisplayCoexInfo(PBTC_COEXIST pBtCoexist)
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = %s / %s/ %s ", "Wifi status", \
 		(bWifiUnder5G ? "5G" : "2.4G"),
-		((BTC_WIFI_BW_LEGACY == wifiBw) ? "Legacy" : (((BTC_WIFI_BW_HT40 == wifiBw) ? "HT40" : "HT20"))),
-		((!bWifiBusy) ? "idle" : ((BTC_WIFI_TRAFFIC_TX == wifiTrafficDir) ? "uplink" : "downlink"))
+		((BTC_WIFI_BW_LEGACY == wifiBw) ? "Legacy" : (((wifiBw == BTC_WIFI_BW_HT40) ? "HT40" : "HT20"))),
+		((!bWifiBusy) ? "idle" : ((wifiTrafficDir == BTC_WIFI_TRAFFIC_TX) ? "uplink" : "downlink"))
 	);
 	CL_PRINTF(cliBuf);
 
@@ -2995,8 +2995,8 @@ void EXhalbtc8723b2ant_DisplayCoexInfo(PBTC_COEXIST pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = [%s/ %d/ %d] ", "BT [status/ rssi/ retryCnt]", \
-		((pBtCoexist->btInfo.bBtDisabled) ? ("disabled") : ((pCoexSta->bC2hBtInquiryPage) ? ("inquiry/page scan") : ((BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus) ? "non-connected idle" :
-		((BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus) ? "connected-idle" : "busy")))),
+		((pBtCoexist->btInfo.bBtDisabled) ? ("disabled") : ((pCoexSta->bC2hBtInquiryPage) ? ("inquiry/page scan") : ((pCoexDm->btStatus == BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE) ? "non-connected idle" :
+		((pCoexDm->btStatus == BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE) ? "connected-idle" : "busy")))),
 		pCoexSta->btRssi,
 		pCoexSta->btRetryCnt
 	);
@@ -3261,13 +3261,13 @@ void EXhalbtc8723b2ant_DisplayCoexInfo(PBTC_COEXIST pBtCoexist)
 
 void EXhalbtc8723b2ant_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 {
-	if (BTC_IPS_ENTER == type) {
+	if (type == BTC_IPS_ENTER) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS ENTER notify\n"));
 		pCoexSta->bUnderIps = true;
 		halbtc8723b2ant_WifiOffHwCfg(pBtCoexist);
 		halbtc8723b2ant_IgnoreWlanAct(pBtCoexist, FORCE_EXEC, true);
 		halbtc8723b2ant_CoexAllOff(pBtCoexist);
-	} else if (BTC_IPS_LEAVE == type) {
+	} else if (type == BTC_IPS_LEAVE) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS LEAVE notify\n"));
 		pCoexSta->bUnderIps = false;
 		halbtc8723b2ant_InitHwConfig(pBtCoexist, false);
@@ -3278,10 +3278,10 @@ void EXhalbtc8723b2ant_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 
 void EXhalbtc8723b2ant_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 {
-	if (BTC_LPS_ENABLE == type) {
+	if (type == BTC_LPS_ENABLE) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS ENABLE notify\n"));
 		pCoexSta->bUnderLps = true;
-	} else if (BTC_LPS_DISABLE == type) {
+	} else if (type == BTC_LPS_DISABLE) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS DISABLE notify\n"));
 		pCoexSta->bUnderLps = false;
 	}
@@ -3289,18 +3289,18 @@ void EXhalbtc8723b2ant_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 
 void EXhalbtc8723b2ant_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
 {
-	if (BTC_SCAN_START == type) {
+	if (type == BTC_SCAN_START) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n"));
-	} else if (BTC_SCAN_FINISH == type) {
+	} else if (type == BTC_SCAN_FINISH) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN FINISH notify\n"));
 	}
 }
 
 void EXhalbtc8723b2ant_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 type)
 {
-	if (BTC_ASSOCIATE_START == type) {
+	if (type == BTC_ASSOCIATE_START) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n"));
-	} else if (BTC_ASSOCIATE_FINISH == type) {
+	} else if (type == BTC_ASSOCIATE_FINISH) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT FINISH notify\n"));
 	}
 }
@@ -3312,7 +3312,7 @@ void EXhalbtc8723b2ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	u8 wifiCentralChnl;
 	u8 apNum = 0;
 
-	if (BTC_MEDIA_CONNECT == type) {
+	if (type == BTC_MEDIA_CONNECT) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA connect notify\n"));
 	} else {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA disconnect notify\n"));
@@ -3320,11 +3320,11 @@ void EXhalbtc8723b2ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
 
 	/*  only 2.4G we need to inform bt the chnl mask */
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_WIFI_CENTRAL_CHNL, &wifiCentralChnl);
-	if ((BTC_MEDIA_CONNECT == type) && (wifiCentralChnl <= 14)) {
+	if ((type == BTC_MEDIA_CONNECT) && (wifiCentralChnl <= 14)) {
 		H2C_Parameter[0] = 0x1;
 		H2C_Parameter[1] = wifiCentralChnl;
 		pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
-		if (BTC_WIFI_BW_HT40 == wifiBw)
+		if (wifiBw == BTC_WIFI_BW_HT40)
 			H2C_Parameter[2] = 0x30;
 		else {
 			pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_AP_NUM, &apNum);
@@ -3393,7 +3393,7 @@ void EXhalbtc8723b2ant_BtInfoNotify(
 		return;
 	}
 
-	if (BT_INFO_SRC_8723B_2ANT_WIFI_FW != rspSource) {
+	if (rspSource != BT_INFO_SRC_8723B_2ANT_WIFI_FW) {
 		pCoexSta->btRetryCnt = pCoexSta->btInfoC2h[rspSource][2]&0xf; /* [3:0] */
 
 		pCoexSta->btRssi = pCoexSta->btInfoC2h[rspSource][3]*2+10;
@@ -3484,9 +3484,9 @@ void EXhalbtc8723b2ant_BtInfoNotify(
 	}
 
 	if (
-		(BT_8723B_2ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_2ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
-		(BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
+		(pCoexDm->btStatus == BT_8723B_2ANT_BT_STATUS_ACL_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_2ANT_BT_STATUS_SCO_BUSY) ||
+		(pCoexDm->btStatus == BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY)
 	) {
 		bBtBusy = true;
 		bLimitedDig = true;
@@ -3518,9 +3518,9 @@ void EXhalbtc8723b2ant_PnpNotify(PBTC_COEXIST pBtCoexist, u8 pnpState)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));
 
-	if (BTC_WIFI_PNP_SLEEP == pnpState) {
+	if (pnpState == BTC_WIFI_PNP_SLEEP) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to SLEEP\n"));
-	} else if (BTC_WIFI_PNP_WAKE_UP == pnpState) {
+	} else if (pnpState == BTC_WIFI_PNP_WAKE_UP) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to WAKE UP\n"));
 		halbtc8723b2ant_InitHwConfig(pBtCoexist, false);
 		halbtc8723b2ant_InitCoexDm(pBtCoexist);
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 85ea535dd6e9..549af7817b02 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -373,7 +373,7 @@ static void GetDeltaSwingTable_8723B(
 	u16 rate = *(pDM_Odm->pForcedDataRate);
 	u8 channel = pHalData->CurrentChannel;
 
-	if (1 <= channel && channel <= 14) {
+	if (channel >= 1 && channel <= 14) {
 		if (IS_CCK_RATE(rate)) {
 			*TemperatureUP_A   = pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_P;
 			*TemperatureDOWN_A = pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_N;
@@ -1623,7 +1623,7 @@ static void phy_IQCalibrate_8723B(
 		}
 	}
 
-	if (0x00 == PathAOK) {
+	if (PathAOK == 0x00) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A IQK failed!!\n"));
 	}
 
@@ -1661,7 +1661,7 @@ static void phy_IQCalibrate_8723B(
 		}
 
 /* Allen end */
-		if (0x00 == PathBOK) {
+		if (PathBOK == 0x00) {
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B IQK failed!!\n"));
 		}
 	}
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 3705a60a0546..c65672b98168 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -169,7 +169,7 @@ static void halbtcoutsrc_LeaveLowPower(PBTC_COEXIST pBtCoexist)
 	stime = jiffies;
 	do {
 		ready = rtw_register_task_alive(padapter, BTCOEX_ALIVE);
-		if (_SUCCESS == ready)
+		if (ready == _SUCCESS)
 			break;
 
 		utime = jiffies_to_msecs(jiffies - stime);
@@ -761,7 +761,7 @@ static void halbtcoutsrc_WriteLocalReg1Byte(void *pBtcContext, u32 RegAddr, u8 D
 	PBTC_COEXIST		pBtCoexist = (PBTC_COEXIST)pBtcContext;
 	struct adapter *Adapter = pBtCoexist->Adapter;
 
-	if (BTC_INTF_SDIO == pBtCoexist->chipInterface)
+	if (pBtCoexist->chipInterface  == BTC_INTF_SDIO)
 		rtw_write8(Adapter, SDIO_LOCAL_BASE | RegAddr, Data);
 	else
 		rtw_write8(Adapter, RegAddr, Data);
@@ -1011,7 +1011,7 @@ void EXhalbtcoutsrc_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	if (pBtCoexist->bManualControl)
 		return;
 
-	if (IPS_NONE == type)
+	if (type == IPS_NONE)
 		ipsType = BTC_IPS_LEAVE;
 	else
 		ipsType = BTC_IPS_ENTER;
@@ -1039,7 +1039,7 @@ void EXhalbtcoutsrc_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	if (pBtCoexist->bManualControl)
 		return;
 
-	if (PS_MODE_ACTIVE == type)
+	if (type == PS_MODE_ACTIVE)
 		lpsType = BTC_LPS_DISABLE;
 	else
 		lpsType = BTC_LPS_ENABLE;
@@ -1116,7 +1116,7 @@ void EXhalbtcoutsrc_MediaStatusNotify(PBTC_COEXIST pBtCoexist, RT_MEDIA_STATUS m
 	if (pBtCoexist->bManualControl)
 		return;
 
-	if (RT_MEDIA_CONNECT == mediaStatus)
+	if (mediaStatus == RT_MEDIA_CONNECT)
 		mStatus = BTC_MEDIA_CONNECT;
 	else
 		mStatus = BTC_MEDIA_DISCONNECT;
@@ -1142,11 +1142,11 @@ void EXhalbtcoutsrc_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 pktType)
 	if (pBtCoexist->bManualControl)
 		return;
 
-	if (PACKET_DHCP == pktType) {
+	if (pktType == PACKET_DHCP) {
 		packetType = BTC_PACKET_DHCP;
-	} else if (PACKET_EAPOL == pktType) {
+	} else if (pktType == PACKET_EAPOL) {
 		packetType = BTC_PACKET_EAPOL;
-	} else if (PACKET_ARP == pktType) {
+	} else if (pktType == PACKET_ARP) {
 		packetType = BTC_PACKET_ARP;
 	} else {
 		return;
@@ -1235,13 +1235,13 @@ void EXhalbtcoutsrc_SetChipType(u8 chipType)
 
 void EXhalbtcoutsrc_SetAntNum(u8 type, u8 antNum)
 {
-	if (BT_COEX_ANT_TYPE_PG == type) {
+	if (type == BT_COEX_ANT_TYPE_PG) {
 		GLBtCoexist.boardInfo.pgAntNum = antNum;
 		GLBtCoexist.boardInfo.btdmAntNum = antNum;
-	} else if (BT_COEX_ANT_TYPE_ANTDIV == type) {
+	} else if (type == BT_COEX_ANT_TYPE_ANTDIV) {
 		GLBtCoexist.boardInfo.btdmAntNum = antNum;
 		/* GLBtCoexist.boardInfo.btdmAntPos = BTC_ANTENNA_AT_MAIN_PORT; */
-	} else if (BT_COEX_ANT_TYPE_DETECTED == type) {
+	} else if (type == BT_COEX_ANT_TYPE_DETECTED) {
 		GLBtCoexist.boardInfo.btdmAntNum = antNum;
 		/* GLBtCoexist.boardInfo.btdmAntPos = BTC_ANTENNA_AT_MAIN_PORT; */
 	}
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 02676da5c166..a5ce5fdd2480 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -121,7 +121,7 @@ u8 hal_com_config_channel_plan(
 	pHalData->bDisableSWChannelPlan = false;
 	chnlPlan = def_channel_plan;
 
-	if (0xFF == hw_channel_plan)
+	if (hw_channel_plan == 0xFF)
 		AutoLoadFail = true;
 
 	if (!AutoLoadFail) {
diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 10250642d30a..b4389771391a 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -1061,7 +1061,7 @@ u8 PHY_GetTxPowerIndexBase(
 	if (*bIn24G) { /* 3 ============================== 2.4 G ============================== */
 		if (IS_CCK_RATE(Rate))
 			txPower = pHalData->Index24G_CCK_Base[RFPath][chnlIdx];
-		else if (MGN_6M <= Rate)
+		else if (Rate >= MGN_6M)
 			txPower = pHalData->Index24G_BW40_Base[RFPath][chnlIdx];
 		else
 			DBG_871X("PHY_GetTxPowerIndexBase: INVALID Rate.\n");
@@ -1070,31 +1070,31 @@ u8 PHY_GetTxPowerIndexBase(
 		/*		((RFPath == 0)?'A':'B'), Rate, chnlIdx, txPower); */
 
 		/*  OFDM-1T */
-		if ((MGN_6M <= Rate && Rate <= MGN_54M) && !IS_CCK_RATE(Rate)) {
+		if ((Rate >= MGN_6M && Rate <= MGN_54M) && !IS_CCK_RATE(Rate)) {
 			txPower += pHalData->OFDM_24G_Diff[RFPath][TX_1S];
 			/* DBG_871X("+PowerDiff 2.4G (RF-%c): (OFDM-1T) = (%d)\n", ((RFPath == 0)?'A':'B'), pHalData->OFDM_24G_Diff[RFPath][TX_1S]); */
 		}
 		if (BandWidth == CHANNEL_WIDTH_20) { /*  BW20-1S, BW20-2S */
-			if ((MGN_MCS0 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT1SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS0 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT1SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_24G_Diff[RFPath][TX_1S];
-			if ((MGN_MCS8 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT2SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS8 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT2SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_24G_Diff[RFPath][TX_2S];
-			if ((MGN_MCS16 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT3SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS16 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT3SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_24G_Diff[RFPath][TX_3S];
-			if ((MGN_MCS24 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT4SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS24 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT4SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_24G_Diff[RFPath][TX_4S];
 
 			/* DBG_871X("+PowerDiff 2.4G (RF-%c): (BW20-1S, BW20-2S, BW20-3S, BW20-4S) = (%d, %d, %d, %d)\n", ((RFPath == 0)?'A':(RFPath == 1)?'B':(RFPath ==2)?'C':'D'), */
 			/*	pHalData->BW20_24G_Diff[RFPath][TX_1S], pHalData->BW20_24G_Diff[RFPath][TX_2S], */
 			/*	pHalData->BW20_24G_Diff[RFPath][TX_3S], pHalData->BW20_24G_Diff[RFPath][TX_4S]); */
 		} else if (BandWidth == CHANNEL_WIDTH_40) { /*  BW40-1S, BW40-2S */
-			if ((MGN_MCS0 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT1SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS0 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT1SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_1S];
-			if ((MGN_MCS8 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT2SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS8 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT2SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_2S];
-			if ((MGN_MCS16 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT3SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS16 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT3SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_3S];
-			if ((MGN_MCS24 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT4SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS24 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT4SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_4S];
 
 			/* DBG_871X("+PowerDiff 2.4G (RF-%c): (BW40-1S, BW40-2S, BW40-3S, BW40-4S) = (%d, %d, %d, %d)\n", ((RFPath == 0)?'A':(RFPath == 1)?'B':(RFPath ==2)?'C':'D'), */
@@ -1103,13 +1103,13 @@ u8 PHY_GetTxPowerIndexBase(
 		}
 		/*  Willis suggest adopt BW 40M power index while in BW 80 mode */
 		else if (BandWidth == CHANNEL_WIDTH_80) {
-			if ((MGN_MCS0 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT1SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS0 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT1SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_1S];
-			if ((MGN_MCS8 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT2SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS8 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT2SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_2S];
-			if ((MGN_MCS16 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT3SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS16 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT3SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_3S];
-			if ((MGN_MCS24 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT4SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS24 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT4SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_24G_Diff[RFPath][TX_4S];
 
 			/* DBG_871X("+PowerDiff 2.4G (RF-%c): (BW40-1S, BW40-2S, BW40-3S, BW40-4T) = (%d, %d, %d, %d) P.S. Current is in BW 80MHz\n", ((RFPath == 0)?'A':(RFPath == 1)?'B':(RFPath ==2)?'C':'D'), */
@@ -1117,7 +1117,7 @@ u8 PHY_GetTxPowerIndexBase(
 			/*	pHalData->BW40_24G_Diff[RFPath][TX_3S], pHalData->BW40_24G_Diff[RFPath][TX_4S]); */
 		}
 	} else {/* 3 ============================== 5 G ============================== */
-		if (MGN_6M <= Rate)
+		if (Rate >= MGN_6M)
 			txPower = pHalData->Index5G_BW40_Base[RFPath][chnlIdx];
 		else
 			DBG_871X("===> mpt_ProQueryCalTxPower_Jaguar: INVALID Rate.\n");
@@ -1126,33 +1126,33 @@ u8 PHY_GetTxPowerIndexBase(
 		/*	((RFPath == 0)?'A':'B'), Rate, chnlIdx, txPower); */
 
 		/*  OFDM-1T */
-		if ((MGN_6M <= Rate && Rate <= MGN_54M) && !IS_CCK_RATE(Rate)) {
+		if ((Rate >= MGN_6M && Rate <= MGN_54M) && !IS_CCK_RATE(Rate)) {
 			txPower += pHalData->OFDM_5G_Diff[RFPath][TX_1S];
 			/* DBG_871X("+PowerDiff 5G (RF-%c): (OFDM-1T) = (%d)\n", ((RFPath == 0)?'A':'B'), pHalData->OFDM_5G_Diff[RFPath][TX_1S]); */
 		}
 
 		/*  BW20-1S, BW20-2S */
 		if (BandWidth == CHANNEL_WIDTH_20) {
-			if ((MGN_MCS0 <= Rate && Rate <= MGN_MCS31)  || (MGN_VHT1SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS0 && Rate <= MGN_MCS31)  || (Rate >= MGN_VHT1SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_5G_Diff[RFPath][TX_1S];
-			if ((MGN_MCS8 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT2SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS8 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT2SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_5G_Diff[RFPath][TX_2S];
-			if ((MGN_MCS16 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT3SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS16 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT3SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_5G_Diff[RFPath][TX_3S];
-			if ((MGN_MCS24 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT4SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS24 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT4SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW20_5G_Diff[RFPath][TX_4S];
 
 			/* DBG_871X("+PowerDiff 5G (RF-%c): (BW20-1S, BW20-2S, BW20-3S, BW20-4S) = (%d, %d, %d, %d)\n", ((RFPath == 0)?'A':(RFPath == 1)?'B':(RFPath ==2)?'C':'D'), */
 			/*	pHalData->BW20_5G_Diff[RFPath][TX_1S], pHalData->BW20_5G_Diff[RFPath][TX_2S], */
 			/*	pHalData->BW20_5G_Diff[RFPath][TX_3S], pHalData->BW20_5G_Diff[RFPath][TX_4S]); */
 		} else if (BandWidth == CHANNEL_WIDTH_40) { /*  BW40-1S, BW40-2S */
-			if ((MGN_MCS0 <= Rate && Rate <= MGN_MCS31)  || (MGN_VHT1SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS0 && Rate <= MGN_MCS31)  || (Rate >= MGN_VHT1SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_5G_Diff[RFPath][TX_1S];
-			if ((MGN_MCS8 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT2SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS8 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT2SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_5G_Diff[RFPath][TX_2S];
-			if ((MGN_MCS16 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT3SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS16 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT3SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_5G_Diff[RFPath][TX_3S];
-			if ((MGN_MCS24 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT4SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS24 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT4SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW40_5G_Diff[RFPath][TX_4S];
 
 			/* DBG_871X("+PowerDiff 5G(RF-%c): (BW40-1S, BW40-2S) = (%d, %d, %d, %d)\n", ((RFPath == 0)?'A':(RFPath == 1)?'B':(RFPath ==2)?'C':'D'), */
@@ -1167,13 +1167,13 @@ u8 PHY_GetTxPowerIndexBase(
 
 			txPower = pHalData->Index5G_BW80_Base[RFPath][chnlIdx];
 
-			if ((MGN_MCS0 <= Rate && Rate <= MGN_MCS31)  || (MGN_VHT1SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS0 && Rate <= MGN_MCS31)  || (Rate >= MGN_VHT1SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += + pHalData->BW80_5G_Diff[RFPath][TX_1S];
-			if ((MGN_MCS8 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT2SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate MGN_>= MCS8 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT2SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW80_5G_Diff[RFPath][TX_2S];
-			if ((MGN_MCS16 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT3SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS16 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT3SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW80_5G_Diff[RFPath][TX_3S];
-			if ((MGN_MCS23 <= Rate && Rate <= MGN_MCS31) || (MGN_VHT4SS_MCS0 <= Rate && Rate <= MGN_VHT4SS_MCS9))
+			if ((Rate >= MGN_MCS23 && Rate <= MGN_MCS31) || (Rate >= MGN_VHT4SS_MCS0 && Rate <= MGN_VHT4SS_MCS9))
 				txPower += pHalData->BW80_5G_Diff[RFPath][TX_4S];
 
 			/* DBG_871X("+PowerDiff 5G(RF-%c): (BW80-1S, BW80-2S, BW80-3S, BW80-4S) = (%d, %d, %d, %d)\n", ((RFPath == 0)?'A':(RFPath == 1)?'B':(RFPath ==2)?'C':'D'), */
diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index f2a9e95a1563..d6dd51aa446c 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -1165,9 +1165,9 @@ bool ODM_RAStateCheck(
 	}
 
 	/*  Decide RATRState by RSSI. */
-	if (RSSI > HighRSSIThreshForRA)
+	if (HighRSSIThreshForRA < RSSI)
 		RATRState = DM_RATR_STA_HIGH;
-	else if (RSSI > LowRSSIThreshForRA)
+	else if (LowRSSIThreshForRA < RSSI)
 		RATRState = DM_RATR_STA_MIDDLE;
 	else
 		RATRState = DM_RATR_STA_LOW;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index fd2b74003faf..1a1404061068 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -28,7 +28,7 @@ static u8 _is_fw_read_cmd_down(struct adapter *padapter, u8 msgbox_num)
 
 	do {
 		valid = rtw_read8(padapter, REG_HMETFR) & BIT(msgbox_num);
-		if (0 == valid) {
+		if (valid == 0) {
 			read_down = true;
 		}
 #ifdef CONFIG_WOWLAN
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index de8caa6cd418..fcf3c5b66140 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -494,11 +494,11 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
 			break;
 	}
 	_FWDownloadEnable(padapter, false);
-	if (_SUCCESS != rtStatus)
+	if (rtStatus != _SUCCESS)
 		goto fwdl_stat;
 
 	rtStatus = _FWFreeToGo(padapter, 10, 200);
-	if (_SUCCESS != rtStatus)
+	if (rtStatus != _SUCCESS)
 		goto fwdl_stat;
 
 fwdl_stat:
@@ -2358,15 +2358,15 @@ static bool Hal_GetChnlGroup8723B(u8 Channel, u8 *pGroup)
 	if (Channel <= 14) {
 		bIn24G = true;
 
-		if (1  <= Channel && Channel <= 2)
+		if (Channel >= 1 && Channel <= 2)
 			*pGroup = 0;
-		else if (3  <= Channel && Channel <= 5)
+		else if (Channel >= 3 && Channel <= 5)
 			*pGroup = 1;
-		else if (6  <= Channel && Channel <= 8)
+		else if (Channel >= 6 && Channel <= 8)
 			*pGroup = 2;
-		else if (9  <= Channel && Channel <= 11)
+		else if (Channel >= 9 && Channel <= 11)
 			*pGroup = 3;
-		else if (12 <= Channel && Channel <= 14)
+		else if (Channel >= 12 && Channel <= 14)
 			*pGroup = 4;
 		else {
 			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>Hal_GetChnlGroup8723B in 2.4 G, but Channel %d in Group not found\n", Channel));
@@ -2374,33 +2374,33 @@ static bool Hal_GetChnlGroup8723B(u8 Channel, u8 *pGroup)
 	} else {
 		bIn24G = false;
 
-		if (36   <= Channel && Channel <=  42)
+		if (Channel >= 36 && Channel <=  42)
 			*pGroup = 0;
-		else if (44   <= Channel && Channel <=  48)
+		else if (Channel >= 44 && Channel <=  48)
 			*pGroup = 1;
-		else if (50   <= Channel && Channel <=  58)
+		else if (Channel >= 50 && Channel <=  58)
 			*pGroup = 2;
-		else if (60   <= Channel && Channel <=  64)
+		else if (Channel >=  60 && Channel <=  64)
 			*pGroup = 3;
-		else if (100  <= Channel && Channel <= 106)
+		else if (Channel >= 100 && Channel <= 106)
 			*pGroup = 4;
-		else if (108  <= Channel && Channel <= 114)
+		else if (Channel >= 108 && Channel <= 114)
 			*pGroup = 5;
-		else if (116  <= Channel && Channel <= 122)
+		else if (Channel >= 116 && Channel <= 122)
 			*pGroup = 6;
-		else if (124  <= Channel && Channel <= 130)
+		else if (Channel >= 124 && Channel <= 130)
 			*pGroup = 7;
-		else if (132  <= Channel && Channel <= 138)
+		else if (Channel >= 132 && Channel <= 138)
 			*pGroup = 8;
-		else if (140  <= Channel && Channel <= 144)
+		else if (Channel >= 140 && Channel <= 144)
 			*pGroup = 9;
-		else if (149  <= Channel && Channel <= 155)
+		else if (Channel >= 149 && Channel <= 155)
 			*pGroup = 10;
-		else if (157  <= Channel && Channel <= 161)
+		else if (Channel >= 157 && Channel <= 161)
 			*pGroup = 11;
-		else if (165  <= Channel && Channel <= 171)
+		else if (Channel >= 165 && Channel <= 171)
 			*pGroup = 12;
-		else if (173  <= Channel && Channel <= 177)
+		else if (Channel >= 173 && Channel <= 177)
 			*pGroup = 13;
 		else {
 			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>Hal_GetChnlGroup8723B in 5G, but Channel %d in Group not found\n", Channel));
@@ -2468,7 +2468,7 @@ static void Hal_ReadPowerValueFromPROM_8723B(
 
 	memset(pwrInfo24G, 0, sizeof(struct TxPowerInfo24G));
 
-	if (0xFF == PROMContent[eeAddr+1])
+	if (PROMContent[eeAddr+1] == 0xFF)
 		AutoLoadFail = true;
 
 	if (AutoLoadFail) {
@@ -3443,7 +3443,7 @@ static void hw_var_set_bcn_func(struct adapter *padapter, u8 variable, u8 *val)
 		val8 &= ~(EN_BCN_FUNCTION | EN_TXBCN_RPT);
 
 		/*  Always enable port0 beacon function for PSTDMA */
-		if (REG_BCN_CTRL == bcn_ctrl_reg)
+		if (bcn_ctrl_reg == REG_BCN_CTRL)
 			val8 |= EN_BCN_FUNCTION;
 
 		rtw_write8(padapter, bcn_ctrl_reg, val8);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 44799c4a9f35..28a4b5baed2e 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -492,7 +492,7 @@ int rtl8723bs_xmit_thread(void *context)
 		if (signal_pending(current)) {
 			flush_signals(current);
 		}
-	} while (_SUCCESS == ret);
+	} while (ret == _SUCCESS);
 
 	complete(&pxmitpriv->SdioXmitTerminate);
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index e42d8c18e1ae..57f248f432f2 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -778,7 +778,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 /* 	rtw_hal_disable_interrupt(padapter); */
 
 	ret = _InitPowerOn_8723BS(padapter);
-	if (_FAIL == ret) {
+	if (ret == _FAIL) {
 		RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("Failed to init Power On!\n"));
 		return _FAIL;
 	}
@@ -861,7 +861,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 	/*  init LLT after tx buffer boundary is defined */
 	ret = rtl8723b_InitLLTTable(padapter);
-	if (_SUCCESS != ret) {
+	if (ret != _SUCCESS) {
 		DBG_8192C("%s: Failed to init LLT Table!\n", __func__);
 		return _FAIL;
 	}
-- 
2.25.1


