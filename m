X-GM-THRID: 6338411449271975936
Date: Sat, 8 Oct 2016 02:33:18 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <67785f9a-cea9-4f96-a60b-f359aaf151f4@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610080900190.7750@hadrien>
References: <f446eb36-0b26-4c2c-840b-fa12785b88f0@googlegroups.com> <452c5458-c9c5-4a78-b153-956f34946aef@googlegroups.com> <alpine.DEB.2.10.1610070746070.3074@hadrien> <48b1a388-dae4-4f4b-8ead-c89ef0d7ca0c@googlegroups.com>
 <alpine.DEB.2.10.1610080900190.7750@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging:vt6655:Fix checkpatch
 issues.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_449_117045189.1475919198338"
X-Google-Token: EN764r8FNpOhDyRAtcQ0
X-Google-IP: 103.62.68.129

------=_Part_449_117045189.1475919198338
Content-Type: multipart/alternative; 
	boundary="----=_Part_450_956609087.1475919198341"

------=_Part_450_956609087.1475919198341
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, October 8, 2016 at 12:30:42 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Fri, 7 Oct 2016, Varsha Rao wrote: 
>
> > 
> > 
> > On Friday, October 7, 2016 at 11:18:05 AM UTC+5:30, Julia Lawall wrote: 
> >       There should also be a space after each : in the above subject 
> >       line. 
> > 
> >       The subject and the commit message don't say much about what you 
> >       have 
> >       done.  
> > 
> >     
> >     In the subject I have not mentioned much,since I made multiple 
> > changes.Also I have stated the errors and warnings.  
>
> Each patch should do only one thing, not multiple things.

 
    Will this patch be considered or do I have to start over again?
    For the next patch I will post only one thing at a time.

>
>
> julia 
>
> >   
> >        A fix could in general be done in many different ways.  Try to 
> >       say 
> >       what change you have made and why it is beneficial, and say this 
> >       as 
> >       concisely as possible. 
> > 
> >     
> >       I will implement these in the next patch. 
> > 
> > 
> > 
> >       julia 
> > 
> >       On Thu, 6 Oct 2016, rvars...@gmail.com wrote: 
> > 
> >       > 
> >       > This patch fixes checkpatch.pl issues. 
> >       > CamelCase issues solved and removed unnecessary lines. 
> >       > 
> >       > CHECK: Do not include the paragraph about writing to the Free 
> >       Software 
> >       > Foundation's mailing address from the sample GPL notice. The 
> >       FSF has changed 
> >       > addresses in the past, and may do so again. Linux already 
> >       includes a copy of 
> >       > the GPL. 
> >       > 
> >       > CHECK: Avoid CamelCase 
> >       > 
> >       > Signed-off-by: Varsha Rao <rvars...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/vt6655/baseband.c | 526 
> >       > +++++++++++++++++++------------------- 
> >       >  1 file changed, 262 insertions(+), 264 deletions(-) 
> >       > 
> >       > diff --git a/drivers/staging/vt6655/baseband.c 
> >       > b/drivers/staging/vt6655/baseband.c 
> >       > index 8798fdf..ef198c2 100644 
> >       > --- a/drivers/staging/vt6655/baseband.c 
> >       > +++ b/drivers/staging/vt6655/baseband.c 
> >       > @@ -13,8 +13,7 @@ 
> >       >   * GNU General Public License for more details. 
> >       >   * 
> >       >   * You should have received a copy of the GNU General Public 
> >       License along 
> >       > - * with this program;if not, write to the Free Software 
> >       Foundation, Inc., 
> >       > - * 51 Franklin Street, Fifth Floor, Boston, 
> MA02110-1301USA.[bmXRV8U_rvsrPro4DPGFB69kd64mPUlaHL87vQtq_GAuJjcmUkNXeaKyEx7h 
>
> >       vg1C5Tift0 
> >       > qXrd0-iJixautq_siUL9GltfUhIT6ggIHnlQ=w5000-h5000] 
> >       > 
> >       > - * 
> >       > + * with this program; 
> >       >   * 
> >       >   * File: baseband.c 
> >       >   * 
> >       > @@ -25,20 +24,20 @@ 
> >       >   * Date: Aug.22, 2002 
> >       >   * 
> >       >   * Functions: 
> >       > - *      BBuGetFrameTime        - Calculate data frame 
> >       transmitting time 
> >       > + *      BBUGETFRAMETIME        - Calculate data frame 
> >       transmitting time 
> >       >   *      BBvCaculateParameter   - Caculate PhyLength, 
> >       PhyService and Phy 
> >       > Signal 
> >       >   *                               parameter for baseband Tx 
> >       > - *      BBbReadEmbedded         - Embedded read baseband 
> >       register via MAC 
> >       > - *      BBbWriteEmbedded        - Embedded write baseband 
> >       register via MAC 
> >       > - *      BBbVT3253Init          - VIA VT3253 baseband chip 
> >       init code 
> >       > + *      bbbreadembedded         - Embedded read baseband 
> >       register via MAC 
> >       > + *      bbbwriteembedded        - Embedded write baseband 
> >       register via MAC 
> >       > + *      bbbvt3253init          - VIA VT3253 baseband chip 
> >       init code 
> >       >   * 
> >       >   * Revision History: 
> >       >   *      06-10-2003 Bryan YC Fan:  Re-write codes to support 
> >       VT3253 spec. 
> >       >   *      08-07-2003 Bryan YC Fan:  Add MAXIM2827/2825 and 
> >       RFMD2959 support. 
> >       > - *      08-26-2003 Kyle Hsu    :  Modify BBuGetFrameTime() 
> >       and 
> >       > + *      08-26-2003 Kyle Hsu    :  Modify BBUGETFRAMETIME() 
> >       and 
> >       >   *                               BBvCalculateParameter(). 
> >       >   *                                cancel the setting of 
> >       MAC_REG_SOFTPWRCTL 
> >       > on 
> >       > - *                               BBbVT3253Init(). 
> >       > + *                               bbbvt3253init(). 
> >       >   *                                Add the comments. 
> >       >   *      09-01-2003 Bryan YC Fan:  RF & BB tables updated. 
> >       >   *                                Modified BBvLoopbackOn & 
> >       > BBvLoopbackOff(). 
> >       > @@ -779,7 +778,7 @@ static const unsigned char 
> >       > BYVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = { 
> >       >  #define CB_VT3253B0_AGC_FOR_RFMD2959 195 
> >       >  /* For RFMD2959 */ 
> >       >  static 
> >       > -unsigned char 
> >       byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = { 
> >       > +unsigned char 
> >       BYVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = { 
> >       >         {0xF0, 0x00}, 
> >       >         {0xF1, 0x3E}, 
> >       >         {0xF0, 0x80}, 
> >       > @@ -980,7 +979,7 @@ unsigned char 
> >       > byVT3253B0_AGC4_RFMD2959[CB_VT3253B0_AGC_FOR_RFMD2959][2] = { 
> >       >  #define CB_VT3253B0_INIT_FOR_AIROHA2230 256 
> >       >  /* For AIROHA */ 
> >       >  static 
> >       > -unsigned char 
> >       byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = { 
> >       > +unsigned char 
> >       BYVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = { 
> >       >         {0x00, 0x31}, 
> >       >         {0x01, 0x00}, 
> >       >         {0x02, 0x00}, 
> >       > @@ -1241,7 +1240,7 @@ unsigned char 
> >       > byVT3253B0_AIROHA2230[CB_VT3253B0_INIT_FOR_AIROHA2230][2] = { 
> >       > 
> >       >  #define CB_VT3253B0_INIT_FOR_UW2451 256 
> >       >  /* For UW2451 */ 
> >       > -static unsigned char 
> >       byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = { 
> >       > +static unsigned char 
> >       BYVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = { 
> >       >         {0x00, 0x31}, 
> >       >         {0x01, 0x00}, 
> >       >         {0x02, 0x00}, 
> >       > @@ -1502,7 +1501,7 @@ static unsigned char 
> >       > byVT3253B0_UW2451[CB_VT3253B0_INIT_FOR_UW2451][2] = { 
> >       > 
> >       >  #define CB_VT3253B0_AGC 193 
> >       >  /* For AIROHA */ 
> >       > -static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = { 
> >       > +static unsigned char BYVT3253B0_AGC[CB_VT3253B0_AGC][2] = { 
> >       >         {0xF0, 0x00}, 
> >       >         {0xF1, 0x00}, 
> >       >         {0xF0, 0x80}, 
> >       > @@ -1698,7 +1697,7 @@ static unsigned char 
> >       > byVT3253B0_AGC[CB_VT3253B0_AGC][2] = { 
> >       >         {0xF0, 0x00}, 
> >       >  }; 
> >       > 
> >       > -static const unsigned short awcFrameTime[MAX_RATE] = { 
> >       > +static const unsigned short awcframetime[MAX_RATE] = { 
> >       >                 10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 
> >       216 
> >       >  }; 
> >       > 
> >       > @@ -1708,57 +1707,57 @@ static const unsigned short 
> >       awcFrameTime[MAX_RATE] = 
> >       > { 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > - *      byPreambleType  - Preamble Type 
> >       > - *      byPktType        - PK_TYPE_11A, PK_TYPE_11B, 
> >       PK_TYPE_11GB, 
> >       > PK_TYPE_11GA 
> >       > - *      cbFrameLength   - Baseband Type 
> >       > - *      wRate           - Tx Rate 
> >       > + *      bypreambletype  - Preamble Type 
> >       > + *      bypkttype        - PK_TYPE_11A, PK_TYPE_11B, 
> >       PK_TYPE_11GB, 
> >       > PK_TYPE_11GA 
> >       > + *      cbframelength   - Baseband Type 
> >       > + *      wrate           - Tx Rate 
> >       >   *  Out: 
> >       >   * 
> >       >   * Return Value: FrameTime 
> >       >   * 
> >       >   */ 
> >       >  unsigned int 
> >       > -BBuGetFrameTime( 
> >       > -       unsigned char byPreambleType, 
> >       > -       unsigned char byPktType, 
> >       > -       unsigned int cbFrameLength, 
> >       > -       unsigned short wRate 
> >       > +BBUGETFRAMETIME( 
> >       > +       unsigned char bypreambletype, 
> >       > +       unsigned char bypkttype, 
> >       > +       unsigned int cbframelength, 
> >       > +       unsigned short wrate 
> >       >  ) 
> >       >  { 
> >       > -       unsigned int uFrameTime; 
> >       > -       unsigned int uPreamble; 
> >       > -       unsigned int uTmp; 
> >       > -       unsigned int uRateIdx = (unsigned int)wRate; 
> >       > -       unsigned int uRate = 0; 
> >       > +       unsigned int uframetime; 
> >       > +       unsigned int upreamble; 
> >       > +       unsigned int utmp; 
> >       > +       unsigned int urateidx = (unsigned int)wrate; 
> >       > +       unsigned int urate = 0; 
> >       > 
> >       > -       if (uRateIdx > RATE_54M) 
> >       > +       if (urateidx > RATE_54M) 
> >       >                 return 0; 
> >       > 
> >       > -       uRate = (unsigned int)awcFrameTime[uRateIdx]; 
> >       > +       urate = (unsigned int)awcframetime[urateidx]; 
> >       > 
> >       > -       if (uRateIdx <= 3) {          /* CCK mode */ 
> >       > -               if (byPreambleType == 1) /* Short */ 
> >       > -                       uPreamble = 96; 
> >       > +       if (urateidx <= 3) {          /* CCK mode */ 
> >       > +               if (bypreambletype == 1) /* Short */ 
> >       > +                       upreamble = 96; 
> >       >                 else 
> >       > -                       uPreamble = 192; 
> >       > +                       upreamble = 192; 
> >       > 
> >       > -               uFrameTime = (cbFrameLength * 80) / uRate;  /* 
> >       ????? */ 
> >       > -               uTmp = (uFrameTime * uRate) / 80; 
> >       > -               if (cbFrameLength != uTmp) 
> >       > -                       uFrameTime++; 
> >       > +               uframetime = (cbframelength * 80) / urate;  /* 
> >       ????? */ 
> >       > +               utmp = (uframetime * urate) / 80; 
> >       > +               if (cbframelength != utmp) 
> >       > +                       uframetime++; 
> >       > 
> >       > -               return uPreamble + uFrameTime; 
> >       > +               return upreamble + uframetime; 
> >       >         } 
> >       > -       uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* 
> >       ???????? */ 
> >       > -       uTmp = ((uFrameTime * uRate) - 22) / 8; 
> >       > -       if (cbFrameLength != uTmp) 
> >       > -               uFrameTime++; 
> >       > +       uframetime = (cbframelength * 8 + 22) / urate; /* 
> >       ???????? */ 
> >       > +       utmp = ((uframetime * urate) - 22) / 8; 
> >       > +       if (cbframelength != utmp) 
> >       > +               uframetime++; 
> >       > 
> >       > -       uFrameTime = uFrameTime * 4;    /* ??????? */ 
> >       > -       if (byPktType != PK_TYPE_11A) 
> >       > -               uFrameTime += 6;     /* ?????? */ 
> >       > +       uframetime = uframetime * 4;    /* ??????? */ 
> >       > +       if (bypkttype != PK_TYPE_11A) 
> >       > +               uframetime += 6;     /* ?????? */ 
> >       > 
> >       > -       return 20 + uFrameTime; /* ?????? */ 
> >       > +       return 20 + uframetime; /* ?????? */ 
> >       >  } 
> >       > 
> >       >  /* 
> >       > @@ -1785,7 +1784,7 @@ void vnt_get_phy_field(struct 
> >       vnt_private *priv, u32 
> >       > frame_length, 
> >       >         u32 count = 0; 
> >       >         u32 tmp; 
> >       >         int ext_bit; 
> >       > -       u8 preamble_type = priv->byPreambleType; 
> >       > +       u8 preamble_type = priv->bypreambletype; 
> >       > 
> >       >         bit_count = frame_length * 8; 
> >       >         ext_bit = false; 
> >       > @@ -1915,35 +1914,35 @@ void vnt_get_phy_field(struct 
> >       vnt_private *priv, u32 
> >       > frame_length, 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > - *      dwIoBase    - I/O base address 
> >       > - *      byBBAddr    - address of register in Baseband 
> >       > + *      dwiobase    - I/O base address 
> >       > + *      bybbaddr    - address of register in Baseband 
> >       >   *  Out: 
> >       > - *      pbyData     - data read 
> >       > + *      pbydata     - data read 
> >       >   * 
> >       >   * Return Value: true if succeeded; false if failed. 
> >       >   * 
> >       >   */ 
> >       > -bool BBbReadEmbedded(struct vnt_private *priv, 
> >       > -                    unsigned char byBBAddr, unsigned char 
> >       *pbyData) 
> >       > +bool bbbreadembedded(struct vnt_private *priv, 
> >       > +                    unsigned char bybbaddr, unsigned char 
> >       *pbydata) 
> >       >  { 
> >       > -       void __iomem *dwIoBase = priv->PortOffset; 
> >       > +       void __iomem *dwiobase = priv->portoffset; 
> >       >         unsigned short ww; 
> >       > -       unsigned char byValue; 
> >       > +       unsigned char byvalue; 
> >       > 
> >       >         /* BB reg offset */ 
> >       > -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> >       > +       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr); 
> >       > 
> >       >         /* turn on REGR */ 
> >       > -       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, 
> >       BBREGCTL_REGR); 
> >       > +       macvregbitson(dwiobase, MAC_REG_BBREGCTL, 
> >       BBREGCTL_REGR); 
> >       >         /* W_MAX_TIMEOUT is the timeout period */ 
> >       >         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> >       > -               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, 
> >       &byValue); 
> >       > -               if (byValue & BBREGCTL_DONE) 
> >       > +               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, 
> >       &byvalue); 
> >       > +               if (byvalue & BBREGCTL_DONE) 
> >       >                         break; 
> >       >         } 
> >       > 
> >       >         /* get BB data */ 
> >       > -       VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData); 
> >       > +       vnsvinportb(dwiobase + MAC_REG_BBREGDATA, pbydata); 
> >       > 
> >       >         if (ww == W_MAX_TIMEOUT) { 
> >       >                 pr_debug(" DBG_PORT80(0x30)\n"); 
> >       > @@ -1957,33 +1956,33 @@ bool BBbReadEmbedded(struct 
> >       vnt_private *priv, 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > - *      dwIoBase    - I/O base address 
> >       > - *      byBBAddr    - address of register in Baseband 
> >       > - *      byData      - data to write 
> >       > + *      dwiobase    - I/O base address 
> >       > + *      bybbaddr    - address of register in Baseband 
> >       > + *      bydata      - data to write 
> >       >   *  Out: 
> >       >   *      none 
> >       >   * 
> >       >   * Return Value: true if succeeded; false if failed. 
> >       >   * 
> >       >   */ 
> >       > -bool BBbWriteEmbedded(struct vnt_private *priv, 
> >       > -                     unsigned char byBBAddr, unsigned char 
> >       byData) 
> >       > +bool bbbwriteembedded(struct vnt_private *priv, 
> >       > +                     unsigned char bybbaddr, unsigned char 
> >       bydata) 
> >       >  { 
> >       > -       void __iomem *dwIoBase = priv->PortOffset; 
> >       > +       void __iomem *dwiobase = priv->portoffset; 
> >       >         unsigned short ww; 
> >       > -       unsigned char byValue; 
> >       > +       unsigned char byvalue; 
> >       > 
> >       >         /* BB reg offset */ 
> >       > -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> >       > +       vnsvoutportb(dwiobase + MAC_REG_BBREGADR, bybbaddr); 
> >       >         /* set BB data */ 
> >       > -       VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData); 
> >       > +       vnsvoutportb(dwiobase + MAC_REG_BBREGDATA, bydata); 
> >       > 
> >       >         /* turn on BBREGCTL_REGW */ 
> >       > -       MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, 
> >       BBREGCTL_REGW); 
> >       > +       macvregbitson(dwiobase, MAC_REG_BBREGCTL, 
> >       BBREGCTL_REGW); 
> >       >         /* W_MAX_TIMEOUT is the timeout period */ 
> >       >         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> >       > -               VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, 
> >       &byValue); 
> >       > -               if (byValue & BBREGCTL_DONE) 
> >       > +               vnsvinportb(dwiobase + MAC_REG_BBREGCTL, 
> >       &byvalue); 
> >       > +               if (byvalue & BBREGCTL_DONE) 
> >       >                         break; 
> >       >         } 
> >       > 
> >       > @@ -1999,9 +1998,9 @@ bool BBbWriteEmbedded(struct vnt_private 
> >       *priv, 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > - *      dwIoBase    - I/O base address 
> >       > + *      dwiobase    - I/O base address 
> >       >   *      byRevId     - Revision ID 
> >       > - *      byRFType    - RF type 
> >       > + *      byrftype    - RF type 
> >       >   *  Out: 
> >       >   *      none 
> >       >   * 
> >       > @@ -2009,95 +2008,95 @@ bool BBbWriteEmbedded(struct 
> >       vnt_private *priv, 
> >       >   * 
> >       >   */ 
> >       > 
> >       > -bool BBbVT3253Init(struct vnt_private *priv) 
> >       > +bool bbbvt3253init(struct vnt_private *priv) 
> >       >  { 
> >       > -       bool bResult = true; 
> >       > +       bool bresult = true; 
> >       >         int        ii; 
> >       > -       void __iomem *dwIoBase = priv->PortOffset; 
> >       > -       unsigned char byRFType = priv->byRFType; 
> >       > -       unsigned char byLocalID = priv->byLocalID; 
> >       > +       void __iomem *dwiobase = priv->portoffset; 
> >       > +       unsigned char byrftype = priv->byrftype; 
> >       > +       unsigned char bylocalid = priv->bylocalid; 
> >       > 
> >       > -       if (byRFType == RF_RFMD2959) { 
> >       > -               if (byLocalID <= REV_ID_VT3253_A1) { 
> >       > +       if (byrftype == RF_RFMD2959) { 
> >       > +               if (bylocalid <= REV_ID_VT3253_A1) { 
> >       >                         for (ii = 0; ii < 
> >       CB_VT3253_INIT_FOR_RFMD; ii++) 
> >       > -                               bResult &= 
> >       BBbWriteEmbedded(priv, 
> >       > +                               bresult &= 
> >       bbbwriteembedded(priv, 
> >       >                                         
> >       BYVT3253INITTAB_RFMD[ii][0], 
> >       >                                         
> >       BYVT3253INITTAB_RFMD[ii][1]); 
> >       > 
> >       >                 } else { 
> >       >                         for (ii = 0; ii < 
> >       CB_VT3253B0_INIT_FOR_RFMD; ii++) 
> >       > -                               bResult &= 
> >       BBbWriteEmbedded(priv, 
> >       > +                               bresult &= 
> >       bbbwriteembedded(priv, 
> >       >                                         
> >       BYVT3253B0_RFMD[ii][0], 
> >       >                                         
> >       BYVT3253B0_RFMD[ii][1]); 
> >       > 
> >       >                         for (ii = 0; ii < 
> >       CB_VT3253B0_AGC_FOR_RFMD2959; 
> >       > ii++) 
> >       > -                               bResult &= 
> >       BBbWriteEmbedded(priv, 
> >       > -                                      
> >        byVT3253B0_AGC4_RFMD2959[ii][0], 
> >       > -                                      
> >        byVT3253B0_AGC4_RFMD2959[ii][1]); 
> >       > +                               bresult &= 
> >       bbbwriteembedded(priv, 
> >       > +                                      
> >        BYVT3253B0_AGC4_RFMD2959[ii][0], 
> >       > +                                      
> >        BYVT3253B0_AGC4_RFMD2959[ii][1]); 
> >       > 
> >       > -                       VNSvOutPortD(dwIoBase + 
> >       MAC_REG_ITRTMSET, 0x23); 
> >       > -                       MACvRegBitsOn(dwIoBase, 
> >       MAC_REG_PAPEDELAY, BIT(0)); 
> >       > +                       vnsvoutportd(dwiobase + 
> >       MAC_REG_ITRTMSET, 0x23); 
> >       > +                       macvregbitson(dwiobase, 
> >       MAC_REG_PAPEDELAY, BIT(0)); 
> >       >                 } 
> >       > -               priv->abyBBVGA[0] = 0x18; 
> >       > -               priv->abyBBVGA[1] = 0x0A; 
> >       > -               priv->abyBBVGA[2] = 0x0; 
> >       > -               priv->abyBBVGA[3] = 0x0; 
> >       > -               priv->ldBmThreshold[0] = -70; 
> >       > -               priv->ldBmThreshold[1] = -50; 
> >       > -               priv->ldBmThreshold[2] = 0; 
> >       > -               priv->ldBmThreshold[3] = 0; 
> >       > -       } else if ((byRFType == RF_AIROHA) || (byRFType == 
> >       RF_AL2230S)) { 
> >       > +               priv->abybbvga[0] = 0x18; 
> >       > +               priv->abybbvga[1] = 0x0A; 
> >       > +               priv->abybbvga[2] = 0x0; 
> >       > +               priv->abybbvga[3] = 0x0; 
> >       > +               priv->ldbmthreshold[0] = -70; 
> >       > +               priv->ldbmthreshold[1] = -50; 
> >       > +               priv->ldbmthreshold[2] = 0; 
> >       > +               priv->ldbmthreshold[3] = 0; 
> >       > +       } else if ((byrftype == RF_AIROHA) || (byrftype == 
> >       RF_AL2230S)) { 
> >       >                 for (ii = 0; ii < 
> >       CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AIROHA2230[ii][0], 
> >       > -                               byVT3253B0_AIROHA2230[ii][1]); 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AIROHA2230[ii][0], 
> >       > +                               BYVT3253B0_AIROHA2230[ii][1]); 
> >       > 
> >       >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AGC[ii][0], 
> >       > byVT3253B0_AGC[ii][1]); 
> >       > - 
> >       > -               priv->abyBBVGA[0] = 0x1C; 
> >       > -               priv->abyBBVGA[1] = 0x10; 
> >       > -               priv->abyBBVGA[2] = 0x0; 
> >       > -               priv->abyBBVGA[3] = 0x0; 
> >       > -               priv->ldBmThreshold[0] = -70; 
> >       > -               priv->ldBmThreshold[1] = -48; 
> >       > -               priv->ldBmThreshold[2] = 0; 
> >       > -               priv->ldBmThreshold[3] = 0; 
> >       > -       } else if (byRFType == RF_UW2451) { 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AGC[ii][0], 
> >       > BYVT3253B0_AGC[ii][1]); 
> >       > + 
> >       > +               priv->abybbvga[0] = 0x1C; 
> >       > +               priv->abybbvga[1] = 0x10; 
> >       > +               priv->abybbvga[2] = 0x0; 
> >       > +               priv->abybbvga[3] = 0x0; 
> >       > +               priv->ldbmthreshold[0] = -70; 
> >       > +               priv->ldbmthreshold[1] = -48; 
> >       > +               priv->ldbmthreshold[2] = 0; 
> >       > +               priv->ldbmthreshold[3] = 0; 
> >       > +       } else if (byrftype == RF_UW2451) { 
> >       >                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; 
> >       ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_UW2451[ii][0], 
> >       > -                               byVT3253B0_UW2451[ii][1]); 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_UW2451[ii][0], 
> >       > +                               BYVT3253B0_UW2451[ii][1]); 
> >       > 
> >       >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AGC[ii][0], 
> >       > -                               byVT3253B0_AGC[ii][1]); 
> >       > - 
> >       > -               VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 
> >       0x23); 
> >       > -               MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, 
> >       BIT(0)); 
> >       > - 
> >       > -               priv->abyBBVGA[0] = 0x14; 
> >       > -               priv->abyBBVGA[1] = 0x0A; 
> >       > -               priv->abyBBVGA[2] = 0x0; 
> >       > -               priv->abyBBVGA[3] = 0x0; 
> >       > -               priv->ldBmThreshold[0] = -60; 
> >       > -               priv->ldBmThreshold[1] = -50; 
> >       > -               priv->ldBmThreshold[2] = 0; 
> >       > -               priv->ldBmThreshold[3] = 0; 
> >       > -       } else if (byRFType == RF_UW2452) { 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AGC[ii][0], 
> >       > +                               BYVT3253B0_AGC[ii][1]); 
> >       > + 
> >       > +               vnsvoutportb(dwiobase + MAC_REG_ITRTMSET, 
> >       0x23); 
> >       > +               macvregbitson(dwiobase, MAC_REG_PAPEDELAY, 
> >       BIT(0)); 
> >       > + 
> >       > +               priv->abybbvga[0] = 0x14; 
> >       > +               priv->abybbvga[1] = 0x0A; 
> >       > +               priv->abybbvga[2] = 0x0; 
> >       > +               priv->abybbvga[3] = 0x0; 
> >       > +               priv->ldbmthreshold[0] = -60; 
> >       > +               priv->ldbmthreshold[1] = -50; 
> >       > +               priv->ldbmthreshold[2] = 0; 
> >       > +               priv->ldbmthreshold[3] = 0; 
> >       > +       } else if (byrftype == RF_UW2452) { 
> >       >                 for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; 
> >       ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_UW2451[ii][0], 
> >       > -                               byVT3253B0_UW2451[ii][1]); 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_UW2451[ii][0], 
> >       > +                               BYVT3253B0_UW2451[ii][1]); 
> >       > 
> >       >                 /* Init ANT B select, 
> >       >                  * TX Config CR09 = 0x61->0x45, 
> >       >                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, 
> >       ANT_B 
> >       > inverted) 
> >       >                  */ 
> >       > 
> >       > -               /*bResult &= 
> >       BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> >       > +               /*bresult &= 
> >       bbbwriteembedded(dwiobase,0x09,0x41);*/ 
> >       > 
> >       >                 /* Init ANT B select, 
> >       >                  * RX Config CR10 = 0x28->0x2A, 
> >       > @@ -2105,101 +2104,100 @@ bool BBbVT3253Init(struct 
> >       vnt_private *priv) 
> >       >                  * make the ANT_A, ANT_B inverted) 
> >       >                  */ 
> >       > 
> >       > -               /*bResult &= 
> >       BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> >       > +               /*bresult &= 
> >       bbbwriteembedded(dwiobase,0x0a,0x28);*/ 
> >       >                 /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >       > -               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> >       > +               bresult &= bbbwriteembedded(priv, 0xd7, 0x06); 
> >       > 
> >       >                 /* {{RobertYu:20050125, request by Jack */ 
> >       > -               bResult &= BBbWriteEmbedded(priv, 0x90, 0x20); 
> >       > -               bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb); 
> >       > +               bresult &= bbbwriteembedded(priv, 0x90, 0x20); 
> >       > +               bresult &= bbbwriteembedded(priv, 0x97, 0xeb); 
> >       >                 /* }} */ 
> >       > 
> >       >                 /* {{RobertYu:20050221, request by Jack */ 
> >       > -               bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00); 
> >       > -               bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30); 
> >       > +               bresult &= bbbwriteembedded(priv, 0xa6, 0x00); 
> >       > +               bresult &= bbbwriteembedded(priv, 0xa8, 0x30); 
> >       >                 /* }} */ 
> >       > -               bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58); 
> >       > +               bresult &= bbbwriteembedded(priv, 0xb0, 0x58); 
> >       > 
> >       >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AGC[ii][0], 
> >       > byVT3253B0_AGC[ii][1]); 
> >       > - 
> >       > -               priv->abyBBVGA[0] = 0x14; 
> >       > -               priv->abyBBVGA[1] = 0x0A; 
> >       > -               priv->abyBBVGA[2] = 0x0; 
> >       > -               priv->abyBBVGA[3] = 0x0; 
> >       > -               priv->ldBmThreshold[0] = -60; 
> >       > -               priv->ldBmThreshold[1] = -50; 
> >       > -               priv->ldBmThreshold[2] = 0; 
> >       > -               priv->ldBmThreshold[3] = 0; 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AGC[ii][0], 
> >       > BYVT3253B0_AGC[ii][1]); 
> >       > + 
> >       > +               priv->abybbvga[0] = 0x14; 
> >       > +               priv->abybbvga[1] = 0x0A; 
> >       > +               priv->abybbvga[2] = 0x0; 
> >       > +               priv->abybbvga[3] = 0x0; 
> >       > +               priv->ldbmthreshold[0] = -60; 
> >       > +               priv->ldbmthreshold[1] = -50; 
> >       > +               priv->ldbmthreshold[2] = 0; 
> >       > +               priv->ldbmthreshold[3] = 0; 
> >       >                 /* }} RobertYu */ 
> >       > 
> >       > -       } else if (byRFType == RF_VT3226) { 
> >       > +       } else if (byrftype == RF_VT3226) { 
> >       >                 for (ii = 0; ii < 
> >       CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AIROHA2230[ii][0], 
> >       > -                               byVT3253B0_AIROHA2230[ii][1]); 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AIROHA2230[ii][0], 
> >       > +                               BYVT3253B0_AIROHA2230[ii][1]); 
> >       > 
> >       >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AGC[ii][0], 
> >       > byVT3253B0_AGC[ii][1]); 
> >       > - 
> >       > -               priv->abyBBVGA[0] = 0x1C; 
> >       > -               priv->abyBBVGA[1] = 0x10; 
> >       > -               priv->abyBBVGA[2] = 0x0; 
> >       > -               priv->abyBBVGA[3] = 0x0; 
> >       > -               priv->ldBmThreshold[0] = -70; 
> >       > -               priv->ldBmThreshold[1] = -48; 
> >       > -               priv->ldBmThreshold[2] = 0; 
> >       > -               priv->ldBmThreshold[3] = 0; 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AGC[ii][0], 
> >       > BYVT3253B0_AGC[ii][1]); 
> >       > + 
> >       > +               priv->abybbvga[0] = 0x1C; 
> >       > +               priv->abybbvga[1] = 0x10; 
> >       > +               priv->abybbvga[2] = 0x0; 
> >       > +               priv->abybbvga[3] = 0x0; 
> >       > +               priv->ldbmthreshold[0] = -70; 
> >       > +               priv->ldbmthreshold[1] = -48; 
> >       > +               priv->ldbmthreshold[2] = 0; 
> >       > +               priv->ldbmthreshold[3] = 0; 
> >       >                 /* Fix VT3226 DFC system timing issue */ 
> >       > -               MACvSetRFLE_LatchBase(dwIoBase); 
> >       > +               MACVSETRFLE_LATCHBASE(dwiobase); 
> >       >                 /* {{ RobertYu: 20050104 */ 
> >       > -       } else if (byRFType == RF_AIROHA7230) { 
> >       > +       } else if (byrftype == RF_AIROHA7230) { 
> >       >                 for (ii = 0; ii < 
> >       CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AIROHA2230[ii][0], 
> >       > -                               byVT3253B0_AIROHA2230[ii][1]); 
> >       > - 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AIROHA2230[ii][0], 
> >       > +                               BYVT3253B0_AIROHA2230[ii][1]); 
> >       > 
> >       >                 /* {{ RobertYu:20050223, request by JerryChung 
> >       */ 
> >       >                 /* Init ANT B select,TX Config CR09 = 
> >       0x61->0x45, 
> >       >                  * 0x45->0x41(VC1/VC2 define, make the ANT_A, 
> >       ANT_B 
> >       > inverted) 
> >       >                  */ 
> >       > -               /*bResult &= 
> >       BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> >       > +               /*bresult &= 
> >       bbbwriteembedded(dwiobase,0x09,0x41);*/ 
> >       >                 /* Init ANT B select,RX Config CR10 = 
> >       0x28->0x2A, 
> >       >                  * 0x2A->0x28(VC1/VC2 define, make the ANT_A, 
> >       ANT_B 
> >       > inverted) 
> >       >                  */ 
> >       > -               /*bResult &= 
> >       BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> >       > +               /*bresult &= 
> >       bbbwriteembedded(dwiobase,0x0a,0x28);*/ 
> >       >                 /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >       > -               bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> >       > +               bresult &= bbbwriteembedded(priv, 0xd7, 0x06); 
> >       >                 /* }} */ 
> >       > 
> >       >                 for (ii = 0; ii < CB_VT3253B0_AGC; ii++) 
> >       > -                       bResult &= BBbWriteEmbedded(priv, 
> >       > -                               byVT3253B0_AGC[ii][0], 
> >       > byVT3253B0_AGC[ii][1]); 
> >       > - 
> >       > -               priv->abyBBVGA[0] = 0x1C; 
> >       > -               priv->abyBBVGA[1] = 0x10; 
> >       > -               priv->abyBBVGA[2] = 0x0; 
> >       > -               priv->abyBBVGA[3] = 0x0; 
> >       > -               priv->ldBmThreshold[0] = -70; 
> >       > -               priv->ldBmThreshold[1] = -48; 
> >       > -               priv->ldBmThreshold[2] = 0; 
> >       > -               priv->ldBmThreshold[3] = 0; 
> >       > +                       bresult &= bbbwriteembedded(priv, 
> >       > +                               BYVT3253B0_AGC[ii][0], 
> >       > BYVT3253B0_AGC[ii][1]); 
> >       > + 
> >       > +               priv->abybbvga[0] = 0x1C; 
> >       > +               priv->abybbvga[1] = 0x10; 
> >       > +               priv->abybbvga[2] = 0x0; 
> >       > +               priv->abybbvga[3] = 0x0; 
> >       > +               priv->ldbmthreshold[0] = -70; 
> >       > +               priv->ldbmthreshold[1] = -48; 
> >       > +               priv->ldbmthreshold[2] = 0; 
> >       > +               priv->ldbmthreshold[3] = 0; 
> >       >                 /* }} RobertYu */ 
> >       >         } else { 
> >       >                 /* No VGA Table now */ 
> >       > -               priv->bUpdateBBVGA = false; 
> >       > -               priv->abyBBVGA[0] = 0x1C; 
> >       > +               priv->bupdatebbvga = false; 
> >       > +               priv->abybbvga[0] = 0x1C; 
> >       >         } 
> >       > 
> >       > -       if (byLocalID > REV_ID_VT3253_A1) { 
> >       > -               BBbWriteEmbedded(priv, 0x04, 0x7F); 
> >       > -               BBbWriteEmbedded(priv, 0x0D, 0x01); 
> >       > +       if (bylocalid > REV_ID_VT3253_A1) { 
> >       > +               bbbwriteembedded(priv, 0x04, 0x7F); 
> >       > +               bbbwriteembedded(priv, 0x0D, 0x01); 
> >       >         } 
> >       > 
> >       > -       return bResult; 
> >       > +       return bresult; 
> >       >  } 
> >       > 
> >       >  /* 
> >       > @@ -2215,42 +2213,42 @@ bool BBbVT3253Init(struct vnt_private 
> >       *priv) 
> >       >   * 
> >       >   */ 
> >       >  void 
> >       > -BBvSetShortSlotTime(struct vnt_private *priv) 
> >       > +bbvsetshortslottime(struct vnt_private *priv) 
> >       >  { 
> >       > -       unsigned char byBBRxConf = 0; 
> >       > -       unsigned char byBBVGA = 0; 
> >       > +       unsigned char bybbrxconf = 0; 
> >       > +       unsigned char bybbvga = 0; 
> >       > 
> >       > -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */ 
> >       > +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */ 
> >       > 
> >       > -       if (priv->bShortSlotTime) 
> >       > -               byBBRxConf &= 0xDF; /* 1101 1111 */ 
> >       > +       if (priv->bshortslottime) 
> >       > +               bybbrxconf &= 0xDF; /* 1101 1111 */ 
> >       >         else 
> >       > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> >       > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> >       > 
> >       >         /* patch for 3253B0 Baseband with Cardbus module */ 
> >       > -       BBbReadEmbedded(priv, 0xE7, &byBBVGA); 
> >       > -       if (byBBVGA == priv->abyBBVGA[0]) 
> >       > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> >       > +       bbbreadembedded(priv, 0xE7, &bybbvga); 
> >       > +       if (bybbvga == priv->abybbvga[0]) 
> >       > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> >       > 
> >       > -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */ 
> >       > +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */ 
> >       >  } 
> >       > 
> >       > -void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned 
> >       char byData) 
> >       > +void bbvsetvgagainoffset(struct vnt_private *priv, unsigned 
> >       char bydata) 
> >       >  { 
> >       > -       unsigned char byBBRxConf = 0; 
> >       > +       unsigned char bybbrxconf = 0; 
> >       > 
> >       > -       BBbWriteEmbedded(priv, 0xE7, byData); 
> >       > +       bbbwriteembedded(priv, 0xE7, bydata); 
> >       > 
> >       > -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */ 
> >       > +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */ 
> >       >         /* patch for 3253B0 Baseband with Cardbus module */ 
> >       > -       if (byData == priv->abyBBVGA[0]) 
> >       > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> >       > -       else if (priv->bShortSlotTime) 
> >       > -               byBBRxConf &= 0xDF; /* 1101 1111 */ 
> >       > +       if (bydata == priv->abybbvga[0]) 
> >       > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> >       > +       else if (priv->bshortslottime) 
> >       > +               bybbrxconf &= 0xDF; /* 1101 1111 */ 
> >       >         else 
> >       > -               byBBRxConf |= 0x20; /* 0010 0000 */ 
> >       > -       priv->byBBVGACurrent = byData; 
> >       > -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */ 
> >       > +               bybbrxconf |= 0x20; /* 0010 0000 */ 
> >       > +       priv->bybbvgacurrent = bydata; 
> >       > +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */ 
> >       >  } 
> >       > 
> >       >  /* 
> >       > @@ -2258,7 +2256,7 @@ void BBvSetVGAGainOffset(struct 
> >       vnt_private *priv, 
> >       > unsigned char byData) 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > - *      dwIoBase    - I/O base address 
> >       > + *      dwiobase    - I/O base address 
> >       >   *  Out: 
> >       >   *      none 
> >       >   * 
> >       > @@ -2266,12 +2264,12 @@ void BBvSetVGAGainOffset(struct 
> >       vnt_private *priv, 
> >       > unsigned char byData) 
> >       >   * 
> >       >   */ 
> >       >  void 
> >       > -BBvSoftwareReset(struct vnt_private *priv) 
> >       > +bbvsoftwarereset(struct vnt_private *priv) 
> >       >  { 
> >       > -       BBbWriteEmbedded(priv, 0x50, 0x40); 
> >       > -       BBbWriteEmbedded(priv, 0x50, 0); 
> >       > -       BBbWriteEmbedded(priv, 0x9C, 0x01); 
> >       > -       BBbWriteEmbedded(priv, 0x9C, 0); 
> >       > +       bbbwriteembedded(priv, 0x50, 0x40); 
> >       > +       bbbwriteembedded(priv, 0x50, 0); 
> >       > +       bbbwriteembedded(priv, 0x9C, 0x01); 
> >       > +       bbbwriteembedded(priv, 0x9C, 0); 
> >       >  } 
> >       > 
> >       >  /* 
> >       > @@ -2279,7 +2277,7 @@ BBvSoftwareReset(struct vnt_private 
> >       *priv) 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > - *      dwIoBase    - I/O base address 
> >       > + *      dwiobase    - I/O base address 
> >       >   *  Out: 
> >       >   *      none 
> >       >   * 
> >       > @@ -2287,13 +2285,13 @@ BBvSoftwareReset(struct vnt_private 
> >       *priv) 
> >       >   * 
> >       >   */ 
> >       >  void 
> >       > -BBvPowerSaveModeON(struct vnt_private *priv) 
> >       > +bbvpowersavemodeon(struct vnt_private *priv) 
> >       >  { 
> >       > -       unsigned char byOrgData; 
> >       > +       unsigned char byorgdata; 
> >       > 
> >       > -       BBbReadEmbedded(priv, 0x0D, &byOrgData); 
> >       > -       byOrgData |= BIT(0); 
> >       > -       BBbWriteEmbedded(priv, 0x0D, byOrgData); 
> >       > +       bbbreadembedded(priv, 0x0D, &byorgdata); 
> >       > +       byorgdata |= BIT(0); 
> >       > +       bbbwriteembedded(priv, 0x0D, byorgdata); 
> >       >  } 
> >       > 
> >       >  /* 
> >       > @@ -2301,7 +2299,7 @@ BBvPowerSaveModeON(struct vnt_private 
> >       *priv) 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > - *      dwIoBase    - I/O base address 
> >       > + *      dwiobase    - I/O base address 
> >       >   *  Out: 
> >       >   *      none 
> >       >   * 
> >       > @@ -2309,13 +2307,13 @@ BBvPowerSaveModeON(struct vnt_private 
> >       *priv) 
> >       >   * 
> >       >   */ 
> >       >  void 
> >       > -BBvPowerSaveModeOFF(struct vnt_private *priv) 
> >       > +bbvpowersavemodeoff(struct vnt_private *priv) 
> >       >  { 
> >       > -       unsigned char byOrgData; 
> >       > +       unsigned char byorgdata; 
> >       > 
> >       > -       BBbReadEmbedded(priv, 0x0D, &byOrgData); 
> >       > -       byOrgData &= ~(BIT(0)); 
> >       > -       BBbWriteEmbedded(priv, 0x0D, byOrgData); 
> >       > +       bbbreadembedded(priv, 0x0D, &byorgdata); 
> >       > +       byorgdata &= ~(BIT(0)); 
> >       > +       bbbwriteembedded(priv, 0x0D, byorgdata); 
> >       >  } 
> >       > 
> >       >  /* 
> >       > @@ -2324,7 +2322,7 @@ BBvPowerSaveModeOFF(struct vnt_private 
> >       *priv) 
> >       >   * Parameters: 
> >       >   *  In: 
> >       >   *      priv          - Device Structure 
> >       > - *      byAntennaMode    - Antenna Mode 
> >       > + *      BYANTENNAMODE    - Antenna Mode 
> >       >   *  Out: 
> >       >   *      none 
> >       >   * 
> >       > @@ -2333,22 +2331,22 @@ BBvPowerSaveModeOFF(struct vnt_private 
> >       *priv) 
> >       >   */ 
> >       > 
> >       >  void 
> >       > -BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char 
> >       byAntennaMode) 
> >       > +bbvsettxantennamode(struct vnt_private *priv, unsigned char 
> >       BYANTENNAMODE) 
> >       >  { 
> >       > -       unsigned char byBBTxConf; 
> >       > +       unsigned char bybbtxconf; 
> >       > 
> >       > -       BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */ 
> >       > -       if (byAntennaMode == ANT_DIVERSITY) { 
> >       > +       bbbreadembedded(priv, 0x09, &bybbtxconf); /* CR09 */ 
> >       > +       if (BYANTENNAMODE == ANT_DIVERSITY) { 
> >       >                 /* bit 1 is diversity */ 
> >       > -               byBBTxConf |= 0x02; 
> >       > -       } else if (byAntennaMode == ANT_A) { 
> >       > +               bybbtxconf |= 0x02; 
> >       > +       } else if (BYANTENNAMODE == ANT_A) { 
> >       >                 /* bit 2 is ANTSEL */ 
> >       > -               byBBTxConf &= 0xF9; /* 1111 1001 */ 
> >       > -       } else if (byAntennaMode == ANT_B) { 
> >       > -               byBBTxConf &= 0xFD; /* 1111 1101 */ 
> >       > -               byBBTxConf |= 0x04; 
> >       > +               bybbtxconf &= 0xF9; /* 1111 1001 */ 
> >       > +       } else if (BYANTENNAMODE == ANT_B) { 
> >       > +               bybbtxconf &= 0xFD; /* 1111 1101 */ 
> >       > +               bybbtxconf |= 0x04; 
> >       >         } 
> >       > -       BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR09 */ 
> >       > +       bbbwriteembedded(priv, 0x09, bybbtxconf); /* CR09 */ 
> >       >  } 
> >       > 
> >       >  /* 
> >       > @@ -2357,7 +2355,7 @@ BBvSetTxAntennaMode(struct vnt_private 
> >       *priv, unsigned 
> >       > char byAntennaMode) 
> >       >   * Parameters: 
> >       >   *  In: 
> >       >   *      priv          - Device Structure 
> >       > - *      byAntennaMode    - Antenna Mode 
> >       > + *      BYANTENNAMODE    - Antenna Mode 
> >       >   *  Out: 
> >       >   *      none 
> >       >   * 
> >       > @@ -2366,25 +2364,25 @@ BBvSetTxAntennaMode(struct vnt_private 
> >       *priv, 
> >       > unsigned char byAntennaMode) 
> >       >   */ 
> >       > 
> >       >  void 
> >       > -BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char 
> >       byAntennaMode) 
> >       > +bbvsetrxantennamode(struct vnt_private *priv, unsigned char 
> >       BYANTENNAMODE) 
> >       >  { 
> >       > -       unsigned char byBBRxConf; 
> >       > +       unsigned char bybbrxconf; 
> >       > 
> >       > -       BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */ 
> >       > -       if (byAntennaMode == ANT_DIVERSITY) { 
> >       > -               byBBRxConf |= 0x01; 
> >       > +       bbbreadembedded(priv, 0x0A, &bybbrxconf); /* CR10 */ 
> >       > +       if (BYANTENNAMODE == ANT_DIVERSITY) { 
> >       > +               bybbrxconf |= 0x01; 
> >       > 
> >       > -       } else if (byAntennaMode == ANT_A) { 
> >       > -               byBBRxConf &= 0xFC; /* 1111 1100 */ 
> >       > -       } else if (byAntennaMode == ANT_B) { 
> >       > -               byBBRxConf &= 0xFE; /* 1111 1110 */ 
> >       > -               byBBRxConf |= 0x02; 
> >       > +       } else if (BYANTENNAMODE == ANT_A) { 
> >       > +               bybbrxconf &= 0xFC; /* 1111 1100 */ 
> >       > +       } else if (BYANTENNAMODE == ANT_B) { 
> >       > +               bybbrxconf &= 0xFE; /* 1111 1110 */ 
> >       > +               bybbrxconf |= 0x02; 
> >       >         } 
> >       > -       BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */ 
> >       > +       bbbwriteembedded(priv, 0x0A, bybbrxconf); /* CR10 */ 
> >       >  } 
> >       > 
> >       >  /* 
> >       > - * Description: BBvSetDeepSleep 
> >       > + * Description: bbvsetdeepsleep 
> >       >   * 
> >       >   * Parameters: 
> >       >   *  In: 
> >       > @@ -2396,15 +2394,15 @@ BBvSetRxAntennaMode(struct vnt_private 
> >       *priv, 
> >       > unsigned char byAntennaMode) 
> >       >   * 
> >       >   */ 
> >       >  void 
> >       > -BBvSetDeepSleep(struct vnt_private *priv, unsigned char 
> >       byLocalID) 
> >       > +bbvsetdeepsleep(struct vnt_private *priv, unsigned char 
> >       bylocalid) 
> >       >  { 
> >       > -       BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */ 
> >       > -       BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */ 
> >       > +       bbbwriteembedded(priv, 0x0C, 0x17); /* CR12 */ 
> >       > +       bbbwriteembedded(priv, 0x0D, 0xB9); /* CR13 */ 
> >       >  } 
> >       > 
> >       >  void 
> >       > -BBvExitDeepSleep(struct vnt_private *priv, unsigned char 
> >       byLocalID) 
> >       > +bbvexitdeepsleep(struct vnt_private *priv, unsigned char 
> >       bylocalid) 
> >       >  { 
> >       > -       BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */ 
> >       > -       BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */ 
> >       > +       bbbwriteembedded(priv, 0x0C, 0x00); /* CR12 */ 
> >       > +       bbbwriteembedded(priv, 0x...


------=_Part_450_956609087.1475919198341
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, October 8, 2016 at 12:30:42 PM UTC+5:=
30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Fri, 7 Oct 2016, Varsha Rao wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Friday, October 7, 2016 at 11:18:05 AM UTC+5:30, Julia Lawall w=
rote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 There should also be a space after each : in =
the above subject
<br>&gt; =C2=A0 =C2=A0 =C2=A0 line.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 The subject and the commit message don&#39;t =
say much about what you
<br>&gt; =C2=A0 =C2=A0 =C2=A0 have
<br>&gt; =C2=A0 =C2=A0 =C2=A0 done.=C2=A0
<br>&gt;
<br>&gt; =C2=A0 =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0 In the subject I have not mentioned much,since =
I made multiple
<br>&gt; changes.Also I have stated the errors and warnings.=C2=A0
<br>
<br>Each patch should do only one thing, not multiple things.</blockquote><=
div>=C2=A0<br>=C2=A0 =C2=A0 Will this patch be considered or do I have to s=
tart over again?<br>=C2=A0=C2=A0=C2=A0 For the next patch I will post only =
one thing at a time.<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>julia
<br>
<br>&gt; =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0A fix could in general be done in many =
different ways. =C2=A0Try to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 say
<br>&gt; =C2=A0 =C2=A0 =C2=A0 what change you have made and why it is benef=
icial, and say this
<br>&gt; =C2=A0 =C2=A0 =C2=A0 as
<br>&gt; =C2=A0 =C2=A0 =C2=A0 concisely as possible.
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0
<br>&gt; =C2=A0 =C2=A0=C2=A0=C2=A0 I will implement these in the next patch=
.
<br>&gt;
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Thu, 6 Oct 2016, <a>rvars...@gmail.com</a>=
 wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; This patch fixes <a href=3D"http://check=
patch.pl" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26s=
ntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" on=
click=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheck=
patch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mF=
ug&#39;;return true;">checkpatch.pl</a> issues.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; CamelCase issues solved and removed unne=
cessary lines.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; CHECK: Do not include the paragraph abou=
t writing to the Free
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Software
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Foundation&#39;s mailing address from th=
e sample GPL notice. The
<br>&gt; =C2=A0 =C2=A0 =C2=A0 FSF has changed
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; addresses in the past, and may do so aga=
in. Linux already
<br>&gt; =C2=A0 =C2=A0 =C2=A0 includes a copy of
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; the GPL.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; CHECK: Avoid CamelCase
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Varsha Rao &lt;<a>rvars..=
.@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/vt6655/<wbr>baseba=
nd.c | 526
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++++++++++++++++++-----------<wbr>-----=
---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 262 insertions(+),=
 264 deletions(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/vt6655/<wbr=
>baseband.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 8798fdf..ef198c2 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/vt6655/<wbr>baseba=
nd.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/vt6655/<wbr>baseba=
nd.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -13,8 +13,7 @@
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * GNU General Public License for =
more details.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * You should have received a copy=
 of the GNU General Public
<br>&gt; =C2=A0 =C2=A0 =C2=A0 License along
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - * with this program;if not, write to t=
he Free Software
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Foundation, Inc.,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - * 51 Franklin Street, Fifth Floor, Bos=
ton, MA02110-1301USA.[bmXRV8U_<wbr>rvsrPro4DPGFB69kd64mPUlaHL87vQ<wbr>tq_GA=
uJjcmUkNXeaKyEx7h
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vg1C5Tift0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; qXrd0-iJixautq_<wbr>siUL9GltfUhIT6ggIHnl=
Q=3Dw5000-<wbr>h5000]
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + * with this program;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * File: baseband.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -25,20 +24,20 @@
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Date: Aug.22, 2002
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Functions:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 BBuGetFrameTime=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Calculate data frame
<br>&gt; =C2=A0 =C2=A0 =C2=A0 transmitting time
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 BBUGETFRAMETIME=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Calculate data frame
<br>&gt; =C2=A0 =C2=A0 =C2=A0 transmitting time
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 BBvCaculate=
Parameter=C2=A0 =C2=A0- Caculate PhyLength,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 PhyService and Phy
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signal
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0parameter for baseband Tx
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 BBbReadEmbedded=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Embedded read baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 register via MAC
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Embedded write baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 register via MAC
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 BBbVT3253Init=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - VIA VT3253 baseband chip
<br>&gt; =C2=A0 =C2=A0 =C2=A0 init code
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bbbreadembedded=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Embedded read baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 register via MAC
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bbbwriteembedded=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Embedded write baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 register via MAC
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bbbvt3253init=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - VIA VT3253 baseband chip
<br>&gt; =C2=A0 =C2=A0 =C2=A0 init code
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Revision History:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 06-10-2003 =
Bryan YC Fan:=C2=A0 Re-write codes to support
<br>&gt; =C2=A0 =C2=A0 =C2=A0 VT3253 spec.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 08-07-2003 =
Bryan YC Fan:=C2=A0 Add MAXIM2827/2825 and
<br>&gt; =C2=A0 =C2=A0 =C2=A0 RFMD2959 support.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle =
Hsu=C2=A0 =C2=A0 :=C2=A0 Modify BBuGetFrameTime()
<br>&gt; =C2=A0 =C2=A0 =C2=A0 and
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 08-26-2003 Kyle =
Hsu=C2=A0 =C2=A0 :=C2=A0 Modify BBUGETFRAMETIME()
<br>&gt; =C2=A0 =C2=A0 =C2=A0 and
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0BBvCalculateParameter().
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 cancel the setting of
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MAC_REG_SOFTPWRCTL
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; on
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0BBbVT3253Init().
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0bbbvt3253init().
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Add the comments.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 09-01-2003 =
Bryan YC Fan:=C2=A0 RF &amp; BB tables updated.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Modified BBvLoopbackOn &amp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; BBvLoopbackOff().
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -779,7 +778,7 @@ static const unsigne=
d char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; BYVT3253B0_RFMD[CB_VT3253B0_<wbr>INIT_FO=
R_RFMD][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#define CB_VT3253B0_AGC_FOR_RFMD29=
59 195
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/* For RFMD2959 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0_AGC=
_FOR_RFMD2959][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B0_AGC=
_FOR_RFMD2959][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF1, 0x3E}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x80}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -980,7 +979,7 @@ unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_AGC4_RFMD2959[CB_<wbr>VT3253B=
0_AGC_FOR_RFMD2959][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#define CB_VT3253B0_INIT_FOR_<wbr>=
AIROHA2230 256
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/* For AIROHA */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_INIT_F=
OR_AIROHA2230][<wbr>2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_INIT_F=
OR_AIROHA2230][<wbr>2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x00, 0x31}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x01, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x02, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1241,7 +1240,7 @@ unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_AIROHA2230[CB_<wbr>VT3253B0_I=
NIT_FOR_AIROHA2230][<wbr>2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#define CB_VT3253B0_INIT_FOR_UW245=
1 256
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/* For UW2451 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -static unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_FOR_U=
W2451][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +static unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_FOR_U=
W2451][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x00, 0x31}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x01, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0x02, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1502,7 +1501,7 @@ static unsigned ch=
ar
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_UW2451[CB_VT3253B0_<wbr>INIT_=
FOR_UW2451][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#define CB_VT3253B0_AGC 193
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/* For AIROHA */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -static unsigned char byVT3253B0_AGC[CB_=
VT3253B0_<wbr>AGC][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +static unsigned char BYVT3253B0_AGC[CB_=
VT3253B0_<wbr>AGC][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF1, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x80}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1698,7 +1697,7 @@ static unsigned ch=
ar
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_AGC[CB_VT3253B0_<wbr>AGC][2] =
=3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {0xF0, 0x00}=
,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0};
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -static const unsigned short awcFrameTim=
e[MAX_RATE] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +static const unsigned short awcframetim=
e[MAX_RATE] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 216
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0};
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1708,57 +1707,57 @@ static const uns=
igned short
<br>&gt; =C2=A0 =C2=A0 =C2=A0 awcFrameTime[MAX_RATE] =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byPreambleType=
=C2=A0 - Preamble Type
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byPktType=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 - PK_TYPE_11A, PK_TYPE_11B,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 PK_TYPE_11GB,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; PK_TYPE_11GA
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 cbFrameLength=C2=
=A0 =C2=A0- Baseband Type
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 wRate=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Tx Rate
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bypreambletype=
=C2=A0 - Preamble Type
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bypkttype=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 - PK_TYPE_11A, PK_TYPE_11B,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 PK_TYPE_11GB,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; PK_TYPE_11GA
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 cbframelength=C2=
=A0 =C2=A0- Baseband Type
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 wrate=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Tx Rate
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Return Value: FrameTime
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0unsigned int
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBuGetFrameTime(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byPreambleType,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byPktType,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 cbFrameLength,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned sho=
rt wRate
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +BBUGETFRAMETIME(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bypreambletype,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bypkttype,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 cbframelength,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned sho=
rt wrate
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 uFrameTime;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 uPreamble;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 uTmp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 uRateIdx =3D (unsigned int)wRate;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 uRate =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 uframetime;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 upreamble;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 utmp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 urateidx =3D (unsigned int)wrate;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int=
 urate =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (uRateIdx=
 &gt; RATE_54M)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (urateidx=
 &gt; RATE_54M)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 return 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uRate =3D (u=
nsigned int)awcFrameTime[uRateIdx];
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0urate =3D (u=
nsigned int)awcframetime[urateidx];
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (uRateIdx=
 &lt;=3D 3) {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* CCK mode */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (byPreambleType =3D=3D 1) /* Short */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uPreamble =3D 96;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (urateidx=
 &lt;=3D 3) {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* CCK mode */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (bypreambletype =3D=3D 1) /* Short */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0upreamble =3D 96;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 else
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uPreamble =3D 192;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0upreamble =3D 192;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uFrameTime =3D (cbFrameLength * 80) / uRate;=C2=A0 /*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uTmp =3D (uFrameTime * uRate) / 80;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (cbFrameLength !=3D uTmp)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime++;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uframetime =3D (cbframelength * 80) / urate;=C2=A0 /*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0utmp =3D (uframetime * urate) / 80;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (cbframelength !=3D utmp)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime++;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return uPreamble + uFrameTime;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return upreamble + uframetime;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime =
=3D (cbFrameLength * 8 + 22) / uRate; /*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ???????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uTmp =3D ((u=
FrameTime * uRate) - 22) / 8;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbFrameL=
ength !=3D uTmp)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uFrameTime++;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime =
=3D (cbframelength * 8 + 22) / urate; /*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ???????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0utmp =3D ((u=
frametime * urate) - 22) / 8;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cbframel=
ength !=3D utmp)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uframetime++;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0uFrameTime =
=3D uFrameTime * 4;=C2=A0 =C2=A0 /* ??????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byPktTyp=
e !=3D PK_TYPE_11A)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uFrameTime +=3D 6;=C2=A0 =C2=A0 =C2=A0/* ?????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0uframetime =
=3D uframetime * 4;=C2=A0 =C2=A0 /* ??????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bypkttyp=
e !=3D PK_TYPE_11A)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uframetime +=3D 6;=C2=A0 =C2=A0 =C2=A0/* ?????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return 20 + =
uFrameTime; /* ?????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return 20 + =
uframetime; /* ?????? */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1785,7 +1784,7 @@ void vnt_get_phy_f=
ield(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vnt_private *priv, u32
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; frame_length,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 count =
=3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 tmp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int ext_bit;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 preamble_=
type =3D priv-&gt;byPreambleType;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 preamble_=
type =3D priv-&gt;bypreambletype;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 bit_count =
=3D frame_length * 8;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ext_bit =3D =
false;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1915,35 +1914,35 @@ void vnt_get_phy=
_field(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vnt_private *priv, u32
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; frame_length,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =
=C2=A0 - address of register in Baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bybbaddr=C2=A0 =
=C2=A0 - address of register in Baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 pbyData=C2=A0 =
=C2=A0 =C2=A0- data read
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 pbydata=C2=A0 =
=C2=A0 =C2=A0- data read
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Return Value: true if succeeded=
; false if failed.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -bool BBbReadEmbedded(struct vnt_private=
 *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char byBBAddr, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *pbyData)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bool bbbreadembedded(struct vnt_private=
 *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char bybbaddr, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *pbydata)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem=
 *dwIoBase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem=
 *dwiobase =3D priv-&gt;portoffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned sho=
rt ww;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byValue;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byvalue;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg of=
fset */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB=
(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb=
(dwiobase + MAC_REG_BBREGADR, bybbaddr);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on R=
EGR */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsO=
n(dwIoBase, MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBREGCTL_REGR);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitso=
n(dwiobase, MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBREGCTL_REGR);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &amp;byValue);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0vnsvinportb(dwiobase + MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &amp;byvalue);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (byvalue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get BB da=
ta */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvInPortB(=
dwIoBase + MAC_REG_BBREGDATA, pbyData);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvinportb(=
dwiobase + MAC_REG_BBREGDATA, pbydata);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ww =3D=
=3D W_MAX_TIMEOUT) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 pr_debug(&quot; DBG_PORT80(0x30)\n&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1957,33 +1956,33 @@ bool BBbReadEmbe=
dded(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vnt_private *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byBBAddr=C2=A0 =
=C2=A0 - address of register in Baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byData=C2=A0 =C2=
=A0 =C2=A0 - data to write
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bybbaddr=C2=A0 =
=C2=A0 - address of register in Baseband
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 bydata=C2=A0 =C2=
=A0 =C2=A0 - data to write
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Return Value: true if succeeded=
; false if failed.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -bool BBbWriteEmbedded(struct vnt_privat=
e *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBBAddr, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byData)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bool bbbwriteembedded(struct vnt_privat=
e *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char bybbaddr, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bydata)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem=
 *dwIoBase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem=
 *dwiobase =3D priv-&gt;portoffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned sho=
rt ww;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byValue;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byvalue;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* BB reg of=
fset */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB=
(dwIoBase + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb=
(dwiobase + MAC_REG_BBREGADR, bybbaddr);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* set BB da=
ta */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortB=
(dwIoBase + MAC_REG_BBREGDATA, byData);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportb=
(dwiobase + MAC_REG_BBREGDATA, bydata);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* turn on B=
BREGCTL_REGW */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsO=
n(dwIoBase, MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBREGCTL_REGW);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitso=
n(dwiobase, MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBREGCTL_REGW);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &amp;byValue);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0vnsvinportb(dwiobase + MAC_REG_BBREGCTL,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &amp;byvalue);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (byvalue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1999,9 +1998,9 @@ bool BBbWriteEmbed=
ded(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 byRevId=C2=
=A0 =C2=A0 =C2=A0- Revision ID
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byRFType=C2=A0 =
=C2=A0 - RF type
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 byrftype=C2=A0 =
=C2=A0 - RF type
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2009,95 +2008,95 @@ bool BBbWriteEmb=
edded(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vnt_private *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -bool BBbVT3253Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bool bbbvt3253init(struct vnt_private *=
priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0bool bResult=
 =3D true;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bool bresult=
 =3D true;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ii;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem=
 *dwIoBase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byRFType =3D priv-&gt;byRFType;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byLocalID =3D priv-&gt;byLocalID;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0void __iomem=
 *dwiobase =3D priv-&gt;portoffset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byrftype =3D priv-&gt;byrftype;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bylocalid =3D priv-&gt;bylocalid;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byRFType=
 =3D=3D RF_RFMD2959) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (byLocalID &lt;=3D REV_ID_VT3253_A1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byrftype=
 =3D=3D RF_RFMD2959) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (bylocalid &lt;=3D REV_ID_VT3253_A1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CB_VT3253_INIT_FOR_RFMD; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bR=
esult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
esult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bbbwriteembedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYVT3253INITTAB_RFMD[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYVT3253INITTAB_RFMD[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 } else {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CB_VT3253B0_INIT_FOR_RFMD; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bR=
esult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
esult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bbbwriteembedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYVT3253B0_RFMD[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYVT3253B0_RFMD[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CB_VT3253B0_AGC_FOR_RFMD2959;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bR=
esult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC4_RFMD2959[ii][<wbr>0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0byVT3253B0_AGC4_RFMD2959[ii][<wbr>1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
esult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bbbwriteembedded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC4_RFMD2959[ii][<wbr>0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0BYVT3253B0_AGC4_RFMD2959[ii][<wbr>1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VNSvOutPortD(dwIoBase +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MAC_REG_ITRTMSET, 0x23);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vnsvoutportd(dwiobase +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MAC_REG_ITRTMSET, 0x23);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0macvregbitson(dwiobase,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0] =3D 0x18;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1] =3D 0x0A;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[1] =3D -50;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if ((=
byRFType =3D=3D RF_AIROHA) || (byRFType =3D=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 RF_AL2230S)) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0] =3D 0x18;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1] =3D 0x0A;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[1] =3D -50;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if ((=
byrftype =3D=3D RF_AIROHA) || (byrftype =3D=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 RF_AL2230S)) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AIROHA2230[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AIROHA2230[ii][1])<wbr>;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AIROHA2230[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AIROHA2230[ii][1])<wbr>;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1] =3D 0x10;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[1] =3D -48;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yRFType =3D=3D RF_UW2451) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1] =3D 0x10;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[1] =3D -48;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yrftype =3D=3D RF_UW2451) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_INIT_FOR_UW2451;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_UW2451[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_UW2451[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_UW2451[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_UW2451[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0x23);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BIT(0));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0] =3D 0x14;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1] =3D 0x0A;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[0] =3D -60;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[1] =3D -50;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yRFType =3D=3D RF_UW2452) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0vnsvoutportb(dwiobase + MAC_REG_ITRTMSET,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0x23);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0macvregbitson(dwiobase, MAC_REG_PAPEDELAY,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BIT(0));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0] =3D 0x14;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1] =3D 0x0A;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[0] =3D -60;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[1] =3D -50;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yrftype =3D=3D RF_UW2452) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_INIT_FOR_UW2451;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_UW2451[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_UW2451[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_UW2451[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_UW2451[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Init ANT B select,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0* TX Config CR09 =3D 0x61-&gt;0x45,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0* 0x45-&gt;0x41(VC1/VC2 define, make the ANT_A,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ANT_B
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bResult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bresult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bbbwriteembedded(dwiobase,<wbr>0x09,0x41);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Init ANT B select,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0* RX Config CR10 =3D 0x28-&gt;0x2A,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2105,101 +2104,100 @@ bool BBbVT3253=
Init(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vnt_private *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0* make the ANT_A, ANT_B inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bResult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bresult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bbbwriteembedded(dwiobase,<wbr>0x0a,0x28);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Select VC1/VC2, CR215 =3D 0x02-&gt;0x06 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv, 0xd7, 0x06);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv, 0xd7, 0x06);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* {{RobertYu:20050125, request by Jack */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv, 0x90, 0x20);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv, 0x97, 0xeb);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv, 0x90, 0x20);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv, 0x97, 0xeb);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* }} */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* {{RobertYu:20050221, request by Jack */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv, 0xa6, 0x00);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv, 0xa8, 0x30);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv, 0xa6, 0x00);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv, 0xa8, 0x30);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* }} */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv, 0xb0, 0x58);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv, 0xb0, 0x58);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0] =3D 0x14;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1] =3D 0x0A;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[0] =3D -60;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[1] =3D -50;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0] =3D 0x14;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1] =3D 0x0A;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[0] =3D -60;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[1] =3D -50;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* }} RobertYu */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yRFType =3D=3D RF_VT3226) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yrftype =3D=3D RF_VT3226) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AIROHA2230[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AIROHA2230[ii][1])<wbr>;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AIROHA2230[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AIROHA2230[ii][1])<wbr>;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1] =3D 0x10;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[1] =3D -48;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1] =3D 0x10;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[1] =3D -48;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Fix VT3226 DFC system timing issue */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0MACvSetRFLE_LatchBase(<wbr>dwIoBase);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0MACVSETRFLE_LATCHBASE(<wbr>dwiobase);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* {{ RobertYu: 20050104 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yRFType =3D=3D RF_AIROHA7230) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yrftype =3D=3D RF_AIROHA7230) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CB_VT3253B0_INIT_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AIROHA2230[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AIROHA2230[ii][1])<wbr>;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AIROHA2230[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AIROHA2230[ii][1])<wbr>;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* {{ RobertYu:20050223, request by JerryChung
<br>&gt; =C2=A0 =C2=A0 =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Init ANT B select,TX Config CR09 =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0x61-&gt;0x45,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0* 0x45-&gt;0x41(VC1/VC2 define, make the ANT_A,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ANT_B
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bResult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded(dwIoBase,<wbr>0x09,0x41);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bresult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bbbwriteembedded(dwiobase,<wbr>0x09,0x41);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Init ANT B select,RX Config CR10 =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0x28-&gt;0x2A,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0* 0x2A-&gt;0x28(VC1/VC2 define, make the ANT_A,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ANT_B
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; inverted)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bResult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BBbWriteEmbedded(dwIoBase,<wbr>0x0a,0x28);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/*bresult &amp;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bbbwriteembedded(dwiobase,<wbr>0x0a,0x28);*/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Select VC1/VC2, CR215 =3D 0x02-&gt;0x06 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbedded(priv, 0xd7, 0x06);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembedded(priv, 0xd7, 0x06);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* }} */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; CB_VT3253B0_AGC; ii++)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bResult &amp;=3D BBbWriteEmbed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0by=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; byVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[1] =3D 0x10;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[1] =3D -48;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bresult &amp;=3D bbbwriteembed=
ded(priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BY=
VT3253B0_AGC[ii][0],
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; BYVT3253B0_AGC[ii][1]);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[1] =3D 0x10;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[2] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[3] =3D 0x0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[0] =3D -70;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[1] =3D -48;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[2] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;ldbmthreshold[3] =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* }} RobertYu */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* No VGA Table now */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;bUpdateBBVGA =3D false;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abyBBVGA[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;bupdatebbvga =3D false;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;abybbvga[0] =3D 0x1C;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byLocalI=
D &gt; REV_ID_VT3253_A1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x04, 0x7F);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0BBbWriteEmbedded(priv, 0x0D, 0x01);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bylocali=
d &gt; REV_ID_VT3253_A1) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x04, 0x7F);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bbbwriteembedded(priv, 0x0D, 0x01);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return bResu=
lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return bresu=
lt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2215,42 +2213,42 @@ bool BBbVT3253In=
it(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvSetShortSlotTime(struct vnt_private =
*priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvsetshortslottime(struct vnt_private =
*priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byBBRxConf =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byBBVGA =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bybbrxconf =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bybbvga =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbed=
ded(priv, 0x0A, &amp;byBBRxConf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembed=
ded(priv, 0x0A, &amp;bybbrxconf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (priv-&gt=
;bShortSlotTime)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (priv-&gt=
;bshortslottime)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 else
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* patch for=
 3253B0 Baseband with Cardbus module */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbed=
ded(priv, 0xE7, &amp;byBBVGA);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byBBVGA =
=3D=3D priv-&gt;abyBBVGA[0])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembed=
ded(priv, 0xE7, &amp;bybbvga);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bybbvga =
=3D=3D priv-&gt;abybbvga[0])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0A, byBBRxConf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0A, bybbrxconf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -void BBvSetVGAGainOffset(struct vnt_pri=
vate *priv, unsigned
<br>&gt; =C2=A0 =C2=A0 =C2=A0 char byData)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +void bbvsetvgagainoffset(struct vnt_pri=
vate *priv, unsigned
<br>&gt; =C2=A0 =C2=A0 =C2=A0 char bydata)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byBBRxConf =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bybbrxconf =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0xE7, byData);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0xE7, bydata);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbed=
ded(priv, 0x0A, &amp;byBBRxConf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembed=
ded(priv, 0x0A, &amp;bybbrxconf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* patch for=
 3253B0 Baseband with Cardbus module */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byData =
=3D=3D priv-&gt;abyBBVGA[0])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (pri=
v-&gt;bShortSlotTime)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bydata =
=3D=3D priv-&gt;abybbvga[0])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (pri=
v-&gt;bshortslottime)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D 0xDF; /* 1101 1111 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 else
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;byB=
BVGACurrent =3D byData;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0A, byBBRxConf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x20; /* 0010 0000 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;byb=
bvgacurrent =3D bydata;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0A, bybbrxconf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2258,7 +2256,7 @@ void BBvSetVGAGain=
Offset(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vnt_private *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; unsigned char byData)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2266,12 +2264,12 @@ void BBvSetVGAGa=
inOffset(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 vnt_private *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; unsigned char byData)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvSoftwareReset(struct vnt_private *pr=
iv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvsoftwarereset(struct vnt_private *pr=
iv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x50, 0x40);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x50, 0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x9C, 0x01);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x9C, 0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x50, 0x40);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x50, 0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x9C, 0x01);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x9C, 0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2279,7 +2277,7 @@ BBvSoftwareReset(s=
truct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2287,13 +2285,13 @@ BBvSoftwareReset=
(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvPowerSaveModeON(struct vnt_private *=
priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvpowersavemodeon(struct vnt_private *=
priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byOrgData;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byorgdata;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbed=
ded(priv, 0x0D, &amp;byOrgData);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0byOrgData |=
=3D BIT(0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0D, byOrgData);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembed=
ded(priv, 0x0D, &amp;byorgdata);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0byorgdata |=
=3D BIT(0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0D, byorgdata);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2301,7 +2299,7 @@ BBvPowerSaveModeON=
(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 dwIoBase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 dwiobase=C2=A0 =
=C2=A0 - I/O base address
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2309,13 +2307,13 @@ BBvPowerSaveMode=
ON(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvPowerSaveModeOFF(struct vnt_private =
*priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvpowersavemodeoff(struct vnt_private =
*priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byOrgData;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byorgdata;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbed=
ded(priv, 0x0D, &amp;byOrgData);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0byOrgData &a=
mp;=3D ~(BIT(0));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0D, byOrgData);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembed=
ded(priv, 0x0D, &amp;byorgdata);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0byorgdata &a=
mp;=3D ~(BIT(0));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0D, byorgdata);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2324,7 +2322,7 @@ BBvPowerSaveModeOF=
F(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 priv=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Device Structure
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byAntennaMode=C2=
=A0 =C2=A0 - Antenna Mode
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE=C2=
=A0 =C2=A0 - Antenna Mode
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2333,22 +2331,22 @@ BBvPowerSaveMode=
OFF(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvSetTxAntennaMode(struct vnt_private =
*priv, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byAntennaMode)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvsettxantennamode(struct vnt_private =
*priv, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byBBTxConf;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bybbtxconf;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbed=
ded(priv, 0x09, &amp;byBBTxConf); /* CR09 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byAntenn=
aMode =3D=3D ANT_DIVERSITY) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembed=
ded(priv, 0x09, &amp;bybbtxconf); /* CR09 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (BYANTENN=
AMODE =3D=3D ANT_DIVERSITY) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* bit 1 is diversity */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBTxConf |=3D 0x02;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yAntennaMode =3D=3D ANT_A) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbtxconf |=3D 0x02;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (B=
YANTENNAMODE =3D=3D ANT_A) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* bit 2 is ANTSEL */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBTxConf &amp;=3D 0xF9; /* 1111 1001 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yAntennaMode =3D=3D ANT_B) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBTxConf &amp;=3D 0xFD; /* 1111 1101 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBTxConf |=3D 0x04;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbtxconf &amp;=3D 0xF9; /* 1111 1001 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (B=
YANTENNAMODE =3D=3D ANT_B) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbtxconf &amp;=3D 0xFD; /* 1111 1101 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbtxconf |=3D 0x04;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x09, byBBTxConf); /* CR09 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x09, bybbtxconf); /* CR09 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2357,7 +2355,7 @@ BBvSetTxAntennaMod=
e(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv, unsigned
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; char byAntennaMode)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 priv=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Device Structure
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - *=C2=A0 =C2=A0 =C2=A0 byAntennaMode=C2=
=A0 =C2=A0 - Antenna Mode
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + *=C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE=C2=
=A0 =C2=A0 - Antenna Mode
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 Out:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 =C2=A0 =C2=A0 none
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2366,25 +2364,25 @@ BBvSetTxAntennaM=
ode(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; unsigned char byAntennaMode)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvSetRxAntennaMode(struct vnt_private =
*priv, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byAntennaMode)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvsetrxantennamode(struct vnt_private =
*priv, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 BYANTENNAMODE)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r byBBRxConf;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned cha=
r bybbrxconf;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbReadEmbed=
ded(priv, 0x0A, &amp;byBBRxConf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (byAntenn=
aMode =3D=3D ANT_DIVERSITY) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x01;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbreadembed=
ded(priv, 0x0A, &amp;bybbrxconf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (BYANTENN=
AMODE =3D=3D ANT_DIVERSITY) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x01;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yAntennaMode =3D=3D ANT_A) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D 0xFC; /* 1111 1100 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (b=
yAntennaMode =3D=3D ANT_B) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf &amp;=3D 0xFE; /* 1111 1110 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0byBBRxConf |=3D 0x02;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (B=
YANTENNAMODE =3D=3D ANT_A) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D 0xFC; /* 1111 1100 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (B=
YANTENNAMODE =3D=3D ANT_B) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf &amp;=3D 0xFE; /* 1111 1110 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0bybbrxconf |=3D 0x02;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0A, byBBRxConf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0A, bybbrxconf); /* CR10 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; - * Description: BBvSetDeepSleep
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; + * Description: bbvsetdeepsleep
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *=C2=A0 In:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2396,15 +2394,15 @@ BBvSetRxAntennaM=
ode(struct vnt_private
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *priv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; unsigned char byAntennaMode)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvSetDeepSleep(struct vnt_private *pri=
v, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byLocalID)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvsetdeepsleep(struct vnt_private *pri=
v, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bylocalid)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0C, 0x17); /* CR12 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0D, 0xB9); /* CR13 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0C, 0x17); /* CR12 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0D, 0xB9); /* CR13 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -BBvExitDeepSleep(struct vnt_private *pr=
iv, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 byLocalID)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +bbvexitdeepsleep(struct vnt_private *pr=
iv, unsigned char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 bylocalid)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0C, 0x00); /* CR12 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0BBbWriteEmbe=
dded(priv, 0x0D, 0x01); /* CR13 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x0C, 0x00); /* CR12 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bbbwriteembe=
dded(priv, 0x...</blockquote></div>
------=_Part_450_956609087.1475919198341--

------=_Part_449_117045189.1475919198338--

