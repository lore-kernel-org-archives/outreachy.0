X-GM-THRID: 6339138687062769664
Date: Sat, 8 Oct 2016 11:19:19 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Message-Id: <c231f679-8256-4911-b2dc-30526c93102c@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610081936330.3259@hadrien>
References: <20161008165532.GA26251@euri>
 <alpine.DEB.2.10.1610081936330.3259@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Replace dwIoBase by
 iobase
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4462_1538692348.1475950760081"
X-Google-Token: EKfx5L8Fp6xM0FPOlGQ0
X-Google-IP: 103.62.68.129

------=_Part_4462_1538692348.1475950760081
Content-Type: multipart/alternative; 
	boundary="----=_Part_4463_1815233459.1475950760089"

------=_Part_4463_1815233459.1475950760089
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

  
  I will make the changes.Thanks for your reply.

On Saturday, October 8, 2016 at 11:07:41 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 8 Oct 2016, Varsha Rao wrote: 
>
> > In this patch dwIoBase is renamed as iobase.This is done to fix the 
> checkpatch issue of CamelCase. 
>
> Put at least one space after a period.  Limit the commit message line 
> length to around 70 characters. 
>
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/vt6655/baseband.c |  52 +++--- 
> >  drivers/staging/vt6655/baseband.h |   8 +- 
> >  drivers/staging/vt6655/card.c     |  30 ++-- 
> >  drivers/staging/vt6655/mac.h      | 322 
> +++++++++++++++++++------------------- 
> >  drivers/staging/vt6655/rf.c       |  64 ++++---- 
> >  drivers/staging/vt6655/srom.c     |  32 ++-- 
> >  drivers/staging/vt6655/srom.h     |   6 +- 
> >  7 files changed, 257 insertions(+), 257 deletions(-) 
> > 
> > diff --git a/drivers/staging/vt6655/baseband.c 
> b/drivers/staging/vt6655/baseband.c 
> > index de503a3..e739ecc 100644 
> > --- a/drivers/staging/vt6655/baseband.c 
> > +++ b/drivers/staging/vt6655/baseband.c 
> > @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 frame_length, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
>
> You should preserve the alignment of the different comments. 
>
> julia 
>
> >   *      byBBAddr    - address of register in Baseband 
> >   *  Out: 
> >   *      pbyData     - data read 
> > @@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 frame_length, 
> >  bool BBbReadEmbedded(struct vnt_private *priv, 
> >                       unsigned char byBBAddr, unsigned char *pbyData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byValue; 
> > 
> >          /* BB reg offset */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr); 
> > 
> >          /* turn on REGR */ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> > +        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > +                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue); 
> >                  if (byValue & BBREGCTL_DONE) 
> >                          break; 
> >          } 
> > 
> >          /* get BB data */ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData); 
> > +        VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData); 
> > 
> >          if (ww == W_MAX_TIMEOUT) { 
> >                  pr_debug(" DBG_PORT80(0x30)\n"); 
> > @@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      byBBAddr    - address of register in Baseband 
> >   *      byData      - data to write 
> >   *  Out: 
> > @@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *priv, 
> >  bool BBbWriteEmbedded(struct vnt_private *priv, 
> >                        unsigned char byBBAddr, unsigned char byData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byValue; 
> > 
> >          /* BB reg offset */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr); 
> >          /* set BB data */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData); 
> > 
> >          /* turn on BBREGCTL_REGW */ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> > +        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > +                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue); 
> >                  if (byValue & BBREGCTL_DONE) 
> >                          break; 
> >          } 
> > @@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      byRevId     - Revision ID 
> >   *      byRFType    - RF type 
> >   *  Out: 
> > @@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >  { 
> >          bool bResult = true; 
> >          int        ii; 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned char byRFType = priv->byRFType; 
> >          unsigned char byLocalID = priv->byLocalID; 
> > 
> > @@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> > 
>                                          byVT3253B0_AGC4_RFMD2959[ii][0], 
> > 
>                                          byVT3253B0_AGC4_RFMD2959[ii][1]); 
> > 
> > -                        VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 
> 0x23); 
> > -                        MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> > +                        VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23); 
> > +                        MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> >                  } 
> >                  priv->abyBBVGA[0] = 0x18; 
> >                  priv->abyBBVGA[1] = 0x0A; 
> > @@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                                  byVT3253B0_AGC[ii][0], 
> >                                  byVT3253B0_AGC[ii][1]); 
> > 
> > -                VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23); 
> > -                MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0)); 
> > +                VNSvOutPortB(iobase + MAC_REG_ITRTMSET, 0x23); 
> > +                MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0)); 
> > 
> >                  priv->abyBBVGA[0] = 0x14; 
> >                  priv->abyBBVGA[1] = 0x0A; 
> > @@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                   * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/ 
> > 
> >                  /* Init ANT B select, 
> >                   * RX Config CR10 = 0x28->0x2A, 
> > @@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                   * make the ANT_A, ANT_B inverted) 
> >                   */ 
> > 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/ 
> >                  /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >                  bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> > 
> > @@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                  priv->ldBmThreshold[2] = 0; 
> >                  priv->ldBmThreshold[3] = 0; 
> >                  /* Fix VT3226 DFC system timing issue */ 
> > -                MACvSetRFLE_LatchBase(dwIoBase); 
> > +                MACvSetRFLE_LatchBase(iobase); 
> >                  /* {{ RobertYu: 20050104 */ 
> >          } else if (byRFType == RF_AIROHA7230) { 
> >                  for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; 
> ii++) 
> > @@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                  /* Init ANT B select,TX Config CR09 = 0x61->0x45, 
> >                   * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/ 
> >                  /* Init ANT B select,RX Config CR10 = 0x28->0x2A, 
> >                   * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/ 
> >                  /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >                  bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> >                  /* }} */ 
> > @@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, 
> unsigned char byData) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > diff --git a/drivers/staging/vt6655/baseband.h 
> b/drivers/staging/vt6655/baseband.h 
> > index a732fba..1d1d4fc 100644 
> > --- a/drivers/staging/vt6655/baseband.h 
> > +++ b/drivers/staging/vt6655/baseband.h 
> > @@ -58,11 +58,11 @@ 
> >  #define TOP_RATE_2M         0x00200000 
> >  #define TOP_RATE_1M         0x00100000 
> > 
> > -#define bbvclearfoe(dwIoBase)                                \ 
> > -        BBbWriteEmbedded(dwIoBase, 0xB1, 0) 
> > +#define bbvclearfoe(iobase)                                \ 
> > +        BBbWriteEmbedded(iobase, 0xB1, 0) 
> > 
> > -#define BBvSetFOE(dwIoBase)                                \ 
> > -        BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C) 
> > +#define BBvSetFOE(iobase)                                \ 
> > +        BBbWriteEmbedded(iobase, 0xB1, 0x0C) 
> > 
> >  unsigned int 
> >  BBuGetFrameTime( 
> > diff --git a/drivers/staging/vt6655/card.c 
> b/drivers/staging/vt6655/card.c 
> > index dbcea44..03790bb 100644 
> > --- a/drivers/staging/vt6655/card.c 
> > +++ b/drivers/staging/vt6655/card.c 
> > @@ -36,7 +36,7 @@ 
> >   * 
> >   * Revision History: 
> >   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 
> spec. 
> > - *      08-26-2003 Kyle Hsu:      Modify the defination type of 
> dwIoBase. 
> > + *      08-26-2003 Kyle Hsu:      Modify the defination type of iobase. 
> >   *      09-01-2003 Bryan YC Fan:  Add vUpdateIFS(). 
> >   * 
> >   */ 
> > @@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 
> qwTSF1, u64 qwTSF2) 
> >   */ 
> >  bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCurrTSF) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byData; 
> > 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD); 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_TFTCTL, &byData); 
> > +                VNSvInPortB(iobase + MAC_REG_TFTCTL, &byData); 
> >                  if (!(byData & TFTCTL_TSFCNTRRD)) 
> >                          break; 
> >          } 
> >          if (ww == W_MAX_TIMEOUT) 
> >                  return false; 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF); 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 
> 1); 
> > +        VNSvInPortD(iobase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF); 
> > +        VNSvInPortD(iobase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 
> 1); 
> > 
> >          return true; 
> >  } 
> > @@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short 
> wBeaconInterval) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase        - IO Base 
> > + *      iobase        - IO Base 
> >   *      wBeaconInterval - Beacon Interval 
> >   *  Out: 
> >   *      none 
> > @@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short 
> wBeaconInterval) 
> >  void CARDvSetFirstNextTBTT(struct vnt_private *priv, 
> >                             unsigned short wBeaconInterval) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          u64 qwNextTBTT = 0; 
> > 
> >          CARDbGetCurrentTSF(priv, &qwNextTBTT); /* Get Local TSF counter 
> */ 
> > 
> >          qwNextTBTT = CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval); 
> >          /* Set NextTBTT */ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT); 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT 
> >> 32)); 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 
> 32)); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> >  } 
> > 
> >  /* 
> > @@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_private 
> *priv, 
> >  void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF, 
> >                           unsigned short wBeaconInterval) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> > 
> >          qwTSF = CARDqGetNextTBTT(qwTSF, wBeaconInterval); 
> >          /* Set NextTBTT */ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwTSF); 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 
> 32)); 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwTSF); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 
> 32)); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> >          pr_debug("Card:Update Next TBTT[%8llx]\n", qwTSF); 
> >  } 
> > diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h 
> > index 030f529..4d8b748 100644 
> > --- a/drivers/staging/vt6655/mac.h 
> > +++ b/drivers/staging/vt6655/mac.h 
> > @@ -554,341 +554,341 @@ 
> > 
> >  /*---------------------  Export Macros ------------------------------*/ 
> > 
> > -#define MACvRegBitsOn(dwIoBase, byRegOfs, 
> byBits)                        \ 
> > +#define MACvRegBitsOn(iobase, byRegOfs, 
> byBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData | 
> (byBits));                \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData | 
> (byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvWordRegBitsOn(dwIoBase, byRegOfs, 
> wBits)                        \ 
> > +#define MACvWordRegBitsOn(iobase, byRegOfs, 
> wBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned short 
> wData;                                                \ 
> > -        VNSvInPortW(dwIoBase + byRegOfs, 
> &wData);                        \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wData | 
> (wBits));                \ 
> > +        VNSvInPortW(iobase + byRegOfs, 
> &wData);                        \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wData | 
> (wBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, 
> dwBits)                        \ 
> > +#define MACvDWordRegBitsOn(iobase, byRegOfs, 
> dwBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + byRegOfs, 
> &dwData);                        \ 
> > -        VNSvOutPortD(dwIoBase + byRegOfs, dwData | 
> (dwBits));                \ 
> > +        VNSvInPortD(iobase + byRegOfs, 
> &dwData);                        \ 
> > +        VNSvOutPortD(iobase + byRegOfs, dwData | 
> (dwBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, 
> byBits)                \ 
> > +#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, 
> byBits)                \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> >          byData &= 
> byMask;                                                \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData | 
> (byBits));                \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData | 
> (byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvRegBitsOff(dwIoBase, byRegOfs, 
> byBits)                        \ 
> > +#define MACvRegBitsOff(iobase, byRegOfs, 
> byBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData & 
> ~(byBits));                \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData & 
> ~(byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvWordRegBitsOff(dwIoBase, byRegOfs, 
> wBits)                        \ 
> > +#define MACvWordRegBitsOff(iobase, byRegOfs, 
> wBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned short 
> wData;                                                \ 
> > -        VNSvInPortW(dwIoBase + byRegOfs, 
> &wData);                        \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wData & 
> ~(wBits));                \ 
> > +        VNSvInPortW(iobase + byRegOfs, 
> &wData);                        \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wData & 
> ~(wBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, 
> dwBits)                        \ 
> > +#define MACvDWordRegBitsOff(iobase, byRegOfs, 
> dwBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + byRegOfs, 
> &dwData);                        \ 
> > -        VNSvOutPortD(dwIoBase + byRegOfs, dwData & 
> ~(dwBits));                \ 
> > +        VNSvInPortD(iobase + byRegOfs, 
> &dwData);                        \ 
> > +        VNSvOutPortD(iobase + byRegOfs, dwData & 
> ~(dwBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvGetCurrRx0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0,                \ 
> > +#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMAPTR0,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrRx1DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1,                \ 
> > +#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMAPTR1,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrTx0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0,                \ 
> > +#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_TXDMAPTR0,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrAC0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR,                \ 
> > +#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_AC0DMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrSyncDescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMAPTR,                \ 
> > +#define MACvGetCurrSyncDescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_SYNCDMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrATIMDescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMAPTR,                \ 
> > +#define MACvGetCurrATIMDescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_ATIMDMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> >  /* set the chip with current BCN tx descriptor address */ 
> > -#define MACvSetCurrBCNTxDescAddr(dwIoBase, dwCurrDescAddr)        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR,                \ 
> > +#define MACvSetCurrBCNTxDescAddr(iobase, dwCurrDescAddr)        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_BCNDMAPTR,                \ 
> >                       dwCurrDescAddr) 
> > 
> >  /* set the chip with current BCN length */ 
> > -#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)                \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_BCNDMACTL+2,                \ 
> > +#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)                \ 
> > +        VNSvOutPortW(iobase + MAC_REG_BCNDMACTL+2,                \ 
> >                       wCurrBCNLength) 
> > 
> > -#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0,                        \ 
> >                      (unsigned char *)pbyEtherAddr);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 1,                \ 
> >                      pbyEtherAddr + 1);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 2,                \ 
> >                      pbyEtherAddr + 2);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 3,                \ 
> >                      pbyEtherAddr + 3);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 4,                \ 
> >                      pbyEtherAddr + 4);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 5,                \ 
> >                      pbyEtherAddr + 5);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvWriteBSSIDAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortB(dwIoBase + 
> MAC_REG_BSSID0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0,                        \ 
> >                       *(pbyEtherAddr));                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 1,                \ 
> >                       *(pbyEtherAddr + 1));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 2,                \ 
> >                       *(pbyEtherAddr + 2));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 3,                \ 
> >                       *(pbyEtherAddr + 3));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 4,                \ 
> >                       *(pbyEtherAddr + 4));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 5,                \ 
> >                       *(pbyEtherAddr + 5));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvReadEtherAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0,                        \ 
> >                      (unsigned char *)pbyEtherAddr);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 1,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 1,                \ 
> >                      pbyEtherAddr + 1);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 2,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 2,                \ 
> >                      pbyEtherAddr + 2);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 3,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 3,                \ 
> >                      pbyEtherAddr + 3);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 4,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 4,                \ 
> >                      pbyEtherAddr + 4);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 5,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 5,                \ 
> >                      pbyEtherAddr + 5);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvWriteEtherAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvWriteEtherAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0,                        \ 
> >                       *pbyEtherAddr);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 1,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 1,                \ 
> >                       *(pbyEtherAddr + 1));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 2,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 2,                \ 
> >                       *(pbyEtherAddr + 2));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 3,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 3,                \ 
> >                       *(pbyEtherAddr + 3));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 4,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 4,                \ 
> >                       *(pbyEtherAddr + 4));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 5,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 5,                \ 
> >                       *(pbyEtherAddr + 5));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvClearISR(dwIoBase)                                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ISR, IMR_MASK_VALUE) 
> > +#define 
> MACvClearISR(iobase)                                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ISR, IMR_MASK_VALUE) 
> > 
> > -#define 
> MACvStart(dwIoBase)                                                \ 
> > -        VNSvOutPortB(dwIoBase + 
> MAC_REG_HOSTCR,                                \ 
> > +#define 
> MACvStart(iobase)                                                \ 
> > +        VNSvOutPortB(iobase + 
> MAC_REG_HOSTCR,                                \ 
> >                       (HOSTCR_MACEN | HOSTCR_RXON | HOSTCR_TXON)) 
> > 
> > -#define 
> MACvRx0PerPktMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKT) 
> > +#define 
> MACvRx0PerPktMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKT) 
> > 
> > -#define 
> MACvRx0BufferFillMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKTCLR) 
> > +#define 
> MACvRx0BufferFillMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKTCLR) 
> > 
> > -#define 
> MACvRx1PerPktMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKT) 
> > +#define 
> MACvRx1PerPktMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKT) 
> > 
> > -#define 
> MACvRx1BufferFillMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKTCLR) 
> > +#define 
> MACvRx1BufferFillMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKTCLR) 
> > 
> > -#define 
> MACvRxOn(dwIoBase)                                                \ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON) 
> > +#define 
> MACvRxOn(iobase)                                                \ 
> > +        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_RXON) 
> > 
> > -#define 
> MACvReceive0(dwIoBase)                                                \ 
> > +#define 
> MACvReceive0(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL0, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMACTL0, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvReceive1(dwIoBase)                                                \ 
> > +#define 
> MACvReceive1(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL1, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMACTL1, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTxOn(dwIoBase)                                                \ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON) 
> > +#define 
> MACvTxOn(iobase)                                                \ 
> > +        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_TXON) 
> > 
> > -#define 
> MACvTransmit0(dwIoBase)                                                \ 
> > +#define 
> MACvTransmit0(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TXDMACTL0, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_TXDMACTL0, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitAC0(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitAC0(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_AC0DMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_AC0DMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitSYNC(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitSYNC(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_SYNCDMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> DMACTL_RUN); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_RUN); 
> \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitATIM(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitATIM(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ATIMDMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> DMACTL_RUN); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_RUN); 
> \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitBCN(dwIoBase)                                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BCNDMACTL, BEACON_READY) 
> > +#define 
> MACvTransmitBCN(iobase)                                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BCNDMACTL, BEACON_READY) 
> > 
> > -#define 
> MACvClearStckDS(dwIoBase)                                        \ 
> > +#define 
> MACvClearStckDS(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byOrgValue;                                        \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_STICKHW, 
> &byOrgValue);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_STICKHW, 
> &byOrgValue);                \ 
> >          byOrgValue = byOrgValue & 
> 0xFC;                                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_STICKHW, 
> byOrgValue);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_STICKHW, 
> byOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadISR(dwIoBase, 
> pdwValue)                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ISR, pdwValue) 
> > +#define MACvReadISR(iobase, pdwValue)                                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ISR, pdwValue) 
> > 
> > -#define MACvWriteISR(dwIoBase, 
> dwValue)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ISR, dwValue) 
> > +#define MACvWriteISR(iobase, dwValue)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ISR, dwValue) 
> > 
> > -#define MACvIntEnable(dwIoBase, 
> dwMask)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IMR, dwMask) 
> > +#define MACvIntEnable(iobase, dwMask)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_IMR, dwMask) 
> > 
> > -#define MACvIntDisable(dwIoBase)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IMR, 0) 
> > +#define MACvIntDisable(iobase)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_IMR, 0) 
> > 
> > -#define MACvSelectPage0(dwIoBase)                                \ 
> > -                VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0) 
> > +#define MACvSelectPage0(iobase)                                \ 
> > +                VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0) 
> > 
> > -#define MACvSelectPage1(dwIoBase)                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1) 
> > +#define MACvSelectPage1(iobase)                                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1) 
> > 
> > -#define MACvReadMIBCounter(dwIoBase, 
> pdwCounter)                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_MIBCNTR, pdwCounter) 
> > +#define MACvReadMIBCounter(iobase, pdwCounter)                        \ 
> > +        VNSvInPortD(iobase + MAC_REG_MIBCNTR, pdwCounter) 
> > 
> > -#define 
> MACvPwrEvntDisable(dwIoBase)                                        \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_WAKEUPEN0, 0x0000) 
> > +#define 
> MACvPwrEvntDisable(iobase)                                        \ 
> > +        VNSvOutPortW(iobase + MAC_REG_WAKEUPEN0, 0x0000) 
> > 
> > -#define 
> MACvEnableProtectMD(dwIoBase)                                        \ 
> > +#define 
> MACvEnableProtectMD(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue | 
> EnCFG_ProtectMd;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvDisableProtectMD(dwIoBase)                                        \ 
> > +#define 
> MACvDisableProtectMD(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_ProtectMd;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvEnableBarkerPreambleMd(dwIoBase)                                \ 
> > +#define 
> MACvEnableBarkerPreambleMd(iobase)                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue | 
> EnCFG_BarkerPream;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvDisableBarkerPreambleMd(dwIoBase)                                \ 
> > +#define 
> MACvDisableBarkerPreambleMd(iobase)                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_BarkerPream;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvSetBBType(dwIoBase, 
> byTyp)                                        \ 
> > +#define MACvSetBBType(iobase, 
> byTyp)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_BBType_MASK;                        \ 
> >          dwOrgValue = dwOrgValue | (unsigned 
> long)byTyp;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadATIMW(dwIoBase, 
> pwCounter)                                \ 
> > -        VNSvInPortW(dwIoBase + MAC_REG_AIDATIM, pwCounter) 
> > +#define MACvReadATIMW(iobase, 
> pwCounter)                                \ 
> > +        VNSvInPortW(iobase + MAC_REG_AIDATIM, pwCounter) 
> > 
> > -#define MACvWriteATIMW(dwIoBase, 
> wCounter)                                \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_AIDATIM, wCounter) 
> > +#define MACvWriteATIMW(iobase, 
> wCounter)                                \ 
> > +        VNSvOutPortW(iobase + MAC_REG_AIDATIM, wCounter) 
> > 
> > -#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)                \ 
> > +#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wCRC);                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wCRC);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvGPIOIn(dwIoBase, 
> pbyValue)                                        \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_GPIOCTL1, pbyValue) 
> > +#define MACvGPIOIn(iobase, 
> pbyValue)                                        \ 
> > +        VNSvInPortB(iobase + MAC_REG_GPIOCTL1, pbyValue) 
> > 
> > -#define MACvSetRFLE_LatchBase(dwIoBase)                                 
> \ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_RFLEOPT) 
> > +#define MACvSetRFLE_LatchBase(iobase)                                 \ 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_RFLEOPT) 
> > 
> >  bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byRegOfs, 
> >                       unsigned char byTestBits); 
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c 
> > index 447882c..92bb1c6 100644 
> > --- a/drivers/staging/vt6655/rf.c 
> > +++ b/drivers/staging/vt6655/rf.c 
> > @@ -410,7 +410,7 @@ static const unsigned long 
> dwAL7230ChannelTable2[CB_MAX_CHANNEL] = { 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -419,16 +419,16 @@ static const unsigned long 
> dwAL7230ChannelTable2[CB_MAX_CHANNEL] = { 
> >   */ 
> >  static bool s_bAL7230Init(struct vnt_private *priv) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int     ii; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* 3-wire control for normal mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0); 
> > +        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> >          BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value 
> for Calibration */ 
> > 
> > @@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> >                  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]); 
> > 
> >          /* PLL On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* Calibration */ 
> >          MACvTimer0MicroSDelay(priv, 150);/* 150us */ 
> > @@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> >          /* TXDCOC:disable, RCK:disable */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPE3    | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 
>    | 
> >                                                           
> SOFTPWRCTL_SWPE2    | 
> >                                                           
> SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> > @@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> > 
> >          /* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */ 
> >          /* 3-wire control for power saving mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > +        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > 
> >          return ret; 
> >  } 
> > @@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private 
> *priv) 
> >   */ 
> >  static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned 
> char byChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* PLLON Off */ 
> > -        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[byChannel 
> - 1]); 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel 
> - 1]); 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel 
> - 1]); 
> > 
> >          /* PLLOn On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* Set Channel[7] = 0 to tell H/W channel is changing now. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> >          MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230); 
> >          /* Set Channel[7] = 1 to tell H/W channel change is done. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > 
> >          return ret; 
> >  } 
> > @@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      dwData      - data to write 
> >   *  Out: 
> >   *      none 
> > @@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >   */ 
> >  bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned long dwValue; 
> > 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwData); 
> > +        VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData); 
> > 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortD(dwIoBase + MAC_REG_IFREGCTL, &dwValue); 
> > +                VNSvInPortD(iobase + MAC_REG_IFREGCTL, &dwValue); 
> >                  if (dwValue & IFREGCTL_DONE) 
> >                          break; 
> >          } 
> > @@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, 
> unsigned long dwData) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, 
> unsigned long dwData) 
> >   */ 
> >  static bool RFbAL2230Init(struct vnt_private *priv) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int     ii; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* 3-wire control for normal mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0); 
> > +        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> >          /* PLL  Off */ 
> > -        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* patch abnormal AL2230 frequency output */ 
> >          IFRFbWriteEmbedded(priv, 
> (0x07168700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW)); 
> > @@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *priv) 
> >          MACvTimer0MicroSDelay(priv, 30); /* delay 30 us */ 
> > 
> >          /* PLL On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          MACvTimer0MicroSDelay(priv, 150);/* 150us */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> (0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW)); 
> > @@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private 
> *priv) 
> >          MACvTimer0MicroSDelay(priv, 30);/* 30us */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPE3    | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 
>    | 
> >                                                           
> SOFTPWRCTL_SWPE2    | 
> >                                                           
> SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> > 
> >          /* 3-wire control for power saving mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > +        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > 
> >          return ret; 
> >  } 
> > 
> >  static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned 
> char byChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          bool ret; 
> > 
> >          ret = true; 
> > @@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel 
> - 1]); 
> > 
> >          /* Set Channel[7] = 0 to tell H/W channel is changing now. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> >          MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230); 
> >          /* Set Channel[7] = 1 to tell H/W channel change is done. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > 
> >          return ret; 
> >  } 
> > @@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv, 
> unsigned char byRFType, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      uChannel    - channel number 
> >   *      bySleepCnt  - SleepProgSyn count 
> >   * 
> > @@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *priv, 
> unsigned char byRFType, 
> >  bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char 
> byRFType, 
> >                           u16 uChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int   ii; 
> >          unsigned char byInitCount = 0; 
> >          unsigned char bySleepCount = 0; 
> > 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0); 
> > +        VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0); 
> >          switch (byRFType) { 
> >          case RF_AIROHA: 
> >          case RF_AL2230S: 
> > @@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, 
> unsigned char byRFType, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase       - I/O base address 
> > + *      iobase       - I/O base address 
> >   *      dwRFPowerTable - RF Tx Power Setting 
> >   *  Out: 
> >   *      none 
> > @@ -830,7 +830,7 @@ bool RFbSetPower( 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase       - I/O base address 
> > + *      iobase       - I/O base address 
> >   *      dwRFPowerTable - RF Tx Power Setting 
> >   *  Out: 
> >   *      none 
> > diff --git a/drivers/staging/vt6655/srom.c 
> b/drivers/staging/vt6655/srom.c 
> > index ee99277..0b612d3 100644 
> > --- a/drivers/staging/vt6655/s...


On Saturday, October 8, 2016 at 11:07:41 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 8 Oct 2016, Varsha Rao wrote: 
>
> > In this patch dwIoBase is renamed as iobase.This is done to fix the 
> checkpatch issue of CamelCase. 
>
> Put at least one space after a period.  Limit the commit message line 
> length to around 70 characters. 
>
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/vt6655/baseband.c |  52 +++--- 
> >  drivers/staging/vt6655/baseband.h |   8 +- 
> >  drivers/staging/vt6655/card.c     |  30 ++-- 
> >  drivers/staging/vt6655/mac.h      | 322 
> +++++++++++++++++++------------------- 
> >  drivers/staging/vt6655/rf.c       |  64 ++++---- 
> >  drivers/staging/vt6655/srom.c     |  32 ++-- 
> >  drivers/staging/vt6655/srom.h     |   6 +- 
> >  7 files changed, 257 insertions(+), 257 deletions(-) 
> > 
> > diff --git a/drivers/staging/vt6655/baseband.c 
> b/drivers/staging/vt6655/baseband.c 
> > index de503a3..e739ecc 100644 
> > --- a/drivers/staging/vt6655/baseband.c 
> > +++ b/drivers/staging/vt6655/baseband.c 
> > @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 frame_length, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
>
> You should preserve the alignment of the different comments. 
>
> julia 
>
> >   *      byBBAddr    - address of register in Baseband 
> >   *  Out: 
> >   *      pbyData     - data read 
> > @@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 frame_length, 
> >  bool BBbReadEmbedded(struct vnt_private *priv, 
> >                       unsigned char byBBAddr, unsigned char *pbyData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byValue; 
> > 
> >          /* BB reg offset */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr); 
> > 
> >          /* turn on REGR */ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> > +        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > +                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue); 
> >                  if (byValue & BBREGCTL_DONE) 
> >                          break; 
> >          } 
> > 
> >          /* get BB data */ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData); 
> > +        VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData); 
> > 
> >          if (ww == W_MAX_TIMEOUT) { 
> >                  pr_debug(" DBG_PORT80(0x30)\n"); 
> > @@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      byBBAddr    - address of register in Baseband 
> >   *      byData      - data to write 
> >   *  Out: 
> > @@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *priv, 
> >  bool BBbWriteEmbedded(struct vnt_private *priv, 
> >                        unsigned char byBBAddr, unsigned char byData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byValue; 
> > 
> >          /* BB reg offset */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr); 
> >          /* set BB data */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData); 
> > 
> >          /* turn on BBREGCTL_REGW */ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> > +        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > +                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue); 
> >                  if (byValue & BBREGCTL_DONE) 
> >                          break; 
> >          } 
> > @@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      byRevId     - Revision ID 
> >   *      byRFType    - RF type 
> >   *  Out: 
> > @@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >  { 
> >          bool bResult = true; 
> >          int        ii; 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned char byRFType = priv->byRFType; 
> >          unsigned char byLocalID = priv->byLocalID; 
> > 
> > @@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> > 
>                                          byVT3253B0_AGC4_RFMD2959[ii][0], 
> > 
>                                          byVT3253B0_AGC4_RFMD2959[ii][1]); 
> > 
> > -                        VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 
> 0x23); 
> > -                        MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> > +                        VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23); 
> > +                        MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> >                  } 
> >                  priv->abyBBVGA[0] = 0x18; 
> >                  priv->abyBBVGA[1] = 0x0A; 
> > @@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                                  byVT3253B0_AGC[ii][0], 
> >                                  byVT3253B0_AGC[ii][1]); 
> > 
> > -                VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23); 
> > -                MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0)); 
> > +                VNSvOutPortB(iobase + MAC_REG_ITRTMSET, 0x23); 
> > +                MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0)); 
> > 
> >                  priv->abyBBVGA[0] = 0x14; 
> >                  priv->abyBBVGA[1] = 0x0A; 
> > @@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                   * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/ 
> > 
> >                  /* Init ANT B select, 
> >                   * RX Config CR10 = 0x28->0x2A, 
> > @@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                   * make the ANT_A, ANT_B inverted) 
> >                   */ 
> > 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/ 
> >                  /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >                  bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> > 
> > @@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                  priv->ldBmThreshold[2] = 0; 
> >                  priv->ldBmThreshold[3] = 0; 
> >                  /* Fix VT3226 DFC system timing issue */ 
> > -                MACvSetRFLE_LatchBase(dwIoBase); 
> > +                MACvSetRFLE_LatchBase(iobase); 
> >                  /* {{ RobertYu: 20050104 */ 
> >          } else if (byRFType == RF_AIROHA7230) { 
> >                  for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; 
> ii++) 
> > @@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                  /* Init ANT B select,TX Config CR09 = 0x61->0x45, 
> >                   * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/ 
> >                  /* Init ANT B select,RX Config CR10 = 0x28->0x2A, 
> >                   * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/ 
> >                  /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >                  bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> >                  /* }} */ 
> > @@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, 
> unsigned char byData) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > diff --git a/drivers/staging/vt6655/baseband.h 
> b/drivers/staging/vt6655/baseband.h 
> > index a732fba..1d1d4fc 100644 
> > --- a/drivers/staging/vt6655/baseband.h 
> > +++ b/drivers/staging/vt6655/baseband.h 
> > @@ -58,11 +58,11 @@ 
> >  #define TOP_RATE_2M         0x00200000 
> >  #define TOP_RATE_1M         0x00100000 
> > 
> > -#define bbvclearfoe(dwIoBase)                                \ 
> > -        BBbWriteEmbedded(dwIoBase, 0xB1, 0) 
> > +#define bbvclearfoe(iobase)                                \ 
> > +        BBbWriteEmbedded(iobase, 0xB1, 0) 
> > 
> > -#define BBvSetFOE(dwIoBase)                                \ 
> > -        BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C) 
> > +#define BBvSetFOE(iobase)                                \ 
> > +        BBbWriteEmbedded(iobase, 0xB1, 0x0C) 
> > 
> >  unsigned int 
> >  BBuGetFrameTime( 
> > diff --git a/drivers/staging/vt6655/card.c 
> b/drivers/staging/vt6655/card.c 
> > index dbcea44..03790bb 100644 
> > --- a/drivers/staging/vt6655/card.c 
> > +++ b/drivers/staging/vt6655/card.c 
> > @@ -36,7 +36,7 @@ 
> >   * 
> >   * Revision History: 
> >   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 
> spec. 
> > - *      08-26-2003 Kyle Hsu:      Modify the defination type of 
> dwIoBase. 
> > + *      08-26-2003 Kyle Hsu:      Modify the defination type of iobase. 
> >   *      09-01-2003 Bryan YC Fan:  Add vUpdateIFS(). 
> >   * 
> >   */ 
> > @@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 
> qwTSF1, u64 qwTSF2) 
> >   */ 
> >  bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCurrTSF) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byData; 
> > 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD); 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_TFTCTL, &byData); 
> > +                VNSvInPortB(iobase + MAC_REG_TFTCTL, &byData); 
> >                  if (!(byData & TFTCTL_TSFCNTRRD)) 
> >                          break; 
> >          } 
> >          if (ww == W_MAX_TIMEOUT) 
> >                  return false; 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF); 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 
> 1); 
> > +        VNSvInPortD(iobase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF); 
> > +        VNSvInPortD(iobase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 
> 1); 
> > 
> >          return true; 
> >  } 
> > @@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short 
> wBeaconInterval) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase        - IO Base 
> > + *      iobase        - IO Base 
> >   *      wBeaconInterval - Beacon Interval 
> >   *  Out: 
> >   *      none 
> > @@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short 
> wBeaconInterval) 
> >  void CARDvSetFirstNextTBTT(struct vnt_private *priv, 
> >                             unsigned short wBeaconInterval) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          u64 qwNextTBTT = 0; 
> > 
> >          CARDbGetCurrentTSF(priv, &qwNextTBTT); /* Get Local TSF counter 
> */ 
> > 
> >          qwNextTBTT = CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval); 
> >          /* Set NextTBTT */ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT); 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT 
> >> 32)); 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 
> 32)); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> >  } 
> > 
> >  /* 
> > @@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_private 
> *priv, 
> >  void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF, 
> >                           unsigned short wBeaconInterval) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> > 
> >          qwTSF = CARDqGetNextTBTT(qwTSF, wBeaconInterval); 
> >          /* Set NextTBTT */ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwTSF); 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 
> 32)); 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwTSF); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 
> 32)); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> >          pr_debug("Card:Update Next TBTT[%8llx]\n", qwTSF); 
> >  } 
> > diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h 
> > index 030f529..4d8b748 100644 
> > --- a/drivers/staging/vt6655/mac.h 
> > +++ b/drivers/staging/vt6655/mac.h 
> > @@ -554,341 +554,341 @@ 
> > 
> >  /*---------------------  Export Macros ------------------------------*/ 
> > 
> > -#define MACvRegBitsOn(dwIoBase, byRegOfs, 
> byBits)                        \ 
> > +#define MACvRegBitsOn(iobase, byRegOfs, 
> byBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData | 
> (byBits));                \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData | 
> (byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvWordRegBitsOn(dwIoBase, byRegOfs, 
> wBits)                        \ 
> > +#define MACvWordRegBitsOn(iobase, byRegOfs, 
> wBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned short 
> wData;                                                \ 
> > -        VNSvInPortW(dwIoBase + byRegOfs, 
> &wData);                        \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wData | 
> (wBits));                \ 
> > +        VNSvInPortW(iobase + byRegOfs, 
> &wData);                        \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wData | 
> (wBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, 
> dwBits)                        \ 
> > +#define MACvDWordRegBitsOn(iobase, byRegOfs, 
> dwBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + byRegOfs, 
> &dwData);                        \ 
> > -        VNSvOutPortD(dwIoBase + byRegOfs, dwData | 
> (dwBits));                \ 
> > +        VNSvInPortD(iobase + byRegOfs, 
> &dwData);                        \ 
> > +        VNSvOutPortD(iobase + byRegOfs, dwData | 
> (dwBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, 
> byBits)                \ 
> > +#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, 
> byBits)                \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> >          byData &= 
> byMask;                                                \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData | 
> (byBits));                \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData | 
> (byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvRegBitsOff(dwIoBase, byRegOfs, 
> byBits)                        \ 
> > +#define MACvRegBitsOff(iobase, byRegOfs, 
> byBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData & 
> ~(byBits));                \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData & 
> ~(byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvWordRegBitsOff(dwIoBase, byRegOfs, 
> wBits)                        \ 
> > +#define MACvWordRegBitsOff(iobase, byRegOfs, 
> wBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned short 
> wData;                                                \ 
> > -        VNSvInPortW(dwIoBase + byRegOfs, 
> &wData);                        \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wData & 
> ~(wBits));                \ 
> > +        VNSvInPortW(iobase + byRegOfs, 
> &wData);                        \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wData & 
> ~(wBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, 
> dwBits)                        \ 
> > +#define MACvDWordRegBitsOff(iobase, byRegOfs, 
> dwBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + byRegOfs, 
> &dwData);                        \ 
> > -        VNSvOutPortD(dwIoBase + byRegOfs, dwData & 
> ~(dwBits));                \ 
> > +        VNSvInPortD(iobase + byRegOfs, 
> &dwData);                        \ 
> > +        VNSvOutPortD(iobase + byRegOfs, dwData & 
> ~(dwBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvGetCurrRx0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0,                \ 
> > +#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMAPTR0,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrRx1DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1,                \ 
> > +#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMAPTR1,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrTx0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0,                \ 
> > +#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_TXDMAPTR0,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrAC0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR,                \ 
> > +#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_AC0DMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrSyncDescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMAPTR,                \ 
> > +#define MACvGetCurrSyncDescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_SYNCDMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrATIMDescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMAPTR,                \ 
> > +#define MACvGetCurrATIMDescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_ATIMDMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> >  /* set the chip with current BCN tx descriptor address */ 
> > -#define MACvSetCurrBCNTxDescAddr(dwIoBase, dwCurrDescAddr)        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR,                \ 
> > +#define MACvSetCurrBCNTxDescAddr(iobase, dwCurrDescAddr)        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_BCNDMAPTR,                \ 
> >                       dwCurrDescAddr) 
> > 
> >  /* set the chip with current BCN length */ 
> > -#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)                \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_BCNDMACTL+2,                \ 
> > +#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)                \ 
> > +        VNSvOutPortW(iobase + MAC_REG_BCNDMACTL+2,                \ 
> >                       wCurrBCNLength) 
> > 
> > -#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0,                        \ 
> >                      (unsigned char *)pbyEtherAddr);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 1,                \ 
> >                      pbyEtherAddr + 1);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 2,                \ 
> >                      pbyEtherAddr + 2);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 3,                \ 
> >                      pbyEtherAddr + 3);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 4,                \ 
> >                      pbyEtherAddr + 4);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 5,                \ 
> >                      pbyEtherAddr + 5);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvWriteBSSIDAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortB(dwIoBase + 
> MAC_REG_BSSID0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0,                        \ 
> >                       *(pbyEtherAddr));                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 1,                \ 
> >                       *(pbyEtherAddr + 1));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 2,                \ 
> >                       *(pbyEtherAddr + 2));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 3,                \ 
> >                       *(pbyEtherAddr + 3));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 4,                \ 
> >                       *(pbyEtherAddr + 4));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 5,                \ 
> >                       *(pbyEtherAddr + 5));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvReadEtherAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0,                        \ 
> >                      (unsigned char *)pbyEtherAddr);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 1,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 1,                \ 
> >                      pbyEtherAddr + 1);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 2,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 2,                \ 
> >                      pbyEtherAddr + 2);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 3,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 3,                \ 
> >                      pbyEtherAddr + 3);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 4,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 4,                \ 
> >                      pbyEtherAddr + 4);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 5,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 5,                \ 
> >                      pbyEtherAddr + 5);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvWriteEtherAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvWriteEtherAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0,                        \ 
> >                       *pbyEtherAddr);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 1,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 1,                \ 
> >                       *(pbyEtherAddr + 1));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 2,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 2,                \ 
> >                       *(pbyEtherAddr + 2));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 3,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 3,                \ 
> >                       *(pbyEtherAddr + 3));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 4,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 4,                \ 
> >                       *(pbyEtherAddr + 4));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 5,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 5,                \ 
> >                       *(pbyEtherAddr + 5));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvClearISR(dwIoBase)                                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ISR, IMR_MASK_VALUE) 
> > +#define 
> MACvClearISR(iobase)                                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ISR, IMR_MASK_VALUE) 
> > 
> > -#define 
> MACvStart(dwIoBase)                                                \ 
> > -        VNSvOutPortB(dwIoBase + 
> MAC_REG_HOSTCR,                                \ 
> > +#define 
> MACvStart(iobase)                                                \ 
> > +        VNSvOutPortB(iobase + 
> MAC_REG_HOSTCR,                                \ 
> >                       (HOSTCR_MACEN | HOSTCR_RXON | HOSTCR_TXON)) 
> > 
> > -#define 
> MACvRx0PerPktMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKT) 
> > +#define 
> MACvRx0PerPktMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKT) 
> > 
> > -#define 
> MACvRx0BufferFillMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKTCLR) 
> > +#define 
> MACvRx0BufferFillMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKTCLR) 
> > 
> > -#define 
> MACvRx1PerPktMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKT) 
> > +#define 
> MACvRx1PerPktMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKT) 
> > 
> > -#define 
> MACvRx1BufferFillMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKTCLR) 
> > +#define 
> MACvRx1BufferFillMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKTCLR) 
> > 
> > -#define 
> MACvRxOn(dwIoBase)                                                \ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON) 
> > +#define 
> MACvRxOn(iobase)                                                \ 
> > +        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_RXON) 
> > 
> > -#define 
> MACvReceive0(dwIoBase)                                                \ 
> > +#define 
> MACvReceive0(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL0, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMACTL0, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvReceive1(dwIoBase)                                                \ 
> > +#define 
> MACvReceive1(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL1, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMACTL1, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTxOn(dwIoBase)                                                \ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON) 
> > +#define 
> MACvTxOn(iobase)                                                \ 
> > +        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_TXON) 
> > 
> > -#define 
> MACvTransmit0(dwIoBase)                                                \ 
> > +#define 
> MACvTransmit0(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TXDMACTL0, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_TXDMACTL0, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitAC0(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitAC0(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_AC0DMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_AC0DMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitSYNC(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitSYNC(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_SYNCDMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> DMACTL_RUN); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_RUN); 
> \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitATIM(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitATIM(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ATIMDMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> DMACTL_RUN); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_RUN); 
> \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitBCN(dwIoBase)                                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BCNDMACTL, BEACON_READY) 
> > +#define 
> MACvTransmitBCN(iobase)                                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BCNDMACTL, BEACON_READY) 
> > 
> > -#define 
> MACvClearStckDS(dwIoBase)                                        \ 
> > +#define 
> MACvClearStckDS(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byOrgValue;                                        \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_STICKHW, 
> &byOrgValue);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_STICKHW, 
> &byOrgValue);                \ 
> >          byOrgValue = byOrgValue & 
> 0xFC;                                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_STICKHW, 
> byOrgValue);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_STICKHW, 
> byOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadISR(dwIoBase, 
> pdwValue)                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ISR, pdwValue) 
> > +#define MACvReadISR(iobase, pdwValue)                                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ISR, pdwValue) 
> > 
> > -#define MACvWriteISR(dwIoBase, 
> dwValue)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ISR, dwValue) 
> > +#define MACvWriteISR(iobase, dwValue)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ISR, dwValue) 
> > 
> > -#define MACvIntEnable(dwIoBase, 
> dwMask)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IMR, dwMask) 
> > +#define MACvIntEnable(iobase, dwMask)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_IMR, dwMask) 
> > 
> > -#define MACvIntDisable(dwIoBase)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IMR, 0) 
> > +#define MACvIntDisable(iobase)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_IMR, 0) 
> > 
> > -#define MACvSelectPage0(dwIoBase)                                \ 
> > -                VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0) 
> > +#define MACvSelectPage0(iobase)                                \ 
> > +                VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0) 
> > 
> > -#define MACvSelectPage1(dwIoBase)                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1) 
> > +#define MACvSelectPage1(iobase)                                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1) 
> > 
> > -#define MACvReadMIBCounter(dwIoBase, 
> pdwCounter)                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_MIBCNTR, pdwCounter) 
> > +#define MACvReadMIBCounter(iobase, pdwCounter)                        \ 
> > +        VNSvInPortD(iobase + MAC_REG_MIBCNTR, pdwCounter) 
> > 
> > -#define 
> MACvPwrEvntDisable(dwIoBase)                                        \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_WAKEUPEN0, 0x0000) 
> > +#define 
> MACvPwrEvntDisable(iobase)                                        \ 
> > +        VNSvOutPortW(iobase + MAC_REG_WAKEUPEN0, 0x0000) 
> > 
> > -#define 
> MACvEnableProtectMD(dwIoBase)                                        \ 
> > +#define 
> MACvEnableProtectMD(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue | 
> EnCFG_ProtectMd;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvDisableProtectMD(dwIoBase)                                        \ 
> > +#define 
> MACvDisableProtectMD(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_ProtectMd;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvEnableBarkerPreambleMd(dwIoBase)                                \ 
> > +#define 
> MACvEnableBarkerPreambleMd(iobase)                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue | 
> EnCFG_BarkerPream;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvDisableBarkerPreambleMd(dwIoBase)                                \ 
> > +#define 
> MACvDisableBarkerPreambleMd(iobase)                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_BarkerPream;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvSetBBType(dwIoBase, 
> byTyp)                                        \ 
> > +#define MACvSetBBType(iobase, 
> byTyp)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_BBType_MASK;                        \ 
> >          dwOrgValue = dwOrgValue | (unsigned 
> long)byTyp;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadATIMW(dwIoBase, 
> pwCounter)                                \ 
> > -        VNSvInPortW(dwIoBase + MAC_REG_AIDATIM, pwCounter) 
> > +#define MACvReadATIMW(iobase, 
> pwCounter)                                \ 
> > +        VNSvInPortW(iobase + MAC_REG_AIDATIM, pwCounter) 
> > 
> > -#define MACvWriteATIMW(dwIoBase, 
> wCounter)                                \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_AIDATIM, wCounter) 
> > +#define MACvWriteATIMW(iobase, 
> wCounter)                                \ 
> > +        VNSvOutPortW(iobase + MAC_REG_AIDATIM, wCounter) 
> > 
> > -#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)                \ 
> > +#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wCRC);                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wCRC);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvGPIOIn(dwIoBase, 
> pbyValue)                                        \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_GPIOCTL1, pbyValue) 
> > +#define MACvGPIOIn(iobase, 
> pbyValue)                                        \ 
> > +        VNSvInPortB(iobase + MAC_REG_GPIOCTL1, pbyValue) 
> > 
> > -#define MACvSetRFLE_LatchBase(dwIoBase)                                 
> \ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_RFLEOPT) 
> > +#define MACvSetRFLE_LatchBase(iobase)                                 \ 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_RFLEOPT) 
> > 
> >  bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byRegOfs, 
> >                       unsigned char byTestBits); 
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c 
> > index 447882c..92bb1c6 100644 
> > --- a/drivers/staging/vt6655/rf.c 
> > +++ b/drivers/staging/vt6655/rf.c 
> > @@ -410,7 +410,7 @@ static const unsigned long 
> dwAL7230ChannelTable2[CB_MAX_CHANNEL] = { 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -419,16 +419,16 @@ static const unsigned long 
> dwAL7230ChannelTable2[CB_MAX_CHANNEL] = { 
> >   */ 
> >  static bool s_bAL7230Init(struct vnt_private *priv) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int     ii; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* 3-wire control for normal mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0); 
> > +        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> >          BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value 
> for Calibration */ 
> > 
> > @@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> >                  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]); 
> > 
> >          /* PLL On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* Calibration */ 
> >          MACvTimer0MicroSDelay(priv, 150);/* 150us */ 
> > @@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> >          /* TXDCOC:disable, RCK:disable */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPE3    | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 
>    | 
> >                                                           
> SOFTPWRCTL_SWPE2    | 
> >                                                           
> SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> > @@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> > 
> >          /* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */ 
> >          /* 3-wire control for power saving mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > +        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > 
> >          return ret; 
> >  } 
> > @@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private 
> *priv) 
> >   */ 
> >  static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned 
> char byChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* PLLON Off */ 
> > -        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[byChannel 
> - 1]); 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel 
> - 1]); 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel 
> - 1]); 
> > 
> >          /* PLLOn On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* Set Channel[7] = 0 to tell H/W channel is changing now. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> >          MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230); 
> >          /* Set Channel[7] = 1 to tell H/W channel change is done. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > 
> >          return ret; 
> >  } 
> > @@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      dwData      - data to write 
> >   *  Out: 
> >   *      none 
> > @@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >   */ 
> >  bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned long dwValue; 
> > 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwData); 
> > +        VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData); 
> > 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortD(dwIoBase + MAC_REG_IFREGCTL, &dwValue); 
> > +                VNSvInPortD(iobase + MAC_REG_IFREGCTL, &dwValue); 
> >                  if (dwValue & IFREGCTL_DONE) 
> >                          break; 
> >          } 
> > @@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, 
> unsigned long dwData) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, 
> unsigned long dwData) 
> >   */ 
> >  static bool RFbAL2230Init(struct vnt_private *priv) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int     ii; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* 3-wire control for normal mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0); 
> > +        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> >          /* PLL  Off */ 
> > -        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* patch abnormal AL2230 frequency output */ 
> >          IFRFbWriteEmbedded(priv, 
> (0x07168700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW)); 
> > @@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *priv) 
> >          MACvTimer0MicroSDelay(priv, 30); /* delay 30 us */ 
> > 
> >          /* PLL On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          MACvTimer0MicroSDelay(priv, 150);/* 150us */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> (0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW)); 
> > @@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private 
> *priv) 
> >          MACvTimer0MicroSDelay(priv, 30);/* 30us */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPE3    | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 
>    | 
> >                                                           
> SOFTPWRCTL_SWPE2    | 
> >                                                           
> SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> > 
> >          /* 3-wire control for power saving mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > +        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > 
> >          return ret; 
> >  } 
> > 
> >  static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned 
> char byChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          bool ret; 
> > 
> >          ret = true; 
> > @@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel 
> - 1]); 
> > 
> >          /* Set Channel[7] = 0 to tell H/W channel is changing now. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> >          MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230); 
> >          /* Set Channel[7] = 1 to tell H/W channel change is done. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > 
> >          return ret; 
> >  } 
> > @@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv, 
> unsigned char byRFType, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      uChannel    - channel number 
> >   *      bySleepCnt  - SleepProgSyn count 
> >   * 
> > @@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *priv, 
> unsigned char byRFType, 
> >  bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char 
> byRFType, 
> >                           u16 uChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int   ii; 
> >          unsigned char byInitCount = 0; 
> >          unsigned char bySleepCount = 0; 
> > 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0); 
> > +        VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0); 
> >          switch (byRFType) { 
> >          case RF_AIROHA: 
> >          case RF_AL2230S: 
> > @@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, 
> unsigned char byRFType, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase       - I/O base address 
> > + *      iobase       - I/O base address 
> >   *      dwRFPowerTable - RF Tx Power Setting 
> >   *  Out: 
> >   *      none 
> > @@ -830,7 +830,7 @@ bool RFbSetPower( 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase       - I/O base address 
> > + *      iobase       - I/O base address 
> >   *      dwRFPowerTable - RF Tx Power Setting 
> >   *  Out: 
> >   *      none 
> > diff --git a/drivers/staging/vt6655/srom.c 
> b/drivers/staging/vt6655/srom.c 
> > index ee99277..0b612d3 100644 
> > --- a/drivers/staging/vt6655/s...


On Saturday, October 8, 2016 at 11:07:41 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 8 Oct 2016, Varsha Rao wrote: 
>
> > In this patch dwIoBase is renamed as iobase.This is done to fix the 
> checkpatch issue of CamelCase. 
>
> Put at least one space after a period.  Limit the commit message line 
> length to around 70 characters. 
>
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/vt6655/baseband.c |  52 +++--- 
> >  drivers/staging/vt6655/baseband.h |   8 +- 
> >  drivers/staging/vt6655/card.c     |  30 ++-- 
> >  drivers/staging/vt6655/mac.h      | 322 
> +++++++++++++++++++------------------- 
> >  drivers/staging/vt6655/rf.c       |  64 ++++---- 
> >  drivers/staging/vt6655/srom.c     |  32 ++-- 
> >  drivers/staging/vt6655/srom.h     |   6 +- 
> >  7 files changed, 257 insertions(+), 257 deletions(-) 
> > 
> > diff --git a/drivers/staging/vt6655/baseband.c 
> b/drivers/staging/vt6655/baseband.c 
> > index de503a3..e739ecc 100644 
> > --- a/drivers/staging/vt6655/baseband.c 
> > +++ b/drivers/staging/vt6655/baseband.c 
> > @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 frame_length, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
>
> You should preserve the alignment of the different comments. 
>
> julia 
>
> >   *      byBBAddr    - address of register in Baseband 
> >   *  Out: 
> >   *      pbyData     - data read 
> > @@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 frame_length, 
> >  bool BBbReadEmbedded(struct vnt_private *priv, 
> >                       unsigned char byBBAddr, unsigned char *pbyData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byValue; 
> > 
> >          /* BB reg offset */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr); 
> > 
> >          /* turn on REGR */ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> > +        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR); 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > +                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue); 
> >                  if (byValue & BBREGCTL_DONE) 
> >                          break; 
> >          } 
> > 
> >          /* get BB data */ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BBREGDATA, pbyData); 
> > +        VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData); 
> > 
> >          if (ww == W_MAX_TIMEOUT) { 
> >                  pr_debug(" DBG_PORT80(0x30)\n"); 
> > @@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      byBBAddr    - address of register in Baseband 
> >   *      byData      - data to write 
> >   *  Out: 
> > @@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *priv, 
> >  bool BBbWriteEmbedded(struct vnt_private *priv, 
> >                        unsigned char byBBAddr, unsigned char byData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byValue; 
> > 
> >          /* BB reg offset */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGADR, byBBAddr); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr); 
> >          /* set BB data */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BBREGDATA, byData); 
> > +        VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData); 
> > 
> >          /* turn on BBREGCTL_REGW */ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> > +        MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW); 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_BBREGCTL, &byValue); 
> > +                VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue); 
> >                  if (byValue & BBREGCTL_DONE) 
> >                          break; 
> >          } 
> > @@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      byRevId     - Revision ID 
> >   *      byRFType    - RF type 
> >   *  Out: 
> > @@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >  { 
> >          bool bResult = true; 
> >          int        ii; 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned char byRFType = priv->byRFType; 
> >          unsigned char byLocalID = priv->byLocalID; 
> > 
> > @@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> > 
>                                          byVT3253B0_AGC4_RFMD2959[ii][0], 
> > 
>                                          byVT3253B0_AGC4_RFMD2959[ii][1]); 
> > 
> > -                        VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 
> 0x23); 
> > -                        MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> > +                        VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23); 
> > +                        MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, 
> BIT(0)); 
> >                  } 
> >                  priv->abyBBVGA[0] = 0x18; 
> >                  priv->abyBBVGA[1] = 0x0A; 
> > @@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                                  byVT3253B0_AGC[ii][0], 
> >                                  byVT3253B0_AGC[ii][1]); 
> > 
> > -                VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23); 
> > -                MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0)); 
> > +                VNSvOutPortB(iobase + MAC_REG_ITRTMSET, 0x23); 
> > +                MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0)); 
> > 
> >                  priv->abyBBVGA[0] = 0x14; 
> >                  priv->abyBBVGA[1] = 0x0A; 
> > @@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                   * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/ 
> > 
> >                  /* Init ANT B select, 
> >                   * RX Config CR10 = 0x28->0x2A, 
> > @@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                   * make the ANT_A, ANT_B inverted) 
> >                   */ 
> > 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/ 
> >                  /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >                  bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> > 
> > @@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                  priv->ldBmThreshold[2] = 0; 
> >                  priv->ldBmThreshold[3] = 0; 
> >                  /* Fix VT3226 DFC system timing issue */ 
> > -                MACvSetRFLE_LatchBase(dwIoBase); 
> > +                MACvSetRFLE_LatchBase(iobase); 
> >                  /* {{ RobertYu: 20050104 */ 
> >          } else if (byRFType == RF_AIROHA7230) { 
> >                  for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; 
> ii++) 
> > @@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *priv) 
> >                  /* Init ANT B select,TX Config CR09 = 0x61->0x45, 
> >                   * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/ 
> >                  /* Init ANT B select,RX Config CR10 = 0x28->0x2A, 
> >                   * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B 
> inverted) 
> >                   */ 
> > -                /*bResult &= BBbWriteEmbedded(dwIoBase,0x0a,0x28);*/ 
> > +                /*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/ 
> >                  /* Select VC1/VC2, CR215 = 0x02->0x06 */ 
> >                  bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06); 
> >                  /* }} */ 
> > @@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, 
> unsigned char byData) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > diff --git a/drivers/staging/vt6655/baseband.h 
> b/drivers/staging/vt6655/baseband.h 
> > index a732fba..1d1d4fc 100644 
> > --- a/drivers/staging/vt6655/baseband.h 
> > +++ b/drivers/staging/vt6655/baseband.h 
> > @@ -58,11 +58,11 @@ 
> >  #define TOP_RATE_2M         0x00200000 
> >  #define TOP_RATE_1M         0x00100000 
> > 
> > -#define bbvclearfoe(dwIoBase)                                \ 
> > -        BBbWriteEmbedded(dwIoBase, 0xB1, 0) 
> > +#define bbvclearfoe(iobase)                                \ 
> > +        BBbWriteEmbedded(iobase, 0xB1, 0) 
> > 
> > -#define BBvSetFOE(dwIoBase)                                \ 
> > -        BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C) 
> > +#define BBvSetFOE(iobase)                                \ 
> > +        BBbWriteEmbedded(iobase, 0xB1, 0x0C) 
> > 
> >  unsigned int 
> >  BBuGetFrameTime( 
> > diff --git a/drivers/staging/vt6655/card.c 
> b/drivers/staging/vt6655/card.c 
> > index dbcea44..03790bb 100644 
> > --- a/drivers/staging/vt6655/card.c 
> > +++ b/drivers/staging/vt6655/card.c 
> > @@ -36,7 +36,7 @@ 
> >   * 
> >   * Revision History: 
> >   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 
> spec. 
> > - *      08-26-2003 Kyle Hsu:      Modify the defination type of 
> dwIoBase. 
> > + *      08-26-2003 Kyle Hsu:      Modify the defination type of iobase. 
> >   *      09-01-2003 Bryan YC Fan:  Add vUpdateIFS(). 
> >   * 
> >   */ 
> > @@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 
> qwTSF1, u64 qwTSF2) 
> >   */ 
> >  bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCurrTSF) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned char byData; 
> > 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD); 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortB(dwIoBase + MAC_REG_TFTCTL, &byData); 
> > +                VNSvInPortB(iobase + MAC_REG_TFTCTL, &byData); 
> >                  if (!(byData & TFTCTL_TSFCNTRRD)) 
> >                          break; 
> >          } 
> >          if (ww == W_MAX_TIMEOUT) 
> >                  return false; 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF); 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 
> 1); 
> > +        VNSvInPortD(iobase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF); 
> > +        VNSvInPortD(iobase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 
> 1); 
> > 
> >          return true; 
> >  } 
> > @@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short 
> wBeaconInterval) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase        - IO Base 
> > + *      iobase        - IO Base 
> >   *      wBeaconInterval - Beacon Interval 
> >   *  Out: 
> >   *      none 
> > @@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short 
> wBeaconInterval) 
> >  void CARDvSetFirstNextTBTT(struct vnt_private *priv, 
> >                             unsigned short wBeaconInterval) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          u64 qwNextTBTT = 0; 
> > 
> >          CARDbGetCurrentTSF(priv, &qwNextTBTT); /* Get Local TSF counter 
> */ 
> > 
> >          qwNextTBTT = CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval); 
> >          /* Set NextTBTT */ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT); 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT 
> >> 32)); 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwNextTBTT); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT >> 
> 32)); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> >  } 
> > 
> >  /* 
> > @@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_private 
> *priv, 
> >  void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF, 
> >                           unsigned short wBeaconInterval) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> > 
> >          qwTSF = CARDqGetNextTBTT(qwTSF, wBeaconInterval); 
> >          /* Set NextTBTT */ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT, (u32)qwTSF); 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 
> 32)); 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT, (u32)qwTSF); 
> > +        VNSvOutPortD(iobase + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF >> 
> 32)); 
> > +        MACvRegBitsOn(iobase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN); 
> >          pr_debug("Card:Update Next TBTT[%8llx]\n", qwTSF); 
> >  } 
> > diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h 
> > index 030f529..4d8b748 100644 
> > --- a/drivers/staging/vt6655/mac.h 
> > +++ b/drivers/staging/vt6655/mac.h 
> > @@ -554,341 +554,341 @@ 
> > 
> >  /*---------------------  Export Macros ------------------------------*/ 
> > 
> > -#define MACvRegBitsOn(dwIoBase, byRegOfs, 
> byBits)                        \ 
> > +#define MACvRegBitsOn(iobase, byRegOfs, 
> byBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData | 
> (byBits));                \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData | 
> (byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvWordRegBitsOn(dwIoBase, byRegOfs, 
> wBits)                        \ 
> > +#define MACvWordRegBitsOn(iobase, byRegOfs, 
> wBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned short 
> wData;                                                \ 
> > -        VNSvInPortW(dwIoBase + byRegOfs, 
> &wData);                        \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wData | 
> (wBits));                \ 
> > +        VNSvInPortW(iobase + byRegOfs, 
> &wData);                        \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wData | 
> (wBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, 
> dwBits)                        \ 
> > +#define MACvDWordRegBitsOn(iobase, byRegOfs, 
> dwBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + byRegOfs, 
> &dwData);                        \ 
> > -        VNSvOutPortD(dwIoBase + byRegOfs, dwData | 
> (dwBits));                \ 
> > +        VNSvInPortD(iobase + byRegOfs, 
> &dwData);                        \ 
> > +        VNSvOutPortD(iobase + byRegOfs, dwData | 
> (dwBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, 
> byBits)                \ 
> > +#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, 
> byBits)                \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> >          byData &= 
> byMask;                                                \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData | 
> (byBits));                \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData | 
> (byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvRegBitsOff(dwIoBase, byRegOfs, 
> byBits)                        \ 
> > +#define MACvRegBitsOff(iobase, byRegOfs, 
> byBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byData;                                                \ 
> > -        VNSvInPortB(dwIoBase + byRegOfs, 
> &byData);                        \ 
> > -        VNSvOutPortB(dwIoBase + byRegOfs, byData & 
> ~(byBits));                \ 
> > +        VNSvInPortB(iobase + byRegOfs, 
> &byData);                        \ 
> > +        VNSvOutPortB(iobase + byRegOfs, byData & 
> ~(byBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvWordRegBitsOff(dwIoBase, byRegOfs, 
> wBits)                        \ 
> > +#define MACvWordRegBitsOff(iobase, byRegOfs, 
> wBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned short 
> wData;                                                \ 
> > -        VNSvInPortW(dwIoBase + byRegOfs, 
> &wData);                        \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wData & 
> ~(wBits));                \ 
> > +        VNSvInPortW(iobase + byRegOfs, 
> &wData);                        \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wData & 
> ~(wBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, 
> dwBits)                        \ 
> > +#define MACvDWordRegBitsOff(iobase, byRegOfs, 
> dwBits)                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + byRegOfs, 
> &dwData);                        \ 
> > -        VNSvOutPortD(dwIoBase + byRegOfs, dwData & 
> ~(dwBits));                \ 
> > +        VNSvInPortD(iobase + byRegOfs, 
> &dwData);                        \ 
> > +        VNSvOutPortD(iobase + byRegOfs, dwData & 
> ~(dwBits));                \ 
> >  } while (0) 
> > 
> > -#define MACvGetCurrRx0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0,                \ 
> > +#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMAPTR0,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrRx1DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1,                \ 
> > +#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMAPTR1,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrTx0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0,                \ 
> > +#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_TXDMAPTR0,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrAC0DescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR,                \ 
> > +#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_AC0DMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrSyncDescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMAPTR,                \ 
> > +#define MACvGetCurrSyncDescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_SYNCDMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> > -#define MACvGetCurrATIMDescAddr(dwIoBase, pdwCurrDescAddr)        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMAPTR,                \ 
> > +#define MACvGetCurrATIMDescAddr(iobase, pdwCurrDescAddr)        \ 
> > +        VNSvInPortD(iobase + MAC_REG_ATIMDMAPTR,                \ 
> >                      (unsigned long *)pdwCurrDescAddr) 
> > 
> >  /* set the chip with current BCN tx descriptor address */ 
> > -#define MACvSetCurrBCNTxDescAddr(dwIoBase, dwCurrDescAddr)        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR,                \ 
> > +#define MACvSetCurrBCNTxDescAddr(iobase, dwCurrDescAddr)        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_BCNDMAPTR,                \ 
> >                       dwCurrDescAddr) 
> > 
> >  /* set the chip with current BCN length */ 
> > -#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)                \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_BCNDMACTL+2,                \ 
> > +#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)                \ 
> > +        VNSvOutPortW(iobase + MAC_REG_BCNDMACTL+2,                \ 
> >                       wCurrBCNLength) 
> > 
> > -#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0,                        \ 
> >                      (unsigned char *)pbyEtherAddr);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 1,                \ 
> >                      pbyEtherAddr + 1);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 2,                \ 
> >                      pbyEtherAddr + 2);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 3,                \ 
> >                      pbyEtherAddr + 3);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 4,                \ 
> >                      pbyEtherAddr + 4);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_BSSID0 + 5,                \ 
> >                      pbyEtherAddr + 5);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvWriteBSSIDAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortB(dwIoBase + 
> MAC_REG_BSSID0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0,                        \ 
> >                       *(pbyEtherAddr));                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 1,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 1,                \ 
> >                       *(pbyEtherAddr + 1));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 2,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 2,                \ 
> >                       *(pbyEtherAddr + 2));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 3,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 3,                \ 
> >                       *(pbyEtherAddr + 3));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 4,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 4,                \ 
> >                       *(pbyEtherAddr + 4));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BSSID0 + 5,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BSSID0 + 5,                \ 
> >                       *(pbyEtherAddr + 5));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvReadEtherAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0,                        \ 
> >                      (unsigned char *)pbyEtherAddr);                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 1,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 1,                \ 
> >                      pbyEtherAddr + 1);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 2,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 2,                \ 
> >                      pbyEtherAddr + 2);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 3,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 3,                \ 
> >                      pbyEtherAddr + 3);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 4,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 4,                \ 
> >                      pbyEtherAddr + 4);                                \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_PAR0 + 5,                \ 
> > +        VNSvInPortB(iobase + MAC_REG_PAR0 + 5,                \ 
> >                      pbyEtherAddr + 5);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvWriteEtherAddress(dwIoBase, pbyEtherAddr)                \ 
> > +#define MACvWriteEtherAddress(iobase, pbyEtherAddr)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0,                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0,                        \ 
> >                       *pbyEtherAddr);                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 1,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 1,                \ 
> >                       *(pbyEtherAddr + 1));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 2,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 2,                \ 
> >                       *(pbyEtherAddr + 2));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 3,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 3,                \ 
> >                       *(pbyEtherAddr + 3));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 4,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 4,                \ 
> >                       *(pbyEtherAddr + 4));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAR0 + 5,                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAR0 + 5,                \ 
> >                       *(pbyEtherAddr + 5));                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvClearISR(dwIoBase)                                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ISR, IMR_MASK_VALUE) 
> > +#define 
> MACvClearISR(iobase)                                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ISR, IMR_MASK_VALUE) 
> > 
> > -#define 
> MACvStart(dwIoBase)                                                \ 
> > -        VNSvOutPortB(dwIoBase + 
> MAC_REG_HOSTCR,                                \ 
> > +#define 
> MACvStart(iobase)                                                \ 
> > +        VNSvOutPortB(iobase + 
> MAC_REG_HOSTCR,                                \ 
> >                       (HOSTCR_MACEN | HOSTCR_RXON | HOSTCR_TXON)) 
> > 
> > -#define 
> MACvRx0PerPktMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKT) 
> > +#define 
> MACvRx0PerPktMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKT) 
> > 
> > -#define 
> MACvRx0BufferFillMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, RX_PERPKTCLR) 
> > +#define 
> MACvRx0BufferFillMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, RX_PERPKTCLR) 
> > 
> > -#define 
> MACvRx1PerPktMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKT) 
> > +#define 
> MACvRx1PerPktMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKT) 
> > 
> > -#define 
> MACvRx1BufferFillMode(dwIoBase)                                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, RX_PERPKTCLR) 
> > +#define 
> MACvRx1BufferFillMode(iobase)                                        \ 
> > +        VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, RX_PERPKTCLR) 
> > 
> > -#define 
> MACvRxOn(dwIoBase)                                                \ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON) 
> > +#define 
> MACvRxOn(iobase)                                                \ 
> > +        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_RXON) 
> > 
> > -#define 
> MACvReceive0(dwIoBase)                                                \ 
> > +#define 
> MACvReceive0(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL0, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMACTL0, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL0, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvReceive1(dwIoBase)                                                \ 
> > +#define 
> MACvReceive1(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_RXDMACTL1, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_RXDMACTL1, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_RXDMACTL1, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTxOn(dwIoBase)                                                \ 
> > -        MACvRegBitsOn(dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON) 
> > +#define 
> MACvTxOn(iobase)                                                \ 
> > +        MACvRegBitsOn(iobase, MAC_REG_HOSTCR, HOSTCR_TXON) 
> > 
> > -#define 
> MACvTransmit0(dwIoBase)                                                \ 
> > +#define 
> MACvTransmit0(iobase)                                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_TXDMACTL0, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_TXDMACTL0, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_TXDMACTL0, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitAC0(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitAC0(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_AC0DMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_AC0DMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN); 
> \ 
> > +                VNSvOutPortD(iobase + MAC_REG_AC0DMACTL, DMACTL_RUN); \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitSYNC(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitSYNC(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_SYNCDMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_SYNCDMACTL, 
> DMACTL_RUN); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_SYNCDMACTL, DMACTL_RUN); 
> \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitATIM(dwIoBase)                                        \ 
> > +#define 
> MACvTransmitATIM(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwData;                                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> &dwData);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ATIMDMACTL, 
> &dwData);                \ 
> >          if (dwData & 
> DMACTL_RUN)                                        \ 
> > -                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> DMACTL_WAKE); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_WAKE); 
> \ 
> > 
>          else                                                                \ 
>
> > -                VNSvOutPortD(dwIoBase + MAC_REG_ATIMDMACTL, 
> DMACTL_RUN); \ 
> > +                VNSvOutPortD(iobase + MAC_REG_ATIMDMACTL, DMACTL_RUN); 
> \ 
> >  } while (0) 
> > 
> > -#define 
> MACvTransmitBCN(dwIoBase)                                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_BCNDMACTL, BEACON_READY) 
> > +#define 
> MACvTransmitBCN(iobase)                                        \ 
> > +        VNSvOutPortB(iobase + MAC_REG_BCNDMACTL, BEACON_READY) 
> > 
> > -#define 
> MACvClearStckDS(dwIoBase)                                        \ 
> > +#define 
> MACvClearStckDS(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned char 
> byOrgValue;                                        \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_STICKHW, 
> &byOrgValue);                \ 
> > +        VNSvInPortB(iobase + MAC_REG_STICKHW, 
> &byOrgValue);                \ 
> >          byOrgValue = byOrgValue & 
> 0xFC;                                        \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_STICKHW, 
> byOrgValue);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_STICKHW, 
> byOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadISR(dwIoBase, 
> pdwValue)                                \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ISR, pdwValue) 
> > +#define MACvReadISR(iobase, pdwValue)                                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ISR, pdwValue) 
> > 
> > -#define MACvWriteISR(dwIoBase, 
> dwValue)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ISR, dwValue) 
> > +#define MACvWriteISR(iobase, dwValue)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ISR, dwValue) 
> > 
> > -#define MACvIntEnable(dwIoBase, 
> dwMask)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IMR, dwMask) 
> > +#define MACvIntEnable(iobase, dwMask)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_IMR, dwMask) 
> > 
> > -#define MACvIntDisable(dwIoBase)                                \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IMR, 0) 
> > +#define MACvIntDisable(iobase)                                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_IMR, 0) 
> > 
> > -#define MACvSelectPage0(dwIoBase)                                \ 
> > -                VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0) 
> > +#define MACvSelectPage0(iobase)                                \ 
> > +                VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0) 
> > 
> > -#define MACvSelectPage1(dwIoBase)                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1) 
> > +#define MACvSelectPage1(iobase)                                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1) 
> > 
> > -#define MACvReadMIBCounter(dwIoBase, 
> pdwCounter)                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_MIBCNTR, pdwCounter) 
> > +#define MACvReadMIBCounter(iobase, pdwCounter)                        \ 
> > +        VNSvInPortD(iobase + MAC_REG_MIBCNTR, pdwCounter) 
> > 
> > -#define 
> MACvPwrEvntDisable(dwIoBase)                                        \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_WAKEUPEN0, 0x0000) 
> > +#define 
> MACvPwrEvntDisable(iobase)                                        \ 
> > +        VNSvOutPortW(iobase + MAC_REG_WAKEUPEN0, 0x0000) 
> > 
> > -#define 
> MACvEnableProtectMD(dwIoBase)                                        \ 
> > +#define 
> MACvEnableProtectMD(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue | 
> EnCFG_ProtectMd;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvDisableProtectMD(dwIoBase)                                        \ 
> > +#define 
> MACvDisableProtectMD(iobase)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_ProtectMd;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvEnableBarkerPreambleMd(dwIoBase)                                \ 
> > +#define 
> MACvEnableBarkerPreambleMd(iobase)                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue | 
> EnCFG_BarkerPream;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define 
> MACvDisableBarkerPreambleMd(dwIoBase)                                \ 
> > +#define 
> MACvDisableBarkerPreambleMd(iobase)                                \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_BarkerPream;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvSetBBType(dwIoBase, 
> byTyp)                                        \ 
> > +#define MACvSetBBType(iobase, 
> byTyp)                                        \ 
> >  do 
> {                                                                        \ 
> >          unsigned long 
> dwOrgValue;                                        \ 
> > -        VNSvInPortD(dwIoBase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> > +        VNSvInPortD(iobase + MAC_REG_ENCFG, 
> &dwOrgValue);                \ 
> >          dwOrgValue = dwOrgValue & 
> ~EnCFG_BBType_MASK;                        \ 
> >          dwOrgValue = dwOrgValue | (unsigned 
> long)byTyp;                        \ 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> > +        VNSvOutPortD(iobase + MAC_REG_ENCFG, 
> dwOrgValue);                \ 
> >  } while (0) 
> > 
> > -#define MACvReadATIMW(dwIoBase, 
> pwCounter)                                \ 
> > -        VNSvInPortW(dwIoBase + MAC_REG_AIDATIM, pwCounter) 
> > +#define MACvReadATIMW(iobase, 
> pwCounter)                                \ 
> > +        VNSvInPortW(iobase + MAC_REG_AIDATIM, pwCounter) 
> > 
> > -#define MACvWriteATIMW(dwIoBase, 
> wCounter)                                \ 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_AIDATIM, wCounter) 
> > +#define MACvWriteATIMW(iobase, 
> wCounter)                                \ 
> > +        VNSvOutPortW(iobase + MAC_REG_AIDATIM, wCounter) 
> > 
> > -#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)                \ 
> > +#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)                \ 
> >  do {                                                                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 1);                \ 
> > -        VNSvOutPortW(dwIoBase + byRegOfs, wCRC);                \ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PAGE1SEL, 0);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 1);                \ 
> > +        VNSvOutPortW(iobase + byRegOfs, wCRC);                \ 
> > +        VNSvOutPortB(iobase + MAC_REG_PAGE1SEL, 0);                \ 
> >  } while (0) 
> > 
> > -#define MACvGPIOIn(dwIoBase, 
> pbyValue)                                        \ 
> > -        VNSvInPortB(dwIoBase + MAC_REG_GPIOCTL1, pbyValue) 
> > +#define MACvGPIOIn(iobase, 
> pbyValue)                                        \ 
> > +        VNSvInPortB(iobase + MAC_REG_GPIOCTL1, pbyValue) 
> > 
> > -#define MACvSetRFLE_LatchBase(dwIoBase)                                 
> \ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_RFLEOPT) 
> > +#define MACvSetRFLE_LatchBase(iobase)                                 \ 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_RFLEOPT) 
> > 
> >  bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byRegOfs, 
> >                       unsigned char byTestBits); 
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c 
> > index 447882c..92bb1c6 100644 
> > --- a/drivers/staging/vt6655/rf.c 
> > +++ b/drivers/staging/vt6655/rf.c 
> > @@ -410,7 +410,7 @@ static const unsigned long 
> dwAL7230ChannelTable2[CB_MAX_CHANNEL] = { 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -419,16 +419,16 @@ static const unsigned long 
> dwAL7230ChannelTable2[CB_MAX_CHANNEL] = { 
> >   */ 
> >  static bool s_bAL7230Init(struct vnt_private *priv) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int     ii; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* 3-wire control for normal mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0); 
> > +        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> >          BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value 
> for Calibration */ 
> > 
> > @@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> >                  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]); 
> > 
> >          /* PLL On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* Calibration */ 
> >          MACvTimer0MicroSDelay(priv, 150);/* 150us */ 
> > @@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> >          /* TXDCOC:disable, RCK:disable */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPE3    | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 
>    | 
> >                                                           
> SOFTPWRCTL_SWPE2    | 
> >                                                           
> SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> > @@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *priv) 
> > 
> >          /* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */ 
> >          /* 3-wire control for power saving mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > +        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > 
> >          return ret; 
> >  } 
> > @@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private 
> *priv) 
> >   */ 
> >  static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned 
> char byChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* PLLON Off */ 
> > -        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[byChannel 
> - 1]); 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel 
> - 1]); 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel 
> - 1]); 
> > 
> >          /* PLLOn On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* Set Channel[7] = 0 to tell H/W channel is changing now. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> >          MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230); 
> >          /* Set Channel[7] = 1 to tell H/W channel change is done. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > 
> >          return ret; 
> >  } 
> > @@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      dwData      - data to write 
> >   *  Out: 
> >   *      none 
> > @@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >   */ 
> >  bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          unsigned short ww; 
> >          unsigned long dwValue; 
> > 
> > -        VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwData); 
> > +        VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData); 
> > 
> >          /* W_MAX_TIMEOUT is the timeout period */ 
> >          for (ww = 0; ww < W_MAX_TIMEOUT; ww++) { 
> > -                VNSvInPortD(dwIoBase + MAC_REG_IFREGCTL, &dwValue); 
> > +                VNSvInPortD(iobase + MAC_REG_IFREGCTL, &dwValue); 
> >                  if (dwValue & IFREGCTL_DONE) 
> >                          break; 
> >          } 
> > @@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, 
> unsigned long dwData) 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *  Out: 
> >   *      none 
> >   * 
> > @@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, 
> unsigned long dwData) 
> >   */ 
> >  static bool RFbAL2230Init(struct vnt_private *priv) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int     ii; 
> >          bool ret; 
> > 
> >          ret = true; 
> > 
> >          /* 3-wire control for normal mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0); 
> > +        VNSvOutPortB(iobase + MAC_REG_SOFTPWRCTL, 0); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> >          /* PLL  Off */ 
> > -        MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          /* patch abnormal AL2230 frequency output */ 
> >          IFRFbWriteEmbedded(priv, 
> (0x07168700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW)); 
> > @@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *priv) 
> >          MACvTimer0MicroSDelay(priv, 30); /* delay 30 us */ 
> > 
> >          /* PLL On */ 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, 
> SOFTPWRCTL_SWPE3); 
> > 
> >          MACvTimer0MicroSDelay(priv, 150);/* 150us */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> (0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW)); 
> > @@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private 
> *priv) 
> >          MACvTimer0MicroSDelay(priv, 30);/* 30us */ 
> >          ret &= IFRFbWriteEmbedded(priv, 
> dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]); 
> > 
> > -        MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, 
> (SOFTPWRCTL_SWPE3    | 
> > +        MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 
>    | 
> >                                                           
> SOFTPWRCTL_SWPE2    | 
> >                                                           
> SOFTPWRCTL_SWPECTI  | 
> >                                                           
> SOFTPWRCTL_TXPEINV)); 
> > 
> >          /* 3-wire control for power saving mode */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > +        VNSvOutPortB(iobase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | 
> PSSIG_WPE2)); /* 1100 0000 */ 
> > 
> >          return ret; 
> >  } 
> > 
> >  static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned 
> char byChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          bool ret; 
> > 
> >          ret = true; 
> > @@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct 
> vnt_private *priv, unsigned char byCha 
> >          ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel 
> - 1]); 
> > 
> >          /* Set Channel[7] = 0 to tell H/W channel is changing now. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F)); 
> >          MACvTimer0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230); 
> >          /* Set Channel[7] = 1 to tell H/W channel change is done. */ 
> > -        VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > +        VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel | 0x80)); 
> > 
> >          return ret; 
> >  } 
> > @@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv, 
> unsigned char byRFType, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase    - I/O base address 
> >   *      uChannel    - channel number 
> >   *      bySleepCnt  - SleepProgSyn count 
> >   * 
> > @@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *priv, 
> unsigned char byRFType, 
> >  bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char 
> byRFType, 
> >                           u16 uChannel) 
> >  { 
> > -        void __iomem *dwIoBase = priv->PortOffset; 
> > +        void __iomem *iobase = priv->PortOffset; 
> >          int   ii; 
> >          unsigned char byInitCount = 0; 
> >          unsigned char bySleepCount = 0; 
> > 
> > -        VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0); 
> > +        VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0); 
> >          switch (byRFType) { 
> >          case RF_AIROHA: 
> >          case RF_AL2230S: 
> > @@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, 
> unsigned char byRFType, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase       - I/O base address 
> > + *      iobase       - I/O base address 
> >   *      dwRFPowerTable - RF Tx Power Setting 
> >   *  Out: 
> >   *      none 
> > @@ -830,7 +830,7 @@ bool RFbSetPower( 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase       - I/O base address 
> > + *      iobase       - I/O base address 
> >   *      dwRFPowerTable - RF Tx Power Setting 
> >   *  Out: 
> >   *      none 
> > diff --git a/drivers/staging/vt6655/srom.c 
> b/drivers/staging/vt6655/srom.c 
> > index ee99277..0b612d3 100644 
> > --- a/drivers/staging/vt6655/s...


------=_Part_4463_1815233459.1475950760089
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 <br>=C2=A0 I will make the changes.Thanks for your =
reply.<br><br>On Saturday, October 8, 2016 at 11:07:41 PM UTC+5:30, Julia L=
awall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 8 Oct 2016, Varsha Rao wrote:
<br>
<br>&gt; In this patch dwIoBase is renamed as iobase.This is done to fix th=
e checkpatch issue of CamelCase.
<br>
<br>Put at least one space after a period. =C2=A0Limit the commit message l=
ine
<br>length to around 70 characters.
<br>
<br>&gt;
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"vx59hIFnAAAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.c | =C2=A052 +++---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.h | =C2=A0 8 +-
<br>&gt; =C2=A0drivers/staging/vt6655/card.c =C2=A0 =C2=A0 | =C2=A030 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/mac.h =C2=A0 =C2=A0 =C2=A0| 322 +++++=
++++++++++++++-----------<wbr>--------
<br>&gt; =C2=A0drivers/staging/vt6655/rf.c =C2=A0 =C2=A0 =C2=A0 | =C2=A064 =
++++----
<br>&gt; =C2=A0drivers/staging/vt6655/srom.c =C2=A0 =C2=A0 | =C2=A032 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/srom.h =C2=A0 =C2=A0 | =C2=A0 6 +-
<br>&gt; =C2=A07 files changed, 257 insertions(+), 257 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.c b/drivers/stag=
ing/vt6655/<wbr>baseband.c
<br>&gt; index de503a3..e739ecc 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *p=
riv, u32 frame_length,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>
<br>You should preserve the alignment of the different comments.
<br>
<br>julia
<br>
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byBBAddr =C2=A0 =C2=A0- address of re=
gister in Baseband
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0pbyData =C2=A0 =C2=A0 - data read
<br>&gt; @@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private =
*priv, u32 frame_length,
<br>&gt; =C2=A0bool BBbReadEmbedded(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 unsigned char byBBAddr, =
unsigned char *pbyData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byValue;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* BB reg of=
fset */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGADR, byBBAddr);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* turn on R=
EGR */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_BBREGC=
TL, &amp;byValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_BBREGCTL=
, &amp;byValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* get BB da=
ta */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BBREGDATA, pbyData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BBREGDATA, pbyData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ww =3D=
=3D W_MAX_TIMEOUT) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&quot; DBG_PORT80(0x30)\n&quot=
;);
<br>&gt; @@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *pri=
v,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byBBAddr =C2=A0 =C2=A0- address of re=
gister in Baseband
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byData =C2=A0 =C2=A0 =C2=A0- data to =
write
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; @@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *p=
riv,
<br>&gt; =C2=A0bool BBbWriteEmbedded(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBB=
Addr, unsigned char byData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byValue;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* BB reg of=
fset */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* set BB da=
ta */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGDATA, byData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGDATA, byData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* turn on B=
BREGCTL_REGW */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_BBREGC=
TL, &amp;byValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_BBREGCTL=
, &amp;byValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *pr=
iv,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byRevId =C2=A0 =C2=A0 - Revision ID
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byRFType =C2=A0 =C2=A0- RF type
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; @@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool bResult=
 =3D true;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 =C2=A0 =C2=A0ii;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byRFType =3D priv-&gt;byRFType;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byLocalID =3D priv-&gt;byLocalID;
<br>&gt;
<br>&gt; @@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byVT3253B0_AGC4_<wbr>RFMD2959[ii][0],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byVT3253B0_AGC4_<wbr>RFMD2959[ii][1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[0] =3D 0x18;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[1] =3D 0x0A;
<br>&gt; @@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0byVT3253B0_AG=
C[ii][0],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0byVT3253B0_AG=
C[ii][1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>dwIoBase + MAC_REG_ITRTM=
SET, 0x23);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvRegBitsOn(dwIoBase, MAC_REG_PAPED=
ELAY, BIT(0));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>iobase + MAC_REG_ITRTMSE=
T, 0x23);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvRegBitsOn(iobase, MAC_REG_PAPEDEL=
AY, BIT(0));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[0] =3D 0x14;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[1] =3D 0x0A;
<br>&gt; @@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x45-&gt;0x41(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x09,<wbr>0x41);*/
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * RX Config CR10 =3D 0x28-&gt;0x2A,
<br>&gt; @@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * make the ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x0a,<wbr>0x28);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Select VC1/VC2, CR215 =3D 0x02-&gt;0=
x06 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,=
 0xd7, 0x06);
<br>&gt;
<br>&gt; @@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Fix VT3226 DFC system timing issue *=
/
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvSetRFLE_<wbr>LatchBase(dwIoBase);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvSetRFLE_<wbr>LatchBase(iobase);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* {{ RobertYu: 20050104 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (b=
yRFType =3D=3D RF_AIROHA7230) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ii =3D 0; ii &lt; CB_VT3253B0_INIT=
_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; @@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *pri=
v)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,TX Config CR09 =3D=
 0x61-&gt;0x45,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x45-&gt;0x41(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x09,<wbr>0x41);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,RX Config CR10 =3D=
 0x28-&gt;0x2A,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x2A-&gt;0x28(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x0a,<wbr>0x28);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Select VC1/VC2, CR215 =3D 0x02-&gt;0=
x06 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,=
 0xd7, 0x06);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* }} */
<br>&gt; @@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private =
*priv, unsigned char byData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.h b/drivers/stag=
ing/vt6655/<wbr>baseband.h
<br>&gt; index a732fba..1d1d4fc 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.h
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.h
<br>&gt; @@ -58,11 +58,11 @@
<br>&gt; =C2=A0#define TOP_RATE_2M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00200000
<br>&gt; =C2=A0#define TOP_RATE_1M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00100000
<br>&gt;
<br>&gt; -#define bbvclearfoe(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>dwIoBase, 0xB1, 0)
<br>&gt; +#define bbvclearfoe(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>iobase, 0xB1, 0)
<br>&gt;
<br>&gt; -#define BBvSetFOE(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>dwIoBase, 0xB1, 0x0C)
<br>&gt; +#define BBvSetFOE(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>iobase, 0xB1, 0x0C)
<br>&gt;
<br>&gt; =C2=A0unsigned int
<br>&gt; =C2=A0BBuGetFrameTime(
<br>&gt; diff --git a/drivers/staging/vt6655/card.<wbr>c b/drivers/staging/=
vt6655/card.<wbr>c
<br>&gt; index dbcea44..03790bb 100644
<br>&gt; --- a/drivers/staging/vt6655/card.<wbr>c
<br>&gt; +++ b/drivers/staging/vt6655/card.<wbr>c
<br>&gt; @@ -36,7 +36,7 @@
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Revision History:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A006-10-2003 Bryan YC Fan: =C2=A0Re-wri=
te codes to support VT3253 spec.
<br>&gt; - * =C2=A0 =C2=A0 =C2=A008-26-2003 Kyle Hsu: =C2=A0 =C2=A0 =C2=A0M=
odify the defination type of dwIoBase.
<br>&gt; + * =C2=A0 =C2=A0 =C2=A008-26-2003 Kyle Hsu: =C2=A0 =C2=A0 =C2=A0M=
odify the defination type of iobase.
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A009-01-2003 Bryan YC Fan: =C2=A0Add vU=
pdateIFS().
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; @@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate=
, u64 qwTSF1, u64 qwTSF2)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCu=
rrTSF)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_TFTCTL=
, &amp;byData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_TFTCTL, =
&amp;byData);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!(byData &amp; TFTCTL_TSFCNTRRD))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ww =3D=
=3D W_MAX_TIMEOUT)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return true;
<br>&gt; =C2=A0}
<br>&gt; @@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short=
 wBeaconInterval)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 =C2=A0- IO B=
ase
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 =C2=A0- IO Bas=
e
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0wBeaconInterval - Beacon Interval
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned sho=
rt wBeaconInterval)
<br>&gt; =C2=A0void CARDvSetFirstNextTBTT(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 unsigned short wBeaconInterval)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u64 qwNextTB=
TT =3D 0;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CARDbGetCurr=
entTSF(<wbr>priv, &amp;qwNextTBTT); /* Get Local TSF counter */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qwNextTBTT =
=3D CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set NextT=
BTT */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT &gt;&gt; 32));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT &gt;&gt; 32));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_priv=
ate *priv,
<br>&gt; =C2=A0void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF=
,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 unsigned short wBeaconInterval)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qwTSF =3D CA=
RDqGetNextTBTT(qwTSF, wBeaconInterval);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set NextT=
BTT */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT, (u32)qwTSF);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF &gt;&gt; 32));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT, (u32)qwTSF);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF &gt;&gt; 32));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&qu=
ot;Card:Update Next TBTT[%8llx]\n&quot;, qwTSF);
<br>&gt; =C2=A0}
<br>&gt; diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655=
/mac.h
<br>&gt; index 030f529..4d8b748 100644
<br>&gt; --- a/drivers/staging/vt6655/mac.h
<br>&gt; +++ b/drivers/staging/vt6655/mac.h
<br>&gt; @@ -554,341 +554,341 @@
<br>&gt;
<br>&gt; =C2=A0/*--------------------- =C2=A0Export Macros ----------------=
--------------<wbr>*/
<br>&gt;
<br>&gt; -#define MACvRegBitsOn(dwIoBase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvRegBitsOn(iobase, byRegOfs, byBits)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWordRegBitsOn(dwIoBase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; +#define MACvWordRegBitsOn(iobase, byRegOfs, wBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt wData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wData | (wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wData | (wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, dwBits)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvDWordRegBitsOn(iobase, byRegOfs, dwBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + byRegOfs, dwData | (dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + byRegOfs, dwData | (dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, byBits)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, byBits)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byData &amp;=
=3D byMask;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvRegBitsOff(dwIoBase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvRegBitsOff(iobase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData &amp; ~(byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData &amp; ~(byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWordRegBitsOff(dwIoBase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; +#define MACvWordRegBitsOff(iobase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt wData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wData &amp; ~(wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wData &amp; ~(wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, dwBits)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvDWordRegBitsOff(iobase, byRegOfs, dwBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + byRegOfs, dwData &amp; ~(dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + byRegOfs, dwData &amp; ~(dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvGetCurrRx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrRx1DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMAPTR1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMAPTR1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrTx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrAC0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_AC0DMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_AC0DMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrSyncDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_SYNCDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrSyncDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_SYNCDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrATIMDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ATIMDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrATIMDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ATIMDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; =C2=A0/* set the chip with current BCN tx descriptor address */
<br>&gt; -#define MACvSetCurrBCNTxDescAddr(<wbr>dwIoBase, dwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_BCNDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetCurrBCNTxDescAddr(<wbr>iobase, dwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_BCNDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 dwCurrDescAddr)
<br>&gt;
<br>&gt; =C2=A0/* set the chip with current BCN length */
<br>&gt; -#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_BCNDMACTL+2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_BCNDMACTL+2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 wCurrBCNLength)
<br>&gt;
<br>&gt; -#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned char *)pbyEther=
Addr);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 1);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 2);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 3);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 4);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 5);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWriteBSSIDAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr));=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 1));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 2));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 3));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 4));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 5));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvReadEtherAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned char *)pbyEther=
Addr);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 1);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 2);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 3);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 4);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 5);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWriteEtherAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvWriteEtherAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *pbyEtherAddr);=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 1));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 2));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 3));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 4));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 5));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvClearISR(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ISR, IMR_MASK_VALUE)
<br>&gt; +#define MACvClearISR(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ISR, IMR_MASK_VALUE)
<br>&gt;
<br>&gt; -#define MACvStart(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_HOSTCR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvStart(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_HOSTCR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 (HOSTCR_MACEN | HOSTCR_R=
XON | HOSTCR_TXON))
<br>&gt;
<br>&gt; -#define MACvRx0PerPktMode(dwIoBase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL0, RX_PERPKT)
<br>&gt; +#define MACvRx0PerPktMode(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL0, RX_PERPKT)
<br>&gt;
<br>&gt; -#define MACvRx0BufferFillMode(<wbr>dwIoBase)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
<br>&gt; +#define MACvRx0BufferFillMode(iobase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
<br>&gt;
<br>&gt; -#define MACvRx1PerPktMode(dwIoBase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL1, RX_PERPKT)
<br>&gt; +#define MACvRx1PerPktMode(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL1, RX_PERPKT)
<br>&gt;
<br>&gt; -#define MACvRx1BufferFillMode(<wbr>dwIoBase)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
<br>&gt; +#define MACvRx1BufferFillMode(iobase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
<br>&gt;
<br>&gt; -#define MACvRxOn(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON)
<br>&gt; +#define MACvRxOn(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_HOSTCR, HOSTCR_RXON)
<br>&gt;
<br>&gt; -#define MACvReceive0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvReceive0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL0, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L0, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL0, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L0, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReceive1(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvReceive1(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMACTL1, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMACTL1, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL1, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L1, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL1, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L1, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTxOn(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON)
<br>&gt; +#define MACvTxOn(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_HOSTCR, HOSTCR_TXON)
<br>&gt;
<br>&gt; -#define MACvTransmit0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmit0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_TXDMA=
CTL0, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_TXDMACT=
L0, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_TXDMA=
CTL0, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_TXDMACT=
L0, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitAC0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitAC0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_AC0DMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_AC0DMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_AC0DM=
ACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_AC0DMAC=
TL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_AC0DM=
ACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_AC0DMAC=
TL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitSYNC(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitSYNC(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_SYNCDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_SYNCDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_SYNCD=
MACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_SYNCDMA=
CTL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_SYNCD=
MACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_SYNCDMA=
CTL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitATIM(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitATIM(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ATIMDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ATIMDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_ATIMD=
MACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_ATIMDMA=
CTL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_ATIMD=
MACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_ATIMDMA=
CTL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitBCN(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BCNDMACTL, BEACON_READY)
<br>&gt; +#define MACvTransmitBCN(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BCNDMACTL, BEACON_READY)
<br>&gt;
<br>&gt; -#define MACvClearStckDS(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvClearStckDS(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_STICKHW, &amp;byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_STICKHW, &amp;byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byOrgValue =
=3D byOrgValue &amp; 0xFC;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_STICKHW, byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_STICKHW, byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadISR(dwIoBase, pdwValue)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ISR, pdwValue)
<br>&gt; +#define MACvReadISR(iobase, pdwValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ISR, pdwValue)
<br>&gt;
<br>&gt; -#define MACvWriteISR(dwIoBase, dwValue)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ISR, dwValue)
<br>&gt; +#define MACvWriteISR(iobase, dwValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ISR, dwValue)
<br>&gt;
<br>&gt; -#define MACvIntEnable(dwIoBase, dwMask)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IMR, dwMask)
<br>&gt; +#define MACvIntEnable(iobase, dwMask)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IMR, dwMask)
<br>&gt;
<br>&gt; -#define MACvIntDisable(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IMR, 0)
<br>&gt; +#define MACvIntDisable(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IMR, 0)
<br>&gt;
<br>&gt; -#define MACvSelectPage0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>dwIoBase + MAC_REG_PAGE1=
SEL, 0)
<br>&gt; +#define MACvSelectPage0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>iobase + MAC_REG_PAGE1SE=
L, 0)
<br>&gt;
<br>&gt; -#define MACvSelectPage1(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1)
<br>&gt; +#define MACvSelectPage1(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1)
<br>&gt;
<br>&gt; -#define MACvReadMIBCounter(dwIoBase, pdwCounter)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_MIBCNTR, pdwCounter)
<br>&gt; +#define MACvReadMIBCounter(iobase, pdwCounter)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_MIBCNTR, pdwCounter)
<br>&gt;
<br>&gt; -#define MACvPwrEvntDisable(dwIoBase)=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_WAKEUPEN0, 0x0000)
<br>&gt; +#define MACvPwrEvntDisable(iobase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_WAKEUPEN0, 0x0000)
<br>&gt;
<br>&gt; -#define MACvEnableProtectMD(dwIoBase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvEnableProtectMD(iobase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | EnCFG_ProtectMd;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDisableProtectMD(dwIoBase)<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvDisableProtectMD(iobase)=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_ProtectMd;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvEnableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvEnableBarkerPreambleMd(<wbr>iobase)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | EnCFG_BarkerPream;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDisableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvDisableBarkerPreambleMd(<wbr>iobase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_BarkerPream;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvSetBBType(dwIoBase, byTyp)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetBBType(iobase, byTyp)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_BBType_MASK;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | (unsigned long)byTyp;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadATIMW(dwIoBase, pwCounter)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + MAC_REG_AIDATIM, pwCounter)
<br>&gt; +#define MACvReadATIMW(iobase, pwCounter)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + MAC_REG_AIDATIM, pwCounter)
<br>&gt;
<br>&gt; -#define MACvWriteATIMW(dwIoBase, wCounter)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_AIDATIM, wCounter)
<br>&gt; +#define MACvWriteATIMW(iobase, wCounter)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_AIDATIM, wCounter)
<br>&gt;
<br>&gt; -#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wCRC);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wCRC);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvGPIOIn(dwIoBase, pbyValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_GPIOCTL1, pbyValue)
<br>&gt; +#define MACvGPIOIn(iobase, pbyValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_GPIOCTL1, pbyValue)
<br>&gt;
<br>&gt; -#define MACvSetRFLE_LatchBase(<wbr>dwIoBase) =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
<br>&gt; +#define MACvSetRFLE_LatchBase(iobase) =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
<br>&gt;
<br>&gt; =C2=A0bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byR=
egOfs,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 unsigned char byTestBits=
);
<br>&gt; diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/=
rf.c
<br>&gt; index 447882c..92bb1c6 100644
<br>&gt; --- a/drivers/staging/vt6655/rf.c
<br>&gt; +++ b/drivers/staging/vt6655/rf.c
<br>&gt; @@ -410,7 +410,7 @@ static const unsigned long dwAL7230ChannelTabl=
e2[CB_MAX_<wbr>CHANNEL] =3D {
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -419,16 +419,16 @@ static const unsigned long dwAL7230ChannelTa=
ble2[CB_MAX_<wbr>CHANNEL] =3D {
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool s_bAL7230Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 ii;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for normal mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_SOFTPWRCTL, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_SOFTPWRCTL, 0);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBvPowerSave=
ModeOFF(<wbr>priv); /* RobertYu:20050106, have DC value for Calibration */
<br>&gt;
<br>&gt; @@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D IFRFbWriteEmbedded(priv, d=
wAL7230InitTable[ii]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL On */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Calibrati=
on */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 150);/* 150us */
<br>&gt; @@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* TXDCOC:di=
sable, RCK:disable */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_<wbr>INIT_SEQ-1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPE2 =
=C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPECT=
I =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; @@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PE1: TX_O=
N, PE2: RX_ON, PE3: PLLON */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for power saving mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private=
 *priv)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool s_bAL7230SelectChannel(struct vnt_private *priv,=
 unsigned char byChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLLON Off=
 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[<wbr>byChannel - 1]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[<wbr>byChannel - 1]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[<wbr>byChannel - 1]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLLOn On =
*/
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 0 to tell H/W channel is changing now. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 1 to tell H/W channel change is done. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct vnt_=
private *priv, unsigned char byCha
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwData =C2=A0 =C2=A0 =C2=A0- data to =
write
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct vn=
t_private *priv, unsigned char byCha
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned l=
ong dwData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwValue;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IFREGCTL, dwData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IFREGCTL, dwData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(<wbr>dwIoBase + MAC_REG_IFREGC=
TL, &amp;dwValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(<wbr>iobase + MAC_REG_IFREGCTL=
, &amp;dwValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwValue &amp; IFREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *pr=
iv, unsigned long dwData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *=
priv, unsigned long dwData)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool RFbAL2230Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 ii;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for normal mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_SOFTPWRCTL, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_SOFTPWRCTL, 0);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL =C2=
=A0Off */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* patch abn=
ormal AL2230 frequency output */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0IFRFbWriteEm=
bedded(<wbr>priv, (0x07168700+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFREGCTL_RE=
GW));
<br>&gt; @@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 30); /* delay 30 us */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL On */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 150);/* 150us */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, (0x00d80f00+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFR=
EGCTL_REGW));
<br>&gt; @@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private=
 *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 30);/* 30us */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_<wbr>INIT_SEQ-1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPE2 =
=C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPECT=
I =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for power saving mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0static bool RFbAL2230SelectChannel(struct vnt_private *priv,=
 unsigned char byChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt; @@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct vn=
t_private *priv, unsigned char byCha
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[<wbr>byChannel - 1]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 0 to tell H/W channel is changing now. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 1 to tell H/W channel change is done. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv=
, unsigned char byRFType,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0uChannel =C2=A0 =C2=A0- channel numbe=
r
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0bySleepCnt =C2=A0- SleepProgSyn count
<br>&gt; =C2=A0 *
<br>&gt; @@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *pr=
iv, unsigned char byRFType,
<br>&gt; =C2=A0bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned =
char byRFType,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 u16 uChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 i=
i;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byInitCount =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r bySleepCount =3D 0;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_MISCFFNDEX, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_MISCFFNDEX, 0);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (byRF=
Type) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case RF_AIRO=
HA:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case RF_AL22=
30S:
<br>&gt; @@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *p=
riv, unsigned char byRFType,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 - I/O base a=
ddress
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 - I/O base add=
ress
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwRFPowerTable - RF Tx Power Setting
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -830,7 +830,7 @@ bool RFbSetPower(
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 - I/O base a=
ddress
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 - I/O base add=
ress
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwRFPowerTable - RF Tx Power Setting
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; diff --git a/drivers/staging/vt6655/srom.<wbr>c b/drivers/staging/=
vt6655/srom.<wbr>c
<br>&gt; index ee99277..0b612d3 100644
<br>&gt; --- a/drivers/staging/vt6655/s...</blockquote><br>On Saturday, Oct=
ober 8, 2016 at 11:07:41 PM UTC+5:30, Julia Lawall wrote:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">
<br>
<br>On Sat, 8 Oct 2016, Varsha Rao wrote:
<br>
<br>&gt; In this patch dwIoBase is renamed as iobase.This is done to fix th=
e checkpatch issue of CamelCase.
<br>
<br>Put at least one space after a period. =C2=A0Limit the commit message l=
ine
<br>length to around 70 characters.
<br>
<br>&gt;
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"vx59hIFnAAAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.c | =C2=A052 +++---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.h | =C2=A0 8 +-
<br>&gt; =C2=A0drivers/staging/vt6655/card.c =C2=A0 =C2=A0 | =C2=A030 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/mac.h =C2=A0 =C2=A0 =C2=A0| 322 +++++=
++++++++++++++-----------<wbr>--------
<br>&gt; =C2=A0drivers/staging/vt6655/rf.c =C2=A0 =C2=A0 =C2=A0 | =C2=A064 =
++++----
<br>&gt; =C2=A0drivers/staging/vt6655/srom.c =C2=A0 =C2=A0 | =C2=A032 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/srom.h =C2=A0 =C2=A0 | =C2=A0 6 +-
<br>&gt; =C2=A07 files changed, 257 insertions(+), 257 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.c b/drivers/stag=
ing/vt6655/<wbr>baseband.c
<br>&gt; index de503a3..e739ecc 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *p=
riv, u32 frame_length,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>
<br>You should preserve the alignment of the different comments.
<br>
<br>julia
<br>
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byBBAddr =C2=A0 =C2=A0- address of re=
gister in Baseband
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0pbyData =C2=A0 =C2=A0 - data read
<br>&gt; @@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private =
*priv, u32 frame_length,
<br>&gt; =C2=A0bool BBbReadEmbedded(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 unsigned char byBBAddr, =
unsigned char *pbyData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byValue;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* BB reg of=
fset */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGADR, byBBAddr);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* turn on R=
EGR */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_BBREGC=
TL, &amp;byValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_BBREGCTL=
, &amp;byValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* get BB da=
ta */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BBREGDATA, pbyData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BBREGDATA, pbyData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ww =3D=
=3D W_MAX_TIMEOUT) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&quot; DBG_PORT80(0x30)\n&quot=
;);
<br>&gt; @@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *pri=
v,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byBBAddr =C2=A0 =C2=A0- address of re=
gister in Baseband
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byData =C2=A0 =C2=A0 =C2=A0- data to =
write
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; @@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *p=
riv,
<br>&gt; =C2=A0bool BBbWriteEmbedded(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBB=
Addr, unsigned char byData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byValue;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* BB reg of=
fset */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* set BB da=
ta */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGDATA, byData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGDATA, byData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* turn on B=
BREGCTL_REGW */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_BBREGC=
TL, &amp;byValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_BBREGCTL=
, &amp;byValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *pr=
iv,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byRevId =C2=A0 =C2=A0 - Revision ID
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byRFType =C2=A0 =C2=A0- RF type
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; @@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool bResult=
 =3D true;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 =C2=A0 =C2=A0ii;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byRFType =3D priv-&gt;byRFType;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byLocalID =3D priv-&gt;byLocalID;
<br>&gt;
<br>&gt; @@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byVT3253B0_AGC4_<wbr>RFMD2959[ii][0],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byVT3253B0_AGC4_<wbr>RFMD2959[ii][1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[0] =3D 0x18;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[1] =3D 0x0A;
<br>&gt; @@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0byVT3253B0_AG=
C[ii][0],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0byVT3253B0_AG=
C[ii][1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>dwIoBase + MAC_REG_ITRTM=
SET, 0x23);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvRegBitsOn(dwIoBase, MAC_REG_PAPED=
ELAY, BIT(0));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>iobase + MAC_REG_ITRTMSE=
T, 0x23);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvRegBitsOn(iobase, MAC_REG_PAPEDEL=
AY, BIT(0));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[0] =3D 0x14;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[1] =3D 0x0A;
<br>&gt; @@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x45-&gt;0x41(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x09,<wbr>0x41);*/
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * RX Config CR10 =3D 0x28-&gt;0x2A,
<br>&gt; @@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * make the ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x0a,<wbr>0x28);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Select VC1/VC2, CR215 =3D 0x02-&gt;0=
x06 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,=
 0xd7, 0x06);
<br>&gt;
<br>&gt; @@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Fix VT3226 DFC system timing issue *=
/
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvSetRFLE_<wbr>LatchBase(dwIoBase);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvSetRFLE_<wbr>LatchBase(iobase);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* {{ RobertYu: 20050104 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (b=
yRFType =3D=3D RF_AIROHA7230) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ii =3D 0; ii &lt; CB_VT3253B0_INIT=
_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; @@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *pri=
v)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,TX Config CR09 =3D=
 0x61-&gt;0x45,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x45-&gt;0x41(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x09,<wbr>0x41);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,RX Config CR10 =3D=
 0x28-&gt;0x2A,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x2A-&gt;0x28(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x0a,<wbr>0x28);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Select VC1/VC2, CR215 =3D 0x02-&gt;0=
x06 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,=
 0xd7, 0x06);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* }} */
<br>&gt; @@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private =
*priv, unsigned char byData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.h b/drivers/stag=
ing/vt6655/<wbr>baseband.h
<br>&gt; index a732fba..1d1d4fc 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.h
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.h
<br>&gt; @@ -58,11 +58,11 @@
<br>&gt; =C2=A0#define TOP_RATE_2M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00200000
<br>&gt; =C2=A0#define TOP_RATE_1M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00100000
<br>&gt;
<br>&gt; -#define bbvclearfoe(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>dwIoBase, 0xB1, 0)
<br>&gt; +#define bbvclearfoe(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>iobase, 0xB1, 0)
<br>&gt;
<br>&gt; -#define BBvSetFOE(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>dwIoBase, 0xB1, 0x0C)
<br>&gt; +#define BBvSetFOE(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>iobase, 0xB1, 0x0C)
<br>&gt;
<br>&gt; =C2=A0unsigned int
<br>&gt; =C2=A0BBuGetFrameTime(
<br>&gt; diff --git a/drivers/staging/vt6655/card.<wbr>c b/drivers/staging/=
vt6655/card.<wbr>c
<br>&gt; index dbcea44..03790bb 100644
<br>&gt; --- a/drivers/staging/vt6655/card.<wbr>c
<br>&gt; +++ b/drivers/staging/vt6655/card.<wbr>c
<br>&gt; @@ -36,7 +36,7 @@
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Revision History:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A006-10-2003 Bryan YC Fan: =C2=A0Re-wri=
te codes to support VT3253 spec.
<br>&gt; - * =C2=A0 =C2=A0 =C2=A008-26-2003 Kyle Hsu: =C2=A0 =C2=A0 =C2=A0M=
odify the defination type of dwIoBase.
<br>&gt; + * =C2=A0 =C2=A0 =C2=A008-26-2003 Kyle Hsu: =C2=A0 =C2=A0 =C2=A0M=
odify the defination type of iobase.
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A009-01-2003 Bryan YC Fan: =C2=A0Add vU=
pdateIFS().
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; @@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate=
, u64 qwTSF1, u64 qwTSF2)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCu=
rrTSF)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_TFTCTL=
, &amp;byData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_TFTCTL, =
&amp;byData);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!(byData &amp; TFTCTL_TSFCNTRRD))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ww =3D=
=3D W_MAX_TIMEOUT)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return true;
<br>&gt; =C2=A0}
<br>&gt; @@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short=
 wBeaconInterval)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 =C2=A0- IO B=
ase
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 =C2=A0- IO Bas=
e
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0wBeaconInterval - Beacon Interval
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned sho=
rt wBeaconInterval)
<br>&gt; =C2=A0void CARDvSetFirstNextTBTT(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 unsigned short wBeaconInterval)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u64 qwNextTB=
TT =3D 0;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CARDbGetCurr=
entTSF(<wbr>priv, &amp;qwNextTBTT); /* Get Local TSF counter */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qwNextTBTT =
=3D CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set NextT=
BTT */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT &gt;&gt; 32));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT &gt;&gt; 32));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_priv=
ate *priv,
<br>&gt; =C2=A0void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF=
,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 unsigned short wBeaconInterval)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qwTSF =3D CA=
RDqGetNextTBTT(qwTSF, wBeaconInterval);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set NextT=
BTT */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT, (u32)qwTSF);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF &gt;&gt; 32));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT, (u32)qwTSF);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF &gt;&gt; 32));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&qu=
ot;Card:Update Next TBTT[%8llx]\n&quot;, qwTSF);
<br>&gt; =C2=A0}
<br>&gt; diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655=
/mac.h
<br>&gt; index 030f529..4d8b748 100644
<br>&gt; --- a/drivers/staging/vt6655/mac.h
<br>&gt; +++ b/drivers/staging/vt6655/mac.h
<br>&gt; @@ -554,341 +554,341 @@
<br>&gt;
<br>&gt; =C2=A0/*--------------------- =C2=A0Export Macros ----------------=
--------------<wbr>*/
<br>&gt;
<br>&gt; -#define MACvRegBitsOn(dwIoBase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvRegBitsOn(iobase, byRegOfs, byBits)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWordRegBitsOn(dwIoBase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; +#define MACvWordRegBitsOn(iobase, byRegOfs, wBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt wData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wData | (wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wData | (wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, dwBits)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvDWordRegBitsOn(iobase, byRegOfs, dwBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + byRegOfs, dwData | (dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + byRegOfs, dwData | (dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, byBits)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, byBits)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byData &amp;=
=3D byMask;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvRegBitsOff(dwIoBase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvRegBitsOff(iobase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData &amp; ~(byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData &amp; ~(byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWordRegBitsOff(dwIoBase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; +#define MACvWordRegBitsOff(iobase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt wData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wData &amp; ~(wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wData &amp; ~(wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, dwBits)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvDWordRegBitsOff(iobase, byRegOfs, dwBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + byRegOfs, dwData &amp; ~(dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + byRegOfs, dwData &amp; ~(dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvGetCurrRx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrRx1DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMAPTR1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMAPTR1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrTx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrAC0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_AC0DMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_AC0DMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrSyncDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_SYNCDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrSyncDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_SYNCDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrATIMDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ATIMDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrATIMDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ATIMDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; =C2=A0/* set the chip with current BCN tx descriptor address */
<br>&gt; -#define MACvSetCurrBCNTxDescAddr(<wbr>dwIoBase, dwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_BCNDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetCurrBCNTxDescAddr(<wbr>iobase, dwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_BCNDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 dwCurrDescAddr)
<br>&gt;
<br>&gt; =C2=A0/* set the chip with current BCN length */
<br>&gt; -#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_BCNDMACTL+2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_BCNDMACTL+2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 wCurrBCNLength)
<br>&gt;
<br>&gt; -#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned char *)pbyEther=
Addr);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 1);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 2);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 3);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 4);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 5);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWriteBSSIDAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr));=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 1));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 2));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 3));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 4));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 5));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvReadEtherAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned char *)pbyEther=
Addr);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 1);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 2);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 3);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 4);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 5);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWriteEtherAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvWriteEtherAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *pbyEtherAddr);=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 1));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 2));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 3));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 4));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 5));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvClearISR(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ISR, IMR_MASK_VALUE)
<br>&gt; +#define MACvClearISR(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ISR, IMR_MASK_VALUE)
<br>&gt;
<br>&gt; -#define MACvStart(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_HOSTCR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvStart(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_HOSTCR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 (HOSTCR_MACEN | HOSTCR_R=
XON | HOSTCR_TXON))
<br>&gt;
<br>&gt; -#define MACvRx0PerPktMode(dwIoBase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL0, RX_PERPKT)
<br>&gt; +#define MACvRx0PerPktMode(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL0, RX_PERPKT)
<br>&gt;
<br>&gt; -#define MACvRx0BufferFillMode(<wbr>dwIoBase)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
<br>&gt; +#define MACvRx0BufferFillMode(iobase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
<br>&gt;
<br>&gt; -#define MACvRx1PerPktMode(dwIoBase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL1, RX_PERPKT)
<br>&gt; +#define MACvRx1PerPktMode(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL1, RX_PERPKT)
<br>&gt;
<br>&gt; -#define MACvRx1BufferFillMode(<wbr>dwIoBase)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
<br>&gt; +#define MACvRx1BufferFillMode(iobase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
<br>&gt;
<br>&gt; -#define MACvRxOn(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON)
<br>&gt; +#define MACvRxOn(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_HOSTCR, HOSTCR_RXON)
<br>&gt;
<br>&gt; -#define MACvReceive0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvReceive0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL0, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L0, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL0, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L0, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReceive1(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvReceive1(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMACTL1, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMACTL1, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL1, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L1, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL1, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L1, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTxOn(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON)
<br>&gt; +#define MACvTxOn(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_HOSTCR, HOSTCR_TXON)
<br>&gt;
<br>&gt; -#define MACvTransmit0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmit0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_TXDMA=
CTL0, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_TXDMACT=
L0, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_TXDMA=
CTL0, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_TXDMACT=
L0, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitAC0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitAC0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_AC0DMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_AC0DMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_AC0DM=
ACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_AC0DMAC=
TL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_AC0DM=
ACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_AC0DMAC=
TL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitSYNC(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitSYNC(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_SYNCDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_SYNCDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_SYNCD=
MACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_SYNCDMA=
CTL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_SYNCD=
MACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_SYNCDMA=
CTL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitATIM(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitATIM(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ATIMDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ATIMDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_ATIMD=
MACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_ATIMDMA=
CTL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_ATIMD=
MACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_ATIMDMA=
CTL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitBCN(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BCNDMACTL, BEACON_READY)
<br>&gt; +#define MACvTransmitBCN(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BCNDMACTL, BEACON_READY)
<br>&gt;
<br>&gt; -#define MACvClearStckDS(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvClearStckDS(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_STICKHW, &amp;byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_STICKHW, &amp;byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byOrgValue =
=3D byOrgValue &amp; 0xFC;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_STICKHW, byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_STICKHW, byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadISR(dwIoBase, pdwValue)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ISR, pdwValue)
<br>&gt; +#define MACvReadISR(iobase, pdwValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ISR, pdwValue)
<br>&gt;
<br>&gt; -#define MACvWriteISR(dwIoBase, dwValue)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ISR, dwValue)
<br>&gt; +#define MACvWriteISR(iobase, dwValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ISR, dwValue)
<br>&gt;
<br>&gt; -#define MACvIntEnable(dwIoBase, dwMask)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IMR, dwMask)
<br>&gt; +#define MACvIntEnable(iobase, dwMask)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IMR, dwMask)
<br>&gt;
<br>&gt; -#define MACvIntDisable(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IMR, 0)
<br>&gt; +#define MACvIntDisable(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IMR, 0)
<br>&gt;
<br>&gt; -#define MACvSelectPage0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>dwIoBase + MAC_REG_PAGE1=
SEL, 0)
<br>&gt; +#define MACvSelectPage0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>iobase + MAC_REG_PAGE1SE=
L, 0)
<br>&gt;
<br>&gt; -#define MACvSelectPage1(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1)
<br>&gt; +#define MACvSelectPage1(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1)
<br>&gt;
<br>&gt; -#define MACvReadMIBCounter(dwIoBase, pdwCounter)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_MIBCNTR, pdwCounter)
<br>&gt; +#define MACvReadMIBCounter(iobase, pdwCounter)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_MIBCNTR, pdwCounter)
<br>&gt;
<br>&gt; -#define MACvPwrEvntDisable(dwIoBase)=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_WAKEUPEN0, 0x0000)
<br>&gt; +#define MACvPwrEvntDisable(iobase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_WAKEUPEN0, 0x0000)
<br>&gt;
<br>&gt; -#define MACvEnableProtectMD(dwIoBase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvEnableProtectMD(iobase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | EnCFG_ProtectMd;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDisableProtectMD(dwIoBase)<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvDisableProtectMD(iobase)=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_ProtectMd;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvEnableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvEnableBarkerPreambleMd(<wbr>iobase)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | EnCFG_BarkerPream;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDisableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvDisableBarkerPreambleMd(<wbr>iobase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_BarkerPream;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvSetBBType(dwIoBase, byTyp)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetBBType(iobase, byTyp)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_BBType_MASK;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | (unsigned long)byTyp;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadATIMW(dwIoBase, pwCounter)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + MAC_REG_AIDATIM, pwCounter)
<br>&gt; +#define MACvReadATIMW(iobase, pwCounter)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + MAC_REG_AIDATIM, pwCounter)
<br>&gt;
<br>&gt; -#define MACvWriteATIMW(dwIoBase, wCounter)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_AIDATIM, wCounter)
<br>&gt; +#define MACvWriteATIMW(iobase, wCounter)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_AIDATIM, wCounter)
<br>&gt;
<br>&gt; -#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wCRC);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wCRC);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvGPIOIn(dwIoBase, pbyValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_GPIOCTL1, pbyValue)
<br>&gt; +#define MACvGPIOIn(iobase, pbyValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_GPIOCTL1, pbyValue)
<br>&gt;
<br>&gt; -#define MACvSetRFLE_LatchBase(<wbr>dwIoBase) =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
<br>&gt; +#define MACvSetRFLE_LatchBase(iobase) =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
<br>&gt;
<br>&gt; =C2=A0bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byR=
egOfs,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 unsigned char byTestBits=
);
<br>&gt; diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/=
rf.c
<br>&gt; index 447882c..92bb1c6 100644
<br>&gt; --- a/drivers/staging/vt6655/rf.c
<br>&gt; +++ b/drivers/staging/vt6655/rf.c
<br>&gt; @@ -410,7 +410,7 @@ static const unsigned long dwAL7230ChannelTabl=
e2[CB_MAX_<wbr>CHANNEL] =3D {
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -419,16 +419,16 @@ static const unsigned long dwAL7230ChannelTa=
ble2[CB_MAX_<wbr>CHANNEL] =3D {
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool s_bAL7230Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 ii;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for normal mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_SOFTPWRCTL, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_SOFTPWRCTL, 0);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBvPowerSave=
ModeOFF(<wbr>priv); /* RobertYu:20050106, have DC value for Calibration */
<br>&gt;
<br>&gt; @@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D IFRFbWriteEmbedded(priv, d=
wAL7230InitTable[ii]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL On */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Calibrati=
on */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 150);/* 150us */
<br>&gt; @@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* TXDCOC:di=
sable, RCK:disable */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_<wbr>INIT_SEQ-1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPE2 =
=C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPECT=
I =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; @@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PE1: TX_O=
N, PE2: RX_ON, PE3: PLLON */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for power saving mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private=
 *priv)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool s_bAL7230SelectChannel(struct vnt_private *priv,=
 unsigned char byChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLLON Off=
 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[<wbr>byChannel - 1]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[<wbr>byChannel - 1]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[<wbr>byChannel - 1]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLLOn On =
*/
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 0 to tell H/W channel is changing now. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 1 to tell H/W channel change is done. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct vnt_=
private *priv, unsigned char byCha
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwData =C2=A0 =C2=A0 =C2=A0- data to =
write
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct vn=
t_private *priv, unsigned char byCha
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned l=
ong dwData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwValue;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IFREGCTL, dwData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IFREGCTL, dwData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(<wbr>dwIoBase + MAC_REG_IFREGC=
TL, &amp;dwValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(<wbr>iobase + MAC_REG_IFREGCTL=
, &amp;dwValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwValue &amp; IFREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *pr=
iv, unsigned long dwData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *=
priv, unsigned long dwData)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool RFbAL2230Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 ii;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for normal mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_SOFTPWRCTL, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_SOFTPWRCTL, 0);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL =C2=
=A0Off */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* patch abn=
ormal AL2230 frequency output */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0IFRFbWriteEm=
bedded(<wbr>priv, (0x07168700+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFREGCTL_RE=
GW));
<br>&gt; @@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 30); /* delay 30 us */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL On */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 150);/* 150us */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, (0x00d80f00+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFR=
EGCTL_REGW));
<br>&gt; @@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private=
 *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 30);/* 30us */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_<wbr>INIT_SEQ-1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPE2 =
=C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPECT=
I =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for power saving mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0static bool RFbAL2230SelectChannel(struct vnt_private *priv,=
 unsigned char byChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt; @@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct vn=
t_private *priv, unsigned char byCha
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[<wbr>byChannel - 1]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 0 to tell H/W channel is changing now. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 1 to tell H/W channel change is done. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv=
, unsigned char byRFType,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0uChannel =C2=A0 =C2=A0- channel numbe=
r
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0bySleepCnt =C2=A0- SleepProgSyn count
<br>&gt; =C2=A0 *
<br>&gt; @@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *pr=
iv, unsigned char byRFType,
<br>&gt; =C2=A0bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned =
char byRFType,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 u16 uChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 i=
i;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byInitCount =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r bySleepCount =3D 0;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_MISCFFNDEX, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_MISCFFNDEX, 0);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (byRF=
Type) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case RF_AIRO=
HA:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case RF_AL22=
30S:
<br>&gt; @@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *p=
riv, unsigned char byRFType,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 - I/O base a=
ddress
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 - I/O base add=
ress
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwRFPowerTable - RF Tx Power Setting
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -830,7 +830,7 @@ bool RFbSetPower(
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 - I/O base a=
ddress
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 - I/O base add=
ress
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwRFPowerTable - RF Tx Power Setting
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; diff --git a/drivers/staging/vt6655/srom.<wbr>c b/drivers/staging/=
vt6655/srom.<wbr>c
<br>&gt; index ee99277..0b612d3 100644
<br>&gt; --- a/drivers/staging/vt6655/s...</blockquote><br>On Saturday, Oct=
ober 8, 2016 at 11:07:41 PM UTC+5:30, Julia Lawall wrote:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">
<br>
<br>On Sat, 8 Oct 2016, Varsha Rao wrote:
<br>
<br>&gt; In this patch dwIoBase is renamed as iobase.This is done to fix th=
e checkpatch issue of CamelCase.
<br>
<br>Put at least one space after a period. =C2=A0Limit the commit message l=
ine
<br>length to around 70 characters.
<br>
<br>&gt;
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"vx59hIFnAAAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.c | =C2=A052 +++---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.h | =C2=A0 8 +-
<br>&gt; =C2=A0drivers/staging/vt6655/card.c =C2=A0 =C2=A0 | =C2=A030 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/mac.h =C2=A0 =C2=A0 =C2=A0| 322 +++++=
++++++++++++++-----------<wbr>--------
<br>&gt; =C2=A0drivers/staging/vt6655/rf.c =C2=A0 =C2=A0 =C2=A0 | =C2=A064 =
++++----
<br>&gt; =C2=A0drivers/staging/vt6655/srom.c =C2=A0 =C2=A0 | =C2=A032 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/srom.h =C2=A0 =C2=A0 | =C2=A0 6 +-
<br>&gt; =C2=A07 files changed, 257 insertions(+), 257 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.c b/drivers/stag=
ing/vt6655/<wbr>baseband.c
<br>&gt; index de503a3..e739ecc 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *p=
riv, u32 frame_length,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>
<br>You should preserve the alignment of the different comments.
<br>
<br>julia
<br>
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byBBAddr =C2=A0 =C2=A0- address of re=
gister in Baseband
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0pbyData =C2=A0 =C2=A0 - data read
<br>&gt; @@ -1927,24 +1927,24 @@ void vnt_get_phy_field(struct vnt_private =
*priv, u32 frame_length,
<br>&gt; =C2=A0bool BBbReadEmbedded(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 unsigned char byBBAddr, =
unsigned char *pbyData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byValue;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* BB reg of=
fset */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGADR, byBBAddr);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* turn on R=
EGR */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_BBREGC=
TL, &amp;byValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_BBREGCTL=
, &amp;byValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* get BB da=
ta */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BBREGDATA, pbyData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BBREGDATA, pbyData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ww =3D=
=3D W_MAX_TIMEOUT) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&quot; DBG_PORT80(0x30)\n&quot=
;);
<br>&gt; @@ -1958,7 +1958,7 @@ bool BBbReadEmbedded(struct vnt_private *pri=
v,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byBBAddr =C2=A0 =C2=A0- address of re=
gister in Baseband
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byData =C2=A0 =C2=A0 =C2=A0- data to =
write
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; @@ -1970,20 +1970,20 @@ bool BBbReadEmbedded(struct vnt_private *p=
riv,
<br>&gt; =C2=A0bool BBbWriteEmbedded(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char byBB=
Addr, unsigned char byData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byValue;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* BB reg of=
fset */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGADR, byBBAddr);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* set BB da=
ta */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BBREGDATA, byData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BBREGDATA, byData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* turn on B=
BREGCTL_REGW */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_BBREGC=
TL, &amp;byValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_BBREGCTL=
, &amp;byValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (byValue &amp; BBREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -2000,7 +2000,7 @@ bool BBbWriteEmbedded(struct vnt_private *pr=
iv,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byRevId =C2=A0 =C2=A0 - Revision ID
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byRFType =C2=A0 =C2=A0- RF type
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; @@ -2014,7 +2014,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool bResult=
 =3D true;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 =C2=A0 =C2=A0ii;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byRFType =3D priv-&gt;byRFType;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byLocalID =3D priv-&gt;byLocalID;
<br>&gt;
<br>&gt; @@ -2036,8 +2036,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byVT3253B0_AGC4_<wbr>RFMD2959[ii][0],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byVT3253B0_AGC4_<wbr>RFMD2959[ii][1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[0] =3D 0x18;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[1] =3D 0x0A;
<br>&gt; @@ -2076,8 +2076,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0byVT3253B0_AG=
C[ii][0],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0byVT3253B0_AG=
C[ii][1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>dwIoBase + MAC_REG_ITRTM=
SET, 0x23);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvRegBitsOn(dwIoBase, MAC_REG_PAPED=
ELAY, BIT(0));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>iobase + MAC_REG_ITRTMSE=
T, 0x23);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvRegBitsOn(iobase, MAC_REG_PAPEDEL=
AY, BIT(0));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[0] =3D 0x14;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>abyBBVGA[1] =3D 0x0A;
<br>&gt; @@ -2098,7 +2098,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x45-&gt;0x41(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x09,<wbr>0x41);*/
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * RX Config CR10 =3D 0x28-&gt;0x2A,
<br>&gt; @@ -2106,7 +2106,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * make the ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x0a,<wbr>0x28);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Select VC1/VC2, CR215 =3D 0x02-&gt;0=
x06 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,=
 0xd7, 0x06);
<br>&gt;
<br>&gt; @@ -2154,7 +2154,7 @@ bool BBbVT3253Init(struct vnt_private *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ldBmThreshold[2] =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ldBmThreshold[3] =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Fix VT3226 DFC system timing issue *=
/
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvSetRFLE_<wbr>LatchBase(dwIoBase);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvSetRFLE_<wbr>LatchBase(iobase);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* {{ RobertYu: 20050104 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (b=
yRFType =3D=3D RF_AIROHA7230) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ii =3D 0; ii &lt; CB_VT3253B0_INIT=
_FOR_<wbr>AIROHA2230; ii++)
<br>&gt; @@ -2167,11 +2167,11 @@ bool BBbVT3253Init(struct vnt_private *pri=
v)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,TX Config CR09 =3D=
 0x61-&gt;0x45,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x45-&gt;0x41(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x09,0x41);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x09,<wbr>0x41);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Init ANT B select,RX Config CR10 =3D=
 0x28-&gt;0x2A,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 0x2A-&gt;0x28(VC1/VC2 define, make t=
he ANT_A, ANT_B inverted)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(dwIoBa=
se,<wbr>0x0a,0x28);*/
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*bResult &amp;=3D BBbWriteEmbedded(iobase=
,0x0a,<wbr>0x28);*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Select VC1/VC2, CR215 =3D 0x02-&gt;0=
x06 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bResult &amp;=3D BBbWriteEmbedded(priv,=
 0xd7, 0x06);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* }} */
<br>&gt; @@ -2259,7 +2259,7 @@ void BBvSetVGAGainOffset(struct vnt_private =
*priv, unsigned char byData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2280,7 +2280,7 @@ BBvSoftwareReset(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -2302,7 +2302,7 @@ BBvPowerSaveModeON(struct vnt_private *priv)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.h b/drivers/stag=
ing/vt6655/<wbr>baseband.h
<br>&gt; index a732fba..1d1d4fc 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.h
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.h
<br>&gt; @@ -58,11 +58,11 @@
<br>&gt; =C2=A0#define TOP_RATE_2M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00200000
<br>&gt; =C2=A0#define TOP_RATE_1M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00100000
<br>&gt;
<br>&gt; -#define bbvclearfoe(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>dwIoBase, 0xB1, 0)
<br>&gt; +#define bbvclearfoe(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>iobase, 0xB1, 0)
<br>&gt;
<br>&gt; -#define BBvSetFOE(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>dwIoBase, 0xB1, 0x0C)
<br>&gt; +#define BBvSetFOE(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>iobase, 0xB1, 0x0C)
<br>&gt;
<br>&gt; =C2=A0unsigned int
<br>&gt; =C2=A0BBuGetFrameTime(
<br>&gt; diff --git a/drivers/staging/vt6655/card.<wbr>c b/drivers/staging/=
vt6655/card.<wbr>c
<br>&gt; index dbcea44..03790bb 100644
<br>&gt; --- a/drivers/staging/vt6655/card.<wbr>c
<br>&gt; +++ b/drivers/staging/vt6655/card.<wbr>c
<br>&gt; @@ -36,7 +36,7 @@
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Revision History:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A006-10-2003 Bryan YC Fan: =C2=A0Re-wri=
te codes to support VT3253 spec.
<br>&gt; - * =C2=A0 =C2=A0 =C2=A008-26-2003 Kyle Hsu: =C2=A0 =C2=A0 =C2=A0M=
odify the defination type of dwIoBase.
<br>&gt; + * =C2=A0 =C2=A0 =C2=A008-26-2003 Kyle Hsu: =C2=A0 =C2=A0 =C2=A0M=
odify the defination type of iobase.
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A009-01-2003 Bryan YC Fan: =C2=A0Add vU=
pdateIFS().
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; @@ -938,20 +938,20 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate=
, u64 qwTSF1, u64 qwTSF2)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0bool CARDbGetCurrentTSF(struct vnt_private *priv, u64 *pqwCu=
rrTSF)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TSFCNTRRD);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>dwIoBase + MAC_REG_TFTCTL=
, &amp;byData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(<wbr>iobase + MAC_REG_TFTCTL, =
&amp;byData);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!(byData &amp; TFTCTL_TSFCNTRRD))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ww =3D=
=3D W_MAX_TIMEOUT)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return false;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TSFCNTR, (u32 *)pqwCurrTSF);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TSFCNTR + 4, (u32 *)pqwCurrTSF + 1);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return true;
<br>&gt; =C2=A0}
<br>&gt; @@ -989,7 +989,7 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short=
 wBeaconInterval)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 =C2=A0- IO B=
ase
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 =C2=A0- IO Bas=
e
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0wBeaconInterval - Beacon Interval
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -999,16 +999,16 @@ u64 CARDqGetNextTBTT(u64 qwTSF, unsigned sho=
rt wBeaconInterval)
<br>&gt; =C2=A0void CARDvSetFirstNextTBTT(struct vnt_private *priv,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 unsigned short wBeaconInterval)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u64 qwNextTB=
TT =3D 0;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CARDbGetCurr=
entTSF(<wbr>priv, &amp;qwNextTBTT); /* Get Local TSF counter */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qwNextTBTT =
=3D CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set NextT=
BTT */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT &gt;&gt; 32));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT + 4, (u32)(qwNextTBTT &gt;&gt; 32));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; @@ -1028,12 +1028,12 @@ void CARDvSetFirstNextTBTT(struct vnt_priv=
ate *priv,
<br>&gt; =C2=A0void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF=
,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 unsigned short wBeaconInterval)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qwTSF =3D CA=
RDqGetNextTBTT(qwTSF, wBeaconInterval);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set NextT=
BTT */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT, (u32)qwTSF);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF &gt;&gt; 32));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT, (u32)qwTSF);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_NEXTTBTT + 4, (u32)(qwTSF &gt;&gt; 32));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&qu=
ot;Card:Update Next TBTT[%8llx]\n&quot;, qwTSF);
<br>&gt; =C2=A0}
<br>&gt; diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655=
/mac.h
<br>&gt; index 030f529..4d8b748 100644
<br>&gt; --- a/drivers/staging/vt6655/mac.h
<br>&gt; +++ b/drivers/staging/vt6655/mac.h
<br>&gt; @@ -554,341 +554,341 @@
<br>&gt;
<br>&gt; =C2=A0/*--------------------- =C2=A0Export Macros ----------------=
--------------<wbr>*/
<br>&gt;
<br>&gt; -#define MACvRegBitsOn(dwIoBase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvRegBitsOn(iobase, byRegOfs, byBits)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWordRegBitsOn(dwIoBase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; +#define MACvWordRegBitsOn(iobase, byRegOfs, wBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt wData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wData | (wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wData | (wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDWordRegBitsOn(dwIoBase, byRegOfs, dwBits)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvDWordRegBitsOn(iobase, byRegOfs, dwBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + byRegOfs, dwData | (dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + byRegOfs, dwData | (dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvRegBitsOnEx(dwIoBase, byRegOfs, byMask, byBits)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvRegBitsOnEx(iobase, byRegOfs, byMask, byBits)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byData &amp;=
=3D byMask;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData | (byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvRegBitsOff(dwIoBase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvRegBitsOff(iobase, byRegOfs, byBits)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + byRegOfs, byData &amp; ~(byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + byRegOfs, &amp;byData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + byRegOfs, byData &amp; ~(byBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWordRegBitsOff(dwIoBase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; +#define MACvWordRegBitsOff(iobase, byRegOfs, wBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt wData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wData &amp; ~(wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + byRegOfs, &amp;wData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wData &amp; ~(wBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDWordRegBitsOff(dwIoBase, byRegOfs, dwBits)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; +#define MACvDWordRegBitsOff(iobase, byRegOfs, dwBits)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + byRegOfs, dwData &amp; ~(dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + byRegOfs, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + byRegOfs, dwData &amp; ~(dwBits));=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvGetCurrRx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrRx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrRx1DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMAPTR1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrRx1DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMAPTR1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrTx0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrTx0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TXDMAPTR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrAC0DescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_AC0DMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrAC0DescAddr(iobase, pdwCurrDescAddr)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_AC0DMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrSyncDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_SYNCDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrSyncDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_SYNCDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; -#define MACvGetCurrATIMDescAddr(<wbr>dwIoBase, pdwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ATIMDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvGetCurrATIMDescAddr(<wbr>iobase, pdwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ATIMDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned long *)pdwCurrD=
escAddr)
<br>&gt;
<br>&gt; =C2=A0/* set the chip with current BCN tx descriptor address */
<br>&gt; -#define MACvSetCurrBCNTxDescAddr(<wbr>dwIoBase, dwCurrDescAddr)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_BCNDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetCurrBCNTxDescAddr(<wbr>iobase, dwCurrDescAddr)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_BCNDMAPTR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 dwCurrDescAddr)
<br>&gt;
<br>&gt; =C2=A0/* set the chip with current BCN length */
<br>&gt; -#define MACvSetCurrBCNLength(dwIoBase, wCurrBCNLength)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_BCNDMACTL+2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetCurrBCNLength(iobase, wCurrBCNLength)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_BCNDMACTL+2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 wCurrBCNLength)
<br>&gt;
<br>&gt; -#define MACvReadBSSIDAddress(dwIoBase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvReadBSSIDAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned char *)pbyEther=
Addr);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 1);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 2);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 3);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 4);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 5);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWriteBSSIDAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvWriteBSSIDAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr));=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 1));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 2));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 3));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 4));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BSSID0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 5));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadEtherAddress(dwIoBase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvReadEtherAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(unsigned char *)pbyEther=
Addr);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 1);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 2);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 3);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 4);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0pbyEtherAddr + 5);=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvWriteEtherAddress(<wbr>dwIoBase, pbyEtherAddr)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvWriteEtherAddress(iobase, pbyEtherAddr)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *pbyEtherAddr);=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 1));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 2,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 2));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 3,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 3));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 4,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 4));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAR0 + 5,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 *(pbyEtherAddr + 5));=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvClearISR(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ISR, IMR_MASK_VALUE)
<br>&gt; +#define MACvClearISR(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ISR, IMR_MASK_VALUE)
<br>&gt;
<br>&gt; -#define MACvStart(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_HOSTCR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvStart(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_HOSTCR,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 (HOSTCR_MACEN | HOSTCR_R=
XON | HOSTCR_TXON))
<br>&gt;
<br>&gt; -#define MACvRx0PerPktMode(dwIoBase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL0, RX_PERPKT)
<br>&gt; +#define MACvRx0PerPktMode(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL0, RX_PERPKT)
<br>&gt;
<br>&gt; -#define MACvRx0BufferFillMode(<wbr>dwIoBase)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
<br>&gt; +#define MACvRx0BufferFillMode(iobase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL0, RX_PERPKTCLR)
<br>&gt;
<br>&gt; -#define MACvRx1PerPktMode(dwIoBase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL1, RX_PERPKT)
<br>&gt; +#define MACvRx1PerPktMode(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL1, RX_PERPKT)
<br>&gt;
<br>&gt; -#define MACvRx1BufferFillMode(<wbr>dwIoBase)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
<br>&gt; +#define MACvRx1BufferFillMode(iobase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_RXDMACTL1, RX_PERPKTCLR)
<br>&gt;
<br>&gt; -#define MACvRxOn(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON)
<br>&gt; +#define MACvRxOn(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_HOSTCR, HOSTCR_RXON)
<br>&gt;
<br>&gt; -#define MACvReceive0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvReceive0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL0, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L0, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL0, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L0, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReceive1(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvReceive1(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_RXDMACTL1, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_RXDMACTL1, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL1, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L1, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_RXDMA=
CTL1, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_RXDMACT=
L1, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTxOn(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(<wb=
r>dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON)
<br>&gt; +#define MACvTxOn(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvRegBitsOn(iob=
ase, MAC_REG_HOSTCR, HOSTCR_TXON)
<br>&gt;
<br>&gt; -#define MACvTransmit0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmit0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_TXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_TXDMACTL0, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_TXDMA=
CTL0, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_TXDMACT=
L0, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_TXDMA=
CTL0, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_TXDMACT=
L0, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitAC0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitAC0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_AC0DMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_AC0DMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_AC0DM=
ACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_AC0DMAC=
TL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_AC0DM=
ACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_AC0DMAC=
TL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitSYNC(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitSYNC(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_SYNCDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_SYNCDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_SYNCD=
MACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_SYNCDMA=
CTL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_SYNCD=
MACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_SYNCDMA=
CTL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitATIM(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvTransmitATIM(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwData;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ATIMDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ATIMDMACTL, &amp;dwData);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwData &=
amp; DMACTL_RUN)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_ATIMD=
MACTL, DMACTL_WAKE); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_ATIMDMA=
CTL, DMACTL_WAKE); \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>dwIoBase + MAC_REG_ATIMD=
MACTL, DMACTL_RUN); \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(<wbr>iobase + MAC_REG_ATIMDMA=
CTL, DMACTL_RUN); \
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvTransmitBCN(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_BCNDMACTL, BEACON_READY)
<br>&gt; +#define MACvTransmitBCN(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_BCNDMACTL, BEACON_READY)
<br>&gt;
<br>&gt; -#define MACvClearStckDS(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvClearStckDS(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_STICKHW, &amp;byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_STICKHW, &amp;byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0byOrgValue =
=3D byOrgValue &amp; 0xFC;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_STICKHW, byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_STICKHW, byOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadISR(dwIoBase, pdwValue)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ISR, pdwValue)
<br>&gt; +#define MACvReadISR(iobase, pdwValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ISR, pdwValue)
<br>&gt;
<br>&gt; -#define MACvWriteISR(dwIoBase, dwValue)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ISR, dwValue)
<br>&gt; +#define MACvWriteISR(iobase, dwValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ISR, dwValue)
<br>&gt;
<br>&gt; -#define MACvIntEnable(dwIoBase, dwMask)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IMR, dwMask)
<br>&gt; +#define MACvIntEnable(iobase, dwMask)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IMR, dwMask)
<br>&gt;
<br>&gt; -#define MACvIntDisable(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IMR, 0)
<br>&gt; +#define MACvIntDisable(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IMR, 0)
<br>&gt;
<br>&gt; -#define MACvSelectPage0(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>dwIoBase + MAC_REG_PAGE1=
SEL, 0)
<br>&gt; +#define MACvSelectPage0(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(<wbr>iobase + MAC_REG_PAGE1SE=
L, 0)
<br>&gt;
<br>&gt; -#define MACvSelectPage1(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<w=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1)
<br>&gt; +#define MACvSelectPage1(iobase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1)
<br>&gt;
<br>&gt; -#define MACvReadMIBCounter(dwIoBase, pdwCounter)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_MIBCNTR, pdwCounter)
<br>&gt; +#define MACvReadMIBCounter(iobase, pdwCounter)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_MIBCNTR, pdwCounter)
<br>&gt;
<br>&gt; -#define MACvPwrEvntDisable(dwIoBase)=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_WAKEUPEN0, 0x0000)
<br>&gt; +#define MACvPwrEvntDisable(iobase)=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_WAKEUPEN0, 0x0000)
<br>&gt;
<br>&gt; -#define MACvEnableProtectMD(dwIoBase)=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvEnableProtectMD(iobase)=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | EnCFG_ProtectMd;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDisableProtectMD(dwIoBase)<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvDisableProtectMD(iobase)=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_ProtectMd;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvEnableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvEnableBarkerPreambleMd(<wbr>iobase)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | EnCFG_BarkerPream;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvDisableBarkerPreambleMd(<wbr>dwIoBase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvDisableBarkerPreambleMd(<wbr>iobase)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_BarkerPream;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvSetBBType(dwIoBase, byTyp)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +#define MACvSetBBType(iobase, byTyp)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwOrgValue;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(dwIoB=
ase + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(iobas=
e + MAC_REG_ENCFG, &amp;dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue &amp; ~EnCFG_BBType_MASK;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwOrgValue =
=3D dwOrgValue | (unsigned long)byTyp;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_ENCFG, dwOrgValue);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvReadATIMW(dwIoBase, pwCounter)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(dwIoB=
ase + MAC_REG_AIDATIM, pwCounter)
<br>&gt; +#define MACvReadATIMW(iobase, pwCounter)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortW(iobas=
e + MAC_REG_AIDATIM, pwCounter)
<br>&gt;
<br>&gt; -#define MACvWriteATIMW(dwIoBase, wCounter)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_AIDATIM, wCounter)
<br>&gt; +#define MACvWriteATIMW(iobase, wCounter)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_AIDATIM, wCounter)
<br>&gt;
<br>&gt; -#define MACvWriteCRC16_128(dwIoBase, byRegOfs, wCRC)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>&gt; +#define MACvWriteCRC16_128(iobase, byRegOfs, wCRC)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0\
<br>&gt; =C2=A0do {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + byRegOfs, wCRC);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 1);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + byRegOfs, wCRC);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PAGE1SEL, 0);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; -#define MACvGPIOIn(dwIoBase, pbyValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(dwIoB=
ase + MAC_REG_GPIOCTL1, pbyValue)
<br>&gt; +#define MACvGPIOIn(iobase, pbyValue)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortB(iobas=
e + MAC_REG_GPIOCTL1, pbyValue)
<br>&gt;
<br>&gt; -#define MACvSetRFLE_LatchBase(<wbr>dwIoBase) =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
<br>&gt; +#define MACvSetRFLE_LatchBase(iobase) =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
<br>&gt;
<br>&gt; =C2=A0bool MACbIsRegBitsOn(struct vnt_private *, unsigned char byR=
egOfs,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 unsigned char byTestBits=
);
<br>&gt; diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/=
rf.c
<br>&gt; index 447882c..92bb1c6 100644
<br>&gt; --- a/drivers/staging/vt6655/rf.c
<br>&gt; +++ b/drivers/staging/vt6655/rf.c
<br>&gt; @@ -410,7 +410,7 @@ static const unsigned long dwAL7230ChannelTabl=
e2[CB_MAX_<wbr>CHANNEL] =3D {
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -419,16 +419,16 @@ static const unsigned long dwAL7230ChannelTa=
ble2[CB_MAX_<wbr>CHANNEL] =3D {
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool s_bAL7230Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 ii;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for normal mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_SOFTPWRCTL, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_SOFTPWRCTL, 0);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBvPowerSave=
ModeOFF(<wbr>priv); /* RobertYu:20050106, have DC value for Calibration */
<br>&gt;
<br>&gt; @@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D IFRFbWriteEmbedded(priv, d=
wAL7230InitTable[ii]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL On */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Calibrati=
on */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 150);/* 150us */
<br>&gt; @@ -449,7 +449,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* TXDCOC:di=
sable, RCK:disable */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_<wbr>INIT_SEQ-1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPE2 =
=C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPECT=
I =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; @@ -458,7 +458,7 @@ static bool s_bAL7230Init(struct vnt_private *=
priv)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PE1: TX_O=
N, PE2: RX_ON, PE3: PLLON */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for power saving mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -468,26 +468,26 @@ static bool s_bAL7230Init(struct vnt_private=
 *priv)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool s_bAL7230SelectChannel(struct vnt_private *priv,=
 unsigned char byChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLLON Off=
 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[<wbr>byChannel - 1]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[<wbr>byChannel - 1]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[<wbr>byChannel - 1]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLLOn On =
*/
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 0 to tell H/W channel is changing now. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL7230);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 1 to tell H/W channel change is done. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -497,7 +497,7 @@ static bool s_bAL7230SelectChannel(struct vnt_=
private *priv, unsigned char byCha
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwData =C2=A0 =C2=A0 =C2=A0- data to =
write
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -507,15 +507,15 @@ static bool s_bAL7230SelectChannel(struct vn=
t_private *priv, unsigned char byCha
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned l=
ong dwData)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt ww;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g dwValue;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(dwIo=
Base + MAC_REG_IFREGCTL, dwData);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortD(ioba=
se + MAC_REG_IFREGCTL, dwData);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* W_MAX_TIM=
EOUT is the timeout period */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (ww =3D =
0; ww &lt; W_MAX_TIMEOUT; ww++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(<wbr>dwIoBase + MAC_REG_IFREGC=
TL, &amp;dwValue);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvInPortD(<wbr>iobase + MAC_REG_IFREGCTL=
, &amp;dwValue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwValue &amp; IFREGCTL_DONE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -531,7 +531,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *pr=
iv, unsigned long dwData)
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; =C2=A0 *
<br>&gt; @@ -540,19 +540,19 @@ bool IFRFbWriteEmbedded(struct vnt_private *=
priv, unsigned long dwData)
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static bool RFbAL2230Init(struct vnt_private *priv)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 =
=C2=A0 ii;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for normal mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_SOFTPWRCTL, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_SOFTPWRCTL, 0);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL =C2=
=A0Off */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOf=
f(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* patch abn=
ormal AL2230 frequency output */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0IFRFbWriteEm=
bedded(<wbr>priv, (0x07168700+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFREGCTL_RE=
GW));
<br>&gt; @@ -562,7 +562,7 @@ static bool RFbAL2230Init(struct vnt_private *=
priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 30); /* delay 30 us */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PLL On */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 150);/* 150us */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, (0x00d80f00+(BY_AL2230_REG_<wbr>LEN&lt;&lt;3)+IFR=
EGCTL_REGW));
<br>&gt; @@ -571,20 +571,20 @@ static bool RFbAL2230Init(struct vnt_private=
 *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, 30);/* 30us */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_<wbr>INIT_SEQ-1]);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MACvWordRegBitsOn=
(<wbr>iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 =C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPE2 =
=C2=A0 =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_SWPECT=
I =C2=A0|
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SOFTPWRCTL_TXPEIN=
V));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* 3-wire co=
ntrol for power saving mode */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0static bool RFbAL2230SelectChannel(struct vnt_private *priv,=
 unsigned char byChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ret;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D true=
;
<br>&gt; @@ -593,10 +593,10 @@ static bool RFbAL2230SelectChannel(struct vn=
t_private *priv, unsigned char byCha
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret &amp;=3D=
 IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[<wbr>byChannel - 1]);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 0 to tell H/W channel is changing now. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel &amp; 0x7F));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>MACvTim=
er0MicroSDelay(priv, SWITCH_CHANNEL_DELAY_AL2230);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set Chann=
el[7] =3D 1 to tell H/W channel change is done. */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(dwIo=
Base + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortB(ioba=
se + MAC_REG_CHANNEL, (byChannel | 0x80));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; @@ -681,7 +681,7 @@ bool RFbSelectChannel(struct vnt_private *priv=
, unsigned char byRFType,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0- I/O base address
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0uChannel =C2=A0 =C2=A0- channel numbe=
r
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0bySleepCnt =C2=A0- SleepProgSyn count
<br>&gt; =C2=A0 *
<br>&gt; @@ -691,12 +691,12 @@ bool RFbSelectChannel(struct vnt_private *pr=
iv, unsigned char byRFType,
<br>&gt; =C2=A0bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned =
char byRFType,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 u16 uChannel)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *dwI=
oBase =3D priv-&gt;PortOffset;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem *iob=
ase =3D priv-&gt;PortOffset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int =C2=A0 i=
i;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r byInitCount =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned cha=
r bySleepCount =3D 0;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(dwIo=
Base + MAC_REG_MISCFFNDEX, 0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0VNSvOutPortW(ioba=
se + MAC_REG_MISCFFNDEX, 0);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (byRF=
Type) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case RF_AIRO=
HA:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case RF_AL22=
30S:
<br>&gt; @@ -758,7 +758,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *p=
riv, unsigned char byRFType,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 - I/O base a=
ddress
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 - I/O base add=
ress
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwRFPowerTable - RF Tx Power Setting
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; @@ -830,7 +830,7 @@ bool RFbSetPower(
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0 =C2=A0 - I/O base a=
ddress
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0 - I/O base add=
ress
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0dwRFPowerTable - RF Tx Power Setting
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0none
<br>&gt; diff --git a/drivers/staging/vt6655/srom.<wbr>c b/drivers/staging/=
vt6655/srom.<wbr>c
<br>&gt; index ee99277..0b612d3 100644
<br>&gt; --- a/drivers/staging/vt6655/s...</blockquote></div>
------=_Part_4463_1815233459.1475950760089--

------=_Part_4462_1538692348.1475950760081--

