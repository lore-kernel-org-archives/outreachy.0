X-GM-THRID: 6948029216404275200
X-Received: by 2002:ac2:4f84:: with SMTP id z4mr21909511lfs.608.1617714114699;
        Tue, 06 Apr 2021 06:01:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls296287lfo.0.gmail; Tue, 06 Apr
 2021 06:01:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9RptziKo/zBif4eIX27UGLjnJGTvsLNugsKHjZqheMHtLS0piS8y850uujYyOxcDD+pj0
X-Received: by 2002:a19:500f:: with SMTP id e15mr259211lfb.543.1617714112308;
        Tue, 06 Apr 2021 06:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617714112; cv=none;
        d=google.com; s=arc-20160816;
        b=rZ8SNSAF9/BB56Zh4Q2mBZTOftWt9Aah8zPgdQySmVqXNrNvmbNmuZNtDAcNywJ9sm
         L28ZTfUiGUSGAc4BU4wJFBJGd9OoNVNFemfhS5Q7tJlIkK1hS+2H4KA3SpVRrJp/5hUq
         A8oqBhxDAxmAw0pvrRyXZJ0LZJUPTCI3d1H7wnd0nlfw8s+tOpUpNRneKXpzALlxQ2qN
         0XDeRLaXfOh4b2BuRaEPIzRev5tARGUAWzOI9WUSkOUaVaEexoaBNbdg2RkgVkbhPJXn
         vYwv7c0YkBTkAAhLLL3tXLFKxMefY3XYB2aXsMSbsse1GgQkK08tuz8CqrEhHBUmCRIs
         fGGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=orYHTHwzLrIX+x1O/kX5PBg1okGiwDlt2vRn5RjvWf4=;
        b=izViPY+cJyFSWXff38YCDtT0Sf3tqHPIFbq8KP+1u1Gn5d0UTSBGnpAlZbtneSoFaM
         IIEaUA+Bl0Fe8O/dYgOHo92wlkTqjRf03ax1L/pO95oZhc/tXmCS2UvqeEgN3K092cgi
         8AWaxFnJxdbpnCZbM8XOpXZaiUdmQAVNSBdwt62wkBDubbFGyYxr6uX3pMPp94Q6OZ+f
         oKfIbYvRDxccSSSyukv7zre3ficBDPrDp7GrhiqThLWpmjPj5OPD1wcP7fRutbl7sFJ3
         5gMvYi+dXyzW0QMW4FyMyGib0rctxSGCbLyWW+BiPH3n4yQ6TUk9ASOQfqo8p+4vli2S
         aMmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nv18+buC;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id i30si1729377lfj.6.2021.04.06.06.01.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 06:01:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nv18+buC;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id u21so21764374ejo.13
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 06:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=orYHTHwzLrIX+x1O/kX5PBg1okGiwDlt2vRn5RjvWf4=;
        b=nv18+buCEKjTnJhuJTg9Z2paQtXW67+ixWFzYcigRjL3uDaLEs2R1NF7MRsES/kKQx
         OM4Ml9qP/67Z02/sOLxpKdpO/M3/I1tbki2qC/RxXmMxAxkKHP2EcMbygLLIz6zVa+pP
         AHk7vl9eZBAjQmtwH2AzaRJcQGsWhDlyrm+0DvJyVoVDV3RK/SbWwyNNeOdX/6dRhWHy
         MaiRWi/ChXySnx6OL15KRfaoufGh3ipp4xtmb9giYX/Soe3KX5zPup+SlFtSm0pZe3SS
         09Qa6GiYgirYkr6QTVUsci6hFmRoKC9W93nHULPx8IR9URdOUHCuzwceSNq9zQJ193bh
         XTYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=orYHTHwzLrIX+x1O/kX5PBg1okGiwDlt2vRn5RjvWf4=;
        b=Avm4+q2uqWxRGbiB9puZ4l3EXXY2+RE4TFDNzQb/8Gu+NDThN/utB5WAT8KetQVxpd
         Q/l4pYHgGLES2WPiiJZouuA8Ja4ZgFA5Vu1YllRMtz5BdcWGDark2LDV4KeKz+N3MV3J
         6oQigkiHwWuMn0vEx2W3GygH/UjeCK/LkYOICmj8JH3nN6Vg07jqTSs3Rk1jmtvd5rKs
         JlM1mWNaxfGHk2NLo/u7N+4uu1YW96ws0H2NpfUUmY5q5h5NoRRCpnoeAMvviHgt9eo/
         7JRNDh7KqikAgwSUxOzsaV6XFBPVtMn3ehz5HKjq7jNyXL8t1/DX/0a/HpXrCC8cQnp/
         PeKg==
X-Gm-Message-State: AOAM533ubySkhUG1KXniOj4gBWzEga5CRduirgQyvwOXLM47JPaKa1d2
	f26AJ2XgckkjIi88flptsKk=
X-Received: by 2002:a17:906:2594:: with SMTP id m20mr10092729ejb.124.1617714111607;
        Tue, 06 Apr 2021 06:01:51 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id h3sm872398edv.80.2021.04.06.06.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 06:01:51 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Add spaces around operators
Date: Tue,  6 Apr 2021 15:01:38 +0200
Message-Id: <20210406130138.30744-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Added spaces around operators in file HalBtc8723b1Ant.c. Issue detected
by checkpatch.pl. Spaces are preferred to improve readibility.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 98 +++++++++----------
 1 file changed, 49 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index 3e794093092b..b2b872016e45 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -38,7 +38,7 @@ static u8 halbtc8723b1ant_BtRssiState(
 			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_LOW) ||
 			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_LOW)
 		) {
-			if (btRssi >= (rssiThresh+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
+			if (btRssi >= (rssiThresh + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
 
 				btRssiState = BTC_RSSI_STATE_HIGH;
 				BTC_PRINT(
@@ -85,7 +85,7 @@ static u8 halbtc8723b1ant_BtRssiState(
 			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_LOW) ||
 			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_LOW)
 		) {
-			if (btRssi >= (rssiThresh+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
+			if (btRssi >= (rssiThresh + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
 				btRssiState = BTC_RSSI_STATE_MEDIUM;
 				BTC_PRINT(
 					BTC_MSG_ALGORITHM,
@@ -104,7 +104,7 @@ static u8 halbtc8723b1ant_BtRssiState(
 			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_MEDIUM) ||
 			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_MEDIUM)
 		) {
-			if (btRssi >= (rssiThresh1+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
+			if (btRssi >= (rssiThresh1 + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
 				btRssiState = BTC_RSSI_STATE_HIGH;
 				BTC_PRINT(
 					BTC_MSG_ALGORITHM,
@@ -353,11 +353,11 @@ static void halbtc8723b1ant_MonitorBtCtr(struct btc_coexist *pBtCoexist)
 
 	u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regHPTxRx);
 	regHPTx = u4Tmp & bMaskLWord;
-	regHPRx = (u4Tmp & bMaskHWord)>>16;
+	regHPRx = (u4Tmp & bMaskHWord) >> 16;
 
 	u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regLPTxRx);
 	regLPTx = u4Tmp & bMaskLWord;
-	regLPRx = (u4Tmp & bMaskHWord)>>16;
+	regLPRx = (u4Tmp & bMaskHWord) >> 16;
 
 	pCoexSta->highPriorityTx = regHPTx;
 	pCoexSta->highPriorityRx = regHPRx;
@@ -1317,7 +1317,7 @@ static void halbtc8723b1ant_SetFwPstdma(
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE, &bApEnable);
 
 	if (bApEnable) {
-		if (byte1&BIT4 && !(byte1&BIT5)) {
+		if (byte1 & BIT4 && !(byte1 & BIT5)) {
 			BTC_PRINT(
 				BTC_MSG_INTERFACE,
 				INTF_NOTIFY,
@@ -1349,9 +1349,9 @@ static void halbtc8723b1ant_SetFwPstdma(
 		(
 			"[BTCoex], PS-TDMA H2C cmd = 0x%x%08x\n",
 			H2C_Parameter[0],
-			H2C_Parameter[1]<<24|
-			H2C_Parameter[2]<<16|
-			H2C_Parameter[3]<<8|
+			H2C_Parameter[1] << 24 |
+			H2C_Parameter[2] << 16 |
+			H2C_Parameter[3]<< 8 |
 			H2C_Parameter[4]
 		)
 	);
@@ -1435,7 +1435,7 @@ static void halbtc8723b1ant_PsTdma(
 			halbtc8723b1ant_SetFwPstdma(
 				pBtCoexist,
 				psTdmaByte0Val,
-				0x3a+nWiFiDurationAdjust,
+				0x3a + nWiFiDurationAdjust,
 				0x03,
 				psTdmaByte3Val,
 				psTdmaByte4Val
@@ -1445,7 +1445,7 @@ static void halbtc8723b1ant_PsTdma(
 			halbtc8723b1ant_SetFwPstdma(
 				pBtCoexist,
 				psTdmaByte0Val,
-				0x2d+nWiFiDurationAdjust,
+				0x2d + nWiFiDurationAdjust,
 				0x03,
 				psTdmaByte3Val,
 				psTdmaByte4Val
@@ -1855,7 +1855,7 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 				if (m >= 20) /* m 最大值 = 20 ' 最大120秒 recheck是否調整 WiFi duration. */
 					m = 20;
 
-				n = 3*m;
+				n = 3 * m;
 				up = 0;
 				dn = 0;
 				WaitCount = 0;
@@ -1871,7 +1871,7 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 			if (m >= 20) /* m 最大值 = 20 ' 最大120秒 recheck是否調整 WiFi duration. */
 				m = 20;
 
-			n = 3*m;
+			n = 3 * m;
 			up = 0;
 			dn = 0;
 			WaitCount = 0;
@@ -2495,9 +2495,9 @@ static void halbtc8723b1ant_RunCoexistMechanism(struct btc_coexist *pBtCoexist)
 		BTC_GET_U4_WIFI_LINK_STATUS,
 		&wifiLinkStatus
 	);
-	numOfWifiLink = wifiLinkStatus>>16;
+	numOfWifiLink = wifiLinkStatus >> 16;
 
-	if ((numOfWifiLink >= 2) || (wifiLinkStatus&WIFI_P2P_GO_CONNECTED)) {
+	if ((numOfWifiLink >= 2) || (wifiLinkStatus & WIFI_P2P_GO_CONNECTED)) {
 		BTC_PRINT(
 			BTC_MSG_INTERFACE,
 			INTF_NOTIFY,
@@ -2656,7 +2656,7 @@ void EXhalbtc8723b1ant_PowerOnSetting(struct btc_coexist *pBtCoexist)
 
 	/*  enable BB, REG_SYS_FUNC_EN such that we can write 0x948 correctly. */
 	u2Tmp = pBtCoexist->fBtcRead2Byte(pBtCoexist, 0x2);
-	pBtCoexist->fBtcWrite2Byte(pBtCoexist, 0x2, u2Tmp|BIT0|BIT1);
+	pBtCoexist->fBtcWrite2Byte(pBtCoexist, 0x2, u2Tmp | BIT0 | BIT1);
 
 	/*  set GRAN_BT = 1 */
 	pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x765, 0x18);
@@ -2837,7 +2837,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = %d/ %d", "Wifi rssi/ HS rssi", \
-		wifiRssi-100, btHsRssi-100
+		wifiRssi - 100, btHsRssi - 100
 	);
 	CL_PRINTF(cliBuf);
 
@@ -2881,11 +2881,11 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = %d/ %d/ %d/ %d/ %d", "sta/vwifi/hs/p2pGo/p2pGc", \
-		((wifiLinkStatus&WIFI_STA_CONNECTED) ? 1 : 0),
-		((wifiLinkStatus&WIFI_AP_CONNECTED) ? 1 : 0),
-		((wifiLinkStatus&WIFI_HS_CONNECTED) ? 1 : 0),
-		((wifiLinkStatus&WIFI_P2P_GO_CONNECTED) ? 1 : 0),
-		((wifiLinkStatus&WIFI_P2P_GC_CONNECTED) ? 1 : 0)
+		((wifiLinkStatus & WIFI_STA_CONNECTED) ? 1 : 0),
+		((wifiLinkStatus & WIFI_AP_CONNECTED) ? 1 : 0),
+		((wifiLinkStatus & WIFI_HS_CONNECTED) ? 1 : 0),
+		((wifiLinkStatus & WIFI_P2P_GO_CONNECTED) ? 1 : 0),
+		((wifiLinkStatus & WIFI_P2P_GC_CONNECTED) ? 1 : 0)
 	);
 	CL_PRINTF(cliBuf);
 
@@ -2932,7 +2932,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = %s", "BT Info A2DP rate", \
-		(btInfoExt&BIT0) ? "Basic rate" : "EDR rate"
+		(btInfoExt & BIT0) ? "Basic rate" : "EDR rate"
 	);
 	CL_PRINTF(cliBuf);
 
@@ -3044,7 +3044,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 	CL_SPRINTF(
 		cliBuf, BT_TMP_BUF_SIZE,
 		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "0x778/0x6cc/0x880[29:25]", \
-		u1Tmp[0], u4Tmp[0],  (u4Tmp[1]&0x3e000000) >> 25
+		u1Tmp[0], u4Tmp[0],  (u4Tmp[1] & 0x3e000000) >> 25
 	);
 	CL_PRINTF(cliBuf);
 
@@ -3056,7 +3056,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0x948/ 0x67[5] / 0x764 / 0x76e", \
-		u4Tmp[0], ((u1Tmp[0]&0x20) >> 5), (u4Tmp[1] & 0xffff), u1Tmp[1]
+		u4Tmp[0], ((u1Tmp[0] & 0x20) >> 5), (u4Tmp[1] & 0xffff), u1Tmp[1]
 	);
 	CL_PRINTF(cliBuf);
 
@@ -3067,7 +3067,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "0x92c[1:0]/ 0x930[7:0]/0x944[1:0]", \
-		u4Tmp[0]&0x3, u4Tmp[1]&0xff, u4Tmp[2]&0x3
+		u4Tmp[0] & 0x3, u4Tmp[1] & 0xff, u4Tmp[2] & 0x3
 	);
 	CL_PRINTF(cliBuf);
 
@@ -3079,10 +3079,10 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0x38[11]/0x40/0x4c[24:23]/0x64[0]", \
-		((u1Tmp[0] & 0x8)>>3),
+		((u1Tmp[0] & 0x8) >> 3),
 		u1Tmp[1],
-		((u4Tmp[0]&0x01800000)>>23),
-		u1Tmp[2]&0x1
+		((u4Tmp[0] & 0x01800000) >> 23),
+		u1Tmp[2] & 0x1
 	);
 	CL_PRINTF(cliBuf);
 
@@ -3102,7 +3102,7 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = 0x%x/ 0x%x", "0xc50(dig)/0x49c(null-drop)", \
-		u4Tmp[0]&0xff, u1Tmp[0]
+		u4Tmp[0] & 0xff, u1Tmp[0]
 	);
 	CL_PRINTF(cliBuf);
 
@@ -3115,17 +3115,17 @@ void EXhalbtc8723b1ant_DisplayCoexInfo(struct btc_coexist *pBtCoexist)
 	u1Tmp[1] = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0xa5c);
 
 	faOfdm =
-		((u4Tmp[0]&0xffff0000) >> 16) +
-		((u4Tmp[1]&0xffff0000) >> 16) +
+		((u4Tmp[0] & 0xffff0000) >> 16) +
+		((u4Tmp[1] & 0xffff0000) >> 16) +
 		(u4Tmp[1] & 0xffff) +  (u4Tmp[2] & 0xffff) + \
-		((u4Tmp[3]&0xffff0000) >> 16) + (u4Tmp[3] & 0xffff);
+		((u4Tmp[3] & 0xffff0000) >> 16) + (u4Tmp[3] & 0xffff);
 	faCck = (u1Tmp[0] << 8) + u1Tmp[1];
 
 	CL_SPRINTF(
 		cliBuf,
 		BT_TMP_BUF_SIZE,
 		"\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "OFDM-CCA/OFDM-FA/CCK-FA", \
-		u4Tmp[0]&0xffff, faOfdm, faCck
+		u4Tmp[0] & 0xffff, faOfdm, faCck
 	);
 	CL_PRINTF(cliBuf);
 
@@ -3281,7 +3281,7 @@ void EXhalbtc8723b1ant_ScanNotify(struct btc_coexist *pBtCoexist, u8 type)
 	halbtc8723b1ant_QueryBtInfo(pBtCoexist);
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus);
-	numOfWifiLink = wifiLinkStatus>>16;
+	numOfWifiLink = wifiLinkStatus >> 16;
 
 	if (numOfWifiLink >= 2) {
 		halbtc8723b1ant_LimitedTx(pBtCoexist, NORMAL_EXEC, 0, 0, 0, 0);
@@ -3341,7 +3341,7 @@ void EXhalbtc8723b1ant_ConnectNotify(struct btc_coexist *pBtCoexist, u8 type)
 	}
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus);
-	numOfWifiLink = wifiLinkStatus>>16;
+	numOfWifiLink = wifiLinkStatus >> 16;
 	if (numOfWifiLink >= 2) {
 		halbtc8723b1ant_LimitedTx(pBtCoexist, NORMAL_EXEC, 0, 0, 0, 0);
 		halbtc8723b1ant_LimitedRx(pBtCoexist, NORMAL_EXEC, false, bBtCtrlAggBufSize, aggBufSize);
@@ -3435,7 +3435,7 @@ void EXhalbtc8723b1ant_MediaStatusNotify(struct btc_coexist *pBtCoexist, u8 type
 		ALGO_TRACE_FW_EXEC,
 		(
 			"[BTCoex], FW write 0x66 = 0x%x\n",
-			H2C_Parameter[0]<<16 | H2C_Parameter[1]<<8 | H2C_Parameter[2]
+			H2C_Parameter[0] << 16 | H2C_Parameter[1] << 8 | H2C_Parameter[2]
 		)
 	);
 
@@ -3502,7 +3502,7 @@ void EXhalbtc8723b1ant_SpecialPacketNotify(struct btc_coexist *pBtCoexist, u8 ty
 	pBtCoexist->fBtcGet(
 		pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus
 	);
-	numOfWifiLink = wifiLinkStatus>>16;
+	numOfWifiLink = wifiLinkStatus >> 16;
 
 	if (numOfWifiLink >= 2) {
 		halbtc8723b1ant_LimitedTx(pBtCoexist, NORMAL_EXEC, 0, 0, 0, 0);
@@ -3541,7 +3541,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 
 	pCoexSta->bC2hBtInfoReqSent = false;
 
-	rspSource = tmpBuf[0]&0xf;
+	rspSource = tmpBuf[0] & 0xf;
 	if (rspSource >= BT_INFO_SRC_8723B_1ANT_MAX)
 		rspSource = BT_INFO_SRC_8723B_1ANT_WIFI_FW;
 	pCoexSta->btInfoC2hCnt[rspSource]++;
@@ -3557,7 +3557,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 		pCoexSta->btInfoC2h[rspSource][i] = tmpBuf[i];
 		if (i == 1)
 			btInfo = tmpBuf[i];
-		if (i == length-1)
+		if (i == length - 1)
 			BTC_PRINT(
 				BTC_MSG_INTERFACE, INTF_NOTIFY, ("0x%02x]\n", tmpBuf[i])
 			);
@@ -3566,22 +3566,22 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 	}
 
 	if (BT_INFO_SRC_8723B_1ANT_WIFI_FW != rspSource) {
-		pCoexSta->btRetryCnt = pCoexSta->btInfoC2h[rspSource][2]&0xf;
+		pCoexSta->btRetryCnt = pCoexSta->btInfoC2h[rspSource][2] & 0xf;
 
 		if (pCoexSta->btRetryCnt >= 1)
 			pCoexSta->popEventCnt++;
 
-		if (pCoexSta->btInfoC2h[rspSource][2]&0x20)
+		if (pCoexSta->btInfoC2h[rspSource][2] & 0x20)
 			pCoexSta->bC2hBtPage = true;
 		else
 			pCoexSta->bC2hBtPage = false;
 
-		pCoexSta->btRssi = pCoexSta->btInfoC2h[rspSource][3]*2-90;
+		pCoexSta->btRssi = pCoexSta->btInfoC2h[rspSource][3] * 2 - 90;
 		/* pCoexSta->btInfoC2h[rspSource][3]*2+10; */
 
 		pCoexSta->btInfoExt = pCoexSta->btInfoC2h[rspSource][4];
 
-		pCoexSta->bBtTxRxMask = (pCoexSta->btInfoC2h[rspSource][2]&0x40);
+		pCoexSta->bBtTxRxMask = (pCoexSta->btInfoC2h[rspSource][2] & 0x40);
 		pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_BT_TX_RX_MASK, &pCoexSta->bBtTxRxMask);
 
 		if (!pCoexSta->bBtTxRxMask) {
@@ -3626,7 +3626,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 		pCoexSta->bC2hBtInquiryPage = false;
 
 	/*  set link exist status */
-	if (!(btInfo&BT_INFO_8723B_1ANT_B_CONNECTION)) {
+	if (!(btInfo & BT_INFO_8723B_1ANT_B_CONNECTION)) {
 		pCoexSta->bBtLinkExist = false;
 		pCoexSta->bPanExist = false;
 		pCoexSta->bA2dpExist = false;
@@ -3659,7 +3659,7 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 
 	btInfo = btInfo & 0x1f;  /* mask profile bit for connect-ilde identification (for CSR case: A2DP idle --> 0x41) */
 
-	if (!(btInfo&BT_INFO_8723B_1ANT_B_CONNECTION)) {
+	if (!(btInfo & BT_INFO_8723B_1ANT_B_CONNECTION)) {
 		pCoexDm->btStatus = BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE;
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\n"));
 	} else if (btInfo == BT_INFO_8723B_1ANT_B_CONNECTION)	{
@@ -3667,12 +3667,12 @@ void EXhalbtc8723b1ant_BtInfoNotify(
 		pCoexDm->btStatus = BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE;
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT Connected-idle!!!\n"));
 	} else if (
-		(btInfo&BT_INFO_8723B_1ANT_B_SCO_ESCO) ||
-		(btInfo&BT_INFO_8723B_1ANT_B_SCO_BUSY)
+		(btInfo & BT_INFO_8723B_1ANT_B_SCO_ESCO) ||
+		(btInfo & BT_INFO_8723B_1ANT_B_SCO_BUSY)
 	) {
 		pCoexDm->btStatus = BT_8723B_1ANT_BT_STATUS_SCO_BUSY;
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT SCO busy!!!\n"));
-	} else if (btInfo&BT_INFO_8723B_1ANT_B_ACL_BUSY) {
+	} else if (btInfo & BT_INFO_8723B_1ANT_B_ACL_BUSY) {
 		if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY != pCoexDm->btStatus)
 			pCoexDm->bAutoTdmaAdjust = false;
 
-- 
2.30.2


