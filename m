X-GM-THRID: 6672748306065522688
Date: Wed, 27 Mar 2019 06:02:37 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <627f171b-b359-4d5c-b2f7-f5aa1dd1f04f@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903261852120.6419@hadrien>
References: <20190326171111.20036-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.20.1903261852120.6419@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove unncessary
 paranthesis.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2941_1226192485.1553691757278"
X-Google-Token: EO3o7eQFMDQOM5Up38M0
X-Google-IP: 123.201.165.12

------=_Part_2941_1226192485.1553691757278
Content-Type: multipart/alternative; 
	boundary="----=_Part_2942_640170612.1553691757279"

------=_Part_2942_640170612.1553691757279
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 26, 2019 at 11:24:17 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Tue, 26 Mar 2019, Sanjana Sanikommu wrote: 
>
> > Challenge suggested by coccinelle. 
> > Remove unnecessary parathesis around the right hand of 
> > assignment using the below script. 
> > 
> > @@ 
> > binary operator op = {==,!=,&&,||,>=,<=,&,|}; 
>
> It's not relevant to your actual patch, but for == it could be a better 
> idea to leave things as they are.  x = y == z; is a bit easy to misread. 
>
 
  Yes, I agree I would remove == from binary operators. 

>
> > expression l, r, t; 
> > @@ 
> > 
> > ( 
> > l = (r op t) 
> > | 
> > l = 
> > -( 
> > r 
> > -) 
> > ) 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  .../staging/rtl8192e/rtl8192e/r8192E_phy.c    | 20 +++++++++---------- 
> >  1 file changed, 10 insertions(+), 10 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> > index 73497d559b77..3de07a79b3e0 100644 
> > --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> > +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c 
> > @@ -81,8 +81,8 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 
> dwRegAddr, u32 dwBitMask, 
> >          if (dwBitMask != bMaskDWord) { 
> >                  OriginalValue = rtl92e_readl(dev, dwRegAddr); 
> >                  BitShift = _rtl92e_calculate_bit_shift(dwBitMask); 
> > -                NewValue = (((OriginalValue) & (~dwBitMask)) | 
> > -                            (dwData << BitShift)); 
> > +                NewValue = ((OriginalValue) & (~dwBitMask)) | 
> > +                            (dwData << BitShift); 
>
> The parentheses on (OriginalValue) and (~dwBitMask) are not needed and 
> make the code harder to read (more clutter).  Could you update your 
> semantic patch to also take this case into account? 
>
 

> Yes, I will update my semantic patch by considering parenthesis :)

    Sanjana
 

>  
> julia 
>
> >                  rtl92e_writel(dev, dwRegAddr, NewValue); 
> >          } else 
> >                  rtl92e_writel(dev, dwRegAddr, dwData); 
> > @@ -223,8 +223,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum 
> rf90_radio_path eRFPath, 
> >                          Original_Value = _rtl92e_phy_rf_fw_read(dev, 
> eRFPath, 
> > 
>                                                                  RegAddr); 
> >                          BitShift = 
>  _rtl92e_calculate_bit_shift(BitMask); 
> > -                        New_Value = (((Original_Value) & (~BitMask)) | 
> > -                                    (Data << BitShift)); 
> > +                        New_Value = ((Original_Value) & (~BitMask)) | 
> > +                                    (Data << BitShift); 
> > 
> >                          _rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr, 
> >                                                  New_Value); 
> > @@ -237,8 +237,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum 
> rf90_radio_path eRFPath, 
> >                          Original_Value = _rtl92e_phy_rf_read(dev, 
> eRFPath, 
> >                                                               RegAddr); 
> >                          BitShift = 
>  _rtl92e_calculate_bit_shift(BitMask); 
> > -                        New_Value = (((Original_Value) & (~BitMask)) | 
> > -                                     (Data << BitShift)); 
> > +                        New_Value = ((Original_Value) & (~BitMask)) | 
> > +                                     (Data << BitShift); 
> > 
> >                          _rtl92e_phy_rf_write(dev, eRFPath, RegAddr, 
> New_Value); 
> >                  } else 
> > @@ -571,9 +571,9 @@ static bool _rtl92e_bb_config_para_file(struct 
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
> > @@ -655,9 +655,9 @@ void rtl92e_set_tx_power(struct net_device *dev, u8 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190326171111.20036-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2942_640170612.1553691757279
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 26, 2019 at 11:24:17 PM UTC+5:30=
, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 26 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; Challenge suggested by coccinelle.
<br>&gt; Remove unnecessary parathesis around the right hand of
<br>&gt; assignment using the below script.
<br>&gt;
<br>&gt; @@
<br>&gt; binary operator op =3D {=3D=3D,!=3D,&amp;&amp;,||,&gt;=3D,&lt;=3D,=
&amp;,|};
<br>
<br>It&#39;s not relevant to your actual patch, but for =3D=3D it could be =
a better
<br>idea to leave things as they are. =C2=A0x =3D y =3D=3D z; is a bit easy=
 to misread.
<br></blockquote><div>=C2=A0</div><div>=C2=A0 Yes, I agree I would remove =
=3D=3D from binary operators.=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-l=
eft: 1ex;">
<br>&gt; expression l, r, t;
<br>&gt; @@
<br>&gt;
<br>&gt; (
<br>&gt; l =3D (r op t)
<br>&gt; |
<br>&gt; l =3D
<br>&gt; -(
<br>&gt; r
<br>&gt; -)
<br>&gt; )
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"4NmFx-xDBQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0.../staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c =C2=A0 =C2=
=A0| 20 +++++++++----------
<br>&gt; =C2=A01 file changed, 10 insertions(+), 10 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c b=
/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c
<br>&gt; index 73497d559b77..3de07a79b3e0 100644
<br>&gt; --- a/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c
<br>&gt; +++ b/drivers/staging/rtl8192e/<wbr>rtl8192e/r8192E_phy.c
<br>&gt; @@ -81,8 +81,8 @@ void rtl92e_set_bb_reg(struct net_device *dev, u=
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
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0NewValue =3D ((OriginalValue) &amp; (~dwBi=
tMask)) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0(dwData &lt;&lt; BitShift);
<br>
<br>The parentheses on (OriginalValue) and (~dwBitMask) are not needed and
<br>make the code harder to read (more clutter). =C2=A0Could you update you=
r
<br>semantic patch to also take this case into account?
<br></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">Yes, I will update my semantic patch by considering parenthesis :)</b=
lockquote><div>=C2=A0 =C2=A0 Sanjana</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #c=
cc solid;padding-left: 1ex;">=C2=A0<br>julia
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl92e_<wbr>writel(dev, dwRegAddr, NewV=
alue);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl92e_<wbr>writel(dev, dwRegAddr, dwDa=
ta);
<br>&gt; @@ -223,8 +223,8 @@ void rtl92e_set_rf_reg(struct net_device *dev,=
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
=C2=A0New_<wbr>Value =3D ((Original_Value) &amp; (~BitMask)) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(D=
ata &lt;&lt; BitShift);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0_<wbr>rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0New_Value);
<br>&gt; @@ -237,8 +237,8 @@ void rtl92e_set_rf_reg(struct net_device *dev,=
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
=C2=A0New_<wbr>Value =3D ((Original_Value) &amp; (~BitMask)) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 (=
Data &lt;&lt; BitShift);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0_<wbr>rtl92e_phy_rf_write(dev, eRFPath, RegAddr, New_Value);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else
<br>&gt; @@ -571,9 +571,9 @@ static bool _rtl92e_bb_config_para_file(<wbr>s=
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
<br>&gt; @@ -655,9 +655,9 @@ void rtl92e_set_tx_power(struct net_device *de=
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
ailto=3D"4NmFx-xDBQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"4NmFx-xDBQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190326171111.20036-1-sanjana99reddy9=
9%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190326171111.2=
0036-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190326171111.2=
0036-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.googl=
e.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190326171111.20036-1-<wbr>sanjan=
a99reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2942_640170612.1553691757279--

------=_Part_2941_1226192485.1553691757278--

