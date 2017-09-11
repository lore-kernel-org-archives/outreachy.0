X-GM-THRID: 6464167912849539072
Date: Mon, 11 Sep 2017 04:44:02 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <331e385f-53e0-486d-9457-3afe47e26240@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1709111309200.6947@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <86078625c574018711c48bf66ebb5f62d540ac79.1505052882.git.harshasharmaiitr@gmail.com>
 <alpine.DEB.2.20.1709111309200.6947@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 05/10] staging: rtl8723bs: Add space
 between concatenated strings
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_14584_1200093576.1505130242277"
X-Google-Token: EILu2c0FiwCBTGB8o3I0
X-Google-IP: 103.37.201.27

------=_Part_14584_1200093576.1505130242277
Content-Type: multipart/alternative; 
	boundary="----=_Part_14585_885053350.1505130242278"

------=_Part_14585_885053350.1505130242278
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, September 11, 2017 at 4:40:30 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 10 Sep 2017, Harsha Sharma wrote: 
>
> > Use spaces between concatenated strings 
>
> Perhaps all the entry/exit ones could be dropped, and the ohters could be 
> rewritten to use more standard kernel debugging functionalities. 
>
> julia 
>
Hi,
Sorry but I didn't get you.
Thanks a lot for your time.

Regards,
Harsha Sharma 

>
> > 
> > Signed-off-by: Harsha Sharma <harshash...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 50 
> ++++++++++++++--------------- 
> >  1 file changed, 25 insertions(+), 25 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> b/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> > index 97ff3ab..b320df8 100644 
> > --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> > +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> > @@ -467,7 +467,7 @@ static int rtw_ndev_notifier_call(struct 
> notifier_block * nb, unsigned long stat 
> >          if (dev->netdev_ops->ndo_do_ioctl != rtw_ioctl) 
> >                  return NOTIFY_DONE; 
> > 
> > -        DBG_871X_LEVEL(_drv_info_, FUNC_NDEV_FMT" state:%lu\n", 
> FUNC_NDEV_ARG(dev), state); 
> > +        DBG_871X_LEVEL(_drv_info_, FUNC_NDEV_FMT " state:%lu\n", 
> FUNC_NDEV_ARG(dev), state); 
> > 
> >          switch (state) { 
> >          case NETDEV_CHANGENAME: 
> > @@ -497,7 +497,7 @@ static int rtw_ndev_init(struct net_device *dev) 
> >  { 
> >          struct adapter *adapter = rtw_netdev_priv(dev); 
> > 
> > -        DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT"\n", 
> FUNC_ADPT_ARG(adapter)); 
> > +        DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT "\n", 
> FUNC_ADPT_ARG(adapter)); 
> >          strncpy(adapter->old_ifname, dev->name, IFNAMSIZ); 
> >          rtw_adapter_proc_init(dev); 
> > 
> > @@ -508,7 +508,7 @@ static void rtw_ndev_uninit(struct net_device *dev) 
> >  { 
> >          struct adapter *adapter = rtw_netdev_priv(dev); 
> > 
> > -        DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT"\n", 
> FUNC_ADPT_ARG(adapter)); 
> > +        DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT "\n", 
> FUNC_ADPT_ARG(adapter)); 
> >          rtw_adapter_proc_deinit(dev); 
> >  } 
> > 
> > @@ -984,7 +984,7 @@ int _netdev_open(struct net_device *pnetdev) 
> >                          goto netdev_open_error; 
> >                  } 
> > 
> > -                DBG_871X("MAC Address = "MAC_FMT"\n", 
> MAC_ARG(pnetdev->dev_addr)); 
> > +                DBG_871X("MAC Address = " MAC_FMT "\n", 
> MAC_ARG(pnetdev->dev_addr)); 
> > 
> >                  status = rtw_start_drv_threads(padapter); 
> >                  if (status == _FAIL) { 
> > @@ -1203,7 +1203,7 @@ static int netdev_close(struct net_device 
> *pnetdev) 
> > 
> >  void rtw_ndev_destructor(struct net_device *ndev) 
> >  { 
> > -        DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev)); 
> > +        DBG_871X(FUNC_NDEV_FMT "\n", FUNC_NDEV_ARG(ndev)); 
> > 
> >          if (ndev->ieee80211_ptr) 
> >                  kfree((u8 *)ndev->ieee80211_ptr); 
> > @@ -1292,7 +1292,7 @@ static int rtw_suspend_free_assoc_resource(struct 
> adapter *padapter) 
> >  { 
> >          struct mlme_priv *pmlmepriv = &padapter->mlmepriv; 
> > 
> > -        DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > 
> >          if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) { 
> >                  if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) 
> > @@ -1333,7 +1333,7 @@ static int rtw_suspend_free_assoc_resource(struct 
> adapter *padapter) 
> >                  rtw_indicate_disconnect(padapter); 
> >          } 
> > 
> > -        DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          return _SUCCESS; 
> >  } 
> > 
> > @@ -1347,7 +1347,7 @@ int rtw_suspend_wow(struct adapter *padapter) 
> >          struct wowlan_ioctl_param poidparam; 
> >          int ret = _SUCCESS; 
> > 
> > -        DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > 
> > 
> >          DBG_871X("wowlan_mode: %d\n", pwrpriv->wowlan_mode); 
> > @@ -1401,7 +1401,7 @@ int rtw_suspend_wow(struct adapter *padapter) 
> >                  } 
> > 
> >                  if (rtw_get_ch_setting_union(padapter, &ch, &bw, 
> &offset) != 0) { 
> > -                        DBG_871X(FUNC_ADPT_FMT" back to linked/linking 
> union - ch:%u, bw:%u, offset:%u\n", 
> > +                        DBG_871X(FUNC_ADPT_FMT " back to linked/linking 
> union - ch:%u, bw:%u, offset:%u\n", 
> >                                  FUNC_ADPT_ARG(padapter), ch, bw, 
> offset); 
> >                          set_channel_bwmode(padapter, ch, offset, bw); 
> >                  } 
> > @@ -1416,7 +1416,7 @@ int rtw_suspend_wow(struct adapter *padapter) 
> >          { 
> >                  DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### 
> wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode); 
> >          } 
> > -        DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          return ret; 
> >  } 
> >  #endif /* ifdef CONFIG_WOWLAN */ 
> > @@ -1430,7 +1430,7 @@ int rtw_suspend_ap_wow(struct adapter *padapter) 
> >          struct wowlan_ioctl_param poidparam; 
> >          int ret = _SUCCESS; 
> > 
> > -        DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > 
> >          pwrpriv->wowlan_ap_mode = true; 
> > 
> > @@ -1462,14 +1462,14 @@ int rtw_suspend_ap_wow(struct adapter *padapter) 
> >          DBG_871X_LEVEL(_drv_always_, "%s: wowmode suspending\n", 
> __func__); 
> > 
> >          if (rtw_get_ch_setting_union(padapter, &ch, &bw, &offset) != 0) 
> { 
> > -                DBG_871X(FUNC_ADPT_FMT" back to linked/linking union - 
> ch:%u, bw:%u, offset:%u\n", 
> > +                DBG_871X(FUNC_ADPT_FMT " back to linked/linking union - 
> ch:%u, bw:%u, offset:%u\n", 
> >                           FUNC_ADPT_ARG(padapter), ch, bw, offset); 
> >                  set_channel_bwmode(padapter, ch, offset, bw); 
> >          } 
> > 
> >          rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, 0, "AP-WOWLAN"); 
> > 
> > -        DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          return ret; 
> >  } 
> >  #endif /* ifdef CONFIG_AP_WOWLAN */ 
> > @@ -1480,7 +1480,7 @@ static int rtw_suspend_normal(struct adapter 
> *padapter) 
> >          struct net_device *pnetdev = padapter->pnetdev; 
> >          int ret = _SUCCESS; 
> > 
> > -        DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          if (pnetdev) { 
> >                  netif_carrier_off(pnetdev); 
> >                  rtw_netif_stop_queue(pnetdev); 
> > @@ -1501,7 +1501,7 @@ static int rtw_suspend_normal(struct adapter 
> *padapter) 
> >          if (padapter->intf_deinit) 
> >                  padapter->intf_deinit(adapter_to_dvobj(padapter)); 
> > 
> > -        DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          return ret; 
> >  } 
> > 
> > @@ -1599,7 +1599,7 @@ int rtw_resume_process_wow(struct adapter 
> *padapter) 
> >          struct sta_info *psta = NULL; 
> >          int ret = _SUCCESS; 
> > 
> > -        DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > 
> >          if (padapter) { 
> >                  pnetdev = padapter->pnetdev; 
> > @@ -1710,7 +1710,7 @@ int rtw_resume_process_wow(struct adapter 
> *padapter) 
> >          /* clean driver side wake up reason. */ 
> >          pwrpriv->wowlan_wake_reason = 0; 
> >  exit: 
> > -        DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          return ret; 
> >  } 
> >  #endif /* ifdef CONFIG_WOWLAN */ 
> > @@ -1725,7 +1725,7 @@ int rtw_resume_process_ap_wow(struct adapter 
> *padapter) 
> >          struct wowlan_ioctl_param poidparam; 
> >          int ret = _SUCCESS; 
> > 
> > -        DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > 
> >          if (padapter) { 
> >                  pnetdev = padapter->pnetdev; 
> > @@ -1785,7 +1785,7 @@ int rtw_resume_process_ap_wow(struct adapter 
> *padapter) 
> >          /* clean driver side wake up reason. */ 
> >          pwrpriv->wowlan_wake_reason = 0; 
> >  exit: 
> > -        DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          return ret; 
> >  } 
> >  #endif /* ifdef CONFIG_APWOWLAN */ 
> > @@ -1811,7 +1811,7 @@ static int rtw_resume_process_normal(struct 
> adapter *padapter) 
> >          psdpriv = padapter->dvobj; 
> >          pdbgpriv = &psdpriv->drv_dbg; 
> > 
> > -        DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", 
> FUNC_ADPT_ARG(padapter)); 
> >          /*  interface init */ 
> >          /* if (sdio_init(adapter_to_dvobj(padapter)) != _SUCCESS) */ 
> >          if ((padapter->intf_init) && 
> (padapter->intf_init(adapter_to_dvobj(padapter)) != _SUCCESS)) 
> > @@ -1849,21 +1849,21 @@ static int rtw_resume_process_normal(struct 
> adapter *padapter) 
> > 
> > 
> >          if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) { 
> > -                DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - 
> WIFI_STATION_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> > +                DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - 
> WIFI_STATION_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> > 
> >                  if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) 
> >                          rtw_roaming(padapter, NULL); 
> > 
> >          } else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) { 
> > -                DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - 
> WIFI_AP_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> > +                DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - 
> WIFI_AP_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> >                  rtw_ap_restore_network(padapter); 
> >          } else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) { 
> > -                DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - 
> WIFI_ADHOC_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> > +                DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - 
> WIFI_ADHOC_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> >          } else { 
> > -                DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - ???\n", 
> FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> > +                DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - ???\n", 
> FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv)); 
> >          } 
> > 
> > -        DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > +        DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", 
> FUNC_ADPT_ARG(padapter)); 
> > 
> >  exit: 
> >          return ret; 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/86078625c574018711c48bf66ebb5f62d540ac79.1505052882.git.harshasharmaiitr%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_14585_885053350.1505130242278
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, September 11, 2017 at 4:40:30 PM UTC+5:=
30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 10 Sep 2017, Harsha Sharma wrote:
<br>
<br>&gt; Use spaces between concatenated strings
<br>
<br>Perhaps all the entry/exit ones could be dropped, and the ohters could =
be
<br>rewritten to use more standard kernel debugging functionalities.
<br>
<br>julia
<br></blockquote><div>Hi,</div><div>Sorry but I didn&#39;t get you.</div><d=
iv>Thanks a lot for your time.</div><div><br></div><div>Regards,</div><div>=
Harsha Sharma=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt;
<br>&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"cDbN-e-qAwAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">harshash...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8723bs/os_<wbr>dep/os_intfs.c | 50 ++++++=
++++++++---------------
<br>&gt; =C2=A01 file changed, 25 insertions(+), 25 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c b/dr=
ivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c
<br>&gt; index 97ff3ab..b320df8 100644
<br>&gt; --- a/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c
<br>&gt; +++ b/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c
<br>&gt; @@ -467,7 +467,7 @@ static int rtw_ndev_notifier_call(struct notif=
ier_block * nb, unsigned long stat
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dev-&gt;=
netdev_ops-&gt;ndo_do_ioctl !=3D rtw_ioctl)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NOTIFY_DONE;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_LEVEL(_d=
rv_<wbr>info_, FUNC_NDEV_FMT&quot; state:%lu\n&quot;, FUNC_NDEV_ARG(dev), s=
tate);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_LEVEL(_d=
rv_<wbr>info_, FUNC_NDEV_FMT &quot; state:%lu\n&quot;, FUNC_NDEV_ARG(dev), =
state);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (stat=
e) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case NETDEV_=
CHANGENAME:
<br>&gt; @@ -497,7 +497,7 @@ static int rtw_ndev_init(struct net_device *de=
v)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct adapt=
er *adapter =3D rtw_netdev_priv(dev);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_LEVEL(_d=
rv_<wbr>always_, FUNC_ADPT_FMT&quot;\n&quot;, FUNC_ADPT_ARG(adapter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_LEVEL(_d=
rv_<wbr>always_, FUNC_ADPT_FMT &quot;\n&quot;, FUNC_ADPT_ARG(adapter));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0strncpy(adap=
ter-&gt;old_<wbr>ifname, dev-&gt;name, IFNAMSIZ);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_adapter_=
proc_<wbr>init(dev);
<br>&gt;
<br>&gt; @@ -508,7 +508,7 @@ static void rtw_ndev_uninit(struct net_device =
*dev)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct adapt=
er *adapter =3D rtw_netdev_priv(dev);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_LEVEL(_d=
rv_<wbr>always_, FUNC_ADPT_FMT&quot;\n&quot;, FUNC_ADPT_ARG(adapter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_LEVEL(_d=
rv_<wbr>always_, FUNC_ADPT_FMT &quot;\n&quot;, FUNC_ADPT_ARG(adapter));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_adapter_=
proc_<wbr>deinit(dev);
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; @@ -984,7 +984,7 @@ int _netdev_open(struct net_device *pnetdev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0goto netdev_open_error;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;MAC Address =3D &quot;MAC_F=
MT&quot;\n&quot;, MAC_ARG(pnetdev-&gt;dev_addr));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;MAC Address =3D &quot; MAC_=
FMT &quot;\n&quot;, MAC_ARG(pnetdev-&gt;dev_addr));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D rtw_start_drv_threads(<wbr>p=
adapter);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (status =3D=3D _FAIL) {
<br>&gt; @@ -1203,7 +1203,7 @@ static int netdev_close(struct net_device *p=
netdev)
<br>&gt;
<br>&gt; =C2=A0void rtw_ndev_destructor(struct net_device *ndev)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(FUNC_NDE=
V_<wbr>FMT&quot;\n&quot;, FUNC_NDEV_ARG(ndev));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(FUNC_NDE=
V_<wbr>FMT &quot;\n&quot;, FUNC_NDEV_ARG(ndev));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ndev-&gt=
;ieee80211_ptr)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree((u8 *)ndev-&gt;ieee80211_ptr);
<br>&gt; @@ -1292,7 +1292,7 @@ static int rtw_suspend_free_assoc_<wbr>resou=
rce(struct adapter *padapter)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mlme_=
priv *pmlmepriv =3D &amp;padapter-&gt;mlmepriv;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot;FUNC_ADPT_FMT&quot; entry....\n&quot;, FUNC_ADPT_ARG(padap=
ter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot; FUNC_ADPT_FMT &quot; entry....\n&quot;, FUNC_ADPT_ARG(pad=
apter));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rtw_chk_=
roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (check_fwstate(pmlmepriv, WIFI_STATI=
ON_STATE)
<br>&gt; @@ -1333,7 +1333,7 @@ static int rtw_suspend_free_assoc_<wbr>resou=
rce(struct adapter *padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_indicate_<wbr>disconnect(padapter);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot;FUNC_ADPT_FMT&quot; exit....\n&quot;, FUNC_ADPT_ARG(padapter=
));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot; FUNC_ADPT_FMT &quot; exit....\n&quot;, FUNC_ADPT_ARG(padapt=
er));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return _SUCC=
ESS;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; @@ -1347,7 +1347,7 @@ int rtw_suspend_wow(struct adapter *padapter=
)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct wowla=
n_ioctl_param poidparam;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret =3D =
_SUCCESS;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot;FUNC_ADPT_FMT&quot; entry....\n&quot;, FUNC_ADPT_ARG(padap=
ter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot; FUNC_ADPT_FMT &quot; entry....\n&quot;, FUNC_ADPT_ARG(pad=
apter));
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&qu=
ot;wowlan_<wbr>mode: %d\n&quot;, pwrpriv-&gt;wowlan_mode);
<br>&gt; @@ -1401,7 +1401,7 @@ int rtw_suspend_wow(struct adapter *padapter=
)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rtw_get_ch_setting_union(<wbr>padap=
ter, &amp;ch, &amp;bw, &amp;offset) !=3D 0) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0DBG_<wbr>871X(FUNC_ADPT_FMT&quot; back to linked/linking union - ch:%=
u, bw:%u, offset:%u\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0DBG_<wbr>871X(FUNC_ADPT_FMT &quot; back to linked/linking union - ch:=
%u, bw:%u, offset:%u\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0FUNC_ADPT_ARG=
(padapter), ch, bw, offset);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0set_<wbr>channel_bwmode(padapter, ch, offset, bw);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -1416,7 +1416,7 @@ int rtw_suspend_wow(struct adapter *padapter=
)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_<wbr>LEVEL(_drv_always_, &quot=
;%s: ### ERROR ### wowlan_mode =3D%d\n&quot;, __func__, pwrpriv-&gt;wowlan_=
mode);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot;FUNC_ADPT_FMT&quot; exit....\n&quot;, FUNC_ADPT_ARG(padapter=
));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot; FUNC_ADPT_FMT &quot; exit....\n&quot;, FUNC_ADPT_ARG(padapt=
er));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0#endif /* ifdef CONFIG_WOWLAN */
<br>&gt; @@ -1430,7 +1430,7 @@ int rtw_suspend_ap_wow(struct adapter *padap=
ter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct wowla=
n_ioctl_param poidparam;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret =3D =
_SUCCESS;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot;FUNC_ADPT_FMT&quot; entry....\n&quot;, FUNC_ADPT_ARG(padap=
ter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot; FUNC_ADPT_FMT &quot; entry....\n&quot;, FUNC_ADPT_ARG(pad=
apter));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pwrpriv-&gt;=
wowlan_ap_<wbr>mode =3D true;
<br>&gt;
<br>&gt; @@ -1462,14 +1462,14 @@ int rtw_suspend_ap_wow(struct adapter *pad=
apter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_LEV=
EL(_drv_<wbr>always_, &quot;%s: wowmode suspending\n&quot;, __func__);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rtw_get_=
ch_setting_union(<wbr>padapter, &amp;ch, &amp;bw, &amp;offset) !=3D 0) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT&quot; back to =
linked/linking union - ch:%u, bw:%u, offset:%u\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT &quot; back to=
 linked/linking union - ch:%u, bw:%u, offset:%u\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 FUNC_ADPT_ARG(padapter), ch, bw, offset);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0set_channel_<wbr>bwmode(padapter, ch, o=
ffset, bw);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_set_ps_m=
ode(<wbr>padapter, PS_MODE_MIN, 0, 0, &quot;AP-WOWLAN&quot;);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot;FUNC_ADPT_FMT&quot; exit....\n&quot;, FUNC_ADPT_ARG(padapter=
));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot; FUNC_ADPT_FMT &quot; exit....\n&quot;, FUNC_ADPT_ARG(padapt=
er));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0#endif /* ifdef CONFIG_AP_WOWLAN */
<br>&gt; @@ -1480,7 +1480,7 @@ static int rtw_suspend_normal(struct adapter=
 *padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct net_d=
evice *pnetdev =3D padapter-&gt;pnetdev;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret =3D =
_SUCCESS;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot;FUNC_ADPT_FMT&quot; entry....\n&quot;, FUNC_ADPT_ARG(padap=
ter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot; FUNC_ADPT_FMT &quot; entry....\n&quot;, FUNC_ADPT_ARG(pad=
apter));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pnetdev)=
 {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0netif_<wbr>carrier_off(pnetdev);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_netif_<wbr>stop_queue(pnetdev);
<br>&gt; @@ -1501,7 +1501,7 @@ static int rtw_suspend_normal(struct adapter=
 *padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (padapter=
-&gt;intf_deinit)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0padapter-&gt;<wbr>intf_deinit(adapter_t=
o_dvobj(<wbr>padapter));
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot;FUNC_ADPT_FMT&quot; exit....\n&quot;, FUNC_ADPT_ARG(padapter=
));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot; FUNC_ADPT_FMT &quot; exit....\n&quot;, FUNC_ADPT_ARG(padapt=
er));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; @@ -1599,7 +1599,7 @@ int rtw_resume_process_wow(struct adapter *p=
adapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sta_i=
nfo *psta =3D NULL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret =3D =
_SUCCESS;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot;FUNC_ADPT_FMT&quot; entry....\n&quot;, FUNC_ADPT_ARG(padap=
ter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot; FUNC_ADPT_FMT &quot; entry....\n&quot;, FUNC_ADPT_ARG(pad=
apter));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (padapter=
) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pnetdev =3D padapter-&gt;pnetdev;
<br>&gt; @@ -1710,7 +1710,7 @@ int rtw_resume_process_wow(struct adapter *p=
adapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* clean dri=
ver side wake up reason. */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pwrpriv-&gt;=
wowlan_wake_<wbr>reason =3D 0;
<br>&gt; =C2=A0exit:
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot;FUNC_ADPT_FMT&quot; exit....\n&quot;, FUNC_ADPT_ARG(padapter=
));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot; FUNC_ADPT_FMT &quot; exit....\n&quot;, FUNC_ADPT_ARG(padapt=
er));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0#endif /* ifdef CONFIG_WOWLAN */
<br>&gt; @@ -1725,7 +1725,7 @@ int rtw_resume_process_ap_wow(<wbr>struct ad=
apter *padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct wowla=
n_ioctl_param poidparam;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret =3D =
_SUCCESS;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot;FUNC_ADPT_FMT&quot; entry....\n&quot;, FUNC_ADPT_ARG(padap=
ter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot; FUNC_ADPT_FMT &quot; entry....\n&quot;, FUNC_ADPT_ARG(pad=
apter));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (padapter=
) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pnetdev =3D padapter-&gt;pnetdev;
<br>&gt; @@ -1785,7 +1785,7 @@ int rtw_resume_process_ap_wow(<wbr>struct ad=
apter *padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* clean dri=
ver side wake up reason. */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pwrpriv-&gt;=
wowlan_wake_<wbr>reason =3D 0;
<br>&gt; =C2=A0exit:
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot;FUNC_ADPT_FMT&quot; exit....\n&quot;, FUNC_ADPT_ARG(padapter=
));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot; FUNC_ADPT_FMT &quot; exit....\n&quot;, FUNC_ADPT_ARG(padapt=
er));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0#endif /* ifdef CONFIG_APWOWLAN */
<br>&gt; @@ -1811,7 +1811,7 @@ static int rtw_resume_process_normal(<wbr>st=
ruct adapter *padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psdpriv =3D =
padapter-&gt;dvobj;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pdbgpriv =3D=
 &amp;psdpriv-&gt;drv_dbg;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot;FUNC_ADPT_FMT&quot; entry....\n&quot;, FUNC_ADPT_ARG(padap=
ter));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;=
=3D=3D&gt; &quot; FUNC_ADPT_FMT &quot; entry....\n&quot;, FUNC_ADPT_ARG(pad=
apter));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* =C2=A0int=
erface init */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* if (sdio_=
init(adapter_to_dvobj(<wbr>padapter)) !=3D _SUCCESS) */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((padapte=
r-&gt;intf_init) &amp;&amp; (padapter-&gt;intf_init(adapter_<wbr>to_dvobj(p=
adapter)) !=3D _SUCCESS))
<br>&gt; @@ -1849,21 +1849,21 @@ static int rtw_resume_process_normal(<wbr>=
struct adapter *padapter)
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (check_fw=
state(pmlmepriv, WIFI_STATION_STATE)) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT&quot; fwstate:=
0x%08x - WIFI_STATION_STATE\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(p=
mlmepriv));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT &quot; fwstate=
:0x%08x - WIFI_STATION_STATE\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(=
pmlmepriv));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rtw_chk_roam_flags(padapter, RTW_RO=
AM_ON_RESUME))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0rtw_<wbr>roaming(padapter, NULL);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (c=
heck_fwstate(pmlmepriv, WIFI_AP_STATE)) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT&quot; fwstate:=
0x%08x - WIFI_AP_STATE\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(pmlmep=
riv));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT &quot; fwstate=
:0x%08x - WIFI_AP_STATE\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(pmlme=
priv));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_ap_<wbr>restore_network(padapter);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (c=
heck_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT&quot; fwstate:=
0x%08x - WIFI_ADHOC_STATE\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(pml=
mepriv));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT &quot; fwstate=
:0x%08x - WIFI_ADHOC_STATE\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(pm=
lmepriv));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT&quot; fwstate:=
0x%08x - ???\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_ADPT_FMT &quot; fwstate=
:0x%08x - ???\n&quot;, FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot;FUNC_ADPT_FMT&quot; exit....\n&quot;, FUNC_ADPT_ARG(padapter=
));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;&l=
t;=3D=3D &quot; FUNC_ADPT_FMT &quot; exit....\n&quot;, FUNC_ADPT_ARG(padapt=
er));
<br>&gt;
<br>&gt; =C2=A0exit:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"cDbN-e-qAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"cDbN-e-qAwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/86078625c574018711c48bf66ebb5f62d540ac=
79.1505052882.git.harshasharmaiitr%40gmail.com" target=3D"_blank" rel=3D"no=
follow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/o=
utreachy-kernel/86078625c574018711c48bf66ebb5f62d540ac79.1505052882.git.har=
shasharmaiitr%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tps://groups.google.com/d/msgid/outreachy-kernel/86078625c574018711c48bf66e=
bb5f62d540ac79.1505052882.git.harshasharmaiitr%40gmail.com&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>86078625c57=
4018711c48bf66ebb5f<wbr>62d540ac79.1505052882.git.<wbr>harshasharmaiitr%40g=
mail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_14585_885053350.1505130242278--

------=_Part_14584_1200093576.1505130242277--

