X-GM-THRID: 9184133251072
X-Received: by 10.112.73.33 with SMTP id i1mr3869255lbv.0.1426799393518;
        Thu, 19 Mar 2015 14:09:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.169 with SMTP id x9ls363831lal.92.gmail; Thu, 19 Mar
 2015 14:09:52 -0700 (PDT)
X-Received: by 10.112.181.166 with SMTP id dx6mr9988128lbc.17.1426799392901;
        Thu, 19 Mar 2015 14:09:52 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id gj20si7337wic.1.2015.03.19.14.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 14:09:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id p1so67405448weg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 14:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VmAdb4kEBLiEpuXlJCEtdVo+jBtKC7jq+QhaToCChVQ=;
        b=A0IEsiJ5aOD369LrcJFhFQ0td4orEQtLq9AUfyIrVlEDQ53/mepzkiVY1NZupSas5d
         tFHKh93mlrs7vPfbNuP06j2wW0ZbUSIkWk65iTkXVI5yCpuUWrpCAc3SkTPEsvshAFAa
         2nNjhS84JTzRulMnXlapAIP3utP1wZW5HD2/H85CCFwAyT16oa2tsJRJ6uB4owEzXCP/
         WjLOSdhA+Z7jjGK7pSqUodvuHpfbPPlEfrOwRJsvcEmnL69KKepzQWqbscPTy0Ybjn6V
         l2lO22x/NVveQI/ixNsof0Ql/WPH83x4+TzZjBU/wp2kIu7rA8kAdgyJTTARCAz9wn1L
         7Uvg==
X-Received: by 10.194.157.39 with SMTP id wj7mr118006914wjb.57.1426799392779;
        Thu, 19 Mar 2015 14:09:52 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id p5sm172637wiz.20.2015.03.19.14.09.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2015 14:09:51 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: changed C99 // comments
Date: Thu, 19 Mar 2015 23:09:43 +0200
Message-Id: <1426799383-24747-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

// erased and replace it with /**/ used.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 168 +++++++++++++++++++++---------------------
 1 file changed, 84 insertions(+), 84 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 07ce3fd..d51a58b 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -64,21 +64,21 @@
 /*---------------------  Static Functions  --------------------------*/
 
 /*---------------------  Static Definitions -------------------------*/
-#define CRITICAL_PACKET_LEN      256    // if packet size < 256 -> in-direct send
-                                        //    packet size >= 256 -> direct send
+#define CRITICAL_PACKET_LEN      256    /* if packet size < 256 -> in-direct send
+                                            packet size >= 256 -> direct send */
 
 static const unsigned short wTimeStampOff[2][MAX_RATE] = {
-	{384, 288, 226, 209, 54, 43, 37, 31, 28, 25, 24, 23}, // Long Preamble
-	{384, 192, 130, 113, 54, 43, 37, 31, 28, 25, 24, 23}, // Short Preamble
+	{384, 288, 226, 209, 54, 43, 37, 31, 28, 25, 24, 23}, /* Long Preamble */
+	{384, 192, 130, 113, 54, 43, 37, 31, 28, 25, 24, 23}, /* Short Preamble */
 };
 
 static const unsigned short wFB_Opt0[2][5] = {
-	{RATE_12M, RATE_18M, RATE_24M, RATE_36M, RATE_48M}, // fallback_rate0
-	{RATE_12M, RATE_12M, RATE_18M, RATE_24M, RATE_36M}, // fallback_rate1
+	{RATE_12M, RATE_18M, RATE_24M, RATE_36M, RATE_48M}, /* fallback_rate0 */
+	{RATE_12M, RATE_12M, RATE_18M, RATE_24M, RATE_36M}, /* fallback_rate1 */
 };
 static const unsigned short wFB_Opt1[2][5] = {
-	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, // fallback_rate0
-	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, // fallback_rate1
+	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
+	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
 };
 
 #define RTSDUR_BB       0
@@ -176,9 +176,9 @@ s_uGetTxRsvTime(
 	unsigned int uDataTime, uAckTime;
 
 	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
-	if (byPktType == PK_TYPE_11B) //llb,CCK mode
+	if (byPktType == PK_TYPE_11B) /* llb,CCK mode */
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopCCKBasicRate);
-	else //11g 2.4G OFDM mode & 11a 5G OFDM mode
+	else /* 11g 2.4G OFDM mode & 11a 5G OFDM mode */
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
 
 	if (bNeedAck)
@@ -194,7 +194,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 						frame_length, rate, need_ack));
 }
 
-//byFreqType: 0=>5GHZ 1=>2.4GHZ
+/* byFreqType: 0=>5GHZ 1=>2.4GHZ */
 static
 __le16
 s_uGetRTSCTSRsvTime(
@@ -210,29 +210,29 @@ s_uGetRTSCTSRsvTime(
 	uRrvTime = uRTSTime = uCTSTime = uAckTime = uDataTime = 0;
 
 	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wCurrentRate);
-	if (byRTSRsvType == 0) { //RTSTxRrvTime_bb
+	if (byRTSRsvType == 0) { /* RTSTxRrvTime_bb */
 		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
 		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-	} else if (byRTSRsvType == 1) { //RTSTxRrvTime_ba, only in 2.4GHZ
+	} else if (byRTSRsvType == 1) { /* RTSTxRrvTime_ba, only in 2.4GHZ */
 		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-	} else if (byRTSRsvType == 2) { //RTSTxRrvTime_aa
+	} else if (byRTSRsvType == 2) { /* RTSTxRrvTime_aa */
 		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
 		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-	} else if (byRTSRsvType == 3) { //CTSTxRrvTime_ba, only in 2.4GHZ
+	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		uRrvTime = uCTSTime + uAckTime + uDataTime + 2*pDevice->uSIFS;
 		return cpu_to_le16((u16)uRrvTime);
 	}
 
-	//RTSRrvTime
+	/* RTSRrvTime */
 	uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3*pDevice->uSIFS;
 	return cpu_to_le16((u16)uRrvTime);
 }
 
-//byFreqType 0: 5GHz, 1:2.4Ghz
+/* byFreqType 0: 5GHz, 1:2.4Ghz */
 static
 unsigned int
 s_uGetDataDuration(
@@ -255,15 +255,15 @@ s_uGetDataDuration(
 		bLastFrag = 1;
 
 	switch (byDurType) {
-	case DATADUR_B:    //DATADUR_B
-		if (((uMACfragNum == 1)) || bLastFrag) {//Non Frag or Last Frag
+	case DATADUR_B:    /* DATADUR_B */
+		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
 			}
-		} else {//First Frag or Mid Frag
+		} else {/* First Frag or Mid Frag */
 			if (uFragIdx == (uMACfragNum-2))
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
 			else
@@ -278,15 +278,15 @@ s_uGetDataDuration(
 		}
 		break;
 
-	case DATADUR_A:    //DATADUR_A
-		if (((uMACfragNum == 1)) || bLastFrag) {//Non Frag or Last Frag
+	case DATADUR_A:    /* DATADUR_A */
+		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
 			}
-		} else {//First Frag or Mid Frag
+		} else {/* First Frag or Mid Frag */
 			if (uFragIdx == (uMACfragNum-2))
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
 			else
@@ -301,15 +301,15 @@ s_uGetDataDuration(
 		}
 		break;
 
-	case DATADUR_A_F0:    //DATADUR_A_F0
-		if (((uMACfragNum == 1)) || bLastFrag) {//Non Frag or Last Frag
+	case DATADUR_A_F0:    /* DATADUR_A_F0 */
+		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
 			}
-		} else { //First Frag or Mid Frag
+		} else { /* First Frag or Mid Frag */
 			if (byFBOption == AUTO_FB_0) {
 				if (wRate < RATE_18M)
 					wRate = RATE_18M;
@@ -321,7 +321,7 @@ s_uGetDataDuration(
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 
-			} else { // (byFBOption == AUTO_FB_1)
+			} else { /* (byFBOption == AUTO_FB_1) */
 				if (wRate < RATE_18M)
 					wRate = RATE_18M;
 				else if (wRate > RATE_54M)
@@ -343,15 +343,15 @@ s_uGetDataDuration(
 		}
 		break;
 
-	case DATADUR_A_F1:    //DATADUR_A_F1
-		if (((uMACfragNum == 1)) || bLastFrag) {//Non Frag or Last Frag
+	case DATADUR_A_F1:    /* DATADUR_A_F1 */
+		if (((uMACfragNum == 1)) || bLastFrag) { /* Non Frag or Last Frag */
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
 			}
-		} else { //First Frag or Mid Frag
+		} else { /* First Frag or Mid Frag */
 			if (byFBOption == AUTO_FB_0) {
 				if (wRate < RATE_18M)
 					wRate = RATE_18M;
@@ -363,7 +363,7 @@ s_uGetDataDuration(
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 
-			} else { // (byFBOption == AUTO_FB_1)
+			} else { /* (byFBOption == AUTO_FB_1) */
 				if (wRate < RATE_18M)
 					wRate = RATE_18M;
 				else if (wRate > RATE_54M)
@@ -391,7 +391,7 @@ s_uGetDataDuration(
 	return 0;
 }
 
-//byFreqType: 0=>5GHZ 1=>2.4GHZ
+/* byFreqType: 0=>5GHZ 1=>2.4GHZ */
 static
 __le16
 s_uGetRTSCTSDuration(
@@ -407,26 +407,26 @@ s_uGetRTSCTSDuration(
 	unsigned int uCTSTime = 0, uDurTime = 0;
 
 	switch (byDurType) {
-	case RTSDUR_BB:    //RTSDuration_bb
+	case RTSDUR_BB:    /* RTSDuration_bb */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
-	case RTSDUR_BA:    //RTSDuration_ba
+	case RTSDUR_BA:    /* RTSDuration_ba */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
-	case RTSDUR_AA:    //RTSDuration_aa
+	case RTSDUR_AA:    /* RTSDuration_aa */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
-	case CTSDUR_BA:    //CTSDuration_ba
+	case CTSDUR_BA:    /* CTSDuration_ba */
 		uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
-	case RTSDUR_BA_F0: //RTSDuration_ba_f0
+	case RTSDUR_BA_F0: /* RTSDuration_ba_f0 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
@@ -435,7 +435,7 @@ s_uGetRTSCTSDuration(
 
 		break;
 
-	case RTSDUR_AA_F0: //RTSDuration_aa_f0
+	case RTSDUR_AA_F0: /* RTSDuration_aa_f0 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
@@ -444,7 +444,7 @@ s_uGetRTSCTSDuration(
 
 		break;
 
-	case RTSDUR_BA_F1: //RTSDuration_ba_f1
+	case RTSDUR_BA_F1: /* RTSDuration_ba_f1 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
@@ -453,7 +453,7 @@ s_uGetRTSCTSDuration(
 
 		break;
 
-	case RTSDUR_AA_F1: //RTSDuration_aa_f1
+	case RTSDUR_AA_F1: /* RTSDuration_aa_f1 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
@@ -462,7 +462,7 @@ s_uGetRTSCTSDuration(
 
 		break;
 
-	case CTSDUR_BA_F0: //CTSDuration_ba_f0
+	case CTSDUR_BA_F0: /* CTSDuration_ba_f0 */
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -470,7 +470,7 @@ s_uGetRTSCTSDuration(
 
 		break;
 
-	case CTSDUR_BA_F1: //CTSDuration_ba_f1
+	case CTSDUR_BA_F1: /* CTSDuration_ba_f1 */
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -565,7 +565,7 @@ s_uFillDataHead(
 			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
 
 			return buf->duration_a;
-		} //if (byFBOption == AUTO_FB_NONE)
+		} /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
 		if ((byFBOption != AUTO_FB_NONE)) {
 			/* Auto Fallback */
@@ -651,13 +651,13 @@ s_vFillRTSHead(
 		return;
 
 	if (bDisCRC) {
-		// When CRCDIS bit is on, H/W forgot to generate FCS for RTS frame,
-		// in this case we need to decrease its length by 4.
+		/* When CRCDIS bit is on, H/W forgot to generate FCS for RTS frame,
+		 in this case we need to decrease its length by 4. */
 		uRTSFrameLen -= 4;
 	}
 
-	// Note: So far RTSHead dosen't appear in ATIM & Beacom DMA, so we don't need to take them into account.
-	//       Otherwise, we need to modify codes for them.
+	/* Note: So far RTSHead dosen't appear in ATIM & Beacom DMA, so we don't need to take them into account.
+	       Otherwise, we need to modify codes for them. */
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
 		if (byFBOption == AUTO_FB_NONE) {
 			struct vnt_rts_g *buf = pvRTS;
@@ -748,7 +748,7 @@ s_vFillRTSHead(
 
 			ether_addr_copy(buf->data.ra, hdr->addr1);
 			ether_addr_copy(buf->data.ta, hdr->addr2);
-		} // if (byFBOption == AUTO_FB_NONE)
+		} /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
 		if (byFBOption == AUTO_FB_NONE) {
 			struct vnt_rts_ab *buf = pvRTS;
@@ -843,14 +843,14 @@ s_vFillCTSHead(
 		return;
 
 	if (bDisCRC) {
-		// When CRCDIS bit is on, H/W forgot to generate FCS for CTS frame,
-		// in this case we need to decrease its length by 4.
+		/* When CRCDIS bit is on, H/W forgot to generate FCS for CTS frame,
+		 in this case we need to decrease its length by 4. */
 		uCTSFrameLen -= 4;
 	}
 
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
 		if (byFBOption != AUTO_FB_NONE && uDMAIdx != TYPE_ATIMDMA && uDMAIdx != TYPE_BEACONDMA) {
-			// Auto Fall back
+			/* Auto Fall back */
 			struct vnt_cts_fb *buf = pvCTS;
 			/* Get SignalField, ServiceField & Length */
 			vnt_get_phy_field(pDevice, uCTSFrameLen,
@@ -888,7 +888,7 @@ s_vFillCTSHead(
 
 			ether_addr_copy(buf->data.ra,
 					pDevice->abyCurrentNetAddr);
-		} else { //if (byFBOption != AUTO_FB_NONE && uDMAIdx != TYPE_ATIMDMA && uDMAIdx != TYPE_BEACONDMA)
+		} else { /* if (byFBOption != AUTO_FB_NONE && uDMAIdx != TYPE_ATIMDMA && uDMAIdx != TYPE_BEACONDMA) */
 			struct vnt_cts *buf = pvCTS;
 			/* Get SignalField, ServiceField & Length */
 			vnt_get_phy_field(pDevice, uCTSFrameLen,
@@ -937,8 +937,8 @@ s_vFillCTSHead(
  *
  * Return Value: none
  *
- -*/
-// unsigned int cbFrameSize,//Hdr+Payload+FCS
+ -
+ * unsigned int cbFrameSize, Hdr+Payload+FCS */
 static
 void
 s_vGenerateTxParameter(
@@ -976,8 +976,8 @@ s_vGenerateTxParameter(
 		return;
 
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
-		if (pvRTS != NULL) { //RTS_need
-			/* Fill RsvTime */
+		if (pvRTS != NULL) { /* RTS_need
+			 Fill RsvTime */
 			struct vnt_rrv_time_rts *buf = pvRrvTime;
 
 			buf->rts_rrv_time_aa = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, wCurrentRate);
@@ -987,40 +987,40 @@ s_vGenerateTxParameter(
 			buf->rrv_time_b = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, pDevice->byTopCCKBasicRate, bNeedACK);
 
 			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
-		} else {//RTS_needless, PCF mode
+		} else {/* RTS_needless, PCF mode */
 			struct vnt_rrv_time_cts *buf = pvRrvTime;
 
 			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
 			buf->rrv_time_b = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, pDevice->byTopCCKBasicRate, bNeedACK);
 			buf->cts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 3, byPktType, cbFrameSize, wCurrentRate);
 
-			//Fill CTS
+			/* Fill CTS */
 			s_vFillCTSHead(pDevice, uDMAIdx, byPktType, pvCTS, cbFrameSize, bNeedACK, bDisCRC, wCurrentRate, byFBOption);
 		}
 	} else if (byPktType == PK_TYPE_11A) {
-		if (pvRTS != NULL) {//RTS_need, non PCF mode
+		if (pvRTS != NULL) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
 			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, wCurrentRate);
 			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
 
-			//Fill RTS
+			/* Fill RTS */
 			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
-		} else if (pvRTS == NULL) {//RTS_needless, non PCF mode
+		} else if (pvRTS == NULL) {/* RTS_needless, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
 			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11A, cbFrameSize, wCurrentRate, bNeedACK);
 		}
 	} else if (byPktType == PK_TYPE_11B) {
-		if ((pvRTS != NULL)) {//RTS_need, non PCF mode
+		if ((pvRTS != NULL)) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
 			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, wCurrentRate);
 			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, wCurrentRate, bNeedACK);
 
-			//Fill RTS
+			/* Fill RTS */
 			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
-		} else { //RTS_needless, non PCF mode
+		} else { /* RTS_needless, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
 			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, wCurrentRate, bNeedACK);
@@ -1058,7 +1058,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 	void *pvRTS;
 	void *pvCTS;
 	void *pvTxDataHd;
-	unsigned short wTxBufSize;   // FFinfo size
+	unsigned short wTxBufSize;   /* FFinfo size */
 	unsigned char byFBOption = AUTO_FB_NONE;
 
 	pvRrvTime = pMICHDR = pvRTS = pvCTS = pvTxDataHd = NULL;
@@ -1076,27 +1076,27 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 		cbFrameSize += info->control.hw_key->icv_len;
 
 		if (pDevice->byLocalID > REV_ID_VT3253_A1) {
-			//MAC Header should be padding 0 to DW alignment.
+			/* MAC Header should be padding 0 to DW alignment. */
 			uPadding = 4 - (ieee80211_get_hdrlen_from_skb(skb) % 4);
 			uPadding %= 4;
 		}
 	}
 
-	//
-	// Use for AUTO FALL BACK
-	//
+	/*
+	* Use for AUTO FALL BACK
+	*/
 	if (fifo_ctl & FIFOCTL_AUTO_FB_0)
 		byFBOption = AUTO_FB_0;
 	else if (fifo_ctl & FIFOCTL_AUTO_FB_1)
 		byFBOption = AUTO_FB_1;
 
-	//////////////////////////////////////////////////////
-	//Set RrvTime/RTS/CTS Buffer
+
+	/* Set RrvTime/RTS/CTS Buffer */
 	wTxBufSize = sizeof(STxBufHead);
-	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {//802.11g packet
+	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {/* 802.11g packet */
 
 		if (byFBOption == AUTO_FB_NONE) {
-			if (bRTS == true) {//RTS_need
+			if (bRTS == true) {/* RTS_need */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts));
 				pvRTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) + cbMICHDR);
@@ -1106,7 +1106,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_rts) +
 							cbMICHDR + sizeof(struct vnt_rts_g) +
 							sizeof(struct vnt_tx_datahead_g);
-			} else { //RTS_needless
+			} else { /* RTS_needless */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
 				pvRTS = NULL;
@@ -1117,8 +1117,8 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 							cbMICHDR + sizeof(struct vnt_cts) + sizeof(struct vnt_tx_datahead_g);
 			}
 		} else {
-			// Auto Fall Back
-			if (bRTS == true) {//RTS_need
+			/* Auto Fall Back */
+			if (bRTS == true) {/* RTS_need */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts));
 				pvRTS = (void *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) + cbMICHDR);
@@ -1127,7 +1127,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 					cbMICHDR + sizeof(struct vnt_rts_g_fb));
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_rts) +
 					cbMICHDR + sizeof(struct vnt_rts_g_fb) + sizeof(struct vnt_tx_datahead_g_fb);
-			} else { //RTS_needless
+			} else { /* RTS_needless */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
 				pvRTS = NULL;
@@ -1137,8 +1137,8 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_cts) +
 					cbMICHDR + sizeof(struct vnt_cts_fb) + sizeof(struct vnt_tx_datahead_g_fb);
 			}
-		} // Auto Fall Back
-	} else {//802.11a/b packet
+		} /* Auto Fall Back */
+	} else {/* 802.11a/b packet */
 
 		if (byFBOption == AUTO_FB_NONE) {
 			if (bRTS == true) {
@@ -1150,7 +1150,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 					sizeof(struct vnt_rrv_time_ab) + cbMICHDR + sizeof(struct vnt_rts_ab));
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_ab) +
 					cbMICHDR + sizeof(struct vnt_rts_ab) + sizeof(struct vnt_tx_datahead_ab);
-			} else { //RTS_needless, need MICHDR
+			} else { /* RTS_needless, need MICHDR */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
 				pvRTS = NULL;
@@ -1160,8 +1160,8 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 					cbMICHDR + sizeof(struct vnt_tx_datahead_ab);
 			}
 		} else {
-			// Auto Fall Back
-			if (bRTS == true) {//RTS_need
+			/* Auto Fall Back */
+			if (bRTS == true) { /* RTS_need */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
 				pvRTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
@@ -1170,7 +1170,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 					sizeof(struct vnt_rrv_time_ab) + cbMICHDR + sizeof(struct vnt_rts_a_fb));
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_ab) +
 					cbMICHDR + sizeof(struct vnt_rts_a_fb) + sizeof(struct vnt_tx_datahead_a_fb);
-			} else { //RTS_needless
+			} else { /* RTS_needless */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
 				pvRTS = NULL;
@@ -1179,7 +1179,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_ab) +
 					cbMICHDR + sizeof(struct vnt_tx_datahead_a_fb);
 			}
-		} // Auto Fall Back
+		} /* Auto Fall Back */
 	}
 
 	td_info->mic_hdr = pMICHDR;
-- 
1.9.1


