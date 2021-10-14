X-GM-THRID: 7018941118564794368
X-Received: by 2002:a05:6402:438f:: with SMTP id o15mr9335868edc.53.1634224578343;
        Thu, 14 Oct 2021 08:16:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:1611:: with SMTP id hb17ls2098545ejc.7.gmail; Thu,
 14 Oct 2021 08:16:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzS0O7rI7PVez5h9xkoqC5GKcsxD7eCpfcMQ+M8TNAw9SnrGBRgcNb1XOKiSHBytprR+ua7
X-Received: by 2002:a17:906:ce45:: with SMTP id se5mr4563795ejb.386.1634224576494;
        Thu, 14 Oct 2021 08:16:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634224576; cv=none;
        d=google.com; s=arc-20160816;
        b=Z1s9DO2x68A7CX78G9nCI5XEqdZPPsbbYfoExgUoSRPds12l6Gfv9g9bk4K3ogqni4
         SF9j+oAGT8x9pPYHH4F8q9zre7K8ud0v6bUVF2B+omPgA/Iu7q6dUvwAYl5k3zPtJdIo
         dvSLM5IFFWnqj+UjArK4eh7fI72WEbzGtJVHx3ViJoWY/wk4FgLtIyl4/lrr3sJOey8J
         XnfXSGPfFEz7on+txvdLt3yKjAm8N7TWLXY1CkKE8xmeAxx9kjvtE6pZkpwn5H6yco/L
         U2FROjLKtQr0rY0gX34/9bWP5BImjPt8XAxajuX/RccOw5Y4DHOTY18uavpTvw9Masel
         Vz3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=J3jIN/boPXJZ2IbyLGIvE99MdafL1k65EitBEmA6Kg4=;
        b=j81Yv1obbKUhnHLKdeLY2IR5TxUBRKVFpIDTxZEjQJ4FRpFbvYYhe9Y63xIiEXUNaq
         TjEPVGKF8+osQLkFIRN1ckhtc5Qic+jU+KItAZWuGXxKSSJLB99wctUn/iUwmmFyYiFc
         WH4kltCnBleDhMNvxjMyw1jwE8U0WXmyTVZwvMgddBAqdOcrgpjpvD7UhmkPfSnjvDqo
         uNCsilYXmJ109feR8M1kOmnMCRZGj6XGbfVIdRPsl6vHS0KZ4/pWzfklEchLWajG0FRp
         FZPLXTr4Jwn71lTWbHzNEk0+3g2SxDVWCA38AIAz440ZvgFtElbhW2V5Y8KksvK0+Yny
         tmAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Pwt6XzI/";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id s19si232211edi.1.2021.10.14.08.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 08:16:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Pwt6XzI/";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id e3so20377602wrc.11
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Oct 2021 08:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J3jIN/boPXJZ2IbyLGIvE99MdafL1k65EitBEmA6Kg4=;
        b=Pwt6XzI/pqaUz49sJoYLpToTOsARzR5J1tlDZuWWGnT/EB0TOa3xVj7ECxiDZn8yAu
         Dkp18WLpoOdUp7lXgAjP0uwcHeARyHpBCii2p66k/W6fhN2LaQ1rKs89kYC1Mxx+jMvn
         0a6c+6xfPcRKFiK6i52WzRJY5QKOvn4RKqYwsAzLjC56Ugv5fa/MKE/YX+6yxA431V3Z
         SWJnFH9h2IfGDWHu7dX37rL3ra3e25dEE2dNZGHYSGr9ukXaVwCxpr1EzEBQSen2AGng
         iEZMThqBTSgrfoTAuvlXLOn8IPWd2wObvPGWv/U1J4gIwYtBSyM4NtDi5UBUIJFvDvct
         5OhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J3jIN/boPXJZ2IbyLGIvE99MdafL1k65EitBEmA6Kg4=;
        b=1B3F/GiZhk6RW0s8QMHBMvrK/T6o0eSwaJTyr9/zHMLZwLjtjtA7aZJInFIGUHGc+L
         1NN9aH41doSL99LntoT7G+/iTW5n13L6nBGgNvI/ZXJr0ZUyp4DVaRFeUmDHT+bzE3RC
         ixUPes19SIwsdN/COb5jNXfmmu8v0IQUMbAHrhZsOcd8Pegs7CkRIUinT8dTffVrBrmx
         Tqu/cv3Iqa805xjrYWbDCaMnC9vke6BLM/0hmpKIcKuXCNm6UChvVMBcXXQ8wUXJreB9
         ypVUD4aj8VdIP9vKgvdPkTt1h2IX+PFi6p+UnEqKJ0GRmrt7205jLsxgim4Ba1yqA9TD
         RFqQ==
X-Gm-Message-State: AOAM532gaPC+iaGR9qZjGq6M8pywoUbTM/spv3tiqw7ketXEUmvC+djS
	oeyjQVmplK+WuIdLXK7Kjo2j2XprQ1AaGhon
X-Received: by 2002:adf:b64a:: with SMTP id i10mr7473433wre.244.1634224575947;
        Thu, 14 Oct 2021 08:16:15 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id e9sm2436307wme.37.2021.10.14.08.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 08:16:15 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH] staging: vt6655: Rename byPreambleType field
Date: Thu, 14 Oct 2021 16:15:43 +0100
Message-Id: <20211014151543.46764-1-karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation prefix in `byPreambleType` member of
struct vnt_private. Change it to use snake case.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <byPreambleType>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/baseband.c    | 10 +++---
 drivers/staging/vt6655/baseband.h    |  2 +-
 drivers/staging/vt6655/device.h      |  2 +-
 drivers/staging/vt6655/device_main.c |  8 ++---
 drivers/staging/vt6655/rxtx.c        | 50 ++++++++++++++--------------
 5 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 0bae35af6e0f..69739de927be 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1691,8 +1691,8 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
  *
  * Parameters:
  *  In:
- *      by_preamble_type  - Preamble Type
- *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
+ *      preamble_type     - Preamble Type
+ *      by_pkt_type       - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
  *      cb_frame_length   - Baseband Type
  *      tx_rate           - Tx Rate
  *  Out:
@@ -1700,7 +1700,7 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
  * Return Value: FrameTime
  *
  */
-unsigned int bb_get_frame_time(unsigned char by_preamble_type,
+unsigned int bb_get_frame_time(unsigned char preamble_type,
 			       unsigned char by_pkt_type,
 			       unsigned int cb_frame_length,
 			       unsigned short tx_rate)
@@ -1717,7 +1717,7 @@ unsigned int bb_get_frame_time(unsigned char by_preamble_type,
 	rate = (unsigned int)awc_frame_time[rate_idx];
 
 	if (rate_idx <= 3) {		    /* CCK mode */
-		if (by_preamble_type == 1) /* Short */
+		if (preamble_type == 1)     /* Short */
 			preamble = 96;
 		else
 			preamble = 192;
@@ -1764,7 +1764,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	u32 count = 0;
 	u32 tmp;
 	int ext_bit;
-	u8 preamble_type = priv->byPreambleType;
+	u8 preamble_type = priv->preamble_type;
 
 	bit_count = frame_length * 8;
 	ext_bit = false;
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 0a30afaa7cc3..15b2802ed727 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -44,7 +44,7 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-unsigned int bb_get_frame_time(unsigned char by_preamble_type,
+unsigned int bb_get_frame_time(unsigned char preamble_type,
 			       unsigned char by_pkt_type,
 			       unsigned int cb_frame_length,
 			       unsigned short w_rate);
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


