X-GM-THRID: 6339082417419059200
X-Received: by 10.98.129.195 with SMTP id t186mr2248878pfd.17.1475932639104;
        Sat, 08 Oct 2016 06:17:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.85 with SMTP id a82ls2513529ioj.7.gmail; Sat, 08 Oct
 2016 06:17:14 -0700 (PDT)
X-Received: by 10.36.50.149 with SMTP id j143mr912353ita.15.1475932634637;
        Sat, 08 Oct 2016 06:17:14 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id d11si2842467pfl.2.2016.10.08.06.17.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 06:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i85so4423119pfa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 06:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=d51xrvFegVm+8l9fWMb46Fjout667qUpjtOR+dEA+dQ=;
        b=Z4I31o2nDa8cD60Z0XCWy6CrKSzjesAKCp/HLAWQXAabzG6mpS11xehQsTXw0D5Wac
         fyJq1VBPjOq+B5tdMmnwskbYhbZSztPoUrrDES9ZBIxzU8ClIVsqEaOE+/hg3kG86v4G
         C0dNB9t8LdXYVFvarOA4NQ/tOy6Au6MEh5jkd/CFzdHscrhCUcMxtQeY1+jV9QmsGWIK
         vEFazap9EzjUDamqVvui6NKgHDaEBL3O67lahotxWSkQdAPeMh2ipt5RwhSx1P+dYyBo
         /q5N+63whPYxjfRlOmafBfN13AESs1nR7wU1GH7rU7Y651CkdV/uK1qgQ7RFpck2yycW
         vlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=d51xrvFegVm+8l9fWMb46Fjout667qUpjtOR+dEA+dQ=;
        b=ZJvEsn9pWDNZxJnpUmvlFzlAeXAPH4FgBdCLWh+mRQbXcoRWxwO2daFGavd9hoVP+9
         qQOFsuO2JcYTkLSKi73qkL3aJ11MP5tmta9oQU9Sjc2ofGURwRw0pU1hpJfCj3Hyzmik
         y36XBd6TjPPeNTAqjDwt/cTln8qpBPFHyx5kPOZkOuE7rZOAEnofE+LImybkD4fY7vOe
         W8hi8w/M/3SBRzC2Ei2K4tJNbD6FpSxkO54u2xrPDsaYuMa7yQxY3ZU81jqFtDz8YP8I
         B3E36ElCcL8NYSwuNbgZC6IihL9In92BCK1lFw4gsBV1DJ3mnGd4Aoeg85xy9B+mM/cY
         qNRw==
X-Gm-Message-State: AA6/9RlMmNAytjIU2fV985eIrIFHvd6QvrNeRk6W2noy/paC+xP3xj/nTnGAw71fu54bvQ==
X-Received: by 10.98.87.69 with SMTP id l66mr35269636pfb.128.1475932634145;
        Sat, 08 Oct 2016 06:17:14 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([103.62.68.129])
        by smtp.gmail.com with ESMTPSA id t5sm21411048pfi.78.2016.10.08.06.17.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 06:17:13 -0700 (PDT)
Date: Sat, 8 Oct 2016 18:47:09 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Cc: rvarsha016@gmail.com
Subject: [PATCH] Staging: vt6655: Replace dwIoBase by dwiobase
Message-ID: <20161008131709.GA489@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue of CamelCase by replacing dwIoBase with dwiobase.

CHECK: Avoid CamelCase: <dwIoBase>

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/baseband.c |  52 +++---
 drivers/staging/vt6655/baseband.h |   8 +-
 drivers/staging/vt6655/card.c     |  30 ++--
 drivers/staging/vt6655/mac.h      | 322 +++++++++++++++++++-------------------
 drivers/staging/vt6655/rf.c       |  64 ++++----
 drivers/staging/vt6655/srom.c     |  32 ++--
 drivers/staging/vt6655/srom.h     |   6 +-
 7 files changed, 257 insertions(+), 257 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index de503a3..aa57cfa 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *      byBBAddr    - address of register in Baseband
  *  Out:
  *      pbyData     - data read
@@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 bool BBbReadEmbedded(struct vnt_private *priv,
 		     unsigned char byBBAddr, unsigned char *pbyData)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	unsigned short ww;
 	unsigned char byValue;
 
 	/* BB reg offset */
-	VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+	VNSvOutPortB(dwiobase + MAC_REG_BBREGADR, byBBAddr);
 
 	/* turn on REGR */
-	MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
+	MACvRegBitsOn(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
 	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
+		VNSvInPortB(dwiobase + MAC_REG_BBREGCTL, &byValue);
 		if (byValue & BBREGCTL_DONE)
 			break;
 	}
 
 	/* get BB data */
-	VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData);
+	VNSvInPortB(dwiobase + MAC_REG_BBREGDATA, pbyData);
 
 	if (ww == W_MAX_TIMEOUT) {
 		pr_debug(" DBG_PORT80(0x30)\n");
@@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *      byBBAddr    - address of register in Baseband
  *      byData      - data to write
  *  Out:
@@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *priv,
 bool BBbWriteEmbedded(struct vnt_private *priv,
 		      unsigned char byBBAddr, unsigned char byData)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	unsigned short ww;
 	unsigned char byValue;
 
 	/* BB reg offset */
-	VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+	VNSvOutPortB(dwiobase + MAC_REG_BBREGADR, byBBAddr);
 	/* set BB data */
-	VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData);
+	VNSvOutPortB(dwiobase + MAC_REG_BBREGDATA, byData);
 
 	/* turn on BBREGCTL_REGW */
-	MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
+	MACvRegBitsOn(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
 	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
+		VNSvInPortB(dwiobase + MAC_REG_BBREGCTL, &byValue);
 		if (byValue & BBREGCTL_DONE)
 			break;
 	}
@@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *      byRevId     - Revision ID
  *      byRFType    - RF type
  *  Out:
@@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 {
 	bool bResult = true;
 	int        ii;
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	unsigned char byRFType = priv->byRFType;
 	unsigned char byLocalID = priv->byLocalID;
 
@@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
 					byVT3253B0_AGC4_RFMD2959[ii][0],
 					byVT3253B0_AGC4_RFMD2959[ii][1]);
 
-			VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-			MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
+			VNSvOutPortD(dwiobase + MAC_REG_ITRTMSET, 0x23);
+			MACvRegBitsOn(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
 		}
 		priv->abyBBVGA[0] = 0x18;
 		priv->abyBBVGA[1] = 0x0A;
@@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
 				byVT3253B0_AGC[ii][0],
 				byVT3253B0_AGC[ii][1]);
 
-		VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-		MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
+		VNSvOutPortB(dwiobase + MAC_REG_ITRTMSET, 0x23);
+		MACvRegBitsOn(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
 
 		priv->abyBBVGA[0] = 0x14;
 		priv->abyBBVGA[1] = 0x0A;
@@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+		/*bResult &= BBbWriteEmbedded(dwiobase,0x09,0x41);*/
 
 		/* Init ANT B select,
 		 * RX Config CR10 = 0x28->0x2A,
@@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		 * make the ANT_A, ANT_B inverted)
 		 */
 
-		/*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+		/*bResult &= BBbWriteEmbedded(dwiobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
 		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
 
@@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[2] = 0;
 		priv->ldBmThreshold[3] = 0;
 		/* Fix VT3226 DFC system timing issue */
-		MACvSetRFLE_LatchBase(dwIoBase);
+		MACvSetRFLE_LatchBase(dwiobase);
 		/* {{ RobertYu: 20050104 */
 	} else if (byRFType == RF_AIROHA7230) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
@@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		/* Init ANT B select,TX Config CR09 = 0x61->0x45,
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
-		/*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+		/*bResult &= BBbWriteEmbedded(dwiobase,0x09,0x41);*/
 		/* Init ANT B select,RX Config CR10 = 0x28->0x2A,
 		 * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B inverted)
 		 */
-		/*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+		/*bResult &= BBbWriteEmbedded(dwiobase,0x0a,0x28);*/
 		/* Select VC1/VC2, CR215 = 0x02->0x06 */
 		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
 		/* }} */
@@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
@@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
@@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index a732fba..d03089f 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -58,11 +58,11 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-#define bbvclearfoe(dwIoBase)				\
-	BBbWriteEmbedded(dwIoBase, 0xB1, 0)
+#define bbvclearfoe(dwiobase)				\
+	BBbWriteEmbedded(dwiobase, 0xB1, 0)
 
-#define BBvSetFOE(dwIoBase)				\
-	BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C)
+#define BBvSetFOE(dwiobase)				\
+	BBbWriteEmbedded(dwiobase, 0xB1, 0x0C)
 
 unsigned int
 BBuGetFrameTime(
diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index dbcea44..5c1589a 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -36,7 +36,7 @@
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
- *      08-26-2003 Kyle Hsu:      Modify the defination type of dwIoBase.
+ *      08-26-2003 Kyle Hsu:      Modify the defination type of dwiobase.
  *      09-01-2003 Bryan YC Fan:  Add vUpdateIFS().
  *
  */
@@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
  */
 bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCurrTSF)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	unsigned short ww;
 	unsigned char byData;
 
-	MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
+	MACvRegBitsOn(dwiobase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(dwIoBase + MAC_REG_TFTCTL, &byData);
+		VNSvInPortB(dwiobase + MAC_REG_TFTCTL, &byData);
 		if (!(byData & TFTCTL_TSFCNTRRD))
 			break;
 	}
 	if (ww == W_MAX_TIMEOUT)
 		return false;
-	VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
-	VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
+	VNSvInPortD(dwiobase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
+	VNSvInPortD(dwiobase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
 
 	return true;
 }
@@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short wBeaconInterval)
  *
  * Parameters:
  *  In:
- *      dwIoBase        - IO Base
+ *      dwiobase        - IO Base
  *      wBeaconInterval - Beacon Interval
  *  Out:
  *      none
@@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short wBeaconInterval)
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	u64 qwNextTBTT = 0;
 
 	CARDbGetCurrentTSF(priv, &qwNextTBTT); /* Get Local TSF counter */
 
 	qwNextTBTT = CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval);
 	/* Set NextTBTT */
-	VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
-	VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 32));
-	MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
+	VNSvOutPortD(dwiobase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
+	VNSvOutPortD(dwiobase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 32));
+	MACvRegBitsOn(dwiobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
 }
 
 /*
@@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,
 			 unsigned short wBeaconInterval)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 
 	qwTSF = CARDqGetNextTBTT(qwTSF, wBeaconInterval);
 	/* Set NextTBTT */
-	VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwTSF);
-	VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 32));
-	MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
+	VNSvOutPortD(dwiobase + MAC_REG_NEXTTBTT, (u32)qwTSF);
+	VNSvOutPortD(dwiobase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 32));
+	MACvRegBitsOn(dwiobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
 	pr_debug("Card:Update Next TBTT[%8llx]\n", qwTSF);
 }
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 030f529..86a78707 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -554,341 +554,341 @@
 
 /*---------------------  Export Macros ------------------------------*/
 
-#define MACvRegBitsOn(dwIoBase, byRegOfs, byBits)			\
+#define MACvRegBitsOn(dwiobase, byRegOfs, byBits)			\
 do {									\
 	unsigned char byData;						\
-	VNSvInPortB(dwIoBase + byRegOfs, &byData);			\
-	VNSvOutPortB(dwIoBase + byRegOfs, byData | (byBits));		\
+	VNSvInPortB(dwiobase + byRegOfs, &byData);			\
+	VNSvOutPortB(dwiobase + byRegOfs, byData | (byBits));		\
 } while (0)
 
-#define MACvWordRegBitsOn(dwIoBase, byRegOfs, wBits)			\
+#define MACvWordRegBitsOn(dwiobase, byRegOfs, wBits)			\
 do {									\
 	unsigned short wData;						\
-	VNSvInPortW(dwIoBase + byRegOfs, &wData);			\
-	VNSvOutPortW(dwIoBase + byRegOfs, wData | (wBits));		\
+	VNSvInPortW(dwiobase + byRegOfs, &wData);			\
+	VNSvOutPortW(dwiobase + byRegOfs, wData | (wBits));		\
 } while (0)
 
-#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, dwBits)			\
+#define MACvDWordRegBitsOn(dwiobase, byRegOfs, dwBits)			\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + byRegOfs, &dwData);			\
-	VNSvOutPortD(dwIoBase + byRegOfs, dwData | (dwBits));		\
+	VNSvInPortD(dwiobase + byRegOfs, &dwData);			\
+	VNSvOutPortD(dwiobase + byRegOfs, dwData | (dwBits));		\
 } while (0)
 
-#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, byBits)		\
+#define MACvRegBitsOnEx(dwiobase, byRegOfs, byMask, byBits)		\
 do {									\
 	unsigned char byData;						\
-	VNSvInPortB(dwIoBase + byRegOfs, &byData);			\
+	VNSvInPortB(dwiobase + byRegOfs, &byData);			\
 	byData &= byMask;						\
-	VNSvOutPortB(dwIoBase + byRegOfs, byData | (byBits));		\
+	VNSvOutPortB(dwiobase + byRegOfs, byData | (byBits));		\
 } while (0)
 
-#define MACvRegBitsOff(dwIoBase, byRegOfs, byBits)			\
+#define MACvRegBitsOff(dwiobase, byRegOfs, byBits)			\
 do {									\
 	unsigned char byData;						\
-	VNSvInPortB(dwIoBase + byRegOfs, &byData);			\
-	VNSvOutPortB(dwIoBase + byRegOfs, byData & ~(byBits));		\
+	VNSvInPortB(dwiobase + byRegOfs, &byData);			\
+	VNSvOutPortB(dwiobase + byRegOfs, byData & ~(byBits));		\
 } while (0)
 
-#define MACvWordRegBitsOff(dwIoBase, byRegOfs, wBits)			\
+#define MACvWordRegBitsOff(dwiobase, byRegOfs, wBits)			\
 do {									\
 	unsigned short wData;						\
-	VNSvInPortW(dwIoBase + byRegOfs, &wData);			\
-	VNSvOutPortW(dwIoBase + byRegOfs, wData & ~(wBits));		\
+	VNSvInPortW(dwiobase + byRegOfs, &wData);			\
+	VNSvOutPortW(dwiobase + byRegOfs, wData & ~(wBits));		\
 } while (0)
 
-#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, dwBits)			\
+#define MACvDWordRegBitsOff(dwiobase, byRegOfs, dwBits)			\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + byRegOfs, &dwData);			\
-	VNSvOutPortD(dwIoBase + byRegOfs, dwData & ~(dwBits));		\
+	VNSvInPortD(dwiobase + byRegOfs, &dwData);			\
+	VNSvOutPortD(dwiobase + byRegOfs, dwData & ~(dwBits));		\
 } while (0)
 
-#define MACvGetCurrRx0DescAddr(dwIoBase, pdwCurrDescAddr)	\
-	VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0,		\
+#define MACvGetCurrRx0DescAddr(dwiobase, pdwCurrDescAddr)	\
+	VNSvInPortD(dwiobase + MAC_REG_RXDMAPTR0,		\
 		    (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrRx1DescAddr(dwIoBase, pdwCurrDescAddr)	\
-	VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1,		\
+#define MACvGetCurrRx1DescAddr(dwiobase, pdwCurrDescAddr)	\
+	VNSvInPortD(dwiobase + MAC_REG_RXDMAPTR1,		\
 		    (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrTx0DescAddr(dwIoBase, pdwCurrDescAddr)	\
-	VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0,		\
+#define MACvGetCurrTx0DescAddr(dwiobase, pdwCurrDescAddr)	\
+	VNSvInPortD(dwiobase + MAC_REG_TXDMAPTR0,		\
 		    (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrAC0DescAddr(dwIoBase, pdwCurrDescAddr)	\
-	VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR,		\
+#define MACvGetCurrAC0DescAddr(dwiobase, pdwCurrDescAddr)	\
+	VNSvInPortD(dwiobase + MAC_REG_AC0DMAPTR,		\
 		    (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrSyncDescAddr(dwIoBase, pdwCurrDescAddr)	\
-	VNSvInPortD(dwIoBase + MAC_REG_SYNCDMAPTR,		\
+#define MACvGetCurrSyncDescAddr(dwiobase, pdwCurrDescAddr)	\
+	VNSvInPortD(dwiobase + MAC_REG_SYNCDMAPTR,		\
 		    (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrATIMDescAddr(dwIoBase, pdwCurrDescAddr)	\
-	VNSvInPortD(dwIoBase + MAC_REG_ATIMDMAPTR,		\
+#define MACvGetCurrATIMDescAddr(dwiobase, pdwCurrDescAddr)	\
+	VNSvInPortD(dwiobase + MAC_REG_ATIMDMAPTR,		\
 		    (unsigned long *)pdwCurrDescAddr)
 
 /* set the chip with current BCN tx descriptor address */
-#define MACvSetCurrBCNTxDescAddr(dwIoBase, dwCurrDescAddr)	\
-	VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR,		\
+#define MACvSetCurrBCNTxDescAddr(dwiobase, dwCurrDescAddr)	\
+	VNSvOutPortD(dwiobase + MAC_REG_BCNDMAPTR,		\
 		     dwCurrDescAddr)
 
 /* set the chip with current BCN length */
-#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)		\
-	VNSvOutPortW(dwIoBase + MAC_REG_BCNDMACTL+2,		\
+#define MACvSetCurrBCNLength(dwiobase, wCurrBCNLength)		\
+	VNSvOutPortW(dwiobase + MAC_REG_BCNDMACTL+2,		\
 		     wCurrBCNLength)
 
-#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)		\
+#define MACvReadBSSIDAddress(dwiobase, pbyEtherAddr)		\
 do {								\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);		\
-	VNSvInPortB(dwIoBase + MAC_REG_BSSID0,			\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 1);		\
+	VNSvInPortB(dwiobase + MAC_REG_BSSID0,			\
 		    (unsigned char *)pbyEtherAddr);		\
-	VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 1,		\
+	VNSvInPortB(dwiobase + MAC_REG_BSSID0 + 1,		\
 		    pbyEtherAddr + 1);				\
-	VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 2,		\
+	VNSvInPortB(dwiobase + MAC_REG_BSSID0 + 2,		\
 		    pbyEtherAddr + 2);				\
-	VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 3,		\
+	VNSvInPortB(dwiobase + MAC_REG_BSSID0 + 3,		\
 		    pbyEtherAddr + 3);				\
-	VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 4,		\
+	VNSvInPortB(dwiobase + MAC_REG_BSSID0 + 4,		\
 		    pbyEtherAddr + 4);				\
-	VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 5,		\
+	VNSvInPortB(dwiobase + MAC_REG_BSSID0 + 5,		\
 		    pbyEtherAddr + 5);				\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 0);		\
 } while (0)
 
-#define MACvWriteBSSIDAddress(dwIoBase, pbyEtherAddr)		\
+#define MACvWriteBSSIDAddress(dwiobase, pbyEtherAddr)		\
 do {								\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);		\
-	VNSvOutPortB(dwIoBase + MAC_REG_BSSID0,			\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 1);		\
+	VNSvOutPortB(dwiobase + MAC_REG_BSSID0,			\
 		     *(pbyEtherAddr));				\
-	VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 1,		\
+	VNSvOutPortB(dwiobase + MAC_REG_BSSID0 + 1,		\
 		     *(pbyEtherAddr + 1));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 2,		\
+	VNSvOutPortB(dwiobase + MAC_REG_BSSID0 + 2,		\
 		     *(pbyEtherAddr + 2));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 3,		\
+	VNSvOutPortB(dwiobase + MAC_REG_BSSID0 + 3,		\
 		     *(pbyEtherAddr + 3));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 4,		\
+	VNSvOutPortB(dwiobase + MAC_REG_BSSID0 + 4,		\
 		     *(pbyEtherAddr + 4));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 5,		\
+	VNSvOutPortB(dwiobase + MAC_REG_BSSID0 + 5,		\
 		     *(pbyEtherAddr + 5));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 0);		\
 } while (0)
 
-#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)		\
+#define MACvReadEtherAddress(dwiobase, pbyEtherAddr)		\
 do {								\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);		\
-	VNSvInPortB(dwIoBase + MAC_REG_PAR0,			\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 1);		\
+	VNSvInPortB(dwiobase + MAC_REG_PAR0,			\
 		    (unsigned char *)pbyEtherAddr);		\
-	VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 1,		\
+	VNSvInPortB(dwiobase + MAC_REG_PAR0 + 1,		\
 		    pbyEtherAddr + 1);				\
-	VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 2,		\
+	VNSvInPortB(dwiobase + MAC_REG_PAR0 + 2,		\
 		    pbyEtherAddr + 2);				\
-	VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 3,		\
+	VNSvInPortB(dwiobase + MAC_REG_PAR0 + 3,		\
 		    pbyEtherAddr + 3);				\
-	VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 4,		\
+	VNSvInPortB(dwiobase + MAC_REG_PAR0 + 4,		\
 		    pbyEtherAddr + 4);				\
-	VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 5,		\
+	VNSvInPortB(dwiobase + MAC_REG_PAR0 + 5,		\
 		    pbyEtherAddr + 5);				\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 0);		\
 } while (0)
 
-#define MACvWriteEtherAddress(dwIoBase, pbyEtherAddr)		\
+#define MACvWriteEtherAddress(dwiobase, pbyEtherAddr)		\
 do {								\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);		\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAR0,			\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 1);		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAR0,			\
 		     *pbyEtherAddr);				\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 1,		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAR0 + 1,		\
 		     *(pbyEtherAddr + 1));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 2,		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAR0 + 2,		\
 		     *(pbyEtherAddr + 2));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 3,		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAR0 + 3,		\
 		     *(pbyEtherAddr + 3));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 4,		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAR0 + 4,		\
 		     *(pbyEtherAddr + 4));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 5,		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAR0 + 5,		\
 		     *(pbyEtherAddr + 5));			\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 0);		\
 } while (0)
 
-#define MACvClearISR(dwIoBase)						\
-	VNSvOutPortD(dwIoBase + MAC_REG_ISR, IMR_MASK_VALUE)
+#define MACvClearISR(dwiobase)						\
+	VNSvOutPortD(dwiobase + MAC_REG_ISR, IMR_MASK_VALUE)
 
-#define MACvStart(dwIoBase)						\
-	VNSvOutPortB(dwIoBase + MAC_REG_HOSTCR,				\
+#define MACvStart(dwiobase)						\
+	VNSvOutPortB(dwiobase + MAC_REG_HOSTCR,				\
 		     (HOSTCR_MACEN | HOSTCR_RXON | HOSTCR_TXON))
 
-#define MACvRx0PerPktMode(dwIoBase)					\
-	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKT)
+#define MACvRx0PerPktMode(dwiobase)					\
+	VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL0, RX_PERPKT)
 
-#define MACvRx0BufferFillMode(dwIoBase)					\
-	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
+#define MACvRx0BufferFillMode(dwiobase)					\
+	VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
 
-#define MACvRx1PerPktMode(dwIoBase)					\
-	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKT)
+#define MACvRx1PerPktMode(dwiobase)					\
+	VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL1, RX_PERPKT)
 
-#define MACvRx1BufferFillMode(dwIoBase)					\
-	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
+#define MACvRx1BufferFillMode(dwiobase)					\
+	VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
 
-#define MACvRxOn(dwIoBase)						\
-	MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON)
+#define MACvRxOn(dwiobase)						\
+	MACvRegBitsOn(dwiobase, MAC_REG_HOSTCR, HOSTCR_RXON)
 
-#define MACvReceive0(dwIoBase)						\
+#define MACvReceive0(dwiobase)						\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL0, &dwData);		\
+	VNSvInPortD(dwiobase + MAC_REG_RXDMACTL0, &dwData);		\
 	if (dwData & DMACTL_RUN)					\
-		VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_WAKE); \
+		VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL0, DMACTL_WAKE); \
 	else								\
-		VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_RUN); \
+		VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL0, DMACTL_RUN); \
 } while (0)
 
-#define MACvReceive1(dwIoBase)						\
+#define MACvReceive1(dwiobase)						\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL1, &dwData);		\
+	VNSvInPortD(dwiobase + MAC_REG_RXDMACTL1, &dwData);		\
 	if (dwData & DMACTL_RUN)					\
-		VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_WAKE); \
+		VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL1, DMACTL_WAKE); \
 	else								\
-		VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_RUN); \
+		VNSvOutPortD(dwiobase + MAC_REG_RXDMACTL1, DMACTL_RUN); \
 } while (0)
 
-#define MACvTxOn(dwIoBase)						\
-	MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON)
+#define MACvTxOn(dwiobase)						\
+	MACvRegBitsOn(dwiobase, MAC_REG_HOSTCR, HOSTCR_TXON)
 
-#define MACvTransmit0(dwIoBase)						\
+#define MACvTransmit0(dwiobase)						\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + MAC_REG_TXDMACTL0, &dwData);		\
+	VNSvInPortD(dwiobase + MAC_REG_TXDMACTL0, &dwData);		\
 	if (dwData & DMACTL_RUN)					\
-		VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_WAKE); \
+		VNSvOutPortD(dwiobase + MAC_REG_TXDMACTL0, DMACTL_WAKE); \
 	else								\
-		VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_RUN); \
+		VNSvOutPortD(dwiobase + MAC_REG_TXDMACTL0, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitAC0(dwIoBase)					\
+#define MACvTransmitAC0(dwiobase)					\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + MAC_REG_AC0DMACTL, &dwData);		\
+	VNSvInPortD(dwiobase + MAC_REG_AC0DMACTL, &dwData);		\
 	if (dwData & DMACTL_RUN)					\
-		VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_WAKE); \
+		VNSvOutPortD(dwiobase + MAC_REG_AC0DMACTL, DMACTL_WAKE); \
 	else								\
-		VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN); \
+		VNSvOutPortD(dwiobase + MAC_REG_AC0DMACTL, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitSYNC(dwIoBase)					\
+#define MACvTransmitSYNC(dwiobase)					\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + MAC_REG_SYNCDMACTL, &dwData);		\
+	VNSvInPortD(dwiobase + MAC_REG_SYNCDMACTL, &dwData);		\
 	if (dwData & DMACTL_RUN)					\
-		VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \
+		VNSvOutPortD(dwiobase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \
 	else								\
-		VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, DMACTL_RUN); \
+		VNSvOutPortD(dwiobase + MAC_REG_SYNCDMACTL, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitATIM(dwIoBase)					\
+#define MACvTransmitATIM(dwiobase)					\
 do {									\
 	unsigned long dwData;						\
-	VNSvInPortD(dwIoBase + MAC_REG_ATIMDMACTL, &dwData);		\
+	VNSvInPortD(dwiobase + MAC_REG_ATIMDMACTL, &dwData);		\
 	if (dwData & DMACTL_RUN)					\
-		VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \
+		VNSvOutPortD(dwiobase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \
 	else								\
-		VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, DMACTL_RUN); \
+		VNSvOutPortD(dwiobase + MAC_REG_ATIMDMACTL, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitBCN(dwIoBase)					\
-	VNSvOutPortB(dwIoBase + MAC_REG_BCNDMACTL, BEACON_READY)
+#define MACvTransmitBCN(dwiobase)					\
+	VNSvOutPortB(dwiobase + MAC_REG_BCNDMACTL, BEACON_READY)
 
-#define MACvClearStckDS(dwIoBase)					\
+#define MACvClearStckDS(dwiobase)					\
 do {									\
 	unsigned char byOrgValue;					\
-	VNSvInPortB(dwIoBase + MAC_REG_STICKHW, &byOrgValue);		\
+	VNSvInPortB(dwiobase + MAC_REG_STICKHW, &byOrgValue);		\
 	byOrgValue = byOrgValue & 0xFC;					\
-	VNSvOutPortB(dwIoBase + MAC_REG_STICKHW, byOrgValue);		\
+	VNSvOutPortB(dwiobase + MAC_REG_STICKHW, byOrgValue);		\
 } while (0)
 
-#define MACvReadISR(dwIoBase, pdwValue)				\
-	VNSvInPortD(dwIoBase + MAC_REG_ISR, pdwValue)
+#define MACvReadISR(dwiobase, pdwValue)				\
+	VNSvInPortD(dwiobase + MAC_REG_ISR, pdwValue)
 
-#define MACvWriteISR(dwIoBase, dwValue)				\
-	VNSvOutPortD(dwIoBase + MAC_REG_ISR, dwValue)
+#define MACvWriteISR(dwiobase, dwValue)				\
+	VNSvOutPortD(dwiobase + MAC_REG_ISR, dwValue)
 
-#define MACvIntEnable(dwIoBase, dwMask)				\
-	VNSvOutPortD(dwIoBase + MAC_REG_IMR, dwMask)
+#define MACvIntEnable(dwiobase, dwMask)				\
+	VNSvOutPortD(dwiobase + MAC_REG_IMR, dwMask)
 
-#define MACvIntDisable(dwIoBase)				\
-	VNSvOutPortD(dwIoBase + MAC_REG_IMR, 0)
+#define MACvIntDisable(dwiobase)				\
+	VNSvOutPortD(dwiobase + MAC_REG_IMR, 0)
 
-#define MACvSelectPage0(dwIoBase)				\
-		VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0)
+#define MACvSelectPage0(dwiobase)				\
+		VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 0)
 
-#define MACvSelectPage1(dwIoBase)				\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1)
+#define MACvSelectPage1(dwiobase)				\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 1)
 
-#define MACvReadMIBCounter(dwIoBase, pdwCounter)			\
-	VNSvInPortD(dwIoBase + MAC_REG_MIBCNTR, pdwCounter)
+#define MACvReadMIBCounter(dwiobase, pdwCounter)			\
+	VNSvInPortD(dwiobase + MAC_REG_MIBCNTR, pdwCounter)
 
-#define MACvPwrEvntDisable(dwIoBase)					\
-	VNSvOutPortW(dwIoBase + MAC_REG_WAKEUPEN0, 0x0000)
+#define MACvPwrEvntDisable(dwiobase)					\
+	VNSvOutPortW(dwiobase + MAC_REG_WAKEUPEN0, 0x0000)
 
-#define MACvEnableProtectMD(dwIoBase)					\
+#define MACvEnableProtectMD(dwiobase)					\
 do {									\
 	unsigned long dwOrgValue;					\
-	VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);		\
+	VNSvInPortD(dwiobase + MAC_REG_ENCFG, &dwOrgValue);		\
 	dwOrgValue = dwOrgValue | EnCFG_ProtectMd;			\
-	VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);		\
+	VNSvOutPortD(dwiobase + MAC_REG_ENCFG, dwOrgValue);		\
 } while (0)
 
-#define MACvDisableProtectMD(dwIoBase)					\
+#define MACvDisableProtectMD(dwiobase)					\
 do {									\
 	unsigned long dwOrgValue;					\
-	VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);		\
+	VNSvInPortD(dwiobase + MAC_REG_ENCFG, &dwOrgValue);		\
 	dwOrgValue = dwOrgValue & ~EnCFG_ProtectMd;			\
-	VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);		\
+	VNSvOutPortD(dwiobase + MAC_REG_ENCFG, dwOrgValue);		\
 } while (0)
 
-#define MACvEnableBarkerPreambleMd(dwIoBase)				\
+#define MACvEnableBarkerPreambleMd(dwiobase)				\
 do {									\
 	unsigned long dwOrgValue;					\
-	VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);		\
+	VNSvInPortD(dwiobase + MAC_REG_ENCFG, &dwOrgValue);		\
 	dwOrgValue = dwOrgValue | EnCFG_BarkerPream;			\
-	VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);		\
+	VNSvOutPortD(dwiobase + MAC_REG_ENCFG, dwOrgValue);		\
 } while (0)
 
-#define MACvDisableBarkerPreambleMd(dwIoBase)				\
+#define MACvDisableBarkerPreambleMd(dwiobase)				\
 do {									\
 	unsigned long dwOrgValue;					\
-	VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);		\
+	VNSvInPortD(dwiobase + MAC_REG_ENCFG, &dwOrgValue);		\
 	dwOrgValue = dwOrgValue & ~EnCFG_BarkerPream;			\
-	VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);		\
+	VNSvOutPortD(dwiobase + MAC_REG_ENCFG, dwOrgValue);		\
 } while (0)
 
-#define MACvSetBBType(dwIoBase, byTyp)					\
+#define MACvSetBBType(dwiobase, byTyp)					\
 do {									\
 	unsigned long dwOrgValue;					\
-	VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);		\
+	VNSvInPortD(dwiobase + MAC_REG_ENCFG, &dwOrgValue);		\
 	dwOrgValue = dwOrgValue & ~EnCFG_BBType_MASK;			\
 	dwOrgValue = dwOrgValue | (unsigned long)byTyp;			\
-	VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);		\
+	VNSvOutPortD(dwiobase + MAC_REG_ENCFG, dwOrgValue);		\
 } while (0)
 
-#define MACvReadATIMW(dwIoBase, pwCounter)				\
-	VNSvInPortW(dwIoBase + MAC_REG_AIDATIM, pwCounter)
+#define MACvReadATIMW(dwiobase, pwCounter)				\
+	VNSvInPortW(dwiobase + MAC_REG_AIDATIM, pwCounter)
 
-#define MACvWriteATIMW(dwIoBase, wCounter)				\
-	VNSvOutPortW(dwIoBase + MAC_REG_AIDATIM, wCounter)
+#define MACvWriteATIMW(dwiobase, wCounter)				\
+	VNSvOutPortW(dwiobase + MAC_REG_AIDATIM, wCounter)
 
-#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)		\
+#define MACvWriteCRC16_128(dwiobase, byRegOfs, wCRC)		\
 do {								\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);		\
-	VNSvOutPortW(dwIoBase + byRegOfs, wCRC);		\
-	VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 1);		\
+	VNSvOutPortW(dwiobase + byRegOfs, wCRC);		\
+	VNSvOutPortB(dwiobase + MAC_REG_PAGE1SEL, 0);		\
 } while (0)
 
-#define MACvGPIOIn(dwIoBase, pbyValue)					\
-	VNSvInPortB(dwIoBase + MAC_REG_GPIOCTL1, pbyValue)
+#define MACvGPIOIn(dwiobase, pbyValue)					\
+	VNSvInPortB(dwiobase + MAC_REG_GPIOCTL1, pbyValue)
 
-#define MACvSetRFLE_LatchBase(dwIoBase)                                 \
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
+#define MACvSetRFLE_LatchBase(dwiobase)                                 \
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
 
 bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byRegOfs,
 		     unsigned char byTestBits);
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 447882c..9735369 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -410,7 +410,7 @@ static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
@@ -419,16 +419,16 @@ static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
  */
 static bool s_bAL7230Init(struct vnt_private *priv)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	int     ii;
 	bool ret;
 
 	ret = true;
 
 	/* 3-wire control for normal mode */
-	VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);
+	VNSvOutPortB(dwiobase + MAC_REG_SOFTPWRCTL, 0);
 
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
 	BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value for Calibration */
 
@@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]);
 
 	/* PLL On */
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	/* Calibration */
 	MACvTimer0MicroSDelay(priv, 150);/* 150us */
@@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 	/* TXDCOC:disable, RCK:disable */
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
 
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
 							 SOFTPWRCTL_SWPE2    |
 							 SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
@@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 
 	/* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
 	/* 3-wire control for power saving mode */
-	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
+	VNSvOutPortB(dwiobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
 
 	return ret;
 }
@@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private *priv)
  */
 static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byChannel)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	bool ret;
 
 	ret = true;
 
 	/* PLLON Off */
-	MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+	MACvWordRegBitsOff(dwiobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[byChannel - 1]);
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel - 1]);
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel - 1]);
 
 	/* PLLOn On */
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	/* Set Channel[7] = 0 to tell H/W channel is changing now. */
-	VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
+	VNSvOutPortB(dwiobase + MAC_REG_CHANNEL, (byChannel & 0x7F));
 	MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230);
 	/* Set Channel[7] = 1 to tell H/W channel change is done. */
-	VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));
+	VNSvOutPortB(dwiobase + MAC_REG_CHANNEL, (byChannel | 0x80));
 
 	return ret;
 }
@@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byCha
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *      dwData      - data to write
  *  Out:
  *      none
@@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byCha
  */
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	unsigned short ww;
 	unsigned long dwValue;
 
-	VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwData);
+	VNSvOutPortD(dwiobase + MAC_REG_IFREGCTL, dwData);
 
 	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortD(dwIoBase + MAC_REG_IFREGCTL, &dwValue);
+		VNSvInPortD(dwiobase + MAC_REG_IFREGCTL, &dwValue);
 		if (dwValue & IFREGCTL_DONE)
 			break;
 	}
@@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
@@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
  */
 static bool RFbAL2230Init(struct vnt_private *priv)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	int     ii;
 	bool ret;
 
 	ret = true;
 
 	/* 3-wire control for normal mode */
-	VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);
+	VNSvOutPortB(dwiobase + MAC_REG_SOFTPWRCTL, 0);
 
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
 	/* PLL  Off */
-	MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+	MACvWordRegBitsOff(dwiobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	/* patch abnormal AL2230 frequency output */
 	IFRFbWriteEmbedded(priv, (0x07168700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
@@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	MACvTimer0MicroSDelay(priv, 30); /* delay 30 us */
 
 	/* PLL On */
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	MACvTimer0MicroSDelay(priv, 150);/* 150us */
 	ret &= IFRFbWriteEmbedded(priv, (0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
@@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]);
 
-	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
+	MACvWordRegBitsOn(dwiobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
 							 SOFTPWRCTL_SWPE2    |
 							 SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
 
 	/* 3-wire control for power saving mode */
-	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
+	VNSvOutPortB(dwiobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
 
 	return ret;
 }
 
 static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned char byChannel)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	bool ret;
 
 	ret = true;
@@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned char byCha
 	ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel - 1]);
 
 	/* Set Channel[7] = 0 to tell H/W channel is changing now. */
-	VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
+	VNSvOutPortB(dwiobase + MAC_REG_CHANNEL, (byChannel & 0x7F));
 	MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230);
 	/* Set Channel[7] = 1 to tell H/W channel change is done. */
-	VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));
+	VNSvOutPortB(dwiobase + MAC_REG_CHANNEL, (byChannel | 0x80));
 
 	return ret;
 }
@@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *      uChannel    - channel number
  *      bySleepCnt  - SleepProgSyn count
  *
@@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
 bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 			 u16 uChannel)
 {
-	void __iomem *dwIoBase = priv->PortOffset;
+	void __iomem *dwiobase = priv->PortOffset;
 	int   ii;
 	unsigned char byInitCount = 0;
 	unsigned char bySleepCount = 0;
 
-	VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0);
+	VNSvOutPortW(dwiobase + MAC_REG_MISCFFNDEX, 0);
 	switch (byRFType) {
 	case RF_AIROHA:
 	case RF_AL2230S:
@@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      dwIoBase       - I/O base address
+ *      dwiobase       - I/O base address
  *      dwRFPowerTable - RF Tx Power Setting
  *  Out:
  *      none
@@ -830,7 +830,7 @@ bool RFbSetPower(
  *
  * Parameters:
  *  In:
- *      dwIoBase       - I/O base address
+ *      dwiobase       - I/O base address
  *      dwRFPowerTable - RF Tx Power Setting
  *  Out:
  *      none
diff --git a/drivers/staging/vt6655/srom.c b/drivers/staging/vt6655/srom.c
index ee99277..6cd1bc6 100644
--- a/drivers/staging/vt6655/srom.c
+++ b/drivers/staging/vt6655/srom.c
@@ -64,7 +64,7 @@
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      dwiobase        - I/O base address
  *      byContntOffset  - address of EEPROM
  *  Out:
  *      none
@@ -72,7 +72,7 @@
  * Return Value: data read
  *
  */
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
+unsigned char SROMbyReadEmbedded(void __iomem *dwiobase,
 				 unsigned char byContntOffset)
 {
 	unsigned short wDelay, wNoACK;
@@ -81,18 +81,18 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
 	unsigned char byOrg;
 
 	byData = 0xFF;
-	VNSvInPortB(dwIoBase + MAC_REG_I2MCFG, &byOrg);
+	VNSvInPortB(dwiobase + MAC_REG_I2MCFG, &byOrg);
 	/* turn off hardware retry for getting NACK */
-	VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, (byOrg & (~I2MCFG_NORETRY)));
+	VNSvOutPortB(dwiobase + MAC_REG_I2MCFG, (byOrg & (~I2MCFG_NORETRY)));
 	for (wNoACK = 0; wNoACK < W_MAX_I2CRETRY; wNoACK++) {
-		VNSvOutPortB(dwIoBase + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);
-		VNSvOutPortB(dwIoBase + MAC_REG_I2MTGAD, byContntOffset);
+		VNSvOutPortB(dwiobase + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);
+		VNSvOutPortB(dwiobase + MAC_REG_I2MTGAD, byContntOffset);
 
 		/* issue read command */
-		VNSvOutPortB(dwIoBase + MAC_REG_I2MCSR, I2MCSR_EEMR);
+		VNSvOutPortB(dwiobase + MAC_REG_I2MCSR, I2MCSR_EEMR);
 		/* wait DONE be set */
 		for (wDelay = 0; wDelay < W_MAX_TIMEOUT; wDelay++) {
-			VNSvInPortB(dwIoBase + MAC_REG_I2MCSR, &byWait);
+			VNSvInPortB(dwiobase + MAC_REG_I2MCSR, &byWait);
 			if (byWait & (I2MCSR_DONE | I2MCSR_NACK))
 				break;
 			PCAvDelayByIO(CB_DELAY_LOOP_WAIT);
@@ -102,8 +102,8 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
 			break;
 		}
 	}
-	VNSvInPortB(dwIoBase + MAC_REG_I2MDIPT, &byData);
-	VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, byOrg);
+	VNSvInPortB(dwiobase + MAC_REG_I2MDIPT, &byData);
+	VNSvOutPortB(dwiobase + MAC_REG_I2MCFG, byOrg);
 	return byData;
 }
 
@@ -112,20 +112,20 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      dwiobase        - I/O base address
  *  Out:
  *      pbyEepromRegs   - EEPROM content Buffer
  *
  * Return Value: none
  *
  */
-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs)
+void SROMvReadAllContents(void __iomem *dwiobase, unsigned char *pbyEepromRegs)
 {
 	int     ii;
 
 	/* ii = Rom Address */
 	for (ii = 0; ii < EEP_MAX_CONTEXT_SIZE; ii++) {
-		*pbyEepromRegs = SROMbyReadEmbedded(dwIoBase,
+		*pbyEepromRegs = SROMbyReadEmbedded(dwiobase,
 						    (unsigned char)ii);
 		pbyEepromRegs++;
 	}
@@ -136,21 +136,21 @@ void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs)
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      dwiobase        - I/O base address
  *  Out:
  *      pbyEtherAddress - Ethernet Address buffer
  *
  * Return Value: none
  *
  */
-void SROMvReadEtherAddress(void __iomem *dwIoBase,
+void SROMvReadEtherAddress(void __iomem *dwiobase,
 			   unsigned char *pbyEtherAddress)
 {
 	unsigned char ii;
 
 	/* ii = Rom Address */
 	for (ii = 0; ii < ETH_ALEN; ii++) {
-		*pbyEtherAddress = SROMbyReadEmbedded(dwIoBase, ii);
+		*pbyEtherAddress = SROMbyReadEmbedded(dwiobase, ii);
 		pbyEtherAddress++;
 	}
 }
diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
index 531bf00..753a3fd 100644
--- a/drivers/staging/vt6655/srom.h
+++ b/drivers/staging/vt6655/srom.h
@@ -90,12 +90,12 @@
 
 /*---------------------  Export Functions  --------------------------*/
 
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
+unsigned char SROMbyReadEmbedded(void __iomem *dwiobase,
 				 unsigned char byContntOffset);
 
-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs);
+void SROMvReadAllContents(void __iomem *dwiobase, unsigned char *pbyEepromRegs);
 
-void SROMvReadEtherAddress(void __iomem *dwIoBase,
+void SROMvReadEtherAddress(void __iomem *dwiobase,
 			   unsigned char *pbyEtherAddress);
 
 #endif /* __EEPROM_H__*/
-- 
2.7.4


