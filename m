X-GM-THRID: 6672748306065522688
Date: Wed, 27 Mar 2019 08:44:58 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <12934956-90a1-4573-9291-6dfa4d25a9e5@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903271629300.2848@hadrien>
References: <20190327151947.7909-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.21.1903271629300.2848@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: Remove
 unncessary paranthesis.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2972_666676865.1553701498272"
X-Google-Token: EPq07uQFCuqLhHwMruE0
X-Google-IP: 219.91.254.10

------=_Part_2972_666676865.1553701498272
Content-Type: multipart/alternative; 
	boundary="----=_Part_2973_1050626675.1553701498273"

------=_Part_2973_1050626675.1553701498273
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, March 27, 2019 at 9:02:49 PM UTC+5:30, Julia Lawall wrote:
>
> The word is parenthesis, plural parentheses.  Please change both 
> misspelled occurrences. 
>
    
    I will correct it. 

>
> On Wed, 27 Mar 2019, Sanjana Sanikommu wrote: 
>
> > Challenge suggested by coccinelle. 
> > Remove unnecessary parathesis around the right hand of 
> > assignment using the below script. 
> > 
> > @@ 
> > local idexpression id; 
> > expression e; 
> > @@ 
> > 
> > id = 
> > -( 
> > e 
> > -) 
> > 
> > @@ expression e, e1, e2,e3,e4; @@ 
> > e = 
> > -(((e1) & (e2)) | 
> > -(e3 << e4)) 
> > +(e1 & e2) | 
> > +(e3 << e4) 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> > Changes in v2: 
> > Modify semantic patch to remove unnecessary paranthesis 
> > around  (OriginalValue) and (~dwBitMask). 
> >  .../staging/rtl8192e/rtl8192e/r8192E_phy.c    | 19 ++++++++----------- 
> >  1 file changed, 8 insertions(+), 11 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> > index 73497d559b77..5603570f6dda 100644 
> > --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> > +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> > @@ -81,8 +81,7 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 
> dwRegAddr, u32 dwBitMask, 
> >          if (dwBitMask != bMaskDWord) { 
> >                  OriginalValue = rtl92e_readl(dev, dwRegAddr); 
> >                  BitShift = _rtl92e_calculate_bit_shift(dwBitMask); 
> > -                NewValue = (((OriginalValue) & (~dwBitMask)) | 
> > -                            (dwData << BitShift)); 
> > +                NewValue = (OriginalValue & ~dwBitMask) | (dwData << 
> BitShift); 
> >                  rtl92e_writel(dev, dwRegAddr, NewValue); 
> >          } else 
> >                  rtl92e_writel(dev, dwRegAddr, dwData); 
> > @@ -188,7 +187,7 @@ static void _rtl92e_phy_rf_write(struct net_device 
> *dev, 
> >                  NewOffset = Offset; 
> >          } 
> > 
> > -        DataAndAddr = (Data<<16) | (NewOffset&0x3f); 
> > +        DataAndAddr = (NewOffset & 0x3f) | (Data << 16); 
>
> I think that your added rule unnecessarily switched the expressions around 
> here.  Actually it matches your new rule backwards.


  Even I thought it for a while, but after switching expressions,I found it 
adjusts spaces
  around operators. If I remove the rule if affects parentheses around  
 (OriginalValue) and (~dwBitMask).
  So I thought it would be fine :) 


>
> >          rtl92e_set_bb_reg(dev, pPhyReg->rf3wireOffset, bMaskDWord, 
> DataAndAddr); 
> > 
> > @@ -223,8 +222,7 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum 
> rf90_radio_path eRFPath, 
> >                          Original_Value = _rtl92e_phy_rf_fw_read(dev, 
> eRFPath, 
> > 
>                                                                  RegAddr); 
> >                          BitShift = 
>  _rtl92e_calculate_bit_shift(BitMask); 
> > -                        New_Value = (((Original_Value) & (~BitMask)) | 
> > -                                    (Data << BitShift)); 
> > +                        New_Value = (Original_Value & ~BitMask) | (Data 
> << BitShift); 
> > 
> >                          _rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr, 
> >                                                  New_Value); 
> > @@ -237,8 +235,7 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum 
> rf90_radio_path eRFPath, 
> >                          Original_Value = _rtl92e_phy_rf_read(dev, 
> eRFPath, 
> >                                                               RegAddr); 
> >                          BitShift = 
>  _rtl92e_calculate_bit_shift(BitMask); 
> > -                        New_Value = (((Original_Value) & (~BitMask)) | 
> > -                                     (Data << BitShift)); 
> > +                        New_Value = (Original_Value & ~BitMask) | (Data 
> << BitShift); 
>
> You are going over 80 characters here.  Coccinelle is not always so smart 
> about whitespace issues, and you have to clean them up by hand. 
>

   I will handle this one :) 

>
> julia 
>
> > 
> >                          _rtl92e_phy_rf_write(dev, eRFPath, RegAddr, 
> New_Value); 
> >                  } else 
> > @@ -571,9 +568,9 @@ static bool _rtl92e_bb_config_para_file(struct 
> net_device *dev) 
> > 
> >          if (priv->IC_Cut  > VERSION_8190_BD) { 
> >                  if (priv->rf_type == RF_2T4R) 
> > -                        dwRegValue = (priv->AntennaTxPwDiff[2]<<8 | 
> > +                        dwRegValue = priv->AntennaTxPwDiff[2]<<8 | 
> >                                        priv->AntennaTxPwDiff[1]<<4 | 
> > -                                      priv->AntennaTxPwDiff[0]); 
> > +                                      priv->AntennaTxPwDiff[0]; 
> >                  else 
> >                          dwRegValue = 0x0; 
> >                  rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage, 
> > @@ -655,9 +652,9 @@ void rtl92e_set_tx_power(struct net_device *dev, u8 
> channel) 
> >                          priv->AntennaTxPwDiff[1] = (u8)(ant_pwr_diff); 
> >                          priv->AntennaTxPwDiff[0] = 0; 
> > 
> > -                        u4RegValue = (priv->AntennaTxPwDiff[2]<<8 | 
> > +                        u4RegValue = priv->AntennaTxPwDiff[2]<<8 | 
> >                                        priv->AntennaTxPwDiff[1]<<4 | 
> > -                                      priv->AntennaTxPwDiff[0]); 
> > +                                      priv->AntennaTxPwDiff[0]; 
> > 
> >                          rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage, 
> >                                            (bXBTxAGC|bXCTxAGC|bXDTxAGC), 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190327151947.7909-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2973_1050626675.1553701498273
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, March 27, 2019 at 9:02:49 PM UTC+5:3=
0, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">The word=
 is parenthesis, plural parentheses. =C2=A0Please change both
<br>misspelled occurrences.
<br></blockquote><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 I will co=
rrect it.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>On Wed, 27 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; Challenge suggested by coccinelle.
<br>&gt; Remove unnecessary parathesis around the right hand of
<br>&gt; assignment using the below script.
<br>&gt;
<br>&gt; @@
<br>&gt; local idexpression id;
<br>&gt; expression e;
<br>&gt; @@
<br>&gt;
<br>&gt; id =3D
<br>&gt; -(
<br>&gt; e
<br>&gt; -)
<br>&gt;
<br>&gt; @@ expression e, e1, e2,e3,e4; @@
<br>&gt; e =3D
<br>&gt; -(((e1) &amp; (e2)) |
<br>&gt; -(e3 &lt;&lt; e4))
<br>&gt; +(e1 &amp; e2) |
<br>&gt; +(e3 &lt;&lt; e4)
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"w3459vyeAAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes in v2:
<br>&gt; Modify semantic patch to remove unnecessary paranthesis
<br>&gt; around =C2=A0(OriginalValue) and (~dwBitMask).
<br>&gt; =C2=A0.../staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c =C2=A0 =C2=
=A0| 19 ++++++++-----------
<br>&gt; =C2=A01 file changed, 8 insertions(+), 11 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c b=
/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c
<br>&gt; index 73497d559b77..5603570f6dda 100644
<br>&gt; --- a/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c
<br>&gt; +++ b/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c
<br>&gt; @@ -81,8 +81,7 @@ void rtl92e_set_bb_reg(struct net_device *dev, u=
32 dwRegAddr, u32 dwBitMask,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dwBitMas=
k !=3D bMaskDWord) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0OriginalValue =3D rtl92e_readl(dev, dwR=
egAddr);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BitShift =3D _rtl92e_calculate_bit_shif=
t(<wbr>dwBitMask);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NewValue =3D (((OriginalValue) &amp; (~dwB=
itMask)) |
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0(dwData &lt;&lt; BitShift));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NewValue =3D (OriginalValue &amp; ~dwBitMa=
sk) | (dwData &lt;&lt; BitShift);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl92e_<wbr>writel(dev, dwRegAddr, NewV=
alue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl92e_<wbr>writel(dev, dwRegAddr, dwDa=
ta);
<br>&gt; @@ -188,7 +187,7 @@ static void _rtl92e_phy_rf_write(struct net_de=
vice *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NewOffset =3D Offset;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DataAndAddr =3D (=
Data&lt;&lt;16) | (NewOffset&amp;0x3f);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DataAndAddr =3D (=
NewOffset &amp; 0x3f) | (Data &lt;&lt; 16);
<br>
<br>I think that your added rule unnecessarily switched the expressions aro=
und
<br>here. =C2=A0Actually it matches your new rule backwards.</blockquote><d=
iv><br></div><div>=C2=A0 Even I thought it for a while, but after switching=
 expressions,I found it adjusts spaces</div><div>=C2=A0 around operators. I=
f I remove the rule if affects parentheses around=C2=A0 =C2=A0(OriginalValu=
e) and (~dwBitMask).</div><div>=C2=A0 So I thought it would be fine :)=C2=
=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl92e_set_b=
b_reg(<wbr>dev, pPhyReg-&gt;rf3wireOffset, bMaskDWord, DataAndAddr);
<br>&gt;
<br>&gt; @@ -223,8 +222,7 @@ void rtl92e_set_rf_reg(struct net_device *dev,=
 enum rf90_radio_path eRFPath,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>Original_Value =3D _rtl92e_phy_rf_fw_read(dev, eRFPath,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RegAddr);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>BitShift =3D =C2=A0_rtl92e_calculate_bit_shift(<wbr>BitMask);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0New_<wbr>Value =3D (((Original_Value) &amp; (~BitMask)) |
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(D=
ata &lt;&lt; BitShift));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0New_<wbr>Value =3D (Original_Value &amp; ~BitMask) | (Data &lt;&lt; B=
itShift);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0_<wbr>rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0New_Value);
<br>&gt; @@ -237,8 +235,7 @@ void rtl92e_set_rf_reg(struct net_device *dev,=
 enum rf90_radio_path eRFPath,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>Original_Value =3D _rtl92e_phy_rf_read(dev, eRFPath,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 Reg=
Addr);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>BitShift =3D =C2=A0_rtl92e_calculate_bit_shift(<wbr>BitMask);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0New_<wbr>Value =3D (((Original_Value) &amp; (~BitMask)) |
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 (=
Data &lt;&lt; BitShift));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0New_<wbr>Value =3D (Original_Value &amp; ~BitMask) | (Data &lt;&lt; B=
itShift);
<br>
<br>You are going over 80 characters here. =C2=A0Coccinelle is not always s=
o smart
<br>about whitespace issues, and you have to clean them up by hand.
<br></blockquote><div><br></div><div>=C2=A0 =C2=A0I will handle this one :)=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>julia
<br>
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0_<wbr>rtl92e_phy_rf_write(dev, eRFPath, RegAddr, New_Value);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else
<br>&gt; @@ -571,9 +568,9 @@ static bool _rtl92e_bb_config_para_file(<wbr>s=
truct net_device *dev)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (priv-&gt=
;IC_Cut =C2=A0&gt; VERSION_8190_BD) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (priv-&gt;rf_type =3D=3D RF_2T4R)
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>dwRegValue =3D (priv-&gt;AntennaTxPwDiff[2]&lt;&lt;8 |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>dwRegValue =3D priv-&gt;AntennaTxPwDiff[2]&lt;&lt;8 |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0priv-&gt;AntennaTxPwDiff[1]&lt;&lt;4 |
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0priv-&gt;AntennaTxPwDiff[0]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0priv-&gt;AntennaTxPwDiff[0];
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>dwRegValue =3D 0x0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl92e_set_<wbr>bb_reg(dev, rFPGA0_TxGa=
inStage,
<br>&gt; @@ -655,9 +652,9 @@ void rtl92e_set_tx_power(struct net_device *de=
v, u8 channel)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0priv-<wbr>&gt;AntennaTxPwDiff[1] =3D (u8)(ant_pwr_diff);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0priv-<wbr>&gt;AntennaTxPwDiff[0] =3D 0;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>u4RegValue =3D (priv-&gt;AntennaTxPwDiff[2]&lt;&lt;8 |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>u4RegValue =3D priv-&gt;AntennaTxPwDiff[2]&lt;&lt;8 |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0priv-&gt;AntennaTxPwDiff[1]&lt;&lt;4 |
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0priv-&gt;AntennaTxPwDiff[0]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0priv-&gt;AntennaTxPwDiff[0];
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0(bXBTxAGC|bXCTxAGC|bXDTxAGC),
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"w3459vyeAAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"w3459vyeAAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190327151947.7909-1-sanjana99reddy99=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190327151947.7=
909-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190327151947.7=
909-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190327151947.7909-1-<wbr>sanjana9=
9reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2973_1050626675.1553701498273--

------=_Part_2972_666676865.1553701498272--

