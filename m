X-GM-THRID: 6338411449271975936
Date: Thu, 6 Oct 2016 19:51:20 -0700 (PDT)
From: rvarsha016@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Message-Id: <452c5458-c9c5-4a78-b153-956f34946aef@googlegroups.com>
In-Reply-To: <f446eb36-0b26-4c2c-840b-fa12785b88f0@googlegroups.com>
References: <f446eb36-0b26-4c2c-840b-fa12785b88f0@googlegroups.com>
Subject: Re: [PATCH] staging:vt6655:Fix checkpatch issues.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1970_251862905.1475808680538"
X-Google-Token: EKib3L8FaCZgwHMg9oM0
X-Google-IP: 118.151.209.30

------=_Part_1970_251862905.1475808680538
Content-Type: multipart/alternative; 
	boundary="----=_Part_1971_712409389.1475808680540"

------=_Part_1971_712409389.1475808680540
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


This patch fixes checkpatch.pl issues.
CamelCase issues solved and removed unnecessary lines.

CHECK: Do not include the paragraph about writing to the Free Software 
Foundation's mailing address from the sample GPL notice. The FSF has 
changed addresses in the past, and may do so again. Linux already includes 
a copy of the GPL.

CHECK: Avoid CamelCase

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 526 
+++++++++++++++++++-------------------
 1 file changed, 262 insertions(+), 264 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c 
b/drivers/staging/vt6655/baseband.c
index 8798fdf..ef198c2 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program;if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

- *
+ * with this program;
  *
  * File: baseband.c
  *
@@ -25,20 +24,20 @@
  * Date: Aug.22, 2002
  *
  * Functions:
- *      BBuGetFrameTime        - Calculate data frame transmitting time
+ *      BBUGETFRAMETIME        - Calculate data frame transmitting time
  *      BBvCaculateParameter   - Caculate PhyLength, PhyService and Phy 
Signal
  *                               parameter for baseband Tx
- *      BBbReadEmbedded         - Embedded read baseband register via MAC
- *      BBbWriteEmbedded        - Embedded write baseband register via MAC
- *      BBbVT3253Init          - VIA VT3253 baseband chip init code
+ *      bbbreadembedded         - Embedded read baseband register via MAC
+ *      bbbwriteembedded        - Embedded write baseband register via MAC
+ *      bbbvt3253init          - VIA VT3253 baseband chip init code
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
  *      08-07-2003 Bryan YC Fan:  Add MAXIM2827/2825 and RFMD2959 support.
- *      08-26-2003 Kyle Hsu    :  Modify BBuGetFrameTime() and
+ *      08-26-2003 Kyle Hsu    :  Modify BBUGETFRAMETIME() and
  *                               BBvCalculateParameter().
  *                                cancel the setting of MAC_REG_SOFTPWRCTL 
on
- *                               BBbVT3253Init().
+ *                               bbbvt3253init().
  *                                Add the comments.
  *      09-01-2003 Bryan YC Fan:  RF & BB tables updated.
  *                                Modified BBvLoopbackOn & 
BBvLoopbackOff().
@@ -779,7 +778,7 @@ static const unsigned char 
BYVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = {
 #define CB_VT3253B0_AGC_FOR_RFMD2959 195
 /* For RFMD2959 */
 static
-unsigned char byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
+unsigned char BYVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
        {0xF0, 0x00},
        {0xF1, 0x3E},
        {0xF0, 0x80},
@@ -980,7 +979,7 @@ unsigned char 
byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
 #define CB_VT3253B0_INIT_FOR_AIROHA2230 256
 /* For AIROHA */
 static
-unsigned char byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
+unsigned char BYVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
        {0x00, 0x31},
        {0x01, 0x00},
        {0x02, 0x00},
@@ -1241,7 +1240,7 @@ unsigned char 
byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {

 #define CB_VT3253B0_INIT_FOR_UW2451 256
 /* For UW2451 */
-static unsigned char byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
+static unsigned char BYVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
        {0x00, 0x31},
        {0x01, 0x00},
        {0x02, 0x00},
@@ -1502,7 +1501,7 @@ static unsigned char 
byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {

 #define CB_VT3253B0_AGC 193
 /* For AIROHA */
-static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
+static unsigned char BYVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
        {0xF0, 0x00},
        {0xF1, 0x00},
        {0xF0, 0x80},
@@ -1698,7 +1697,7 @@ static unsigned char 
byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
        {0xF0, 0x00},
 };

-static const unsigned short awcFrameTime[MAX_RATE] = {
+static const unsigned short awcframetime[MAX_RATE] = {
                10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };

@@ -1708,57 +1707,57 @@ static const unsigned short awcFrameTime[MAX_RATE] 
= {
  *
  * Parameters:
  *  In:
- *      byPreambleType  - Preamble Type
- *      byPktType        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, 
PK_TYPE_11GA
- *      cbFrameLength   - Baseband Type
- *      wRate           - Tx Rate
+ *      bypreambletype  - Preamble Type
+ *      bypkttype        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, 
PK_TYPE_11GA
+ *      cbframelength   - Baseband Type
+ *      wrate           - Tx Rate
  *  Out:
  *
  * Return Value: FrameTime
  *
  */
 unsigned int
-BBuGetFrameTime(
-       unsigned char byPreambleType,
-       unsigned char byPktType,
-       unsigned int cbFrameLength,
-       unsigned short wRate
+BBUGETFRAMETIME(
+       unsigned char bypreambletype,
+       unsigned char bypkttype,
+       unsigned int cbframelength,
+       unsigned short wrate
 )
 {
-       unsigned int uFrameTime;
-       unsigned int uPreamble;
-       unsigned int uTmp;
-       unsigned int uRateIdx = (unsigned int)wRate;
-       unsigned int uRate = 0;
+       unsigned int uframetime;
+       unsigned int upreamble;
+       unsigned int utmp;
+       unsigned int urateidx = (unsigned int)wrate;
+       unsigned int urate = 0;

-       if (uRateIdx > RATE_54M)
+       if (urateidx > RATE_54M)
                return 0;

-       uRate = (unsigned int)awcFrameTime[uRateIdx];
+       urate = (unsigned int)awcframetime[urateidx];

-       if (uRateIdx <= 3) {          /* CCK mode */
-               if (byPreambleType == 1) /* Short */
-                       uPreamble = 96;
+       if (urateidx <= 3) {          /* CCK mode */
+               if (bypreambletype == 1) /* Short */
+                       upreamble = 96;
                else
-                       uPreamble = 192;
+                       upreamble = 192;

-               uFrameTime = (cbFrameLength * 80) / uRate;  /* ????? */
-               uTmp = (uFrameTime * uRate) / 80;
-               if (cbFrameLength != uTmp)
-                       uFrameTime++;
+               uframetime = (cbframelength * 80) / urate;  /* ????? */
+               utmp = (uframetime * urate) / 80;
+               if (cbframelength != utmp)
+                       uframetime++;

-               return uPreamble + uFrameTime;
+               return upreamble + uframetime;
        }
-       uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* ???????? */
-       uTmp = ((uFrameTime * uRate) - 22) / 8;
-       if (cbFrameLength != uTmp)
-               uFrameTime++;
+       uframetime = (cbframelength * 8 + 22) / urate; /* ???????? */
+       utmp = ((uframetime * urate) - 22) / 8;
+       if (cbframelength != utmp)
+               uframetime++;

-       uFrameTime = uFrameTime * 4;    /* ??????? */
-       if (byPktType != PK_TYPE_11A)
-               uFrameTime += 6;     /* ?????? */
+       uframetime = uframetime * 4;    /* ??????? */
+       if (bypkttype != PK_TYPE_11A)
+               uframetime += 6;     /* ?????? */

-       return 20 + uFrameTime; /* ?????? */
+       return 20 + uframetime; /* ?????? */
 }

 /*
@@ -1785,7 +1784,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 
frame_length,
        u32 count = 0;
        u32 tmp;
        int ext_bit;
-       u8 preamble_type = priv->byPreambleType;
+       u8 preamble_type = priv->bypreambletype;

        bit_count = frame_length * 8;
        ext_bit = false;
@@ -1915,35 +1914,35 @@ void vnt_get_phy_field(struct vnt_private *priv, 
u32 frame_length,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
- *      byBBAddr    - address of register in Baseband
+ *      dwiobase    - I/O base address
+ *      bybbaddr    - address of register in Baseband
  *  Out:
- *      pbyData     - data read
+ *      pbydata     - data read
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbReadEmbedded(struct vnt_private *priv,
-                    unsigned char byBBAddr, unsigned char *pbyData)
+bool bbbreadembedded(struct vnt_private *priv,
+                    unsigned char bybbaddr, unsigned char *pbydata)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *dwiobase = priv->portoffset;
        unsigned short ww;
-       unsigned char byValue;
+       unsigned char byvalue;

        /* BB reg offset */
-       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr);

        /* turn on REGR */
-       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
+       macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
        /* W_MAX_TIMEOUT is the timeout period */
        for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
-               if (byValue & BBREGCTL_DONE)
+               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, &byvalue);
+               if (byvalue & BBREGCTL_DONE)
                        break;
        }

        /* get BB data */
-       VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData);
+       vnsvinportb(dwiobase + MAC_REG_BBREGDATA, pbydata);

        if (ww == W_MAX_TIMEOUT) {
                pr_debug(" DBG_PORT80(0x30)\n");
@@ -1957,33 +1956,33 @@ bool BBbReadEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
- *      byBBAddr    - address of register in Baseband
- *      byData      - data to write
+ *      dwiobase    - I/O base address
+ *      bybbaddr    - address of register in Baseband
+ *      bydata      - data to write
  *  Out:
  *      none
  *
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool BBbWriteEmbedded(struct vnt_private *priv,
-                     unsigned char byBBAddr, unsigned char byData)
+bool bbbwriteembedded(struct vnt_private *priv,
+                     unsigned char bybbaddr, unsigned char bydata)
 {
-       void __iomem *dwIoBase = priv->PortOffset;
+       void __iomem *dwiobase = priv->portoffset;
        unsigned short ww;
-       unsigned char byValue;
+       unsigned char byvalue;

        /* BB reg offset */
-       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
+       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr);
        /* set BB data */
-       VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData);
+       vnsvoutportb(dwiobase + MAC_REG_BBREGDATA, bydata);

        /* turn on BBREGCTL_REGW */
-       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
+       macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
        /* W_MAX_TIMEOUT is the timeout period */
        for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
-               if (byValue & BBREGCTL_DONE)
+               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, &byvalue);
+               if (byvalue & BBREGCTL_DONE)
                        break;
        }

@@ -1999,9 +1998,9 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *      byRevId     - Revision ID
- *      byRFType    - RF type
+ *      byrftype    - RF type
  *  Out:
  *      none
  *
@@ -2009,95 +2008,95 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
  *
  */

-bool BBbVT3253Init(struct vnt_private *priv)
+bool bbbvt3253init(struct vnt_private *priv)
 {
-       bool bResult = true;
+       bool bresult = true;
        int        ii;
-       void __iomem *dwIoBase = priv->PortOffset;
-       unsigned char byRFType = priv->byRFType;
-       unsigned char byLocalID = priv->byLocalID;
+       void __iomem *dwiobase = priv->portoffset;
+       unsigned char byrftype = priv->byrftype;
+       unsigned char bylocalid = priv->bylocalid;

-       if (byRFType == RF_RFMD2959) {
-               if (byLocalID <= REV_ID_VT3253_A1) {
+       if (byrftype == RF_RFMD2959) {
+               if (bylocalid <= REV_ID_VT3253_A1) {
                        for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
-                               bResult &= BBbWriteEmbedded(priv,
+                               bresult &= bbbwriteembedded(priv,
                                        BYVT3253INITTAB_RFMD[ii][0],
                                        BYVT3253INITTAB_RFMD[ii][1]);

                } else {
                        for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-                               bResult &= BBbWriteEmbedded(priv,
+                               bresult &= bbbwriteembedded(priv,
                                        BYVT3253B0_RFMD[ii][0],
                                        BYVT3253B0_RFMD[ii][1]);

                        for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; 
ii++)
-                               bResult &= BBbWriteEmbedded(priv,
-                                       byVT3253B0_AGC4_RFMD2959[ii][0],
-                                       byVT3253B0_AGC4_RFMD2959[ii][1]);
+                               bresult &= bbbwriteembedded(priv,
+                                       BYVT3253B0_AGC4_RFMD2959[ii][0],
+                                       BYVT3253B0_AGC4_RFMD2959[ii][1]);

-                       VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-                       MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
+                       vnsvoutportd(dwiobase + MAC_REG_ITRTMSET, 0x23);
+                       macvregbitson(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
                }
-               priv->abyBBVGA[0] = 0x18;
-               priv->abyBBVGA[1] = 0x0A;
-               priv->abyBBVGA[2] = 0x0;
-               priv->abyBBVGA[3] = 0x0;
-               priv->ldBmThreshold[0] = -70;
-               priv->ldBmThreshold[1] = -50;
-               priv->ldBmThreshold[2] = 0;
-               priv->ldBmThreshold[3] = 0;
-       } else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) {
+               priv->abybbvga[0] = 0x18;
+               priv->abybbvga[1] = 0x0A;
+               priv->abybbvga[2] = 0x0;
+               priv->abybbvga[3] = 0x0;
+               priv->ldbmthreshold[0] = -70;
+               priv->ldbmthreshold[1] = -50;
+               priv->ldbmthreshold[2] = 0;
+               priv->ldbmthreshold[3] = 0;
+       } else if ((byrftype == RF_AIROHA) || (byrftype == RF_AL2230S)) {
                for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AIROHA2230[ii][0],
-                               byVT3253B0_AIROHA2230[ii][1]);
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AIROHA2230[ii][0],
+                               BYVT3253B0_AIROHA2230[ii][1]);

                for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AGC[ii][0], 
byVT3253B0_AGC[ii][1]);
-
-               priv->abyBBVGA[0] = 0x1C;
-               priv->abyBBVGA[1] = 0x10;
-               priv->abyBBVGA[2] = 0x0;
-               priv->abyBBVGA[3] = 0x0;
-               priv->ldBmThreshold[0] = -70;
-               priv->ldBmThreshold[1] = -48;
-               priv->ldBmThreshold[2] = 0;
-               priv->ldBmThreshold[3] = 0;
-       } else if (byRFType == RF_UW2451) {
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AGC[ii][0], 
BYVT3253B0_AGC[ii][1]);
+
+               priv->abybbvga[0] = 0x1C;
+               priv->abybbvga[1] = 0x10;
+               priv->abybbvga[2] = 0x0;
+               priv->abybbvga[3] = 0x0;
+               priv->ldbmthreshold[0] = -70;
+               priv->ldbmthreshold[1] = -48;
+               priv->ldbmthreshold[2] = 0;
+               priv->ldbmthreshold[3] = 0;
+       } else if (byrftype == RF_UW2451) {
                for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_UW2451[ii][0],
-                               byVT3253B0_UW2451[ii][1]);
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_UW2451[ii][0],
+                               BYVT3253B0_UW2451[ii][1]);

                for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AGC[ii][0],
-                               byVT3253B0_AGC[ii][1]);
-
-               VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
-               MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
-
-               priv->abyBBVGA[0] = 0x14;
-               priv->abyBBVGA[1] = 0x0A;
-               priv->abyBBVGA[2] = 0x0;
-               priv->abyBBVGA[3] = 0x0;
-               priv->ldBmThreshold[0] = -60;
-               priv->ldBmThreshold[1] = -50;
-               priv->ldBmThreshold[2] = 0;
-               priv->ldBmThreshold[3] = 0;
-       } else if (byRFType == RF_UW2452) {
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AGC[ii][0],
+                               BYVT3253B0_AGC[ii][1]);
+
+               vnsvoutportb(dwiobase + MAC_REG_ITRTMSET, 0x23);
+               macvregbitson(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
+
+               priv->abybbvga[0] = 0x14;
+               priv->abybbvga[1] = 0x0A;
+               priv->abybbvga[2] = 0x0;
+               priv->abybbvga[3] = 0x0;
+               priv->ldbmthreshold[0] = -60;
+               priv->ldbmthreshold[1] = -50;
+               priv->ldbmthreshold[2] = 0;
+               priv->ldbmthreshold[3] = 0;
+       } else if (byrftype == RF_UW2452) {
                for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_UW2451[ii][0],
-                               byVT3253B0_UW2451[ii][1]);
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_UW2451[ii][0],
+                               BYVT3253B0_UW2451[ii][1]);

                /* Init ANT B select,
                 * TX Config CR09 = 0x61->0x45,
                 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
inverted)
                 */

-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+               /*bresult &= bbbwriteembedded(dwiobase,0x09,0x41);*/

                /* Init ANT B select,
                 * RX Config CR10 = 0x28->0x2A,
@@ -2105,101 +2104,100 @@ bool BBbVT3253Init(struct vnt_private *priv)
                 * make the ANT_A, ANT_B inverted)
                 */

-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+               /*bresult &= bbbwriteembedded(dwiobase,0x0a,0x28);*/
                /* Select VC1/VC2, CR215 = 0x02->0x06 */
-               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+               bresult &= bbbwriteembedded(priv, 0xd7, 0x06);

                /* {{RobertYu:20050125, request by Jack */
-               bResult &= BBbWriteEmbedded(priv, 0x90, 0x20);
-               bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb);
+               bresult &= bbbwriteembedded(priv, 0x90, 0x20);
+               bresult &= bbbwriteembedded(priv, 0x97, 0xeb);
                /* }} */

                /* {{RobertYu:20050221, request by Jack */
-               bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00);
-               bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30);
+               bresult &= bbbwriteembedded(priv, 0xa6, 0x00);
+               bresult &= bbbwriteembedded(priv, 0xa8, 0x30);
                /* }} */
-               bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58);
+               bresult &= bbbwriteembedded(priv, 0xb0, 0x58);

                for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AGC[ii][0], 
byVT3253B0_AGC[ii][1]);
-
-               priv->abyBBVGA[0] = 0x14;
-               priv->abyBBVGA[1] = 0x0A;
-               priv->abyBBVGA[2] = 0x0;
-               priv->abyBBVGA[3] = 0x0;
-               priv->ldBmThreshold[0] = -60;
-               priv->ldBmThreshold[1] = -50;
-               priv->ldBmThreshold[2] = 0;
-               priv->ldBmThreshold[3] = 0;
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AGC[ii][0], 
BYVT3253B0_AGC[ii][1]);
+
+               priv->abybbvga[0] = 0x14;
+               priv->abybbvga[1] = 0x0A;
+               priv->abybbvga[2] = 0x0;
+               priv->abybbvga[3] = 0x0;
+               priv->ldbmthreshold[0] = -60;
+               priv->ldbmthreshold[1] = -50;
+               priv->ldbmthreshold[2] = 0;
+               priv->ldbmthreshold[3] = 0;
                /* }} RobertYu */

-       } else if (byRFType == RF_VT3226) {
+       } else if (byrftype == RF_VT3226) {
                for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AIROHA2230[ii][0],
-                               byVT3253B0_AIROHA2230[ii][1]);
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AIROHA2230[ii][0],
+                               BYVT3253B0_AIROHA2230[ii][1]);

                for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AGC[ii][0], 
byVT3253B0_AGC[ii][1]);
-
-               priv->abyBBVGA[0] = 0x1C;
-               priv->abyBBVGA[1] = 0x10;
-               priv->abyBBVGA[2] = 0x0;
-               priv->abyBBVGA[3] = 0x0;
-               priv->ldBmThreshold[0] = -70;
-               priv->ldBmThreshold[1] = -48;
-               priv->ldBmThreshold[2] = 0;
-               priv->ldBmThreshold[3] = 0;
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AGC[ii][0], 
BYVT3253B0_AGC[ii][1]);
+
+               priv->abybbvga[0] = 0x1C;
+               priv->abybbvga[1] = 0x10;
+               priv->abybbvga[2] = 0x0;
+               priv->abybbvga[3] = 0x0;
+               priv->ldbmthreshold[0] = -70;
+               priv->ldbmthreshold[1] = -48;
+               priv->ldbmthreshold[2] = 0;
+               priv->ldbmthreshold[3] = 0;
                /* Fix VT3226 DFC system timing issue */
-               MACvSetRFLE_LatchBase(dwIoBase);
+               MACVSETRFLE_LATCHBASE(dwiobase);
                /* {{ RobertYu: 20050104 */
-       } else if (byRFType == RF_AIROHA7230) {
+       } else if (byrftype == RF_AIROHA7230) {
                for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AIROHA2230[ii][0],
-                               byVT3253B0_AIROHA2230[ii][1]);
-
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AIROHA2230[ii][0],
+                               BYVT3253B0_AIROHA2230[ii][1]);

                /* {{ RobertYu:20050223, request by JerryChung */
                /* Init ANT B select,TX Config CR09 = 0x61->0x45,
                 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
inverted)
                 */
-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
+               /*bresult &= bbbwriteembedded(dwiobase,0x09,0x41);*/
                /* Init ANT B select,RX Config CR10 = 0x28->0x2A,
                 * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B 
inverted)
                 */
-               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
+               /*bresult &= bbbwriteembedded(dwiobase,0x0a,0x28);*/
                /* Select VC1/VC2, CR215 = 0x02->0x06 */
-               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
+               bresult &= bbbwriteembedded(priv, 0xd7, 0x06);
                /* }} */

                for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-                       bResult &= BBbWriteEmbedded(priv,
-                               byVT3253B0_AGC[ii][0], 
byVT3253B0_AGC[ii][1]);
-
-               priv->abyBBVGA[0] = 0x1C;
-               priv->abyBBVGA[1] = 0x10;
-               priv->abyBBVGA[2] = 0x0;
-               priv->abyBBVGA[3] = 0x0;
-               priv->ldBmThreshold[0] = -70;
-               priv->ldBmThreshold[1] = -48;
-               priv->ldBmThreshold[2] = 0;
-               priv->ldBmThreshold[3] = 0;
+                       bresult &= bbbwriteembedded(priv,
+                               BYVT3253B0_AGC[ii][0], 
BYVT3253B0_AGC[ii][1]);
+
+               priv->abybbvga[0] = 0x1C;
+               priv->abybbvga[1] = 0x10;
+               priv->abybbvga[2] = 0x0;
+               priv->abybbvga[3] = 0x0;
+               priv->ldbmthreshold[0] = -70;
+               priv->ldbmthreshold[1] = -48;
+               priv->ldbmthreshold[2] = 0;
+               priv->ldbmthreshold[3] = 0;
                /* }} RobertYu */
        } else {
                /* No VGA Table now */
-               priv->bUpdateBBVGA = false;
-               priv->abyBBVGA[0] = 0x1C;
+               priv->bupdatebbvga = false;
+               priv->abybbvga[0] = 0x1C;
        }

-       if (byLocalID > REV_ID_VT3253_A1) {
-               BBbWriteEmbedded(priv, 0x04, 0x7F);
-               BBbWriteEmbedded(priv, 0x0D, 0x01);
+       if (bylocalid > REV_ID_VT3253_A1) {
+               bbbwriteembedded(priv, 0x04, 0x7F);
+               bbbwriteembedded(priv, 0x0D, 0x01);
        }

-       return bResult;
+       return bresult;
 }

 /*
@@ -2215,42 +2213,42 @@ bool BBbVT3253Init(struct vnt_private *priv)
  *
  */
 void
-BBvSetShortSlotTime(struct vnt_private *priv)
+bbvsetshortslottime(struct vnt_private *priv)
 {
-       unsigned char byBBRxConf = 0;
-       unsigned char byBBVGA = 0;
+       unsigned char bybbrxconf = 0;
+       unsigned char bybbvga = 0;

-       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */

-       if (priv->bShortSlotTime)
-               byBBRxConf &= 0xDF; /* 1101 1111 */
+       if (priv->bshortslottime)
+               bybbrxconf &= 0xDF; /* 1101 1111 */
        else
-               byBBRxConf |= 0x20; /* 0010 0000 */
+               bybbrxconf |= 0x20; /* 0010 0000 */

        /* patch for 3253B0 Baseband with Cardbus module */
-       BBbReadEmbedded(priv, 0xE7, &byBBVGA);
-       if (byBBVGA == priv->abyBBVGA[0])
-               byBBRxConf |= 0x20; /* 0010 0000 */
+       bbbreadembedded(priv, 0xE7, &bybbvga);
+       if (bybbvga == priv->abybbvga[0])
+               bybbrxconf |= 0x20; /* 0010 0000 */

-       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */
 }

-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
+void bbvsetvgagainoffset(struct vnt_private *priv, unsigned char bydata)
 {
-       unsigned char byBBRxConf = 0;
+       unsigned char bybbrxconf = 0;

-       BBbWriteEmbedded(priv, 0xE7, byData);
+       bbbwriteembedded(priv, 0xE7, bydata);

-       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
+       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */
        /* patch for 3253B0 Baseband with Cardbus module */
-       if (byData == priv->abyBBVGA[0])
-               byBBRxConf |= 0x20; /* 0010 0000 */
-       else if (priv->bShortSlotTime)
-               byBBRxConf &= 0xDF; /* 1101 1111 */
+       if (bydata == priv->abybbvga[0])
+               bybbrxconf |= 0x20; /* 0010 0000 */
+       else if (priv->bshortslottime)
+               bybbrxconf &= 0xDF; /* 1101 1111 */
        else
-               byBBRxConf |= 0x20; /* 0010 0000 */
-       priv->byBBVGACurrent = byData;
-       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+               bybbrxconf |= 0x20; /* 0010 0000 */
+       priv->bybbvgacurrent = bydata;
+       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */
 }

 /*
@@ -2258,7 +2256,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, 
unsigned char byData)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
@@ -2266,12 +2264,12 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, 
unsigned char byData)
  *
  */
 void
-BBvSoftwareReset(struct vnt_private *priv)
+bbvsoftwarereset(struct vnt_private *priv)
 {
-       BBbWriteEmbedded(priv, 0x50, 0x40);
-       BBbWriteEmbedded(priv, 0x50, 0);
-       BBbWriteEmbedded(priv, 0x9C, 0x01);
-       BBbWriteEmbedded(priv, 0x9C, 0);
+       bbbwriteembedded(priv, 0x50, 0x40);
+       bbbwriteembedded(priv, 0x50, 0);
+       bbbwriteembedded(priv, 0x9C, 0x01);
+       bbbwriteembedded(priv, 0x9C, 0);
 }

 /*
@@ -2279,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
@@ -2287,13 +2285,13 @@ BBvSoftwareReset(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeON(struct vnt_private *priv)
+bbvpowersavemodeon(struct vnt_private *priv)
 {
-       unsigned char byOrgData;
+       unsigned char byorgdata;

-       BBbReadEmbedded(priv, 0x0D, &byOrgData);
-       byOrgData |= BIT(0);
-       BBbWriteEmbedded(priv, 0x0D, byOrgData);
+       bbbreadembedded(priv, 0x0D, &byorgdata);
+       byorgdata |= BIT(0);
+       bbbwriteembedded(priv, 0x0D, byorgdata);
 }

 /*
@@ -2301,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  * Parameters:
  *  In:
- *      dwIoBase    - I/O base address
+ *      dwiobase    - I/O base address
  *  Out:
  *      none
  *
@@ -2309,13 +2307,13 @@ BBvPowerSaveModeON(struct vnt_private *priv)
  *
  */
 void
-BBvPowerSaveModeOFF(struct vnt_private *priv)
+bbvpowersavemodeoff(struct vnt_private *priv)
 {
-       unsigned char byOrgData;
+       unsigned char byorgdata;

-       BBbReadEmbedded(priv, 0x0D, &byOrgData);
-       byOrgData &= ~(BIT(0));
-       BBbWriteEmbedded(priv, 0x0D, byOrgData);
+       bbbreadembedded(priv, 0x0D, &byorgdata);
+       byorgdata &= ~(BIT(0));
+       bbbwriteembedded(priv, 0x0D, byorgdata);
 }

 /*
@@ -2324,7 +2322,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  * Parameters:
  *  In:
  *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      BYANTENNAMODE    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2333,22 +2331,22 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
  */

 void
-BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+bbvsettxantennamode(struct vnt_private *priv, unsigned char BYANTENNAMODE)
 {
-       unsigned char byBBTxConf;
+       unsigned char bybbtxconf;

-       BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */
-       if (byAntennaMode == ANT_DIVERSITY) {
+       bbbreadembedded(priv, 0x09, &bybbtxconf); /* CR09 */
+       if (BYANTENNAMODE == ANT_DIVERSITY) {
                /* bit 1 is diversity */
-               byBBTxConf |= 0x02;
-       } else if (byAntennaMode == ANT_A) {
+               bybbtxconf |= 0x02;
+       } else if (BYANTENNAMODE == ANT_A) {
                /* bit 2 is ANTSEL */
-               byBBTxConf &= 0xF9; /* 1111 1001 */
-       } else if (byAntennaMode == ANT_B) {
-               byBBTxConf &= 0xFD; /* 1111 1101 */
-               byBBTxConf |= 0x04;
+               bybbtxconf &= 0xF9; /* 1111 1001 */
+       } else if (BYANTENNAMODE == ANT_B) {
+               bybbtxconf &= 0xFD; /* 1111 1101 */
+               bybbtxconf |= 0x04;
        }
-       BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR09 */
+       bbbwriteembedded(priv, 0x09, bybbtxconf); /* CR09 */
 }

 /*
@@ -2357,7 +2355,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv, 
unsigned char byAntennaMode)
  * Parameters:
  *  In:
  *      priv          - Device Structure
- *      byAntennaMode    - Antenna Mode
+ *      BYANTENNAMODE    - Antenna Mode
  *  Out:
  *      none
  *
@@ -2366,25 +2364,25 @@ BBvSetTxAntennaMode(struct vnt_private *priv, 
unsigned char byAntennaMode)
  */

 void
-BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
+bbvsetrxantennamode(struct vnt_private *priv, unsigned char BYANTENNAMODE)
 {
-       unsigned char byBBRxConf;
+       unsigned char bybbrxconf;

-       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
-       if (byAntennaMode == ANT_DIVERSITY) {
-               byBBRxConf |= 0x01;
+       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */
+       if (BYANTENNAMODE == ANT_DIVERSITY) {
+               bybbrxconf |= 0x01;

-       } else if (byAntennaMode == ANT_A) {
-               byBBRxConf &= 0xFC; /* 1111 1100 */
-       } else if (byAntennaMode == ANT_B) {
-               byBBRxConf &= 0xFE; /* 1111 1110 */
-               byBBRxConf |= 0x02;
+       } else if (BYANTENNAMODE == ANT_A) {
+               bybbrxconf &= 0xFC; /* 1111 1100 */
+       } else if (BYANTENNAMODE == ANT_B) {
+               bybbrxconf &= 0xFE; /* 1111 1110 */
+               bybbrxconf |= 0x02;
        }
-       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
+       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */
 }

 /*
- * Description: BBvSetDeepSleep
+ * Description: bbvsetdeepsleep
  *
  * Parameters:
  *  In:
@@ -2396,15 +2394,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv, 
unsigned char byAntennaMode)
  *
  */
 void
-BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+bbvsetdeepsleep(struct vnt_private *priv, unsigned char bylocalid)
 {
-       BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */
-       BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */
+       bbbwriteembedded(priv, 0x0C, 0x17); /* CR12 */
+       bbbwriteembedded(priv, 0x0D, 0xB9); /* CR13 */
 }

 void
-BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
+bbvexitdeepsleep(struct vnt_private *priv, unsigned char bylocalid)
 {
-       BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */
-       BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */
+       bbbwriteembedded(priv, 0x0C, 0x00); /* CR12 */
+       bbbwriteembedded(priv, 0x0D, 0x01); /* CR13 */
 }
--
2.7.4


------=_Part_1971_712409389.1475808680540
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><div style=3D"overflow: auto"><div style=3D"max-h=
eight: 10000px;"><div dir=3D"ltr"><span>This patch fixes <a href=3D"http://=
checkpatch.pl" rel=3D"nofollow" target=3D"_blank">checkpatch.pl</a> issues.=
<br>
CamelCase issues solved and removed unnecessary lines.<br>
<br>
CHECK: Do not include the paragraph about writing to the Free Software=20
Foundation&#39;s mailing address from the sample GPL notice. The FSF has=20
changed addresses in the past, and may do so again. Linux already=20
includes a copy of the GPL.<br>
<br>
CHECK: Avoid CamelCase<br>
<br></span>
Signed-off-by: Varsha Rao &lt;<a href=3D"mailto:rvarsha016@gmail.com" targe=
t=3D"_blank" rel=3D"nofollow">rvarsha016@gmail.com</a>&gt;<span><br>
---<br>
=C2=A0drivers/staging/vt6655/<wbr>baseband.c | 526 +++++++++++++++++++-----=
------<wbr>--------<br>
=C2=A01 file changed, 262 insertions(+), 264 deletions(-)<br>
<br>
diff --git a/drivers/staging/vt6655/<wbr>baseband.c b/drivers/staging/vt665=
5/<wbr>baseband.c<br>
index 8798fdf..ef198c2 100644<br>
--- a/drivers/staging/vt6655/<wbr>baseband.c<br>
+++ b/drivers/staging/vt6655/<wbr>baseband.c<br>
@@ -13,8 +13,7 @@<br>
=C2=A0 * GNU General Public License for more details.<br>
=C2=A0 *<br>
=C2=A0 * You should have received a copy of the GNU General Public License =
along<br></span>- * with this program;if not, write to the Free Software Fo=
undation, Inc.,<br>
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.<div><div><i=
mg src=3D"https://lh6.googleusercontent.com/proxy/bmXRV8U_rvsrPro4DPGFB69kd=
64mPUlaHL87vQtq_GAuJjcmUkNXeaKyEx7hvg1C5Tift0qXrd0-iJixautq_siUL9GltfUhIT6g=
gIHnlQ=3Dw5000-h5000"></div></div><div><div><br>
- *<br>
+ * with this program;<br>
=C2=A0 *<br>
=C2=A0 * File: baseband.c<br>
=C2=A0 *<br>
@@ -25,20 +24,20 @@<br>
=C2=A0 * Date: Aug.22, 2002<br>
=C2=A0 *<br>
=C2=A0 * Functions:<br>
- *=C2=A0 =C2=A0 =C2=A0 BBuGetFrameTime=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Calcul=
ate data frame transmitting time<br>
+ *=C2=A0 =C2=A0 =C2=A0 BBUGETFRAMETIME=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Calcul=
ate data frame transmitting time<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 BBvCaculateParameter=C2=A0 =C2=A0- Caculate Ph=
yLength, PhyService and Phy Signal<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0parameter for baseband Tx<br>
- *=C2=A0 =C2=A0 =C2=A0 BBbReadEmbedded=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- =
Embedded read baseband register via MAC<br>
- *=C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Embed=
ded write baseband register via MAC<br>
- *=C2=A0 =C2=A0 =C2=A0 BBbVT3253Init=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - V=
IA VT3253 baseband chip init code<br>
+ *=C2=A0 =C2=A0 =C2=A0 bbbreadembedded=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- =
Embedded read baseband register via MAC<br>
+ *=C2=A0 =C2=A0 =C2=A0 bbbwriteembedded=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Embed=
ded write baseband register via MAC<br>
+ *=C2=A0 =C2=A0 =C2=A0 bbbvt3253init=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - V=
IA VT3253 baseband chip init code<br>
=C2=A0 *<br>
=C2=A0 * Revision History:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 06-10-2003 Bryan YC Fan:=C2=A0 Re-write codes =
to support VT3253 spec.<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 08-07-2003 Bryan YC Fan:=C2=A0 Add MAXIM2827/2=
825 and RFMD2959 support.<br>
- *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle Hsu=C2=A0 =C2=A0 :=C2=A0 Modify BBu=
GetFrameTime() and<br>
+ *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle Hsu=C2=A0 =C2=A0 :=C2=A0 Modify BBU=
GETFRAMETIME() and<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBvCalculateParameter().<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cancel the setting of MAC_REG=
_SOFTPWRCTL on<br>
- *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBbVT3253Init().<br>
+ *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bbbvt3253init().<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Add the comments.<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 09-01-2003 Bryan YC Fan:=C2=A0 RF &amp; BB tab=
les updated.<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Modified BBvLoopbackOn &amp; =
BBvLoopbackOff().<br>
@@ -779,7 +778,7 @@ static const unsigned char BYVT3253B0_RFMD[CB_VT3253B0_=
<wbr>INIT_FOR_RFMD][2] =3D {<br>
=C2=A0#define CB_VT3253B0_AGC_FOR_RFMD2959 195<br>
=C2=A0/* For RFMD2959 */<br>
=C2=A0static<br>
-unsigned char byVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0_AGC_FOR_RFMD2959][=
2] =3D {<br>
+unsigned char BYVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0_AGC_FOR_RFMD2959][=
2] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF1, 0x3E},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x80},<br>
@@ -980,7 +979,7 @@ unsigned char byVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0=
_AGC_FOR_RFMD2959][2] =3D {<br>
=C2=A0#define CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230 256<br>
=C2=A0/* For AIROHA */<br>
=C2=A0static<br>
-unsigned char byVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_INIT_FOR_AIROHA2230][=
<wbr>2] =3D {<br>
+unsigned char BYVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_INIT_FOR_AIROHA2230][=
<wbr>2] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x00, 0x31},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x01, 0x00},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x02, 0x00},<br>
@@ -1241,7 +1240,7 @@ unsigned char byVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_=
INIT_FOR_AIROHA2230][<wbr>2] =3D {<br>
<br>
=C2=A0#define CB_VT3253B0_INIT_FOR_UW2451 256<br>
=C2=A0/* For UW2451 */<br>
-static unsigned char byVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_FOR_UW2451][2=
] =3D {<br>
+static unsigned char BYVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_FOR_UW2451][2=
] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x00, 0x31},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x01, 0x00},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x02, 0x00},<br>
@@ -1502,7 +1501,7 @@ static unsigned char byVT3253B0_UW2451[CB_VT3253B0_<w=
br>INIT_FOR_UW2451][2] =3D {<br>
<br>
=C2=A0#define CB_VT3253B0_AGC 193<br>
=C2=A0/* For AIROHA */<br>
-static unsigned char byVT3253B0_AGC[CB_VT3253B0_<wbr>AGC][2] =3D {<br>
+static unsigned char BYVT3253B0_AGC[CB_VT3253B0_<wbr>AGC][2] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF1, 0x00},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x80},<br>
@@ -1698,7 +1697,7 @@ static unsigned char byVT3253B0_AGC[CB_VT3253B0_<wbr>=
AGC][2] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00},<br>
=C2=A0};<br>
<br>
-static const unsigned short awcFrameTime[MAX_RATE] =3D {<br>
+static const unsigned short awcframetime[MAX_RATE] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 10, 20, 55, 110, 24=
, 36, 48, 72, 96, 144, 192, 216<br>
=C2=A0};<br>
<br>
@@ -1708,57 +1707,57 @@ static const unsigned short awcFrameTime[MAX_RATE] =
=3D {<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 byPreambleType=C2=A0 - Preamble Type<br>
- *=C2=A0 =C2=A0 =C2=A0 byPktType=C2=A0 =C2=A0 =C2=A0 =C2=A0 - PK_TYPE_11A,=
 PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA<br>
- *=C2=A0 =C2=A0 =C2=A0 cbFrameLength=C2=A0 =C2=A0- Baseband Type<br>
- *=C2=A0 =C2=A0 =C2=A0 wRate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Tx =
Rate<br>
+ *=C2=A0 =C2=A0 =C2=A0 bypreambletype=C2=A0 - Preamble Type<br>
+ *=C2=A0 =C2=A0 =C2=A0 bypkttype=C2=A0 =C2=A0 =C2=A0 =C2=A0 - PK_TYPE_11A,=
 PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA<br>
+ *=C2=A0 =C2=A0 =C2=A0 cbframelength=C2=A0 =C2=A0- Baseband Type<br>
+ *=C2=A0 =C2=A0 =C2=A0 wrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Tx =
Rate<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *<br>
=C2=A0 * Return Value: FrameTime<br>
=C2=A0 *<br>
=C2=A0 */<br>
=C2=A0unsigned int<br>
-BBuGetFrameTime(<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byPreambleType,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byPktType,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int cbFrameLength,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned short wRate<br>
+BBUGETFRAMETIME(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bypreambletype,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bypkttype,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int cbframelength,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned short wrate<br>
=C2=A0)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uFrameTime;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uPreamble;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uTmp;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uRateIdx =3D (unsigned int)wRate;<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uRate =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uframetime;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int upreamble;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int utmp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int urateidx =3D (unsigned int)wrate;<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int urate =3D 0;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (uRateIdx &gt; RATE_54M)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (urateidx &gt; RATE_54M)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0uRate =3D (unsigned int)awcFrameTime[uRateIdx];=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0urate =3D (unsigned int)awcframetime[urateidx];=
<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (uRateIdx &lt;=3D 3) {=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /* CCK mode */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byPreambleType =
=3D=3D 1) /* Short */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0uPreamble =3D 96;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (urateidx &lt;=3D 3) {=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /* CCK mode */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (bypreambletype =
=3D=3D 1) /* Short */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0upreamble =3D 96;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0uPreamble =3D 192;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0upreamble =3D 192;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime =3D (cbF=
rameLength * 80) / uRate;=C2=A0 /* ????? */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uTmp =3D (uFrameTim=
e * uRate) / 80;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbFrameLength !=
=3D uTmp)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0uFrameTime++;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime =3D (cbf=
ramelength * 80) / urate;=C2=A0 /* ????? */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0utmp =3D (uframetim=
e * urate) / 80;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbframelength !=
=3D utmp)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0uframetime++;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return uPreamble + =
uFrameTime;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return upreamble + =
uframetime;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime =3D (cbFrameLength * 8 + 22) / uRate=
; /* ???????? */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0uTmp =3D ((uFrameTime * uRate) - 22) / 8;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbFrameLength !=3D uTmp)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime++;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime =3D (cbframelength * 8 + 22) / urate=
; /* ???????? */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0utmp =3D ((uframetime * urate) - 22) / 8;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbframelength !=3D utmp)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime++;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime =3D uFrameTime * 4;=C2=A0 =C2=A0 /* =
??????? */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byPktType !=3D PK_TYPE_11A)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime +=3D 6;=
=C2=A0 =C2=A0 =C2=A0/* ?????? */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime =3D uframetime * 4;=C2=A0 =C2=A0 /* =
??????? */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bypkttype !=3D PK_TYPE_11A)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime +=3D 6;=
=C2=A0 =C2=A0 =C2=A0/* ?????? */<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return 20 + uFrameTime; /* ?????? */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 20 + uframetime; /* ?????? */<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -1785,7 +1784,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 =
frame_length,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 count =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 tmp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int ext_bit;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 preamble_type =3D priv-&gt;byPreambleType;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 preamble_type =3D priv-&gt;bypreambletype;<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bit_count =3D frame_length * 8;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ext_bit =3D false;<br>
@@ -1915,35 +1914,35 @@ void vnt_get_phy_field(struct vnt_private *priv, u3=
2 frame_length,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
- *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =C2=A0 - address of register in Base=
band<br>
+ *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 bybbaddr=C2=A0 =C2=A0 - address of register in Base=
band<br>
=C2=A0 *=C2=A0 Out:<br>
- *=C2=A0 =C2=A0 =C2=A0 pbyData=C2=A0 =C2=A0 =C2=A0- data read<br>
+ *=C2=A0 =C2=A0 =C2=A0 pbydata=C2=A0 =C2=A0 =C2=A0- data read<br>
=C2=A0 *<br>
=C2=A0 * Return Value: true if succeeded; false if failed.<br>
=C2=A0 *<br>
=C2=A0 */<br>
-bool BBbReadEmbedded(struct vnt_private *priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsi=
gned char byBBAddr, unsigned char *pbyData)<br>
+bool bbbreadembedded(struct vnt_private *priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsi=
gned char bybbaddr, unsigned char *pbydata)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwiobase =3D priv-&gt;portoffset;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byValue;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byvalue;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg offset */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBA=
ddr);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybba=
ddr);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on REGR */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREG=
CTL_REGR);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREG=
CTL_REGR);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIMEOUT is the timeout period */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; ww++) {<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBas=
e + MAC_REG_BBREGCTL, &amp;byValue);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byValue &amp; B=
BREGCTL_DONE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvinportb(dwiobas=
e + MAC_REG_BBREGCTL, &amp;byvalue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byvalue &amp; B=
BREGCTL_DONE)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get BB data */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyDa=
ta);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvinportb(dwiobase + MAC_REG_BBREGDATA, pbyda=
ta);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ww =3D=3D W_MAX_TIMEOUT) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pr_debug(&quot; DBG=
_PORT80(0x30)\n&quot;);<br>
@@ -1957,33 +1956,33 @@ bool BBbReadEmbedded(struct vnt_private *priv,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
- *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =C2=A0 - address of register in Base=
band<br>
- *=C2=A0 =C2=A0 =C2=A0 byData=C2=A0 =C2=A0 =C2=A0 - data to write<br>
+ *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 bybbaddr=C2=A0 =C2=A0 - address of register in Base=
band<br>
+ *=C2=A0 =C2=A0 =C2=A0 bydata=C2=A0 =C2=A0 =C2=A0 - data to write<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
=C2=A0 * Return Value: true if succeeded; false if failed.<br>
=C2=A0 *<br>
=C2=A0 */<br>
-bool BBbWriteEmbedded(struct vnt_private *priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0unsigned char byBBAddr, unsigned char byData)<br>
+bool bbbwriteembedded(struct vnt_private *priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0unsigned char bybbaddr, unsigned char bydata)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwiobase =3D priv-&gt;portoffset;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byValue;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byvalue;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg offset */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBA=
ddr);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybba=
ddr);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* set BB data */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byDa=
ta);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb(dwiobase + MAC_REG_BBREGDATA, byda=
ta);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on BBREGCTL_REGW */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREG=
CTL_REGW);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREG=
CTL_REGW);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIMEOUT is the timeout period */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; ww++) {<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBas=
e + MAC_REG_BBREGCTL, &amp;byValue);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byValue &amp; B=
BREGCTL_DONE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvinportb(dwiobas=
e + MAC_REG_BBREGCTL, &amp;byvalue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byvalue &amp; B=
BREGCTL_DONE)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
@@ -1999,9 +1998,9 @@ bool BBbWriteEmbedded(struct vnt_private *priv,<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 byRevId=C2=A0 =C2=A0 =C2=A0- Revision ID<br>
- *=C2=A0 =C2=A0 =C2=A0 byRFType=C2=A0 =C2=A0 - RF type<br>
+ *=C2=A0 =C2=A0 =C2=A0 byrftype=C2=A0 =C2=A0 - RF type<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2009,95 +2008,95 @@ bool BBbWriteEmbedded(struct vnt_private *priv,<br>
=C2=A0 *<br>
=C2=A0 */<br>
<br>
-bool BBbVT3253Init(struct vnt_private *priv)<br>
+bool bbbvt3253init(struct vnt_private *priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0bool bResult =3D true;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bool bresult =3D true;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0 =C2=A0 =C2=A0 ii;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;PortOffset;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byRFType =3D priv-&gt;byRFType;<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byLocalID =3D priv-&gt;byLocalID;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwiobase =3D priv-&gt;portoffset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byrftype =3D priv-&gt;byrftype;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bylocalid =3D priv-&gt;bylocalid;=
<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byRFType =3D=3D RF_RFMD2959) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byLocalID &lt;=
=3D REV_ID_VT3253_A1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byrftype =3D=3D RF_RFMD2959) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (bylocalid &lt;=
=3D REV_ID_VT3253_A1) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253_INIT_FOR_RFMD; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(pri=
v,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(pri=
v,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BYVT3253=
INITTAB_RFMD[ii][0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BYVT3253=
INITTAB_RFMD[ii][1]);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_INIT_FOR_RFMD; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(pri=
v,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(pri=
v,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BYVT3253=
B0_RFMD[ii][0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BYVT3253=
B0_RFMD[ii][1]);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_AGC_FOR_RFMD2959; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(pri=
v,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B=
0_AGC4_RFMD2959[ii][<wbr>0],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B=
0_AGC4_RFMD2959[ii][<wbr>1]);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(pri=
v,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B=
0_AGC4_RFMD2959[ii][<wbr>0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B=
0_AGC4_RFMD2959[ii][<wbr>1]);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0vnsvoutportd(dwiobase + MAC_REG_ITRTMSET, 0x23);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0macvregbitson(dwiobase, MAC_REG_PAPEDELAY, BIT(0));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0=
] =3D 0x18;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1=
] =3D 0x0A;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[0] =3D -70;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[1] =3D -50;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[2] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[3] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if ((byRFType =3D=3D RF_AIROHA) || (byRF=
Type =3D=3D RF_AL2230S)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0=
] =3D 0x18;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1=
] =3D 0x0A;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[0] =3D -70;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[1] =3D -50;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[2] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[3] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if ((byrftype =3D=3D RF_AIROHA) || (byrf=
type =3D=3D RF_AL2230S)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][0],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][1])<wbr>;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][1])<wbr>;<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_AGC; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0], byVT3253B0_AGC=
[ii][1]);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0=
] =3D 0x1C;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1=
] =3D 0x10;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[0] =3D -70;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[1] =3D -48;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[2] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[3] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_UW2451) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC=
[ii][1]);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0=
] =3D 0x1C;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1=
] =3D 0x10;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[0] =3D -70;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[1] =3D -48;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[2] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[3] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_UW2451) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_INIT_FOR_UW2451; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][0],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][1]);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][1]);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_AGC; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][1]);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBa=
se + MAC_REG_ITRTMSET, 0x23);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoB=
ase, MAC_REG_PAPEDELAY, BIT(0));<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0=
] =3D 0x14;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1=
] =3D 0x0A;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[0] =3D -60;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[1] =3D -50;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[2] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[3] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_UW2452) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][1]);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb(dwioba=
se + MAC_REG_ITRTMSET, 0x23);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitson(dwiob=
ase, MAC_REG_PAPEDELAY, BIT(0));<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0=
] =3D 0x14;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1=
] =3D 0x0A;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[0] =3D -60;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[1] =3D -50;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[2] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[3] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_UW2452) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_INIT_FOR_UW2451; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][0],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][1]);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][1]);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init ANT B selec=
t,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* TX Config C=
R09 =3D 0x61-&gt;0x45,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x45-&gt;0x=
41(VC1/VC2 define, make the ANT_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult &amp;=3D =
bbbwriteembedded(dwiobase,<wbr>0x09,0x41);*/<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init ANT B selec=
t,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* RX Config C=
R10 =3D 0x28-&gt;0x2A,<br>
@@ -2105,101 +2104,100 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* make the AN=
T_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult &amp;=3D =
bbbwriteembedded(dwiobase,<wbr>0x0a,0x28);*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Select VC1/VC2, =
CR215 =3D 0x02-&gt;0x06 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BB=
bWriteEmbedded(priv, 0xd7, 0x06);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bb=
bwriteembedded(priv, 0xd7, 0x06);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{RobertYu:20050=
125, request by Jack */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BB=
bWriteEmbedded(priv, 0x90, 0x20);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BB=
bWriteEmbedded(priv, 0x97, 0xeb);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bb=
bwriteembedded(priv, 0x90, 0x20);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bb=
bwriteembedded(priv, 0x97, 0xeb);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{RobertYu:20050=
221, request by Jack */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BB=
bWriteEmbedded(priv, 0xa6, 0x00);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BB=
bWriteEmbedded(priv, 0xa8, 0x30);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bb=
bwriteembedded(priv, 0xa6, 0x00);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bb=
bwriteembedded(priv, 0xa8, 0x30);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BB=
bWriteEmbedded(priv, 0xb0, 0x58);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bb=
bwriteembedded(priv, 0xb0, 0x58);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_AGC; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0], byVT3253B0_AGC=
[ii][1]);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0=
] =3D 0x14;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1=
] =3D 0x0A;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[0] =3D -60;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[1] =3D -50;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[2] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[3] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC=
[ii][1]);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0=
] =3D 0x14;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1=
] =3D 0x0A;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[0] =3D -60;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[1] =3D -50;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[2] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[3] =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} RobertYu */<b=
r>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_VT3226) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_VT3226) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][0],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][1])<wbr>;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][1])<wbr>;<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_AGC; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0], byVT3253B0_AGC=
[ii][1]);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0=
] =3D 0x1C;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1=
] =3D 0x10;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[0] =3D -70;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[1] =3D -48;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[2] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[3] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC=
[ii][1]);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0=
] =3D 0x1C;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1=
] =3D 0x10;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[0] =3D -70;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[1] =3D -48;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[2] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[3] =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Fix VT3226 DFC s=
ystem timing issue */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvSetRFLE_LatchBa=
se(<wbr>dwIoBase);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACVSETRFLE_LATCHBA=
SE(<wbr>dwiobase);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{ RobertYu: 200=
50104 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_AIROHA7230) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_AIROHA7230) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][0],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][1])<wbr>;<b=
r>
-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][1])<wbr>;<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{ RobertYu:2005=
0223, request by JerryChung */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init ANT B selec=
t,TX Config CR09 =3D 0x61-&gt;0x45,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x45-&gt;0x=
41(VC1/VC2 define, make the ANT_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult &amp;=3D =
bbbwriteembedded(dwiobase,<wbr>0x09,0x41);*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init ANT B selec=
t,RX Config CR10 =3D 0x28-&gt;0x2A,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x2A-&gt;0x=
28(VC1/VC2 define, make the ANT_A, ANT_B inverted)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult &amp;=3D =
BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult &amp;=3D =
bbbwriteembedded(dwiobase,<wbr>0x0a,0x28);*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Select VC1/VC2, =
CR215 =3D 0x02-&gt;0x06 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BB=
bWriteEmbedded(priv, 0xd7, 0x06);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bb=
bwriteembedded(priv, 0xd7, 0x06);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &=
lt; CB_VT3253B0_AGC; ii++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0], byVT3253B0_AGC=
[ii][1]);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0=
] =3D 0x1C;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1=
] =3D 0x10;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3=
] =3D 0x0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[0] =3D -70;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[1] =3D -48;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[2] =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldBmThresh=
old[3] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC=
[ii][1]);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0=
] =3D 0x1C;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1=
] =3D 0x10;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3=
] =3D 0x0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[0] =3D -70;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[1] =3D -48;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[2] =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;ldbmthresh=
old[3] =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} RobertYu */<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* No VGA Table now=
 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;bUpdateBBV=
GA =3D false;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0=
] =3D 0x1C;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;bupdatebbv=
ga =3D false;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0=
] =3D 0x1C;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byLocalID &gt; REV_ID_VT3253_A1) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(pr=
iv, 0x04, 0x7F);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(pr=
iv, 0x0D, 0x01);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bylocalid &gt; REV_ID_VT3253_A1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(pr=
iv, 0x04, 0x7F);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(pr=
iv, 0x0D, 0x01);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return bResult;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return bresult;<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -2215,42 +2213,42 @@ bool BBbVT3253Init(struct vnt_private *priv)<br>
=C2=A0 *<br>
=C2=A0 */<br>
=C2=A0void<br>
-BBvSetShortSlotTime(struct vnt_private *priv)<br>
+bbvsetshortslottime(struct vnt_private *priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBRxConf =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBVGA =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbrxconf =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbvga =3D 0;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0A, &amp;byBBRxConf); /=
* CR10 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0A, &amp;bybbrxconf); /=
* CR10 */<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (priv-&gt;bShortSlotTime)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D=
 0xDF; /* 1101 1111 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (priv-&gt;bshortslottime)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D=
 0xDF; /* 1101 1111 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x2=
0; /* 0010 0000 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x2=
0; /* 0010 0000 */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* patch for 3253B0 Baseband with Cardbus modul=
e */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0xE7, &amp;byBBVGA);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byBBVGA =3D=3D priv-&gt;abyBBVGA[0])<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x2=
0; /* 0010 0000 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0xE7, &amp;bybbvga);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bybbvga =3D=3D priv-&gt;abybbvga[0])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x2=
0; /* 0010 0000 */<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR=
10 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR=
10 */<br>
=C2=A0}<br>
<br>
-void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)<b=
r>
+void bbvsetvgagainoffset(struct vnt_private *priv, unsigned char bydata)<b=
r>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBRxConf =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbrxconf =3D 0;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0xE7, byData);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0xE7, bydata);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0A, &amp;byBBRxConf); /=
* CR10 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0A, &amp;bybbrxconf); /=
* CR10 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* patch for 3253B0 Baseband with Cardbus modul=
e */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byData =3D=3D priv-&gt;abyBBVGA[0])<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x2=
0; /* 0010 0000 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (priv-&gt;bShortSlotTime)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D=
 0xDF; /* 1101 1111 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bydata =3D=3D priv-&gt;abybbvga[0])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x2=
0; /* 0010 0000 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (priv-&gt;bshortslottime)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D=
 0xDF; /* 1101 1111 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x2=
0; /* 0010 0000 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;byBBVGACurrent =3D byData;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR=
10 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x2=
0; /* 0010 0000 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;bybbvgacurrent =3D bydata;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR=
10 */<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -2258,7 +2256,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, un=
signed char byData)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2266,12 +2264,12 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, =
unsigned char byData)<br>
=C2=A0 *<br>
=C2=A0 */<br>
=C2=A0void<br>
-BBvSoftwareReset(struct vnt_private *priv)<br>
+bbvsoftwarereset(struct vnt_private *priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x50, 0x40);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x50, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x9C, 0x01);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x9C, 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x50, 0x40);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x50, 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x9C, 0x01);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x9C, 0);<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -2279,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private *priv)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2287,13 +2285,13 @@ BBvSoftwareReset(struct vnt_private *priv)<br>
=C2=A0 *<br>
=C2=A0 */<br>
=C2=A0void<br>
-BBvPowerSaveModeON(struct vnt_private *priv)<br>
+bbvpowersavemodeon(struct vnt_private *priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byOrgData;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byorgdata;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0D, &amp;byOrgData);<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0byOrgData |=3D BIT(0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, byOrgData);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0D, &amp;byorgdata);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0byorgdata |=3D BIT(0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, byorgdata);<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -2301,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
- *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address<br>
+ *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2309,13 +2307,13 @@ BBvPowerSaveModeON(struct vnt_private *priv)<br>
=C2=A0 *<br>
=C2=A0 */<br>
=C2=A0void<br>
-BBvPowerSaveModeOFF(struct vnt_private *priv)<br>
+bbvpowersavemodeoff(struct vnt_private *priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byOrgData;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byorgdata;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0D, &amp;byOrgData);<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0byOrgData &amp;=3D ~(BIT(0));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, byOrgData);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0D, &amp;byorgdata);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0byorgdata &amp;=3D ~(BIT(0));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, byorgdata);<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -2324,7 +2322,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 priv=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Devic=
e Structure<br>
- *=C2=A0 =C2=A0 =C2=A0 byAntennaMode=C2=A0 =C2=A0 - Antenna Mode<br>
+ *=C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE=C2=A0 =C2=A0 - Antenna Mode<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2333,22 +2331,22 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)<br>
=C2=A0 */<br>
<br>
=C2=A0void<br>
-BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)=
<br>
+bbvsettxantennamode(struct vnt_private *priv, unsigned char BYANTENNAMODE)=
<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBTxConf;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbtxconf;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x09, &amp;byBBTxConf); /=
* CR09 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byAntennaMode =3D=3D ANT_DIVERSITY) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x09, &amp;bybbtxconf); /=
* CR09 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (BYANTENNAMODE =3D=3D ANT_DIVERSITY) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* bit 1 is diversi=
ty */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf |=3D 0x0=
2;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_A) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf |=3D 0x0=
2;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_A) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* bit 2 is ANTSEL =
*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf &amp;=3D=
 0xF9; /* 1111 1001 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_B) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf &amp;=3D=
 0xFD; /* 1111 1101 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf |=3D 0x0=
4;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf &amp;=3D=
 0xF9; /* 1111 1001 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_B) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf &amp;=3D=
 0xFD; /* 1111 1101 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf |=3D 0x0=
4;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR=
09 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x09, bybbtxconf); /* CR=
09 */<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
@@ -2357,7 +2355,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigne=
d char byAntennaMode)<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 priv=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Devic=
e Structure<br>
- *=C2=A0 =C2=A0 =C2=A0 byAntennaMode=C2=A0 =C2=A0 - Antenna Mode<br>
+ *=C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE=C2=A0 =C2=A0 - Antenna Mode<br>
=C2=A0 *=C2=A0 Out:<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 none<br>
=C2=A0 *<br>
@@ -2366,25 +2364,25 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsig=
ned char byAntennaMode)<br>
=C2=A0 */<br>
<br>
=C2=A0void<br>
-BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)=
<br>
+bbvsetrxantennamode(struct vnt_private *priv, unsigned char BYANTENNAMODE)=
<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBRxConf;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbrxconf;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0A, &amp;byBBRxConf); /=
* CR10 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byAntennaMode =3D=3D ANT_DIVERSITY) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x0=
1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0A, &amp;bybbrxconf); /=
* CR10 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (BYANTENNAMODE =3D=3D ANT_DIVERSITY) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x0=
1;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_A) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D=
 0xFC; /* 1111 1100 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_B) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D=
 0xFE; /* 1111 1110 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x0=
2;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_A) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D=
 0xFC; /* 1111 1100 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_B) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D=
 0xFE; /* 1111 1110 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x0=
2;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR=
10 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR=
10 */<br>
=C2=A0}<br>
<br>
=C2=A0/*<br>
- * Description: BBvSetDeepSleep<br>
+ * Description: bbvsetdeepsleep<br>
=C2=A0 *<br>
=C2=A0 * Parameters:<br>
=C2=A0 *=C2=A0 In:<br>
@@ -2396,15 +2394,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv, unsig=
ned char byAntennaMode)<br>
=C2=A0 *<br>
=C2=A0 */<br>
=C2=A0void<br>
-BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)<br>
+bbvsetdeepsleep(struct vnt_private *priv, unsigned char bylocalid)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0C, 0x17); /* CR12 */<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, 0xB9); /* CR13 */<=
br>
=C2=A0}<br>
<br>
=C2=A0void<br>
-BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)<br>
+bbvexitdeepsleep(struct vnt_private *priv, unsigned char bylocalid)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0C, 0x00); /* CR12 */<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, 0x01); /* CR13 */<=
br>
=C2=A0}<br>
<span><font color=3D"#888888">--<br>
2.7.4</font></span></div></div></div></div></div></div>             <br></d=
iv>
------=_Part_1971_712409389.1475808680540--

------=_Part_1970_251862905.1475808680538--

