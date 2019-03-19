X-GM-THRID: 6670105232964321280
Date: Tue, 19 Mar 2019 07:36:26 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <6e31cf7e-174d-4d81-b119-cb6498244ea3@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903191532270.8263@hadrien>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com> <20190319141806.8592-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.20.1903191530000.8263@hadrien>
 <alpine.DEB.2.20.1903191532270.8263@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtl8192u: r8192U_dm:
 Fix alignment issue.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2175_1700542104.1553006186555"
X-Google-Token: EOr8w-QFxmwTF7PqzcI0
X-Google-IP: 2405:204:6398:14e1:75f4:f821:faec:9887

------=_Part_2175_1700542104.1553006186555
Content-Type: multipart/alternative; 
	boundary="----=_Part_2176_954749671.1553006186555"

------=_Part_2176_954749671.1553006186555
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 19, 2019 at 8:03:04 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Tue, 19 Mar 2019, Julia Lawall wrote: 
>
> > 
> > 
> > On Tue, 19 Mar 2019, Sanjana Sanikommu wrote: 
> > 
> > > Ajdust alignment to match open paranthesis. 
> > > Issue found by checkpatch.pl 
> > > 
> > > CHECK: Alignment should match open paranthesis. 
> > > 
> > > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
>
> > > --- 
> > >  drivers/staging/rtl8192u/r8192U_dm.c | 20 ++++++++++---------- 
> > >  1 file changed, 10 insertions(+), 10 deletions(-) 
> > > 
> > > diff --git a/drivers/staging/rtl8192u/r8192U_dm.c 
> b/drivers/staging/rtl8192u/r8192U_dm.c 
> > > index 4fe4c99a0880..8279fa721c74 100644 
> > > --- a/drivers/staging/rtl8192u/r8192U_dm.c 
> > > +++ b/drivers/staging/rtl8192u/r8192U_dm.c 
> > > @@ -1451,7 +1451,7 @@ static void 
> dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH 
> > > 
> > >                  rtl8192_setBBreg(dev, rCCK0_TxFilter1, bMaskHWord, 
> TempVal); 
> > >                  RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x 
> = 0x%x\n", 
> > > -                        rCCK0_TxFilter1, TempVal); 
> > > +                         rCCK0_TxFilter1, TempVal); 
> > >                  /* Write 0xa24 ~ 0xa27 */ 
> > >                  TempVal 
> =        CCKSwingTable_Ch14[priv->CCK_index][2] + 
> > 
> > Since you will be sending this series again, maybe you could add another 
> > patch in the series to remove these big spaces between the = and the 
> array 
> > reference.  I wonder if it is tab that should be a space, but I'm not 
> sure 
> > because the next line seems to be aligned according to this big 
> distance. 
>
> Oh well, it seems that you sent the new seris again already :) 
>

I missed your review. Should I correct and send them again? I would like to 
know.

Thank you Sanjana 

>
> julia 
>
> > 
> > julia 
> > 
> > > 
>                                          (CCKSwingTable_Ch14[priv->CCK_index][3]<<8) 
> + 
> > > @@ -1459,14 +1459,14 @@ static void 
> dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH 
> > > 
>                                          (CCKSwingTable_Ch14[priv->CCK_index][5]<<24); 
>
> > >                  rtl8192_setBBreg(dev, rCCK0_TxFilter2, bMaskDWord, 
> TempVal); 
> > >                  RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x 
> = 0x%x\n", 
> > > -                        rCCK0_TxFilter2, TempVal); 
> > > +                         rCCK0_TxFilter2, TempVal); 
> > >                  /* Write 0xa28  0xa29 */ 
> > >                  TempVal 
> =        CCKSwingTable_Ch14[priv->CCK_index][6] + 
> > > 
>                                          (CCKSwingTable_Ch14[priv->CCK_index][7]<<8); 
>
> > > 
> > >                  rtl8192_setBBreg(dev, rCCK0_DebugPort, bMaskLWord, 
> TempVal); 
> > >                  RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x 
> = 0x%x\n", 
> > > -                        rCCK0_DebugPort, TempVal); 
> > > +                         rCCK0_DebugPort, TempVal); 
> > >          } 
> > >  } 
> > > 
> > > @@ -1517,7 +1517,7 @@ void dm_restore_dynamic_mechanism_state(struct 
> net_device *dev) 
> > >                  return; 
> > >          /* TODO: Only 11n mode is implemented currently, */ 
> > >          if (!(priv->ieee80211->mode == WIRELESS_MODE_N_24G || 
> > > -                priv->ieee80211->mode == WIRELESS_MODE_N_5G)) 
> > > +              priv->ieee80211->mode == WIRELESS_MODE_N_5G)) 
> > >                  return; 
> > > 
> > >          { 
> > > @@ -1748,7 +1748,7 @@ static void 
> dm_ctrl_initgain_byrssi_by_fwfalse_alarm( 
> > > 
> > >          /* For smooth, we can not change DIG state. */ 
> > >          if ((priv->undecorated_smoothed_pwdb > 
> dm_digtable.rssi_low_thresh) && 
> > > -                (priv->undecorated_smoothed_pwdb < 
> dm_digtable.rssi_high_thresh)) 
> > > +            (priv->undecorated_smoothed_pwdb < 
> dm_digtable.rssi_high_thresh)) 
> > >                  return; 
> > > 
> > >          /*DbgPrint("Dig by Fw False Alarm\n");*/ 
> > > @@ -1811,7 +1811,7 @@ static void 
> dm_ctrl_initgain_byrssi_by_fwfalse_alarm( 
> > >                  u8 reset_flag = 0; 
> > > 
> > >                  if (dm_digtable.dig_state == DM_STA_DIG_ON && 
> > > -                        (priv->reset_count == reset_cnt)) { 
> > > +                    (priv->reset_count == reset_cnt)) { 
> > >                          dm_ctrl_initgain_byrssi_highpwr(dev); 
> > >                          return; 
> > >                  } 
> > > @@ -1909,7 +1909,7 @@ static void dm_ctrl_initgain_byrssi_highpwr( 
> > >           */ 
> > >          if (priv->undecorated_smoothed_pwdb >= 
> dm_digtable.rssi_high_power_highthresh) { 
> > >                  if (dm_digtable.dig_highpwr_state == DM_STA_DIG_ON && 
> > > -                        (priv->reset_count == reset_cnt_highpwr)) 
> > > +                    (priv->reset_count == reset_cnt_highpwr)) 
> > >                          return; 
> > >                  dm_digtable.dig_highpwr_state = DM_STA_DIG_ON; 
> > > 
> > > @@ -1925,7 +1925,7 @@ static void dm_ctrl_initgain_byrssi_highpwr( 
> > >                          write_nic_byte(dev, rOFDM0_RxDetector1, 
> 0x43); 
> > >          } else { 
> > >                  if (dm_digtable.dig_highpwr_state == DM_STA_DIG_OFF 
> && 
> > > -                        (priv->reset_count == reset_cnt_highpwr)) 
> > > +                    (priv->reset_count == reset_cnt_highpwr)) 
> > >                          return; 
> > >                  dm_digtable.dig_highpwr_state = DM_STA_DIG_OFF; 
> > > 
> > > @@ -2126,7 +2126,7 @@ static        void dm_cs_ratio( 
> > > 
> > >          { 
> > >                  if ((dm_digtable.precs_ratio_state != 
> dm_digtable.curcs_ratio_state) || 
> > > -                        !initialized || force_write) { 
> > > +                    !initialized || force_write) { 
> > >                          /*DbgPrint("Write CS_ratio state = %d\n", 
> DM_DigTable.CurCS_ratioState);*/ 
> > >                          if (dm_digtable.curcs_ratio_state == 
> DIG_CS_RATIO_LOWER) { 
> > >                                  /*  Lower CS ratio for CCK. */ 
> > > @@ -2643,7 +2643,7 @@ void dm_fsync_timer_callback(struct timer_list 
> *t) 
> > >          bool                bDoubleTimeInterval = false; 
> > > 
> > >          if (priv->ieee80211->state == IEEE80211_LINKED && 
> > > -                priv->ieee80211->bfsync_enable && 
> > > +            priv->ieee80211->bfsync_enable && 
> > >                  (priv->ieee80211->pHTInfo->IOTAction & 
> HT_IOT_ACT_CDD_FSYNC)) { 
> > >                  /* Count rate 54, MCS [7], [12, 13, 14, 15] */ 
> > >                  u32 rate_bitmap; 
> > > -- 
> > > 2.17.1 
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190319141806.8592-1-sanjana99reddy99%40gmail.com. 
>
> > > For more options, visit https://groups.google.com/d/optout. 
> > > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903191530000.8263%40hadrien. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2176_954749671.1553006186555
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 19, 2019 at 8:03:04 PM UTC+5:30,=
 Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 19 Mar 2019, Julia Lawall wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Tue, 19 Mar 2019, Sanjana Sanikommu wrote:
<br>&gt;
<br>&gt; &gt; Ajdust alignment to match open paranthesis.
<br>&gt; &gt; Issue found by <a href=3D"http://checkpatch.pl" target=3D"_bl=
ank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com=
/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQj=
CNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#=
39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26=
sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">c=
heckpatch.pl</a>
<br>&gt; &gt;
<br>&gt; &gt; CHECK: Alignment should match open paranthesis.
<br>&gt; &gt;
<br>&gt; &gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" =
target=3D"_blank" gdf-obfuscated-mailto=3D"ySXtxYaFDAAJ" rel=3D"nofollow" o=
nmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"th=
is.href=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; &gt; ---
<br>&gt; &gt; =C2=A0drivers/staging/rtl8192u/<wbr>r8192U_dm.c | 20 ++++++++=
++----------
<br>&gt; &gt; =C2=A01 file changed, 10 insertions(+), 10 deletions(-)
<br>&gt; &gt;
<br>&gt; &gt; diff --git a/drivers/staging/rtl8192u/<wbr>r8192U_dm.c b/driv=
ers/staging/rtl8192u/<wbr>r8192U_dm.c
<br>&gt; &gt; index 4fe4c99a0880..8279fa721c74 100644
<br>&gt; &gt; --- a/drivers/staging/rtl8192u/<wbr>r8192U_dm.c
<br>&gt; &gt; +++ b/drivers/staging/rtl8192u/<wbr>r8192U_dm.c
<br>&gt; &gt; @@ -1451,7 +1451,7 @@ static void dm_CCKTxPowerAdjust_<wbr>Th=
ermalMeter(struct net_device *dev, bool =C2=A0bInCH
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl8192_<wbr>setBBreg(dev, rCCK0_=
TxFilter1, bMaskHWord, TempVal);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RT_TRACE(<wbr>COMP_POWER_TRACKING=
, &quot;CCK chnl 14, reg 0x%x =3D 0x%x\n&quot;,
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>rCCK0_TxFilter1, TempVal);
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rCCK0_TxFilter1, TempVal);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Write 0xa24 ~ 0xa27 */
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0TempVal =3D=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0CCKSwingTable_Ch14[<wbr>priv-&gt;CCK_index][2] +
<br>&gt;
<br>&gt; Since you will be sending this series again, maybe you could add a=
nother
<br>&gt; patch in the series to remove these big spaces between the =3D and=
 the array
<br>&gt; reference. =C2=A0I wonder if it is tab that should be a space, but=
 I&#39;m not sure
<br>&gt; because the next line seems to be aligned according to this big di=
stance.
<br>
<br>Oh well, it seems that you sent the new seris again already :)
<br></blockquote><div><br></div><div>I missed your review. Should I correct=
 and send them again? I would like to know.</div><div><br></div><div>Thank =
you Sanjana=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>julia
<br>
<br>&gt;
<br>&gt; julia
<br>&gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(CCKSwingTable_<wbr>Ch14[priv-&gt=
;CCK_index][3]&lt;&lt;8) +
<br>&gt; &gt; @@ -1459,14 +1459,14 @@ static void dm_CCKTxPowerAdjust_<wbr>=
ThermalMeter(struct net_device *dev, bool =C2=A0bInCH
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(CCKSwingTable_<wbr>Ch14[priv-&gt=
;CCK_index][5]&lt;&lt;24);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl8192_<wbr>setBBreg(dev, rCCK0_=
TxFilter2, bMaskDWord, TempVal);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RT_TRACE(<wbr>COMP_POWER_TRACKING=
, &quot;CCK chnl 14, reg 0x%x =3D 0x%x\n&quot;,
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>rCCK0_TxFilter2, TempVal);
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rCCK0_TxFilter2, TempVal);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Write 0xa28 =C2=A00xa29 */
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0TempVal =3D=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0CCKSwingTable_Ch14[<wbr>priv-&gt;CCK_index][6] +
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(CCKSwingTable_<wbr>Ch14[priv-&gt=
;CCK_index][7]&lt;&lt;8);
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl8192_<wbr>setBBreg(dev, rCCK0_=
DebugPort, bMaskLWord, TempVal);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RT_TRACE(<wbr>COMP_POWER_TRACKING=
, &quot;CCK chnl 14, reg 0x%x =3D 0x%x\n&quot;,
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>rCCK0_DebugPort, TempVal);
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rCCK0_DebugPort, TempVal);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; &gt; =C2=A0}
<br>&gt; &gt;
<br>&gt; &gt; @@ -1517,7 +1517,7 @@ void dm_restore_dynamic_mechanism_<wbr>=
state(struct net_device *dev)
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* TODO=
: Only 11n mode is implemented currently, */
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!(p=
riv-&gt;ieee80211-&gt;mode =3D=3D WIRELESS_MODE_N_24G ||
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ieee80211-&gt;mode =3D=3D=
 WIRELESS_MODE_N_5G))
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0priv-&gt;ieee80211-&gt;mode =3D=3D WIRELESS_MODE_N_5G))
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{
<br>&gt; &gt; @@ -1748,7 +1748,7 @@ static void dm_ctrl_initgain_byrssi_by_=
<wbr>fwfalse_alarm(
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* For =
smooth, we can not change DIG state. */
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pr=
iv-&gt;undecorated_smoothed_<wbr>pwdb &gt; dm_digtable.rssi_low_thresh) &am=
p;&amp;
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(priv-&gt;<wbr>undecorated_smoothed_pwd=
b &lt; dm_digtable.rssi_high_thresh))
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0(priv-&gt;undecorated_smoothed_<wbr>pwdb &lt; dm_digtable.rssi_high_thre=
sh))
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*DbgPr=
int(&quot;Dig by Fw False Alarm\n&quot;);*/
<br>&gt; &gt; @@ -1811,7 +1811,7 @@ static void dm_ctrl_initgain_byrssi_by_=
<wbr>fwfalse_alarm(
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 reset_flag =3D 0;
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dm_digtable.dig_state =3D=3D =
DM_STA_DIG_ON &amp;&amp;
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(<wbr>priv-&gt;reset_count =3D=3D reset_cnt)) {
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(priv-&gt;reset_count =3D=
=3D reset_cnt)) {
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0dm_<wbr>ctrl_initgain_byrssi_highpwr(<wbr>dev);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>return;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; &gt; @@ -1909,7 +1909,7 @@ static void dm_ctrl_initgain_byrssi_<wb=
r>highpwr(
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pri=
v-&gt;undecorated_smoothed_<wbr>pwdb &gt;=3D dm_digtable.rssi_high_power_<w=
br>highthresh) {
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dm_digtable.dig_highpwr_state=
 =3D=3D DM_STA_DIG_ON &amp;&amp;
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(<wbr>priv-&gt;reset_count =3D=3D reset_cnt_highpwr))
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(priv-&gt;reset_count =3D=
=3D reset_cnt_highpwr))
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>return;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dm_digtable.<wbr>dig_highpwr_stat=
e =3D DM_STA_DIG_ON;
<br>&gt; &gt;
<br>&gt; &gt; @@ -1925,7 +1925,7 @@ static void dm_ctrl_initgain_byrssi_<wb=
r>highpwr(
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>write_nic_byte(dev, rOFDM0_RxDetector1, 0x43);
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else =
{
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dm_digtable.dig_highpwr_state=
 =3D=3D DM_STA_DIG_OFF &amp;&amp;
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(<wbr>priv-&gt;reset_count =3D=3D reset_cnt_highpwr))
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0(priv-&gt;reset_count =3D=
=3D reset_cnt_highpwr))
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>return;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dm_digtable.<wbr>dig_highpwr_stat=
e =3D DM_STA_DIG_OFF;
<br>&gt; &gt;
<br>&gt; &gt; @@ -2126,7 +2126,7 @@ static=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0void dm_cs_ratio(
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((dm_digtable.precs_ratio_<wbr=
>state !=3D dm_digtable.curcs_ratio_state) ||
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0!<wbr>initialized || force_write) {
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0!initialized || force_wri=
te) {
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0/*<wbr>DbgPrint(&quot;Write CS_ratio state =3D %d\n&quot;, D=
M_DigTable.CurCS_ratioState);<wbr>*/
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (dm_digtable.curcs_ratio_state =3D=3D DIG_CS_RATIO_LOWER)=
 {
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0/* =C2=
=A0Lower CS ratio for CCK. */
<br>&gt; &gt; @@ -2643,7 +2643,7 @@ void dm_fsync_timer_callback(struct tim=
er_list *t)
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>bDoubleTimeInterval =3D false;
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pri=
v-&gt;ieee80211-&gt;state =3D=3D IEEE80211_LINKED &amp;&amp;
<br>&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;<wbr>ieee80211-&gt;bfsync_enab=
le &amp;&amp;
<br>&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0priv-&gt;ieee80211-&gt;bfsync_<wbr>enable &amp;&amp;
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(priv-&gt;<wbr>ieee80211-&gt;pHTI=
nfo-&gt;IOTAction &amp; HT_IOT_ACT_CDD_FSYNC)) {
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Count rate 54, MCS [7], [12, 1=
3, 14, 15] */
<br>&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 rate_bitmap;
<br>&gt; &gt; --
<br>&gt; &gt; 2.17.1
<br>&gt; &gt;
<br>&gt; &gt; --
<br>&gt; &gt; You received this message because you are subscribed to the G=
oogle Groups &quot;outreachy-kernel&quot; group.
<br>&gt; &gt; To unsubscribe from this group and stop receiving emails from=
 it, send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfusca=
ted-mailto=3D"ySXtxYaFDAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#3=
9;;return true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; &gt; To post to this group, send email to <a href=3D"javascript:" =
target=3D"_blank" gdf-obfuscated-mailto=3D"ySXtxYaFDAAJ" rel=3D"nofollow" o=
nmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"th=
is.href=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr=
>com</a>.
<br>&gt; &gt; To view this discussion on the web visit <a href=3D"https://g=
roups.google.com/d/msgid/outreachy-kernel/20190319141806.8592-1-sanjana99re=
ddy99%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/2019031914180=
6.8592-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190319141806=
.8592-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.goog=
le.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190319141806.8592-1-<wbr>sanjan=
a99reddy99%40gmail.com</a>.
<br>&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/=
d/optout" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;https://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;https://groups.google.com/d/optout&#39;;return true;">https://grou=
ps.google.com/d/<wbr>optout</a>.
<br>&gt; &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"ySXtxYaFDAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"ySXtxYaFDAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903191530000.8263%40h=
adrien" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;=
https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.19031915=
30000.8263%40hadrien&#39;;return true;" onclick=3D"this.href=3D&#39;https:/=
/groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903191530000.8=
263%40hadrien&#39;;return true;">https://groups.google.com/d/<wbr>msgid/out=
reachy-kernel/alpine.<wbr>DEB.2.20.1903191530000.8263%<wbr>40hadrien</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2176_954749671.1553006186555--

------=_Part_2175_1700542104.1553006186555--

