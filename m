X-GM-THRID: 6670105232964321280
X-Received: by 2002:a2e:864f:: with SMTP id i15mr1437267ljj.13.1553006926908;
        Tue, 19 Mar 2019 07:48:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2c7:: with SMTP id y68ls2570845lje.10.gmail; Tue, 19 Mar
 2019 07:48:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw7EdrA0ZP+atJEXqT+bp4EcX+TvHLmIgAT9Bg7tabKd8L8EAr7iu6kufW+mb3ePul6KgcS
X-Received: by 2002:a2e:391d:: with SMTP id g29mr1420010lja.17.1553006926022;
        Tue, 19 Mar 2019 07:48:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553006926; cv=none;
        d=google.com; s=arc-20160816;
        b=uy4nbBsDLaqKbfqK51z2bjocmQlU23O9VRJerEJDBKc55nKP7JC9SpdifUttIjsE4J
         HwXFkRcogM6DAhm9K1e1wm8swwA5ymUx/EirOY1l8gy7QXVqUHcczQj6Q/TWWmfL/bAX
         sFnd4MUteRQDVpA9Qao4ceaFu0pliRh6u2L/8r6fxhD75Rx4WK8y0ifb+AM5x1mnwxXy
         8FpDgaU1FBEK3MXdCr9nvE1xmX6bCGdU6cj0DrCgZpxCXGhivNSxxfiriWL+ZNGJn9Je
         q3f33LVFOAFVDmjKOI0/Z9vjraQt1t6zsns8+aQse90V6Rz5apkHxfRC6Mz/QpNW1PeK
         8NWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=D7ZCOou7SEh6ZeF0X3uxaGEK76nIh5v3aj8Zt6qjbKc=;
        b=TyNIMi5Nxpl0Dbn5AcjiRYpvi/8MXaAFJVxZRVD5vbUX29T7O1RJGdaHlNYrFsopCh
         Oxm6SwlZ7aJJuijEGFBMMxfjtqWnWenKZj5HyIKi/2lNt81LrXJxw/za10AegaCSBjs7
         64OesXcKUcQeZ0izWBFh35hzJlpzEM4sBelnV8Z9jLjKQ9WkmhMDczjdx4dDpy5sQYhd
         ZNUEtkSl/+ZmKiOJAsBWoG5vddrlfv/TdqIadIl9UXid322hIm3j8mfI2k84ArWuux/7
         w0f7RpGXSsUtSpEsMOg4KzOQuBK/l1+5JNg+/HnxB5HnchSykbxYkh7UwvkcVF8cpE0J
         HE5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h14si766585lja.2.2019.03.19.07.48.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:48:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,498,1544482800"; 
   d="scan'208";a="299971797"
Received: from unknown (HELO hadrien.local) ([163.173.90.67])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 15:48:45 +0100
Date: Tue, 19 Mar 2019 15:48:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sanjana99reddy99@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtl8192u: r8192U_dm:
 Fix alignment issue.
In-Reply-To: <6e31cf7e-174d-4d81-b119-cb6498244ea3@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903191548160.8263@hadrien>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com> <20190319141806.8592-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.20.1903191530000.8263@hadrien> <alpine.DEB.2.20.1903191532270.8263@hadrien>
 <6e31cf7e-174d-4d81-b119-cb6498244ea3@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_2175_1700542104.1553006186555"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

------=_Part_2175_1700542104.1553006186555
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 19 Mar 2019, sanjana99reddy99@gmail.com wrote:

>
>
> On Tuesday, March 19, 2019 at 8:03:04 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Tue, 19 Mar 2019, Julia Lawall wrote:
>
>       >
>       >
>       > On Tue, 19 Mar 2019, Sanjana Sanikommu wrote:
>       >
>       > > Ajdust alignment to match open paranthesis.
>       > > Issue found by checkpatch.pl
>       > >
>       > > CHECK: Alignment should match open paranthesis.
>       > >
>       > > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com>
>       > > ---
>       > > �drivers/staging/rtl8192u/r8192U_dm.c | 20
>       ++++++++++----------
>       > > �1 file changed, 10 insertions(+), 10 deletions(-)
>       > >
>       > > diff --git a/drivers/staging/rtl8192u/r8192U_dm.c
>       b/drivers/staging/rtl8192u/r8192U_dm.c
>       > > index 4fe4c99a0880..8279fa721c74 100644
>       > > --- a/drivers/staging/rtl8192u/r8192U_dm.c
>       > > +++ b/drivers/staging/rtl8192u/r8192U_dm.c
>       > > @@ -1451,7 +1451,7 @@ static void
>       dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool
>       �bInCH
>       > >
>       > > �����������������rtl8192_setBBreg(dev, rCCK0_TxFilter1,
>       bMaskHWord, TempVal);
>       > > �����������������RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14,
>       reg 0x%x = 0x%x\n",
>       > > -������������������������rCCK0_TxFilter1, TempVal);
>       > > +������������������������ rCCK0_TxFilter1, TempVal);
>       > > �����������������/* Write 0xa24 ~ 0xa27 */
>       > > �����������������TempVal
>       =��������CCKSwingTable_Ch14[priv->CCK_index][2] +
>       >
>       > Since you will be sending this series again, maybe you could
>       add another
>       > patch in the series to remove these big spaces between the =
>       and the array
>       > reference. �I wonder if it is tab that should be a space, but
>       I'm not sure
>       > because the next line seems to be aligned according to this
>       big distance.
>
>       Oh well, it seems that you sent the new seris again already :)
>
>
> I missed your review. Should I correct and send them again? I would like to
> know.

It would be nice to do at some point, but perhaps get the current series
of patches accepted first.

julia

>
> Thank you Sanjana�
>
>       julia
>
>       >
>       > julia
>       >
>       > >�����������������������������������������(CCKSwingTable_Ch14[priv->CCK_inde
>       x][3]<<8) +
>       > > @@ -1459,14 +1459,14 @@ static void
>       dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool
>       �bInCH
>       > >�����������������������������������������(CCKSwingTable_Ch14[priv->CCK_inde
>       x][5]<<24);
>       > > �����������������rtl8192_setBBreg(dev, rCCK0_TxFilter2,
>       bMaskDWord, TempVal);
>       > > �����������������RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14,
>       reg 0x%x = 0x%x\n",
>       > > -������������������������rCCK0_TxFilter2, TempVal);
>       > > +������������������������ rCCK0_TxFilter2, TempVal);
>       > > �����������������/* Write 0xa28 �0xa29 */
>       > > �����������������TempVal
>       =��������CCKSwingTable_Ch14[priv->CCK_index][6] +
>       > >�����������������������������������������(CCKSwingTable_Ch14[priv->CCK_inde
>       x][7]<<8);
>       > >
>       > > �����������������rtl8192_setBBreg(dev, rCCK0_DebugPort,
>       bMaskLWord, TempVal);
>       > > �����������������RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14,
>       reg 0x%x = 0x%x\n",
>       > > -������������������������rCCK0_DebugPort, TempVal);
>       > > +������������������������ rCCK0_DebugPort, TempVal);
>       > > ���������}
>       > > �}
>       > >
>       > > @@ -1517,7 +1517,7 @@ void
>       dm_restore_dynamic_mechanism_state(struct net_device *dev)
>       > > �����������������return;
>       > > ���������/* TODO: Only 11n mode is implemented currently, */
>       > > ���������if (!(priv->ieee80211->mode == WIRELESS_MODE_N_24G
>       ||
>       > > -����������������priv->ieee80211->mode ==
>       WIRELESS_MODE_N_5G))
>       > > +�������� � � �priv->ieee80211->mode == WIRELESS_MODE_N_5G))
>       > > �����������������return;
>       > >
>       > > ���������{
>       > > @@ -1748,7 +1748,7 @@ static void
>       dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
>       > >
>       > > ���������/* For smooth, we can not change DIG state. */
>       > > ���������if ((priv->undecorated_smoothed_pwdb >
>       dm_digtable.rssi_low_thresh) &&
>       > > -����������������(priv->undecorated_smoothed_pwdb <
>       dm_digtable.rssi_high_thresh))
>       > > +�������� � �(priv->undecorated_smoothed_pwdb <
>       dm_digtable.rssi_high_thresh))
>       > > �����������������return;
>       > >
>       > > ���������/*DbgPrint("Dig by Fw False Alarm\n");*/
>       > > @@ -1811,7 +1811,7 @@ static void
>       dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
>       > > �����������������u8 reset_flag = 0;
>       > >
>       > > �����������������if (dm_digtable.dig_state == DM_STA_DIG_ON
>       &&
>       > > -������������������������(priv->reset_count == reset_cnt)) {
>       > > +���������������� � �(priv->reset_count == reset_cnt)) {
>       > >
>       �������������������������dm_ctrl_initgain_byrssi_highpwr(dev);
>       > > �������������������������return;
>       > > �����������������}
>       > > @@ -1909,7 +1909,7 @@ static void
>       dm_ctrl_initgain_byrssi_highpwr(
>       > > ��������� */
>       > > ���������if (priv->undecorated_smoothed_pwdb >=
>       dm_digtable.rssi_high_power_highthresh) {
>       > > �����������������if (dm_digtable.dig_highpwr_state ==
>       DM_STA_DIG_ON &&
>       > > -������������������������(priv->reset_count ==
>       reset_cnt_highpwr))
>       > > +���������������� � �(priv->reset_count ==
>       reset_cnt_highpwr))
>       > > �������������������������return;
>       > > �����������������dm_digtable.dig_highpwr_state =
>       DM_STA_DIG_ON;
>       > >
>       > > @@ -1925,7 +1925,7 @@ static void
>       dm_ctrl_initgain_byrssi_highpwr(
>       > > �������������������������write_nic_byte(dev,
>       rOFDM0_RxDetector1, 0x43);
>       > > ���������} else {
>       > > �����������������if (dm_digtable.dig_highpwr_state ==
>       DM_STA_DIG_OFF &&
>       > > -������������������������(priv->reset_count ==
>       reset_cnt_highpwr))
>       > > +���������������� � �(priv->reset_count ==
>       reset_cnt_highpwr))
>       > > �������������������������return;
>       > > �����������������dm_digtable.dig_highpwr_state =
>       DM_STA_DIG_OFF;
>       > >
>       > > @@ -2126,7 +2126,7 @@ static��������void dm_cs_ratio(
>       > >
>       > > ���������{
>       > > �����������������if ((dm_digtable.precs_ratio_state !=
>       dm_digtable.curcs_ratio_state) ||
>       > > -������������������������!initialized || force_write) {
>       > > +���������������� � �!initialized || force_write) {
>       > > �������������������������/*DbgPrint("Write CS_ratio state =
>       %d\n", DM_DigTable.CurCS_ratioState);*/
>       > > �������������������������if (dm_digtable.curcs_ratio_state
>       == DIG_CS_RATIO_LOWER) {
>       > > ���������������������������������/* �Lower CS ratio for CCK.
>       */
>       > > @@ -2643,7 +2643,7 @@ void dm_fsync_timer_callback(struct
>       timer_list *t)
>       > > ���������bool����������������bDoubleTimeInterval = false;
>       > >
>       > > ���������if (priv->ieee80211->state == IEEE80211_LINKED &&
>       > > -����������������priv->ieee80211->bfsync_enable &&
>       > > +�������� � �priv->ieee80211->bfsync_enable &&
>       > > �����������������(priv->ieee80211->pHTInfo->IOTAction &
>       HT_IOT_ACT_CDD_FSYNC)) {
>       > > �����������������/* Count rate 54, MCS [7], [12, 13, 14, 15]
>       */
>       > > �����������������u32 rate_bitmap;
>       > > --
>       > > 2.17.1
>       > >
>       > > --
>       > > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > > To unsubscribe from this group and stop receiving emails
>       from it, send an email to outreachy-kern...@googlegroups.com.
>       > > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190319141806.8592-1-sa
>       njana99reddy99%40gmail.com.
>       > > For more options, visit https://groups.google.com/d/optout.
>       > >
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.19031915
>       30000.8263%40hadrien.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6e31cf7e-174d-4d81-b119-
> cb6498244ea3%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_2175_1700542104.1553006186555--

