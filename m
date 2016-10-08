X-GM-THRID: 6339138687062769664
X-Received: by 10.107.11.153 with SMTP id 25mr6652529iol.16.1475951776403;
        Sat, 08 Oct 2016 11:36:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.4 with SMTP id y4ls190148iod.48.gmail; Sat, 08 Oct
 2016 11:36:15 -0700 (PDT)
X-Received: by 10.66.89.227 with SMTP id br3mr5655032pab.75.1475951775283;
        Sat, 08 Oct 2016 11:36:15 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ua1si6825289pac.1.2016.10.08.11.36.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 190so4722020pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zwjxQ/kXdu35fESc9jZMPzE/Atv9wF1dwUo7Ke3zdc4=;
        b=iCVG6VuAHkcVmEPyyjW7atSIeApZ/f6DpPMAx69H8pEFw+Zo3eAE37XJQsDADaog38
         1VqkhpyFC9PVklUX8HtcKsnAMiW+U81yVHl64jONITS3dJm4XAnQG/+hgChfcXEHNOZ2
         0uVNzTFXbLX9cIcMP0RlMZF2SvGBe0eRtTvKRQSftupAWyJcMkHElhMIWa7hK0K7F/S3
         NiRjwM+FFttSu8Dq89CmEXS3+uR9eaZMiMOZ8V+gXIhT+98GqK9hNh1YZ33fQ7EHuw3z
         v3v0RvuP3iZuCVo+G30IEnVyl/FfkMu9SeDW/dbv3j8yjUqVKtnSqNHTBsQtWwXQqdGN
         bTaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zwjxQ/kXdu35fESc9jZMPzE/Atv9wF1dwUo7Ke3zdc4=;
        b=cn1k6o4HNuM/1fgwHLGJrwe2f7KFaniiPgmnyCxlLZlPKiaK0htF7M12UwwVBhV7hk
         wdU3QPvfG2EnO71jLqqLT7SkRoocy6eRJ1N7WS/SvnrBN8O8zxjREhz064uug4j8LuEN
         K7hivprPGFs1thnqw0DYrCW+LTrdq4QJFItuNotBlQnavw1e36KD5kZGxM2OaCxHFEQa
         bxO4SDrGwe7eoyl1eDyCnqi4cz6ddvgv0bs9ixKbfOccrrz1b6Bo+1mBI3MunyyOwbkB
         9svoPUOSlTOHQqiPgjbIWGkCA+KyJ618mBgONVfTHUSbY6TwooTv8rDcLZieIGxh0F5/
         uVyA==
X-Gm-Message-State: AA6/9RngBdireUu+S1+F6rQi63qX5DmYAQh2px/EJsphOzJqByPg4gYwt0t75UD7tc/BXQ==
X-Received: by 10.98.217.7 with SMTP id s7mr39885162pfg.72.1475951774812;
        Sat, 08 Oct 2016 11:36:14 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([103.62.68.129])
        by smtp.gmail.com with ESMTPSA id qd12sm30912938pab.22.2016.10.08.11.36.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 11:36:14 -0700 (PDT)
Date: Sun, 9 Oct 2016 00:06:09 +0530
From: varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linux.org,
	forest@alittletooquiet.net
Cc: rvarsha016@gmail.com
Subject: [Patch] Staging: vt6655: Replace dwIoBase by iobase
Message-ID: <20161008183608.GA5836@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

In this patch dwIoBase is renamed as iobase.
This is done to fix the checkpatch issue of CamelCase.

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
index de503a3..e739ecc 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *      byBBAddr    - address of register in Baseband
  *  Out:
  *      pbyData     - data read
@@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 bool BBbReadEmbedded(struct vnt_private *priv,
                      unsigned char byBBAddr, unsigned char *pbyData)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         unsigned short ww;
         unsigned char byValue;
 
         /* BB reg offset */
-        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
 
         /* turn on REGR */
-        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
+        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
         /* W_MAX_TIMEOUT is the timeout period */
         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
+                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
                 if (byValue & BBREGCTL_DONE)
                         break;
         }
 
         /* get BB data */
-        VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData);
+        VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData);
 
         if (ww == W_MAX_TIMEOUT) {
                 pr_debug(" DBG_PORT80(0x30)\n");
@@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *      byBBAddr    - address of register in Baseband
  *      byData      - data to write
  *  Out:
@@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *priv,
 bool BBbWriteEmbedded(struct vnt_private *priv,
                       unsigned char byBBAddr, unsigned char byData)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         unsigned short ww;
         unsigned char byValue;
 
         /* BB reg offset */
-        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
         /* set BB data */
-        VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData);
+        VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData);
 
         /* turn on BBREGCTL_REGW */
-        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
+        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
         /* W_MAX_TIMEOUT is the timeout period */
         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
+                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
                 if (byValue & BBREGCTL_DONE)
                         break;
         }
@@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *      byRevId     - Revision ID
  *      byRFType    - RF type
  *  Out:
@@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 {
         bool bResult = true;
         int        ii;
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         unsigned char byRFType = priv->byRFType;
         unsigned char byLocalID = priv->byLocalID;
 
@@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
                                         byVT3253B0_AGC4_RFMD2959[ii][0],
                                         byVT3253B0_AGC4_RFMD2959[ii][1]);
 
-                        VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-                        MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
+                        VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);
+                        MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
                 }
                 priv->abyBBVGA[0] = 0x18;
                 priv->abyBBVGA[1] = 0x0A;
@@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
                                 byVT3253B0_AGC[ii][0],
                                 byVT3253B0_AGC[ii][1]);
 
-                VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-                MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
+                VNSvOutPortB(iobase + MAC_REG_ITRTMSET, 0x23);
+                MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
 
                 priv->abyBBVGA[0] = 0x14;
                 priv->abyBBVGA[1] = 0x0A;
@@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
                  */
 
-                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
 
                 /* Init ANT B select,
                  * RX Config CR10 = 0x28->0x2A,
@@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
                  * make the ANT_A, ANT_B inverted)
                  */
 
-                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
                 /* Select VC1/VC2, CR215 = 0x02->0x06 */
                 bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
 
@@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
                 priv->ldBmThreshold[2] = 0;
                 priv->ldBmThreshold[3] = 0;
                 /* Fix VT3226 DFC system timing issue */
-                MACvSetRFLE_LatchBase(dwIoBase);
+                MACvSetRFLE_LatchBase(iobase);
                 /* {{ RobertYu: 20050104 */
         } else if (byRFType == RF_AIROHA7230) {
                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
@@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *priv)
                 /* Init ANT B select,TX Config CR09 = 0x61->0x45,
                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
                  */
-                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
                 /* Init ANT B select,RX Config CR10 = 0x28->0x2A,
                  * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B inverted)
                  */
-                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
                 /* Select VC1/VC2, CR215 = 0x02->0x06 */
                 bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
                 /* }} */
@@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *  Out:
  *      none
  *
@@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *  Out:
  *      none
  *
@@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *  Out:
  *      none
  *
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index a732fba..1d1d4fc 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -58,11 +58,11 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-#define bbvclearfoe(dwIoBase)                                \
-        BBbWriteEmbedded(dwIoBase, 0xB1, 0)
+#define bbvclearfoe(iobase)                                \
+        BBbWriteEmbedded(iobase, 0xB1, 0)
 
-#define BBvSetFOE(dwIoBase)                                \
-        BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C)
+#define BBvSetFOE(iobase)                                \
+        BBbWriteEmbedded(iobase, 0xB1, 0x0C)
 
 unsigned int
 BBuGetFrameTime(
diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index dbcea44..03790bb 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -36,7 +36,7 @@
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
- *      08-26-2003 Kyle Hsu:      Modify the defination type of dwIoBase.
+ *      08-26-2003 Kyle Hsu:      Modify the defination type of iobase.
  *      09-01-2003 Bryan YC Fan:  Add vUpdateIFS().
  *
  */
@@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
  */
 bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCurrTSF)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         unsigned short ww;
         unsigned char byData;
 
-        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
+        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-                VNSvInPortB(dwIoBase + MAC_REG_TFTCTL, &byData);
+                VNSvInPortB(iobase + MAC_REG_TFTCTL, &byData);
                 if (!(byData & TFTCTL_TSFCNTRRD))
                         break;
         }
         if (ww == W_MAX_TIMEOUT)
                 return false;
-        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
-        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
+        VNSvInPortD(iobase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
+        VNSvInPortD(iobase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
 
         return true;
 }
@@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short wBeaconInterval)
  *
  * Parameters:
  *  In:
- *      dwIoBase        - IO Base
+ *      iobase          - IO Base
  *      wBeaconInterval - Beacon Interval
  *  Out:
  *      none
@@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short wBeaconInterval)
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
                            unsigned short wBeaconInterval)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         u64 qwNextTBTT = 0;
 
         CARDbGetCurrentTSF(priv, &qwNextTBTT); /* Get Local TSF counter */
 
         qwNextTBTT = CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval);
         /* Set NextTBTT */
-        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
-        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 32));
-        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
+        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
+        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 32));
+        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
 }
 
 /*
@@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,
                          unsigned short wBeaconInterval)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
 
         qwTSF = CARDqGetNextTBTT(qwTSF, wBeaconInterval);
         /* Set NextTBTT */
-        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwTSF);
-        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 32));
-        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
+        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwTSF);
+        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 32));
+        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
         pr_debug("Card:Update Next TBTT[%8llx]\n", qwTSF);
 }
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 030f529..4d8b748 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -554,341 +554,341 @@
 
 /*---------------------  Export Macros ------------------------------*/
 
-#define MACvRegBitsOn(dwIoBase, byRegOfs, byBits)                        \
+#define MACvRegBitsOn(iobase, byRegOfs, byBits)                        \
 do {                                                                        \
         unsigned char byData;                                                \
-        VNSvInPortB(dwIoBase + byRegOfs, &byData);                        \
-        VNSvOutPortB(dwIoBase + byRegOfs, byData | (byBits));                \
+        VNSvInPortB(iobase + byRegOfs, &byData);                        \
+        VNSvOutPortB(iobase + byRegOfs, byData | (byBits));                \
 } while (0)
 
-#define MACvWordRegBitsOn(dwIoBase, byRegOfs, wBits)                        \
+#define MACvWordRegBitsOn(iobase, byRegOfs, wBits)                        \
 do {                                                                        \
         unsigned short wData;                                                \
-        VNSvInPortW(dwIoBase + byRegOfs, &wData);                        \
-        VNSvOutPortW(dwIoBase + byRegOfs, wData | (wBits));                \
+        VNSvInPortW(iobase + byRegOfs, &wData);                        \
+        VNSvOutPortW(iobase + byRegOfs, wData | (wBits));                \
 } while (0)
 
-#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, dwBits)                        \
+#define MACvDWordRegBitsOn(iobase, byRegOfs, dwBits)                        \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + byRegOfs, &dwData);                        \
-        VNSvOutPortD(dwIoBase + byRegOfs, dwData | (dwBits));                \
+        VNSvInPortD(iobase + byRegOfs, &dwData);                        \
+        VNSvOutPortD(iobase + byRegOfs, dwData | (dwBits));                \
 } while (0)
 
-#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, byBits)                \
+#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, byBits)                \
 do {                                                                        \
         unsigned char byData;                                                \
-        VNSvInPortB(dwIoBase + byRegOfs, &byData);                        \
+        VNSvInPortB(iobase + byRegOfs, &byData);                        \
         byData &= byMask;                                                \
-        VNSvOutPortB(dwIoBase + byRegOfs, byData | (byBits));                \
+        VNSvOutPortB(iobase + byRegOfs, byData | (byBits));                \
 } while (0)
 
-#define MACvRegBitsOff(dwIoBase, byRegOfs, byBits)                        \
+#define MACvRegBitsOff(iobase, byRegOfs, byBits)                        \
 do {                                                                        \
         unsigned char byData;                                                \
-        VNSvInPortB(dwIoBase + byRegOfs, &byData);                        \
-        VNSvOutPortB(dwIoBase + byRegOfs, byData & ~(byBits));                \
+        VNSvInPortB(iobase + byRegOfs, &byData);                        \
+        VNSvOutPortB(iobase + byRegOfs, byData & ~(byBits));                \
 } while (0)
 
-#define MACvWordRegBitsOff(dwIoBase, byRegOfs, wBits)                        \
+#define MACvWordRegBitsOff(iobase, byRegOfs, wBits)                        \
 do {                                                                        \
         unsigned short wData;                                                \
-        VNSvInPortW(dwIoBase + byRegOfs, &wData);                        \
-        VNSvOutPortW(dwIoBase + byRegOfs, wData & ~(wBits));                \
+        VNSvInPortW(iobase + byRegOfs, &wData);                        \
+        VNSvOutPortW(iobase + byRegOfs, wData & ~(wBits));                \
 } while (0)
 
-#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, dwBits)                        \
+#define MACvDWordRegBitsOff(iobase, byRegOfs, dwBits)                        \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + byRegOfs, &dwData);                        \
-        VNSvOutPortD(dwIoBase + byRegOfs, dwData & ~(dwBits));                \
+        VNSvInPortD(iobase + byRegOfs, &dwData);                        \
+        VNSvOutPortD(iobase + byRegOfs, dwData & ~(dwBits));                \
 } while (0)
 
-#define MACvGetCurrRx0DescAddr(dwIoBase, pdwCurrDescAddr)        \
-        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0,                \
+#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)        \
+        VNSvInPortD(iobase + MAC_REG_RXDMAPTR0,                \
                     (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrRx1DescAddr(dwIoBase, pdwCurrDescAddr)        \
-        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1,                \
+#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)        \
+        VNSvInPortD(iobase + MAC_REG_RXDMAPTR1,                \
                     (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrTx0DescAddr(dwIoBase, pdwCurrDescAddr)        \
-        VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0,                \
+#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)        \
+        VNSvInPortD(iobase + MAC_REG_TXDMAPTR0,                \
                     (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrAC0DescAddr(dwIoBase, pdwCurrDescAddr)        \
-        VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR,                \
+#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)        \
+        VNSvInPortD(iobase + MAC_REG_AC0DMAPTR,                \
                     (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrSyncDescAddr(dwIoBase, pdwCurrDescAddr)        \
-        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMAPTR,                \
+#define MACvGetCurrSyncDescAddr(iobase, pdwCurrDescAddr)        \
+        VNSvInPortD(iobase + MAC_REG_SYNCDMAPTR,                \
                     (unsigned long *)pdwCurrDescAddr)
 
-#define MACvGetCurrATIMDescAddr(dwIoBase, pdwCurrDescAddr)        \
-        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMAPTR,                \
+#define MACvGetCurrATIMDescAddr(iobase, pdwCurrDescAddr)        \
+        VNSvInPortD(iobase + MAC_REG_ATIMDMAPTR,                \
                     (unsigned long *)pdwCurrDescAddr)
 
 /* set the chip with current BCN tx descriptor address */
-#define MACvSetCurrBCNTxDescAddr(dwIoBase, dwCurrDescAddr)        \
-        VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR,                \
+#define MACvSetCurrBCNTxDescAddr(iobase, dwCurrDescAddr)        \
+        VNSvOutPortD(iobase + MAC_REG_BCNDMAPTR,                \
                      dwCurrDescAddr)
 
 /* set the chip with current BCN length */
-#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)                \
-        VNSvOutPortW(dwIoBase + MAC_REG_BCNDMACTL+2,                \
+#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)                \
+        VNSvOutPortW(iobase + MAC_REG_BCNDMACTL+2,                \
                      wCurrBCNLength)
 
-#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)                \
+#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)                \
 do {                                                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \
-        VNSvInPortB(dwIoBase + MAC_REG_BSSID0,                        \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \
+        VNSvInPortB(iobase + MAC_REG_BSSID0,                        \
                     (unsigned char *)pbyEtherAddr);                \
-        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \
+        VNSvInPortB(iobase + MAC_REG_BSSID0 + 1,                \
                     pbyEtherAddr + 1);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \
+        VNSvInPortB(iobase + MAC_REG_BSSID0 + 2,                \
                     pbyEtherAddr + 2);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \
+        VNSvInPortB(iobase + MAC_REG_BSSID0 + 3,                \
                     pbyEtherAddr + 3);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \
+        VNSvInPortB(iobase + MAC_REG_BSSID0 + 4,                \
                     pbyEtherAddr + 4);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \
+        VNSvInPortB(iobase + MAC_REG_BSSID0 + 5,                \
                     pbyEtherAddr + 5);                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \
 } while (0)
 
-#define MACvWriteBSSIDAddress(dwIoBase, pbyEtherAddr)                \
+#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)                \
 do {                                                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \
-        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0,                        \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \
+        VNSvOutPortB(iobase + MAC_REG_BSSID0,                        \
                      *(pbyEtherAddr));                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \
+        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 1,                \
                      *(pbyEtherAddr + 1));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \
+        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 2,                \
                      *(pbyEtherAddr + 2));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \
+        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 3,                \
                      *(pbyEtherAddr + 3));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \
+        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 4,                \
                      *(pbyEtherAddr + 4));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \
+        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 5,                \
                      *(pbyEtherAddr + 5));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \
 } while (0)
 
-#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)                \
+#define MACvReadEtherAddress(iobase, pbyEtherAddr)                \
 do {                                                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \
-        VNSvInPortB(dwIoBase + MAC_REG_PAR0,                        \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \
+        VNSvInPortB(iobase + MAC_REG_PAR0,                        \
                     (unsigned char *)pbyEtherAddr);                \
-        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 1,                \
+        VNSvInPortB(iobase + MAC_REG_PAR0 + 1,                \
                     pbyEtherAddr + 1);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 2,                \
+        VNSvInPortB(iobase + MAC_REG_PAR0 + 2,                \
                     pbyEtherAddr + 2);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 3,                \
+        VNSvInPortB(iobase + MAC_REG_PAR0 + 3,                \
                     pbyEtherAddr + 3);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 4,                \
+        VNSvInPortB(iobase + MAC_REG_PAR0 + 4,                \
                     pbyEtherAddr + 4);                                \
-        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 5,                \
+        VNSvInPortB(iobase + MAC_REG_PAR0 + 5,                \
                     pbyEtherAddr + 5);                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \
 } while (0)
 
-#define MACvWriteEtherAddress(dwIoBase, pbyEtherAddr)                \
+#define MACvWriteEtherAddress(iobase, pbyEtherAddr)                \
 do {                                                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAR0,                        \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \
+        VNSvOutPortB(iobase + MAC_REG_PAR0,                        \
                      *pbyEtherAddr);                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 1,                \
+        VNSvOutPortB(iobase + MAC_REG_PAR0 + 1,                \
                      *(pbyEtherAddr + 1));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 2,                \
+        VNSvOutPortB(iobase + MAC_REG_PAR0 + 2,                \
                      *(pbyEtherAddr + 2));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 3,                \
+        VNSvOutPortB(iobase + MAC_REG_PAR0 + 3,                \
                      *(pbyEtherAddr + 3));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 4,                \
+        VNSvOutPortB(iobase + MAC_REG_PAR0 + 4,                \
                      *(pbyEtherAddr + 4));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 5,                \
+        VNSvOutPortB(iobase + MAC_REG_PAR0 + 5,                \
                      *(pbyEtherAddr + 5));                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \
 } while (0)
 
-#define MACvClearISR(dwIoBase)                                                \
-        VNSvOutPortD(dwIoBase + MAC_REG_ISR, IMR_MASK_VALUE)
+#define MACvClearISR(iobase)                                                \
+        VNSvOutPortD(iobase + MAC_REG_ISR, IMR_MASK_VALUE)
 
-#define MACvStart(dwIoBase)                                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_HOSTCR,                                \
+#define MACvStart(iobase)                                                \
+        VNSvOutPortB(iobase + MAC_REG_HOSTCR,                                \
                      (HOSTCR_MACEN | HOSTCR_RXON | HOSTCR_TXON))
 
-#define MACvRx0PerPktMode(dwIoBase)                                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKT)
+#define MACvRx0PerPktMode(iobase)                                        \
+        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKT)
 
-#define MACvRx0BufferFillMode(dwIoBase)                                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
+#define MACvRx0BufferFillMode(iobase)                                        \
+        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
 
-#define MACvRx1PerPktMode(dwIoBase)                                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKT)
+#define MACvRx1PerPktMode(iobase)                                        \
+        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKT)
 
-#define MACvRx1BufferFillMode(dwIoBase)                                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
+#define MACvRx1BufferFillMode(iobase)                                        \
+        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
 
-#define MACvRxOn(dwIoBase)                                                \
-        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON)
+#define MACvRxOn(iobase)                                                \
+        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_RXON)
 
-#define MACvReceive0(dwIoBase)                                                \
+#define MACvReceive0(iobase)                                                \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL0, &dwData);                \
+        VNSvInPortD(iobase + MAC_REG_RXDMACTL0, &dwData);                \
         if (dwData & DMACTL_RUN)                                        \
-                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_WAKE); \
+                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_WAKE); \
         else                                                                \
-                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_RUN); \
+                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_RUN); \
 } while (0)
 
-#define MACvReceive1(dwIoBase)                                                \
+#define MACvReceive1(iobase)                                                \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL1, &dwData);                \
+        VNSvInPortD(iobase + MAC_REG_RXDMACTL1, &dwData);                \
         if (dwData & DMACTL_RUN)                                        \
-                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_WAKE); \
+                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_WAKE); \
         else                                                                \
-                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_RUN); \
+                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_RUN); \
 } while (0)
 
-#define MACvTxOn(dwIoBase)                                                \
-        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON)
+#define MACvTxOn(iobase)                                                \
+        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_TXON)
 
-#define MACvTransmit0(dwIoBase)                                                \
+#define MACvTransmit0(iobase)                                                \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + MAC_REG_TXDMACTL0, &dwData);                \
+        VNSvInPortD(iobase + MAC_REG_TXDMACTL0, &dwData);                \
         if (dwData & DMACTL_RUN)                                        \
-                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_WAKE); \
+                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_WAKE); \
         else                                                                \
-                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_RUN); \
+                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitAC0(dwIoBase)                                        \
+#define MACvTransmitAC0(iobase)                                        \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + MAC_REG_AC0DMACTL, &dwData);                \
+        VNSvInPortD(iobase + MAC_REG_AC0DMACTL, &dwData);                \
         if (dwData & DMACTL_RUN)                                        \
-                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_WAKE); \
+                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_WAKE); \
         else                                                                \
-                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN); \
+                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitSYNC(dwIoBase)                                        \
+#define MACvTransmitSYNC(iobase)                                        \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMACTL, &dwData);                \
+        VNSvInPortD(iobase + MAC_REG_SYNCDMACTL, &dwData);                \
         if (dwData & DMACTL_RUN)                                        \
-                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \
+                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \
         else                                                                \
-                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, DMACTL_RUN); \
+                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitATIM(dwIoBase)                                        \
+#define MACvTransmitATIM(iobase)                                        \
 do {                                                                        \
         unsigned long dwData;                                                \
-        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMACTL, &dwData);                \
+        VNSvInPortD(iobase + MAC_REG_ATIMDMACTL, &dwData);                \
         if (dwData & DMACTL_RUN)                                        \
-                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \
+                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \
         else                                                                \
-                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, DMACTL_RUN); \
+                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_RUN); \
 } while (0)
 
-#define MACvTransmitBCN(dwIoBase)                                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_BCNDMACTL, BEACON_READY)
+#define MACvTransmitBCN(iobase)                                        \
+        VNSvOutPortB(iobase + MAC_REG_BCNDMACTL, BEACON_READY)
 
-#define MACvClearStckDS(dwIoBase)                                        \
+#define MACvClearStckDS(iobase)                                        \
 do {                                                                        \
         unsigned char byOrgValue;                                        \
-        VNSvInPortB(dwIoBase + MAC_REG_STICKHW, &byOrgValue);                \
+        VNSvInPortB(iobase + MAC_REG_STICKHW, &byOrgValue);                \
         byOrgValue = byOrgValue & 0xFC;                                        \
-        VNSvOutPortB(dwIoBase + MAC_REG_STICKHW, byOrgValue);                \
+        VNSvOutPortB(iobase + MAC_REG_STICKHW, byOrgValue);                \
 } while (0)
 
-#define MACvReadISR(dwIoBase, pdwValue)                                \
-        VNSvInPortD(dwIoBase + MAC_REG_ISR, pdwValue)
+#define MACvReadISR(iobase, pdwValue)                                \
+        VNSvInPortD(iobase + MAC_REG_ISR, pdwValue)
 
-#define MACvWriteISR(dwIoBase, dwValue)                                \
-        VNSvOutPortD(dwIoBase + MAC_REG_ISR, dwValue)
+#define MACvWriteISR(iobase, dwValue)                                \
+        VNSvOutPortD(iobase + MAC_REG_ISR, dwValue)
 
-#define MACvIntEnable(dwIoBase, dwMask)                                \
-        VNSvOutPortD(dwIoBase + MAC_REG_IMR, dwMask)
+#define MACvIntEnable(iobase, dwMask)                                \
+        VNSvOutPortD(iobase + MAC_REG_IMR, dwMask)
 
-#define MACvIntDisable(dwIoBase)                                \
-        VNSvOutPortD(dwIoBase + MAC_REG_IMR, 0)
+#define MACvIntDisable(iobase)                                \
+        VNSvOutPortD(iobase + MAC_REG_IMR, 0)
 
-#define MACvSelectPage0(dwIoBase)                                \
-                VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0)
+#define MACvSelectPage0(iobase)                                \
+                VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0)
 
-#define MACvSelectPage1(dwIoBase)                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1)
+#define MACvSelectPage1(iobase)                                \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1)
 
-#define MACvReadMIBCounter(dwIoBase, pdwCounter)                        \
-        VNSvInPortD(dwIoBase + MAC_REG_MIBCNTR, pdwCounter)
+#define MACvReadMIBCounter(iobase, pdwCounter)                        \
+        VNSvInPortD(iobase + MAC_REG_MIBCNTR, pdwCounter)
 
-#define MACvPwrEvntDisable(dwIoBase)                                        \
-        VNSvOutPortW(dwIoBase + MAC_REG_WAKEUPEN0, 0x0000)
+#define MACvPwrEvntDisable(iobase)                                        \
+        VNSvOutPortW(iobase + MAC_REG_WAKEUPEN0, 0x0000)
 
-#define MACvEnableProtectMD(dwIoBase)                                        \
+#define MACvEnableProtectMD(iobase)                                        \
 do {                                                                        \
         unsigned long dwOrgValue;                                        \
-        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);                \
+        VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);                \
         dwOrgValue = dwOrgValue | EnCFG_ProtectMd;                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);                \
+        VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);                \
 } while (0)
 
-#define MACvDisableProtectMD(dwIoBase)                                        \
+#define MACvDisableProtectMD(iobase)                                        \
 do {                                                                        \
         unsigned long dwOrgValue;                                        \
-        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);                \
+        VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);                \
         dwOrgValue = dwOrgValue & ~EnCFG_ProtectMd;                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);                \
+        VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);                \
 } while (0)
 
-#define MACvEnableBarkerPreambleMd(dwIoBase)                                \
+#define MACvEnableBarkerPreambleMd(iobase)                                \
 do {                                                                        \
         unsigned long dwOrgValue;                                        \
-        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);                \
+        VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);                \
         dwOrgValue = dwOrgValue | EnCFG_BarkerPream;                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);                \
+        VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);                \
 } while (0)
 
-#define MACvDisableBarkerPreambleMd(dwIoBase)                                \
+#define MACvDisableBarkerPreambleMd(iobase)                                \
 do {                                                                        \
         unsigned long dwOrgValue;                                        \
-        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);                \
+        VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);                \
         dwOrgValue = dwOrgValue & ~EnCFG_BarkerPream;                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);                \
+        VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);                \
 } while (0)
 
-#define MACvSetBBType(dwIoBase, byTyp)                                        \
+#define MACvSetBBType(iobase, byTyp)                                        \
 do {                                                                        \
         unsigned long dwOrgValue;                                        \
-        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);                \
+        VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);                \
         dwOrgValue = dwOrgValue & ~EnCFG_BBType_MASK;                        \
         dwOrgValue = dwOrgValue | (unsigned long)byTyp;                        \
-        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);                \
+        VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);                \
 } while (0)
 
-#define MACvReadATIMW(dwIoBase, pwCounter)                                \
-        VNSvInPortW(dwIoBase + MAC_REG_AIDATIM, pwCounter)
+#define MACvReadATIMW(iobase, pwCounter)                                \
+        VNSvInPortW(iobase + MAC_REG_AIDATIM, pwCounter)
 
-#define MACvWriteATIMW(dwIoBase, wCounter)                                \
-        VNSvOutPortW(dwIoBase + MAC_REG_AIDATIM, wCounter)
+#define MACvWriteATIMW(iobase, wCounter)                                \
+        VNSvOutPortW(iobase + MAC_REG_AIDATIM, wCounter)
 
-#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)                \
+#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)                \
 do {                                                                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \
-        VNSvOutPortW(dwIoBase + byRegOfs, wCRC);                \
-        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \
+        VNSvOutPortW(iobase + byRegOfs, wCRC);                \
+        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \
 } while (0)
 
-#define MACvGPIOIn(dwIoBase, pbyValue)                                        \
-        VNSvInPortB(dwIoBase + MAC_REG_GPIOCTL1, pbyValue)
+#define MACvGPIOIn(iobase, pbyValue)                                        \
+        VNSvInPortB(iobase + MAC_REG_GPIOCTL1, pbyValue)
 
-#define MACvSetRFLE_LatchBase(dwIoBase)                                 \
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
+#define MACvSetRFLE_LatchBase(iobase)                                 \
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
 
 bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byRegOfs,
                      unsigned char byTestBits);
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 447882c..92bb1c6 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -410,7 +410,7 @@ static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *  Out:
  *      none
  *
@@ -419,16 +419,16 @@ static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
  */
 static bool s_bAL7230Init(struct vnt_private *priv)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         int     ii;
         bool ret;
 
         ret = true;
 
         /* 3-wire control for normal mode */
-        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);
+        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0);
 
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
                                                          SOFTPWRCTL_TXPEINV));
         BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value for Calibration */
 
@@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
                 ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]);
 
         /* PLL On */
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
         /* Calibration */
         MACvTimer0MicroSDelay(priv, 150);/* 150us */
@@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
         /* TXDCOC:disable, RCK:disable */
         ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
 
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
                                                          SOFTPWRCTL_SWPE2    |
                                                          SOFTPWRCTL_SWPECTI  |
                                                          SOFTPWRCTL_TXPEINV));
@@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 
         /* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
         /* 3-wire control for power saving mode */
-        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
+        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
 
         return ret;
 }
@@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private *priv)
  */
 static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byChannel)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         bool ret;
 
         ret = true;
 
         /* PLLON Off */
-        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
         ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[byChannel - 1]);
         ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel - 1]);
         ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel - 1]);
 
         /* PLLOn On */
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
         /* Set Channel[7] = 0 to tell H/W channel is changing now. */
-        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
+        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F));
         MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230);
         /* Set Channel[7] = 1 to tell H/W channel change is done. */
-        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));
+        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80));
 
         return ret;
 }
@@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byCha
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *      dwData      - data to write
  *  Out:
  *      none
@@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byCha
  */
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         unsigned short ww;
         unsigned long dwValue;
 
-        VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwData);
+        VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData);
 
         /* W_MAX_TIMEOUT is the timeout period */
         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-                VNSvInPortD(dwIoBase + MAC_REG_IFREGCTL, &dwValue);
+                VNSvInPortD(iobase + MAC_REG_IFREGCTL, &dwValue);
                 if (dwValue & IFREGCTL_DONE)
                         break;
         }
@@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *  Out:
  *      none
  *
@@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
  */
 static bool RFbAL2230Init(struct vnt_private *priv)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         int     ii;
         bool ret;
 
         ret = true;
 
         /* 3-wire control for normal mode */
-        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);
+        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0);
 
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
                                                          SOFTPWRCTL_TXPEINV));
         /* PLL  Off */
-        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
         /* patch abnormal AL2230 frequency output */
         IFRFbWriteEmbedded(priv, (0x07168700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
@@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
         MACvTimer0MicroSDelay(priv, 30); /* delay 30 us */
 
         /* PLL On */
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
         MACvTimer0MicroSDelay(priv, 150);/* 150us */
         ret &= IFRFbWriteEmbedded(priv, (0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
@@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private *priv)
         MACvTimer0MicroSDelay(priv, 30);/* 30us */
         ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]);
 
-        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
+        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
                                                          SOFTPWRCTL_SWPE2    |
                                                          SOFTPWRCTL_SWPECTI  |
                                                          SOFTPWRCTL_TXPEINV));
 
         /* 3-wire control for power saving mode */
-        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
+        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
 
         return ret;
 }
 
 static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned char byChannel)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         bool ret;
 
         ret = true;
@@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned char byCha
         ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel - 1]);
 
         /* Set Channel[7] = 0 to tell H/W channel is changing now. */
-        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
+        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F));
         MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230);
         /* Set Channel[7] = 1 to tell H/W channel change is done. */
-        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));
+        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80));
 
         return ret;
 }
@@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase      - I/O base address
  *      uChannel    - channel number
  *      bySleepCnt  - SleepProgSyn count
  *
@@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
 bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
                          u16 uChannel)
 {
-        void __iomem *dwIoBase = priv->PortOffset;
+        void __iomem *iobase = priv->PortOffset;
         int   ii;
         unsigned char byInitCount = 0;
         unsigned char bySleepCount = 0;
 
-        VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0);
+        VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
         switch (byRFType) {
         case RF_AIROHA:
         case RF_AL2230S:
@@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      dwIoBase       - I/O base address
+ *      iobase         - I/O base address
  *      dwRFPowerTable - RF Tx Power Setting
  *  Out:
  *      none
@@ -830,7 +830,7 @@ bool RFbSetPower(
  *
  * Parameters:
  *  In:
- *      dwIoBase       - I/O base address
+ *      iobase         - I/O base address
  *      dwRFPowerTable - RF Tx Power Setting
  *  Out:
  *      none
diff --git a/drivers/staging/vt6655/srom.c b/drivers/staging/vt6655/srom.c
index ee99277..0b612d3 100644
--- a/drivers/staging/vt6655/srom.c
+++ b/drivers/staging/vt6655/srom.c
@@ -64,7 +64,7 @@
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      iobase          - I/O base address
  *      byContntOffset  - address of EEPROM
  *  Out:
  *      none
@@ -72,7 +72,7 @@
  * Return Value: data read
  *
  */
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
+unsigned char SROMbyReadEmbedded(void __iomem *iobase,
                                  unsigned char byContntOffset)
 {
         unsigned short wDelay, wNoACK;
@@ -81,18 +81,18 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
         unsigned char byOrg;
 
         byData = 0xFF;
-        VNSvInPortB(dwIoBase + MAC_REG_I2MCFG, &byOrg);
+        VNSvInPortB(iobase + MAC_REG_I2MCFG, &byOrg);
         /* turn off hardware retry for getting NACK */
-        VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, (byOrg & (~I2MCFG_NORETRY)));
+        VNSvOutPortB(iobase + MAC_REG_I2MCFG, (byOrg & (~I2MCFG_NORETRY)));
         for (wNoACK = 0; wNoACK < W_MAX_I2CRETRY; wNoACK++) {
-                VNSvOutPortB(dwIoBase + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);
-                VNSvOutPortB(dwIoBase + MAC_REG_I2MTGAD, byContntOffset);
+                VNSvOutPortB(iobase + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);
+                VNSvOutPortB(iobase + MAC_REG_I2MTGAD, byContntOffset);
 
                 /* issue read command */
-                VNSvOutPortB(dwIoBase + MAC_REG_I2MCSR, I2MCSR_EEMR);
+                VNSvOutPortB(iobase + MAC_REG_I2MCSR, I2MCSR_EEMR);
                 /* wait DONE be set */
                 for (wDelay = 0; wDelay < W_MAX_TIMEOUT; wDelay++) {
-                        VNSvInPortB(dwIoBase + MAC_REG_I2MCSR, &byWait);
+                        VNSvInPortB(iobase + MAC_REG_I2MCSR, &byWait);
                         if (byWait & (I2MCSR_DONE | I2MCSR_NACK))
                                 break;
                         PCAvDelayByIO(CB_DELAY_LOOP_WAIT);
@@ -102,8 +102,8 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
                         break;
                 }
         }
-        VNSvInPortB(dwIoBase + MAC_REG_I2MDIPT, &byData);
-        VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, byOrg);
+        VNSvInPortB(iobase + MAC_REG_I2MDIPT, &byData);
+        VNSvOutPortB(iobase + MAC_REG_I2MCFG, byOrg);
         return byData;
 }
 
@@ -112,20 +112,20 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      iobase          - I/O base address
  *  Out:
  *      pbyEepromRegs   - EEPROM content Buffer
  *
  * Return Value: none
  *
  */
-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs)
+void SROMvReadAllContents(void __iomem *iobase, unsigned char *pbyEepromRegs)
 {
         int     ii;
 
         /* ii = Rom Address */
         for (ii = 0; ii < EEP_MAX_CONTEXT_SIZE; ii++) {
-                *pbyEepromRegs = SROMbyReadEmbedded(dwIoBase,
+                *pbyEepromRegs = SROMbyReadEmbedded(iobase,
                                                     (unsigned char)ii);
                 pbyEepromRegs++;
         }
@@ -136,21 +136,21 @@ void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs)
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      iobase          - I/O base address
  *  Out:
  *      pbyEtherAddress - Ethernet Address buffer
  *
  * Return Value: none
  *
  */
-void SROMvReadEtherAddress(void __iomem *dwIoBase,
+void SROMvReadEtherAddress(void __iomem *iobase,
                            unsigned char *pbyEtherAddress)
 {
         unsigned char ii;
 
         /* ii = Rom Address */
         for (ii = 0; ii < ETH_ALEN; ii++) {
-                *pbyEtherAddress = SROMbyReadEmbedded(dwIoBase, ii);
+                *pbyEtherAddress = SROMbyReadEmbedded(iobase, ii);
                 pbyEtherAddress++;
         }
 }
diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
index 531bf00..3087d56 100644
--- a/drivers/staging/vt6655/srom.h
+++ b/drivers/staging/vt6655/srom.h
@@ -90,12 +90,12 @@
 
 /*---------------------  Export Functions  --------------------------*/
 
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
+unsigned char SROMbyReadEmbedded(void __iomem *iobase,
                                  unsigned char byContntOffset);
 
-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs);
+void SROMvReadAllContents(void __iomem *iobase, unsigned char *pbyEepromRegs);
 
-void SROMvReadEtherAddress(void __iomem *dwIoBase,
+void SROMvReadEtherAddress(void __iomem *iobase,
                            unsigned char *pbyEtherAddress);
 
 #endif /* __EEPROM_H__*/
-- 
2.7.4 

