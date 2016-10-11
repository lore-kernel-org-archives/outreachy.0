X-GM-THRID: 6340186644258226176
Date: Tue, 11 Oct 2016 05:42:16 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7185c3cf-60db-428f-a9a3-3455dea016db@googlegroups.com>
Subject: [Patch v3] Staging: vt6655: Replace dwIoBase by iobase
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3541_1046000143.1476189736669"
X-Google-Token: EKi8878FEvBkMlbe4Tk0
X-Google-IP: 117.246.134.217

------=_Part_3541_1046000143.1476189736669
Content-Type: multipart/alternative; 
	boundary="----=_Part_3542_1665619915.1476189736671"

------=_Part_3542_1665619915.1476189736671
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

In this patch dwIoBase is renamed as iobase. This is done to fix the
checkpatch issue of the CamelCase.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 Changes in v3:
 -Edited commit message.  

 drivers/staging/vt6655/
baseband.c |  52 +++---
 drivers/staging/vt6655/baseband.h |   8 +-
 drivers/staging/vt6655/card.c     |  30 ++--
 drivers/staging/vt6655/mac.h      | 322 
+++++++++++++++++++-------------------
 drivers/staging/vt6655/rf.c       |  64 ++++----
 drivers/staging/vt6655/srom.c     |  32 ++--
 drivers/staging/vt6655/srom.h     |   6 +-
 7 files changed, 257 insertions(+), 257 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c
b/drivers/staging/vt6655/baseband.c
index ba051ff..1ab91f9 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1914,7 +1914,7 @@ void vnt_get_phy_field(struct vnt_private *priv,
u32 frame_length,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *      byBBAddr    - address of register in Baseband
  *  Out:
  *      pbyData     - data read
@@ -1925,24 +1925,24 @@ void vnt_get_phy_field(struct vnt_private
*priv, u32 frame_length,
 bool BBbReadEmbedded(struct vnt_private *priv,
                     unsigned char byBBAddr, unsigned char *pbyData)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        unsigned short ww;
        unsigned char byValue;

        /* BB reg offset */
-       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+       VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);

        /* turn on REGR */
-       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
+       MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
        /* W_MAX_TIMEOUT is the timeout period */
        for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
+               VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
                if (byValue & BBREGCTL_DONE)
                        break;
        }

        /* get BB data */
-       VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData);
+       VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData);

        if (ww == W_MAX_TIMEOUT) {
                pr_debug(" DBG_PORT80(0x30)\n");
@@ -1956,7 +1956,7 @@ bool BBbReadEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *      byBBAddr    - address of register in Baseband
  *      byData      - data to write
  *  Out:
@@ -1968,20 +1968,20 @@ bool BBbReadEmbedded(struct vnt_private *priv,
 bool BBbWriteEmbedded(struct vnt_private *priv,
                      unsigned char byBBAddr, unsigned char byData)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        unsigned short ww;
        unsigned char byValue;

        /* BB reg offset */
-       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+       VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
        /* set BB data */
-       VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData);
+       VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData);

        /* turn on BBREGCTL_REGW */
-       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
+       MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
        /* W_MAX_TIMEOUT is the timeout period */
        for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
+               VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
                if (byValue & BBREGCTL_DONE)
                        break;
        }
@@ -1998,7 +1998,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *      byRevId     - Revision ID
  *      byRFType    - RF type
  *  Out:
@@ -2012,7 +2012,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
 {
        bool bResult = true;
        int        ii;
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        unsigned char byRFType = priv->byRFType;
        unsigned char byLocalID = priv->byLocalID;

@@ -2034,8 +2034,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
                                        byVT3253B0_AGC4_RFMD2959[ii][0],
                                        byVT3253B0_AGC4_RFMD2959[ii][1]);

-                       VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-                       MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
+                       VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);
+                       MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
                }
                priv->abyBBVGA[0] = 0x18;
                priv->abyBBVGA[1] = 0x0A;
@@ -2074,8 +2074,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
                                byVT3253B0_AGC[ii][0],
                                byVT3253B0_AGC[ii][1]);

-               VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-               MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
+               VNSvOutPortB(iobase + MAC_REG_ITRTMSET, 0x23);
+               MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));

                priv->abyBBVGA[0] = 0x14;
                priv->abyBBVGA[1] = 0x0A;
@@ -2096,7 +2096,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
                 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
inverted)
                 */

-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+               /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/

                /* Init ANT B select,
                 * RX Config CR10 = 0x28->0x2A,
@@ -2104,7 +2104,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
                 * make the ANT_A, ANT_B inverted)
                 */

-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+               /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
                /* Select VC1/VC2, CR215 = 0x02->0x06 */
                bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);

@@ -2152,7 +2152,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
                priv->ldBmThreshold[2] = 0;
                priv->ldBmThreshold[3] = 0;
                /* Fix VT3226 DFC system timing issue */
-               MACvSetRFLE_LatchBase(dwIoBase);
+               MACvSetRFLE_LatchBase(iobase);
                /* {{ RobertYu: 20050104 */
        } else if (byRFType == RF_AIROHA7230) {
                for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
@@ -2164,11 +2164,11 @@ bool BBbVT3253Init(struct vnt_private *priv)
                /* Init ANT B select,TX Config CR09 = 0x61->0x45,
                 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
inverted)
                 */
-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+               /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
                /* Init ANT B select,RX Config CR10 = 0x28->0x2A,
                 * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B 
inverted)
                 */
-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+               /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
                /* Select VC1/VC2, CR215 = 0x02->0x06 */
                bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
                /* }} */
@@ -2256,7 +2256,7 @@ void BBvSetVGAGainOffset(struct vnt_private
*priv, unsigned char byData)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *  Out:
  *      none
  *
@@ -2277,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *  Out:
  *      none
  *
@@ -2299,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *  Out:
  *      none
  *
diff --git a/drivers/staging/vt6655/baseband.h
b/drivers/staging/vt6655/baseband.h
index 6d9a936..db0c5cf 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -58,11 +58,11 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000

-#define BBvClearFOE(dwIoBase)                          \
-       BBbWriteEmbedded(dwIoBase, 0xB1, 0)
+#define BBvClearFOE(iobase)                            \
+       BBbWriteEmbedded(iobase, 0xB1, 0)

-#define BBvSetFOE(dwIoBase)                            \
-       BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C)
+#define BBvSetFOE(iobase)                              \
+       BBbWriteEmbedded(iobase, 0xB1, 0x0C)

 unsigned int
 BBuGetFrameTime(
diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e29af55..961e517 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -35,7 +35,7 @@
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
- *      08-26-2003 Kyle Hsu:      Modify the defination type of dwIoBase.
+ *      08-26-2003 Kyle Hsu:      Modify the defination type of iobase.
  *      09-01-2003 Bryan YC Fan:  Add vUpdateIFS().
  *
  */
@@ -937,20 +937,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate,
u64 qwTSF1, u64 qwTSF2)
  */
 bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCurrTSF)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        unsigned short ww;
        unsigned char byData;

-       MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
+       MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
        for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-               VNSvInPortB(dwIoBase + MAC_REG_TFTCTL, &byData);
+               VNSvInPortB(iobase + MAC_REG_TFTCTL, &byData);
                if (!(byData & TFTCTL_TSFCNTRRD))
                        break;
        }
        if (ww == W_MAX_TIMEOUT)
                return false;
-       VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
-       VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
+       VNSvInPortD(iobase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
+       VNSvInPortD(iobase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);

        return true;
 }
@@ -988,7 +988,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short
wBeaconInterval)
  *
  * Parameters:
  *  In:
- *      dwIoBase        - IO Base
+ *      iobase            - IO Base
  *      wBeaconInterval - Beacon Interval
  *  Out:
  *      none
@@ -998,16 +998,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short
wBeaconInterval)
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
                           unsigned short wBeaconInterval)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        u64 qwNextTBTT = 0;

        CARDbGetCurrentTSF(priv, &qwNextTBTT); /* Get Local TSF counter */

        qwNextTBTT = CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval);
        /* Set NextTBTT */
-       VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
-       VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 
32));
-       MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
+       VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
+       VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 
32));
+       MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
 }

 /*
@@ -1027,12 +1027,12 @@ void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,
                         unsigned short wBeaconInterval)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;

        qwTSF = CARDqGetNextTBTT(qwTSF, wBeaconInterval);
        /* Set NextTBTT */
-       VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwTSF);
-       VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 32));
-       MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
+       VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwTSF);
+       VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 32));
+       MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
        pr_debug("Card:Update Next TBTT[%8llx]\n", qwTSF);
 }
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 7481d7a..7cbb12c 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -552,341 +552,341 @@

 /*---------------------  Export Macros ------------------------------*/

-#define MACvRegBitsOn(dwIoBase, byRegOfs, byBits)                      \
+#define MACvRegBitsOn(iobase, byRegOfs, byBits)                        \
 do {                                                                   \
        unsigned char byData;                                           \
-       VNSvInPortB(dwIoBase + byRegOfs, &byData);                      \
-       VNSvOutPortB(dwIoBase + byRegOfs, byData | (byBits));           \
+       VNSvInPortB(iobase + byRegOfs, &byData);                        \
+       VNSvOutPortB(iobase + byRegOfs, byData | (byBits));             \
 } while (0)

-#define MACvWordRegBitsOn(dwIoBase, byRegOfs, wBits)                   \
+#define MACvWordRegBitsOn(iobase, byRegOfs, wBits)                     \
 do {                                                                   \
        unsigned short wData;                                           \
-       VNSvInPortW(dwIoBase + byRegOfs, &wData);                       \
-       VNSvOutPortW(dwIoBase + byRegOfs, wData | (wBits));             \
+       VNSvInPortW(iobase + byRegOfs, &wData);                 \
+       VNSvOutPortW(iobase + byRegOfs, wData | (wBits));               \
 } while (0)

-#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, dwBits)                 \
+#define MACvDWordRegBitsOn(iobase, byRegOfs, dwBits)                   \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + byRegOfs, &dwData);                      \
-       VNSvOutPortD(dwIoBase + byRegOfs, dwData | (dwBits));           \
+       VNSvInPortD(iobase + byRegOfs, &dwData);                        \
+       VNSvOutPortD(iobase + byRegOfs, dwData | (dwBits));             \
 } while (0)

-#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, byBits)            \
+#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, byBits)              \
 do {                                                                   \
        unsigned char byData;                                           \
-       VNSvInPortB(dwIoBase + byRegOfs, &byData);                      \
+       VNSvInPortB(iobase + byRegOfs, &byData);                        \
        byData &= byMask;                                               \
-       VNSvOutPortB(dwIoBase + byRegOfs, byData | (byBits));           \
+       VNSvOutPortB(iobase + byRegOfs, byData | (byBits));             \
 } while (0)

-#define MACvRegBitsOff(dwIoBase, byRegOfs, byBits)                     \
+#define MACvRegBitsOff(iobase, byRegOfs, byBits)                       \
 do {                                                                   \
        unsigned char byData;                                           \
-       VNSvInPortB(dwIoBase + byRegOfs, &byData);                      \
-       VNSvOutPortB(dwIoBase + byRegOfs, byData & ~(byBits));          \
+       VNSvInPortB(iobase + byRegOfs, &byData);                        \
+       VNSvOutPortB(iobase + byRegOfs, byData & ~(byBits));            \
 } while (0)

-#define MACvWordRegBitsOff(dwIoBase, byRegOfs, wBits)                  \
+#define MACvWordRegBitsOff(iobase, byRegOfs, wBits)                    \
 do {                                                                   \
        unsigned short wData;                                           \
-       VNSvInPortW(dwIoBase + byRegOfs, &wData);                       \
-       VNSvOutPortW(dwIoBase + byRegOfs, wData & ~(wBits));            \
+       VNSvInPortW(iobase + byRegOfs, &wData);                 \
+       VNSvOutPortW(iobase + byRegOfs, wData & ~(wBits));              \
 } while (0)

-#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, dwBits)
         \
+#define MACvDWordRegBitsOff(iobase, byRegOfs, dwBits)                  \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + byRegOfs, &dwData);                      \
-       VNSvOutPortD(dwIoBase + byRegOfs, dwData & ~(dwBits));          \
+       VNSvInPortD(iobase + byRegOfs, &dwData);                        \
+       VNSvOutPortD(iobase + byRegOfs, dwData & ~(dwBits));            \
 } while (0)

-#define MACvGetCurrRx0DescAddr(dwIoBase, pdwCurrDescAddr)      \
-       VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0,               \
+#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)        \
+       VNSvInPortD(iobase + MAC_REG_RXDMAPTR0,         \
                    (unsigned long *)pdwCurrDescAddr)

-#define MACvGetCurrRx1DescAddr(dwIoBase, pdwCurrDescAddr)      \
-       VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1,               \
+#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)        \
+       VNSvInPortD(iobase + MAC_REG_RXDMAPTR1,         \
                    (unsigned long *)pdwCurrDescAddr)

-#define MACvGetCurrTx0DescAddr(dwIoBase, pdwCurrDescAddr)      \
-       VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0,               \
+#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)        \
+       VNSvInPortD(iobase + MAC_REG_TXDMAPTR0,         \
                    (unsigned long *)pdwCurrDescAddr)

-#define MACvGetCurrAC0DescAddr(dwIoBase, pdwCurrDescAddr)      \
-       VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR,               \
+#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)        \
+       VNSvInPortD(iobase + MAC_REG_AC0DMAPTR,         \
                    (unsigned long *)pdwCurrDescAddr)

-#define MACvGetCurrSyncDescAddr(dwIoBase, pdwCurrDescAddr)     \
-       VNSvInPortD(dwIoBase + MAC_REG_SYNCDMAPTR,              \
+#define MACvGetCurrSyncDescAddr(iobase, pdwCurrDescAddr)       \
+       VNSvInPortD(iobase + MAC_REG_SYNCDMAPTR,                \
                    (unsigned long *)pdwCurrDescAddr)

-#define MACvGetCurrATIMDescAddr(dwIoBase, pdwCurrDescAddr)     \
-       VNSvInPortD(dwIoBase + MAC_REG_ATIMDMAPTR,              \
+#define MACvGetCurrATIMDescAddr(iobase, pdwCurrDescAddr)       \
+       VNSvInPortD(iobase + MAC_REG_ATIMDMAPTR,                \
                    (unsigned long *)pdwCurrDescAddr)

 /* set the chip with current BCN tx descriptor address */
-#define MACvSetCurrBCNTxDescAddr(dwIoBase, dwCurrDescAddr)     \
-       VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR,              \
+#define MACvSetCurrBCNTxDescAddr(iobase, dwCurrDescAddr)       \
+       VNSvOutPortD(iobase + MAC_REG_BCNDMAPTR,                \
                     dwCurrDescAddr)

 /* set the chip with current BCN length */
-#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)         \
-       VNSvOutPortW(dwIoBase + MAC_REG_BCNDMACTL+2,            \
+#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)           \
+       VNSvOutPortW(iobase + MAC_REG_BCNDMACTL+2,              \
                     wCurrBCNLength)

-#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)           \
+#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)             \
 do {                                                           \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);           \
-       VNSvInPortB(dwIoBase + MAC_REG_BSSID0,                  \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);             \
+       VNSvInPortB(iobase + MAC_REG_BSSID0,                    \
                    (unsigned char *)pbyEtherAddr);             \
-       VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 1,              \
+       VNSvInPortB(iobase + MAC_REG_BSSID0 + 1,                \
                    pbyEtherAddr + 1);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 2,              \
+       VNSvInPortB(iobase + MAC_REG_BSSID0 + 2,                \
                    pbyEtherAddr + 2);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 3,              \
+       VNSvInPortB(iobase + MAC_REG_BSSID0 + 3,                \
                    pbyEtherAddr + 3);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 4,              \
+       VNSvInPortB(iobase + MAC_REG_BSSID0 + 4,                \
                    pbyEtherAddr + 4);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 5,              \
+       VNSvInPortB(iobase + MAC_REG_BSSID0 + 5,                \
                    pbyEtherAddr + 5);                          \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);           \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);             \
 } while (0)

-#define MACvWriteBSSIDAddress(dwIoBase, pbyEtherAddr)          \
+#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)            \
 do {                                                           \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);           \
-       VNSvOutPortB(dwIoBase + MAC_REG_BSSID0,                 \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);             \
+       VNSvOutPortB(iobase + MAC_REG_BSSID0,                   \
                     *(pbyEtherAddr));                          \
-       VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 1,             \
+       VNSvOutPortB(iobase + MAC_REG_BSSID0 + 1,               \
                     *(pbyEtherAddr + 1));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 2,             \
+       VNSvOutPortB(iobase + MAC_REG_BSSID0 + 2,               \
                     *(pbyEtherAddr + 2));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 3,             \
+       VNSvOutPortB(iobase + MAC_REG_BSSID0 + 3,               \
                     *(pbyEtherAddr + 3));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 4,             \
+       VNSvOutPortB(iobase + MAC_REG_BSSID0 + 4,               \
                     *(pbyEtherAddr + 4));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 5,             \
+       VNSvOutPortB(iobase + MAC_REG_BSSID0 + 5,               \
                     *(pbyEtherAddr + 5));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);           \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);             \
 } while (0)

-#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)           \
+#define MACvReadEtherAddress(iobase, pbyEtherAddr)             \
 do {                                                           \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);           \
-       VNSvInPortB(dwIoBase + MAC_REG_PAR0,                    \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);             \
+       VNSvInPortB(iobase + MAC_REG_PAR0,                      \
                    (unsigned char *)pbyEtherAddr);             \
-       VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 1,                \
+       VNSvInPortB(iobase + MAC_REG_PAR0 + 1,          \
                    pbyEtherAddr + 1);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 2,                \
+       VNSvInPortB(iobase + MAC_REG_PAR0 + 2,          \
                    pbyEtherAddr + 2);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 3,                \
+       VNSvInPortB(iobase + MAC_REG_PAR0 + 3,          \
                    pbyEtherAddr + 3);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 4,                \
+       VNSvInPortB(iobase + MAC_REG_PAR0 + 4,          \
                    pbyEtherAddr + 4);                          \
-       VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 5,                \
+       VNSvInPortB(iobase + MAC_REG_PAR0 + 5,          \
                    pbyEtherAddr + 5);                          \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);           \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);             \
 } while (0)

-#define MACvWriteEtherAddress(dwIoBase, pbyEtherAddr)          \
+#define MACvWriteEtherAddress(iobase, pbyEtherAddr)            \
 do {                                                           \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);           \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAR0,                   \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);             \
+       VNSvOutPortB(iobase + MAC_REG_PAR0,                     \
                     *pbyEtherAddr);                            \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 1,               \
+       VNSvOutPortB(iobase + MAC_REG_PAR0 + 1,         \
                     *(pbyEtherAddr + 1));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 2,               \
+       VNSvOutPortB(iobase + MAC_REG_PAR0 + 2,         \
                     *(pbyEtherAddr + 2));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 3,               \
+       VNSvOutPortB(iobase + MAC_REG_PAR0 + 3,         \
                     *(pbyEtherAddr + 3));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 4,               \
+       VNSvOutPortB(iobase + MAC_REG_PAR0 + 4,         \
                     *(pbyEtherAddr + 4));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 5,               \
+       VNSvOutPortB(iobase + MAC_REG_PAR0 + 5,         \
                     *(pbyEtherAddr + 5));                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);           \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);             \
 } while (0)

-#define MACvClearISR(dwIoBase)                                         \
-       VNSvOutPortD(dwIoBase + MAC_REG_ISR, IMR_MASK_VALUE)
+#define MACvClearISR(iobase)                                           \
+       VNSvOutPortD(iobase + MAC_REG_ISR, IMR_MASK_VALUE)

-#define MACvStart(dwIoBase)                                            \
-       VNSvOutPortB(dwIoBase + MAC_REG_HOSTCR,                         \
+#define MACvStart(iobase)                                              \
+       VNSvOutPortB(iobase + MAC_REG_HOSTCR,                           \
                     (HOSTCR_MACEN | HOSTCR_RXON | HOSTCR_TXON))

-#define MACvRx0PerPktMode(dwIoBase)                                    \
-       VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKT)
+#define MACvRx0PerPktMode(iobase)                                      \
+       VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKT)

-#define MACvRx0BufferFillMode(dwIoBase)
         \
-       VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
+#define MACvRx0BufferFillMode(iobase)                                  \
+       VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKTCLR)

-#define MACvRx1PerPktMode(dwIoBase)                                    \
-       VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKT)
+#define MACvRx1PerPktMode(iobase)                                      \
+       VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKT)

-#define MACvRx1BufferFillMode(dwIoBase)
         \
-       VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
+#define MACvRx1BufferFillMode(iobase)                                  \
+       VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKTCLR)

-#define MACvRxOn(dwIoBase)                                             \
-       MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON)
+#define MACvRxOn(iobase)                                               \
+       MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_RXON)

-#define MACvReceive0(dwIoBase)                                         \
+#define MACvReceive0(iobase)                                           \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL0, &dwData);             \
+       VNSvInPortD(iobase + MAC_REG_RXDMACTL0, &dwData);               \
        if (dwData & DMACTL_RUN)                                        \
-               VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_WAKE); \
+               VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_WAKE); \
        else                                                            \
-               VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_RUN); \
+               VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_RUN); \
 } while (0)

-#define MACvReceive1(dwIoBase)                                         \
+#define MACvReceive1(iobase)                                           \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL1, &dwData);             \
+       VNSvInPortD(iobase + MAC_REG_RXDMACTL1, &dwData);               \
        if (dwData & DMACTL_RUN)                                        \
-               VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_WAKE); \
+               VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_WAKE); \
        else                                                            \
-               VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_RUN); \
+               VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_RUN); \
 } while (0)

-#define MACvTxOn(dwIoBase)                                             \
-       MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON)
+#define MACvTxOn(iobase)                                               \
+       MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_TXON)

-#define MACvTransmit0(dwIoBase)
         \
+#define MACvTransmit0(iobase)                                          \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + MAC_REG_TXDMACTL0, &dwData);             \
+       VNSvInPortD(iobase + MAC_REG_TXDMACTL0, &dwData);               \
        if (dwData & DMACTL_RUN)                                        \
-               VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_WAKE); \
+               VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_WAKE); \
        else                                                            \
-               VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_RUN); \
+               VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_RUN); \
 } while (0)

-#define MACvTransmitAC0(dwIoBase)                                      \
+#define MACvTransmitAC0(iobase)                                        \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + MAC_REG_AC0DMACTL, &dwData);             \
+       VNSvInPortD(iobase + MAC_REG_AC0DMACTL, &dwData);               \
        if (dwData & DMACTL_RUN)                                        \
-               VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_WAKE); \
+               VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_WAKE); \
        else                                                            \
-               VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN); \
+               VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_RUN); \
 } while (0)

-#define MACvTransmitSYNC(dwIoBase)                                     \
+#define MACvTransmitSYNC(iobase)                                       \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + MAC_REG_SYNCDMACTL, &dwData);            \
+       VNSvInPortD(iobase + MAC_REG_SYNCDMACTL, &dwData);              \
        if (dwData & DMACTL_RUN)                                        \
-               VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \
+               VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \
        else                                                            \
-               VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, DMACTL_RUN); \
+               VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_RUN); \
 } while (0)

-#define MACvTransmitATIM(dwIoBase)                                     \
+#define MACvTransmitATIM(iobase)                                       \
 do {                                                                   \
        unsigned long dwData;                                           \
-       VNSvInPortD(dwIoBase + MAC_REG_ATIMDMACTL, &dwData);            \
+       VNSvInPortD(iobase + MAC_REG_ATIMDMACTL, &dwData);              \
        if (dwData & DMACTL_RUN)                                        \
-               VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \
+               VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \
        else                                                            \
-               VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, DMACTL_RUN); \
+               VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_RUN); \
 } while (0)

-#define MACvTransmitBCN(dwIoBase)                                      \
-       VNSvOutPortB(dwIoBase + MAC_REG_BCNDMACTL, BEACON_READY)
+#define MACvTransmitBCN(iobase)                                        \
+       VNSvOutPortB(iobase + MAC_REG_BCNDMACTL, BEACON_READY)

-#define MACvClearStckDS(dwIoBase)                                      \
+#define MACvClearStckDS(iobase)                                        \
 do {                                                                   \
        unsigned char byOrgValue;                                       \
-       VNSvInPortB(dwIoBase + MAC_REG_STICKHW, &byOrgValue);           \
+       VNSvInPortB(iobase + MAC_REG_STICKHW, &byOrgValue);             \
        byOrgValue = byOrgValue & 0xFC;                                 \
-       VNSvOutPortB(dwIoBase + MAC_REG_STICKHW, byOrgValue);           \
+       VNSvOutPortB(iobase + MAC_REG_STICKHW, byOrgValue);             \
 } while (0)

-#define MACvReadISR(dwIoBase, pdwValue)                                \
-       VNSvInPortD(dwIoBase + MAC_REG_ISR, pdwValue)
+#define MACvReadISR(iobase, pdwValue)                          \
+       VNSvInPortD(iobase + MAC_REG_ISR, pdwValue)

-#define MACvWriteISR(dwIoBase, dwValue)                                \
-       VNSvOutPortD(dwIoBase + MAC_REG_ISR, dwValue)
+#define MACvWriteISR(iobase, dwValue)                          \
+       VNSvOutPortD(iobase + MAC_REG_ISR, dwValue)

-#define MACvIntEnable(dwIoBase, dwMask)                                \
-       VNSvOutPortD(dwIoBase + MAC_REG_IMR, dwMask)
+#define MACvIntEnable(iobase, dwMask)                          \
+       VNSvOutPortD(iobase + MAC_REG_IMR, dwMask)

-#define MACvIntDisable(dwIoBase)                               \
-       VNSvOutPortD(dwIoBase + MAC_REG_IMR, 0)
+#define MACvIntDisable(iobase)                         \
+       VNSvOutPortD(iobase + MAC_REG_IMR, 0)

-#define MACvSelectPage0(dwIoBase)                              \
-               VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0)
+#define MACvSelectPage0(iobase)                                \
+               VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0)

-#define MACvSelectPage1(dwIoBase)                              \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1)
+#define MACvSelectPage1(iobase)                                \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1)

-#define MACvReadMIBCounter(dwIoBase, pdwCounter)                       \
-       VNSvInPortD(dwIoBase + MAC_REG_MIBCNTR, pdwCounter)
+#define MACvReadMIBCounter(iobase, pdwCounter)                 \
+       VNSvInPortD(iobase + MAC_REG_MIBCNTR, pdwCounter)

-#define MACvPwrEvntDisable(dwIoBase)                                   \
-       VNSvOutPortW(dwIoBase + MAC_REG_WAKEUPEN0, 0x0000)
+#define MACvPwrEvntDisable(iobase)                                     \
+       VNSvOutPortW(iobase + MAC_REG_WAKEUPEN0, 0x0000)

-#define MACvEnableProtectMD(dwIoBase)                                  \
+#define MACvEnableProtectMD(iobase)                                    \
 do {                                                                   \
        unsigned long dwOrgValue;                                       \
-       VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);             \
+       VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);               \
        dwOrgValue = dwOrgValue | EnCFG_ProtectMd;                      \
-       VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);             \
+       VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);               \
 } while (0)

-#define MACvDisableProtectMD(dwIoBase)                                 \
+#define MACvDisableProtectMD(iobase)                                   \
 do {                                                                   \
        unsigned long dwOrgValue;                                       \
-       VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);             \
+       VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);               \
        dwOrgValue = dwOrgValue & ~EnCFG_ProtectMd;                     \
-       VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);             \
+       VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);               \
 } while (0)

-#define MACvEnableBarkerPreambleMd(dwIoBase)                           \
+#define MACvEnableBarkerPreambleMd(iobase)                             \
 do {                                                                   \
        unsigned long dwOrgValue;                                       \
-       VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);             \
+       VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);               \
        dwOrgValue = dwOrgValue | EnCFG_BarkerPream;                    \
-       VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);             \
+       VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);               \
 } while (0)

-#define MACvDisableBarkerPreambleMd(dwIoBase)                          \
+#define MACvDisableBarkerPreambleMd(iobase)                            \
 do {                                                                   \
        unsigned long dwOrgValue;                                       \
-       VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);             \
+       VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);               \
        dwOrgValue = dwOrgValue & ~EnCFG_BarkerPream;                   \
-       VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);             \
+       VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);               \
 } while (0)

-#define MACvSetBBType(dwIoBase, byTyp)                                 \
+#define MACvSetBBType(iobase, byTyp)                                   \
 do {                                                                   \
        unsigned long dwOrgValue;                                       \
-       VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &dwOrgValue);             \
+       VNSvInPortD(iobase + MAC_REG_ENCFG, &dwOrgValue);               \
        dwOrgValue = dwOrgValue & ~EnCFG_BBType_MASK;                   \
        dwOrgValue = dwOrgValue | (unsigned long)byTyp;                 \
-       VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgValue);             \
+       VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue);               \
 } while (0)

-#define MACvReadATIMW(dwIoBase, pwCounter)                             \
-       VNSvInPortW(dwIoBase + MAC_REG_AIDATIM, pwCounter)
+#define MACvReadATIMW(iobase, pwCounter)                               \
+       VNSvInPortW(iobase + MAC_REG_AIDATIM, pwCounter)

-#define MACvWriteATIMW(dwIoBase, wCounter)                             \
-       VNSvOutPortW(dwIoBase + MAC_REG_AIDATIM, wCounter)
+#define MACvWriteATIMW(iobase, wCounter)                               \
+       VNSvOutPortW(iobase + MAC_REG_AIDATIM, wCounter)

-#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)           \
+#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)             \
 do {                                                           \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);           \
-       VNSvOutPortW(dwIoBase + byRegOfs, wCRC);                \
-       VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);           \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);             \
+       VNSvOutPortW(iobase + byRegOfs, wCRC);          \
+       VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);             \
 } while (0)

-#define MACvGPIOIn(dwIoBase, pbyValue)                                 \
-       VNSvInPortB(dwIoBase + MAC_REG_GPIOCTL1, pbyValue)
+#define MACvGPIOIn(iobase, pbyValue)                                   \
+       VNSvInPortB(iobase + MAC_REG_GPIOCTL1, pbyValue)

-#define MACvSetRFLE_LatchBase(dwIoBase)                                 \
-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
+#define MACvSetRFLE_LatchBase(iobase)                                 \
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)

 bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byRegOfs,
                     unsigned char byTestBits);
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index b58c406..2de7ec4 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -408,7 +408,7 @@ static const unsigned long
dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *  Out:
  *      none
  *
@@ -417,16 +417,16 @@ static const unsigned long
dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
  */
 static bool s_bAL7230Init(struct vnt_private *priv)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        int     ii;
        bool ret;

        ret = true;

        /* 3-wire control for normal mode */
-       VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);
+       VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0);

-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
(SOFTPWRCTL_SWPECTI  |
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
                                                        
 SOFTPWRCTL_TXPEINV));
        BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value
for Calibration */

@@ -434,7 +434,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
                ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]);

        /* PLL On */
-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

        /* Calibration */
        MACvTimer0MicroSDelay(priv, 150);/* 150us */
@@ -447,7 +447,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
        /* TXDCOC:disable, RCK:disable */
        ret &= IFRFbWriteEmbedded(priv,
dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);

-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3  
  |
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
                                                         SOFTPWRCTL_SWPE2  
  |
                                                        
 SOFTPWRCTL_SWPECTI  |
                                                        
 SOFTPWRCTL_TXPEINV));
@@ -456,7 +456,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)

        /* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
        /* 3-wire control for power saving mode */
-       VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 |
PSSIG_WPE2)); /* 1100 0000 */
+       VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 |
PSSIG_WPE2)); /* 1100 0000 */

        return ret;
 }
@@ -466,26 +466,26 @@ static bool s_bAL7230Init(struct vnt_private *priv)
  */
 static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned
char byChannel)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        bool ret;

        ret = true;

        /* PLLON Off */
-       MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+       MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

        ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[byChannel - 
1]);
        ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel - 
1]);
        ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel - 
1]);

        /* PLLOn On */
-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

        /* Set Channel[7] = 0 to tell H/W channel is changing now. */
-       VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
+       VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F));
        MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230);
        /* Set Channel[7] = 1 to tell H/W channel change is done. */
-       VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));
+       VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80));

        return ret;
 }
@@ -495,7 +495,7 @@ static bool s_bAL7230SelectChannel(struct
vnt_private *priv, unsigned char byCha
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *      dwData      - data to write
  *  Out:
  *      none
@@ -505,15 +505,15 @@ static bool s_bAL7230SelectChannel(struct
vnt_private *priv, unsigned char byCha
  */
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        unsigned short ww;
        unsigned long dwValue;

-       VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwData);
+       VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData);

        /* W_MAX_TIMEOUT is the timeout period */
        for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-               VNSvInPortD(dwIoBase + MAC_REG_IFREGCTL, &dwValue);
+               VNSvInPortD(iobase + MAC_REG_IFREGCTL, &dwValue);
                if (dwValue & IFREGCTL_DONE)
                        break;
        }
@@ -529,7 +529,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv,
unsigned long dwData)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *  Out:
  *      none
  *
@@ -538,19 +538,19 @@ bool IFRFbWriteEmbedded(struct vnt_private
*priv, unsigned long dwData)
  */
 static bool RFbAL2230Init(struct vnt_private *priv)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        int     ii;
        bool ret;

        ret = true;

        /* 3-wire control for normal mode */
-       VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);
+       VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0);

-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
(SOFTPWRCTL_SWPECTI  |
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
                                                        
 SOFTPWRCTL_TXPEINV));
        /* PLL  Off */
-       MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+       MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

        /* patch abnormal AL2230 frequency output */
        IFRFbWriteEmbedded(priv,
(0x07168700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
@@ -560,7 +560,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
        MACvTimer0MicroSDelay(priv, 30); /* delay 30 us */

        /* PLL On */
-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

        MACvTimer0MicroSDelay(priv, 150);/* 150us */
        ret &= IFRFbWriteEmbedded(priv,
(0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
@@ -569,20 +569,20 @@ static bool RFbAL2230Init(struct vnt_private *priv)
        MACvTimer0MicroSDelay(priv, 30);/* 30us */
        ret &= IFRFbWriteEmbedded(priv,
dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]);

-       MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3  
  |
+       MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
                                                         SOFTPWRCTL_SWPE2  
  |
                                                        
 SOFTPWRCTL_SWPECTI  |
                                                        
 SOFTPWRCTL_TXPEINV));

        /* 3-wire control for power saving mode */
-       VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 |
PSSIG_WPE2)); /* 1100 0000 */
+       VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 |
PSSIG_WPE2)); /* 1100 0000 */

        return ret;
 }

 static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned
char byChannel)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        bool ret;

        ret = true;
@@ -591,10 +591,10 @@ static bool RFbAL2230SelectChannel(struct
vnt_private *priv, unsigned char byCha
        ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel - 
1]);

        /* Set Channel[7] = 0 to tell H/W channel is changing now. */
-       VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
+       VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F));
        MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230);
        /* Set Channel[7] = 1 to tell H/W channel change is done. */
-       VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));
+       VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80));

        return ret;
 }
@@ -679,7 +679,7 @@ bool RFbSelectChannel(struct vnt_private *priv,
unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      iobase        - I/O base address
  *      uChannel    - channel number
  *      bySleepCnt  - SleepProgSyn count
  *
@@ -689,12 +689,12 @@ bool RFbSelectChannel(struct vnt_private *priv,
unsigned char byRFType,
 bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
                         u16 uChannel)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *iobase = priv->PortOffset;
        int   ii;
        unsigned char byInitCount = 0;
        unsigned char bySleepCount = 0;

-       VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0);
+       VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
        switch (byRFType) {
        case RF_AIROHA:
        case RF_AL2230S:
@@ -756,7 +756,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv,
unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      dwIoBase       - I/O base address
+ *      iobase           - I/O base address
  *      dwRFPowerTable - RF Tx Power Setting
  *  Out:
  *      none
@@ -828,7 +828,7 @@ bool RFbSetPower(
  *
  * Parameters:
  *  In:
- *      dwIoBase       - I/O base address
+ *      iobase           - I/O base address
  *      dwRFPowerTable - RF Tx Power Setting
  *  Out:
  *      none
diff --git a/drivers/staging/vt6655/srom.c b/drivers/staging/vt6655/srom.c
index 13116c4..9c9221c 100644
--- a/drivers/staging/vt6655/srom.c
+++ b/drivers/staging/vt6655/srom.c
@@ -63,7 +63,7 @@
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      iobase            - I/O base address
  *      byContntOffset  - address of EEPROM
  *  Out:
  *      none
@@ -71,7 +71,7 @@
  * Return Value: data read
  *
  */
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
+unsigned char SROMbyReadEmbedded(void __iomem *iobase,
                                 unsigned char byContntOffset)
 {
        unsigned short wDelay, wNoACK;
@@ -80,18 +80,18 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
        unsigned char byOrg;

        byData = 0xFF;
-       VNSvInPortB(dwIoBase + MAC_REG_I2MCFG, &byOrg);
+       VNSvInPortB(iobase + MAC_REG_I2MCFG, &byOrg);
        /* turn off hardware retry for getting NACK */
-       VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, (byOrg & 
(~I2MCFG_NORETRY)));
+       VNSvOutPortB(iobase + MAC_REG_I2MCFG, (byOrg & (~I2MCFG_NORETRY)));
        for (wNoACK = 0; wNoACK < W_MAX_I2CRETRY; wNoACK++) {
-               VNSvOutPortB(dwIoBase + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);
-               VNSvOutPortB(dwIoBase + MAC_REG_I2MTGAD, byContntOffset);
+               VNSvOutPortB(iobase + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);
+               VNSvOutPortB(iobase + MAC_REG_I2MTGAD, byContntOffset);

                /* issue read command */
-               VNSvOutPortB(dwIoBase + MAC_REG_I2MCSR, I2MCSR_EEMR);
+               VNSvOutPortB(iobase + MAC_REG_I2MCSR, I2MCSR_EEMR);
                /* wait DONE be set */
                for (wDelay = 0; wDelay < W_MAX_TIMEOUT; wDelay++) {
-                       VNSvInPortB(dwIoBase + MAC_REG_I2MCSR, &byWait);
+                       VNSvInPortB(iobase + MAC_REG_I2MCSR, &byWait);
                        if (byWait & (I2MCSR_DONE | I2MCSR_NACK))
                                break;
                        PCAvDelayByIO(CB_DELAY_LOOP_WAIT);
@@ -101,8 +101,8 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
                        break;
                }
        }
-       VNSvInPortB(dwIoBase + MAC_REG_I2MDIPT, &byData);
-       VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, byOrg);
+       VNSvInPortB(iobase + MAC_REG_I2MDIPT, &byData);
+       VNSvOutPortB(iobase + MAC_REG_I2MCFG, byOrg);
        return byData;
 }

@@ -111,20 +111,20 @@ unsigned char SROMbyReadEmbedded(void __iomem 
*dwIoBase,
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      iobase            - I/O base address
  *  Out:
  *      pbyEepromRegs   - EEPROM content Buffer
  *
  * Return Value: none
  *
  */
-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char 
*pbyEepromRegs)
+void SROMvReadAllContents(void __iomem *iobase, unsigned char 
*pbyEepromRegs)
 {
        int     ii;

        /* ii = Rom Address */
        for (ii = 0; ii < EEP_MAX_CONTEXT_SIZE; ii++) {
-               *pbyEepromRegs = SROMbyReadEmbedded(dwIoBase,
+               *pbyEepromRegs = SROMbyReadEmbedded(iobase,
                                                    (unsigned char)ii);
                pbyEepromRegs++;
        }
@@ -135,21 +135,21 @@ void SROMvReadAllContents(void __iomem
*dwIoBase, unsigned char *pbyEepromRegs)
  *
  * Parameters:
  *  In:
- *      dwIoBase        - I/O base address
+ *      iobase            - I/O base address
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
-               *pbyEtherAddress = SROMbyReadEmbedded(dwIoBase, ii);
+               *pbyEtherAddress = SROMbyReadEmbedded(iobase, ii);
                pbyEtherAddress++;
        }
 }
diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
index 1d32e9f..d976825 100644
--- a/drivers/staging/vt6655/srom.h
+++ b/drivers/staging/vt6655/srom.h
@@ -88,12 +88,12 @@

 /*---------------------  Export Functions  --------------------------*/

-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
+unsigned char SROMbyReadEmbedded(void __iomem *iobase,
                                 unsigned char byContntOffset);

-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char
*pbyEepromRegs);
+void SROMvReadAllContents(void __iomem *iobase, unsigned char 
*pbyEepromRegs);

-void SROMvReadEtherAddress(void __iomem *dwIoBase,
+void SROMvReadEtherAddress(void __iomem *iobase,
                           unsigned char *pbyEtherAddress);

 #endif /* __EEPROM_H__*/
--
2.7.4

------=_Part_3542_1665619915.1476189736671
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In this patch dwIoBase is renamed as iobase. This is done =
to fix the<br>
checkpatch issue of the CamelCase.<br>
<br>
Signed-off-by: Varsha Rao &lt;<a href=3D"mailto:rvarsha016@gmail.com">rvars=
ha016@gmail.com</a>&gt;<br>
---<br>
=C2=A0Changes in v3:<br>=C2=A0-Edited commit message.=C2=A0 <br>
<br>
=C2=A0drivers/staging/vt6655/<div id=3D":rg" class=3D"a3s aXjCH m157aadee74=
881886"><wbr>baseband.c |=C2=A0 52 +++---<br>
=C2=A0drivers/staging/vt6655/<wbr>baseband.h |=C2=A0 =C2=A08 +-<br>
=C2=A0drivers/staging/vt6655/card.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 30 ++--<br>
=C2=A0drivers/staging/vt6655/mac.h=C2=A0 =C2=A0 =C2=A0 | 322 ++++++++++++++=
+++++-----------<wbr>--------<br>
=C2=A0drivers/staging/vt6655/rf.c=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 64 ++++=
----<br>
=C2=A0drivers/staging/vt6655/srom.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 32 ++--<br>
=C2=A0drivers/staging/vt6655/srom.h=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A06 +-<b=
r>
=C2=A07 files changed, 257 insertions(+), 257 deletions(-)<br>
<br>
diff --git a/drivers/staging/vt6655/<wbr>baseband.c<br>
b/drivers/staging/vt6655/<wbr>baseband.c<br>
index ba051ff..1ab91f9 100644<br>
--- a/drivers/staging/vt6655/<wbr>baseband.c<br>
+++ b/drivers/staging/vt6655/<wbr>baseband.c<br>
@@ -1914,7 +1914,7 @@ void vnt_get_phy_field(struct vnt_private *priv,<br>
u32 frame_length,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =C2=A0 - address of register in=
 Baseband<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 pbyData=C2=A0 =C2=A0 =C2=A0- data read<br>
@@ -1925,24 +1925,24 @@ void vnt_get_phy_field(struct vnt_private<br>
*priv, u32 frame_length,<br>
=C2=A0bool BBbReadEmbedded(struct vnt_private *priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0unsigned char byBBAddr, unsigned char *pbyData)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byValue;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg offset */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBA=
ddr);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAdd=
r);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on REGR */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREG=
CTL_REGR);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCT=
L_REGR);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIMEOUT is the timeout period */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; ww++) {<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBas=
e + MAC_REG_BBREGCTL, &amp;byValue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase =
+ MAC_REG_BBREGCTL, &amp;byValue);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (byValue &amp; B=
BREGCTL_DONE)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get BB data */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyDa=
ta);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData=
);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ww =3D=3D W_MAX_TIMEOUT) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pr_debug(&quot; DBG=
_PORT80(0x30)\n&quot;);<br>
@@ -1956,7 +1956,7 @@ bool BBbReadEmbedded(struct vnt_private *priv,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =C2=A0 - address of register in=
 Baseband<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 byData=C2=A0 =C2=A0 =C2=A0 - data to write<br>
=C2=A0 *=C2=A0 Out:<br>
@@ -1968,20 +1968,20 @@ bool BBbReadEmbedded(struct vnt_private *priv,<br>
=C2=A0bool BBbWriteEmbedded(struct vnt_private *priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 unsigned char byBBAddr, unsigned char byData)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byValue;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg offset */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBA=
ddr);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAdd=
r);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* set BB data */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byDa=
ta);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData=
);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on BBREGCTL_REGW */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREG=
CTL_REGW);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCT=
L_REGW);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIMEOUT is the timeout period */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; ww++) {<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBas=
e + MAC_REG_BBREGCTL, &amp;byValue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase =
+ MAC_REG_BBREGCTL, &amp;byValue);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (byValue &amp; B=
BREGCTL_DONE)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
@@ -1998,7 +1998,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 byRevId=C2=A0 =C2=A0 =C2=A0- Revision ID<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 byRFType=C2=A0 =C2=A0 - RF type<br>
=C2=A0 *=C2=A0 Out:<br>
@@ -2012,7 +2012,7 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool bResult =3D true;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0 =C2=A0 =C2=A0 ii;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byRFType =3D priv-&gt;byRFType;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byLocalID =3D priv-&gt;byLocalID;=
<br>
<br>
@@ -2034,8 +2034,8 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 byVT3253=
B0_AGC4_RFMD2959[ii][<wbr>0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 byVT3253=
B0_AGC4_RFMD2959[ii][<wbr>1]);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;abyBBVGA[0=
] =3D 0x18;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;abyBBVGA[1=
] =3D 0x0A;<br>
@@ -2074,8 +2074,8 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 byVT3253B0_AGC[ii][0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 byVT3253B0_AGC[ii][1]);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBa=
se + MAC_REG_ITRTMSET, 0x23);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoB=
ase, MAC_REG_PAPEDELAY, BIT(0));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase=
 + MAC_REG_ITRTMSET, 0x23);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobas=
e, MAC_REG_PAPEDELAY, BIT(0));<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;abyBBVGA[0=
] =3D 0x14;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;abyBBVGA[1=
] =3D 0x0A;<br>
@@ -2096,7 +2096,7 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x45-&gt;0x=
41(VC1/VC2 define, make the ANT_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(iobase,0x09,<wbr>0x41);*/<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init ANT B selec=
t,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* RX Config C=
R10 =3D 0x28-&gt;0x2A,<br>
@@ -2104,7 +2104,7 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* make the AN=
T_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(iobase,0x0a,<wbr>0x28);*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Select VC1/VC2, =
CR215 =3D 0x02-&gt;0x06 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bResult &amp;=3D BB=
bWriteEmbedded(priv, 0xd7, 0x06);<br>
<br>
@@ -2152,7 +2152,7 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;ldBmThresh=
old[2] =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;ldBmThresh=
old[3] =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Fix VT3226 DFC s=
ystem timing issue */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvSetRFLE_LatchBa=
se(<wbr>dwIoBase);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvSetRFLE_LatchBa=
se(iobase);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{ RobertYu: 200=
50104 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (byRFType =3D=3D RF_AIROHA7230) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)<br>
@@ -2164,11 +2164,11 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init ANT B selec=
t,TX Config CR09 =3D 0x61-&gt;0x45,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x45-&gt;0x=
41(VC1/VC2 define, make the ANT_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(iobase,0x09,<wbr>0x41);*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init ANT B selec=
t,RX Config CR10 =3D 0x28-&gt;0x2A,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x2A-&gt;0x=
28(VC1/VC2 define, make the ANT_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(iobase,0x0a,<wbr>0x28);*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Select VC1/VC2, =
CR215 =3D 0x02-&gt;0x06 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bResult &amp;=3D BB=
bWriteEmbedded(priv, 0xd7, 0x06);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} */<br>
@@ -2256,7 +2256,7 @@ void BBvSetVGAGainOffset(struct vnt_private<br>
*priv, unsigned char byData)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2277,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private *priv)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2299,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
diff --git a/drivers/staging/vt6655/<wbr>baseband.h<br>
b/drivers/staging/vt6655/<wbr>baseband.h<br>
index 6d9a936..db0c5cf 100644<br>
--- a/drivers/staging/vt6655/<wbr>baseband.h<br>
+++ b/drivers/staging/vt6655/<wbr>baseband.h<br>
@@ -58,11 +58,11 @@<br>
=C2=A0#define TOP_RATE_2M=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x00200000<br>
=C2=A0#define TOP_RATE_1M=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x00100000<br>
<br>
-#define BBvClearFOE(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(dwIoBase, 0xB1, 0)<br>
+#define BBvClearFOE(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(iobase, 0xB1, 0)<br>
<br>
-#define BBvSetFOE(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C)<br>
+#define BBvSetFOE(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(iobase, 0xB1, 0x0C)<br>
<br>
=C2=A0unsigned int<br>
=C2=A0BBuGetFrameTime(<br>
diff --git a/drivers/staging/vt6655/card.<wbr>c b/drivers/staging/vt6655/ca=
rd.<wbr>c<br>
index e29af55..961e517 100644<br>
--- a/drivers/staging/vt6655/card.<wbr>c<br>
+++ b/drivers/staging/vt6655/card.<wbr>c<br>
@@ -35,7 +35,7 @@<br>
=C2=A0 *<br>
=C2=A0 * Revision History:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 06-10-2003 Bryan YC Fan:=C2=A0 Re-write codes =
to support VT3253 spec.<br>
- *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle Hsu:=C2=A0 =C2=A0 =C2=A0 Modify the=
 defination type of dwIoBase.<br>
+ *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle Hsu:=C2=A0 =C2=A0 =C2=A0 Modify the=
 defination type of iobase.<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 09-01-2003 Bryan YC Fan:=C2=A0 Add vUpdateIFS(=
).<br>
=C2=A0 *<br>
=C2=A0 */<br>
@@ -937,20 +937,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate,<br>
u64 qwTSF1, u64 qwTSF2)<br>
=C2=A0 */<br>
=C2=A0bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCurrTSF)<br=
>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byData;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_=
TSFCNTRRD);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TS=
FCNTRRD);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; ww++) {<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBas=
e + MAC_REG_TFTCTL, &amp;byData);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase =
+ MAC_REG_TFTCTL, &amp;byData);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(byData &amp; =
TFTCTL_TSFCNTRRD))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ww =3D=3D W_MAX_TIMEOUT)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR, (u32 *)=
pqwCurrTSF);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR + 4, (u3=
2 *)pqwCurrTSF + 1);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_TSFCNTR, (u32 *)pq=
wCurrTSF);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_TSFCNTR + 4, (u32 =
*)pqwCurrTSF + 1);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return true;<br>
=C2=A0}<br>
@@ -988,7 +988,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short<br>
wBeaconInterval)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - IO Base<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - I=
O Base<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 wBeaconInterval - Beacon Interval<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
@@ -998,16 +998,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short<br>
wBeaconInterval)<br>
=C2=A0void CARDvSetFirstNextTBTT(struct vnt_private *priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0unsigned short wBeaconInterval)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u64 qwNextTBTT =3D 0;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CARDbGetCurrentTSF(priv, &amp;qwNextTBTT); /* G=
et Local TSF counter */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 qwNextTBTT =3D CARDqGetNextTBTT(qwNextTBTT, wBe=
aconInterval);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set NextTBTT */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)=
qwNextTBTT);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (=
u32)(qwNextTBTT &gt;&gt; 32));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_=
TBTTSYNCEN);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qw=
NextTBTT);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u3=
2)(qwNextTBTT &gt;&gt; 32));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TB=
TTSYNCEN);<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -1027,12 +1027,12 @@ void CARDvSetFirstNextTBTT(struct vnt_private *priv=
,<br>
=C2=A0void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0unsigned short wBeaconInterval)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 qwTSF =3D CARDqGetNextTBTT(qwTSF, wBeaconInterv=
al);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set NextTBTT */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)=
qwTSF);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (=
u32)(qwTSF &gt;&gt; 32));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_=
TBTTSYNCEN);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qw=
TSF);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u3=
2)(qwTSF &gt;&gt; 32));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TB=
TTSYNCEN);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pr_debug(&quot;Card:Update Next TBTT[%8llx]\n&q=
uot;, qwTSF);<br>
=C2=A0}<br>
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h<br=
>
index 7481d7a..7cbb12c 100644<br>
--- a/drivers/staging/vt6655/mac.h<br>
+++ b/drivers/staging/vt6655/mac.h<br>
@@ -552,341 +552,341 @@<br>
<br>
=C2=A0/*---------------------=C2=A0 Export Macros -------------------------=
-----<wbr>*/<br>
<br>
-#define MACvRegBitsOn(dwIoBase, byRegOfs, byBits)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvRegBitsOn(iobase, byRegOfs, byBits)=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + byRegOfs, &amp;byData);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + byRegOfs, byData | (byB=
its));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + byRegOfs, &amp;byData);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + byRegOfs, byData | (byBit=
s));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvWordRegBitsOn(dwIoBase, byRegOfs, wBits)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvWordRegBitsOn(iobase, byRegOfs, wBits)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short wData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortW(dwIoBase + byRegOfs, &amp;wData);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(dwIoBase + byRegOfs, wData | (wBit=
s));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortW(iobase + byRegOfs, &amp;wData);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(iobase + byRegOfs, wData | (wBits)=
);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, dwBits)=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvDWordRegBitsOn(iobase, byRegOfs, dwBits)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + byRegOfs, &amp;dwData);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + byRegOfs, dwData | (dwB=
its));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + byRegOfs, &amp;dwData);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + byRegOfs, dwData | (dwBit=
s));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, byBits)=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, byBits)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + byRegOfs, &amp;byData);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + byRegOfs, &amp;byData);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 byData &amp;=3D byMask;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + byRegOfs, byData | (byB=
its));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + byRegOfs, byData | (byBit=
s));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvRegBitsOff(dwIoBase, byRegOfs, byBits)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvRegBitsOff(iobase, byRegOfs, byBits)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + byRegOfs, &amp;byData);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + byRegOfs, byData &amp; =
~(byBits));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + byRegOfs, &amp;byData);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + byRegOfs, byData &amp; ~(=
byBits));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvWordRegBitsOff(dwIoBase, byRegOfs, wBits)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvWordRegBitsOff(iobase, byRegOfs, wBits)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short wData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortW(dwIoBase + byRegOfs, &amp;wData);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(dwIoBase + byRegOfs, wData &amp; ~=
(wBits));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortW(iobase + byRegOfs, &amp;wData);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(iobase + byRegOfs, wData &amp; ~(w=
Bits));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, dwBits)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvDWordRegBitsOff(iobase, byRegOfs, dwBits)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + byRegOfs, &amp;dwData);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + byRegOfs, dwData &amp; =
~(dwBits));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + byRegOfs, &amp;dwData);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + byRegOfs, dwData &amp; ~(=
dwBits));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvGetCurrRx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=A0 =C2=
=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_RXDMAPTR0,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned long *)pdwCurrDescAddr)<br>
<br>
-#define MACvGetCurrRx1DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=A0 =C2=
=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_RXDMAPTR1,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned long *)pdwCurrDescAddr)<br>
<br>
-#define MACvGetCurrTx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=A0 =C2=
=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_TXDMAPTR0,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned long *)pdwCurrDescAddr)<br>
<br>
-#define MACvGetCurrAC0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=A0 =C2=
=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_AC0DMAPTR,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned long *)pdwCurrDescAddr)<br>
<br>
-#define MACvGetCurrSyncDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=A0 =C2=
=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_SYNCDMAPTR,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvGetCurrSyncDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=A0 =C2=A0=
 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_SYNCDMAPTR,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned long *)pdwCurrDescAddr)<br>
<br>
-#define MACvGetCurrATIMDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=A0 =C2=
=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ATIMDMAPTR,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvGetCurrATIMDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=A0 =C2=A0=
 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ATIMDMAPTR,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned long *)pdwCurrDescAddr)<br>
<br>
=C2=A0/* set the chip with current BCN tx descriptor address */<br>
-#define MACvSetCurrBCNTxDescAddr(<wbr>dwIoBase, dwCurrDescAddr)=C2=A0 =C2=
=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvSetCurrBCNTxDescAddr(<wbr>iobase, dwCurrDescAddr)=C2=A0 =C2=A0=
 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_BCNDMAPTR,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0dwCurrDescAddr)<br>
<br>
=C2=A0/* set the chip with current BCN length */<br>
-#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(dwIoBase + MAC_REG_BCNDMACTL+2,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(iobase + MAC_REG_BCNDMACTL+2,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0wCurrBCNLength)<br>
<br>
-#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BSSID0,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_BSSID0,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned char *)pbyEtherAddr);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 1,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_BSSID0 + 1,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 1);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 2,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_BSSID0 + 2,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 2);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 3,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_BSSID0 + 3,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 3);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 4,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_BSSID0 + 4,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 4);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 5,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_BSSID0 + 5,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 5);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvWriteBSSIDAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BSSID0,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BSSID0,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 1,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BSSID0 + 1,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 1));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 2,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BSSID0 + 2,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 2));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 3,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BSSID0 + 3,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 3));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 4,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BSSID0 + 4,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 4));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 5,=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BSSID0 + 5,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 5));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvReadEtherAddress(iobase, pbyEtherAddr)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_PAR0,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_PAR0,=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsi=
gned char *)pbyEtherAddr);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 1,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_PAR0 + 1,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 1);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 2,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_PAR0 + 2,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 2);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 3,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_PAR0 + 3,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 3);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 4,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_PAR0 + 4,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 4);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 5,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_PAR0 + 5,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEt=
herAddr + 5);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvWriteEtherAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvWriteEtherAddress(iobase, pbyEtherAddr)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAR0,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAR0,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*pbyEtherAddr);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 1,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAR0 + 1,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 1));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 2,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAR0 + 2,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 2));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 3,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAR0 + 3,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 3));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 4,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAR0 + 4,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 4));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 5,=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAR0 + 5,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0*(pbyEtherAddr + 5));=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvClearISR(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ISR, IMR_MASK_V=
ALUE)<br>
+#define MACvClearISR(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ISR, IMR_MASK_VAL=
UE)<br>
<br>
-#define MACvStart(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_HOSTCR,=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+#define MACvStart(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_HOSTCR,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(HOSTCR_MACEN | HOSTCR_RXON | HOSTCR_TXON))<br>
<br>
-#define MACvRx0PerPktMode(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_P=
ERPKT)<br>
+#define MACvRx0PerPktMode(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PER=
PKT)<br>
<br>
-#define MACvRx0BufferFillMode(<wbr>dwIoBase)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_P=
ERPKTCLR)<br>
+#define MACvRx0BufferFillMode(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PER=
PKTCLR)<br>
<br>
-#define MACvRx1PerPktMode(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_P=
ERPKT)<br>
+#define MACvRx1PerPktMode(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PER=
PKT)<br>
<br>
-#define MACvRx1BufferFillMode(<wbr>dwIoBase)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_P=
ERPKTCLR)<br>
+#define MACvRx1BufferFillMode(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PER=
PKTCLR)<br>
<br>
-#define MACvRxOn(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_=
RXON)<br>
+#define MACvRxOn(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_RX=
ON)<br>
<br>
-#define MACvReceive0(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvReceive0(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL0, &amp;=
dwData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_RXDMACTL0, &amp;dw=
Data);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dwData &amp; DMACTL_RUN)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_RXDMACTL0, DMACTL_WAKE); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_RXDMACTL0, DMACTL_WAKE); \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_RXDMACTL0, DMACTL_RUN); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_RXDMACTL0, DMACTL_RUN); \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvReceive1(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvReceive1(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL1, &amp;=
dwData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_RXDMACTL1, &amp;dw=
Data);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dwData &amp; DMACTL_RUN)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_RXDMACTL1, DMACTL_WAKE); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_RXDMACTL1, DMACTL_WAKE); \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_RXDMACTL1, DMACTL_RUN); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_RXDMACTL1, DMACTL_RUN); \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvTxOn(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_=
TXON)<br>
+#define MACvTxOn(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_TX=
ON)<br>
<br>
-#define MACvTransmit0(dwIoBase)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvTransmit0(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_TXDMACTL0, &amp;=
dwData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_TXDMACTL0, &amp;dw=
Data);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dwData &amp; DMACTL_RUN)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_TXDMACTL0, DMACTL_WAKE); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_TXDMACTL0, DMACTL_WAKE); \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_TXDMACTL0, DMACTL_RUN); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_TXDMACTL0, DMACTL_RUN); \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvTransmitAC0(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+#define MACvTransmitAC0(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_AC0DMACTL, &amp;=
dwData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_AC0DMACTL, &amp;dw=
Data);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dwData &amp; DMACTL_RUN)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_AC0DMACTL, DMACTL_WAKE); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_AC0DMACTL, DMACTL_WAKE); \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_AC0DMACTL, DMACTL_RUN); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_AC0DMACTL, DMACTL_RUN); \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvTransmitSYNC(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvTransmitSYNC(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_SYNCDMACTL, &amp=
;dwData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_SYNCDMACTL, &amp;d=
wData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dwData &amp; DMACTL_RUN)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_SYNCDMACTL, DMACTL_WAKE); \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_SYNCDMACTL, DMACTL_RUN); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_SYNCDMACTL, DMACTL_RUN); \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvTransmitATIM(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvTransmitATIM(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwData;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ATIMDMACTL, &amp=
;dwData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ATIMDMACTL, &amp;d=
wData);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dwData &amp; DMACTL_RUN)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_ATIMDMACTL, DMACTL_WAKE); \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBa=
se + MAC_REG_ATIMDMACTL, DMACTL_RUN); \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase=
 + MAC_REG_ATIMDMACTL, DMACTL_RUN); \<br>
=C2=A0} while (0)<br>
<br>
-#define MACvTransmitBCN(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BCNDMACTL, BEAC=
ON_READY)<br>
+#define MACvTransmitBCN(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_BCNDMACTL, BEACON=
_READY)<br>
<br>
-#define MACvClearStckDS(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+#define MACvClearStckDS(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byOrgValue;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_STICKHW, &amp;by=
OrgValue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_STICKHW, &amp;byOr=
gValue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 byOrgValue =3D byOrgValue &amp; 0xFC;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_STICKHW, byOrgV=
alue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_STICKHW, byOrgVal=
ue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvReadISR(dwIoBase, pdwValue)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ISR, pdwValue)<b=
r>
+#define MACvReadISR(iobase, pdwValue)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ISR, pdwValue)<br>
<br>
-#define MACvWriteISR(dwIoBase, dwValue)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ISR, dwValue)<b=
r>
+#define MACvWriteISR(iobase, dwValue)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ISR, dwValue)<br>
<br>
-#define MACvIntEnable(dwIoBase, dwMask)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_IMR, dwMask)<br=
>
+#define MACvIntEnable(iobase, dwMask)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_IMR, dwMask)<br>
<br>
-#define MACvIntDisable(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_IMR, 0)<br>
+#define MACvIntDisable(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_IMR, 0)<br>
<br>
-#define MACvSelectPage0(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBa=
se + MAC_REG_PAGE1SEL, 0)<br>
+#define MACvSelectPage0(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase=
 + MAC_REG_PAGE1SEL, 0)<br>
<br>
-#define MACvSelectPage1(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1)<br=
>
+#define MACvSelectPage1(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1)<br>
<br>
-#define MACvReadMIBCounter(dwIoBase, pdwCounter)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_MIBCNTR, pdwCoun=
ter)<br>
+#define MACvReadMIBCounter(iobase, pdwCounter)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_MIBCNTR, pdwCounte=
r)<br>
<br>
-#define MACvPwrEvntDisable(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(dwIoBase + MAC_REG_WAKEUPEN0, 0x00=
00)<br>
+#define MACvPwrEvntDisable(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(iobase + MAC_REG_WAKEUPEN0, 0x0000=
)<br>
<br>
-#define MACvEnableProtectMD(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>
+#define MACvEnableProtectMD(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwOrgValue;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &amp;dwOr=
gValue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ENCFG, &amp;dwOrgV=
alue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dwOrgValue =3D dwOrgValue | EnCFG_ProtectMd;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgVal=
ue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue=
);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvDisableProtectMD(dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+#define MACvDisableProtectMD(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwOrgValue;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &amp;dwOr=
gValue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ENCFG, &amp;dwOrgV=
alue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dwOrgValue =3D dwOrgValue &amp; ~EnCFG_ProtectM=
d;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgVal=
ue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue=
);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvEnableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+#define MACvEnableBarkerPreambleMd(<wbr>iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwOrgValue;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &amp;dwOr=
gValue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ENCFG, &amp;dwOrgV=
alue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dwOrgValue =3D dwOrgValue | EnCFG_BarkerPream;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgVal=
ue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue=
);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvDisableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+#define MACvDisableBarkerPreambleMd(<wbr>iobase)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwOrgValue;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &amp;dwOr=
gValue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ENCFG, &amp;dwOrgV=
alue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dwOrgValue =3D dwOrgValue &amp; ~EnCFG_BarkerPr=
eam;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgVal=
ue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue=
);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvSetBBType(dwIoBase, byTyp)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+#define MACvSetBBType(iobase, byTyp)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwOrgValue;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBase + MAC_REG_ENCFG, &amp;dwOr=
gValue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase + MAC_REG_ENCFG, &amp;dwOrgV=
alue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dwOrgValue =3D dwOrgValue &amp; ~EnCFG_BBType_M=
ASK;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dwOrgValue =3D dwOrgValue | (unsigned long)byTy=
p;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, dwOrgVal=
ue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_ENCFG, dwOrgValue=
);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvReadATIMW(dwIoBase, pwCounter)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortW(dwIoBase + MAC_REG_AIDATIM, pwCount=
er)<br>
+#define MACvReadATIMW(iobase, pwCounter)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortW(iobase + MAC_REG_AIDATIM, pwCounter=
)<br>
<br>
-#define MACvWriteATIMW(dwIoBase, wCounter)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(dwIoBase + MAC_REG_AIDATIM, wCount=
er)<br>
+#define MACvWriteATIMW(iobase, wCounter)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(iobase + MAC_REG_AIDATIM, wCounter=
)<br>
<br>
-#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(dwIoBase + byRegOfs, wCRC);=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(iobase + byRegOfs, wCRC);=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0} while (0)<br>
<br>
-#define MACvGPIOIn(dwIoBase, pbyValue)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_GPIOCTL1, pbyVal=
ue)<br>
+#define MACvGPIOIn(iobase, pbyValue)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_GPIOCTL1, pbyValue=
)<br>
<br>
-#define MACvSetRFLE_LatchBase(<wbr>dwIoBase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 SOFTPWRCTL_RFLEOPT)<br>
+#define MACvSetRFLE_LatchBase(iobase)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, S=
OFTPWRCTL_RFLEOPT)<br>
<br>
=C2=A0bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byRegOfs,<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0unsigned char byTestBits);<br>
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c<br>
index b58c406..2de7ec4 100644<br>
--- a/drivers/staging/vt6655/rf.c<br>
+++ b/drivers/staging/vt6655/rf.c<br>
@@ -408,7 +408,7 @@ static const unsigned long<br>
dwAL7230ChannelTable2[CB_MAX_<wbr>CHANNEL] =3D {<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -417,16 +417,16 @@ static const unsigned long<br>
dwAL7230ChannelTable2[CB_MAX_<wbr>CHANNEL] =3D {<br>
=C2=A0 */<br>
=C2=A0static bool s_bAL7230Init(struct vnt_private *priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0 =C2=A0ii;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool ret;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D true;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* 3-wire control for normal mode */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0);<b=
r>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 (SOFTPWRCTL_SWPECTI=C2=A0 |<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (=
SOFTPWRCTL_SWPECTI=C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_TXPEINV))=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BBvPowerSaveModeOFF(priv); /* RobertYu:20050106=
, have DC value<br>
for Calibration */<br>
<br>
@@ -434,7 +434,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbW=
riteEmbedded(priv, dwAL7230InitTable[ii]);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* PLL On */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 SOFTPWRCTL_SWPE3);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, S=
OFTPWRCTL_SWPE3);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Calibration */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACvTimer0MicroSDelay(priv, 150);/* 150us */<br=
>
@@ -447,7 +447,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* TXDCOC:disable, RCK:disable */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbWriteEmbedded(priv,<br>
dwAL7230InitTable[CB_AL7230_<wbr>INIT_SEQ-1]);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 (SOFTPWRCTL_SWPE3=C2=A0 =C2=A0 |<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (=
SOFTPWRCTL_SWPE3=C2=A0 =C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_SWPE2=C2=
=A0 =C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_SWPECTI=
=C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_TXPEINV))=
;<br>
@@ -456,7 +456,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* 3-wire control for power saving mode */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSI=
G_WPE3 |<br>
PSSIG_WPE2)); /* 1100 0000 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_=
WPE3 |<br>
PSSIG_WPE2)); /* 1100 0000 */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
=C2=A0}<br>
@@ -466,26 +466,26 @@ static bool s_bAL7230Init(struct vnt_private *priv)<b=
r>
=C2=A0 */<br>
=C2=A0static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned=
<br>
char byChannel)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool ret;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D true;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* PLLON Off */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL=
, SOFTPWRCTL_SWPE3);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, =
SOFTPWRCTL_SWPE3);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbWriteEmbedded(priv, dwAL7230C=
hannelTable0[<wbr>byChannel - 1]);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbWriteEmbedded(priv, dwAL7230C=
hannelTable1[<wbr>byChannel - 1]);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbWriteEmbedded(priv, dwAL7230C=
hannelTable2[<wbr>byChannel - 1]);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* PLLOn On */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 SOFTPWRCTL_SWPE3);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, S=
OFTPWRCTL_SWPE3);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set Channel[7] =3D 0 to tell H/W channel is =
changing now. */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byCha=
nnel &amp; 0x7F));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChann=
el &amp; 0x7F));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELA=
Y_AL7230);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set Channel[7] =3D 1 to tell H/W channel cha=
nge is done. */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byCha=
nnel | 0x80));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChann=
el | 0x80));<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
=C2=A0}<br>
@@ -495,7 +495,7 @@ static bool s_bAL7230SelectChannel(struct<br>
vnt_private *priv, unsigned char byCha<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 dwData=C2=A0 =C2=A0 =C2=A0 - data to write<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
@@ -505,15 +505,15 @@ static bool s_bAL7230SelectChannel(struct<br>
vnt_private *priv, unsigned char byCha<br>
=C2=A0 */<br>
=C2=A0bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwDat=
a)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long dwValue;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwDat=
a);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData)=
;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIMEOUT is the timeout period */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; ww++) {<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(dwIoBas=
e + MAC_REG_IFREGCTL, &amp;dwValue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortD(iobase =
+ MAC_REG_IFREGCTL, &amp;dwValue);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dwValue &amp; I=
FREGCTL_DONE)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
@@ -529,7 +529,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv,<br>
unsigned long dwData)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -538,19 +538,19 @@ bool IFRFbWriteEmbedded(struct vnt_private<br>
*priv, unsigned long dwData)<br>
=C2=A0 */<br>
=C2=A0static bool RFbAL2230Init(struct vnt_private *priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0 =C2=A0ii;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool ret;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D true;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* 3-wire control for normal mode */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0);<b=
r>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 (SOFTPWRCTL_SWPECTI=C2=A0 |<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (=
SOFTPWRCTL_SWPECTI=C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_TXPEINV))=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* PLL=C2=A0 Off */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL=
, SOFTPWRCTL_SWPE3);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, =
SOFTPWRCTL_SWPE3);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* patch abnormal AL2230 frequency output */<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 IFRFbWriteEmbedded(priv,<br>
(0x07168700+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFREGCTL_REGW));<br>
@@ -560,7 +560,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACvTimer0MicroSDelay(priv, 30); /* delay 30 us=
 */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* PLL On */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 SOFTPWRCTL_SWPE3);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, S=
OFTPWRCTL_SWPE3);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACvTimer0MicroSDelay(priv, 150);/* 150us */<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbWriteEmbedded(priv,<br>
(0x00d80f00+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFREGCTL_REGW));<br>
@@ -569,20 +569,20 @@ static bool RFbAL2230Init(struct vnt_private *priv)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACvTimer0MicroSDelay(priv, 30);/* 30us */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbWriteEmbedded(priv,<br>
dwAL2230InitTable[CB_AL2230_<wbr>INIT_SEQ-1]);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL,=
 (SOFTPWRCTL_SWPE3=C2=A0 =C2=A0 |<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (=
SOFTPWRCTL_SWPE3=C2=A0 =C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_SWPE2=C2=
=A0 =C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_SWPECTI=
=C2=A0 |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SOFTPWRCTL_TXPEINV))=
;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* 3-wire control for power saving mode */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSI=
G_WPE3 |<br>
PSSIG_WPE2)); /* 1100 0000 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_=
WPE3 |<br>
PSSIG_WPE2)); /* 1100 0000 */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
=C2=A0}<br>
<br>
=C2=A0static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned=
<br>
char byChannel)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool ret;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D true;<br>
@@ -591,10 +591,10 @@ static bool RFbAL2230SelectChannel(struct<br>
vnt_private *priv, unsigned char byCha<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D IFRFbWriteEmbedded(priv, dwAL2230C=
hannelTable1[<wbr>byChannel - 1]);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set Channel[7] =3D 0 to tell H/W channel is =
changing now. */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byCha=
nnel &amp; 0x7F));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChann=
el &amp; 0x7F));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELA=
Y_AL2230);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set Channel[7] =3D 1 to tell H/W channel cha=
nge is done. */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byCha=
nnel | 0x80));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChann=
el | 0x80));<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
=C2=A0}<br>
@@ -679,7 +679,7 @@ bool RFbSelectChannel(struct vnt_private *priv,<br>
unsigned char byRFType,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addres=
s<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 uChannel=C2=A0 =C2=A0 - channel number<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 bySleepCnt=C2=A0 - SleepProgSyn count<br>
=C2=A0 *<br>
@@ -689,12 +689,12 @@ bool RFbSelectChannel(struct vnt_private *priv,<br>
unsigned char byRFType,<br>
=C2=A0bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRF=
Type,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0u16 uChannel)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *iobase =3D priv-&gt;PortOffset;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0ii;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byInitCount =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char bySleepCount =3D 0;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (byRFType) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RF_AIROHA:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RF_AL2230S:<br>
@@ -756,7 +756,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv,<br>
unsigned char byRFType,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 =C2=A0 =C2=A0- I/O base addre=
ss<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- I/=
O base address<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 dwRFPowerTable - RF Tx Power Setting<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
@@ -828,7 +828,7 @@ bool RFbSetPower(<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 =C2=A0 =C2=A0- I/O base addre=
ss<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- I/=
O base address<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 dwRFPowerTable - RF Tx Power Setting<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
diff --git a/drivers/staging/vt6655/srom.<wbr>c b/drivers/staging/vt6655/sr=
om.<wbr>c<br>
index 13116c4..9c9221c 100644<br>
--- a/drivers/staging/vt6655/srom.<wbr>c<br>
+++ b/drivers/staging/vt6655/srom.<wbr>c<br>
@@ -63,7 +63,7 @@<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addr=
ess<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - I=
/O base address<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 byContntOffset=C2=A0 - address of EEPROM<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
@@ -71,7 +71,7 @@<br>
=C2=A0 * Return Value: data read<br>
=C2=A0 *<br>
=C2=A0 */<br>
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,<br>
+unsigned char SROMbyReadEmbedded(void __iomem *iobase,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byContntOffset)<=
br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short wDelay, wNoACK;<br>
@@ -80,18 +80,18 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byOrg;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 byData =3D 0xFF;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_I2MCFG, &amp;byO=
rg);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_I2MCFG, &amp;byOrg=
);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn off hardware retry for getting NACK */<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, (byOrg =
&amp; (~I2MCFG_NORETRY)));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_I2MCFG, (byOrg &a=
mp; (~I2MCFG_NORETRY)));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (wNoACK =3D 0; wNoACK &lt; W_MAX_I2CRETRY; =
wNoACK++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBa=
se + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBa=
se + MAC_REG_I2MTGAD, byContntOffset);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase=
 + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase=
 + MAC_REG_I2MTGAD, byContntOffset);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* issue read comma=
nd */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBa=
se + MAC_REG_I2MCSR, I2MCSR_EEMR);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase=
 + MAC_REG_I2MCSR, I2MCSR_EEMR);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* wait DONE be set=
 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (wDelay =3D 0; =
wDelay &lt; W_MAX_TIMEOUT; wDelay++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_I2MCSR, &amp;byWait);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_I2MCSR, &amp;byWait);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (byWait &amp; (I2MCSR_DONE | I2MCSR_NACK))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 PCAvDelayByIO(CB_DELAY_LOOP_<wbr>WAIT);<br>
@@ -101,8 +101,8 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_I2MDIPT, &amp;by=
Data);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, byOrg);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(iobase + MAC_REG_I2MDIPT, &amp;byDa=
ta);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(iobase + MAC_REG_I2MCFG, byOrg);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return byData;<br>
=C2=A0}<br>
<br>
@@ -111,20 +111,20 @@ unsigned char SROMbyReadEmbedded(void __iomem *dwIoBa=
se,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addr=
ess<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - I=
/O base address<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 pbyEepromRegs=C2=A0 =C2=A0- EEPROM content Buf=
fer<br>
=C2=A0 *<br>
=C2=A0 * Return Value: none<br>
=C2=A0 *<br>
=C2=A0 */<br>
-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEeprom=
Regs)<br>
+void SROMvReadAllContents(void __iomem *iobase, unsigned char *pbyEepromRe=
gs)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0 =C2=A0ii;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* ii =3D Rom Address */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; EEP_MAX_CONTEXT_SIZE; ii=
++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*pbyEepromRegs =3D =
SROMbyReadEmbedded(dwIoBase,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*pbyEepromRegs =3D =
SROMbyReadEmbedded(iobase,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsigned char)ii);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEepromRegs++;<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
@@ -135,21 +135,21 @@ void SROMvReadAllContents(void __iomem<br>
*dwIoBase, unsigned char *pbyEepromRegs)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 =C2=A0 =C2=A0 - I/O base addr=
ess<br>
+ *=C2=A0 =C2=A0 =C2=A0 iobase=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - I=
/O base address<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 pbyEtherAddress - Ethernet Address buffer<br>
=C2=A0 *<br>
=C2=A0 * Return Value: none<br>
=C2=A0 *<br>
=C2=A0 */<br>
-void SROMvReadEtherAddress(void __iomem *dwIoBase,<br>
+void SROMvReadEtherAddress(void __iomem *iobase,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0unsigned char *pbyEtherAddress)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char ii;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* ii =3D Rom Address */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; ETH_ALEN; ii++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*pbyEtherAddress =
=3D SROMbyReadEmbedded(dwIoBase, ii);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*pbyEtherAddress =
=3D SROMbyReadEmbedded(iobase, ii);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pbyEtherAddress++;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0}<br>
diff --git a/drivers/staging/vt6655/srom.<wbr>h b/drivers/staging/vt6655/sr=
om.<wbr>h<br>
index 1d32e9f..d976825 100644<br>
--- a/drivers/staging/vt6655/srom.<wbr>h<br>
+++ b/drivers/staging/vt6655/srom.<wbr>h<br>
@@ -88,12 +88,12 @@<br>
<br>
=C2=A0/*---------------------=C2=A0 Export Functions=C2=A0 ----------------=
----------*/<br>
<br>
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,<br>
+unsigned char SROMbyReadEmbedded(void __iomem *iobase,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byContntOffset);=
<br>
<br>
-void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char<br>
*pbyEepromRegs);<br>
+void SROMvReadAllContents(void __iomem *iobase, unsigned char *pbyEepromRe=
gs);<br>
<br>
-void SROMvReadEtherAddress(void __iomem *dwIoBase,<br>
+void SROMvReadEtherAddress(void __iomem *iobase,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0unsigned char *pbyEtherAddress);<br>
<br>
=C2=A0#endif /* __EEPROM_H__*/<br>
--<br>
2.7.4</div></div>
------=_Part_3542_1665619915.1476189736671--

------=_Part_3541_1046000143.1476189736669--

