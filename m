X-GM-THRID: 6464167912849539072
X-Received: by 10.25.162.201 with SMTP id l192mr835955lfe.39.1505131922000;
        Mon, 11 Sep 2017 05:12:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.84 with SMTP id a81ls259954ljb.37.gmail; Mon, 11 Sep
 2017 05:12:00 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5/m8JdRxgN7OURiuLGgxyEKpLppbHPkEYFSTJqOObMcYgym3YtocyzpWhrvvHqboO8bk9m
X-Received: by 10.46.99.1 with SMTP id x1mr292659ljb.11.1505131920436;
        Mon, 11 Sep 2017 05:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505131920; cv=none;
        d=google.com; s=arc-20160816;
        b=cjDmYvVfNktbPee+BHm3XrNvjAOb+Py4ujWf4kPswK3dh1w+ZadxbIfO58i8Bnfbw5
         3lOjLfB1gtO9kNgDRif7ZwIWFZWItCqasELdtaOgVlVkipLdamt6ed6U/BYUiF3ickry
         8h8un8wjer+JBkb+C7XlrmcZpyMPs8mckuYdDOXQHb3tXI2YObE6QIS1aSIa4xKg1pxD
         9yXeegJNPbZVqAvmYkulC+PjurBEw/uZsBCPJmYaVfMUl5faADSAgl/VZH0OBWqWLZrR
         hVsNxrfv88zUDCEFixuyP2hB9ta+Wf2saug5yUJzt7jQWYARGM+hyFG/YF0BohzsokgL
         zI3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=5tDj6j5yNtvdz9uFs/Lrma4QVKmtaZr9gCluDbpgDE4=;
        b=HjTd1mC/I3s4c9pyHr2Q0/Umh5sclNq4pC+hdypPiPXZIF6pdfCySwWKCnaHCOo/ic
         5W+lpP8wHDSB6CUONIxMcIryLcnCAY+yELPjG08Yp7kjHRxtJbhmzNDmrB3UP9vzPRVA
         bwnMEW2mq9u90RiHIKZxLHoYKMR+Jqau8unv87vYsF+E6XrI2yIDy72HKL/J8q9r56DV
         V+vsE293bz4+LmJltLZV4S53zP9JYUKSky4J1mYG/HQ/GEVAFn5pCkzFHfKHDEDU0CSn
         ZYrqMjCsntfgVfkV6KlqBw8ChZlUDf3UxOU7CBfu7wT552FFh5nbPX62lrLFm8n6Gpn2
         HPRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b62si344032wmd.3.2017.09.11.05.12.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 05:12:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,377,1500933600"; 
   d="scan'208";a="290487717"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 14:11:59 +0200
Date: Mon, 11 Sep 2017 14:11:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 05/10] staging: rtl8723bs: Add space
 between concatenated strings
In-Reply-To: <331e385f-53e0-486d-9457-3afe47e26240@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709111410160.6947@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <86078625c574018711c48bf66ebb5f62d540ac79.1505052882.git.harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1709111309200.6947@hadrien> <331e385f-53e0-486d-9457-3afe47e26240@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_14584_1200093576.1505130242277"

------=_Part_14584_1200093576.1505130242277
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Mon, 11 Sep 2017, Harsha Sharma wrote:

>
>
> On Monday, September 11, 2017 at 4:40:30 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Sun, 10 Sep 2017, Harsha Sharma wrote:
>
>       > Use spaces between concatenated strings
>
>       Perhaps all the entry/exit ones could be dropped, and the ohters
>       could be
>       rewritten to use more standard kernel debugging functionalities.
>
>       julia
>
> Hi,
> Sorry but I didn't get you.
> Thanks a lot for your time.

There are functions like dev_dbg that are used many other places in the
kernel.  This driver defines its own macros for printing debugging
messages.

julia

>
> Regards,
> Harsha Sharma�
>
>       >
>       > Signed-off-by: Harsha Sharma <harshash...@gmail.com>
>       > ---
>       > �drivers/staging/rtl8723bs/os_dep/os_intfs.c | 50
>       ++++++++++++++---------------
>       > �1 file changed, 25 insertions(+), 25 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       > index 97ff3ab..b320df8 100644
>       > --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       > +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       > @@ -467,7 +467,7 @@ static int rtw_ndev_notifier_call(struct
>       notifier_block * nb, unsigned long stat
>       > ���������if (dev->netdev_ops->ndo_do_ioctl != rtw_ioctl)
>       > �����������������return NOTIFY_DONE;
>       >
>       > -��������DBG_871X_LEVEL(_drv_info_, FUNC_NDEV_FMT"
>       state:%lu\n", FUNC_NDEV_ARG(dev), state);
>       > +��������DBG_871X_LEVEL(_drv_info_, FUNC_NDEV_FMT "
>       state:%lu\n", FUNC_NDEV_ARG(dev), state);
>       >
>       > ���������switch (state) {
>       > ���������case NETDEV_CHANGENAME:
>       > @@ -497,7 +497,7 @@ static int rtw_ndev_init(struct net_device
>       *dev)
>       > �{
>       > ���������struct adapter *adapter = rtw_netdev_priv(dev);
>       >
>       > -��������DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT"\n",
>       FUNC_ADPT_ARG(adapter));
>       > +��������DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT "\n",
>       FUNC_ADPT_ARG(adapter));
>       > ���������strncpy(adapter->old_ifname, dev->name, IFNAMSIZ);
>       > ���������rtw_adapter_proc_init(dev);
>       >
>       > @@ -508,7 +508,7 @@ static void rtw_ndev_uninit(struct
>       net_device *dev)
>       > �{
>       > ���������struct adapter *adapter = rtw_netdev_priv(dev);
>       >
>       > -��������DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT"\n",
>       FUNC_ADPT_ARG(adapter));
>       > +��������DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT "\n",
>       FUNC_ADPT_ARG(adapter));
>       > ���������rtw_adapter_proc_deinit(dev);
>       > �}
>       >
>       > @@ -984,7 +984,7 @@ int _netdev_open(struct net_device
>       *pnetdev)
>       > �������������������������goto netdev_open_error;
>       > �����������������}
>       >
>       > -����������������DBG_871X("MAC Address = "MAC_FMT"\n",
>       MAC_ARG(pnetdev->dev_addr));
>       > +����������������DBG_871X("MAC Address = " MAC_FMT "\n",
>       MAC_ARG(pnetdev->dev_addr));
>       >
>       > �����������������status = rtw_start_drv_threads(padapter);
>       > �����������������if (status == _FAIL) {
>       > @@ -1203,7 +1203,7 @@ static int netdev_close(struct
>       net_device *pnetdev)
>       >
>       > �void rtw_ndev_destructor(struct net_device *ndev)
>       > �{
>       > -��������DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
>       > +��������DBG_871X(FUNC_NDEV_FMT "\n", FUNC_NDEV_ARG(ndev));
>       >
>       > ���������if (ndev->ieee80211_ptr)
>       > �����������������kfree((u8 *)ndev->ieee80211_ptr);
>       > @@ -1292,7 +1292,7 @@ static int
>       rtw_suspend_free_assoc_resource(struct adapter *padapter)
>       > �{
>       > ���������struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>       >
>       > -��������DBG_871X("==> "FUNC_ADPT_FMT" entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("==> " FUNC_ADPT_FMT " entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       >
>       > ���������if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME))
>       {
>       > �����������������if (check_fwstate(pmlmepriv,
>       WIFI_STATION_STATE)
>       > @@ -1333,7 +1333,7 @@ static int
>       rtw_suspend_free_assoc_resource(struct adapter *padapter)
>       > �����������������rtw_indicate_disconnect(padapter);
>       > ���������}
>       >
>       > -��������DBG_871X("<== "FUNC_ADPT_FMT" exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("<== " FUNC_ADPT_FMT " exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������return _SUCCESS;
>       > �}
>       >
>       > @@ -1347,7 +1347,7 @@ int rtw_suspend_wow(struct adapter
>       *padapter)
>       > ���������struct wowlan_ioctl_param poidparam;
>       > ���������int ret = _SUCCESS;
>       >
>       > -��������DBG_871X("==> "FUNC_ADPT_FMT" entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("==> " FUNC_ADPT_FMT " entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       >
>       >
>       > ���������DBG_871X("wowlan_mode: %d\n", pwrpriv->wowlan_mode);
>       > @@ -1401,7 +1401,7 @@ int rtw_suspend_wow(struct adapter
>       *padapter)
>       > �����������������}
>       >
>       > �����������������if (rtw_get_ch_setting_union(padapter, &ch,
>       &bw, &offset) != 0) {
>       > -������������������������DBG_871X(FUNC_ADPT_FMT" back to
>       linked/linking union - ch:%u, bw:%u, offset:%u\n",
>       > +������������������������DBG_871X(FUNC_ADPT_FMT " back to
>       linked/linking union - ch:%u, bw:%u, offset:%u\n",
>       > ���������������������������������FUNC_ADPT_ARG(padapter), ch,
>       bw, offset);
>       > �������������������������set_channel_bwmode(padapter, ch,
>       offset, bw);
>       > �����������������}
>       > @@ -1416,7 +1416,7 @@ int rtw_suspend_wow(struct adapter
>       *padapter)
>       > ���������{
>       > �����������������DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR
>       ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
>       > ���������}
>       > -��������DBG_871X("<== "FUNC_ADPT_FMT" exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("<== " FUNC_ADPT_FMT " exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������return ret;
>       > �}
>       > �#endif /* ifdef CONFIG_WOWLAN */
>       > @@ -1430,7 +1430,7 @@ int rtw_suspend_ap_wow(struct adapter
>       *padapter)
>       > ���������struct wowlan_ioctl_param poidparam;
>       > ���������int ret = _SUCCESS;
>       >
>       > -��������DBG_871X("==> "FUNC_ADPT_FMT" entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("==> " FUNC_ADPT_FMT " entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       >
>       > ���������pwrpriv->wowlan_ap_mode = true;
>       >
>       > @@ -1462,14 +1462,14 @@ int rtw_suspend_ap_wow(struct adapter
>       *padapter)
>       > ���������DBG_871X_LEVEL(_drv_always_, "%s: wowmode
>       suspending\n", __func__);
>       >
>       > ���������if (rtw_get_ch_setting_union(padapter, &ch, &bw,
>       &offset) != 0) {
>       > -����������������DBG_871X(FUNC_ADPT_FMT" back to
>       linked/linking union - ch:%u, bw:%u, offset:%u\n",
>       > +����������������DBG_871X(FUNC_ADPT_FMT " back to
>       linked/linking union - ch:%u, bw:%u, offset:%u\n",
>       > ������������������������� FUNC_ADPT_ARG(padapter), ch, bw,
>       offset);
>       > �����������������set_channel_bwmode(padapter, ch, offset, bw);
>       > ���������}
>       >
>       > ���������rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, 0,
>       "AP-WOWLAN");
>       >
>       > -��������DBG_871X("<== "FUNC_ADPT_FMT" exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("<== " FUNC_ADPT_FMT " exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������return ret;
>       > �}
>       > �#endif /* ifdef CONFIG_AP_WOWLAN */
>       > @@ -1480,7 +1480,7 @@ static int rtw_suspend_normal(struct
>       adapter *padapter)
>       > ���������struct net_device *pnetdev = padapter->pnetdev;
>       > ���������int ret = _SUCCESS;
>       >
>       > -��������DBG_871X("==> "FUNC_ADPT_FMT" entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("==> " FUNC_ADPT_FMT " entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������if (pnetdev) {
>       > �����������������netif_carrier_off(pnetdev);
>       > �����������������rtw_netif_stop_queue(pnetdev);
>       > @@ -1501,7 +1501,7 @@ static int rtw_suspend_normal(struct
>       adapter *padapter)
>       > ���������if (padapter->intf_deinit)
>       >
>       �����������������padapter->intf_deinit(adapter_to_dvobj(padapter));
>       >
>       > -��������DBG_871X("<== "FUNC_ADPT_FMT" exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("<== " FUNC_ADPT_FMT " exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������return ret;
>       > �}
>       >
>       > @@ -1599,7 +1599,7 @@ int rtw_resume_process_wow(struct
>       adapter *padapter)
>       > ���������struct sta_info *psta = NULL;
>       > ���������int ret = _SUCCESS;
>       >
>       > -��������DBG_871X("==> "FUNC_ADPT_FMT" entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("==> " FUNC_ADPT_FMT " entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       >
>       > ���������if (padapter) {
>       > �����������������pnetdev = padapter->pnetdev;
>       > @@ -1710,7 +1710,7 @@ int rtw_resume_process_wow(struct
>       adapter *padapter)
>       > ���������/* clean driver side wake up reason. */
>       > ���������pwrpriv->wowlan_wake_reason = 0;
>       > �exit:
>       > -��������DBG_871X("<== "FUNC_ADPT_FMT" exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("<== " FUNC_ADPT_FMT " exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������return ret;
>       > �}
>       > �#endif /* ifdef CONFIG_WOWLAN */
>       > @@ -1725,7 +1725,7 @@ int rtw_resume_process_ap_wow(struct
>       adapter *padapter)
>       > ���������struct wowlan_ioctl_param poidparam;
>       > ���������int ret = _SUCCESS;
>       >
>       > -��������DBG_871X("==> "FUNC_ADPT_FMT" entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("==> " FUNC_ADPT_FMT " entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       >
>       > ���������if (padapter) {
>       > �����������������pnetdev = padapter->pnetdev;
>       > @@ -1785,7 +1785,7 @@ int rtw_resume_process_ap_wow(struct
>       adapter *padapter)
>       > ���������/* clean driver side wake up reason. */
>       > ���������pwrpriv->wowlan_wake_reason = 0;
>       > �exit:
>       > -��������DBG_871X("<== "FUNC_ADPT_FMT" exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("<== " FUNC_ADPT_FMT " exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������return ret;
>       > �}
>       > �#endif /* ifdef CONFIG_APWOWLAN */
>       > @@ -1811,7 +1811,7 @@ static int
>       rtw_resume_process_normal(struct adapter *padapter)
>       > ���������psdpriv = padapter->dvobj;
>       > ���������pdbgpriv = &psdpriv->drv_dbg;
>       >
>       > -��������DBG_871X("==> "FUNC_ADPT_FMT" entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("==> " FUNC_ADPT_FMT " entry....\n",
>       FUNC_ADPT_ARG(padapter));
>       > ���������/* �interface init */
>       > ���������/* if (sdio_init(adapter_to_dvobj(padapter)) !=
>       _SUCCESS) */
>       > ���������if ((padapter->intf_init) &&
>       (padapter->intf_init(adapter_to_dvobj(padapter)) != _SUCCESS))
>       > @@ -1849,21 +1849,21 @@ static int
>       rtw_resume_process_normal(struct adapter *padapter)
>       >
>       >
>       > ���������if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
>       > -����������������DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x -
>       WIFI_STATION_STATE\n", FUNC_ADPT_ARG(padapter),
>       get_fwstate(pmlmepriv));
>       > +����������������DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x -
>       WIFI_STATION_STATE\n", FUNC_ADPT_ARG(padapter),
>       get_fwstate(pmlmepriv));
>       >
>       > �����������������if (rtw_chk_roam_flags(padapter,
>       RTW_ROAM_ON_RESUME))
>       > �������������������������rtw_roaming(padapter, NULL);
>       >
>       > ���������} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
>       > -����������������DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x -
>       WIFI_AP_STATE\n", FUNC_ADPT_ARG(padapter),
>       get_fwstate(pmlmepriv));
>       > +����������������DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x -
>       WIFI_AP_STATE\n", FUNC_ADPT_ARG(padapter),
>       get_fwstate(pmlmepriv));
>       > �����������������rtw_ap_restore_network(padapter);
>       > ���������} else if (check_fwstate(pmlmepriv,
>       WIFI_ADHOC_STATE)) {
>       > -����������������DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x -
>       WIFI_ADHOC_STATE\n", FUNC_ADPT_ARG(padapter),
>       get_fwstate(pmlmepriv));
>       > +����������������DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x -
>       WIFI_ADHOC_STATE\n", FUNC_ADPT_ARG(padapter),
>       get_fwstate(pmlmepriv));
>       > ���������} else {
>       > -����������������DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x -
>       ???\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
>       > +����������������DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x -
>       ???\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
>       > ���������}
>       >
>       > -��������DBG_871X("<== "FUNC_ADPT_FMT" exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       > +��������DBG_871X("<== " FUNC_ADPT_FMT " exit....\n",
>       FUNC_ADPT_ARG(padapter));
>       >
>       > �exit:
>       > ���������return ret;
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/86078625c574018711c48bf6
>       6ebb5f62d540ac79.1505052882.git.harshasharmaiitr%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/331e385f-53e0-486d-9457-
> 3afe47e26240%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_14584_1200093576.1505130242277--

