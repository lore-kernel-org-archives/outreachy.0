X-GM-THRID: 6808322643446464512
X-Received: by 2002:a92:994a:: with SMTP id p71mr6657316ili.25.1585186143801;
        Wed, 25 Mar 2020 18:29:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:b22:: with SMTP id c2ls574538jab.1.gmail; Wed, 25
 Mar 2020 18:29:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuJ5EOL2PJ4pjZsPP+1QA7b0v4WuhOpPUXN7KXUDlHFTZEw/Vq9qNEIV0NclYc+HzBZ+9tM
X-Received: by 2002:a02:9288:: with SMTP id b8mr5726878jah.59.1585186142199;
        Wed, 25 Mar 2020 18:29:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585186142; cv=none;
        d=google.com; s=arc-20160816;
        b=dg4ybGieQLZ+7J4VKnf96W7MfQ06REsaAX1IutX3qr8BZYi03yQg2sYwrxm9gCEDOh
         W32Ybh0RGTg14bKGS/OQrK1Ha5+Y/Zs4S2SJtn/YmdrHzWQOjfuL9aMBU8WHc8LU7lzC
         qv2ZNV1hQBSLS1AwXJO6VzCPoBN+tXcE2uWVH/u87IuIF234adCdv7Y71tut8jaCnqZO
         Zo89KELkPiw/9tzkzSFic43I6T0oidPwQtSAhNoZoJB+Aaz4R3RqHh1yTeAoVOQSQNr9
         lI7R2DVWbkXlUkztPOBffoFrUZ1O/bzzzDQnKQgwnhcbB8mDb3z6wnQSNMLSDMbVyiZk
         oXaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Ae8ds8uAmgFtNsOYt7ydpa1dDxggZDuCGROkvwfPBG0=;
        b=rDsyIlnSpIwTCzslRDfEYSDrQizNLuQ3+YvaA36eINe1MMgm6zQ6erYYsg3lCvLASq
         N+84IX8/rO1Vse1RH8JgYulqFCK081iz0dVZQ55Cp9x2pGyfRVrCsFABX9Z7bu/3i5pf
         gXOpUZNATwjBebmSzJ/rk4+3Sc0PxSHvhKS9Nm40V+AolFkZaYY+5tTukrXSbS8cC75J
         s3a6GDvdXGb0NYCSkXh7GkB/cpTjGDZPpxQrISANeW5KynMlvxS7Z/OMHx6MNRHTXj1b
         NY0xUaQ4w4XacbdJ828hiPJafR9+uRHRBgB0KE56/3a6EQHk/IvIHVum/USPtNSm3ElJ
         vhsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qPW+GYz/";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a3si94869iog.2.2020.03.25.18.29.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 18:29:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qPW+GYz/";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id x7so2058228pgh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 18:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ae8ds8uAmgFtNsOYt7ydpa1dDxggZDuCGROkvwfPBG0=;
        b=qPW+GYz/GrXreghKdy0fFMS3ux2YDCdxxX5StBETuOmqE7LOyOrZSDhxEmPCVZnhzQ
         rrCKUO1xpFv0Zqv33XTNvxgnwk2pAaeVvT4L55jhRUgEAHg8bM3VlhMuy3HmBt8ih+OZ
         5LN61nJwIe9MrlCUxhHUyZ2e0qbxtd6zCmpZ7PQqmuSZSjymmhspwldeL7xyp+MnVtDM
         BY2qx/Qy+xvsVWiO4XEdX0lDD/WaWkLn/O5Tmj8oaPLE1LKRfach3fdDaaNoeQl/oypr
         0qbVYKdxCUoFpzsb/PlZJ3pDFL7dqDQ97x4YSDLC5AYc9NwQO8rqvbBXUvOAPkVGLRkP
         nMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ae8ds8uAmgFtNsOYt7ydpa1dDxggZDuCGROkvwfPBG0=;
        b=tzbFsETRR4g1/PtFs8mrp8QpBEFffONiCbnVOXT6BgM2V8KXt6da/lMNp7f8qQ02h9
         qHBgjw8q+WZw7esnW2dIYFVVNy9Vn66xFGyVGTlv87HJ+3/gLc+Q9TakDpD8C2lhy10d
         ApntDubf6kH4CQWDpRLjnOedVJm7O1++fkcn5HuBfVAg6wIjUOb6jg5pJjFmWvC4ZJKt
         H1yVn6D1ngRPmEmbpHs1JN91ILMdJ6GH5RSBBv5sOtkizyH3gBFnHgSob0FblrMt1Qsm
         DCcAV0lmg+LX3mUOEWB8cUyu9l1MOdEzdJ22m/tlvMV8G3fdBA1L004d3CnUBG4YwTNl
         gnGA==
X-Gm-Message-State: ANhLgQ1PX9ree2sgf2OOJB3VhWtrjse6tSzzRv8oLkL5SWyAJwVVcQW7
	kIAL2k2/oESt++XqhI6+kFE=
X-Received: by 2002:a63:cc43:: with SMTP id q3mr6072879pgi.63.1585186140794;
        Wed, 25 Mar 2020 18:29:00 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id k5sm316111pgl.3.2020.03.25.18.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 18:29:00 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Outreachy][PATCH] staging: vt6655: Replace camel case variable names.
Date: Wed, 25 Mar 2020 18:28:50 -0700
Message-Id: <20200326012850.94416-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaces camel case variable names with snake case in baseband.h and
dependencies.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/baseband.c    | 317 ++++++++++++++-------------
 drivers/staging/vt6655/baseband.h    |  38 ++--
 drivers/staging/vt6655/card.c        |  48 ++--
 drivers/staging/vt6655/channel.c     |   4 +-
 drivers/staging/vt6655/device_main.c |  20 +-
 drivers/staging/vt6655/rf.c          |   4 +-
 drivers/staging/vt6655/rxtx.c        |  62 +++---
 7 files changed, 255 insertions(+), 238 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index b4cdc0b7fee7..9909b9d51f7a 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -12,12 +12,12 @@
  * Date: Aug.22, 2002
  *
  * Functions:
- *      BBuGetFrameTime        - Calculate data frame transmitting time
+ *      bb_u_get_frame_time        - Calculate data frame transmitting time
  *      BBvCalculateParameter   - Calculate PhyLength, PhyService and Phy Signal
  *                               parameter for baseband Tx
- *      BBbReadEmbedded         - Embedded read baseband register via MAC
- *      BBbWriteEmbedded        - Embedded write baseband register via MAC
- *      BBbVT3253Init          - VIA VT3253 baseband chip init code
+ *      bb_b_read_embedded         - Embedded read baseband register via MAC
+ *      bb_b_write_embedded        - Embedded write baseband register via MAC
+ *      bb_b_vt3253_init          - VIA VT3253 baseband chip init code
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
@@ -1695,53 +1695,54 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
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
+unsigned int bb_u_get_frame_time(unsigned char by_preamble_type,
+				 unsigned char by_pkt_type,
+				 unsigned int cb_frame_length,
+				 unsigned short w_rate)
 {
-	unsigned int uFrameTime;
-	unsigned int uPreamble;
-	unsigned int uTmp;
-	unsigned int uRateIdx = (unsigned int)wRate;
-	unsigned int uRate = 0;
+	unsigned int u_frame_time;
+	unsigned int u_preamble;
+	unsigned int u_tmp;
+	unsigned int u_rate_idx = (unsigned int)w_rate;
+	unsigned int u_rate = 0;
 
-	if (uRateIdx > RATE_54M)
+	if (u_rate_idx > RATE_54M)
 		return 0;
 
-	uRate = (unsigned int)awcFrameTime[uRateIdx];
+	u_rate = (unsigned int)awcFrameTime[u_rate_idx];
 
-	if (uRateIdx <= 3) {          /* CCK mode */
-		if (byPreambleType == 1) /* Short */
-			uPreamble = 96;
+	if (u_rate_idx <= 3) {          /* CCK mode */
+		if (by_preamble_type == 1) /* Short */
+			u_preamble = 96;
 		else
-			uPreamble = 192;
+			u_preamble = 192;
 
-		uFrameTime = (cbFrameLength * 80) / uRate;  /* ????? */
-		uTmp = (uFrameTime * uRate) / 80;
-		if (cbFrameLength != uTmp)
-			uFrameTime++;
+		u_frame_time = (cb_frame_length * 80) / u_rate;  /* ????? */
+		u_tmp = (u_frame_time * u_rate) / 80;
+		if (cb_frame_length != u_tmp)
+			u_frame_time++;
 
-		return uPreamble + uFrameTime;
+		return u_preamble + u_frame_time;
 	}
-	uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* ???????? */
-	uTmp = ((uFrameTime * uRate) - 22) / 8;
-	if (cbFrameLength != uTmp)
-		uFrameTime++;
+	u_frame_time = (cb_frame_length * 8 + 22) / u_rate; /* ???????? */
+	u_tmp = ((u_frame_time * u_rate) - 22) / 8;
+	if (cb_frame_length != u_tmp)
+		u_frame_time++;
 
-	uFrameTime = uFrameTime * 4;    /* ??????? */
-	if (byPktType != PK_TYPE_11A)
-		uFrameTime += 6;     /* ?????? */
+	u_frame_time = u_frame_time * 4;    /* ??????? */
+	if (by_pkt_type != PK_TYPE_11A)
+		u_frame_time += 6;     /* ?????? */
 
-	return 20 + uFrameTime; /* ?????? */
+	return 20 + u_frame_time; /* ?????? */
 }
 
 /*
@@ -1899,34 +1900,34 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
  * Parameters:
  *  In:
  *      iobase      - I/O base address
- *      byBBAddr    - address of register in Baseband
+ *      by_bb_addr    - address of register in Baseband
  *  Out:
- *      pbyData     - data read
+ *      pby_data     - data read
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbReadEmbedded(struct vnt_private *priv,
-		     unsigned char byBBAddr, unsigned char *pbyData)
+bool bb_b_read_embedded(struct vnt_private *priv,
+			unsigned char by_bb_addr, unsigned char *pby_data)
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
@@ -1941,32 +1942,32 @@ bool BBbReadEmbedded(struct vnt_private *priv,
  * Parameters:
  *  In:
  *      iobase      - I/O base address
- *      byBBAddr    - address of register in Baseband
- *      byData      - data to write
+ *      by_bb_addr    - address of register in Baseband
+ *      by_data      - data to write
  *  Out:
  *      none
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbWriteEmbedded(struct vnt_private *priv,
-		      unsigned char byBBAddr, unsigned char byData)
+bool bb_b_write_embedded(struct vnt_private *priv,
+			 unsigned char by_bb_addr, unsigned char by_data)
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
 
@@ -1992,29 +1993,29 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  */
 
-bool BBbVT3253Init(struct vnt_private *priv)
+bool bb_b_vt3253_init(struct vnt_private *priv)
 {
-	bool bResult = true;
+	bool b_result = true;
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
+				b_result &= bb_b_write_embedded(priv,
 					byVT3253InitTab_RFMD[ii][0],
 					byVT3253InitTab_RFMD[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-				bResult &= BBbWriteEmbedded(priv,
+				b_result &= bb_b_write_embedded(priv,
 					byVT3253B0_RFMD[ii][0],
 					byVT3253B0_RFMD[ii][1]);
 
 			for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; ii++)
-				bResult &= BBbWriteEmbedded(priv,
+				b_result &= bb_b_write_embedded(priv,
 					byVT3253B0_AGC4_RFMD2959[ii][0],
 					byVT3253B0_AGC4_RFMD2959[ii][1]);
 
@@ -2029,14 +2030,14 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[1] = -50;
 		priv->ldBmThreshold[2] = 0;
 		priv->ldBmThreshold[3] = 0;
-	} else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) {
+	} else if ((by_rf_type == RF_AIROHA) || (by_rf_type == RF_AL2230S)) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AIROHA2230[ii][0],
 				byVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
@@ -2047,14 +2048,14 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[1] = -48;
 		priv->ldBmThreshold[2] = 0;
 		priv->ldBmThreshold[3] = 0;
-	} else if (byRFType == RF_UW2451) {
+	} else if (by_rf_type == RF_UW2451) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_UW2451[ii][0],
 				byVT3253B0_UW2451[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AGC[ii][0],
 				byVT3253B0_AGC[ii][1]);
 
@@ -2069,9 +2070,9 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[1] = -50;
 		priv->ldBmThreshold[2] = 0;
 		priv->ldBmThreshold[3] = 0;
-	} else if (byRFType == RF_UW2452) {
+	} else if (by_rf_type == RF_UW2452) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_UW2451[ii][0],
 				byVT3253B0_UW2451[ii][1]);
 
@@ -2080,7 +2081,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
+		/*bResult &= bb_b_write_embedded(iobase,0x09,0x41);*/
 
 		/* Init ANT B select,
 		 * RX Config CR10 = 0x28->0x2A,
@@ -2088,23 +2089,23 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		 * make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
+		/*bResult &= bb_b_write_embedded(iobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
-		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+		b_result &= bb_b_write_embedded(priv, 0xd7, 0x06);
 
 		/* {{RobertYu:20050125, request by Jack */
-		bResult &= BBbWriteEmbedded(priv, 0x90, 0x20);
-		bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb);
+		b_result &= bb_b_write_embedded(priv, 0x90, 0x20);
+		b_result &= bb_b_write_embedded(priv, 0x97, 0xeb);
 		/* }} */
 
 		/* {{RobertYu:20050221, request by Jack */
-		bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00);
-		bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30);
+		b_result &= bb_b_write_embedded(priv, 0xa6, 0x00);
+		b_result &= bb_b_write_embedded(priv, 0xa8, 0x30);
 		/* }} */
-		bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58);
+		b_result &= bb_b_write_embedded(priv, 0xb0, 0x58);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x14;
@@ -2117,14 +2118,14 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[3] = 0;
 		/* }} RobertYu */
 
-	} else if (byRFType == RF_VT3226) {
+	} else if (by_rf_type == RF_VT3226) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AIROHA2230[ii][0],
 				byVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
@@ -2138,9 +2139,9 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		/* Fix VT3226 DFC system timing issue */
 		MACvSetRFLE_LatchBase(iobase);
 		/* {{ RobertYu: 20050104 */
-	} else if (byRFType == RF_AIROHA7230) {
+	} else if (by_rf_type == RF_AIROHA7230) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AIROHA2230[ii][0],
 				byVT3253B0_AIROHA2230[ii][1]);
 
@@ -2148,17 +2149,17 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		/* Init ANT B select,TX Config CR09 = 0x61->0x45,
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
-		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
+		/*bResult &= bb_b_write_embedded(iobase,0x09,0x41);*/
 		/* Init ANT B select,RX Config CR10 = 0x28->0x2A,
 		 * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
 		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
-		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+		b_result &= bb_b_write_embedded(priv, 0xd7, 0x06);
 		/* }} */
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
+			b_result &= bb_b_write_embedded(priv,
 				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
@@ -2176,12 +2177,12 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->abyBBVGA[0] = 0x1C;
 	}
 
-	if (byLocalID > REV_ID_VT3253_A1) {
-		BBbWriteEmbedded(priv, 0x04, 0x7F);
-		BBbWriteEmbedded(priv, 0x0D, 0x01);
+	if (by_local_id > REV_ID_VT3253_A1) {
+		bb_b_write_embedded(priv, 0x04, 0x7F);
+		bb_b_write_embedded(priv, 0x0D, 0x01);
 	}
 
-	return bResult;
+	return b_result;
 }
 
 /*
@@ -2197,42 +2198,42 @@ bool BBbVT3253Init(struct vnt_private *priv)
  *
  */
 void
-BBvSetShortSlotTime(struct vnt_private *priv)
+bb_v_set_short_slot_time(struct vnt_private *priv)
 {
-	unsigned char byBBRxConf = 0;
-	unsigned char byBBVGA = 0;
+	unsigned char by_bb_rx_conf = 0;
+	unsigned char by_bb_vga = 0;
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+	bb_b_read_embedded(priv, 0x0A, &by_bb_rx_conf); /* CR10 */
 
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
+	bb_b_read_embedded(priv, 0xE7, &by_bb_vga);
+	if (by_bb_vga == priv->abyBBVGA[0])
+		by_bb_rx_conf |= 0x20; /* 0010 0000 */
 
-	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+	bb_b_write_embedded(priv, 0x0A, by_bb_rx_conf); /* CR10 */
 }
 
-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
+void bb_v_set_vga_gain_offset(struct vnt_private *priv, unsigned char by_data)
 {
-	unsigned char byBBRxConf = 0;
+	unsigned char by_bb_rx_conf = 0;
 
-	BBbWriteEmbedded(priv, 0xE7, byData);
+	bb_b_write_embedded(priv, 0xE7, by_data);
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+	bb_b_read_embedded(priv, 0x0A, &by_bb_rx_conf); /* CR10 */
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
+	bb_b_write_embedded(priv, 0x0A, by_bb_rx_conf); /* CR10 */
 }
 
 /*
@@ -2248,12 +2249,12 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
  *
  */
 void
-BBvSoftwareReset(struct vnt_private *priv)
+bb_v_software_reset(struct vnt_private *priv)
 {
-	BBbWriteEmbedded(priv, 0x50, 0x40);
-	BBbWriteEmbedded(priv, 0x50, 0);
-	BBbWriteEmbedded(priv, 0x9C, 0x01);
-	BBbWriteEmbedded(priv, 0x9C, 0);
+	bb_b_write_embedded(priv, 0x50, 0x40);
+	bb_b_write_embedded(priv, 0x50, 0);
+	bb_b_write_embedded(priv, 0x9C, 0x01);
+	bb_b_write_embedded(priv, 0x9C, 0);
 }
 
 /*
@@ -2269,13 +2270,13 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeON(struct vnt_private *priv)
+bb_v_power_save_mode_on(struct vnt_private *priv)
 {
-	unsigned char byOrgData;
+	unsigned char by_org_data;
 
-	BBbReadEmbedded(priv, 0x0D, &byOrgData);
-	byOrgData |= BIT(0);
-	BBbWriteEmbedded(priv, 0x0D, byOrgData);
+	bb_b_read_embedded(priv, 0x0D, &by_org_data);
+	by_org_data |= BIT(0);
+	bb_b_write_embedded(priv, 0x0D, by_org_data);
 }
 
 /*
@@ -2291,13 +2292,13 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeOFF(struct vnt_private *priv)
+bb_v_power_save_mode_off(struct vnt_private *priv)
 {
-	unsigned char byOrgData;
+	unsigned char by_org_data;
 
-	BBbReadEmbedded(priv, 0x0D, &byOrgData);
-	byOrgData &= ~(BIT(0));
-	BBbWriteEmbedded(priv, 0x0D, byOrgData);
+	bb_b_read_embedded(priv, 0x0D, &by_org_data);
+	by_org_data &= ~(BIT(0));
+	bb_b_write_embedded(priv, 0x0D, by_org_data);
 }
 
 /*
@@ -2306,7 +2307,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  * Parameters:
  *  In:
  *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      by_antenna_mode    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2315,22 +2316,23 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  */
 
 void
-BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+bb_v_set_tx_antenna_mode(struct vnt_private *priv,
+			 unsigned char by_antenna_mode)
 {
-	unsigned char byBBTxConf;
+	unsigned char by_bb_tx_conf;
 
-	BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */
-	if (byAntennaMode == ANT_DIVERSITY) {
+	bb_b_read_embedded(priv, 0x09, &by_bb_tx_conf); /* CR09 */
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
+	bb_b_write_embedded(priv, 0x09, by_bb_tx_conf); /* CR09 */
 }
 
 /*
@@ -2339,7 +2341,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  * Parameters:
  *  In:
  *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      by_antenna_mode    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2348,25 +2350,26 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  */
 
 void
-BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+bb_v_set_rx_antenna_mode(struct vnt_private *priv,
+			 unsigned char by_antenna_mode)
 {
-	unsigned char byBBRxConf;
+	unsigned char by_bb_rx_conf;
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
-	if (byAntennaMode == ANT_DIVERSITY) {
-		byBBRxConf |= 0x01;
+	bb_b_read_embedded(priv, 0x0A, &by_bb_rx_conf); /* CR10 */
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
+	bb_b_write_embedded(priv, 0x0A, by_bb_rx_conf); /* CR10 */
 }
 
 /*
- * Description: BBvSetDeepSleep
+ * Description: bb_v_set_deep_sleep
  *
  * Parameters:
  *  In:
@@ -2378,15 +2381,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  *
  */
 void
-BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+bb_v_set_deep_sleep(struct vnt_private *priv, unsigned char by_local_id)
 {
-	BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */
-	BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */
+	bb_b_write_embedded(priv, 0x0C, 0x17); /* CR12 */
+	bb_b_write_embedded(priv, 0x0D, 0xB9); /* CR13 */
 }
 
 void
-BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+bb_v_exit_deep_sleep(struct vnt_private *priv, unsigned char by_local_id)
 {
-	BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */
-	BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */
+	bb_b_write_embedded(priv, 0x0C, 0x00); /* CR12 */
+	bb_b_write_embedded(priv, 0x0D, 0x01); /* CR13 */
 }
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 0cc2e07829c5..6ef176a676e4 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -46,30 +46,32 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-unsigned int BBuGetFrameTime(unsigned char byPreambleType,
-			     unsigned char byPktType,
-			     unsigned int cbFrameLength,
-			     unsigned short wRate);
+unsigned int bb_u_get_frame_time(unsigned char by_preamble_type,
+				 unsigned char by_pkt_type,
+				 unsigned int cb_frame_length,
+				 unsigned short w_rate);
 
 void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
 
-bool BBbReadEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
-		     unsigned char *pbyData);
-bool BBbWriteEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
-		      unsigned char byData);
+bool bb_b_read_embedded(struct vnt_private *priv, unsigned char by_bb_addr,
+			unsigned char *pby_data);
+bool bb_b_write_embedded(struct vnt_private *priv, unsigned char by_bb_addr,
+			 unsigned char by_data);
 
-void BBvSetShortSlotTime(struct vnt_private *priv);
-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData);
+void bb_v_set_short_slot_time(struct vnt_private *priv);
+void bb_v_set_vga_gain_offset(struct vnt_private *priv, unsigned char by_data);
 
 /* VT3253 Baseband */
-bool BBbVT3253Init(struct vnt_private *priv);
-void BBvSoftwareReset(struct vnt_private *priv);
-void BBvPowerSaveModeON(struct vnt_private *priv);
-void BBvPowerSaveModeOFF(struct vnt_private *priv);
-void BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
-void BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
-void BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
-void BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
+bool bb_b_vt3253_init(struct vnt_private *priv);
+void bb_v_software_reset(struct vnt_private *priv);
+void bb_v_power_save_mode_on(struct vnt_private *priv);
+void bb_v_power_save_mode_off(struct vnt_private *priv);
+void bb_v_set_tx_antenna_mode(struct vnt_private *priv,
+			      unsigned char by_antenna_mode);
+void bb_v_set_rx_antenna_mode(struct vnt_private *priv,
+			      unsigned char by_antenna_mode);
+void bb_v_set_deep_sleep(struct vnt_private *priv, unsigned char by_local_id);
+void bb_v_exit_deep_sleep(struct vnt_private *priv, unsigned char by_local_id);
 
 #endif /* __BASEBAND_H__ */
diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e65c9825ea5a..f399591f5c24 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -198,22 +198,24 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 			priv->abyBBVGA[0] = 0x20;
 			priv->abyBBVGA[2] = 0x10;
 			priv->abyBBVGA[3] = 0x10;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_b_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x1C)
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_b_write_embedded(priv, 0xE7,
+						    priv->abyBBVGA[0]);
 
 		} else if (priv->byRFType == RF_UW2452) {
 			MACvSetBBType(priv->PortOffset, BB_TYPE_11A);
 			priv->abyBBVGA[0] = 0x18;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_b_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x14) {
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
-				BBbWriteEmbedded(priv, 0xE1, 0x57);
+				bb_b_write_embedded(priv, 0xE7,
+						    priv->abyBBVGA[0]);
+				bb_b_write_embedded(priv, 0xE1, 0x57);
 			}
 		} else {
 			MACvSetBBType(priv->PortOffset, BB_TYPE_11A);
 		}
-		BBbWriteEmbedded(priv, 0x88, 0x03);
+		bb_b_write_embedded(priv, 0x88, 0x03);
 		bySlot = C_SLOT_SHORT;
 		bySIFS = C_SIFS_A;
 		byDIFS = C_SIFS_A + 2 * C_SLOT_SHORT;
@@ -224,19 +226,21 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 			priv->abyBBVGA[0] = 0x1C;
 			priv->abyBBVGA[2] = 0x00;
 			priv->abyBBVGA[3] = 0x00;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_b_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x20)
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_b_write_embedded(priv, 0xE7,
+						    priv->abyBBVGA[0]);
 
 		} else if (priv->byRFType == RF_UW2452) {
 			priv->abyBBVGA[0] = 0x14;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_b_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x18) {
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
-				BBbWriteEmbedded(priv, 0xE1, 0xD3);
+				bb_b_write_embedded(priv, 0xE7,
+						    priv->abyBBVGA[0]);
+				bb_b_write_embedded(priv, 0xE1, 0xD3);
 			}
 		}
-		BBbWriteEmbedded(priv, 0x88, 0x02);
+		bb_b_write_embedded(priv, 0x88, 0x02);
 		bySlot = C_SLOT_LONG;
 		bySIFS = C_SIFS_BG;
 		byDIFS = C_SIFS_BG + 2 * C_SLOT_LONG;
@@ -247,19 +251,21 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 			priv->abyBBVGA[0] = 0x1C;
 			priv->abyBBVGA[2] = 0x00;
 			priv->abyBBVGA[3] = 0x00;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_b_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x20)
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
+				bb_b_write_embedded(priv, 0xE7,
+						    priv->abyBBVGA[0]);
 
 		} else if (priv->byRFType == RF_UW2452) {
 			priv->abyBBVGA[0] = 0x14;
-			BBbReadEmbedded(priv, 0xE7, &byData);
+			bb_b_read_embedded(priv, 0xE7, &byData);
 			if (byData == 0x18) {
-				BBbWriteEmbedded(priv, 0xE7, priv->abyBBVGA[0]);
-				BBbWriteEmbedded(priv, 0xE1, 0xD3);
+				bb_b_write_embedded(priv, 0xE7,
+						    priv->abyBBVGA[0]);
+				bb_b_write_embedded(priv, 0xE1, 0xD3);
 			}
 		}
-		BBbWriteEmbedded(priv, 0x88, 0x08);
+		bb_b_write_embedded(priv, 0x88, 0x08);
 		bySIFS = C_SIFS_BG;
 
 		if (priv->bShortSlotTime) {
@@ -310,7 +316,7 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 		priv->bySlot = bySlot;
 		VNSvOutPortB(priv->PortOffset + MAC_REG_SLOT, priv->bySlot);
 
-		BBvSetShortSlotTime(priv);
+		bb_v_set_short_slot_time(priv);
 	}
 	if (priv->byCWMaxMin != byCWMaxMin) {
 		priv->byCWMaxMin = byCWMaxMin;
@@ -431,7 +437,7 @@ void CARDbRadioPowerOff(struct vnt_private *priv)
 
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
 
-	BBvSetDeepSleep(priv, priv->byLocalID);
+	bb_v_set_deep_sleep(priv, priv->byLocalID);
 
 	priv->bRadioOff = true;
 	pr_debug("chester power off\n");
@@ -466,7 +472,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 		pr_debug("chester pbRadioOff\n");
 		return true; }
 
-	BBvExitDeepSleep(priv, priv->byLocalID);
+	bb_v_exit_deep_sleep(priv, priv->byLocalID);
 
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
 
diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index dec6f0f23b88..ae71bf044e91 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -173,7 +173,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 	    priv->byBBVGACurrent != priv->abyBBVGA[0]) {
 		priv->byBBVGACurrent = priv->abyBBVGA[0];
 
-		BBvSetVGAGainOffset(priv, priv->byBBVGACurrent);
+		bb_v_set_vga_gain_offset(priv, priv->byBBVGACurrent);
 	}
 
 	/* clear NAV */
@@ -195,7 +195,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 	if (priv->bEnablePSMode)
 		RFvWriteWakeProgSyn(priv, priv->byRFType, ch->hw_value);
 
-	BBvSoftwareReset(priv);
+	bb_v_software_reset(priv);
 
 	if (priv->byLocalID > REV_ID_VT3253_B1) {
 		unsigned long flags;
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 5c86cc60eb5c..e153d0ae82cc 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -202,7 +202,7 @@ static void device_init_registers(struct vnt_private *priv)
 	unsigned char byOFDMPwrdBm = 0;
 
 	MACbShutdown(priv);
-	BBvSoftwareReset(priv);
+	bb_v_software_reset(priv);
 
 	/* Do MACbSoftwareReset in MACvInitialize */
 	MACbSoftwareReset(priv);
@@ -279,8 +279,8 @@ static void device_init_registers(struct vnt_private *priv)
 	}
 
 	/* Set initial antenna mode */
-	BBvSetTxAntennaMode(priv, priv->byTxAntennaMode);
-	BBvSetRxAntennaMode(priv, priv->byRxAntennaMode);
+	bb_v_set_tx_antenna_mode(priv, priv->byTxAntennaMode);
+	bb_v_set_rx_antenna_mode(priv, priv->byRxAntennaMode);
 
 	/* zonetype initial */
 	priv->byOriginalZonetype = priv->abyEEPROM[EEP_OFS_ZONETYPE];
@@ -357,16 +357,16 @@ static void device_init_registers(struct vnt_private *priv)
 	VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
 
 	/* initialize BBP registers */
-	BBbVT3253Init(priv);
+	bb_b_vt3253_init(priv);
 
 	if (priv->bUpdateBBVGA) {
 		priv->byBBVGACurrent = priv->abyBBVGA[0];
 		priv->byBBVGANew = priv->byBBVGACurrent;
-		BBvSetVGAGainOffset(priv, priv->abyBBVGA[0]);
+		bb_v_set_vga_gain_offset(priv, priv->abyBBVGA[0]);
 	}
 
-	BBvSetRxAntennaMode(priv, priv->byRxAntennaMode);
-	BBvSetTxAntennaMode(priv, priv->byTxAntennaMode);
+	bb_v_set_rx_antenna_mode(priv, priv->byRxAntennaMode);
+	bb_v_set_tx_antenna_mode(priv, priv->byTxAntennaMode);
 
 	/* Set BB and packet type at the same time. */
 	/* Set Short Slot Time, xIFS, and RSPINF. */
@@ -1001,7 +1001,7 @@ static void vnt_check_bb_vga(struct vnt_private *priv)
 
 	if (priv->uBBVGADiffCount == 1) {
 		/* first VGA diff gain */
-		BBvSetVGAGainOffset(priv, priv->byBBVGANew);
+		bb_v_set_vga_gain_offset(priv, priv->byBBVGANew);
 
 		dev_dbg(&priv->pcid->dev,
 			"First RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\n",
@@ -1017,7 +1017,7 @@ static void vnt_check_bb_vga(struct vnt_private *priv)
 			priv->byBBVGACurrent,
 			(int)priv->uBBVGADiffCount);
 
-		BBvSetVGAGainOffset(priv, priv->byBBVGANew);
+		bb_v_set_vga_gain_offset(priv, priv->byBBVGANew);
 	}
 }
 
@@ -1445,7 +1445,7 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 			priv->bShortSlotTime = false;
 
 		CARDbSetPhyParameter(priv, priv->byBBType);
-		BBvSetVGAGainOffset(priv, priv->abyBBVGA[0]);
+		bb_v_set_vga_gain_offset(priv, priv->abyBBVGA[0]);
 	}
 
 	if (changed & BSS_CHANGED_TXPOWER)
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index d6ca6e5551a7..42e1e241cb19 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -419,7 +419,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
-	BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value for Calibration */
+	bb_v_power_save_mode_off(priv); /* RobertYu:20050106, have DC value for Calibration */
 
 	for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]);
@@ -443,7 +443,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 							 SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
 
-	BBvPowerSaveModeON(priv); /* RobertYu:20050106 */
+	bb_v_power_save_mode_on(priv); /* RobertYu:20050106 */
 
 	/* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
 	/* 3-wire control for power saving mode */
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..34d173c2f33f 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -165,11 +165,14 @@ s_uGetTxRsvTime(
 {
 	unsigned int uDataTime, uAckTime;
 
-	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
+	uDataTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType,
+					cbFrameLength, wRate);
 	if (byPktType == PK_TYPE_11B) /* llb,CCK mode */
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopCCKBasicRate);
+		uAckTime = bb_u_get_frame_time(pDevice->byPreambleType,
+					       byPktType, 14,
+					       (unsigned short)pDevice->byTopCCKBasicRate);
 	else /* 11g 2.4G OFDM mode & 11a 5G OFDM mode */
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
+		uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
 
 	if (bNeedAck)
 		return uDataTime + pDevice->uSIFS + uAckTime;
@@ -199,20 +202,23 @@ s_uGetRTSCTSRsvTime(
 
 	uRrvTime = uRTSTime = uCTSTime = uAckTime = uDataTime = 0;
 
-	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wCurrentRate);
+	uDataTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType,
+					cbFrameLength, wCurrentRate);
 	if (byRTSRsvType == 0) { /* RTSTxRrvTime_bb */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uRTSTime = bb_u_get_frame_time(pDevice->byPreambleType,
+					       byPktType, 20,
+					       pDevice->byTopCCKBasicRate);
+		uCTSTime = uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 	} else if (byRTSRsvType == 1) { /* RTSTxRrvTime_ba, only in 2.4GHZ */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uRTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 	} else if (byRTSRsvType == 2) { /* RTSTxRrvTime_aa */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uRTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
+		uCTSTime = uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		uRrvTime = uCTSTime + uAckTime + uDataTime + 2 * pDevice->uSIFS;
 		return cpu_to_le16((u16)uRrvTime);
 	}
@@ -248,7 +254,7 @@ s_uGetDataDuration(
 	case DATADUR_B:    /* DATADUR_B */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -260,7 +266,7 @@ s_uGetDataDuration(
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -271,7 +277,7 @@ s_uGetDataDuration(
 	case DATADUR_A:    /* DATADUR_A */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -283,7 +289,7 @@ s_uGetDataDuration(
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -294,7 +300,7 @@ s_uGetDataDuration(
 	case DATADUR_A_F0:    /* DATADUR_A_F0 */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -324,7 +330,7 @@ s_uGetDataDuration(
 			}
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -335,7 +341,7 @@ s_uGetDataDuration(
 	case DATADUR_A_F1:    /* DATADUR_A_F1 */
 		if (((uMACfragNum == 1)) || bLastFrag) { /* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -364,7 +370,7 @@ s_uGetDataDuration(
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 			}
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
 				return pDevice->uSIFS + uNextPktTime;
@@ -396,17 +402,17 @@ s_uGetRTSCTSDuration(
 
 	switch (byDurType) {
 	case RTSDUR_BB:    /* RTSDuration_bb */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_BA:    /* RTSDuration_ba */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_AA:    /* RTSDuration_aa */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
@@ -415,7 +421,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_BA_F0: /* RTSDuration_ba_f0 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -424,7 +430,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_AA_F0: /* RTSDuration_aa_f0 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -433,7 +439,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_BA_F1: /* RTSDuration_ba_f1 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
@@ -442,7 +448,7 @@ s_uGetRTSCTSDuration(
 		break;
 
 	case RTSDUR_AA_F1: /* RTSDuration_aa_f1 */
-		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = bb_u_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-- 
2.24.1


