X-GM-THRID: 6808322643446464512
X-Received: by 2002:a62:6207:: with SMTP id w7mr10688293pfb.102.1585252023194;
        Thu, 26 Mar 2020 12:47:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5c88:: with SMTP id a8ls1366929pgt.8.gmail; Thu, 26 Mar
 2020 12:47:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvBhGYFD8ACXXXgQdj3J+Zuotphgd8YEAVKdioR4RxpzTkNK8gJpPxzOEQOoDzDj7CQaA9M
X-Received: by 2002:a63:f113:: with SMTP id f19mr10710922pgi.168.1585252020673;
        Thu, 26 Mar 2020 12:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585252020; cv=none;
        d=google.com; s=arc-20160816;
        b=Nvsr6h4lSQiN4ccOFkgG6dTjnFdTIxD/CcPHg5SMePj65oaCYGyju6o/YXwMvg+Brc
         xaDZ2Bv62NXJUZHXzcfbltgsGvRLKotVKwTc+tWgvbA8rjDIOw5DlqwvmBno/nG3evI2
         NNUG3/a6Ho1X5Rk2Xf7Kzuj3oQOFl4c+MArOlZl6W1X2GyeFqsWs8dm3iTRE2yQEWiuj
         ivBzYay4ShMYVbezX93kgRlK5tWVGFMRrERIFMF39PHVjfINCPxPbJLrzuSMj33S+Oop
         aWY5rIFCZmYKm7SuSr7CrRE1JIfPvdIY6Tqm6riXQ5uA/ULtSLuG/Fb6BuOHtFISts0J
         TtAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pB/ClUX/rA5BAIGddW/TiBiRRWAQlpPC6I99IVwRsao=;
        b=zzawmA2HRSFLYhnQhOxdmCvnq/uVUCXPLXZyVPjXFaO82VDjii842YIF6Jdj+m0+Um
         dNryLCfg2NRiTGFJrlSAtNRLpfHnfi1xnl2q/EKUSNmXUGqqIiUGs6hAiC4Vz5V3B8vI
         4nkD3GR4kLdm8V7fbnovBGP2UDK7VU5X/oqPyLmGV44N0ltGiCRURIRF0EpAAtun+N3L
         Z3iJ8sW2Y8RVJMJsU0/ovpzXSduxcYlDBJE6B/eSi6hMf8gZCABEvFhQzNjNd/dtxzFx
         yTWFB8kX0amQ43jAYDJusi0LnRQKOLzj+hbah1VUcZ6T3joLAuOSo0afQndvP5LvVEDS
         YTQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjRheHhP;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id j44si609906pje.0.2020.03.26.12.47.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:47:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjRheHhP;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id h8so3422660pgs.9
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 12:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pB/ClUX/rA5BAIGddW/TiBiRRWAQlpPC6I99IVwRsao=;
        b=bjRheHhPZQmc88FRgPV2NV9+KSAqdObtniRDzuq/+ol6aQPbitp2bCqhTV2d8Vp9XG
         u9xo70n8E776pF+0Mz9ddhJUg+Eb51DQ9YNE3ekvhf+aRwPstvrkuF/qtHyIKV0FdqAi
         mh3FtbiVuBQGVLy9HfUGC0fHhQE+Cm2/+TkxoXyDsyb4HHL5r8KS9PGdEB7qv+5+ehmX
         7/3d6VJ1GFnfjpvKNpUS1w3WQaQQ87skzXf9RrDSC0gZKJvtvzqX7gcY4k0vn7AsgkkE
         WNckeL2HCg6YKwhiC7rcoWR7c2UHffkR0whCr4rjnGgktVfDcRoCKfGn9m4kShGx3JkX
         chxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pB/ClUX/rA5BAIGddW/TiBiRRWAQlpPC6I99IVwRsao=;
        b=ey6cpX4tQgQp2pZKd9ShmJuvRHQ6rwkYYUdjXsh9Nqy80SRkYa2qpVympKVmjo9cXU
         uirHYyejoLrWIA8i3xhhE5npxMf+dQWOn8Ed9A8DFcuc934lrjtDiWgsxUon0Yjiifx9
         WS406eMQ1BExdigP22meUPwmWgsX0Ol/Tif/+1uCeboIe8QjyshoyCgwDwS1cA/N4dch
         rB84FGPcE/5rUIOY/shvv0MPc0tHjhPUhHF17KC3kp9AuC3Plv+SR5F5npK5CRWlUh0a
         rpa82zD+SBkm29HVyB+dvV54N5sIsn/gzj3EjZhzuPCPngGG0rjEX3lOiPagQBBHP8y7
         JnlA==
X-Gm-Message-State: ANhLgQ2ShuRttc5iZWQfVfFI9jVAxZld21+PAzwtnhyMnxzf0gU4m4B/
	lLcy1X7u7B1KclVk4GU6krE=
X-Received: by 2002:aa7:9844:: with SMTP id n4mr10114691pfq.98.1585252019441;
        Thu, 26 Mar 2020 12:46:59 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id c207sm2335100pfb.47.2020.03.26.12.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 12:46:58 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH v2] staging: vt6655: Replace camel case variable names.
Date: Thu, 26 Mar 2020 12:46:49 -0700
Message-Id: <20200326194649.4499-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <alpine.DEB.2.21.2003260814590.3019@hadrien>
References: <alpine.DEB.2.21.2003260814590.3019@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaces camel case variable names with snake case in baseband.h and
dependencies.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v2:
	- Align comments, align parentheses, remove Hungarian notation.

 drivers/staging/vt6655/baseband.c    | 334 +++++++++++++--------------
 drivers/staging/vt6655/baseband.h    |  38 +--
 drivers/staging/vt6655/card.c        |  68 +++---
 drivers/staging/vt6655/channel.c     |   4 +-
 drivers/staging/vt6655/device_main.c |  36 +--
 drivers/staging/vt6655/rf.c          |   4 +-
 drivers/staging/vt6655/rxtx.c        |  91 ++++----
 7 files changed, 291 insertions(+), 284 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index b4cdc0b7fee7..d87bca52b297 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -12,17 +12,17 @@
  * Date: Aug.22, 2002
  *
  * Functions:
- *      BBuGetFrameTime        - Calculate data frame transmitting time
- *      BBvCalculateParameter   - Calculate PhyLength, PhyService and Phy Signal
- *                               parameter for baseband Tx
- *      BBbReadEmbedded         - Embedded read baseband register via MAC
- *      BBbWriteEmbedded        - Embedded write baseband register via MAC
- *      BBbVT3253Init          - VIA VT3253 baseband chip init code
+ *      bb_get_frame_time	 - Calculate data frame transmitting time
+ *      BBvCalculateParameter	 - Calculate PhyLength, PhyService and Phy Signal
+ *				   parameter for baseband Tx
+ *      bb_read_embedded	 - Embedded read baseband register via MAC
+ *      bb_write_embedded	 - Embedded write baseband register via MAC
+ *      bb_vt3253_init		 - VIA VT3253 baseband chip init code
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
  *      08-07-2003 Bryan YC Fan:  Add MAXIM2827/2825 and RFMD2959 support.
- *      08-26-2003 Kyle Hsu    :  Modify BBuGetFrameTime() and
+ *      08-26-2003 Kyle Hsu:	  Modify BBuGetFrameTime() and
  *				  BBvCalculateParameter().
  *                                cancel the setting of MAC_REG_SOFTPWRCTL on
  *				  BBbVT3253Init().
@@ -1695,53 +1695,53 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
  *
  * Parameters:
  *  In:
- *      byPreambleType  - Preamble Type
- *      byPktType        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
- *      cbFrameLength   - Baseband Type
- *      wRate           - Tx Rate
+ *      by_preamble_type  - Preamble Type
+ *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
+ *      cb_frame_length   - Baseband Type
+ *      w_rate           - Tx Rate
  *  Out:
  *
  * Return Value: FrameTime
  *
  */
-unsigned int BBuGetFrameTime(unsigned char byPreambleType,
-			     unsigned char byPktType,
-			     unsigned int cbFrameLength, unsigned short wRate)
+unsigned int bb_get_frame_time(unsigned char by_preamble_type,
+			       unsigned char by_pkt_type,
+			       unsigned int cb_frame_length,
+			       unsigned short w_rate)
 {
-	unsigned int uFrameTime;
-	unsigned int uPreamble;
-	unsigned int uTmp;
-	unsigned int uRateIdx = (unsigned int)wRate;
-	unsigned int uRate = 0;
+	unsigned int frame_time;
+	unsigned int preamble;
+	unsigned int tmp;
+	unsigned int rate_idx = (unsigned int)w_rate;
+	unsigned int rate = 0;
 
-	if (uRateIdx > RATE_54M)
+	if (rate_idx > RATE_54M)
 		return 0;
 
-	uRate = (unsigned int)awcFrameTime[uRateIdx];
+	rate = (unsigned int)awcFrameTime[rate_idx];
 
-	if (uRateIdx <= 3) {          /* CCK mode */
-		if (byPreambleType == 1) /* Short */
-			uPreamble = 96;
+	if (rate_idx <= 3) {		    /* CCK mode */
+		if (by_preamble_type == 1) /* Short */
+			preamble = 96;
 		else
-			uPreamble = 192;
+			preamble = 192;
+		frame_time = (cb_frame_length * 80) / rate;  /* ????? */
+		tmp = (frame_time * rate) / 80;
+		if (cb_frame_length != tmp)
+			frame_time++;
 
-		uFrameTime = (cbFrameLength * 80) / uRate;  /* ????? */
-		uTmp = (uFrameTime * uRate) / 80;
-		if (cbFrameLength != uTmp)
-			uFrameTime++;
-
-		return uPreamble + uFrameTime;
+		return preamble + frame_time;
 	}
-	uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* ???????? */
-	uTmp = ((uFrameTime * uRate) - 22) / 8;
-	if (cbFrameLength != uTmp)
-		uFrameTime++;
+	frame_time = (cb_frame_length * 8 + 22) / rate; /* ???????? */
+	tmp = ((frame_time * rate) - 22) / 8;
+	if (cb_frame_length != tmp)
+		frame_time++;
 
-	uFrameTime = uFrameTime * 4;    /* ??????? */
-	if (byPktType != PK_TYPE_11A)
-		uFrameTime += 6;     /* ?????? */
+	frame_time = frame_time * 4;    /* ??????? */
+	if (by_pkt_type != PK_TYPE_11A)
+		frame_time += 6;     /* ?????? */
 
-	return 20 + uFrameTime; /* ?????? */
+	return 20 + frame_time; /* ?????? */
 }
 
 /*
@@ -1749,9 +1749,9 @@ unsigned int BBuGetFrameTime(unsigned char byPreambleType,
  *
  * Parameters:
  *  In:
- *      priv         - Device Structure
- *      frame_length   - Tx Frame Length
- *      tx_rate           - Tx Rate
+ *      priv		- Device Structure
+ *      frame_length	- Tx Frame Length
+ *      tx_rate		- Tx Rate
  *  Out:
  *	struct vnt_phy_field *phy
  *		- pointer to Phy Length field
@@ -1899,34 +1899,34 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
  * Parameters:
  *  In:
  *      iobase      - I/O base address
- *      byBBAddr    - address of register in Baseband
+ *      by_bb_addr  - address of register in Baseband
  *  Out:
- *      pbyData     - data read
+ *      pby_data    - data read
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbReadEmbedded(struct vnt_private *priv,
-		     unsigned char byBBAddr, unsigned char *pbyData)
+bool bb_read_embedded(struct vnt_private *priv, unsigned char by_bb_addr,
+		      unsigned char *pby_data)
 {
 	void __iomem *iobase = priv->PortOffset;
 	unsigned short ww;
-	unsigned char byValue;
+	unsigned char by_value;
 
 	/* BB reg offset */
-	VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
+	VNSvOutPortB(iobase + MAC_REG_BBREGADR, by_bb_addr);
 
 	/* turn on REGR */
 	MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
 	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
-		if (byValue & BBREGCTL_DONE)
+		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &by_value);
+		if (by_value & BBREGCTL_DONE)
 			break;
 	}
 
 	/* get BB data */
-	VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData);
+	VNSvInPortB(iobase + MAC_REG_BBREGDATA, pby_data);
 
 	if (ww == W_MAX_TIMEOUT) {
 		pr_debug(" DBG_PORT80(0x30)\n");
@@ -1941,32 +1941,32 @@ bool BBbReadEmbedded(struct vnt_private *priv,
  * Parameters:
  *  In:
  *      iobase      - I/O base address
- *      byBBAddr    - address of register in Baseband
- *      byData      - data to write
+ *      by_bb_addr  - address of register in Baseband
+ *      by_data     - data to write
  *  Out:
  *      none
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbWriteEmbedded(struct vnt_private *priv,
-		      unsigned char byBBAddr, unsigned char byData)
+bool bb_write_embedded(struct vnt_private *priv, unsigned char by_bb_addr,
+		       unsigned char by_data)
 {
 	void __iomem *iobase = priv->PortOffset;
 	unsigned short ww;
-	unsigned char byValue;
+	unsigned char by_value;
 
 	/* BB reg offset */
-	VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
+	VNSvOutPortB(iobase + MAC_REG_BBREGADR, by_bb_addr);
 	/* set BB data */
-	VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData);
+	VNSvOutPortB(iobase + MAC_REG_BBREGDATA, by_data);
 
 	/* turn on BBREGCTL_REGW */
 	MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
 	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
-		if (byValue & BBREGCTL_DONE)
+		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &by_value);
+		if (by_value & BBREGCTL_DONE)
 			break;
 	}
 
@@ -1992,29 +1992,29 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  */
 
-bool BBbVT3253Init(struct vnt_private *priv)
+bool bb_vt3253_init(struct vnt_private *priv)
 {
-	bool bResult = true;
+	bool result = true;
 	int        ii;
 	void __iomem *iobase = priv->PortOffset;
-	unsigned char byRFType = priv->byRFType;
-	unsigned char byLocalID = priv->byLocalID;
+	unsigned char by_rf_type = priv->byRFType;
+	unsigned char by_local_id = priv->byLocalID;
 
-	if (byRFType == RF_RFMD2959) {
-		if (byLocalID <= REV_ID_VT3253_A1) {
+	if (by_rf_type == RF_RFMD2959) {
+		if (by_local_id <= REV_ID_VT3253_A1) {
 			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
-				bResult &= BBbWriteEmbedded(priv,
+				result &= bb_write_embedded(priv,
 					byVT3253InitTab_RFMD[ii][0],
 					byVT3253InitTab_RFMD[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-				bResult &= BBbWriteEmbedded(priv,
+				result &= bb_write_embedded(priv,
 					byVT3253B0_RFMD[ii][0],
 					byVT3253B0_RFMD[ii][1]);
 
 			for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; ii++)
-				bResult &= BBbWriteEmbedded(priv,
+				result &= bb_write_embedded(priv,
 					byVT3253B0_AGC4_RFMD2959[ii][0],
 					byVT3253B0_AGC4_RFMD2959[ii][1]);
 
@@ -2029,14 +2029,14 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[1] = -50;
 		priv->ldBmThreshold[2] = 0;
 		priv->ldBmThreshold[3] = 0;
-	} else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) {
+	} else if ((by_rf_type == RF_AIROHA) || (by_rf_type == RF_AL2230S)) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AIROHA2230[ii][0],
 				byVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
@@ -2047,14 +2047,14 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[1] = -48;
 		priv->ldBmThreshold[2] = 0;
 		priv->ldBmThreshold[3] = 0;
-	} else if (byRFType == RF_UW2451) {
+	} else if (by_rf_type == RF_UW2451) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_UW2451[ii][0],
 				byVT3253B0_UW2451[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AGC[ii][0],
 				byVT3253B0_AGC[ii][1]);
 
@@ -2069,9 +2069,9 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[1] = -50;
 		priv->ldBmThreshold[2] = 0;
 		priv->ldBmThreshold[3] = 0;
-	} else if (byRFType == RF_UW2452) {
+	} else if (by_rf_type == RF_UW2452) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_UW2451[ii][0],
 				byVT3253B0_UW2451[ii][1]);
 
@@ -2080,7 +2080,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
+		/*bResult &= bb_write_embedded(iobase,0x09,0x41);*/
 
 		/* Init ANT B select,
 		 * RX Config CR10 = 0x28->0x2A,
@@ -2088,23 +2088,23 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		 * make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
+		/*bResult &= bb_write_embedded(iobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
-		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+		result &= bb_write_embedded(priv, 0xd7, 0x06);
 
 		/* {{RobertYu:20050125, request by Jack */
-		bResult &= BBbWriteEmbedded(priv, 0x90, 0x20);
-		bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb);
+		result &= bb_write_embedded(priv, 0x90, 0x20);
+		result &= bb_write_embedded(priv, 0x97, 0xeb);
 		/* }} */
 
 		/* {{RobertYu:20050221, request by Jack */
-		bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00);
-		bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30);
+		result &= bb_write_embedded(priv, 0xa6, 0x00);
+		result &= bb_write_embedded(priv, 0xa8, 0x30);
 		/* }} */
-		bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58);
+		result &= bb_write_embedded(priv, 0xb0, 0x58);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x14;
@@ -2117,14 +2117,14 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[3] = 0;
 		/* }} RobertYu */
 
-	} else if (byRFType == RF_VT3226) {
+	} else if (by_rf_type == RF_VT3226) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AIROHA2230[ii][0],
 				byVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
@@ -2138,9 +2138,9 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		/* Fix VT3226 DFC system timing issue */
 		MACvSetRFLE_LatchBase(iobase);
 		/* {{ RobertYu: 20050104 */
-	} else if (byRFType == RF_AIROHA7230) {
+	} else if (by_rf_type == RF_AIROHA7230) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AIROHA2230[ii][0],
 				byVT3253B0_AIROHA2230[ii][1]);
 
@@ -2148,17 +2148,17 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		/* Init ANT B select,TX Config CR09 = 0x61->0x45,
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
-		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
+		/* bResult &= bb_write_embedded(iobase,0x09,0x41);*/
 		/* Init ANT B select,RX Config CR10 = 0x28->0x2A,
 		 * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
-		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
+		/* bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
-		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+		result &= bb_write_embedded(priv, 0xd7, 0x06);
 		/* }} */
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			result &= bb_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
@@ -2176,12 +2176,12 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->abyBBVGA[0] = 0x1C;
 	}
 
-	if (byLocalID > REV_ID_VT3253_A1) {
-		BBbWriteEmbedded(priv, 0x04, 0x7F);
-		BBbWriteEmbedded(priv, 0x0D, 0x01);
+	if (by_local_id > REV_ID_VT3253_A1) {
+		bb_write_embedded(priv, 0x04, 0x7F);
+		bb_write_embedded(priv, 0x0D, 0x01);
 	}
 
-	return bResult;
+	return result;
 }
 
 /*
@@ -2197,42 +2197,42 @@ bool BBbVT3253Init(struct vnt_private *priv)
  *
  */
 void
-BBvSetShortSlotTime(struct vnt_private *priv)
+bb_set_short_slot_time(struct vnt_private *priv)
 {
-	unsigned char byBBRxConf = 0;
-	unsigned char byBBVGA = 0;
+	unsigned char by_bb_rx_conf = 0;
+	unsigned char by_bb_vga = 0;
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+	bb_read_embedded(priv, 0x0A, &by_bb_rx_conf); /* CR10 */
 
 	if (priv->bShortSlotTime)
-		byBBRxConf &= 0xDF; /* 1101 1111 */
+		by_bb_rx_conf &= 0xDF; /* 1101 1111 */
 	else
-		byBBRxConf |= 0x20; /* 0010 0000 */
+		by_bb_rx_conf |= 0x20; /* 0010 0000 */
 
 	/* patch for 3253B0 Baseband with Cardbus module */
-	BBbReadEmbedded(priv, 0xE7, &byBBVGA);
-	if (byBBVGA == priv->abyBBVGA[0])
-		byBBRxConf |= 0x20; /* 0010 0000 */
+	bb_read_embedded(priv, 0xE7, &by_bb_vga);
+	if (by_bb_vga == priv->abyBBVGA[0])
+		by_bb_rx_conf |= 0x20; /* 0010 0000 */
 
-	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+	bb_write_embedded(priv, 0x0A, by_bb_rx_conf); /* CR10 */
 }
 
-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
+void bb_set_vga_gain_offset(struct vnt_private *priv, unsigned char by_data)
 {
-	unsigned char byBBRxConf = 0;
+	unsigned char by_bb_rx_conf = 0;
 
-	BBbWriteEmbedded(priv, 0xE7, byData);
+	bb_write_embedded(priv, 0xE7, by_data);
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+	bb_read_embedded(priv, 0x0A, &by_bb_rx_conf); /* CR10 */
 	/* patch for 3253B0 Baseband with Cardbus module */
-	if (byData == priv->abyBBVGA[0])
-		byBBRxConf |= 0x20; /* 0010 0000 */
+	if (by_data == priv->abyBBVGA[0])
+		by_bb_rx_conf |= 0x20; /* 0010 0000 */
 	else if (priv->bShortSlotTime)
-		byBBRxConf &= 0xDF; /* 1101 1111 */
+		by_bb_rx_conf &= 0xDF; /* 1101 1111 */
 	else
-		byBBRxConf |= 0x20; /* 0010 0000 */
-	priv->byBBVGACurrent = byData;
-	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+		by_bb_rx_conf |= 0x20; /* 0010 0000 */
+	priv->byBBVGACurrent = by_data;
+	bb_write_embedded(priv, 0x0A, by_bb_rx_conf); /* CR10 */
 }
 
 /*
@@ -2248,12 +2248,12 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
  *
  */
 void
-BBvSoftwareReset(struct vnt_private *priv)
+bb_software_reset(struct vnt_private *priv)
 {
-	BBbWriteEmbedded(priv, 0x50, 0x40);
-	BBbWriteEmbedded(priv, 0x50, 0);
-	BBbWriteEmbedded(priv, 0x9C, 0x01);
-	BBbWriteEmbedded(priv, 0x9C, 0);
+	bb_write_embedded(priv, 0x50, 0x40);
+	bb_write_embedded(priv, 0x50, 0);
+	bb_write_embedded(priv, 0x9C, 0x01);
+	bb_write_embedded(priv, 0x9C, 0);
 }
 
 /*
@@ -2269,13 +2269,13 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeON(struct vnt_private *priv)
+bb_power_save_mode_on(struct vnt_private *priv)
 {
-	unsigned char byOrgData;
+	unsigned char by_org_data;
 
-	BBbReadEmbedded(priv, 0x0D, &byOrgData);
-	byOrgData |= BIT(0);
-	BBbWriteEmbedded(priv, 0x0D, byOrgData);
+	bb_read_embedded(priv, 0x0D, &by_org_data);
+	by_org_data |= BIT(0);
+	bb_write_embedded(priv, 0x0D, by_org_data);
 }
 
 /*
@@ -2291,13 +2291,13 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeOFF(struct vnt_private *priv)
+bb_power_save_mode_off(struct vnt_private *priv)
 {
-	unsigned char byOrgData;
+	unsigned char by_org_data;
 
-	BBbReadEmbedded(priv, 0x0D, &byOrgData);
-	byOrgData &= ~(BIT(0));
-	BBbWriteEmbedded(priv, 0x0D, byOrgData);
+	bb_read_embedded(priv, 0x0D, &by_org_data);
+	by_org_data &= ~(BIT(0));
+	bb_write_embedded(priv, 0x0D, by_org_data);
 }
 
 /*
@@ -2305,8 +2305,8 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      priv		   - Device Structure
+ *      by_antenna_mode    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2315,22 +2315,22 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  */
 
 void
-BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+bb_set_tx_antenna_mode(struct vnt_private *priv, unsigned char by_antenna_mode)
 {
-	unsigned char byBBTxConf;
+	unsigned char by_bb_tx_conf;
 
-	BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */
-	if (byAntennaMode == ANT_DIVERSITY) {
+	bb_read_embedded(priv, 0x09, &by_bb_tx_conf); /* CR09 */
+	if (by_antenna_mode == ANT_DIVERSITY) {
 		/* bit 1 is diversity */
-		byBBTxConf |= 0x02;
-	} else if (byAntennaMode == ANT_A) {
+		by_bb_tx_conf |= 0x02;
+	} else if (by_antenna_mode == ANT_A) {
 		/* bit 2 is ANTSEL */
-		byBBTxConf &= 0xF9; /* 1111 1001 */
-	} else if (byAntennaMode == ANT_B) {
-		byBBTxConf &= 0xFD; /* 1111 1101 */
-		byBBTxConf |= 0x04;
+		by_bb_tx_conf &= 0xF9; /* 1111 1001 */
+	} else if (by_antenna_mode == ANT_B) {
+		by_bb_tx_conf &= 0xFD; /* 1111 1101 */
+		by_bb_tx_conf |= 0x04;
 	}
-	BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR09 */
+	bb_write_embedded(priv, 0x09, by_bb_tx_conf); /* CR09 */
 }
 
 /*
@@ -2338,8 +2338,8 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  *
  * Parameters:
  *  In:
- *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      priv		   - Device Structure
+ *      by_antenna_mode    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2348,25 +2348,25 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  */
 
 void
-BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+bb_set_rx_antenna_mode(struct vnt_private *priv, unsigned char by_antenna_mode)
 {
-	unsigned char byBBRxConf;
+	unsigned char by_bb_rx_conf;
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
-	if (byAntennaMode == ANT_DIVERSITY) {
-		byBBRxConf |= 0x01;
+	bb_read_embedded(priv, 0x0A, &by_bb_rx_conf); /* CR10 */
+	if (by_antenna_mode == ANT_DIVERSITY) {
+		by_bb_rx_conf |= 0x01;
 
-	} else if (byAntennaMode == ANT_A) {
-		byBBRxConf &= 0xFC; /* 1111 1100 */
-	} else if (byAntennaMode == ANT_B) {
-		byBBRxConf &= 0xFE; /* 1111 1110 */
-		byBBRxConf |= 0x02;
+	} else if (by_antenna_mode == ANT_A) {
+		by_bb_rx_conf &= 0xFC; /* 1111 1100 */
+	} else if (by_antenna_mode == ANT_B) {
+		by_bb_rx_conf &= 0xFE; /* 1111 1110 */
+		by_bb_rx_conf |= 0x02;
 	}
-	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+	bb_write_embedded(priv, 0x0A, by_bb_rx_conf); /* CR10 */
 }
 
 /*
- * Description: BBvSetDeepSleep
+ * Description: bb_set_deep_sleep
  *
  * Parameters:
  *  In:
@@ -2378,15 +2378,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  *
  */
 void
-BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+bb_set_deep_sleep(struct vnt_private *priv, unsigned char by_local_id)
 {
-	BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */
-	BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */
+	bb_write_embedded(priv, 0x0C, 0x17); /* CR12 */
+	bb_write_embedded(priv, 0x0D, 0xB9); /* CR13 */
 }
 
 void
-BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+bb_exit_deep_sleep(struct vnt_private *priv, unsigned char by_local_id)
 {
-	BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */
-	BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */
+	bb_write_embedded(priv, 0x0C, 0x00); /* CR12 */
+	bb_write_embedded(priv, 0x0D, 0x01); /* CR13 */
 }
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 0cc2e07829c5..dcb276888861 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -46,30 +46,32 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-unsigned int BBuGetFrameTime(unsigned char byPreambleType,
-			     unsigned char byPktType,
-			     unsigned int cbFrameLength,
-			     unsigned short wRate);
+unsigned int bb_get_frame_time(unsigned char by_preamble_type,
+			       unsigned char by_pkt_type,
+			       unsigned int cb_frame_length,
+			       unsigned short w_rate);
 
 void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
 
-bool BBbReadEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
-		     unsigned char *pbyData);
-bool BBbWriteEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
-		      unsigned char byData);
+bool bb_read_embedded(struct vnt_private *priv, unsigned char by_bb_addr,
+		      unsigned char *pby_data);
+bool bb_write_embedded(struct vnt_private *priv, unsigned char by_bb_addr,
+		       unsigned char by_data);
 
-void BBvSetShortSlotTime(struct vnt_private *priv);
-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData);
+void bb_set_short_slot_time(struct vnt_private *priv);
+void bb_set_vga_gain_offset(struct vnt_private *priv, unsigned char by_data);
 
 /* VT3253 Baseband */
-bool BBbVT3253Init(struct vnt_private *priv);
-void BBvSoftwareReset(struct vnt_private *priv);
-void BBvPowerSaveModeON(struct vnt_private *priv);
-void BBvPowerSaveModeOFF(struct vnt_private *priv);
-void BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
-void BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
-void BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
-void BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
+bool bb_vt3253_init(struct vnt_private *priv);
+void bb_software_reset(struct vnt_private *priv);
+void bb_power_save_mode_on(struct vnt_private *priv);
+void bb_power_save_mode_off(struct vnt_private *priv);
+void bb_set_tx_antenna_mode(struct vnt_private *priv,
+			    unsigned char by_antenna_mode);
+void bb_set_rx_antenna_mode(struct vnt_private *priv,
+			    unsigned char by_antenna_mode);
+void bb_set_deep_sleep(struct vnt_private *priv, unsigned char by_local_id);
+void bb_exit_deep_sleep(struct vnt_private *priv, unsigned char by_local_id);
 
 #endif /* __BASEBAND_H__ */
diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e65c9825ea5a..b43c96e47a2f 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -198,22 +198,22 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 			priv->abyBBVGA[0] = 0x20;
 			priv->abyBBVGA[2] = 0x10;
 			priv->abyBBVGA[3] = 0x10;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x1C)
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_write_embedded(priv, 0xE7, priv->abyBBVGA[0]);
 
 		} else if (priv->byRFType == RF_UW2452) {
 			MACvSetBBType(priv->PortOffset, BB_TYPE_11A);
 			priv->abyBBVGA[0] = 0x18;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x14) {
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
-				BBbWriteEmbedded(priv, 0xE1, 0x57);
+				bb_write_embedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_write_embedded(priv, 0xE1, 0x57);
 			}
 		} else {
 			MACvSetBBType(priv->PortOffset, BB_TYPE_11A);
 		}
-		BBbWriteEmbedded(priv, 0x88, 0x03);
+		bb_write_embedded(priv, 0x88, 0x03);
 		bySlot = C_SLOT_SHORT;
 		bySIFS = C_SIFS_A;
 		byDIFS = C_SIFS_A + 2 * C_SLOT_SHORT;
@@ -224,19 +224,19 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 			priv->abyBBVGA[0] = 0x1C;
 			priv->abyBBVGA[2] = 0x00;
 			priv->abyBBVGA[3] = 0x00;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x20)
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_write_embedded(priv, 0xE7, priv->abyBBVGA[0]);
 
 		} else if (priv->byRFType == RF_UW2452) {
 			priv->abyBBVGA[0] = 0x14;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x18) {
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
-				BBbWriteEmbedded(priv, 0xE1, 0xD3);
+				bb_write_embedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_write_embedded(priv, 0xE1, 0xD3);
 			}
 		}
-		BBbWriteEmbedded(priv, 0x88, 0x02);
+		bb_write_embedded(priv, 0x88, 0x02);
 		bySlot = C_SLOT_LONG;
 		bySIFS = C_SIFS_BG;
 		byDIFS = C_SIFS_BG + 2 * C_SLOT_LONG;
@@ -247,19 +247,19 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 			priv->abyBBVGA[0] = 0x1C;
 			priv->abyBBVGA[2] = 0x00;
 			priv->abyBBVGA[3] = 0x00;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x20)
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_write_embedded(priv, 0xE7, priv->abyBBVGA[0]);
 
 		} else if (priv->byRFType == RF_UW2452) {
 			priv->abyBBVGA[0] = 0x14;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x18) {
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
-				BBbWriteEmbedded(priv, 0xE1, 0xD3);
+				bb_write_embedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_write_embedded(priv, 0xE1, 0xD3);
 			}
 		}
-		BBbWriteEmbedded(priv, 0x88, 0x08);
+		bb_write_embedded(priv, 0x88, 0x08);
 		bySIFS = C_SIFS_BG;
 
 		if (priv->bShortSlotTime) {
@@ -310,7 +310,7 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 		priv->bySlot = bySlot;
 		VNSvOutPortB(priv->PortOffset + MAC_REG_SLOT, priv->bySlot);
 
-		BBvSetShortSlotTime(priv);
+		bb_set_short_slot_time(priv);
 	}
 	if (priv->byCWMaxMin != byCWMaxMin) {
 		priv->byCWMaxMin = byCWMaxMin;
@@ -431,7 +431,7 @@ void CARDbRadioPowerOff(struct vnt_private *priv)
 
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
 
-	BBvSetDeepSleep(priv, priv->byLocalID);
+	bb_set_deep_sleep(priv, priv->byLocalID);
 
 	priv->bRadioOff = true;
 	pr_debug("chester power off\n");
@@ -466,7 +466,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 		pr_debug("chester pbRadioOff\n");
 		return true; }
 
-	BBvExitDeepSleep(priv, priv->byLocalID);
+	bb_exit_deep_sleep(priv, priv->byLocalID);
 
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
 
@@ -659,7 +659,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	/* Set to Page1 */
 	MACvSelectPage1(priv->PortOffset);
 
-	/* RSPINF_b_1 */
+	/* RSPINF_1 */
 	vnt_get_phy_field(priv, 14,
 			  CARDwGetCCKControlRate(priv, RATE_1M),
 			  PK_TYPE_11B, &phy.field_read);
@@ -669,7 +669,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 
 	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_1, phy.field_write);
 
-	/* RSPINF_b_2 */
+	/* RSPINF_2 */
 	vnt_get_phy_field(priv, 14,
 			  CARDwGetCCKControlRate(priv, RATE_2M),
 			  PK_TYPE_11B, &phy.field_read);
@@ -678,7 +678,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 
 	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_2, phy.field_write);
 
-	/* RSPINF_b_5 */
+	/* RSPINF_5 */
 	vnt_get_phy_field(priv, 14,
 			  CARDwGetCCKControlRate(priv, RATE_5M),
 			  PK_TYPE_11B, &phy.field_read);
@@ -687,7 +687,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 
 	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_5, phy.field_write);
 
-	/* RSPINF_b_11 */
+	/* RSPINF_11 */
 	vnt_get_phy_field(priv, 14,
 			  CARDwGetCCKControlRate(priv, RATE_11M),
 			  PK_TYPE_11B, &phy.field_read);
@@ -696,42 +696,42 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 
 	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_11, phy.field_write);
 
-	/* RSPINF_a_6 */
+	/* RSPINF_6 */
 	s_vCalculateOFDMRParameter(RATE_6M,
 				   bb_type,
 				   &byTxRate,
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_6,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_9 */
+	/* RSPINF_9 */
 	s_vCalculateOFDMRParameter(RATE_9M,
 				   bb_type,
 				   &byTxRate,
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_9,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_12 */
+	/* RSPINF_12 */
 	s_vCalculateOFDMRParameter(RATE_12M,
 				   bb_type,
 				   &byTxRate,
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_12,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_18 */
+	/* RSPINF_18 */
 	s_vCalculateOFDMRParameter(RATE_18M,
 				   bb_type,
 				   &byTxRate,
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_18,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_24 */
+	/* RSPINF_24 */
 	s_vCalculateOFDMRParameter(RATE_24M,
 				   bb_type,
 				   &byTxRate,
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_24,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_36 */
+	/* RSPINF_36 */
 	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_36M),
 				   bb_type,
@@ -739,7 +739,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_36,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_48 */
+	/* RSPINF_48 */
 	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_48M),
 				   bb_type,
@@ -747,7 +747,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_48,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_54 */
+	/* RSPINF_54 */
 	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_54M),
 				   bb_type,
@@ -755,7 +755,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 				   &byRsvTime);
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_54,
 		     MAKEWORD(byTxRate, byRsvTime));
-	/* RSPINF_a_72 */
+	/* RSPINF_72 */
 	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_54M),
 				   bb_type,
diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index dec6f0f23b88..62a85c1ca6c4 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -173,7 +173,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 	    priv->byBBVGACurrent != priv->abyBBVGA[0]) {
 		priv->byBBVGACurrent = priv->abyBBVGA[0];
 
-		BBvSetVGAGainOffset(priv, priv->byBBVGACurrent);
+		bb_set_vga_gain_offset(priv, priv->byBBVGACurrent);
 	}
 
 	/* clear NAV */
@@ -195,7 +195,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 	if (priv->bEnablePSMode)
 		RFvWriteWakeProgSyn(priv, priv->byRFType, ch->hw_value);
 
-	BBvSoftwareReset(priv);
+	bb_software_reset(priv);
 
 	if (priv->byLocalID > REV_ID_VT3253_B1) {
 		unsigned long flags;
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 5c86cc60eb5c..5889023d19c4 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -21,14 +21,14 @@
  *   device_alloc_rx_buf - rx buffer pre-allocated function
  *   device_free_rx_buf - free rx buffer function
  *   device_free_tx_buf - free tx buffer function
- *   device_init_rd0_ring- initial rd dma0 ring
- *   device_init_rd1_ring- initial rd dma1 ring
- *   device_init_td0_ring- initial tx dma0 ring buffer
- *   device_init_td1_ring- initial tx dma1 ring buffer
- *   device_init_registers- initial MAC & BBP & RF internal registers.
- *   device_init_rings- initial tx/rx ring buffer
- *   device_free_rings- free all allocated ring buffer
- *   device_tx_srv- tx interrupt service function
+ *   device_init_rd0_ring - initial rd dma0 ring
+ *   device_init_rd1_ring - initial rd dma1 ring
+ *   device_init_td0_ring - initial tx dma0 ring buffer
+ *   device_init_td1_ring - initial tx dma1 ring buffer
+ *   device_init_registers - initial MAC & BBP & RF internal registers.
+ *   device_init_rings - initial tx/rx ring buffer
+ *   device_free_rings - free all allocated ring buffer
+ *   device_tx_srv - tx interrupt service function
  *
  * Revision History:
  */
@@ -202,7 +202,7 @@ static void device_init_registers(struct vnt_private *priv)
 	unsigned char byOFDMPwrdBm = 0;
 
 	MACbShutdown(priv);
-	BBvSoftwareReset(priv);
+	bb_software_reset(priv);
 
 	/* Do MACbSoftwareReset in MACvInitialize */
 	MACbSoftwareReset(priv);
@@ -279,8 +279,8 @@ static void device_init_registers(struct vnt_private *priv)
 	}
 
 	/* Set initial antenna mode */
-	BBvSetTxAntennaMode(priv, priv->byTxAntennaMode);
-	BBvSetRxAntennaMode(priv, priv->byRxAntennaMode);
+	bb_set_tx_antenna_mode(priv, priv->byTxAntennaMode);
+	bb_set_rx_antenna_mode(priv, priv->byRxAntennaMode);
 
 	/* zonetype initial */
 	priv->byOriginalZonetype = priv->abyEEPROM[EEP_OFS_ZONETYPE];
@@ -357,16 +357,16 @@ static void device_init_registers(struct vnt_private *priv)
 	VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
 
 	/* initialize BBP registers */
-	BBbVT3253Init(priv);
+	bb_vt3253_init(priv);
 
 	if (priv->bUpdateBBVGA) {
 		priv->byBBVGACurrent = priv->abyBBVGA[0];
 		priv->byBBVGANew = priv->byBBVGACurrent;
-		BBvSetVGAGainOffset(priv, priv->abyBBVGA[0]);
+		bb_set_vga_gain_offset(priv, priv->abyBBVGA[0]);
 	}
 
-	BBvSetRxAntennaMode(priv, priv->byRxAntennaMode);
-	BBvSetTxAntennaMode(priv, priv->byTxAntennaMode);
+	bb_set_rx_antenna_mode(priv, priv->byRxAntennaMode);
+	bb_set_tx_antenna_mode(priv, priv->byTxAntennaMode);
 
 	/* Set BB and packet type at the same time. */
 	/* Set Short Slot Time, xIFS, and RSPINF. */
@@ -1001,7 +1001,7 @@ static void vnt_check_bb_vga(struct vnt_private *priv)
 
 	if (priv->uBBVGADiffCount == 1) {
 		/* first VGA diff gain */
-		BBvSetVGAGainOffset(priv, priv->byBBVGANew);
+		bb_set_vga_gain_offset(priv, priv->byBBVGANew);
 
 		dev_dbg(&priv->pcid->dev,
 			"First RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\n",
@@ -1017,7 +1017,7 @@ static void vnt_check_bb_vga(struct vnt_private *priv)
 			priv->byBBVGACurrent,
 			(int)priv->uBBVGADiffCount);
 
-		BBvSetVGAGainOffset(priv, priv->byBBVGANew);
+		bb_set_vga_gain_offset(priv, priv->byBBVGANew);
 	}
 }
 
@@ -1445,7 +1445,7 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 			priv->bShortSlotTime = false;
 
 		CARDbSetPhyParameter(priv, priv->byBBType);
-		BBvSetVGAGainOffset(priv, priv->abyBBVGA[0]);
+		bb_set_vga_gain_offset(priv, priv->abyBBVGA[0]);
 	}
 
 	if (changed & BSS_CHANGED_TXPOWER)
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index d6ca6e5551a7..747d79265a7c 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -419,7 +419,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
-	BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value for Calibration */
+	bb_power_save_mode_off(priv); /* RobertYu:20050106, have DC value for Calibration */
 
 	for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]);
@@ -443,7 +443,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 							 SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
 
-	BBvPowerSaveModeON(priv); /* RobertYu:20050106 */
+	bb_power_save_mode_on(priv); /* RobertYu:20050106 */
 
 	/* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
 	/* 3-wire control for power saving mode */
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..b2da4bd609a7 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -165,11 +165,14 @@ s_uGetTxRsvTime(
 {
 	unsigned int uDataTime, uAckTime;
 
-	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
+	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType,
+				      cbFrameLength, wRate);
 	if (byPktType == PK_TYPE_11B) /* llb,CCK mode */
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopCCKBasicRate);
+		uAckTime = bb_get_frame_time(pDevice->byPreambleType,
+					     byPktType, 14,
+					     (unsigned short)pDevice->byTopCCKBasicRate);
 	else /* 11g 2.4G OFDM mode & 11a 5G OFDM mode */
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
+		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
 
 	if (bNeedAck)
 		return uDataTime + pDevice->uSIFS + uAckTime;
@@ -199,20 +202,22 @@ s_uGetRTSCTSRsvTime(
 
 	uRrvTime = uRTSTime = uCTSTime = uAckTime = uDataTime = 0;
 
-	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wCurrentRate);
+	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType,
+				      cbFrameLength, wCurrentRate);
 	if (byRTSRsvType == 0) { /* RTSTxRrvTime_bb */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uRTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType,
+					     20, pDevice->byTopCCKBasicRate);
+		uCTSTime = uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 	} else if (byRTSRsvType == 1) { /* RTSTxRrvTime_ba, only in 2.4GHZ */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uRTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 	} else if (byRTSRsvType == 2) { /* RTSTxRrvTime_aa */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uRTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
+		uCTSTime = uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		uRrvTime = uCTSTime + uAckTime + uDataTime + 2 * pDevice->uSIFS;
 		return cpu_to_le16((u16)uRrvTime);
 	}
@@ -248,7 +253,7 @@ s_uGetDataDuration(
 	case DATADUR_B:    /* DATADUR_B */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -260,7 +265,7 @@ s_uGetDataDuration(
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -271,7 +276,7 @@ s_uGetDataDuration(
 	case DATADUR_A:    /* DATADUR_A */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -283,7 +288,7 @@ s_uGetDataDuration(
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -294,7 +299,7 @@ s_uGetDataDuration(
 	case DATADUR_A_F0:    /* DATADUR_A_F0 */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -324,7 +329,7 @@ s_uGetDataDuration(
 			}
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -335,7 +340,7 @@ s_uGetDataDuration(
 	case DATADUR_A_F1:    /* DATADUR_A_F1 */
 		if (((uMACfragNum == 1)) || bLastFrag) { /* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -364,7 +369,7 @@ s_uGetDataDuration(
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 			}
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -396,17 +401,17 @@ s_uGetRTSCTSDuration(
 
 	switch (byDurType) {
 	case RTSDUR_BB:    /* RTSDuration_bb */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_BA:    /* RTSDuration_ba */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_AA:    /* RTSDuration_aa */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
@@ -415,7 +420,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_BA_F0: /* RTSDuration_ba_f0 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -424,7 +429,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_AA_F0: /* RTSDuration_aa_f0 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -433,7 +438,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_BA_F1: /* RTSDuration_ba_f1 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -442,7 +447,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_AA_F1: /* RTSDuration_aa_f1 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -529,7 +534,7 @@ s_uFillDataHead(
 			return buf->duration_a;
 		} else {
 			/* Auto Fallback */
-			struct vnt_tx_datahead_g_fb *buf = pTxDataHead;
+			struct vnt_tx_datahead_fb *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
 			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
 					  byPktType, &buf->a);
@@ -541,11 +546,11 @@ s_uFillDataHead(
 			buf->duration_a = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
 									      wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->duration_b = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, PK_TYPE_11B,
-									       pDevice->byTopCCKBasicRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_a_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
-										  wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_a_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
-										 wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+									      pDevice->byTopCCKBasicRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+			buf->duration_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
+									       wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+			buf->duration_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
+									       wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 
 			buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, wCurrentRate);
 			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
@@ -555,7 +560,7 @@ s_uFillDataHead(
 	} else if (byPktType == PK_TYPE_11A) {
 		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
-			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
+			struct vnt_tx_datahead_fb *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
 			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
 					  byPktType, &buf->a);
@@ -683,7 +688,7 @@ s_vFillRTSHead(
 			ether_addr_copy(buf->data.ra, hdr->addr1);
 			ether_addr_copy(buf->data.ta, hdr->addr2);
 		} else {
-			struct vnt_rts_g_fb *buf = pvRTS;
+			struct vnt_rts_fb *buf = pvRTS;
 			/* Get SignalField, ServiceField & Length */
 			vnt_get_phy_field(pDevice, uRTSFrameLen,
 					  pDevice->byTopCCKBasicRate,
@@ -759,7 +764,7 @@ s_vFillRTSHead(
 			ether_addr_copy(buf->data.ra, hdr->addr1);
 			ether_addr_copy(buf->data.ta, hdr->addr2);
 		} else {
-			struct vnt_rts_a_fb *buf = pvRTS;
+			struct vnt_rts_fb *buf = pvRTS;
 			/* Get SignalField, ServiceField & Length */
 			vnt_get_phy_field(pDevice, uRTSFrameLen,
 					  pDevice->byTopOFDMBasicRate,
@@ -1110,9 +1115,9 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 				pvRTS = (void *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) + cbMICHDR);
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) +
-					cbMICHDR + sizeof(struct vnt_rts_g_fb));
+					cbMICHDR + sizeof(struct vnt_rts_fb));
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_rts) +
-					cbMICHDR + sizeof(struct vnt_rts_g_fb) + sizeof(struct vnt_tx_datahead_g_fb);
+					cbMICHDR + sizeof(struct vnt_rts_fb) + sizeof(struct vnt_tx_datahead_fb);
 			} else { /* RTS_needless */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
@@ -1121,7 +1126,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 				pvTxDataHd = (void  *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts) +
 					cbMICHDR + sizeof(struct vnt_cts_fb));
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_cts) +
-					cbMICHDR + sizeof(struct vnt_cts_fb) + sizeof(struct vnt_tx_datahead_g_fb);
+					cbMICHDR + sizeof(struct vnt_cts_fb) + sizeof(struct vnt_tx_datahead_fb);
 			}
 		} /* Auto Fall Back */
 	} else {/* 802.11a/b packet */
@@ -1153,9 +1158,9 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 				pvRTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize +
-					sizeof(struct vnt_rrv_time_ab) + cbMICHDR + sizeof(struct vnt_rts_a_fb));
+					sizeof(struct vnt_rrv_time_ab) + cbMICHDR + sizeof(struct vnt_rts_fb));
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_ab) +
-					cbMICHDR + sizeof(struct vnt_rts_a_fb) + sizeof(struct vnt_tx_datahead_a_fb);
+					cbMICHDR + sizeof(struct vnt_rts_fb) + sizeof(struct vnt_tx_datahead_fb);
 			} else { /* RTS_needless */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
 				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
@@ -1163,7 +1168,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
 				cbHeaderLength = wTxBufSize + sizeof(struct vnt_rrv_time_ab) +
-					cbMICHDR + sizeof(struct vnt_tx_datahead_a_fb);
+					cbMICHDR + sizeof(struct vnt_tx_datahead_fb);
 			}
 		} /* Auto Fall Back */
 	}
-- 
2.24.1


