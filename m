X-GM-THRID: 6338411449271975936
X-Received: by 10.46.69.69 with SMTP id s66mr1190178lja.1.1475819285866;
        Thu, 06 Oct 2016 22:48:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.203.193 with SMTP id b184ls429077wmg.1.gmail; Thu, 06 Oct
 2016 22:48:05 -0700 (PDT)
X-Received: by 10.28.207.5 with SMTP id f5mr138609wmg.11.1475819285370;
        Thu, 06 Oct 2016 22:48:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w16si69714wmd.0.2016.10.06.22.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:48:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,454,1473112800"; 
   d="scan'208";a="195927147"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Oct 2016 07:48:03 +0200
Date: Fri, 7 Oct 2016 07:47:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: rvarsha016@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging:vt6655:Fix checkpatch
 issues.
In-Reply-To: <452c5458-c9c5-4a78-b153-956f34946aef@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1610070746070.3074@hadrien>
References: <f446eb36-0b26-4c2c-840b-fa12785b88f0@googlegroups.com> <452c5458-c9c5-4a78-b153-956f34946aef@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1461573421-1475819284=:3074"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1461573421-1475819284=:3074
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

There should also be a space after each : in the above subject line.

The subject and the commit message don't say much about what you have
done.  A fix could in general be done in many different ways.  Try to say
what change you have made and why it is beneficial, and say this as
concisely as possible.

julia

On Thu, 6 Oct 2016, rvarsha016@gmail.com wrote:

>
> This patch fixes checkpatch.pl issues.
> CamelCase issues solved and removed unnecessary lines.
>
> CHECK: Do not include the paragraph about writing to the Free Software
> Foundation's mailing address from the sample GPL notice. The FSF has changed
> addresses in the past, and may do so again. Linux already includes a copy of
> the GPL.
>
> CHECK: Avoid CamelCase
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c | 526
> +++++++++++++++++++-------------------
>  1 file changed, 262 insertions(+), 264 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.c
> b/drivers/staging/vt6655/baseband.c
> index 8798fdf..ef198c2 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -13,8 +13,7 @@
>   * GNU General Public License for more details.
>   *
>   * You should have received a copy of the GNU General Public License along
> - * with this program;if not, write to the Free Software Foundation, Inc.,
> - * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301USA.[bmXRV8U_rvsrPro4DPGFB69kd64mPUlaHL87vQtq_GAuJjcmUkNXeaKyEx7hvg1C5Tift0
> qXrd0-iJixautq_siUL9GltfUhIT6ggIHnlQ=w5000-h5000]
>
> - *
> + * with this program;
>   *
>   * File: baseband.c
>   *
> @@ -25,20 +24,20 @@
>   * Date: Aug.22, 2002
>   *
>   * Functions:
> - *      BBuGetFrameTime        - Calculate data frame transmitting time
> + *      BBUGETFRAMETIME        - Calculate data frame transmitting time
>   *      BBvCaculateParameter   - Caculate PhyLength, PhyService and Phy
> Signal
>   *                               parameter for baseband Tx
> - *      BBbReadEmbedded         - Embedded read baseband register via MAC
> - *      BBbWriteEmbedded        - Embedded write baseband register via MAC
> - *      BBbVT3253Init          - VIA VT3253 baseband chip init code
> + *      bbbreadembedded         - Embedded read baseband register via MAC
> + *      bbbwriteembedded        - Embedded write baseband register via MAC
> + *      bbbvt3253init          - VIA VT3253 baseband chip init code
>   *
>   * Revision History:
>   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
>   *      08-07-2003 Bryan YC Fan:  Add MAXIM2827/2825 and RFMD2959 support.
> - *      08-26-2003 Kyle Hsu    :  Modify BBuGetFrameTime() and
> + *      08-26-2003 Kyle Hsu    :  Modify BBUGETFRAMETIME() and
>   *                               BBvCalculateParameter().
>   *                                cancel the setting of MAC_REG_SOFTPWRCTL
> on
> - *                               BBbVT3253Init().
> + *                               bbbvt3253init().
>   *                                Add the comments.
>   *      09-01-2003 Bryan YC Fan:  RF & BB tables updated.
>   *                                Modified BBvLoopbackOn &
> BBvLoopbackOff().
> @@ -779,7 +778,7 @@ static const unsigned char
> BYVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = {
>  #define CB_VT3253B0_AGC_FOR_RFMD2959 195
>  /* For RFMD2959 */
>  static
> -unsigned char byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
> +unsigned char BYVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
>         {0xF0, 0x00},
>         {0xF1, 0x3E},
>         {0xF0, 0x80},
> @@ -980,7 +979,7 @@ unsigned char
> byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = {
>  #define CB_VT3253B0_INIT_FOR_AIROHA2230 256
>  /* For AIROHA */
>  static
> -unsigned char byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
> +unsigned char BYVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
>         {0x00, 0x31},
>         {0x01, 0x00},
>         {0x02, 0x00},
> @@ -1241,7 +1240,7 @@ unsigned char
> byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = {
>
>  #define CB_VT3253B0_INIT_FOR_UW2451 256
>  /* For UW2451 */
> -static unsigned char byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
> +static unsigned char BYVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
>         {0x00, 0x31},
>         {0x01, 0x00},
>         {0x02, 0x00},
> @@ -1502,7 +1501,7 @@ static unsigned char
> byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = {
>
>  #define CB_VT3253B0_AGC 193
>  /* For AIROHA */
> -static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
> +static unsigned char BYVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
>         {0xF0, 0x00},
>         {0xF1, 0x00},
>         {0xF0, 0x80},
> @@ -1698,7 +1697,7 @@ static unsigned char
> byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
>         {0xF0, 0x00},
>  };
>
> -static const unsigned short awcFrameTime[MAX_RATE] = {
> +static const unsigned short awcframetime[MAX_RATE] = {
>                 10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
>  };
>
> @@ -1708,57 +1707,57 @@ static const unsigned short awcFrameTime[MAX_RATE] =
> {
>   *
>   * Parameters:
>   *  In:
> - *      byPreambleType  - Preamble Type
> - *      byPktType        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB,
> PK_TYPE_11GA
> - *      cbFrameLength   - Baseband Type
> - *      wRate           - Tx Rate
> + *      bypreambletype  - Preamble Type
> + *      bypkttype        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB,
> PK_TYPE_11GA
> + *      cbframelength   - Baseband Type
> + *      wrate           - Tx Rate
>   *  Out:
>   *
>   * Return Value: FrameTime
>   *
>   */
>  unsigned int
> -BBuGetFrameTime(
> -       unsigned char byPreambleType,
> -       unsigned char byPktType,
> -       unsigned int cbFrameLength,
> -       unsigned short wRate
> +BBUGETFRAMETIME(
> +       unsigned char bypreambletype,
> +       unsigned char bypkttype,
> +       unsigned int cbframelength,
> +       unsigned short wrate
>  )
>  {
> -       unsigned int uFrameTime;
> -       unsigned int uPreamble;
> -       unsigned int uTmp;
> -       unsigned int uRateIdx = (unsigned int)wRate;
> -       unsigned int uRate = 0;
> +       unsigned int uframetime;
> +       unsigned int upreamble;
> +       unsigned int utmp;
> +       unsigned int urateidx = (unsigned int)wrate;
> +       unsigned int urate = 0;
>
> -       if (uRateIdx > RATE_54M)
> +       if (urateidx > RATE_54M)
>                 return 0;
>
> -       uRate = (unsigned int)awcFrameTime[uRateIdx];
> +       urate = (unsigned int)awcframetime[urateidx];
>
> -       if (uRateIdx <= 3) {          /* CCK mode */
> -               if (byPreambleType == 1) /* Short */
> -                       uPreamble = 96;
> +       if (urateidx <= 3) {          /* CCK mode */
> +               if (bypreambletype == 1) /* Short */
> +                       upreamble = 96;
>                 else
> -                       uPreamble = 192;
> +                       upreamble = 192;
>
> -               uFrameTime = (cbFrameLength * 80) / uRate;  /* ????? */
> -               uTmp = (uFrameTime * uRate) / 80;
> -               if (cbFrameLength != uTmp)
> -                       uFrameTime++;
> +               uframetime = (cbframelength * 80) / urate;  /* ????? */
> +               utmp = (uframetime * urate) / 80;
> +               if (cbframelength != utmp)
> +                       uframetime++;
>
> -               return uPreamble + uFrameTime;
> +               return upreamble + uframetime;
>         }
> -       uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* ???????? */
> -       uTmp = ((uFrameTime * uRate) - 22) / 8;
> -       if (cbFrameLength != uTmp)
> -               uFrameTime++;
> +       uframetime = (cbframelength * 8 + 22) / urate; /* ???????? */
> +       utmp = ((uframetime * urate) - 22) / 8;
> +       if (cbframelength != utmp)
> +               uframetime++;
>
> -       uFrameTime = uFrameTime * 4;    /* ??????? */
> -       if (byPktType != PK_TYPE_11A)
> -               uFrameTime += 6;     /* ?????? */
> +       uframetime = uframetime * 4;    /* ??????? */
> +       if (bypkttype != PK_TYPE_11A)
> +               uframetime += 6;     /* ?????? */
>
> -       return 20 + uFrameTime; /* ?????? */
> +       return 20 + uframetime; /* ?????? */
>  }
>
>  /*
> @@ -1785,7 +1784,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32
> frame_length,
>         u32 count = 0;
>         u32 tmp;
>         int ext_bit;
> -       u8 preamble_type = priv->byPreambleType;
> +       u8 preamble_type = priv->bypreambletype;
>
>         bit_count = frame_length * 8;
>         ext_bit = false;
> @@ -1915,35 +1914,35 @@ void vnt_get_phy_field(struct vnt_private *priv, u32
> frame_length,
>   *
>   * Parameters:
>   *  In:
> - *      dwIoBase    - I/O base address
> - *      byBBAddr    - address of register in Baseband
> + *      dwiobase    - I/O base address
> + *      bybbaddr    - address of register in Baseband
>   *  Out:
> - *      pbyData     - data read
> + *      pbydata     - data read
>   *
>   * Return Value: true if succeeded; false if failed.
>   *
>   */
> -bool BBbReadEmbedded(struct vnt_private *priv,
> -                    unsigned char byBBAddr, unsigned char *pbyData)
> +bool bbbreadembedded(struct vnt_private *priv,
> +                    unsigned char bybbaddr, unsigned char *pbydata)
>  {
> -       void __iomem *dwIoBase = priv->PortOffset;
> +       void __iomem *dwiobase = priv->portoffset;
>         unsigned short ww;
> -       unsigned char byValue;
> +       unsigned char byvalue;
>
>         /* BB reg offset */
> -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
> +       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr);
>
>         /* turn on REGR */
> -       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
> +       macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
>         /* W_MAX_TIMEOUT is the timeout period */
>         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
> -               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
> -               if (byValue & BBREGCTL_DONE)
> +               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, &byvalue);
> +               if (byvalue & BBREGCTL_DONE)
>                         break;
>         }
>
>         /* get BB data */
> -       VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData);
> +       vnsvinportb(dwiobase + MAC_REG_BBREGDATA, pbydata);
>
>         if (ww == W_MAX_TIMEOUT) {
>                 pr_debug(" DBG_PORT80(0x30)\n");
> @@ -1957,33 +1956,33 @@ bool BBbReadEmbedded(struct vnt_private *priv,
>   *
>   * Parameters:
>   *  In:
> - *      dwIoBase    - I/O base address
> - *      byBBAddr    - address of register in Baseband
> - *      byData      - data to write
> + *      dwiobase    - I/O base address
> + *      bybbaddr    - address of register in Baseband
> + *      bydata      - data to write
>   *  Out:
>   *      none
>   *
>   * Return Value: true if succeeded; false if failed.
>   *
>   */
> -bool BBbWriteEmbedded(struct vnt_private *priv,
> -                     unsigned char byBBAddr, unsigned char byData)
> +bool bbbwriteembedded(struct vnt_private *priv,
> +                     unsigned char bybbaddr, unsigned char bydata)
>  {
> -       void __iomem *dwIoBase = priv->PortOffset;
> +       void __iomem *dwiobase = priv->portoffset;
>         unsigned short ww;
> -       unsigned char byValue;
> +       unsigned char byvalue;
>
>         /* BB reg offset */
> -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
> +       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr);
>         /* set BB data */
> -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData);
> +       vnsvoutportb(dwiobase + MAC_REG_BBREGDATA, bydata);
>
>         /* turn on BBREGCTL_REGW */
> -       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
> +       macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
>         /* W_MAX_TIMEOUT is the timeout period */
>         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
> -               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue);
> -               if (byValue & BBREGCTL_DONE)
> +               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, &byvalue);
> +               if (byvalue & BBREGCTL_DONE)
>                         break;
>         }
>
> @@ -1999,9 +1998,9 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
>   *
>   * Parameters:
>   *  In:
> - *      dwIoBase    - I/O base address
> + *      dwiobase    - I/O base address
>   *      byRevId     - Revision ID
> - *      byRFType    - RF type
> + *      byrftype    - RF type
>   *  Out:
>   *      none
>   *
> @@ -2009,95 +2008,95 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
>   *
>   */
>
> -bool BBbVT3253Init(struct vnt_private *priv)
> +bool bbbvt3253init(struct vnt_private *priv)
>  {
> -       bool bResult = true;
> +       bool bresult = true;
>         int        ii;
> -       void __iomem *dwIoBase = priv->PortOffset;
> -       unsigned char byRFType = priv->byRFType;
> -       unsigned char byLocalID = priv->byLocalID;
> +       void __iomem *dwiobase = priv->portoffset;
> +       unsigned char byrftype = priv->byrftype;
> +       unsigned char bylocalid = priv->bylocalid;
>
> -       if (byRFType == RF_RFMD2959) {
> -               if (byLocalID <= REV_ID_VT3253_A1) {
> +       if (byrftype == RF_RFMD2959) {
> +               if (bylocalid <= REV_ID_VT3253_A1) {
>                         for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
> -                               bResult &= BBbWriteEmbedded(priv,
> +                               bresult &= bbbwriteembedded(priv,
>                                         BYVT3253INITTAB_RFMD[ii][0],
>                                         BYVT3253INITTAB_RFMD[ii][1]);
>
>                 } else {
>                         for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
> -                               bResult &= BBbWriteEmbedded(priv,
> +                               bresult &= bbbwriteembedded(priv,
>                                         BYVT3253B0_RFMD[ii][0],
>                                         BYVT3253B0_RFMD[ii][1]);
>
>                         for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959;
> ii++)
> -                               bResult &= BBbWriteEmbedded(priv,
> -                                       byVT3253B0_AGC4_RFMD2959[ii][0],
> -                                       byVT3253B0_AGC4_RFMD2959[ii][1]);
> +                               bresult &= bbbwriteembedded(priv,
> +                                       BYVT3253B0_AGC4_RFMD2959[ii][0],
> +                                       BYVT3253B0_AGC4_RFMD2959[ii][1]);
>
> -                       VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
> -                       MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
> +                       vnsvoutportd(dwiobase + MAC_REG_ITRTMSET, 0x23);
> +                       macvregbitson(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
>                 }
> -               priv->abyBBVGA[0] = 0x18;
> -               priv->abyBBVGA[1] = 0x0A;
> -               priv->abyBBVGA[2] = 0x0;
> -               priv->abyBBVGA[3] = 0x0;
> -               priv->ldBmThreshold[0] = -70;
> -               priv->ldBmThreshold[1] = -50;
> -               priv->ldBmThreshold[2] = 0;
> -               priv->ldBmThreshold[3] = 0;
> -       } else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) {
> +               priv->abybbvga[0] = 0x18;
> +               priv->abybbvga[1] = 0x0A;
> +               priv->abybbvga[2] = 0x0;
> +               priv->abybbvga[3] = 0x0;
> +               priv->ldbmthreshold[0] = -70;
> +               priv->ldbmthreshold[1] = -50;
> +               priv->ldbmthreshold[2] = 0;
> +               priv->ldbmthreshold[3] = 0;
> +       } else if ((byrftype == RF_AIROHA) || (byrftype == RF_AL2230S)) {
>                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AIROHA2230[ii][0],
> -                               byVT3253B0_AIROHA2230[ii][1]);
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AIROHA2230[ii][0],
> +                               BYVT3253B0_AIROHA2230[ii][1]);
>
>                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AGC[ii][0],
> byVT3253B0_AGC[ii][1]);
> -
> -               priv->abyBBVGA[0] = 0x1C;
> -               priv->abyBBVGA[1] = 0x10;
> -               priv->abyBBVGA[2] = 0x0;
> -               priv->abyBBVGA[3] = 0x0;
> -               priv->ldBmThreshold[0] = -70;
> -               priv->ldBmThreshold[1] = -48;
> -               priv->ldBmThreshold[2] = 0;
> -               priv->ldBmThreshold[3] = 0;
> -       } else if (byRFType == RF_UW2451) {
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AGC[ii][0],
> BYVT3253B0_AGC[ii][1]);
> +
> +               priv->abybbvga[0] = 0x1C;
> +               priv->abybbvga[1] = 0x10;
> +               priv->abybbvga[2] = 0x0;
> +               priv->abybbvga[3] = 0x0;
> +               priv->ldbmthreshold[0] = -70;
> +               priv->ldbmthreshold[1] = -48;
> +               priv->ldbmthreshold[2] = 0;
> +               priv->ldbmthreshold[3] = 0;
> +       } else if (byrftype == RF_UW2451) {
>                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_UW2451[ii][0],
> -                               byVT3253B0_UW2451[ii][1]);
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_UW2451[ii][0],
> +                               BYVT3253B0_UW2451[ii][1]);
>
>                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AGC[ii][0],
> -                               byVT3253B0_AGC[ii][1]);
> -
> -               VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
> -               MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
> -
> -               priv->abyBBVGA[0] = 0x14;
> -               priv->abyBBVGA[1] = 0x0A;
> -               priv->abyBBVGA[2] = 0x0;
> -               priv->abyBBVGA[3] = 0x0;
> -               priv->ldBmThreshold[0] = -60;
> -               priv->ldBmThreshold[1] = -50;
> -               priv->ldBmThreshold[2] = 0;
> -               priv->ldBmThreshold[3] = 0;
> -       } else if (byRFType == RF_UW2452) {
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AGC[ii][0],
> +                               BYVT3253B0_AGC[ii][1]);
> +
> +               vnsvoutportb(dwiobase + MAC_REG_ITRTMSET, 0x23);
> +               macvregbitson(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
> +
> +               priv->abybbvga[0] = 0x14;
> +               priv->abybbvga[1] = 0x0A;
> +               priv->abybbvga[2] = 0x0;
> +               priv->abybbvga[3] = 0x0;
> +               priv->ldbmthreshold[0] = -60;
> +               priv->ldbmthreshold[1] = -50;
> +               priv->ldbmthreshold[2] = 0;
> +               priv->ldbmthreshold[3] = 0;
> +       } else if (byrftype == RF_UW2452) {
>                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_UW2451[ii][0],
> -                               byVT3253B0_UW2451[ii][1]);
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_UW2451[ii][0],
> +                               BYVT3253B0_UW2451[ii][1]);
>
>                 /* Init ANT B select,
>                  * TX Config CR09 = 0x61->0x45,
>                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B
> inverted)
>                  */
>
> -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
> +               /*bresult &= bbbwriteembedded(dwiobase,0x09,0x41);*/
>
>                 /* Init ANT B select,
>                  * RX Config CR10 = 0x28->0x2A,
> @@ -2105,101 +2104,100 @@ bool BBbVT3253Init(struct vnt_private *priv)
>                  * make the ANT_A, ANT_B inverted)
>                  */
>
> -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
> +               /*bresult &= bbbwriteembedded(dwiobase,0x0a,0x28);*/
>                 /* Select VC1/VC2, CR215 = 0x02->0x06 */
> -               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
> +               bresult &= bbbwriteembedded(priv, 0xd7, 0x06);
>
>                 /* {{RobertYu:20050125, request by Jack */
> -               bResult &= BBbWriteEmbedded(priv, 0x90, 0x20);
> -               bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb);
> +               bresult &= bbbwriteembedded(priv, 0x90, 0x20);
> +               bresult &= bbbwriteembedded(priv, 0x97, 0xeb);
>                 /* }} */
>
>                 /* {{RobertYu:20050221, request by Jack */
> -               bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00);
> -               bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30);
> +               bresult &= bbbwriteembedded(priv, 0xa6, 0x00);
> +               bresult &= bbbwriteembedded(priv, 0xa8, 0x30);
>                 /* }} */
> -               bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58);
> +               bresult &= bbbwriteembedded(priv, 0xb0, 0x58);
>
>                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AGC[ii][0],
> byVT3253B0_AGC[ii][1]);
> -
> -               priv->abyBBVGA[0] = 0x14;
> -               priv->abyBBVGA[1] = 0x0A;
> -               priv->abyBBVGA[2] = 0x0;
> -               priv->abyBBVGA[3] = 0x0;
> -               priv->ldBmThreshold[0] = -60;
> -               priv->ldBmThreshold[1] = -50;
> -               priv->ldBmThreshold[2] = 0;
> -               priv->ldBmThreshold[3] = 0;
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AGC[ii][0],
> BYVT3253B0_AGC[ii][1]);
> +
> +               priv->abybbvga[0] = 0x14;
> +               priv->abybbvga[1] = 0x0A;
> +               priv->abybbvga[2] = 0x0;
> +               priv->abybbvga[3] = 0x0;
> +               priv->ldbmthreshold[0] = -60;
> +               priv->ldbmthreshold[1] = -50;
> +               priv->ldbmthreshold[2] = 0;
> +               priv->ldbmthreshold[3] = 0;
>                 /* }} RobertYu */
>
> -       } else if (byRFType == RF_VT3226) {
> +       } else if (byrftype == RF_VT3226) {
>                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AIROHA2230[ii][0],
> -                               byVT3253B0_AIROHA2230[ii][1]);
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AIROHA2230[ii][0],
> +                               BYVT3253B0_AIROHA2230[ii][1]);
>
>                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AGC[ii][0],
> byVT3253B0_AGC[ii][1]);
> -
> -               priv->abyBBVGA[0] = 0x1C;
> -               priv->abyBBVGA[1] = 0x10;
> -               priv->abyBBVGA[2] = 0x0;
> -               priv->abyBBVGA[3] = 0x0;
> -               priv->ldBmThreshold[0] = -70;
> -               priv->ldBmThreshold[1] = -48;
> -               priv->ldBmThreshold[2] = 0;
> -               priv->ldBmThreshold[3] = 0;
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AGC[ii][0],
> BYVT3253B0_AGC[ii][1]);
> +
> +               priv->abybbvga[0] = 0x1C;
> +               priv->abybbvga[1] = 0x10;
> +               priv->abybbvga[2] = 0x0;
> +               priv->abybbvga[3] = 0x0;
> +               priv->ldbmthreshold[0] = -70;
> +               priv->ldbmthreshold[1] = -48;
> +               priv->ldbmthreshold[2] = 0;
> +               priv->ldbmthreshold[3] = 0;
>                 /* Fix VT3226 DFC system timing issue */
> -               MACvSetRFLE_LatchBase(dwIoBase);
> +               MACVSETRFLE_LATCHBASE(dwiobase);
>                 /* {{ RobertYu: 20050104 */
> -       } else if (byRFType == RF_AIROHA7230) {
> +       } else if (byrftype == RF_AIROHA7230) {
>                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AIROHA2230[ii][0],
> -                               byVT3253B0_AIROHA2230[ii][1]);
> -
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AIROHA2230[ii][0],
> +                               BYVT3253B0_AIROHA2230[ii][1]);
>
>                 /* {{ RobertYu:20050223, request by JerryChung */
>                 /* Init ANT B select,TX Config CR09 = 0x61->0x45,
>                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B
> inverted)
>                  */
> -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
> +               /*bresult &= bbbwriteembedded(dwiobase,0x09,0x41);*/
>                 /* Init ANT B select,RX Config CR10 = 0x28->0x2A,
>                  * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B
> inverted)
>                  */
> -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/
> +               /*bresult &= bbbwriteembedded(dwiobase,0x0a,0x28);*/
>                 /* Select VC1/VC2, CR215 = 0x02->0x06 */
> -               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
> +               bresult &= bbbwriteembedded(priv, 0xd7, 0x06);
>                 /* }} */
>
>                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -                       bResult &= BBbWriteEmbedded(priv,
> -                               byVT3253B0_AGC[ii][0],
> byVT3253B0_AGC[ii][1]);
> -
> -               priv->abyBBVGA[0] = 0x1C;
> -               priv->abyBBVGA[1] = 0x10;
> -               priv->abyBBVGA[2] = 0x0;
> -               priv->abyBBVGA[3] = 0x0;
> -               priv->ldBmThreshold[0] = -70;
> -               priv->ldBmThreshold[1] = -48;
> -               priv->ldBmThreshold[2] = 0;
> -               priv->ldBmThreshold[3] = 0;
> +                       bresult &= bbbwriteembedded(priv,
> +                               BYVT3253B0_AGC[ii][0],
> BYVT3253B0_AGC[ii][1]);
> +
> +               priv->abybbvga[0] = 0x1C;
> +               priv->abybbvga[1] = 0x10;
> +               priv->abybbvga[2] = 0x0;
> +               priv->abybbvga[3] = 0x0;
> +               priv->ldbmthreshold[0] = -70;
> +               priv->ldbmthreshold[1] = -48;
> +               priv->ldbmthreshold[2] = 0;
> +               priv->ldbmthreshold[3] = 0;
>                 /* }} RobertYu */
>         } else {
>                 /* No VGA Table now */
> -               priv->bUpdateBBVGA = false;
> -               priv->abyBBVGA[0] = 0x1C;
> +               priv->bupdatebbvga = false;
> +               priv->abybbvga[0] = 0x1C;
>         }
>
> -       if (byLocalID > REV_ID_VT3253_A1) {
> -               BBbWriteEmbedded(priv, 0x04, 0x7F);
> -               BBbWriteEmbedded(priv, 0x0D, 0x01);
> +       if (bylocalid > REV_ID_VT3253_A1) {
> +               bbbwriteembedded(priv, 0x04, 0x7F);
> +               bbbwriteembedded(priv, 0x0D, 0x01);
>         }
>
> -       return bResult;
> +       return bresult;
>  }
>
>  /*
> @@ -2215,42 +2213,42 @@ bool BBbVT3253Init(struct vnt_private *priv)
>   *
>   */
>  void
> -BBvSetShortSlotTime(struct vnt_private *priv)
> +bbvsetshortslottime(struct vnt_private *priv)
>  {
> -       unsigned char byBBRxConf = 0;
> -       unsigned char byBBVGA = 0;
> +       unsigned char bybbrxconf = 0;
> +       unsigned char bybbvga = 0;
>
> -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
> +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */
>
> -       if (priv->bShortSlotTime)
> -               byBBRxConf &= 0xDF; /* 1101 1111 */
> +       if (priv->bshortslottime)
> +               bybbrxconf &= 0xDF; /* 1101 1111 */
>         else
> -               byBBRxConf |= 0x20; /* 0010 0000 */
> +               bybbrxconf |= 0x20; /* 0010 0000 */
>
>         /* patch for 3253B0 Baseband with Cardbus module */
> -       BBbReadEmbedded(priv, 0xE7, &byBBVGA);
> -       if (byBBVGA == priv->abyBBVGA[0])
> -               byBBRxConf |= 0x20; /* 0010 0000 */
> +       bbbreadembedded(priv, 0xE7, &bybbvga);
> +       if (bybbvga == priv->abybbvga[0])
> +               bybbrxconf |= 0x20; /* 0010 0000 */
>
> -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
> +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */
>  }
>
> -void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
> +void bbvsetvgagainoffset(struct vnt_private *priv, unsigned char bydata)
>  {
> -       unsigned char byBBRxConf = 0;
> +       unsigned char bybbrxconf = 0;
>
> -       BBbWriteEmbedded(priv, 0xE7, byData);
> +       bbbwriteembedded(priv, 0xE7, bydata);
>
> -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
> +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */
>         /* patch for 3253B0 Baseband with Cardbus module */
> -       if (byData == priv->abyBBVGA[0])
> -               byBBRxConf |= 0x20; /* 0010 0000 */
> -       else if (priv->bShortSlotTime)
> -               byBBRxConf &= 0xDF; /* 1101 1111 */
> +       if (bydata == priv->abybbvga[0])
> +               bybbrxconf |= 0x20; /* 0010 0000 */
> +       else if (priv->bshortslottime)
> +               bybbrxconf &= 0xDF; /* 1101 1111 */
>         else
> -               byBBRxConf |= 0x20; /* 0010 0000 */
> -       priv->byBBVGACurrent = byData;
> -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
> +               bybbrxconf |= 0x20; /* 0010 0000 */
> +       priv->bybbvgacurrent = bydata;
> +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */
>  }
>
>  /*
> @@ -2258,7 +2256,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv,
> unsigned char byData)
>   *
>   * Parameters:
>   *  In:
> - *      dwIoBase    - I/O base address
> + *      dwiobase    - I/O base address
>   *  Out:
>   *      none
>   *
> @@ -2266,12 +2264,12 @@ void BBvSetVGAGainOffset(struct vnt_private *priv,
> unsigned char byData)
>   *
>   */
>  void
> -BBvSoftwareReset(struct vnt_private *priv)
> +bbvsoftwarereset(struct vnt_private *priv)
>  {
> -       BBbWriteEmbedded(priv, 0x50, 0x40);
> -       BBbWriteEmbedded(priv, 0x50, 0);
> -       BBbWriteEmbedded(priv, 0x9C, 0x01);
> -       BBbWriteEmbedded(priv, 0x9C, 0);
> +       bbbwriteembedded(priv, 0x50, 0x40);
> +       bbbwriteembedded(priv, 0x50, 0);
> +       bbbwriteembedded(priv, 0x9C, 0x01);
> +       bbbwriteembedded(priv, 0x9C, 0);
>  }
>
>  /*
> @@ -2279,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private *priv)
>   *
>   * Parameters:
>   *  In:
> - *      dwIoBase    - I/O base address
> + *      dwiobase    - I/O base address
>   *  Out:
>   *      none
>   *
> @@ -2287,13 +2285,13 @@ BBvSoftwareReset(struct vnt_private *priv)
>   *
>   */
>  void
> -BBvPowerSaveModeON(struct vnt_private *priv)
> +bbvpowersavemodeon(struct vnt_private *priv)
>  {
> -       unsigned char byOrgData;
> +       unsigned char byorgdata;
>
> -       BBbReadEmbedded(priv, 0x0D, &byOrgData);
> -       byOrgData |= BIT(0);
> -       BBbWriteEmbedded(priv, 0x0D, byOrgData);
> +       bbbreadembedded(priv, 0x0D, &byorgdata);
> +       byorgdata |= BIT(0);
> +       bbbwriteembedded(priv, 0x0D, byorgdata);
>  }
>
>  /*
> @@ -2301,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
>   *
>   * Parameters:
>   *  In:
> - *      dwIoBase    - I/O base address
> + *      dwiobase    - I/O base address
>   *  Out:
>   *      none
>   *
> @@ -2309,13 +2307,13 @@ BBvPowerSaveModeON(struct vnt_private *priv)
>   *
>   */
>  void
> -BBvPowerSaveModeOFF(struct vnt_private *priv)
> +bbvpowersavemodeoff(struct vnt_private *priv)
>  {
> -       unsigned char byOrgData;
> +       unsigned char byorgdata;
>
> -       BBbReadEmbedded(priv, 0x0D, &byOrgData);
> -       byOrgData &= ~(BIT(0));
> -       BBbWriteEmbedded(priv, 0x0D, byOrgData);
> +       bbbreadembedded(priv, 0x0D, &byorgdata);
> +       byorgdata &= ~(BIT(0));
> +       bbbwriteembedded(priv, 0x0D, byorgdata);
>  }
>
>  /*
> @@ -2324,7 +2322,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
>   * Parameters:
>   *  In:
>   *      priv          - Device Structure
> - *      byAntennaMode    - Antenna Mode
> + *      BYANTENNAMODE    - Antenna Mode
>   *  Out:
>   *      none
>   *
> @@ -2333,22 +2331,22 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
>   */
>
>  void
> -BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
> +bbvsettxantennamode(struct vnt_private *priv, unsigned char BYANTENNAMODE)
>  {
> -       unsigned char byBBTxConf;
> +       unsigned char bybbtxconf;
>
> -       BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */
> -       if (byAntennaMode == ANT_DIVERSITY) {
> +       bbbreadembedded(priv, 0x09, &bybbtxconf); /* CR09 */
> +       if (BYANTENNAMODE == ANT_DIVERSITY) {
>                 /* bit 1 is diversity */
> -               byBBTxConf |= 0x02;
> -       } else if (byAntennaMode == ANT_A) {
> +               bybbtxconf |= 0x02;
> +       } else if (BYANTENNAMODE == ANT_A) {
>                 /* bit 2 is ANTSEL */
> -               byBBTxConf &= 0xF9; /* 1111 1001 */
> -       } else if (byAntennaMode == ANT_B) {
> -               byBBTxConf &= 0xFD; /* 1111 1101 */
> -               byBBTxConf |= 0x04;
> +               bybbtxconf &= 0xF9; /* 1111 1001 */
> +       } else if (BYANTENNAMODE == ANT_B) {
> +               bybbtxconf &= 0xFD; /* 1111 1101 */
> +               bybbtxconf |= 0x04;
>         }
> -       BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR09 */
> +       bbbwriteembedded(priv, 0x09, bybbtxconf); /* CR09 */
>  }
>
>  /*
> @@ -2357,7 +2355,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned
> char byAntennaMode)
>   * Parameters:
>   *  In:
>   *      priv          - Device Structure
> - *      byAntennaMode    - Antenna Mode
> + *      BYANTENNAMODE    - Antenna Mode
>   *  Out:
>   *      none
>   *
> @@ -2366,25 +2364,25 @@ BBvSetTxAntennaMode(struct vnt_private *priv,
> unsigned char byAntennaMode)
>   */
>
>  void
> -BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
> +bbvsetrxantennamode(struct vnt_private *priv, unsigned char BYANTENNAMODE)
>  {
> -       unsigned char byBBRxConf;
> +       unsigned char bybbrxconf;
>
> -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
> -       if (byAntennaMode == ANT_DIVERSITY) {
> -               byBBRxConf |= 0x01;
> +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */
> +       if (BYANTENNAMODE == ANT_DIVERSITY) {
> +               bybbrxconf |= 0x01;
>
> -       } else if (byAntennaMode == ANT_A) {
> -               byBBRxConf &= 0xFC; /* 1111 1100 */
> -       } else if (byAntennaMode == ANT_B) {
> -               byBBRxConf &= 0xFE; /* 1111 1110 */
> -               byBBRxConf |= 0x02;
> +       } else if (BYANTENNAMODE == ANT_A) {
> +               bybbrxconf &= 0xFC; /* 1111 1100 */
> +       } else if (BYANTENNAMODE == ANT_B) {
> +               bybbrxconf &= 0xFE; /* 1111 1110 */
> +               bybbrxconf |= 0x02;
>         }
> -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
> +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */
>  }
>
>  /*
> - * Description: BBvSetDeepSleep
> + * Description: bbvsetdeepsleep
>   *
>   * Parameters:
>   *  In:
> @@ -2396,15 +2394,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv,
> unsigned char byAntennaMode)
>   *
>   */
>  void
> -BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
> +bbvsetdeepsleep(struct vnt_private *priv, unsigned char bylocalid)
>  {
> -       BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */
> -       BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */
> +       bbbwriteembedded(priv, 0x0C, 0x17); /* CR12 */
> +       bbbwriteembedded(priv, 0x0D, 0xB9); /* CR13 */
>  }
>
>  void
> -BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
> +bbvexitdeepsleep(struct vnt_private *priv, unsigned char bylocalid)
>  {
> -       BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */
> -       BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */
> +       bbbwriteembedded(priv, 0x0C, 0x00); /* CR12 */
> +       bbbwriteembedded(priv, 0x0D, 0x01); /* CR13 */
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/452c5458-c9c5-4a78-b153-
> 956f34946aef%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1461573421-1475819284=:3074--

