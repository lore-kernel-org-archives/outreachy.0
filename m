X-GM-THRID: 6664915605845442560
X-Received: by 2002:a5d:6846:: with SMTP id o6mr1266064wrw.16.1551796590277;
        Tue, 05 Mar 2019 06:36:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2089:: with SMTP id g131ls381916wmg.9.gmail; Tue, 05 Mar
 2019 06:36:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZgPkW+DGPxyh2+f2Q/wqjFOKIsWDGJok/5E/7Bo8P8jh2lLoiwWP+IVLzzTMGmAbnpnoa
X-Received: by 2002:a1c:1f90:: with SMTP id f138mr341702wmf.3.1551796589379;
        Tue, 05 Mar 2019 06:36:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551796589; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9KjBtxITChJTzFVaYjbiSQUrHc00+8FZo0rifkVe5sEtsGnB3GgPEkm+Epa4HbBVv
         a+NGdtzYw7WtKgeX0qMWJf2kbD9CCSmLkQ1lQPwCQfapARbyiyNuGuqaE3YP/sLRsuUq
         LfBet/76/Sd4fpOQxnL8V4IojwoO98cGBw0OrnLzbZIAKiuirQyKZBH3pf5dXrDssRI1
         GpulYGiw3qqbjPv0qVV0ECw9JEE/L6oNzLpxKeMPbwwhda7dTL05UCbBPDFQZod64IbJ
         mETunHvZ8xctnACuS8cuzGkscYRDD38C9ZRGLUJfYdoZrZ1uo1VuOyH6kwztaANmaZt8
         hO+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=c6fElUI48ujdu72GtMRKcD0zfdw9fcVZrOo6kVDiNA8=;
        b=jmns2JAnHBCnvm/AccFZK+w3R72kAHq4QQrfFyPa8x3QpeyHUXp6GNIlXA01nyuvqM
         Q870enPtQuPXIxAN6lJaAYqR2rLf0h/yIQuBQvlJH1t13+5tpbvRcLsOMoOdRTQPSV+O
         CwbqhJZGj32cg5rb2RGnKlYSYc7GsLuLeSw09V/c6nY0xjA1dKzoE7Xs/qbb7MOcXEk3
         CcbDIkHlQtX6t9GU1CWQO7k864UcciRzUKMWt1PMgZwm8V/4TyFl2bdRB1LT4astmQ+l
         XQWhDl830ebWqrmvwsCsP+uLG6wAA1+AjD7EExJOTbinkwd7XzLPdDfKo8mgapr1BL29
         wr3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYPo8wl8;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m1si553755wrj.4.2019.03.05.06.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 06:36:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYPo8wl8;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id y15so2803970wma.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 06:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c6fElUI48ujdu72GtMRKcD0zfdw9fcVZrOo6kVDiNA8=;
        b=sYPo8wl82CDOOQw5sAmFiQ+o0QKdv1XSj7/UeizXL6Lfk/zgXo9L+I0IOYCcZf68eR
         cc5wIXJhcsSzeYA7qwaPs4dYWt7dKJRpnBzq2btPyKG/Klt3pLaKhxhVj6LgGUIZMNID
         50vxPhBRIN+aP3BxnL1MvETUS6jsaaex8NSjNi8LIWYzK73FMFwNr0jS25JhZEk52oBf
         h1dRClkVBendAnuLsLFYklmRyBYM8iQI6bztlqOmD8KxAq0Jmp2EagBc8s0OKPdG9Hoe
         b9GrkxHHu2U666x6Z/JR6H8WUhfjr4eI0MKEW5XndImi0NhoynjudnOGJup1Ijzj3oiZ
         mSUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c6fElUI48ujdu72GtMRKcD0zfdw9fcVZrOo6kVDiNA8=;
        b=PwpDsUwIqcN6VkJO3rc/yaFHHL5TcuhFLPxL4oYA77HuLi1Gj57xMuYICcn3j2R8vn
         XZUOAtMjr7cM/wVYbE/p+2LNuGguti0gPa4b00HjaDaUlrwR4BnbH3YnZHTiwDHFPvqd
         mxuW/49kUF2mdf0GaUw0vPHriU4q8ts0e/lXULqXGTHZYCy94mNvtCx6aHjN/l761Yx7
         H+VPOeDLbkxzWYmrTxyvA2m5fO1ZuBV25d3QipSaJDTOghvxh1ck3u1tVphSpVXGS51C
         Ci/x8+Gc3vrDtwMoKFMrUePo0B8lIIgGMcLsUsuzQssFy/Kc0BYYdCoABcA7E0gM+cqV
         21bw==
X-Gm-Message-State: APjAAAXym2pqF4/9Yu533kB7X+NsV4SWLSQ/EPdxpJJKQeehrRpT02R5
	G8TMpzGnsCVGAgmVpB4+hQ9b5oU=
X-Received: by 2002:a1c:16:: with SMTP id 22mr2754818wma.91.1551796588356;
        Tue, 05 Mar 2019 06:36:28 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id w3sm9966004wrl.22.2019.03.05.06.36.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 06:36:27 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Avoid camelcase
Date: Tue,  5 Mar 2019 14:32:41 +0000
Message-Id: <20190305143241.14118-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix coding style issues detected by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 522 +++++++++++++++---------------
 drivers/staging/vt6655/baseband.h |  36 +--
 2 files changed, 279 insertions(+), 279 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index b4cdc0b7fee7..05b15dcd1ea0 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -12,20 +12,20 @@
  * Date: Aug.22, 2002
  *
  * Functions:
- *      BBuGetFrameTime        - Calculate data frame transmitting time
+ *      BBUGETFRAMETIME        - Calculate data frame transmitting time
  *      BBvCalculateParameter   - Calculate PhyLength, PhyService and Phy Signal
  *                               parameter for baseband Tx
- *      BBbReadEmbedded         - Embedded read baseband register via MAC
- *      BBbWriteEmbedded        - Embedded write baseband register via MAC
- *      BBbVT3253Init          - VIA VT3253 baseband chip init code
+ *      BBBREADEMBEDDED         - Embedded read baseband register via MAC
+ *      BBBWRITEEMBEDDED        - Embedded write baseband register via MAC
+ *      BBBVT3253INIT          - VIA VT3253 baseband chip init code
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
  *      08-07-2003 Bryan YC Fan:  Add MAXIM2827/2825 and RFMD2959 support.
- *      08-26-2003 Kyle Hsu    :  Modify BBuGetFrameTime() and
+ *      08-26-2003 Kyle Hsu    :  Modify BBUGETFRAMETIME() and
  *				  BBvCalculateParameter().
  *                                cancel the setting of MAC_REG_SOFTPWRCTL on
- *				  BBbVT3253Init().
+ *				  BBBVT3253INIT().
  *                                Add the comments.
  *      09-01-2003 Bryan YC Fan:  RF & BB tables updated.
  *                                Modified BBvLoopbackOn & BBvLoopbackOff().
@@ -54,7 +54,7 @@
 /*---------------------  Static Variables  --------------------------*/
 
 #define CB_VT3253_INIT_FOR_RFMD 446
-static const unsigned char byVT3253InitTab_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
+static const unsigned char BYVT3253INITTAB_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
 	{0x00, 0x30},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -504,7 +504,7 @@ static const unsigned char byVT3253InitTab_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
 };
 
 #define CB_VT3253B0_INIT_FOR_RFMD 256
-static const unsigned char byVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = {
+static const unsigned char BYVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = {
 	{0x00, 0x31},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -766,7 +766,7 @@ static const unsigned char byVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = {
 #define CB_VT3253B0_AGC_FOR_RFMD2959 195
 /* For RFMD2959 */
 static
-unsigned char byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
+unsigned char BYVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
 	{0xF0, 0x00},
 	{0xF1, 0x3E},
 	{0xF0, 0x80},
@@ -967,7 +967,7 @@ unsigned char byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
 #define CB_VT3253B0_INIT_FOR_AIROHA2230 256
 /* For AIROHA */
 static
-unsigned char byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
+unsigned char BYVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
 	{0x00, 0x31},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -1228,7 +1228,7 @@ unsigned char byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
 
 #define CB_VT3253B0_INIT_FOR_UW2451 256
 /* For UW2451 */
-static unsigned char byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
+static unsigned char BYVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
 	{0x00, 0x31},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -1489,7 +1489,7 @@ static unsigned char byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
 
 #define CB_VT3253B0_AGC 193
 /* For AIROHA */
-static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
+static unsigned char BYVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
 	{0xF0, 0x00},
 	{0xF1, 0x00},
 	{0xF0, 0x80},
@@ -1685,7 +1685,7 @@ static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
 	{0xF0, 0x00},
 };
 
-static const unsigned short awcFrameTime[MAX_RATE] = {
+static const unsigned short AWCFRAMETIME[MAX_RATE] = {
 		10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };
 
@@ -1695,53 +1695,53 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
  *
  * Parameters:
  *  In:
- *      byPreambleType  - Preamble Type
- *      byPktType        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
- *      cbFrameLength   - Baseband Type
- *      wRate           - Tx Rate
+ *      BYPREAMBLETYPE  - Preamble Type
+ *      BYPKTTYPE        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
+ *      CBFRAMELENGTH   - Baseband Type
+ *      WRATE           - Tx Rate
  *  Out:
  *
  * Return Value: FrameTime
  *
  */
-unsigned int BBuGetFrameTime(unsigned char byPreambleType,
-			     unsigned char byPktType,
-			     unsigned int cbFrameLength, unsigned short wRate)
+unsigned int BBUGETFRAMETIME(unsigned char BYPREAMBLETYPE,
+			     unsigned char BYPKTTYPE,
+			     unsigned int CBFRAMELENGTH, unsigned short WRATE)
 {
-	unsigned int uFrameTime;
-	unsigned int uPreamble;
-	unsigned int uTmp;
-	unsigned int uRateIdx = (unsigned int)wRate;
-	unsigned int uRate = 0;
+	unsigned int UFRAMETIME;
+	unsigned int UPREAMBLE;
+	unsigned int UTMP;
+	unsigned int URATEIDX = (unsigned int)WRATE;
+	unsigned int URATE = 0;
 
-	if (uRateIdx > RATE_54M)
+	if (URATEIDX > RATE_54M)
 		return 0;
 
-	uRate = (unsigned int)awcFrameTime[uRateIdx];
+	URATE = (unsigned int)AWCFRAMETIME[URATEIDX];
 
-	if (uRateIdx <= 3) {          /* CCK mode */
-		if (byPreambleType == 1) /* Short */
-			uPreamble = 96;
-		else
-			uPreamble = 192;
+		if (URATEIDX <= 3) {          /* CCK mode */
+			if (BYPREAMBLETYPE == 1) /* Short */
+				UPREAMBLE = 96;
+			else
+				UPREAMBLE = 192;
 
-		uFrameTime = (cbFrameLength * 80) / uRate;  /* ????? */
-		uTmp = (uFrameTime * uRate) / 80;
-		if (cbFrameLength != uTmp)
-			uFrameTime++;
+			UFRAMETIME = (CBFRAMELENGTH * 80) / URATE;  /* ????? */
+			UTMP = (UFRAMETIME * URATE) / 80;
+			if (CBFRAMELENGTH != UTMP)
+				UFRAMETIME++;
 
-		return uPreamble + uFrameTime;
-	}
-	uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* ???????? */
-	uTmp = ((uFrameTime * uRate) - 22) / 8;
-	if (cbFrameLength != uTmp)
-		uFrameTime++;
+			return UPREAMBLE + UFRAMETIME;
+		}
+		UFRAMETIME = (CBFRAMELENGTH * 8 + 22) / URATE; /* ???????? */
+		UTMP = ((UFRAMETIME * URATE) - 22) / 8;
+	if (CBFRAMELENGTH != UTMP)
+		UFRAMETIME++;
 
-	uFrameTime = uFrameTime * 4;    /* ??????? */
-	if (byPktType != PK_TYPE_11A)
-		uFrameTime += 6;     /* ?????? */
+	UFRAMETIME = UFRAMETIME * 4;    /* ??????? */
+	if (BYPKTTYPE != PK_TYPE_11A)
+		UFRAMETIME += 6;     /* ?????? */
 
-	return 20 + uFrameTime; /* ?????? */
+	return 20 + UFRAMETIME; /* ?????? */
 }
 
 /*
@@ -1768,7 +1768,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	u32 count = 0;
 	u32 tmp;
 	int ext_bit;
-	u8 preamble_type = priv->byPreambleType;
+	u8 preamble_type = priv->BYPREAMBLETYPE;
 
 	bit_count = frame_length * 8;
 	ext_bit = false;
@@ -1899,34 +1899,34 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
  * Parameters:
  *  In:
  *      iobase      - I/O base address
- *      byBBAddr    - address of register in Baseband
+ *      BYBBADDR    - address of register in Baseband
  *  Out:
- *      pbyData     - data read
+ *      PBYDATA     - data read
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbReadEmbedded(struct vnt_private *priv,
-		     unsigned char byBBAddr, unsigned char *pbyData)
+bool BBBREADEMBEDDED(struct vnt_private *priv,
+		     unsigned char BYBBADDR, unsigned char *PBYDATA)
 {
-	void __iomem *iobase = priv->PortOffset;
+	void __iomem *iobase = priv->PORTOFFSET;
 	unsigned short ww;
-	unsigned char byValue;
+	unsigned char BYVALUE;
 
 	/* BB reg offset */
-	VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
+	VNSVOUTPORTB(iobase + MAC_REG_BBREGADR, BYBBADDR);
 
 	/* turn on REGR */
-	MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
+	MACVREGBITSON(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
 	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
-		if (byValue & BBREGCTL_DONE)
+		VNSVINPORTB(iobase + MAC_REG_BBREGCTL, &BYVALUE);
+		if (BYVALUE & BBREGCTL_DONE)
 			break;
 	}
 
 	/* get BB data */
-	VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData);
+	VNSVINPORTB(iobase + MAC_REG_BBREGDATA, PBYDATA);
 
 	if (ww == W_MAX_TIMEOUT) {
 		pr_debug(" DBG_PORT80(0x30)\n");
@@ -1941,32 +1941,32 @@ bool BBbReadEmbedded(struct vnt_private *priv,
  * Parameters:
  *  In:
  *      iobase      - I/O base address
- *      byBBAddr    - address of register in Baseband
- *      byData      - data to write
+ *      BYBBADDR    - address of register in Baseband
+ *      BYDATA      - data to write
  *  Out:
  *      none
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbWriteEmbedded(struct vnt_private *priv,
-		      unsigned char byBBAddr, unsigned char byData)
+bool BBBWRITEEMBEDDED(struct vnt_private *priv,
+		      unsigned char BYBBADDR, unsigned char BYDATA)
 {
-	void __iomem *iobase = priv->PortOffset;
+	void __iomem *iobase = priv->PORTOFFSET;
 	unsigned short ww;
-	unsigned char byValue;
+	unsigned char BYVALUE;
 
 	/* BB reg offset */
-	VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
+	VNSVOUTPORTB(iobase + MAC_REG_BBREGADR, BYBBADDR);
 	/* set BB data */
-	VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData);
+	VNSVOUTPORTB(iobase + MAC_REG_BBREGDATA, BYDATA);
 
 	/* turn on BBREGCTL_REGW */
-	MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
+	MACVREGBITSON(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
 	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
-		if (byValue & BBREGCTL_DONE)
+		VNSVINPORTB(iobase + MAC_REG_BBREGCTL, &BYVALUE);
+		if (BYVALUE & BBREGCTL_DONE)
 			break;
 	}
 
@@ -1984,7 +1984,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *  In:
  *      iobase      - I/O base address
  *      byRevId     - Revision ID
- *      byRFType    - RF type
+ *      BYRFTYPE    - RF type
  *  Out:
  *      none
  *
@@ -1992,95 +1992,95 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  */
 
-bool BBbVT3253Init(struct vnt_private *priv)
+bool BBBVT3253INIT(struct vnt_private *priv)
 {
-	bool bResult = true;
+	bool BRESULT = true;
 	int        ii;
-	void __iomem *iobase = priv->PortOffset;
-	unsigned char byRFType = priv->byRFType;
-	unsigned char byLocalID = priv->byLocalID;
+	void __iomem *iobase = priv->PORTOFFSET;
+	unsigned char BYRFTYPE = priv->BYRFTYPE;
+	unsigned char BYLOCALID = priv->BYLOCALID;
 
-	if (byRFType == RF_RFMD2959) {
-		if (byLocalID <= REV_ID_VT3253_A1) {
+	if (BYRFTYPE == RF_RFMD2959) {
+		if (BYLOCALID <= REV_ID_VT3253_A1) {
 			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
-				bResult &= BBbWriteEmbedded(priv,
-					byVT3253InitTab_RFMD[ii][0],
-					byVT3253InitTab_RFMD[ii][1]);
+				BRESULT &= BBBWRITEEMBEDDED(priv,
+					BYVT3253INITTAB_RFMD[ii][0],
+					BYVT3253INITTAB_RFMD[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-				bResult &= BBbWriteEmbedded(priv,
-					byVT3253B0_RFMD[ii][0],
-					byVT3253B0_RFMD[ii][1]);
+				BRESULT &= BBBWRITEEMBEDDED(priv,
+					BYVT3253B0_RFMD[ii][0],
+					BYVT3253B0_RFMD[ii][1]);
 
 			for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; ii++)
-				bResult &= BBbWriteEmbedded(priv,
-					byVT3253B0_AGC4_RFMD2959[ii][0],
-					byVT3253B0_AGC4_RFMD2959[ii][1]);
+				BRESULT &= BBBWRITEEMBEDDED(priv,
+					BYVT3253B0_AGC4_RFMD2959[ii][0],
+					BYVT3253B0_AGC4_RFMD2959[ii][1]);
 
-			VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);
-			MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
+			VNSVOUTPORTD(iobase + MAC_REG_ITRTMSET, 0x23);
+			MACVREGBITSON(iobase, MAC_REG_PAPEDELAY, BIT(0));
 		}
-		priv->abyBBVGA[0] = 0x18;
-		priv->abyBBVGA[1] = 0x0A;
-		priv->abyBBVGA[2] = 0x0;
-		priv->abyBBVGA[3] = 0x0;
-		priv->ldBmThreshold[0] = -70;
-		priv->ldBmThreshold[1] = -50;
-		priv->ldBmThreshold[2] = 0;
-		priv->ldBmThreshold[3] = 0;
-	} else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) {
+		priv->ABYBBVGA[0] = 0x18;
+		priv->ABYBBVGA[1] = 0x0A;
+		priv->ABYBBVGA[2] = 0x0;
+		priv->ABYBBVGA[3] = 0x0;
+		priv->LDBMTHRESHOLD[0] = -70;
+		priv->LDBMTHRESHOLD[1] = -50;
+		priv->LDBMTHRESHOLD[2] = 0;
+		priv->LDBMTHRESHOLD[3] = 0;
+	} else if ((BYRFTYPE == RF_AIROHA) || (BYRFTYPE == RF_AL2230S)) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AIROHA2230[ii][0],
-				byVT3253B0_AIROHA2230[ii][1]);
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AIROHA2230[ii][0],
+				BYVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
-
-		priv->abyBBVGA[0] = 0x1C;
-		priv->abyBBVGA[1] = 0x10;
-		priv->abyBBVGA[2] = 0x0;
-		priv->abyBBVGA[3] = 0x0;
-		priv->ldBmThreshold[0] = -70;
-		priv->ldBmThreshold[1] = -48;
-		priv->ldBmThreshold[2] = 0;
-		priv->ldBmThreshold[3] = 0;
-	} else if (byRFType == RF_UW2451) {
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
+
+		priv->ABYBBVGA[0] = 0x1C;
+		priv->ABYBBVGA[1] = 0x10;
+		priv->ABYBBVGA[2] = 0x0;
+		priv->ABYBBVGA[3] = 0x0;
+		priv->LDBMTHRESHOLD[0] = -70;
+		priv->LDBMTHRESHOLD[1] = -48;
+		priv->LDBMTHRESHOLD[2] = 0;
+		priv->LDBMTHRESHOLD[3] = 0;
+	} else if (BYRFTYPE == RF_UW2451) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_UW2451[ii][0],
-				byVT3253B0_UW2451[ii][1]);
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_UW2451[ii][0],
+				BYVT3253B0_UW2451[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AGC[ii][0],
-				byVT3253B0_AGC[ii][1]);
-
-		VNSvOutPortB(iobase + MAC_REG_ITRTMSET, 0x23);
-		MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
-
-		priv->abyBBVGA[0] = 0x14;
-		priv->abyBBVGA[1] = 0x0A;
-		priv->abyBBVGA[2] = 0x0;
-		priv->abyBBVGA[3] = 0x0;
-		priv->ldBmThreshold[0] = -60;
-		priv->ldBmThreshold[1] = -50;
-		priv->ldBmThreshold[2] = 0;
-		priv->ldBmThreshold[3] = 0;
-	} else if (byRFType == RF_UW2452) {
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AGC[ii][0],
+				BYVT3253B0_AGC[ii][1]);
+
+		VNSVOUTPORTB(iobase + MAC_REG_ITRTMSET, 0x23);
+		MACVREGBITSON(iobase, MAC_REG_PAPEDELAY, BIT(0));
+
+		priv->ABYBBVGA[0] = 0x14;
+		priv->ABYBBVGA[1] = 0x0A;
+		priv->ABYBBVGA[2] = 0x0;
+		priv->ABYBBVGA[3] = 0x0;
+		priv->LDBMTHRESHOLD[0] = -60;
+		priv->LDBMTHRESHOLD[1] = -50;
+		priv->LDBMTHRESHOLD[2] = 0;
+		priv->LDBMTHRESHOLD[3] = 0;
+	} else if (BYRFTYPE == RF_UW2452) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_UW2451[ii][0],
-				byVT3253B0_UW2451[ii][1]);
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_UW2451[ii][0],
+				BYVT3253B0_UW2451[ii][1]);
 
 		/* Init ANT B select,
 		 * TX Config CR09 = 0x61->0x45,
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
+		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x09,0x41);*/
 
 		/* Init ANT B select,
 		 * RX Config CR10 = 0x28->0x2A,
@@ -2088,100 +2088,100 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		 * make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
+		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
-		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+		BRESULT &= BBBWRITEEMBEDDED(priv, 0xd7, 0x06);
 
 		/* {{RobertYu:20050125, request by Jack */
-		bResult &= BBbWriteEmbedded(priv, 0x90, 0x20);
-		bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb);
+		BRESULT &= BBBWRITEEMBEDDED(priv, 0x90, 0x20);
+		BRESULT &= BBBWRITEEMBEDDED(priv, 0x97, 0xeb);
 		/* }} */
 
 		/* {{RobertYu:20050221, request by Jack */
-		bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00);
-		bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30);
+		BRESULT &= BBBWRITEEMBEDDED(priv, 0xa6, 0x00);
+		BRESULT &= BBBWRITEEMBEDDED(priv, 0xa8, 0x30);
 		/* }} */
-		bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58);
+		BRESULT &= BBBWRITEEMBEDDED(priv, 0xb0, 0x58);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
-
-		priv->abyBBVGA[0] = 0x14;
-		priv->abyBBVGA[1] = 0x0A;
-		priv->abyBBVGA[2] = 0x0;
-		priv->abyBBVGA[3] = 0x0;
-		priv->ldBmThreshold[0] = -60;
-		priv->ldBmThreshold[1] = -50;
-		priv->ldBmThreshold[2] = 0;
-		priv->ldBmThreshold[3] = 0;
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
+
+		priv->ABYBBVGA[0] = 0x14;
+		priv->ABYBBVGA[1] = 0x0A;
+		priv->ABYBBVGA[2] = 0x0;
+		priv->ABYBBVGA[3] = 0x0;
+		priv->LDBMTHRESHOLD[0] = -60;
+		priv->LDBMTHRESHOLD[1] = -50;
+		priv->LDBMTHRESHOLD[2] = 0;
+		priv->LDBMTHRESHOLD[3] = 0;
 		/* }} RobertYu */
 
-	} else if (byRFType == RF_VT3226) {
+	} else if (BYRFTYPE == RF_VT3226) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AIROHA2230[ii][0],
-				byVT3253B0_AIROHA2230[ii][1]);
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AIROHA2230[ii][0],
+				BYVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
-
-		priv->abyBBVGA[0] = 0x1C;
-		priv->abyBBVGA[1] = 0x10;
-		priv->abyBBVGA[2] = 0x0;
-		priv->abyBBVGA[3] = 0x0;
-		priv->ldBmThreshold[0] = -70;
-		priv->ldBmThreshold[1] = -48;
-		priv->ldBmThreshold[2] = 0;
-		priv->ldBmThreshold[3] = 0;
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
+
+		priv->ABYBBVGA[0] = 0x1C;
+		priv->ABYBBVGA[1] = 0x10;
+		priv->ABYBBVGA[2] = 0x0;
+		priv->ABYBBVGA[3] = 0x0;
+		priv->LDBMTHRESHOLD[0] = -70;
+		priv->LDBMTHRESHOLD[1] = -48;
+		priv->LDBMTHRESHOLD[2] = 0;
+		priv->LDBMTHRESHOLD[3] = 0;
 		/* Fix VT3226 DFC system timing issue */
-		MACvSetRFLE_LatchBase(iobase);
+		MACVSETRFLE_LATCHBASE(iobase);
 		/* {{ RobertYu: 20050104 */
-	} else if (byRFType == RF_AIROHA7230) {
+	} else if (BYRFTYPE == RF_AIROHA7230) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AIROHA2230[ii][0],
-				byVT3253B0_AIROHA2230[ii][1]);
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AIROHA2230[ii][0],
+				BYVT3253B0_AIROHA2230[ii][1]);
 
 		/* {{ RobertYu:20050223, request by JerryChung */
 		/* Init ANT B select,TX Config CR09 = 0x61->0x45,
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
-		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
+		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x09,0x41);*/
 		/* Init ANT B select,RX Config CR10 = 0x28->0x2A,
 		 * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
-		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
+		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
-		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+		BRESULT &= BBBWRITEEMBEDDED(priv, 0xd7, 0x06);
 		/* }} */
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv,
-				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
-
-		priv->abyBBVGA[0] = 0x1C;
-		priv->abyBBVGA[1] = 0x10;
-		priv->abyBBVGA[2] = 0x0;
-		priv->abyBBVGA[3] = 0x0;
-		priv->ldBmThreshold[0] = -70;
-		priv->ldBmThreshold[1] = -48;
-		priv->ldBmThreshold[2] = 0;
-		priv->ldBmThreshold[3] = 0;
+			BRESULT &= BBBWRITEEMBEDDED(priv,
+				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
+
+		priv->ABYBBVGA[0] = 0x1C;
+		priv->ABYBBVGA[1] = 0x10;
+		priv->ABYBBVGA[2] = 0x0;
+		priv->ABYBBVGA[3] = 0x0;
+		priv->LDBMTHRESHOLD[0] = -70;
+		priv->LDBMTHRESHOLD[1] = -48;
+		priv->LDBMTHRESHOLD[2] = 0;
+		priv->LDBMTHRESHOLD[3] = 0;
 		/* }} RobertYu */
 	} else {
 		/* No VGA Table now */
-		priv->bUpdateBBVGA = false;
-		priv->abyBBVGA[0] = 0x1C;
+		priv->BUPDATEBBVGA = false;
+		priv->ABYBBVGA[0] = 0x1C;
 	}
 
-	if (byLocalID > REV_ID_VT3253_A1) {
-		BBbWriteEmbedded(priv, 0x04, 0x7F);
-		BBbWriteEmbedded(priv, 0x0D, 0x01);
+	if (BYLOCALID > REV_ID_VT3253_A1) {
+		BBBWRITEEMBEDDED(priv, 0x04, 0x7F);
+		BBBWRITEEMBEDDED(priv, 0x0D, 0x01);
 	}
 
-	return bResult;
+	return BRESULT;
 }
 
 /*
@@ -2197,42 +2197,42 @@ bool BBbVT3253Init(struct vnt_private *priv)
  *
  */
 void
-BBvSetShortSlotTime(struct vnt_private *priv)
+BBVSETSHORTSLOTTIME(struct vnt_private *priv)
 {
-	unsigned char byBBRxConf = 0;
-	unsigned char byBBVGA = 0;
+	unsigned char BYBBRXCONF = 0;
+	unsigned char BYBBVGA = 0;
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+	BBBREADEMBEDDED(priv, 0x0A, &BYBBRXCONF); /* CR10 */
 
-	if (priv->bShortSlotTime)
-		byBBRxConf &= 0xDF; /* 1101 1111 */
+	if (priv->BSHORTSLOTTIME)
+		BYBBRXCONF &= 0xDF; /* 1101 1111 */
 	else
-		byBBRxConf |= 0x20; /* 0010 0000 */
+		BYBBRXCONF |= 0x20; /* 0010 0000 */
 
 	/* patch for 3253B0 Baseband with Cardbus module */
-	BBbReadEmbedded(priv, 0xE7, &byBBVGA);
-	if (byBBVGA == priv->abyBBVGA[0])
-		byBBRxConf |= 0x20; /* 0010 0000 */
+	BBBREADEMBEDDED(priv, 0xE7, &BYBBVGA);
+	if (BYBBVGA == priv->ABYBBVGA[0])
+		BYBBRXCONF |= 0x20; /* 0010 0000 */
 
-	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+	BBBWRITEEMBEDDED(priv, 0x0A, BYBBRXCONF); /* CR10 */
 }
 
-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
+void BBVSETVGAGAINOFFSET(struct vnt_private *priv, unsigned char BYDATA)
 {
-	unsigned char byBBRxConf = 0;
+	unsigned char BYBBRXCONF = 0;
 
-	BBbWriteEmbedded(priv, 0xE7, byData);
+	BBBWRITEEMBEDDED(priv, 0xE7, BYDATA);
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+	BBBREADEMBEDDED(priv, 0x0A, &BYBBRXCONF); /* CR10 */
 	/* patch for 3253B0 Baseband with Cardbus module */
-	if (byData == priv->abyBBVGA[0])
-		byBBRxConf |= 0x20; /* 0010 0000 */
-	else if (priv->bShortSlotTime)
-		byBBRxConf &= 0xDF; /* 1101 1111 */
+	if (BYDATA == priv->ABYBBVGA[0])
+		BYBBRXCONF |= 0x20; /* 0010 0000 */
+	else if (priv->BSHORTSLOTTIME)
+		BYBBRXCONF &= 0xDF; /* 1101 1111 */
 	else
-		byBBRxConf |= 0x20; /* 0010 0000 */
-	priv->byBBVGACurrent = byData;
-	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+		BYBBRXCONF |= 0x20; /* 0010 0000 */
+	priv->BYBBVGACURRENT = BYDATA;
+	BBBWRITEEMBEDDED(priv, 0x0A, BYBBRXCONF); /* CR10 */
 }
 
 /*
@@ -2248,12 +2248,12 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
  *
  */
 void
-BBvSoftwareReset(struct vnt_private *priv)
+BBVSOFTWARERESET(struct vnt_private *priv)
 {
-	BBbWriteEmbedded(priv, 0x50, 0x40);
-	BBbWriteEmbedded(priv, 0x50, 0);
-	BBbWriteEmbedded(priv, 0x9C, 0x01);
-	BBbWriteEmbedded(priv, 0x9C, 0);
+	BBBWRITEEMBEDDED(priv, 0x50, 0x40);
+	BBBWRITEEMBEDDED(priv, 0x50, 0);
+	BBBWRITEEMBEDDED(priv, 0x9C, 0x01);
+	BBBWRITEEMBEDDED(priv, 0x9C, 0);
 }
 
 /*
@@ -2269,13 +2269,13 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeON(struct vnt_private *priv)
+BBVPOWERSAVEMODEON(struct vnt_private *priv)
 {
-	unsigned char byOrgData;
+	unsigned char BYORGDATA;
 
-	BBbReadEmbedded(priv, 0x0D, &byOrgData);
-	byOrgData |= BIT(0);
-	BBbWriteEmbedded(priv, 0x0D, byOrgData);
+	BBBREADEMBEDDED(priv, 0x0D, &BYORGDATA);
+	BYORGDATA |= BIT(0);
+	BBBWRITEEMBEDDED(priv, 0x0D, BYORGDATA);
 }
 
 /*
@@ -2291,13 +2291,13 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeOFF(struct vnt_private *priv)
+BBVPOWERSAVEMODEOFF(struct vnt_private *priv)
 {
-	unsigned char byOrgData;
+	unsigned char BYORGDATA;
 
-	BBbReadEmbedded(priv, 0x0D, &byOrgData);
-	byOrgData &= ~(BIT(0));
-	BBbWriteEmbedded(priv, 0x0D, byOrgData);
+	BBBREADEMBEDDED(priv, 0x0D, &BYORGDATA);
+	BYORGDATA &= ~(BIT(0));
+	BBBWRITEEMBEDDED(priv, 0x0D, BYORGDATA);
 }
 
 /*
@@ -2306,7 +2306,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  * Parameters:
  *  In:
  *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      BYANTENNAMODE    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2315,22 +2315,22 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  */
 
 void
-BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+BBVSETXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE)
 {
-	unsigned char byBBTxConf;
+	unsigned char BYBBTXCONF;
 
-	BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */
-	if (byAntennaMode == ANT_DIVERSITY) {
+	BBBREADEMBEDDED(priv, 0x09, &BYBBTXCONF); /* CR09 */
+	if (BYANTENNAMODE == ANT_DIVERSITY) {
 		/* bit 1 is diversity */
-		byBBTxConf |= 0x02;
-	} else if (byAntennaMode == ANT_A) {
+		BYBBTXCONF |= 0x02;
+	} else if (BYANTENNAMODE == ANT_A) {
 		/* bit 2 is ANTSEL */
-		byBBTxConf &= 0xF9; /* 1111 1001 */
-	} else if (byAntennaMode == ANT_B) {
-		byBBTxConf &= 0xFD; /* 1111 1101 */
-		byBBTxConf |= 0x04;
+		BYBBTXCONF &= 0xF9; /* 1111 1001 */
+	} else if (BYANTENNAMODE == ANT_B) {
+		BYBBTXCONF &= 0xFD; /* 1111 1101 */
+		BYBBTXCONF |= 0x04;
 	}
-	BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR09 */
+	BBBWRITEEMBEDDED(priv, 0x09, BYBBTXCONF); /* CR09 */
 }
 
 /*
@@ -2339,7 +2339,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  * Parameters:
  *  In:
  *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      BYANTENNAMODE    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2348,25 +2348,25 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  */
 
 void
-BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+BBVSETRXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE)
 {
-	unsigned char byBBRxConf;
+	unsigned char BYBBRXCONF;
 
-	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
-	if (byAntennaMode == ANT_DIVERSITY) {
-		byBBRxConf |= 0x01;
+	BBBREADEMBEDDED(priv, 0x0A, &BYBBRXCONF); /* CR10 */
+	if (BYANTENNAMODE == ANT_DIVERSITY) {
+		BYBBRXCONF |= 0x01;
 
-	} else if (byAntennaMode == ANT_A) {
-		byBBRxConf &= 0xFC; /* 1111 1100 */
-	} else if (byAntennaMode == ANT_B) {
-		byBBRxConf &= 0xFE; /* 1111 1110 */
-		byBBRxConf |= 0x02;
+	} else if (BYANTENNAMODE == ANT_A) {
+		BYBBRXCONF &= 0xFC; /* 1111 1100 */
+	} else if (BYANTENNAMODE == ANT_B) {
+		BYBBRXCONF &= 0xFE; /* 1111 1110 */
+		BYBBRXCONF |= 0x02;
 	}
-	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+	BBBWRITEEMBEDDED(priv, 0x0A, BYBBRXCONF); /* CR10 */
 }
 
 /*
- * Description: BBvSetDeepSleep
+ * Description: BBVSETDEEPSLEEP
  *
  * Parameters:
  *  In:
@@ -2378,15 +2378,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
  *
  */
 void
-BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+BBVSETDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID)
 {
-	BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */
-	BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */
+	BBBWRITEEMBEDDED(priv, 0x0C, 0x17); /* CR12 */
+	BBBWRITEEMBEDDED(priv, 0x0D, 0xB9); /* CR13 */
 }
 
 void
-BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+BBVEXITDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID)
 {
-	BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */
-	BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */
+	BBBWRITEEMBEDDED(priv, 0x0C, 0x00); /* CR12 */
+	BBBWRITEEMBEDDED(priv, 0x0D, 0x01); /* CR13 */
 }
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 0cc2e07829c5..3a6294b3bf1f 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -46,30 +46,30 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-unsigned int BBuGetFrameTime(unsigned char byPreambleType,
-			     unsigned char byPktType,
-			     unsigned int cbFrameLength,
-			     unsigned short wRate);
+unsigned int BBUGETFRAMETIME(unsigned char BYPREAMBLETYPE,
+			     unsigned char BYPKTTYPE,
+			     unsigned int CBFRAMELENGTH,
+			     unsigned short WRATE);
 
 void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
 
-bool BBbReadEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
-		     unsigned char *pbyData);
-bool BBbWriteEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
-		      unsigned char byData);
+bool BBBREADEMBEDDED(struct vnt_private *priv, unsigned char BYBBADDR,
+		     unsigned char *PBYDATA);
+bool BBBWRITEEMBEDDED(struct vnt_private *priv, unsigned char BYBBADDR,
+		      unsigned char BYDATA);
 
-void BBvSetShortSlotTime(struct vnt_private *priv);
-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData);
+void BBVSETSHORTSLOTTIME(struct vnt_private *priv);
+void BBVSETVGAGAINOFFSET(struct vnt_private *priv, unsigned char BYDATA);
 
 /* VT3253 Baseband */
-bool BBbVT3253Init(struct vnt_private *priv);
-void BBvSoftwareReset(struct vnt_private *priv);
-void BBvPowerSaveModeON(struct vnt_private *priv);
-void BBvPowerSaveModeOFF(struct vnt_private *priv);
-void BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
-void BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
-void BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
-void BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
+bool BBBVT3253INIT(struct vnt_private *priv);
+void BBVSOFTWARERESET(struct vnt_private *priv);
+void BBVPOWERSAVEMODEON(struct vnt_private *priv);
+void BBVPOWERSAVEMODEOFF(struct vnt_private *priv);
+void BBVSETXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE);
+void BBVSETRXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE);
+void BBVSETDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID);
+void BBVEXITDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID);
 
 #endif /* __BASEBAND_H__ */
-- 
2.20.1


