X-GM-THRID: 6338411449271975936
Date: Fri, 7 Oct 2016 23:57:55 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <48b1a388-dae4-4f4b-8ead-c89ef0d7ca0c@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610070746070.3074@hadrien>
References: <f446eb36-0b26-4c2c-840b-fa12785b88f0@googlegroups.com> <452c5458-c9c5-4a78-b153-956f34946aef@googlegroups.com>
 <alpine.DEB.2.10.1610070746070.3074@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging:vt6655:Fix checkpatch
 issues.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_185_408192470.1475909875656"
X-Google-Token: EPOx4r8F9HZiujpVlRs0
X-Google-IP: 103.62.68.129

------=_Part_185_408192470.1475909875656
Content-Type: multipart/alternative; 
	boundary="----=_Part_186_1309537140.1475909875658"

------=_Part_186_1309537140.1475909875658
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, October 7, 2016 at 11:18:05 AM UTC+5:30, Julia Lawall wrote:
>
> There should also be a space after each : in the above subject line. 
>
> The subject and the commit message don't say much about what you have 
> done. 

    
    In the subject I have not mentioned much,since I made multiple 
changes.Also I have stated the errors and warnings.  
 

>  A fix could in general be done in many different ways.  Try to say 
> what change you have made and why it is beneficial, and say this as 
> concisely as possible.

    
      I will implement these in the next patch.


>
> julia 
>
> On Thu, 6 Oct 2016, rvars...@gmail.com <javascript:> wrote: 
>
> > 
> > This patch fixes checkpatch.pl issues. 
> > CamelCase issues solved and removed unnecessary lines. 
> > 
> > CHECK: Do not include the paragraph about writing to the Free Software 
> > Foundation's mailing address from the sample GPL notice. The FSF has 
> changed 
> > addresses in the past, and may do so again. Linux already includes a 
> copy of 
> > the GPL. 
> > 
> > CHECK: Avoid CamelCase 
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/vt6655/baseband.c | 526 
> > +++++++++++++++++++------------------- 
> >  1 file changed, 262 insertions(+), 264 deletions(-) 
> > 
> > diff --git a/drivers/staging/vt6655/baseband.c 
> > b/drivers/staging/vt6655/baseband.c 
> > index 8798fdf..ef198c2 100644 
> > --- a/drivers/staging/vt6655/baseband.c 
> > +++ b/drivers/staging/vt6655/baseband.c 
> > @@ -13,8 +13,7 @@ 
> >   * GNU General Public License for more details. 
> >   * 
> >   * You should have received a copy of the GNU General Public License 
> along 
> > - * with this program;if not, write to the Free Software Foundation, 
> Inc., 
> > - * 51 Franklin Street, Fifth Floor, Boston, MA 
> 02110-1301USA.[bmXRV8U_rvsrPro4DPGFB69kd64mPUlaHL87vQtq_GAuJjcmUkNXeaKyEx7hvg1C5Tift0 
>
> > qXrd0-iJixautq_siUL9GltfUhIT6ggIHnlQ=w5000-h5000] 
> > 
> > - * 
> > + * with this program; 
> >   * 
> >   * File: baseband.c 
> >   * 
> > @@ -25,20 +24,20 @@ 
> >   * Date: Aug.22, 2002 
> >   * 
> >   * Functions: 
> > - *      BBuGetFrameTime        - Calculate data frame transmitting time 
> > + *      BBUGETFRAMETIME        - Calculate data frame transmitting time 
> >   *      BBvCaculateParameter   - Caculate PhyLength, PhyService and Phy 
> > Signal 
> >   *                               parameter for baseband Tx 
> > - *      BBbReadEmbedded         - Embedded read baseband register via 
> MAC 
> > - *      BBbWriteEmbedded        - Embedded write baseband register via 
> MAC 
> > - *      BBbVT3253Init          - VIA VT3253 baseband chip init code 
> > + *      bbbreadembedded         - Embedded read baseband register via 
> MAC 
> > + *      bbbwriteembedded        - Embedded write baseband register via 
> MAC 
> > + *      bbbvt3253init          - VIA VT3253 baseband chip init code 
> >   * 
> >   * Revision History: 
> >   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 
> spec. 
> >   *      08-07-2003 Bryan YC Fan:  Add MAXIM2827/2825 and RFMD2959 
> support. 
> > - *      08-26-2003 Kyle Hsu    :  Modify BBuGetFrameTime() and 
> > + *      08-26-2003 Kyle Hsu    :  Modify BBUGETFRAMETIME() and 
> >   *                               BBvCalculateParameter(). 
> >   *                                cancel the setting of 
> MAC_REG_SOFTPWRCTL 
> > on 
> > - *                               BBbVT3253Init(). 
> > + *                               bbbvt3253init(). 
> >   *                                Add the comments. 
> >   *      09-01-2003 Bryan YC Fan:  RF & BB tables updated. 
> >   *                                Modified BBvLoopbackOn & 
> > BBvLoopbackOff(). 
> > @@ -779,7 +778,7 @@ static const unsigned char 
> > BYVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = { 
> >  #define CB_VT3253B0_AGC_FOR_RFMD2959 195 
> >  /* For RFMD2959 */ 
> >  static 
> > -unsigned char byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] 
> = { 
> > +unsigned char BYVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] 
> = { 
> >         {0xF0, 0x00}, 
> >         {0xF1, 0x3E}, 
> >         {0xF0, 0x80}, 
> > @@ -980,7 +979,7 @@ unsigned char 
> > byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = { 
> >  #define CB_VT3253B0_INIT_FOR_AIROHA2230 256 
> >  /* For AIROHA */ 
> >  static 
> > -unsigned char byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] 
> = { 
> > +unsigned char BYVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] 
> = { 
> >         {0x00, 0x31}, 
> >         {0x01, 0x00}, 
> >         {0x02, 0x00}, 
> > @@ -1241,7 +1240,7 @@ unsigned char 
> > byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = { 
> > 
> >  #define CB_VT3253B0_INIT_FOR_UW2451 256 
> >  /* For UW2451 */ 
> > -static unsigned char byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] 
> = { 
> > +static unsigned char BYVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] 
> = { 
> >         {0x00, 0x31}, 
> >         {0x01, 0x00}, 
> >         {0x02, 0x00}, 
> > @@ -1502,7 +1501,7 @@ static unsigned char 
> > byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = { 
> > 
> >  #define CB_VT3253B0_AGC 193 
> >  /* For AIROHA */ 
> > -static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = { 
> > +static unsigned char BYVT3253B0_AGC[CB_VT3253B0_AGC][2] = { 
> >         {0xF0, 0x00}, 
> >         {0xF1, 0x00}, 
> >         {0xF0, 0x80}, 
> > @@ -1698,7 +1697,7 @@ static unsigned char 
> > byVT3253B0_AGC[CB_VT3253B0_AGC][2] = { 
> >         {0xF0, 0x00}, 
> >  }; 
> > 
> > -static const unsigned short awcFrameTime[MAX_RATE] = { 
> > +static const unsigned short awcframetime[MAX_RATE] = { 
> >                 10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216 
> >  }; 
> > 
> > @@ -1708,57 +1707,57 @@ static const unsigned short 
> awcFrameTime[MAX_RATE] = 
> > { 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      byPreambleType  - Preamble Type 
> > - *      byPktType        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, 
> > PK_TYPE_11GA 
> > - *      cbFrameLength   - Baseband Type 
> > - *      wRate           - Tx Rate 
> > + *      bypreambletype  - Preamble Type 
> > + *      bypkttype        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, 
> > PK_TYPE_11GA 
> > + *      cbframelength   - Baseband Type 
> > + *      wrate           - Tx Rate 
> >   *  Out: 
> >   * 
> >   * Return Value: FrameTime 
> >   * 
> >   */ 
> >  unsigned int 
> > -BBuGetFrameTime( 
> > -       unsigned char byPreambleType, 
> > -       unsigned char byPktType, 
> > -       unsigned int cbFrameLength, 
> > -       unsigned short wRate 
> > +BBUGETFRAMETIME( 
> > +       unsigned char bypreambletype, 
> > +       unsigned char bypkttype, 
> > +       unsigned int cbframelength, 
> > +       unsigned short wrate 
> >  ) 
> >  { 
> > -       unsigned int uFrameTime; 
> > -       unsigned int uPreamble; 
> > -       unsigned int uTmp; 
> > -       unsigned int uRateIdx = (unsigned int)wRate; 
> > -       unsigned int uRate = 0; 
> > +       unsigned int uframetime; 
> > +       unsigned int upreamble; 
> > +       unsigned int utmp; 
> > +       unsigned int urateidx = (unsigned int)wrate; 
> > +       unsigned int urate = 0; 
> > 
> > -       if (uRateIdx > RATE_54M) 
> > +       if (urateidx > RATE_54M) 
> >                 return 0; 
> > 
> > -       uRate = (unsigned int)awcFrameTime[uRateIdx]; 
> > +       urate = (unsigned int)awcframetime[urateidx]; 
> > 
> > -       if (uRateIdx <= 3) {          /* CCK mode */ 
> > -               if (byPreambleType == 1) /* Short */ 
> > -                       uPreamble = 96; 
> > +       if (urateidx <= 3) {          /* CCK mode */ 
> > +               if (bypreambletype == 1) /* Short */ 
> > +                       upreamble = 96; 
> >                 else 
> > -                       uPreamble = 192; 
> > +                       upreamble = 192; 
> > 
> > -               uFrameTime = (cbFrameLength * 80) / uRate;  /* ????? */ 
> > -               uTmp = (uFrameTime * uRate) / 80; 
> > -               if (cbFrameLength != uTmp) 
> > -                       uFrameTime++; 
> > +               uframetime = (cbframelength * 80) / urate;  /* ????? */ 
> > +               utmp = (uframetime * urate) / 80; 
> > +               if (cbframelength != utmp) 
> > +                       uframetime++; 
> > 
> > -               return uPreamble + uFrameTime; 
> > +               return upreamble + uframetime; 
> >         } 
> > -       uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* ???????? */ 
> > -       uTmp = ((uFrameTime * uRate) - 22) / 8; 
> > -       if (cbFrameLength != uTmp) 
> > -               uFrameTime++; 
> > +       uframetime = (cbframelength * 8 + 22) / urate; /* ???????? */ 
> > +       utmp = ((uframetime * urate) - 22) / 8; 
> > +       if (cbframelength != utmp) 
> > +               uframetime++; 
> > 
> > -       uFrameTime = uFrameTime * 4;    /* ??????? */ 
> > -       if (byPktType != PK_TYPE_11A) 
> > -               uFrameTime += 6;     /* ?????? */ 
> > +       uframetime = uframetime * 4;    /* ??????? */ 
> > +       if (bypkttype != PK_TYPE_11A) 
> > +               uframetime += 6;     /* ?????? */ 
> > 
> > -       return 20 + uFrameTime; /* ?????? */ 
> > +       return 20 + uframetime; /* ?????? */ 
> >  } 
> > 
> >  /* 
> > @@ -1785,7 +1784,7 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 
> > frame_length, 
> >         u32 count = 0; 
> >         u32 tmp; 
> >         int ext_bit; 
> > -       u8 preamble_type = priv->byPreambleType; 
> > +       u8 preamble_type = priv->bypreambletype; 
> > 
> >         bit_count = frame_length * 8; 
> >         ext_bit = false; 
> > @@ -1915,35 +1914,35 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 
> > frame_length, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > - *      byBBAddr    - address of register in Baseband 
> > + *      dwiobase    - I/O base address 
> > + *      bybbaddr    - address of register in Baseband 
> >   *  Out: 
> > - *      pbyData     - data read 
> > + *      pbydata     - data read 
> >   * 
> >   * Return Value: true if succeeded; false if failed. 
> >   * 
> >   */ 
> > -bool BBbReadEmbedded(struct vnt_private *priv, 
> > -                    unsigned char byBBAddr, unsigned char *pbyData) 
> > +bool bbbreadembedded(struct vnt_private *priv, 
> > +                    unsigned char bybbaddr, unsigned char *pbydata) 
> >  { 
> > -       void __iomem *dwIoBase = priv->PortOffset; 
> > +       void __iomem *dwiobase = priv->portoffset; 
> >         unsigned short ww; 
> > -       unsigned char byValue; 
> > +       unsigned char byvalue; 
> > 
> >         /* BB reg offset */ 
> > -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr); 
> > 
> >         /* turn on REGR */ 
> > -       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> > +       macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> >         /* W_MAX_TIMEOUT is the timeout period */ 
> >         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > -               if (byValue & BBREGCTL_DONE) 
> > +               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, &byvalue); 
> > +               if (byvalue & BBREGCTL_DONE) 
> >                         break; 
> >         } 
> > 
> >         /* get BB data */ 
> > -       VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData); 
> > +       vnsvinportb(dwiobase + MAC_REG_BBREGDATA, pbydata); 
> > 
> >         if (ww == W_MAX_TIMEOUT) { 
> >                 pr_debug(" DBG_PORT80(0x30)\n"); 
> > @@ -1957,33 +1956,33 @@ bool BBbReadEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > - *      byBBAddr    - address of register in Baseband 
> > - *      byData      - data to write 
> > + *      dwiobase    - I/O base address 
> > + *      bybbaddr    - address of register in Baseband 
> > + *      bydata      - data to write 
> >   *  Out: 
> >   *      none 
> >   * 
> >   * Return Value: true if succeeded; false if failed. 
> >   * 
> >   */ 
> > -bool BBbWriteEmbedded(struct vnt_private *priv, 
> > -                     unsigned char byBBAddr, unsigned char byData) 
> > +bool bbbwriteembedded(struct vnt_private *priv, 
> > +                     unsigned char bybbaddr, unsigned char bydata) 
> >  { 
> > -       void __iomem *dwIoBase = priv->PortOffset; 
> > +       void __iomem *dwiobase = priv->portoffset; 
> >         unsigned short ww; 
> > -       unsigned char byValue; 
> > +       unsigned char byvalue; 
> > 
> >         /* BB reg offset */ 
> > -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr); 
> >         /* set BB data */ 
> > -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData); 
> > +       vnsvoutportb(dwiobase + MAC_REG_BBREGDATA, bydata); 
> > 
> >         /* turn on BBREGCTL_REGW */ 
> > -       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> > +       macvregbitson(dwiobase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> >         /* W_MAX_TIMEOUT is the timeout period */ 
> >         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > -               if (byValue & BBREGCTL_DONE) 
> > +               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, &byvalue); 
> > +               if (byvalue & BBREGCTL_DONE) 
> >                         break; 
> >         } 
> > 
> > @@ -1999,9 +1998,9 @@ bool BBbWriteEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      dwiobase    - I/O base address 
> >   *      byRevId     - Revision ID 
> > - *      byRFType    - RF type 
> > + *      byrftype    - RF type 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2009,95 +2008,95 @@ bool BBbWriteEmbedded(struct vnt_private *priv, 
> >   * 
> >   */ 
> > 
> > -bool BBbVT3253Init(struct vnt_private *priv) 
> > +bool bbbvt3253init(struct vnt_private *priv) 
> >  { 
> > -       bool bResult = true; 
> > +       bool bresult = true; 
> >         int        ii; 
> > -       void __iomem *dwIoBase = priv->PortOffset; 
> > -       unsigned char byRFType = priv->byRFType; 
> > -       unsigned char byLocalID = priv->byLocalID; 
> > +       void __iomem *dwiobase = priv->portoffset; 
> > +       unsigned char byrftype = priv->byrftype; 
> > +       unsigned char bylocalid = priv->bylocalid; 
> > 
> > -       if (byRFType == RF_RFMD2959) { 
> > -               if (byLocalID <= REV_ID_VT3253_A1) { 
> > +       if (byrftype == RF_RFMD2959) { 
> > +               if (bylocalid <= REV_ID_VT3253_A1) { 
> >                         for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++) 
> > -                               bResult &= BBbWriteEmbedded(priv, 
> > +                               bresult &= bbbwriteembedded(priv, 
> >                                         BYVT3253INITTAB_RFMD[ii][0], 
> >                                         BYVT3253INITTAB_RFMD[ii][1]); 
> > 
> >                 } else { 
> >                         for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; 
> ii++) 
> > -                               bResult &= BBbWriteEmbedded(priv, 
> > +                               bresult &= bbbwriteembedded(priv, 
> >                                         BYVT3253B0_RFMD[ii][0], 
> >                                         BYVT3253B0_RFMD[ii][1]); 
> > 
> >                         for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; 
> > ii++) 
> > -                               bResult &= BBbWriteEmbedded(priv, 
> > -                                       byVT3253B0_AGC4_RFMD2959[ii][0], 
> > -                                      
>  byVT3253B0_AGC4_RFMD2959[ii][1]); 
> > +                               bresult &= bbbwriteembedded(priv, 
> > +                                       BYVT3253B0_AGC4_RFMD2959[ii][0], 
> > +                                      
>  BYVT3253B0_AGC4_RFMD2959[ii][1]); 
> > 
> > -                       VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23); 
> > -                       MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> > +                       vnsvoutportd(dwiobase + MAC_REG_ITRTMSET, 0x23); 
> > +                       macvregbitson(dwiobase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> >                 } 
> > -               priv->abyBBVGA[0] = 0x18; 
> > -               priv->abyBBVGA[1] = 0x0A; 
> > -               priv->abyBBVGA[2] = 0x0; 
> > -               priv->abyBBVGA[3] = 0x0; 
> > -               priv->ldBmThreshold[0] = -70; 
> > -               priv->ldBmThreshold[1] = -50; 
> > -               priv->ldBmThreshold[2] = 0; 
> > -               priv->ldBmThreshold[3] = 0; 
> > -       } else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) 
> { 
> > +               priv->abybbvga[0] = 0x18; 
> > +               priv->abybbvga[1] = 0x0A; 
> > +               priv->abybbvga[2] = 0x0; 
> > +               priv->abybbvga[3] = 0x0; 
> > +               priv->ldbmthreshold[0] = -70; 
> > +               priv->ldbmthreshold[1] = -50; 
> > +               priv->ldbmthreshold[2] = 0; 
> > +               priv->ldbmthreshold[3] = 0; 
> > +       } else if ((byrftype == RF_AIROHA) || (byrftype == RF_AL2230S)) 
> { 
> >                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AIROHA2230[ii][0], 
> > -                               byVT3253B0_AIROHA2230[ii][1]); 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AIROHA2230[ii][0], 
> > +                               BYVT3253B0_AIROHA2230[ii][1]); 
> > 
> >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AGC[ii][0], 
> > byVT3253B0_AGC[ii][1]); 
> > - 
> > -               priv->abyBBVGA[0] = 0x1C; 
> > -               priv->abyBBVGA[1] = 0x10; 
> > -               priv->abyBBVGA[2] = 0x0; 
> > -               priv->abyBBVGA[3] = 0x0; 
> > -               priv->ldBmThreshold[0] = -70; 
> > -               priv->ldBmThreshold[1] = -48; 
> > -               priv->ldBmThreshold[2] = 0; 
> > -               priv->ldBmThreshold[3] = 0; 
> > -       } else if (byRFType == RF_UW2451) { 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AGC[ii][0], 
> > BYVT3253B0_AGC[ii][1]); 
> > + 
> > +               priv->abybbvga[0] = 0x1C; 
> > +               priv->abybbvga[1] = 0x10; 
> > +               priv->abybbvga[2] = 0x0; 
> > +               priv->abybbvga[3] = 0x0; 
> > +               priv->ldbmthreshold[0] = -70; 
> > +               priv->ldbmthreshold[1] = -48; 
> > +               priv->ldbmthreshold[2] = 0; 
> > +               priv->ldbmthreshold[3] = 0; 
> > +       } else if (byrftype == RF_UW2451) { 
> >                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_UW2451[ii][0], 
> > -                               byVT3253B0_UW2451[ii][1]); 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_UW2451[ii][0], 
> > +                               BYVT3253B0_UW2451[ii][1]); 
> > 
> >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AGC[ii][0], 
> > -                               byVT3253B0_AGC[ii][1]); 
> > - 
> > -               VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23); 
> > -               MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0)); 
> > - 
> > -               priv->abyBBVGA[0] = 0x14; 
> > -               priv->abyBBVGA[1] = 0x0A; 
> > -               priv->abyBBVGA[2] = 0x0; 
> > -               priv->abyBBVGA[3] = 0x0; 
> > -               priv->ldBmThreshold[0] = -60; 
> > -               priv->ldBmThreshold[1] = -50; 
> > -               priv->ldBmThreshold[2] = 0; 
> > -               priv->ldBmThreshold[3] = 0; 
> > -       } else if (byRFType == RF_UW2452) { 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AGC[ii][0], 
> > +                               BYVT3253B0_AGC[ii][1]); 
> > + 
> > +               vnsvoutportb(dwiobase + MAC_REG_ITRTMSET, 0x23); 
> > +               macvregbitson(dwiobase, MAC_REG_PAPEDELAY, BIT(0)); 
> > + 
> > +               priv->abybbvga[0] = 0x14; 
> > +               priv->abybbvga[1] = 0x0A; 
> > +               priv->abybbvga[2] = 0x0; 
> > +               priv->abybbvga[3] = 0x0; 
> > +               priv->ldbmthreshold[0] = -60; 
> > +               priv->ldbmthreshold[1] = -50; 
> > +               priv->ldbmthreshold[2] = 0; 
> > +               priv->ldbmthreshold[3] = 0; 
> > +       } else if (byrftype == RF_UW2452) { 
> >                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_UW2451[ii][0], 
> > -                               byVT3253B0_UW2451[ii][1]); 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_UW2451[ii][0], 
> > +                               BYVT3253B0_UW2451[ii][1]); 
> > 
> >                 /* Init ANT B select, 
> >                  * TX Config CR09 = 0x61->0x45, 
> >                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> > inverted) 
> >                  */ 
> > 
> > -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +               /*bresult &= bbbwriteembedded(dwiobase,0x09,0x41);*/ 
> > 
> >                 /* Init ANT B select, 
> >                  * RX Config CR10 = 0x28->0x2A, 
> > @@ -2105,101 +2104,100 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                  * make the ANT_A, ANT_B inverted) 
> >                  */ 
> > 
> > -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +               /*bresult &= bbbwriteembedded(dwiobase,0x0a,0x28);*/ 
> >                 /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> > -               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> > +               bresult &= bbbwriteembedded(priv, 0xd7, 0x06); 
> > 
> >                 /* {{RobertYu:20050125, request by Jack */ 
> > -               bResult &= BBbWriteEmbedded(priv, 0x90, 0x20); 
> > -               bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb); 
> > +               bresult &= bbbwriteembedded(priv, 0x90, 0x20); 
> > +               bresult &= bbbwriteembedded(priv, 0x97, 0xeb); 
> >                 /* }} */ 
> > 
> >                 /* {{RobertYu:20050221, request by Jack */ 
> > -               bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00); 
> > -               bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30); 
> > +               bresult &= bbbwriteembedded(priv, 0xa6, 0x00); 
> > +               bresult &= bbbwriteembedded(priv, 0xa8, 0x30); 
> >                 /* }} */ 
> > -               bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58); 
> > +               bresult &= bbbwriteembedded(priv, 0xb0, 0x58); 
> > 
> >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AGC[ii][0], 
> > byVT3253B0_AGC[ii][1]); 
> > - 
> > -               priv->abyBBVGA[0] = 0x14; 
> > -               priv->abyBBVGA[1] = 0x0A; 
> > -               priv->abyBBVGA[2] = 0x0; 
> > -               priv->abyBBVGA[3] = 0x0; 
> > -               priv->ldBmThreshold[0] = -60; 
> > -               priv->ldBmThreshold[1] = -50; 
> > -               priv->ldBmThreshold[2] = 0; 
> > -               priv->ldBmThreshold[3] = 0; 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AGC[ii][0], 
> > BYVT3253B0_AGC[ii][1]); 
> > + 
> > +               priv->abybbvga[0] = 0x14; 
> > +               priv->abybbvga[1] = 0x0A; 
> > +               priv->abybbvga[2] = 0x0; 
> > +               priv->abybbvga[3] = 0x0; 
> > +               priv->ldbmthreshold[0] = -60; 
> > +               priv->ldbmthreshold[1] = -50; 
> > +               priv->ldbmthreshold[2] = 0; 
> > +               priv->ldbmthreshold[3] = 0; 
> >                 /* }} RobertYu */ 
> > 
> > -       } else if (byRFType == RF_VT3226) { 
> > +       } else if (byrftype == RF_VT3226) { 
> >                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AIROHA2230[ii][0], 
> > -                               byVT3253B0_AIROHA2230[ii][1]); 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AIROHA2230[ii][0], 
> > +                               BYVT3253B0_AIROHA2230[ii][1]); 
> > 
> >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AGC[ii][0], 
> > byVT3253B0_AGC[ii][1]); 
> > - 
> > -               priv->abyBBVGA[0] = 0x1C; 
> > -               priv->abyBBVGA[1] = 0x10; 
> > -               priv->abyBBVGA[2] = 0x0; 
> > -               priv->abyBBVGA[3] = 0x0; 
> > -               priv->ldBmThreshold[0] = -70; 
> > -               priv->ldBmThreshold[1] = -48; 
> > -               priv->ldBmThreshold[2] = 0; 
> > -               priv->ldBmThreshold[3] = 0; 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AGC[ii][0], 
> > BYVT3253B0_AGC[ii][1]); 
> > + 
> > +               priv->abybbvga[0] = 0x1C; 
> > +               priv->abybbvga[1] = 0x10; 
> > +               priv->abybbvga[2] = 0x0; 
> > +               priv->abybbvga[3] = 0x0; 
> > +               priv->ldbmthreshold[0] = -70; 
> > +               priv->ldbmthreshold[1] = -48; 
> > +               priv->ldbmthreshold[2] = 0; 
> > +               priv->ldbmthreshold[3] = 0; 
> >                 /* Fix VT3226 DFC system timing issue */ 
> > -               MACvSetRFLE_LatchBase(dwIoBase); 
> > +               MACVSETRFLE_LATCHBASE(dwiobase); 
> >                 /* {{ RobertYu: 20050104 */ 
> > -       } else if (byRFType == RF_AIROHA7230) { 
> > +       } else if (byrftype == RF_AIROHA7230) { 
> >                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AIROHA2230[ii][0], 
> > -                               byVT3253B0_AIROHA2230[ii][1]); 
> > - 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AIROHA2230[ii][0], 
> > +                               BYVT3253B0_AIROHA2230[ii][1]); 
> > 
> >                 /* {{ RobertYu:20050223, request by JerryChung */ 
> >                 /* Init ANT B select,TX Config CR09 = 0x61->0x45, 
> >                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> > inverted) 
> >                  */ 
> > -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +               /*bresult &= bbbwriteembedded(dwiobase,0x09,0x41);*/ 
> >                 /* Init ANT B select,RX Config CR10 = 0x28->0x2A, 
> >                  * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B 
> > inverted) 
> >                  */ 
> > -               /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +               /*bresult &= bbbwriteembedded(dwiobase,0x0a,0x28);*/ 
> >                 /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> > -               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> > +               bresult &= bbbwriteembedded(priv, 0xd7, 0x06); 
> >                 /* }} */ 
> > 
> >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> > -                       bResult &= BBbWriteEmbedded(priv, 
> > -                               byVT3253B0_AGC[ii][0], 
> > byVT3253B0_AGC[ii][1]); 
> > - 
> > -               priv->abyBBVGA[0] = 0x1C; 
> > -               priv->abyBBVGA[1] = 0x10; 
> > -               priv->abyBBVGA[2] = 0x0; 
> > -               priv->abyBBVGA[3] = 0x0; 
> > -               priv->ldBmThreshold[0] = -70; 
> > -               priv->ldBmThreshold[1] = -48; 
> > -               priv->ldBmThreshold[2] = 0; 
> > -               priv->ldBmThreshold[3] = 0; 
> > +                       bresult &= bbbwriteembedded(priv, 
> > +                               BYVT3253B0_AGC[ii][0], 
> > BYVT3253B0_AGC[ii][1]); 
> > + 
> > +               priv->abybbvga[0] = 0x1C; 
> > +               priv->abybbvga[1] = 0x10; 
> > +               priv->abybbvga[2] = 0x0; 
> > +               priv->abybbvga[3] = 0x0; 
> > +               priv->ldbmthreshold[0] = -70; 
> > +               priv->ldbmthreshold[1] = -48; 
> > +               priv->ldbmthreshold[2] = 0; 
> > +               priv->ldbmthreshold[3] = 0; 
> >                 /* }} RobertYu */ 
> >         } else { 
> >                 /* No VGA Table now */ 
> > -               priv->bUpdateBBVGA = false; 
> > -               priv->abyBBVGA[0] = 0x1C; 
> > +               priv->bupdatebbvga = false; 
> > +               priv->abybbvga[0] = 0x1C; 
> >         } 
> > 
> > -       if (byLocalID > REV_ID_VT3253_A1) { 
> > -               BBbWriteEmbedded(priv, 0x04, 0x7F); 
> > -               BBbWriteEmbedded(priv, 0x0D, 0x01); 
> > +       if (bylocalid > REV_ID_VT3253_A1) { 
> > +               bbbwriteembedded(priv, 0x04, 0x7F); 
> > +               bbbwriteembedded(priv, 0x0D, 0x01); 
> >         } 
> > 
> > -       return bResult; 
> > +       return bresult; 
> >  } 
> > 
> >  /* 
> > @@ -2215,42 +2213,42 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >   * 
> >   */ 
> >  void 
> > -BBvSetShortSlotTime(struct vnt_private *priv) 
> > +bbvsetshortslottime(struct vnt_private *priv) 
> >  { 
> > -       unsigned char byBBRxConf = 0; 
> > -       unsigned char byBBVGA = 0; 
> > +       unsigned char bybbrxconf = 0; 
> > +       unsigned char bybbvga = 0; 
> > 
> > -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */ 
> > +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */ 
> > 
> > -       if (priv->bShortSlotTime) 
> > -               byBBRxConf &= 0xDF; /* 1101 1111 */ 
> > +       if (priv->bshortslottime) 
> > +               bybbrxconf &= 0xDF; /* 1101 1111 */ 
> >         else 
> > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> > 
> >         /* patch for 3253B0 Baseband with Cardbus module */ 
> > -       BBbReadEmbedded(priv, 0xE7, &byBBVGA); 
> > -       if (byBBVGA == priv->abyBBVGA[0]) 
> > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> > +       bbbreadembedded(priv, 0xE7, &bybbvga); 
> > +       if (bybbvga == priv->abybbvga[0]) 
> > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> > 
> > -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */ 
> > +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */ 
> >  } 
> > 
> > -void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char 
> byData) 
> > +void bbvsetvgagainoffset(struct vnt_private *priv, unsigned char 
> bydata) 
> >  { 
> > -       unsigned char byBBRxConf = 0; 
> > +       unsigned char bybbrxconf = 0; 
> > 
> > -       BBbWriteEmbedded(priv, 0xE7, byData); 
> > +       bbbwriteembedded(priv, 0xE7, bydata); 
> > 
> > -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */ 
> > +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */ 
> >         /* patch for 3253B0 Baseband with Cardbus module */ 
> > -       if (byData == priv->abyBBVGA[0]) 
> > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> > -       else if (priv->bShortSlotTime) 
> > -               byBBRxConf &= 0xDF; /* 1101 1111 */ 
> > +       if (bydata == priv->abybbvga[0]) 
> > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> > +       else if (priv->bshortslottime) 
> > +               bybbrxconf &= 0xDF; /* 1101 1111 */ 
> >         else 
> > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> > -       priv->byBBVGACurrent = byData; 
> > -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */ 
> > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> > +       priv->bybbvgacurrent = bydata; 
> > +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */ 
> >  } 
> > 
> >  /* 
> > @@ -2258,7 +2256,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, 
> > unsigned char byData) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      dwiobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2266,12 +2264,12 @@ void BBvSetVGAGainOffset(struct vnt_private 
> *priv, 
> > unsigned char byData) 
> >   * 
> >   */ 
> >  void 
> > -BBvSoftwareReset(struct vnt_private *priv) 
> > +bbvsoftwarereset(struct vnt_private *priv) 
> >  { 
> > -       BBbWriteEmbedded(priv, 0x50, 0x40); 
> > -       BBbWriteEmbedded(priv, 0x50, 0); 
> > -       BBbWriteEmbedded(priv, 0x9C, 0x01); 
> > -       BBbWriteEmbedded(priv, 0x9C, 0); 
> > +       bbbwriteembedded(priv, 0x50, 0x40); 
> > +       bbbwriteembedded(priv, 0x50, 0); 
> > +       bbbwriteembedded(priv, 0x9C, 0x01); 
> > +       bbbwriteembedded(priv, 0x9C, 0); 
> >  } 
> > 
> >  /* 
> > @@ -2279,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      dwiobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2287,13 +2285,13 @@ BBvSoftwareReset(struct vnt_private *priv) 
> >   * 
> >   */ 
> >  void 
> > -BBvPowerSaveModeON(struct vnt_private *priv) 
> > +bbvpowersavemodeon(struct vnt_private *priv) 
> >  { 
> > -       unsigned char byOrgData; 
> > +       unsigned char byorgdata; 
> > 
> > -       BBbReadEmbedded(priv, 0x0D, &byOrgData); 
> > -       byOrgData |= BIT(0); 
> > -       BBbWriteEmbedded(priv, 0x0D, byOrgData); 
> > +       bbbreadembedded(priv, 0x0D, &byorgdata); 
> > +       byorgdata |= BIT(0); 
> > +       bbbwriteembedded(priv, 0x0D, byorgdata); 
> >  } 
> > 
> >  /* 
> > @@ -2301,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      dwiobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2309,13 +2307,13 @@ BBvPowerSaveModeON(struct vnt_private *priv) 
> >   * 
> >   */ 
> >  void 
> > -BBvPowerSaveModeOFF(struct vnt_private *priv) 
> > +bbvpowersavemodeoff(struct vnt_private *priv) 
> >  { 
> > -       unsigned char byOrgData; 
> > +       unsigned char byorgdata; 
> > 
> > -       BBbReadEmbedded(priv, 0x0D, &byOrgData); 
> > -       byOrgData &= ~(BIT(0)); 
> > -       BBbWriteEmbedded(priv, 0x0D, byOrgData); 
> > +       bbbreadembedded(priv, 0x0D, &byorgdata); 
> > +       byorgdata &= ~(BIT(0)); 
> > +       bbbwriteembedded(priv, 0x0D, byorgdata); 
> >  } 
> > 
> >  /* 
> > @@ -2324,7 +2322,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv) 
> >   * Parameters: 
> >   *  In: 
> >   *      priv          - Device Structure 
> > - *      byAntennaMode    - Antenna Mode 
> > + *      BYANTENNAMODE    - Antenna Mode 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2333,22 +2331,22 @@ BBvPowerSaveModeOFF(struct vnt_private *priv) 
> >   */ 
> > 
> >  void 
> > -BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char 
> byAntennaMode) 
> > +bbvsettxantennamode(struct vnt_private *priv, unsigned char 
> BYANTENNAMODE) 
> >  { 
> > -       unsigned char byBBTxConf; 
> > +       unsigned char bybbtxconf; 
> > 
> > -       BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */ 
> > -       if (byAntennaMode == ANT_DIVERSITY) { 
> > +       bbbreadembedded(priv, 0x09, &bybbtxconf); /* CR09 */ 
> > +       if (BYANTENNAMODE == ANT_DIVERSITY) { 
> >                 /* bit 1 is diversity */ 
> > -               byBBTxConf |= 0x02; 
> > -       } else if (byAntennaMode == ANT_A) { 
> > +               bybbtxconf |= 0x02; 
> > +       } else if (BYANTENNAMODE == ANT_A) { 
> >                 /* bit 2 is ANTSEL */ 
> > -               byBBTxConf &= 0xF9; /* 1111 1001 */ 
> > -       } else if (byAntennaMode == ANT_B) { 
> > -               byBBTxConf &= 0xFD; /* 1111 1101 */ 
> > -               byBBTxConf |= 0x04; 
> > +               bybbtxconf &= 0xF9; /* 1111 1001 */ 
> > +       } else if (BYANTENNAMODE == ANT_B) { 
> > +               bybbtxconf &= 0xFD; /* 1111 1101 */ 
> > +               bybbtxconf |= 0x04; 
> >         } 
> > -       BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR09 */ 
> > +       bbbwriteembedded(priv, 0x09, bybbtxconf); /* CR09 */ 
> >  } 
> > 
> >  /* 
> > @@ -2357,7 +2355,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv, 
> unsigned 
> > char byAntennaMode) 
> >   * Parameters: 
> >   *  In: 
> >   *      priv          - Device Structure 
> > - *      byAntennaMode    - Antenna Mode 
> > + *      BYANTENNAMODE    - Antenna Mode 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2366,25 +2364,25 @@ BBvSetTxAntennaMode(struct vnt_private *priv, 
> > unsigned char byAntennaMode) 
> >   */ 
> > 
> >  void 
> > -BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char 
> byAntennaMode) 
> > +bbvsetrxantennamode(struct vnt_private *priv, unsigned char 
> BYANTENNAMODE) 
> >  { 
> > -       unsigned char byBBRxConf; 
> > +       unsigned char bybbrxconf; 
> > 
> > -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */ 
> > -       if (byAntennaMode == ANT_DIVERSITY) { 
> > -               byBBRxConf |= 0x01; 
> > +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */ 
> > +       if (BYANTENNAMODE == ANT_DIVERSITY) { 
> > +               bybbrxconf |= 0x01; 
> > 
> > -       } else if (byAntennaMode == ANT_A) { 
> > -               byBBRxConf &= 0xFC; /* 1111 1100 */ 
> > -       } else if (byAntennaMode == ANT_B) { 
> > -               byBBRxConf &= 0xFE; /* 1111 1110 */ 
> > -               byBBRxConf |= 0x02; 
> > +       } else if (BYANTENNAMODE == ANT_A) { 
> > +               bybbrxconf &= 0xFC; /* 1111 1100 */ 
> > +       } else if (BYANTENNAMODE == ANT_B) { 
> > +               bybbrxconf &= 0xFE; /* 1111 1110 */ 
> > +               bybbrxconf |= 0x02; 
> >         } 
> > -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */ 
> > +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */ 
> >  } 
> > 
> >  /* 
> > - * Description: BBvSetDeepSleep 
> > + * Description: bbvsetdeepsleep 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > @@ -2396,15 +2394,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv, 
> > unsigned char byAntennaMode) 
> >   * 
> >   */ 
> >  void 
> > -BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID) 
> > +bbvsetdeepsleep(struct vnt_private *priv, unsigned char bylocalid) 
> >  { 
> > -       BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */ 
> > -       BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */ 
> > +       bbbwriteembedded(priv, 0x0C, 0x17); /* CR12 */ 
> > +       bbbwriteembedded(priv, 0x0D, 0xB9); /* CR13 */ 
> >  } 
> > 
> >  void 
> > -BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID) 
> > +bbvexitdeepsleep(struct vnt_private *priv, unsigned char bylocalid) 
> >  { 
> > -       BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */ 
> > -       BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */ 
> > +       bbbwriteembedded(priv, 0x0C, 0x00); /* CR12 */ 
> > +       bbbwriteembedded(priv, 0x0D, 0x01); /* CR13 */ 
> >  } 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/452c5458-c9c5-4a78-b153- 
> > 956f34946aef%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_186_1309537140.1475909875658
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, October 7, 2016 at 11:18:05 AM UTC+5:30=
, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">There sho=
uld also be a space after each : in the above subject line.
<br>
<br>The subject and the commit message don&#39;t say much about what you ha=
ve
<br>done.=C2=A0</blockquote><div>=C2=A0 =C2=A0 <br>=C2=A0=C2=A0=C2=A0  In t=
he subject I have not mentioned much,since I made multiple changes.Also I h=
ave stated the errors and warnings.=C2=A0 <br>=C2=A0<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px=
 #ccc solid;padding-left: 1ex;">=C2=A0A fix could in general be done in man=
y different ways. =C2=A0Try to say
<br>what change you have made and why it is beneficial, and say this as
<br>concisely as possible.</blockquote><div>=C2=A0=C2=A0=C2=A0 <br>=C2=A0 =
=C2=A0=C2=A0=C2=A0 I will implement these in the next patch.<br><br></div><=
blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bord=
er-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>julia
<br>
<br>On Thu, 6 Oct 2016, <a href=3D"javascript:" target=3D"_blank" gdf-obfus=
cated-mailto=3D"Zraoc5SpAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&=
#39;;return true;">rvars...@gmail.com</a> wrote:
<br>
<br>&gt;
<br>&gt; This patch fixes <a href=3D"http://checkpatch.pl" target=3D"_blank=
" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/ur=
l?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG=
oRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;=
http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26snt=
z\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">chec=
kpatch.pl</a> issues.
<br>&gt; CamelCase issues solved and removed unnecessary lines.
<br>&gt;
<br>&gt; CHECK: Do not include the paragraph about writing to the Free Soft=
ware
<br>&gt; Foundation&#39;s mailing address from the sample GPL notice. The F=
SF has changed
<br>&gt; addresses in the past, and may do so again. Linux already includes=
 a copy of
<br>&gt; the GPL.
<br>&gt;
<br>&gt; CHECK: Avoid CamelCase
<br>&gt;
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"Zraoc5SpAgAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.c | 526
<br>&gt; +++++++++++++++++++-----------<wbr>--------
<br>&gt; =C2=A01 file changed, 262 insertions(+), 264 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; index 8798fdf..ef198c2 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; @@ -13,8 +13,7 @@
<br>&gt; =C2=A0 * GNU General Public License for more details.
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * You should have received a copy of the GNU General Public=
 License along
<br>&gt; - * with this program;if not, write to the Free Software Foundatio=
n, Inc.,
<br>&gt; - * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301USA.[bmX=
RV8U_<wbr>rvsrPro4DPGFB69kd64mPUlaHL87vQ<wbr>tq_<wbr>GAuJjcmUkNXeaKyEx7hvg1=
C5Tift0
<br>&gt; qXrd0-iJixautq_<wbr>siUL9GltfUhIT6ggIHnlQ=3Dw5000-<wbr>h5000]
<br>&gt;
<br>&gt; - *
<br>&gt; + * with this program;
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * File: baseband.c
<br>&gt; =C2=A0 *
<br>&gt; @@ -25,20 +24,20 @@
<br>&gt; =C2=A0 * Date: Aug.22, 2002
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Functions:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 BBuGetFrameTime=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 - Calculate data frame transmitting time
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 BBUGETFRAMETIME=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 - Calculate data frame transmitting time
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 BBvCaculateParameter=C2=A0 =C2=A0- Ca=
culate PhyLength, PhyService and Phy
<br>&gt; Signal
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0parameter for baseba=
nd Tx
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 BBbReadEmbedded=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0- Embedded read baseband register via MAC
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 - Embedded write baseband register via MAC
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 BBbVT3253Init=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 - VIA VT3253 baseband chip init code
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bbbreadembedded=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0- Embedded read baseband register via MAC
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bbbwriteembedded=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 - Embedded write baseband register via MAC
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bbbvt3253init=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 - VIA VT3253 baseband chip init code
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Revision History:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 06-10-2003 Bryan YC Fan:=C2=A0 Re-wri=
te codes to support VT3253 spec.
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 08-07-2003 Bryan YC Fan:=C2=A0 Add MA=
XIM2827/2825 and RFMD2959 support.
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle Hsu=C2=A0 =C2=A0 :=C2=A0 M=
odify BBuGetFrameTime() and
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle Hsu=C2=A0 =C2=A0 :=C2=A0 M=
odify BBUGETFRAMETIME() and
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBvCalculateParamete=
r().
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cancel the setting =
of MAC_REG_SOFTPWRCTL
<br>&gt; on
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBbVT3253Init().
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bbbvt3253init().
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Add the comments.
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 09-01-2003 Bryan YC Fan:=C2=A0 RF &am=
p; BB tables updated.
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Modified BBvLoopbac=
kOn &amp;
<br>&gt; BBvLoopbackOff().
<br>&gt; @@ -779,7 +778,7 @@ static const unsigned char
<br>&gt; BYVT3253B0_RFMD[CB_VT3253B0_<wbr>INIT_FOR_RFMD][2] =3D {
<br>&gt; =C2=A0#define CB_VT3253B0_AGC_FOR_RFMD2959 195
<br>&gt; =C2=A0/* For RFMD2959 */
<br>&gt; =C2=A0static
<br>&gt; -unsigned char byVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0_AGC_FOR_R=
FMD2959][2] =3D {
<br>&gt; +unsigned char BYVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0_AGC_FOR_R=
FMD2959][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF1, 0x3E},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x80},
<br>&gt; @@ -980,7 +979,7 @@ unsigned char
<br>&gt; byVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0_AGC_FOR_RFMD2959][2] =3D=
 {
<br>&gt; =C2=A0#define CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230 256
<br>&gt; =C2=A0/* For AIROHA */
<br>&gt; =C2=A0static
<br>&gt; -unsigned char byVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_INIT_FOR_AIR=
OHA2230][<wbr>2] =3D {
<br>&gt; +unsigned char BYVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_INIT_FOR_AIR=
OHA2230][<wbr>2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x00, 0x31},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x01, 0x00},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x02, 0x00},
<br>&gt; @@ -1241,7 +1240,7 @@ unsigned char
<br>&gt; byVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_INIT_FOR_AIROHA2230][<wbr>2=
] =3D {
<br>&gt;
<br>&gt; =C2=A0#define CB_VT3253B0_INIT_FOR_UW2451 256
<br>&gt; =C2=A0/* For UW2451 */
<br>&gt; -static unsigned char byVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_FOR_=
UW2451][2] =3D {
<br>&gt; +static unsigned char BYVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_FOR_=
UW2451][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x00, 0x31},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x01, 0x00},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x02, 0x00},
<br>&gt; @@ -1502,7 +1501,7 @@ static unsigned char
<br>&gt; byVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_FOR_UW2451][2] =3D {
<br>&gt;
<br>&gt; =C2=A0#define CB_VT3253B0_AGC 193
<br>&gt; =C2=A0/* For AIROHA */
<br>&gt; -static unsigned char byVT3253B0_AGC[CB_VT3253B0_<wbr>AGC][2] =3D =
{
<br>&gt; +static unsigned char BYVT3253B0_AGC[CB_VT3253B0_<wbr>AGC][2] =3D =
{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF1, 0x00},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x80},
<br>&gt; @@ -1698,7 +1697,7 @@ static unsigned char
<br>&gt; byVT3253B0_AGC[CB_VT3253B0_<wbr>AGC][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00},
<br>&gt; =C2=A0};
<br>&gt;
<br>&gt; -static const unsigned short awcFrameTime[MAX_RATE] =3D {
<br>&gt; +static const unsigned short awcframetime[MAX_RATE] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 10, 20, 55=
, 110, 24, 36, 48, 72, 96, 144, 192, 216
<br>&gt; =C2=A0};
<br>&gt;
<br>&gt; @@ -1708,57 +1707,57 @@ static const unsigned short awcFrameTime[M=
AX_RATE] =3D
<br>&gt; {
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byPreambleType=C2=A0 - Preamble Type
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byPktType=C2=A0 =C2=A0 =C2=A0 =C2=A0 - PK_=
TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB,
<br>&gt; PK_TYPE_11GA
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 cbFrameLength=C2=A0 =C2=A0- Baseband Type
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 wRate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0- Tx Rate
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bypreambletype=C2=A0 - Preamble Type
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bypkttype=C2=A0 =C2=A0 =C2=A0 =C2=A0 - PK_=
TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB,
<br>&gt; PK_TYPE_11GA
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 cbframelength=C2=A0 =C2=A0- Baseband Type
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 wrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0- Tx Rate
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Return Value: FrameTime
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0unsigned int
<br>&gt; -BBuGetFrameTime(
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byPreambleType,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byPktType,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int cbFrameLength,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned short wRate
<br>&gt; +BBUGETFRAMETIME(
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bypreambletype,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bypkttype,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int cbframelength,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned short wrate
<br>&gt; =C2=A0)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uFrameTime;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uPreamble;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uTmp;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uRateIdx =3D (unsigned in=
t)wRate;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uRate =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int uframetime;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int upreamble;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int utmp;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int urateidx =3D (unsigned in=
t)wrate;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int urate =3D 0;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (uRateIdx &gt; RATE_54M)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (urateidx &gt; RATE_54M)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uRate =3D (unsigned int)awcFrameTime[u=
RateIdx];
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0urate =3D (unsigned int)awcframetime[u=
rateidx];
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (uRateIdx &lt;=3D 3) {=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 /* CCK mode */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byPrea=
mbleType =3D=3D 1) /* Short */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0uPreamble =3D 96;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (urateidx &lt;=3D 3) {=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 /* CCK mode */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byprea=
mbletype =3D=3D 1) /* Short */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0upreamble =3D 96;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0uPreamble =3D 192;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0upreamble =3D 192;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime=
 =3D (cbFrameLength * 80) / uRate;=C2=A0 /* ????? */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uTmp =3D (=
uFrameTime * uRate) / 80;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbFram=
eLength !=3D uTmp)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0uFrameTime++;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime=
 =3D (cbframelength * 80) / urate;=C2=A0 /* ????? */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0utmp =3D (=
uframetime * urate) / 80;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbfram=
elength !=3D utmp)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0uframetime++;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return uPr=
eamble + uFrameTime;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return upr=
eamble + uframetime;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime =3D (cbFrameLength * 8 + 22=
) / uRate; /* ???????? */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uTmp =3D ((uFrameTime * uRate) - 22) /=
 8;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbFrameLength !=3D uTmp)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime=
++;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime =3D (cbframelength * 8 + 22=
) / urate; /* ???????? */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0utmp =3D ((uframetime * urate) - 22) /=
 8;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbframelength !=3D utmp)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime=
++;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime =3D uFrameTime * 4;=C2=A0 =
=C2=A0 /* ??????? */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byPktType !=3D PK_TYPE_11A)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime=
 +=3D 6;=C2=A0 =C2=A0 =C2=A0/* ?????? */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime =3D uframetime * 4;=C2=A0 =
=C2=A0 /* ??????? */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bypkttype !=3D PK_TYPE_11A)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime=
 +=3D 6;=C2=A0 =C2=A0 =C2=A0/* ?????? */
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return 20 + uFrameTime; /* ?????? */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return 20 + uframetime; /* ?????? */
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -1785,7 +1784,7 @@ void vnt_get_phy_field(struct vnt_private *p=
riv, u32
<br>&gt; frame_length,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 count =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 tmp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int ext_bit;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 preamble_type =3D priv-&gt;byPreamb=
leType;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 preamble_type =3D priv-&gt;bypreamb=
letype;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 bit_count =3D frame_length * 8;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ext_bit =3D false;
<br>&gt; @@ -1915,35 +1914,35 @@ void vnt_get_phy_field(struct vnt_private =
*priv, u32
<br>&gt; frame_length,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =C2=A0 - address of registe=
r in Baseband
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bybbaddr=C2=A0 =C2=A0 - address of registe=
r in Baseband
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 pbyData=C2=A0 =C2=A0 =C2=A0- data read
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 pbydata=C2=A0 =C2=A0 =C2=A0- data read
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Return Value: true if succeeded; false if failed.
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; -bool BBbReadEmbedded(struct vnt_private *priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 unsigned char byBBAddr, unsigned char *pbyData)
<br>&gt; +bool bbbreadembedded(struct vnt_private *priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 unsigned char bybbaddr, unsigned char *pbydata)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;Po=
rtOffset;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwiobase =3D priv-&gt;po=
rtoffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byValue;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byvalue;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg offset */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGA=
DR, byBBAddr);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb(dwiobase + MAC_REG_BBREGA=
DR, bybbaddr);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on REGR */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_BBREGC=
TL, BBREGCTL_REGR);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitson(dwiobase, MAC_REG_BBREGC=
TL, BBREGCTL_REGR);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIMEOUT is the timeout period=
 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; =
ww++) {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPort=
B(dwIoBase + MAC_REG_BBREGCTL, &amp;byValue);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byValu=
e &amp; BBREGCTL_DONE)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvinport=
b(dwiobase + MAC_REG_BBREGCTL, &amp;byvalue);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byvalu=
e &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get BB data */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BBREGDA=
TA, pbyData);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvinportb(dwiobase + MAC_REG_BBREGDA=
TA, pbydata);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ww =3D=3D W_MAX_TIMEOUT) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pr_debug(&=
quot; DBG_PORT80(0x30)\n&quot;);
<br>&gt; @@ -1957,33 +1956,33 @@ bool BBbReadEmbedded(struct vnt_private *p=
riv,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =C2=A0 - address of registe=
r in Baseband
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byData=C2=A0 =C2=A0 =C2=A0 - data to write
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bybbaddr=C2=A0 =C2=A0 - address of registe=
r in Baseband
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 bydata=C2=A0 =C2=A0 =C2=A0 - data to write
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Return Value: true if succeeded; false if failed.
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; -bool BBbWriteEmbedded(struct vnt_private *priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0unsigned char byBBAddr, unsigned char byData)
<br>&gt; +bool bbbwriteembedded(struct vnt_private *priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0unsigned char bybbaddr, unsigned char bydata)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;Po=
rtOffset;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwiobase =3D priv-&gt;po=
rtoffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned short ww;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byValue;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byvalue;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg offset */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGA=
DR, byBBAddr);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb(dwiobase + MAC_REG_BBREGA=
DR, bybbaddr);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* set BB data */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_BBREGD=
ATA, byData);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb(dwiobase + MAC_REG_BBREGD=
ATA, bydata);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on BBREGCTL_REGW */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_BBREGC=
TL, BBREGCTL_REGW);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitson(dwiobase, MAC_REG_BBREGC=
TL, BBREGCTL_REGW);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIMEOUT is the timeout period=
 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D 0; ww &lt; W_MAX_TIMEOUT; =
ww++) {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPort=
B(dwIoBase + MAC_REG_BBREGCTL, &amp;byValue);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byValu=
e &amp; BBREGCTL_DONE)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvinport=
b(dwiobase + MAC_REG_BBREGCTL, &amp;byvalue);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byvalu=
e &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt;
<br>&gt; @@ -1999,9 +1998,9 @@ bool BBbWriteEmbedded(struct vnt_private *pr=
iv,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 byRevId=C2=A0 =C2=A0 =C2=A0- Revision=
 ID
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byRFType=C2=A0 =C2=A0 - RF type
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 byrftype=C2=A0 =C2=A0 - RF type
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2009,95 +2008,95 @@ bool BBbWriteEmbedded(struct vnt_private *=
priv,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt;
<br>&gt; -bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; +bool bbbvt3253init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0bool bResult =3D true;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bool bresult =3D true;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0 =C2=A0 =C2=A0 ii;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwIoBase =3D priv-&gt;Po=
rtOffset;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byRFType =3D priv-&gt;by=
RFType;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byLocalID =3D priv-&gt;b=
yLocalID;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem *dwiobase =3D priv-&gt;po=
rtoffset;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byrftype =3D priv-&gt;by=
rftype;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bylocalid =3D priv-&gt;b=
ylocalid;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byRFType =3D=3D RF_RFMD2959) {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byLoca=
lID &lt;=3D REV_ID_VT3253_A1) {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byrftype =3D=3D RF_RFMD2959) {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (byloca=
lid &lt;=3D REV_ID_VT3253_A1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253_INIT_FOR_RFMD; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEm=
bedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteem=
bedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 B=
YVT3253INITTAB_RFMD[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 B=
YVT3253INITTAB_RFMD[ii][1]);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_INIT_FOR_RFMD; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEm=
bedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteem=
bedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 B=
YVT3253B0_RFMD[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 B=
YVT3253B0_RFMD[ii][1]);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_AGC_FOR_RFMD2959;
<br>&gt; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEm=
bedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0byVT3253B0_AGC4_RFMD2959[ii][<wbr>0],
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0byVT3253B0_AGC4_RFMD2959[ii][<wbr>1]);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteem=
bedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0BYVT3253B0_AGC4_RFMD2959[ii][<wbr>0],
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0BYVT3253B0_AGC4_RFMD2959[ii][<wbr>1]);
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0vnsvoutportd(dwiobase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0macvregbitson(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[0] =3D 0x18;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[1] =3D 0x0A;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[2] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[3] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[0] =3D -70;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[1] =3D -50;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[2] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[3] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if ((byRFType =3D=3D RF_AIROHA)=
 || (byRFType =3D=3D RF_AL2230S)) {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[0] =3D 0x18;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[1] =3D 0x0A;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[2] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[3] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[0] =3D -70;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[1] =3D -50;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[2] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[3] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if ((byrftype =3D=3D RF_AIROHA)=
 || (byrftype =3D=3D RF_AL2230S)) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][0=
],
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][1=
])<wbr>;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][0=
],
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][1=
])<wbr>;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0],
<br>&gt; byVT3253B0_AGC[ii][1]);
<br>&gt; -
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[0] =3D 0x1C;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[1] =3D 0x10;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[2] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[3] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[0] =3D -70;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[1] =3D -48;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[2] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[3] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_UW2451) =
{
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0],
<br>&gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; +
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[0] =3D 0x1C;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[1] =3D 0x10;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[2] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[3] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[0] =3D -70;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[1] =3D -48;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[2] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[3] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_UW2451) =
{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_INIT_FOR_UW2451; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][0],
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][1]);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][0],
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][1]);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0],
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][1]);
<br>&gt; -
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPor=
tB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBit=
sOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; -
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[0] =3D 0x14;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[1] =3D 0x0A;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[2] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[3] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[0] =3D -60;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[1] =3D -50;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[2] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[3] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_UW2452) =
{
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0],
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][1]);
<br>&gt; +
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutpor=
tb(dwiobase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbit=
son(dwiobase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; +
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[0] =3D 0x14;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[1] =3D 0x0A;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[2] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[3] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[0] =3D -60;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[1] =3D -50;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[2] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[3] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_UW2452) =
{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_INIT_FOR_UW2451; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][0],
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_UW2451[ii][1]);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][0],
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_UW2451[ii][1]);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init AN=
T B select,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* TX=
 Config CR09 =3D 0x61-&gt;0x45,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x=
45-&gt;0x41(VC1/VC2 define, make the ANT_A, ANT_B
<br>&gt; inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult =
&amp;=3D BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult =
&amp;=3D bbbwriteembedded(dwiobase,<wbr>0x09,0x41);*/
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init AN=
T B select,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* RX=
 Config CR10 =3D 0x28-&gt;0x2A,
<br>&gt; @@ -2105,101 +2104,100 @@ bool BBbVT3253Init(struct vnt_private *p=
riv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* ma=
ke the ANT_A, ANT_B inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult =
&amp;=3D BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult =
&amp;=3D bbbwriteembedded(dwiobase,<wbr>0x0a,0x28);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Select =
VC1/VC2, CR215 =3D 0x02-&gt;0x06 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &a=
mp;=3D BBbWriteEmbedded(priv, 0xd7, 0x06);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &a=
mp;=3D bbbwriteembedded(priv, 0xd7, 0x06);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{Rober=
tYu:20050125, request by Jack */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &a=
mp;=3D BBbWriteEmbedded(priv, 0x90, 0x20);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &a=
mp;=3D BBbWriteEmbedded(priv, 0x97, 0xeb);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &a=
mp;=3D bbbwriteembedded(priv, 0x90, 0x20);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &a=
mp;=3D bbbwriteembedded(priv, 0x97, 0xeb);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} */
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{Rober=
tYu:20050221, request by Jack */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &a=
mp;=3D BBbWriteEmbedded(priv, 0xa6, 0x00);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &a=
mp;=3D BBbWriteEmbedded(priv, 0xa8, 0x30);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &a=
mp;=3D bbbwriteembedded(priv, 0xa6, 0x00);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &a=
mp;=3D bbbwriteembedded(priv, 0xa8, 0x30);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &a=
mp;=3D BBbWriteEmbedded(priv, 0xb0, 0x58);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &a=
mp;=3D bbbwriteembedded(priv, 0xb0, 0x58);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0],
<br>&gt; byVT3253B0_AGC[ii][1]);
<br>&gt; -
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[0] =3D 0x14;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[1] =3D 0x0A;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[2] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[3] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[0] =3D -60;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[1] =3D -50;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[2] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[3] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0],
<br>&gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; +
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[0] =3D 0x14;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[1] =3D 0x0A;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[2] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[3] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[0] =3D -60;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[1] =3D -50;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[2] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} Robe=
rtYu */
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_VT3226) =
{
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_VT3226) =
{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][0=
],
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][1=
])<wbr>;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][0=
],
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][1=
])<wbr>;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0],
<br>&gt; byVT3253B0_AGC[ii][1]);
<br>&gt; -
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[0] =3D 0x1C;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[1] =3D 0x10;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[2] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[3] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[0] =3D -70;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[1] =3D -48;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[2] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[3] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0],
<br>&gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; +
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[0] =3D 0x1C;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[1] =3D 0x10;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[2] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[3] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[0] =3D -70;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[1] =3D -48;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[2] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Fix VT3=
226 DFC system timing issue */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvSetRFL=
E_LatchBase(<wbr>dwIoBase);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACVSETRFL=
E_LATCHBASE(<wbr>dwiobase);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{ Robe=
rtYu: 20050104 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byRFType =3D=3D RF_AIROHA72=
30) {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byrftype =3D=3D RF_AIROHA72=
30) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][0=
],
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AIROHA2230[ii][1=
])<wbr>;
<br>&gt; -
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][0=
],
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AIROHA2230[ii][1=
])<wbr>;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* {{ Robe=
rtYu:20050223, request by JerryChung */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init AN=
T B select,TX Config CR09 =3D 0x61-&gt;0x45,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x=
45-&gt;0x41(VC1/VC2 define, make the ANT_A, ANT_B
<br>&gt; inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult =
&amp;=3D BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult =
&amp;=3D bbbwriteembedded(dwiobase,<wbr>0x09,0x41);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init AN=
T B select,RX Config CR10 =3D 0x28-&gt;0x2A,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0x=
2A-&gt;0x28(VC1/VC2 define, make the ANT_A, ANT_B
<br>&gt; inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bResult =
&amp;=3D BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*bresult =
&amp;=3D bbbwriteembedded(dwiobase,<wbr>0x0a,0x28);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Select =
VC1/VC2, CR215 =3D 0x02-&gt;0x06 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &a=
mp;=3D BBbWriteEmbedded(priv, 0xd7, 0x06);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &a=
mp;=3D bbbwriteembedded(priv, 0xd7, 0x06);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} */
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =
=3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC[ii][0],
<br>&gt; byVT3253B0_AGC[ii][1]);
<br>&gt; -
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[0] =3D 0x1C;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[1] =3D 0x10;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[2] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[3] =3D 0x0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[0] =3D -70;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[1] =3D -48;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[2] =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dBmThreshold[3] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv,
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC[ii][0],
<br>&gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; +
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[0] =3D 0x1C;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[1] =3D 0x10;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[2] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[3] =3D 0x0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[0] =3D -70;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[1] =3D -48;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[2] =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;l=
dbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* }} Robe=
rtYu */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* No VGA =
Table now */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;b=
UpdateBBVGA =3D false;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
byBBVGA[0] =3D 0x1C;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;b=
updatebbvga =3D false;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;a=
bybbvga[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byLocalID &gt; REV_ID_VT3253_A1) {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEm=
bedded(priv, 0x04, 0x7F);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEm=
bedded(priv, 0x0D, 0x01);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bylocalid &gt; REV_ID_VT3253_A1) {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteem=
bedded(priv, 0x04, 0x7F);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteem=
bedded(priv, 0x0D, 0x01);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return bResult;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return bresult;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -2215,42 +2213,42 @@ bool BBbVT3253Init(struct vnt_private *pri=
v)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0void
<br>&gt; -BBvSetShortSlotTime(struct vnt_private *priv)
<br>&gt; +bbvsetshortslottime(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBRxConf =3D 0;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBVGA =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbrxconf =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbvga =3D 0;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0A, &amp;byBBR=
xConf); /* CR10 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0A, &amp;bybbr=
xconf); /* CR10 */
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (priv-&gt;bShortSlotTime)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (priv-&gt;bshortslottime)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 else
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* patch for 3253B0 Baseband with Card=
bus module */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0xE7, &amp;byBBV=
GA);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byBBVGA =3D=3D priv-&gt;abyBBVGA[0=
])
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0xE7, &amp;bybbv=
ga);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bybbvga =3D=3D priv-&gt;abybbvga[0=
])
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0A, byBBRxCon=
f); /* CR10 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0A, bybbrxcon=
f); /* CR10 */
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; -void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char =
byData)
<br>&gt; +void bbvsetvgagainoffset(struct vnt_private *priv, unsigned char =
bydata)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBRxConf =3D 0;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbrxconf =3D 0;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0xE7, byData);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0xE7, bydata);
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0A, &amp;byBBR=
xConf); /* CR10 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0A, &amp;bybbr=
xconf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* patch for 3253B0 Baseband with Card=
bus module */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byData =3D=3D priv-&gt;abyBBVGA[0]=
)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (priv-&gt;bShortSlotTime)
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bydata =3D=3D priv-&gt;abybbvga[0]=
)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (priv-&gt;bshortslottime)
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 else
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;byBBVGACurrent =3D byData;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0A, byBBRxCon=
f); /* CR10 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 |=3D 0x20; /* 0010 0000 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;bybbvgacurrent =3D bydata;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0A, bybbrxcon=
f); /* CR10 */
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -2258,7 +2256,7 @@ void BBvSetVGAGainOffset(struct vnt_private =
*priv,
<br>&gt; unsigned char byData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2266,12 +2264,12 @@ void BBvSetVGAGainOffset(struct vnt_privat=
e *priv,
<br>&gt; unsigned char byData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0void
<br>&gt; -BBvSoftwareReset(struct vnt_private *priv)
<br>&gt; +bbvsoftwarereset(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x50, 0x40);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x50, 0);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x9C, 0x01);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x9C, 0);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x50, 0x40);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x50, 0);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x9C, 0x01);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x9C, 0);
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -2279,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2287,13 +2285,13 @@ BBvSoftwareReset(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0void
<br>&gt; -BBvPowerSaveModeON(struct vnt_private *priv)
<br>&gt; +bbvpowersavemodeon(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byOrgData;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byorgdata;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0D, &amp;byOrg=
Data);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0byOrgData |=3D BIT(0);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, byOrgData=
);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0D, &amp;byorg=
data);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0byorgdata |=3D BIT(0);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, byorgdata=
);
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -2301,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =C2=A0 - I/O base address
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =C2=A0 - I/O base address
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2309,13 +2307,13 @@ BBvPowerSaveModeON(struct vnt_private *pri=
v)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0void
<br>&gt; -BBvPowerSaveModeOFF(struct vnt_private *priv)
<br>&gt; +bbvpowersavemodeoff(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byOrgData;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byorgdata;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0D, &amp;byOrg=
Data);
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0byOrgData &amp;=3D ~(BIT(0));
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, byOrgData=
);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0D, &amp;byorg=
data);
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0byorgdata &amp;=3D ~(BIT(0));
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, byorgdata=
);
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -2324,7 +2322,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv=
)
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 priv=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 - Device Structure
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byAntennaMode=C2=A0 =C2=A0 - Antenna Mode
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE=C2=A0 =C2=A0 - Antenna Mode
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2333,22 +2331,22 @@ BBvPowerSaveModeOFF(struct vnt_private *pr=
iv)
<br>&gt; =C2=A0 */
<br>&gt;
<br>&gt; =C2=A0void
<br>&gt; -BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAnt=
ennaMode)
<br>&gt; +bbvsettxantennamode(struct vnt_private *priv, unsigned char BYANT=
ENNAMODE)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBTxConf;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbtxconf;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x09, &amp;byBBT=
xConf); /* CR09 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byAntennaMode =3D=3D ANT_DIVERSITY=
) {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x09, &amp;bybbt=
xconf); /* CR09 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (BYANTENNAMODE =3D=3D ANT_DIVERSITY=
) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* bit 1 i=
s diversity */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf=
 |=3D 0x02;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_A)=
 {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf=
 |=3D 0x02;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_A)=
 {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* bit 2 i=
s ANTSEL */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf=
 &amp;=3D 0xF9; /* 1111 1001 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_B)=
 {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf=
 &amp;=3D 0xFD; /* 1111 1101 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBTxConf=
 |=3D 0x04;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf=
 &amp;=3D 0xF9; /* 1111 1001 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_B)=
 {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf=
 &amp;=3D 0xFD; /* 1111 1101 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbtxconf=
 |=3D 0x04;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x09, byBBTxCon=
f); /* CR09 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x09, bybbtxcon=
f); /* CR09 */
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -2357,7 +2355,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv=
, unsigned
<br>&gt; char byAntennaMode)
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 priv=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 - Device Structure
<br>&gt; - *=C2=A0 =C2=A0 =C2=A0 byAntennaMode=C2=A0 =C2=A0 - Antenna Mode
<br>&gt; + *=C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE=C2=A0 =C2=A0 - Antenna Mode
<br>&gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2366,25 +2364,25 @@ BBvSetTxAntennaMode(struct vnt_private *pr=
iv,
<br>&gt; unsigned char byAntennaMode)
<br>&gt; =C2=A0 */
<br>&gt;
<br>&gt; =C2=A0void
<br>&gt; -BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAnt=
ennaMode)
<br>&gt; +bbvsetrxantennamode(struct vnt_private *priv, unsigned char BYANT=
ENNAMODE)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBRxConf;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbrxconf;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbedded(priv, 0x0A, &amp;byBBR=
xConf); /* CR10 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byAntennaMode =3D=3D ANT_DIVERSITY=
) {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 |=3D 0x01;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembedded(priv, 0x0A, &amp;bybbr=
xconf); /* CR10 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (BYANTENNAMODE =3D=3D ANT_DIVERSITY=
) {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 |=3D 0x01;
<br>&gt;
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_A)=
 {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 &amp;=3D 0xFC; /* 1111 1100 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (byAntennaMode =3D=3D ANT_B)=
 {
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 &amp;=3D 0xFE; /* 1111 1110 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0byBBRxConf=
 |=3D 0x02;
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_A)=
 {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 &amp;=3D 0xFC; /* 1111 1100 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (BYANTENNAMODE =3D=3D ANT_B)=
 {
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 &amp;=3D 0xFE; /* 1111 1110 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bybbrxconf=
 |=3D 0x02;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0A, byBBRxCon=
f); /* CR10 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0A, bybbrxcon=
f); /* CR10 */
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; - * Description: BBvSetDeepSleep
<br>&gt; + * Description: bbvsetdeepsleep
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 *=C2=A0 In:
<br>&gt; @@ -2396,15 +2394,15 @@ BBvSetRxAntennaMode(struct vnt_private *pr=
iv,
<br>&gt; unsigned char byAntennaMode)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0void
<br>&gt; -BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID=
)
<br>&gt; +bbvsetdeepsleep(struct vnt_private *priv, unsigned char bylocalid=
)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0C, 0x17); /*=
 CR12 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, 0xB9); /*=
 CR13 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0C, 0x17); /*=
 CR12 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, 0xB9); /*=
 CR13 */
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0void
<br>&gt; -BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalI=
D)
<br>&gt; +bbvexitdeepsleep(struct vnt_private *priv, unsigned char bylocali=
d)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0C, 0x00); /*=
 CR12 */
<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, 0x01); /*=
 CR13 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0C, 0x00); /*=
 CR12 */
<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, 0x01); /*=
 CR13 */
<br>&gt; =C2=A0}
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"Zraoc5SpAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"Zraoc5SpAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/452c5458-c9c5-4a78-b153-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/452c5458-c9c5-4a78-b153-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/452c5458-c9c5-4a78-b153-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>452c5458-c9c5-4a78-b153-</a>
<br>&gt; 956f34946aef%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_186_1309537140.1475909875658--

------=_Part_185_408192470.1475909875656--

