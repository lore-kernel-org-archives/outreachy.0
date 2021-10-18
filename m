X-GM-THRID: 7018941118564794368
X-Received: by 2002:a19:494e:: with SMTP id l14mr296423lfj.180.1634569445485;
        Mon, 18 Oct 2021 08:04:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a48d:: with SMTP id h13ls2846081lji.8.gmail; Mon, 18 Oct
 2021 08:04:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysDOunt5m5DWgzdKWYqtw/BbFoqWKnKKRWCzZp3fshvEoNIFYbiJjRyv55IBzfqjDvGVdv
X-Received: by 2002:a2e:82c7:: with SMTP id n7mr300725ljh.352.1634569443473;
        Mon, 18 Oct 2021 08:04:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634569443; cv=none;
        d=google.com; s=arc-20160816;
        b=Gg8yL4nZOUKgQJdJIzyGSF7dCn5wit3gq36InjqNQScfzHCV3UWmPwr0c2Nk7oV2/n
         fZ3/A3pehH+XdoMYEU1RaWM7OYCu7ZCd/Jy+1Enmzf4++Khjrq+KytgXOthq6NdKYoeJ
         VscSjuasDJf6sRlHj2jTLItC2XOZSGhGTcoiE/9j4kqZRcbb91X7QO/vUiDFD15rRUVG
         JBzUcer5qF+mGKC2VJ7MOSx7uIs+8a9oAJPK1oh6mEBphd8M6p7FOtltc9cJtYoGHCgX
         XhjzLjpBmVT3n6db3wYNQluh5taV+5D/2YTDqRWJdjJyA9mRa86JrUP+el2ttSBiTLLP
         9j4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=L7BiP3smelTLM2yROa2YM08nmUrzbiL9g5dwi2F+x2g=;
        b=HB3DfgjOJp8QFanGrf0x6U5YQDiLqmC5zt23NQAzUZo71t9iSS5WOUwfyftoZf0Lsg
         oqfdBoKg77pA1zTr4BQcSd2ptsAaGj3ZiSmsM9s35ONz2R5GKNyu/XrsYgr5UBWZ9HJe
         6NoQWGLeULUtI/oFapl8jJlCvYAIHqIeGUBf8RLn9H1DU3q7dkOsWsiylkeDU9OCRlbz
         EnPjxl7D+WdEQ5phW2A7QQAuMRSufOU0OfO1We7PNGU+rk65s9kwne6TMR1o8jgzoDMW
         xLLVrGfNrCIXPYiPCbguMwzhIG/OJeishS+zc+T8cGymF6A189fNxstxmY43iP64BnT7
         0mtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SUn359++;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id w6si659465lfa.7.2021.10.18.08.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 08:04:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SUn359++;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id l38-20020a05600c1d2600b0030d80c3667aso233739wms.5
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 08:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L7BiP3smelTLM2yROa2YM08nmUrzbiL9g5dwi2F+x2g=;
        b=SUn359++wbQizyVzVodHn0es10MpYihj1GzEUukImsbddB2uVctZxipCbC3rRbmUtn
         2hoKvVE6bp1z5+BfA+FHlVbfnopKqWIgBcc6DqaaeHghUnd9WaWsAX2lQLph1lFDqJBc
         EZFJFvJhK0pHFuy5NGGT7qhHFxzwbAxq7/3IkA8emZu9b/+pCcJxhz0Jd9rCyii0lzTv
         GbUF+u8JwRhMO7atxucWrE+tchfuTvA1PVGjdMwBAbaLnWe7qPwoH0lR/bsTjzG0kqWZ
         2edZ2B62QrMppMQVW8zNSlQhgAdarQrwBUm2Ug/LK98mLkQplk1Dcb2mhJQeP6VVDWb6
         WbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L7BiP3smelTLM2yROa2YM08nmUrzbiL9g5dwi2F+x2g=;
        b=OuYaL4X5GjCNfRARNAU3J6CJT1Niu4SmhRSbMLhc+KHa99jYGwpUOAxOIxA+jiZrhz
         PQ98gg1mMpNOBZ+tPe2WvEzsk/F6dUrheFuXmHKP4V4ZLBdWuyi2Bue1ljbB25ORtNwH
         ottssN0Gibqk+y1hj04arfcNf3TONAmZJuvUyLAnEmZvt5MC7cIigiRMQC+ULsB9q9RJ
         ROr5//8ouU2owHBjdnPRYGUMIQOOYyRA9PAIJSDcvBACa7ZdPSSxyMiptE5FRw2ytI7E
         S1clpHjyXgoa/J/Pf8NOyB4s53HFWy2+YHF0Fm9bcOUekME3+oWIL8nq3Z1o7v4Gvp0L
         DOTg==
X-Gm-Message-State: AOAM5320ElnYP6QoNWC3I+5h7AdtTJAytiNM+vSpsrkJgbv30c02aSuZ
	pic6+7iZHo+vNScz9a3BGeUnX3zXaMslRZcv
X-Received: by 2002:a05:600c:1989:: with SMTP id t9mr30684791wmq.48.1634569442828;
        Mon, 18 Oct 2021 08:04:02 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id g70sm11872138wme.29.2021.10.18.08.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 08:04:02 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [RESEND PATCH v3] staging: vt6655: Rename byPreambleType field
Date: Mon, 18 Oct 2021 16:03:17 +0100
Message-Id: <20211018150317.9590-1-karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation prefix in `byPreambleType` member of
struct vnt_private. Change it to use snake case.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <byPreambleType>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
v3:
* Revert parameter name change in `bb_get_frame_time` function,
  update patch description

v2:
* Revert whitespace comment change for `by_pkt_type` parameter

 drivers/staging/vt6655/baseband.c    |  2 +-
 drivers/staging/vt6655/device.h      |  2 +-
 drivers/staging/vt6655/device_main.c |  8 ++---
 drivers/staging/vt6655/rxtx.c        | 50 ++++++++++++++--------------
 4 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 0bae35af6e0f..5efca92f1f18 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1764,7 +1764,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	u32 count = 0;
 	u32 tmp;
 	int ext_bit;
-	u8 preamble_type = priv->byPreambleType;
+	u8 preamble_type = priv->preamble_type;
 
 	bit_count = frame_length * 8;
 	ext_bit = false;
diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 92d6f82f939f..4706bde1ec1d 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -203,7 +203,7 @@ struct vnt_private {
 	unsigned char byMinChannel;
 	unsigned char byMaxChannel;
 
-	unsigned char byPreambleType;
+	unsigned char preamble_type;
 	unsigned char byShortPreamble;
 
 	unsigned short wCurrentRate;
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 24f0e346da12..212d2a287b2c 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -177,11 +177,11 @@ device_set_options(struct vnt_private *priv)
 	priv->byPacketType = priv->byBBType;
 	priv->byAutoFBCtrl = AUTO_FB_0;
 	priv->bUpdateBBVGA = true;
-	priv->byPreambleType = 0;
+	priv->preamble_type = 0;
 
 	pr_debug(" byShortRetryLimit= %d\n", (int)priv->byShortRetryLimit);
 	pr_debug(" byLongRetryLimit= %d\n", (int)priv->byLongRetryLimit);
-	pr_debug(" byPreambleType= %d\n", (int)priv->byPreambleType);
+	pr_debug(" preamble_type= %d\n", (int)priv->preamble_type);
 	pr_debug(" byShortPreamble= %d\n", (int)priv->byShortPreamble);
 	pr_debug(" byBBType= %d\n", (int)priv->byBBType);
 }
@@ -1424,10 +1424,10 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
 		if (conf->use_short_preamble) {
 			MACvEnableBarkerPreambleMd(priv->port_offset);
-			priv->byPreambleType = true;
+			priv->preamble_type = true;
 		} else {
 			MACvDisableBarkerPreambleMd(priv->port_offset);
-			priv->byPreambleType = false;
+			priv->preamble_type = false;
 		}
 	}
 
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index ff0b5391ea0b..0de801b666da 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -142,7 +142,7 @@ s_uFillDataHead(
 
 static __le16 vnt_time_stamp_off(struct vnt_private *priv, u16 rate)
 {
-	return cpu_to_le16(wTimeStampOff[priv->byPreambleType % 2]
+	return cpu_to_le16(wTimeStampOff[priv->preamble_type % 2]
 							[rate % MAX_RATE]);
 }
 
@@ -163,7 +163,7 @@ s_uGetTxRsvTime(
 {
 	unsigned int uDataTime, uAckTime;
 
-	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
+	uDataTime = bb_get_frame_time(pDevice->preamble_type, byPktType, cbFrameLength, wRate);
 
 	if (!bNeedAck)
 		return uDataTime;
@@ -172,7 +172,7 @@ s_uGetTxRsvTime(
 	 * CCK mode  - 11b
 	 * OFDM mode - 11g 2.4G & 11a 5G
 	 */
-	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
+	uAckTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14,
 				     byPktType == PK_TYPE_11B ?
 				     pDevice->byTopCCKBasicRate :
 				     pDevice->byTopOFDMBasicRate);
@@ -200,22 +200,22 @@ static __le16 get_rtscts_time(struct vnt_private *priv,
 	unsigned int ack_time = 0;
 	unsigned int data_time = 0;
 
-	data_time = bb_get_frame_time(priv->byPreambleType, pkt_type, frame_length, current_rate);
+	data_time = bb_get_frame_time(priv->preamble_type, pkt_type, frame_length, current_rate);
 	if (rts_rsvtype == 0) { /* RTSTxRrvTime_bb */
-		rts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 20, priv->byTopCCKBasicRate);
-		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopCCKBasicRate);
+		rts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 20, priv->byTopCCKBasicRate);
+		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopCCKBasicRate);
 		cts_time = ack_time;
 	} else if (rts_rsvtype == 1) { /* RTSTxRrvTime_ba, only in 2.4GHZ */
-		rts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 20, priv->byTopCCKBasicRate);
-		cts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopCCKBasicRate);
-		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopOFDMBasicRate);
+		rts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 20, priv->byTopCCKBasicRate);
+		cts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopCCKBasicRate);
+		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopOFDMBasicRate);
 	} else if (rts_rsvtype == 2) { /* RTSTxRrvTime_aa */
-		rts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 20, priv->byTopOFDMBasicRate);
-		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopOFDMBasicRate);
+		rts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 20, priv->byTopOFDMBasicRate);
+		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopOFDMBasicRate);
 		cts_time = ack_time;
 	} else if (rts_rsvtype == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
-		cts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopCCKBasicRate);
-		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopOFDMBasicRate);
+		cts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopCCKBasicRate);
+		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopOFDMBasicRate);
 		rrv_time = cts_time + ack_time + data_time + 2 * priv->uSIFS;
 		return cpu_to_le16((u16)rrv_time);
 	}
@@ -255,7 +255,7 @@ s_uGetDataDuration(
 	switch (byDurType) {
 	case DATADUR_B:    /* DATADUR_B */
 		if (bNeedAck) {
-			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
+			uAckTime = bb_get_frame_time(pDevice->preamble_type,
 						     byPktType, 14,
 						     pDevice->byTopCCKBasicRate);
 		}
@@ -273,7 +273,7 @@ s_uGetDataDuration(
 
 	case DATADUR_A:    /* DATADUR_A */
 		if (bNeedAck) {
-			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
+			uAckTime = bb_get_frame_time(pDevice->preamble_type,
 						     byPktType, 14,
 						     pDevice->byTopOFDMBasicRate);
 		}
@@ -292,7 +292,7 @@ s_uGetDataDuration(
 	case DATADUR_A_F0:    /* DATADUR_A_F0 */
 	case DATADUR_A_F1:    /* DATADUR_A_F1 */
 		if (bNeedAck) {
-			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
+			uAckTime = bb_get_frame_time(pDevice->preamble_type,
 						     byPktType, 14,
 						     pDevice->byTopOFDMBasicRate);
 		}
@@ -344,17 +344,17 @@ s_uGetRTSCTSDuration(
 
 	switch (byDurType) {
 	case RTSDUR_BB:    /* RTSDuration_bb */
-		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_BA:    /* RTSDuration_ba */
-		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_AA:    /* RTSDuration_aa */
-		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
@@ -363,7 +363,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_BA_F0: /* RTSDuration_ba_f0 */
-		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -372,7 +372,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_AA_F0: /* RTSDuration_aa_f0 */
-		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -381,7 +381,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_BA_F1: /* RTSDuration_ba_f1 */
-		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -390,7 +390,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_AA_F1: /* RTSDuration_aa_f1 */
-		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -1289,9 +1289,9 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_LRETRY);
 
 	if (tx_rate->flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
-		priv->byPreambleType = PREAMBLE_SHORT;
+		priv->preamble_type = PREAMBLE_SHORT;
 	else
-		priv->byPreambleType = PREAMBLE_LONG;
+		priv->preamble_type = PREAMBLE_LONG;
 
 	if (tx_rate->flags & IEEE80211_TX_RC_USE_RTS_CTS)
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_RTS);
-- 
2.30.2


