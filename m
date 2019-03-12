X-GM-THRID: 6666450306579038208
X-Received: by 2002:a5d:55d0:: with SMTP id i16mr231596wrw.2.1552410434648;
        Tue, 12 Mar 2019 10:07:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc03:: with SMTP id f3ls464247wmh.3.canary-gmail; Tue,
 12 Mar 2019 10:07:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywnkuhP4+gauJ46ifz/gNEY5LPCScnQZDEo/wMNyMuHFOTiCoxFxA2Gcuv95cOk2wLrs/v
X-Received: by 2002:a1c:be10:: with SMTP id o16mr348911wmf.24.1552410433523;
        Tue, 12 Mar 2019 10:07:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552410433; cv=none;
        d=google.com; s=arc-20160816;
        b=Yvc5xSYuzpIllb9ys7K2RIgl0EpxTW4gevfMMxFXDEdinvVTQpfKKiOX9iW2C1qDRz
         X23npuyLHZ+8CMuatJBoPZP6Xh2inazBlHSl01KoB7Y+0eGb/a9NC9hrQ3suiygIvxz5
         9v/UsqD8z9kJxg0I5wPP1P2/qHme5m5TpIXGPPzved/miRcXbWDRHYglOEtiyUW3R9uA
         PVfAKDGwvnGrnL+xfza3oR8E3UuJzZKkHGqzk8oa0Ah3ahxjId3L7PalQRQWUH/ms8L8
         DYTNQVC8VpLCogn4B7BqTScw7NZ4pekcs+nRvlTouI4jYWMy+5by0HZPUM2gpoib2OZw
         CZGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A6Jc29M86rlt6OcmkaNXWNfEXMv8k2TH/WNIly1qfjg=;
        b=NFjVUBIlooweBLwnQyJl+ni/3nZSYHgUcb8jWUFVWGtBUefp8Cuih2k6Mjl3ONlcR1
         AVRHHcadDEp48kow1B/uS8VDNemuUEcV1zZeyP/1rkwwVY2jrufyVbgTCf4gq3NUkC0/
         C0v/nwhnZ0fN68XWGheS9bMz2WutdjYZwrBcaHn0BVnaegpqT4j48jRTZoCwRsJ0TD+w
         +oXy/gJ38OlgWQwY8Zn/2Jb8jWIwdJ4yVHHtY0JFwIEDr9l7+WLaJn6D99BM96yQi8Ch
         5RnVCNM4omnn/FMSi4Y4xF9gZwdlmQMFIQ2E/BJKmDNq/R4+PKaNEGxP7KIJLJOTrW0G
         kJPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G2tXpWG7;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id q192si127473wme.3.2019.03.12.10.07.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 10:07:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G2tXpWG7;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id p27so2956027edc.6
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 10:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A6Jc29M86rlt6OcmkaNXWNfEXMv8k2TH/WNIly1qfjg=;
        b=G2tXpWG74kyihPW66x/LmdCIYdddV4gLGiBxDDKnn51AkZPEgqR5VZybAPPnYOpmgW
         xhHHqj15hy4UtIr/D1iKxw0mxnMpc4dRG/zbj7/0XLuEgpw30txvE9GGRvxRLzF4uJNr
         WfICqPxWt6ZfLWNUaUakG5PgLNLiTEZkU+QL3OEboqVOcPHgdAPSjfITh9qHv5mj43UG
         HxHRF+jso4+NHe1pvTTWmAoqwrIjouj8wp7oVL/v+EIlotbALt2Pj/GDPh8dbL2t0swc
         eX7hgjp4FNbHi64rUgVl36laKo4N4ZVviPf1zi+ZPg8fv33YpOe3+0t6E3dVBYU6kkLs
         nz7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A6Jc29M86rlt6OcmkaNXWNfEXMv8k2TH/WNIly1qfjg=;
        b=pugRmO85RjpNDeLPCSPkwpARNZdDyqWeaT7TTS/FmPDYXZxc7KM1UA44RCo960rXld
         ldgAoKmXZqGBY4TJVU1bRSwuHbViCp/u3E9/Qdp1vkhqorO2fpUNLWVMhxaTK+OMxm+v
         SBnqxM0qB15QcIJ4YUL6j3moa3yrcQPzNcP0gG7kXqqiYDpFxWweDarfqvtXXBbHzkcQ
         nHgwAJytln6qsjJ7HjO3WIdQHZUNIBC0J0IkDL0fcNm4kqEjYqq1Z7kkBY0suQTlVqx8
         EqkwhLxqGBVsU2kifTclAfn7mG2An/sngSu48omsqBZ8HZZJwzWKkYbPHGFCAstIaYwm
         W25Q==
X-Gm-Message-State: APjAAAWhilky3lUoHXhPfFOr7oU4BJoV3TKZXiov+teNZO5G7oGgcJ/Z
	UQVoG1Eayna+bOc1qyNwKH2WcjP9aTN8KikTFLc=
X-Received: by 2002:a17:906:7210:: with SMTP id m16mr27004339ejk.171.1552410432793;
 Tue, 12 Mar 2019 10:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <1552408996-9962-1-git-send-email-digholebhagyashri@gmail.com> <alpine.DEB.2.20.1903121759300.4097@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903121759300.4097@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Tue, 12 Mar 2019 22:36:34 +0530
Message-ID: <CAOMPgjjfbAy5KnBhrd+KnYuv4=V2wYCae629bJ9686XuEa3rmA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Comparison to NULL.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000006472e10583e8b8a9"

--0000000000006472e10583e8b8a9
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 12, 2019 at 10:30 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 12 Mar 2019, Bhagyashri Dighole wrote:
>
> > Replace NULL comparison with '!' operator which is indicated
> > by checkpatch.pl.
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v2:
> >   -- Drop some invalid changes.
>
> Sorry, but I don't think Greg will be happy with three v2's.  It would be
> better to send a v3 that is correct in every way.
>

Okay.

>
> julia
>
> >
> >  drivers/staging/rtl8712/rtl8712_recv.c        | 10 +++++-----
> >  drivers/staging/rtl8712/rtl871x_cmd.c         |  4 ++--
> >  drivers/staging/rtl8712/rtl871x_io.c          |  2 +-
> >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++--------
> >  drivers/staging/rtl8712/rtl871x_mlme.c        | 16 ++++++++--------
> >  drivers/staging/rtl8712/rtl871x_mp_ioctl.c    |  2 +-
> >  drivers/staging/rtl8712/rtl871x_recv.c        | 20 ++++++++++----------
> >  drivers/staging/rtl8712/rtl871x_recv.h        | 10 +++++-----
> >  drivers/staging/rtl8712/rtl871x_security.c    |  8 ++++----
> >  drivers/staging/rtl8712/rtl871x_sta_mgt.c     |  4 ++--
> >  drivers/staging/rtl8712/rtl871x_xmit.c        | 24
> ++++++++++++------------
> >  drivers/staging/rtl8712/usb_intf.c            |  2 +-
> >  12 files changed, 59 insertions(+), 59 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c
> b/drivers/staging/rtl8712/rtl8712_recv.c
> > index 9e09431..9aa950e 100644
> > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > @@ -135,7 +135,7 @@ int r8712_free_recvframe(union recv_frame
> *precvframe,
> >       spin_lock_irqsave(&pfree_recv_queue->lock, irqL);
> >       list_del_init(&(precvframe->u.hdr.list));
> >       list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
> > -     if (padapter != NULL) {
> > +     if (padapter) {
> >               if (pfree_recv_queue == &precvpriv->free_recv_queue)
> >                       precvpriv->free_recvframe_cnt++;
> >       }
> > @@ -273,7 +273,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct
> _adapter *padapter,
> >               /* 0~(n-1) fragment frame
> >                * enqueue to defraf_g
> >                */
> > -             if (pdefrag_q != NULL) {
> > +             if (pdefrag_q) {
> >                       if (fragnum == 0) {
> >                               /*the first fragment*/
> >                               if (!list_empty(&pdefrag_q->queue)) {
> > @@ -299,7 +299,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct
> _adapter *padapter,
> >               /* the last fragment frame
> >                * enqueue the last fragment
> >                */
> > -             if (pdefrag_q != NULL) {
> > +             if (pdefrag_q) {
> >                       phead = &pdefrag_q->queue;
> >                       list_add_tail(&pfhdr->list, phead);
> >                       /*call recvframe_defrag to defrag*/
> > @@ -313,7 +313,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct
> _adapter *padapter,
> >                       prtnframe = NULL;
> >               }
> >       }
> > -     if ((prtnframe != NULL) && (prtnframe->u.hdr.attrib.privacy)) {
> > +     if (prtnframe && prtnframe->u.hdr.attrib.privacy) {
> >               /* after defrag we must check tkip mic code */
> >               if (r8712_recvframe_chkmic(padapter, prtnframe) == _FAIL) {
> >                       r8712_free_recvframe(prtnframe, pfree_recv_queue);
> > @@ -889,7 +889,7 @@ static void process_link_qual(struct _adapter
> *padapter,
> >       struct rx_pkt_attrib *pattrib;
> >       struct smooth_rssi_data *sqd =
> &padapter->recvpriv.signal_qual_data;
> >
> > -     if (prframe == NULL || padapter == NULL)
> > +     if (!prframe || !padapter)
> >               return;
> >       pattrib = &prframe->u.hdr.attrib;
> >       if (pattrib->signal_qual != 0) {
> > diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c
> b/drivers/staging/rtl8712/rtl871x_cmd.c
> > index 05a78ac..eaae9c0 100644
> > --- a/drivers/staging/rtl8712/rtl871x_cmd.c
> > +++ b/drivers/staging/rtl8712/rtl871x_cmd.c
> > @@ -194,7 +194,7 @@ void r8712_free_cmd_obj(struct cmd_obj *pcmd)
> >       if ((pcmd->cmdcode != _JoinBss_CMD_) &&
> >           (pcmd->cmdcode != _CreateBss_CMD_))
> >               kfree(pcmd->parmbuf);
> > -     if (pcmd->rsp != NULL) {
> > +     if (pcmd->rsp) {
> >               if (pcmd->rspsz != 0)
> >                       kfree(pcmd->rsp);
> >       }
> > @@ -229,7 +229,7 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
> >       psurveyPara->passive_mode = cpu_to_le32(pmlmepriv->passive_mode);
> >       psurveyPara->ss_ssidlen = 0;
> >       memset(psurveyPara->ss_ssid, 0, IW_ESSID_MAX_SIZE + 1);
> > -     if ((pssid != NULL) && (pssid->SsidLength)) {
> > +     if (pssid && pssid->SsidLength) {
> >               memcpy(psurveyPara->ss_ssid, pssid->Ssid,
> pssid->SsidLength);
> >               psurveyPara->ss_ssidlen = cpu_to_le32(pssid->SsidLength);
> >       }
> > diff --git a/drivers/staging/rtl8712/rtl871x_io.c
> b/drivers/staging/rtl8712/rtl871x_io.c
> > index 17dafef..e34302a 100644
> > --- a/drivers/staging/rtl8712/rtl871x_io.c
> > +++ b/drivers/staging/rtl8712/rtl871x_io.c
> > @@ -50,7 +50,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
> >       init_intf_priv = &r8712_usb_init_intf_priv;
> >       pintf_priv = pintf_hdl->pintfpriv = kmalloc(sizeof(struct
> intf_priv),
> >                                                   GFP_ATOMIC);
> > -     if (pintf_priv == NULL)
> > +     if (!pintf_priv)
> >               goto _init_intf_hdl_fail;
> >       pintf_hdl->adapter = (u8 *)padapter;
> >       set_intf_option(&pintf_hdl->intf_option);
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index ad9b2f7..e55db92 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -467,11 +467,11 @@ static int r871x_set_wpa_ie(struct _adapter
> *padapter, char *pie,
> >       int group_cipher = 0, pairwise_cipher = 0;
> >       int ret = 0;
> >
> > -     if ((ielen > MAX_WPA_IE_LEN) || (pie == NULL))
> > +     if (ielen > MAX_WPA_IE_LEN || !pie)
> >               return -EINVAL;
> >       if (ielen) {
> >               buf = kmemdup(pie, ielen, GFP_ATOMIC);
> > -             if (buf == NULL)
> > +             if (!buf)
> >                       return -ENOMEM;
> >               if (ielen < RSN_HEADER_LEN) {
> >                       ret  = -EINVAL;
> > @@ -763,7 +763,7 @@ static int r871x_wx_set_pmkid(struct net_device *dev,
> >   *   If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to
> >   *   remove a PMKID/BSSID from driver.
> >   */
> > -     if (pPMK == NULL)
> > +     if (!pPMK)
> >               return -EINVAL;
> >       memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
> >       switch (pPMK->cmd) {
> > @@ -1085,7 +1085,7 @@ static int r871x_wx_set_mlme(struct net_device
> *dev,
> >       struct _adapter *padapter = netdev_priv(dev);
> >       struct iw_mlme *mlme = (struct iw_mlme *) extra;
> >
> > -     if (mlme == NULL)
> > +     if (!mlme)
> >               return -1;
> >       switch (mlme->cmd) {
> >       case IW_MLME_DEAUTH:
> > @@ -1938,7 +1938,7 @@ static int r871x_get_ap_info(struct net_device
> *dev,
> >       u8 bssid[ETH_ALEN];
> >       char data[33];
> >
> > -     if (padapter->driver_stopped || (pdata == NULL))
> > +     if (padapter->driver_stopped || !pdata)
> >               return -EINVAL;
> >       while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
> >                            _FW_UNDER_LINKING)) {
> > @@ -2002,7 +2002,7 @@ static int r871x_set_pid(struct net_device *dev,
> >       struct _adapter *padapter = netdev_priv(dev);
> >       struct iw_point *pdata = &wrqu->data;
> >
> > -     if ((padapter->driver_stopped) || (pdata == NULL))
> > +     if (padapter->driver_stopped || !pdata)
> >               return -EINVAL;
> >       if (copy_from_user(&padapter->pid, pdata->pointer, sizeof(int)))
> >               return -EINVAL;
> > @@ -2018,7 +2018,7 @@ static int r871x_set_chplan(struct net_device *dev,
> >       struct iw_point *pdata = &wrqu->data;
> >       int ch_plan = -1;
> >
> > -     if ((padapter->driver_stopped) || (pdata == NULL)) {
> > +     if (padapter->driver_stopped || !pdata) {
> >               ret = -EINVAL;
> >               goto exit;
> >       }
> > @@ -2038,7 +2038,7 @@ static int r871x_wps_start(struct net_device *dev,
> >       struct iw_point *pdata = &wrqu->data;
> >       u32   u32wps_start = 0;
> >
> > -     if ((padapter->driver_stopped) || (pdata == NULL))
> > +     if (padapter->driver_stopped || !pdata)
> >               return -EINVAL;
> >       if (copy_from_user((void *)&u32wps_start, pdata->pointer, 4))
> >               return -EFAULT;
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index c666e03..d48f3d1 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -95,7 +95,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
> >       unsigned long irqL;
> >       struct  __queue *free_queue = &(pmlmepriv->free_bss_pool);
> >
> > -     if (pnetwork == NULL)
> > +     if (!pnetwork)
> >               return;
> >       if (pnetwork->fixed)
> >               return;
> > @@ -115,7 +115,7 @@ static void free_network_nolock(struct mlme_priv
> *pmlmepriv,
> >  {
> >       struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
> >
> > -     if (pnetwork == NULL)
> > +     if (!pnetwork)
> >               return;
> >       if (pnetwork->fixed)
> >               return;
> > @@ -780,7 +780,7 @@ void r8712_joinbss_event_callback(struct _adapter
> *adapter, u8 *pbuf)
> >                                       ptarget_wlan->fixed = true;
> >                       }
> >
> > -                     if (ptarget_wlan == NULL) {
> > +                     if (!ptarget_wlan) {
> >                               if (check_fwstate(pmlmepriv,
> >                                       _FW_UNDER_LINKING))
> >                                       pmlmepriv->fw_state ^=
> > @@ -794,7 +794,7 @@ void r8712_joinbss_event_callback(struct _adapter
> *adapter, u8 *pbuf)
> >                                       ptarget_sta =
> >
> r8712_get_stainfo(pstapriv,
> >
> pnetwork->network.MacAddress);
> > -                                     if (ptarget_sta == NULL)
> > +                                     if (!ptarget_sta)
> >                                               ptarget_sta =
> >
> r8712_alloc_stainfo(pstapriv,
> >
> pnetwork->network.MacAddress);
> > @@ -905,7 +905,7 @@ void r8712_stassoc_event_callback(struct _adapter
> *adapter, u8 *pbuf)
> >       if (!r8712_access_ctrl(&adapter->acl_list, pstassoc->macaddr))
> >               return;
> >       psta = r8712_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
> > -     if (psta != NULL) {
> > +     if (psta) {
> >               /*the sta have been in sta_info_queue => do nothing
> >                *(between drv has received this event before and
> >                * fw have not yet to set key to CAM_ENTRY)
> > @@ -914,7 +914,7 @@ void r8712_stassoc_event_callback(struct _adapter
> *adapter, u8 *pbuf)
> >       }
> >
> >       psta = r8712_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
> > -     if (psta == NULL)
> > +     if (!psta)
> >               return;
> >       /* to do : init sta_info variable */
> >       psta->qos_option = 0;
> > @@ -1112,7 +1112,7 @@ int r8712_select_and_join_from_scan(struct
> mlme_priv *pmlmepriv)
> >       while (1) {
> >               if (end_of_queue_search(phead, pmlmepriv->pscanned)) {
> >                       if ((pmlmepriv->assoc_by_rssi) &&
> > -                         (pnetwork_max_rssi != NULL)) {
> > +                         (pnetwork_max_rssi)) {
> >                               pnetwork = pnetwork_max_rssi;
> >                               goto ask_for_joinbss;
> >                       }
> > @@ -1120,7 +1120,7 @@ int r8712_select_and_join_from_scan(struct
> mlme_priv *pmlmepriv)
> >               }
> >               pnetwork = container_of(pmlmepriv->pscanned,
> >                                       struct wlan_network, list);
> > -             if (pnetwork == NULL)
> > +             if (!pnetwork)
> >                       return _FAIL;
> >               pmlmepriv->pscanned = pmlmepriv->pscanned->next;
> >               if (pmlmepriv->assoc_by_bssid) {
> > diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
> b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
> > index 588346d..bbef96f9f 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
> > @@ -186,7 +186,7 @@ static int mp_start_test(struct _adapter *padapter)
> >       if (psta)
> >               r8712_free_stainfo(padapter, psta);
> >       psta = r8712_alloc_stainfo(&padapter->stapriv, bssid.MacAddress);
> > -     if (psta == NULL) {
> > +     if (!psta) {
> >               res = _FAIL;
> >               goto end_of_mp_start_test;
> >       }
> > diff --git a/drivers/staging/rtl8712/rtl871x_recv.c
> b/drivers/staging/rtl8712/rtl871x_recv.c
> > index 28f7369..aa4e406 100644
> > --- a/drivers/staging/rtl8712/rtl871x_recv.c
> > +++ b/drivers/staging/rtl8712/rtl871x_recv.c
> > @@ -63,7 +63,7 @@ sint _r8712_init_recv_priv(struct recv_priv *precvpriv,
> >       precvpriv->pallocated_frame_buf = kzalloc(NR_RECVFRAME *
> >                               sizeof(union recv_frame) +
> RXFRAME_ALIGN_SZ,
> >                               GFP_ATOMIC);
> > -     if (precvpriv->pallocated_frame_buf == NULL)
> > +     if (!precvpriv->pallocated_frame_buf)
> >               return _FAIL;
> >       kmemleak_not_leak(precvpriv->pallocated_frame_buf);
> >       precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf +
> > @@ -102,7 +102,7 @@ union recv_frame *r8712_alloc_recvframe(struct
> __queue *pfree_recv_queue)
> >       if (precvframe) {
> >               list_del_init(&precvframe->u.hdr.list);
> >               padapter = precvframe->u.hdr.adapter;
> > -             if (padapter != NULL) {
> > +             if (padapter) {
> >                       precvpriv = &padapter->recvpriv;
> >                       if (pfree_recv_queue ==
> &precvpriv->free_recv_queue)
> >                               precvpriv->free_recvframe_cnt--;
> > @@ -150,7 +150,7 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
> >       stainfo = r8712_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
> >       if (prxattrib->encrypt == _TKIP_) {
> >               /* calculate mic code */
> > -             if (stainfo != NULL) {
> > +             if (stainfo) {
> >                       if (IS_MCAST(prxattrib->ra)) {
> >                               iv = precvframe->u.hdr.rx_data +
> >                                    prxattrib->hdrlen;
> > @@ -248,7 +248,7 @@ union recv_frame *r8712_portctrl(struct _adapter
> *adapter,
> >               memcpy(&ether_type, ptr, 2);
> >               be16_to_cpus(&ether_type);
> >
> > -             if ((psta != NULL) && (psta->ieee8021x_blocked)) {
> > +             if (psta && psta->ieee8021x_blocked) {
> >                       /* blocked
> >                        * only accept EAPOL frame
> >                        */
> > @@ -355,7 +355,7 @@ static sint sta2sta_data_frame(struct _adapter
> *adapter,
> >               *psta = r8712_get_bcmc_stainfo(adapter);
> >       else
> >               *psta = r8712_get_stainfo(pstapriv, sta_addr); /* get
> ap_info */
> > -     if (*psta == NULL) {
> > +     if (!*psta) {
> >               if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
> >                       adapter->mppriv.rx_pktloss++;
> >               return _FAIL;
> > @@ -405,7 +405,7 @@ static sint ap2sta_data_frame(struct _adapter
> *adapter,
> >                       *psta = r8712_get_bcmc_stainfo(adapter);
> >               else
> >                       *psta = r8712_get_stainfo(pstapriv,
> pattrib->bssid);
> > -             if (*psta == NULL)
> > +             if (!*psta)
> >                       return _FAIL;
> >       } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE) &&
> >                  check_fwstate(pmlmepriv, _FW_LINKED)) {
> > @@ -416,7 +416,7 @@ static sint ap2sta_data_frame(struct _adapter
> *adapter,
> >               memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
> >               memcpy(pattrib->bssid,  mybssid, ETH_ALEN);
> >               *psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
> > -             if (*psta == NULL)
> > +             if (!*psta)
> >                       return _FAIL;
> >       } else {
> >               return _FAIL;
> > @@ -441,7 +441,7 @@ static sint sta2ap_data_frame(struct _adapter
> *adapter,
> >               if (memcmp(pattrib->bssid, mybssid, ETH_ALEN))
> >                       return _FAIL;
> >               *psta = r8712_get_stainfo(pstapriv, pattrib->src);
> > -             if (*psta == NULL)
> > +             if (!*psta)
> >                       return _FAIL;
> >       }
> >       return _SUCCESS;
> > @@ -475,7 +475,7 @@ static sint validate_recv_data_frame(struct _adapter
> *adapter,
> >       pda = get_da(ptr);
> >       psa = get_sa(ptr);
> >       pbssid = get_hdr_bssid(ptr);
> > -     if (pbssid == NULL)
> > +     if (!pbssid)
> >               return _FAIL;
> >       memcpy(pattrib->dst, pda, ETH_ALEN);
> >       memcpy(pattrib->src, psa, ETH_ALEN);
> > @@ -505,7 +505,7 @@ static sint validate_recv_data_frame(struct _adapter
> *adapter,
> >       }
> >       if (res == _FAIL)
> >               return _FAIL;
> > -     if (psta == NULL)
> > +     if (!psta)
> >               return _FAIL;
> >       precv_frame->u.hdr.psta = psta;
> >       pattrib->amsdu = 0;
> > diff --git a/drivers/staging/rtl8712/rtl871x_recv.h
> b/drivers/staging/rtl8712/rtl871x_recv.h
> > index f87b2ff..1a56cd4 100644
> > --- a/drivers/staging/rtl8712/rtl871x_recv.h
> > +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> > @@ -138,7 +138,7 @@ int recv_func(struct _adapter *padapter, void
> *pcontext);
> >  static inline u8 *get_rxmem(union recv_frame *precvframe)
> >  {
> >       /* always return rx_head... */
> > -     if (precvframe == NULL)
> > +     if (!precvframe)
> >               return NULL;
> >       return precvframe->u.hdr.rx_head;
> >  }
> > @@ -146,7 +146,7 @@ static inline u8 *get_rxmem(union recv_frame
> *precvframe)
> >  static inline u8 *get_recvframe_data(union recv_frame *precvframe)
> >  {
> >       /* always return rx_data */
> > -     if (precvframe == NULL)
> > +     if (!precvframe)
> >               return NULL;
> >       return precvframe->u.hdr.rx_data;
> >  }
> > @@ -156,7 +156,7 @@ static inline u8 *recvframe_pull(union recv_frame
> *precvframe, sint sz)
> >       /* used for extract sz bytes from rx_data, update rx_data and
> return
> >        * the updated rx_data to the caller
> >        */
> > -     if (precvframe == NULL)
> > +     if (!precvframe)
> >               return NULL;
> >       precvframe->u.hdr.rx_data += sz;
> >       if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
> > @@ -173,7 +173,7 @@ static inline u8 *recvframe_put(union recv_frame
> *precvframe, sint sz)
> >        * return the updated rx_tail to the caller
> >        * after putting, rx_tail must be still larger than rx_end.
> >        */
> > -     if (precvframe == NULL)
> > +     if (!precvframe)
> >               return NULL;
> >       precvframe->u.hdr.rx_tail += sz;
> >       if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
> > @@ -191,7 +191,7 @@ static inline u8 *recvframe_pull_tail(union
> recv_frame *precvframe, sint sz)
> >        * updated rx_end to the caller
> >        * after pulling, rx_end must be still larger than rx_data.
> >        */
> > -     if (precvframe == NULL)
> > +     if (!precvframe)
> >               return NULL;
> >       precvframe->u.hdr.rx_tail -= sz;
> >       if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
> > diff --git a/drivers/staging/rtl8712/rtl871x_security.c
> b/drivers/staging/rtl8712/rtl871x_security.c
> > index f826450..148e24e 100644
> > --- a/drivers/staging/rtl8712/rtl871x_security.c
> > +++ b/drivers/staging/rtl8712/rtl871x_security.c
> > @@ -160,7 +160,7 @@ void r8712_wep_encrypt(struct _adapter *padapter, u8
> *pxmitframe)
> >       struct  security_priv *psecuritypriv = &padapter->securitypriv;
> >       struct  xmit_priv *pxmitpriv = &padapter->xmitpriv;
> >
> > -     if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
> > +     if (((struct xmit_frame *)pxmitframe)->buf_addr==NULL)
> >               return;
> >       pframe = ((struct xmit_frame *)pxmitframe)->buf_addr +
> TXDESC_OFFSET;
> >       /*start to encrypt each fragment*/
> > @@ -584,7 +584,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8
> *pxmitframe)
> >               else
> >                       stainfo = r8712_get_stainfo(&padapter->stapriv,
> >                                 &pattrib->ra[0]);
> > -             if (stainfo != NULL) {
> > +             if (stainfo) {
> >                       prwskey = &stainfo->x_UncstKey.skey[0];
> >                       for (curfragnum = 0; curfragnum <
> pattrib->nr_frags;
> >                            curfragnum++) {
> > @@ -658,7 +658,7 @@ u32 r8712_tkip_decrypt(struct _adapter *padapter, u8
> *precvframe)
> >       if (prxattrib->encrypt == _TKIP_) {
> >               stainfo = r8712_get_stainfo(&padapter->stapriv,
> >                                           &prxattrib->ta[0]);
> > -             if (stainfo != NULL) {
> > +             if (stainfo) {
> >                       iv = pframe + prxattrib->hdrlen;
> >                       payload = pframe + prxattrib->iv_len +
> >                                 prxattrib->hdrlen;
> > @@ -1367,7 +1367,7 @@ u32 r8712_aes_decrypt(struct _adapter *padapter,
> u8 *precvframe)
> >       if (prxattrib->encrypt == _AES_) {
> >               stainfo = r8712_get_stainfo(&padapter->stapriv,
> >                                           &prxattrib->ta[0]);
> > -             if (stainfo != NULL) {
> > +             if (stainfo) {
> >                       if (IS_MCAST(prxattrib->ra)) {
> >                               iv = pframe + prxattrib->hdrlen;
> >                               idx = iv[3];
> > diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> > index 7c30b9e..f1439a7 100644
> > --- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> > +++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> > @@ -150,7 +150,7 @@ void r8712_free_stainfo(struct _adapter *padapter,
> struct sta_info *psta)
> >       struct  xmit_priv *pxmitpriv = &padapter->xmitpriv;
> >       struct  sta_priv *pstapriv = &padapter->stapriv;
> >
> > -     if (psta == NULL)
> > +     if (!psta)
> >               return;
> >       pfree_sta_queue = &pstapriv->free_sta_queue;
> >       pstaxmitpriv = &psta->sta_xmitpriv;
> > @@ -223,7 +223,7 @@ struct sta_info *r8712_get_stainfo(struct sta_priv
> *pstapriv, u8 *hwaddr)
> >       struct sta_info *psta = NULL;
> >       u32     index;
> >
> > -     if (hwaddr == NULL)
> > +     if (!hwaddr)
> >               return NULL;
> >       index = wifi_mac_hash(hwaddr);
> >       spin_lock_irqsave(&pstapriv->sta_hash_lock, irqL);
> > diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c
> b/drivers/staging/rtl8712/rtl871x_xmit.c
> > index 7c88574..94c2a48 100644
> > --- a/drivers/staging/rtl8712/rtl871x_xmit.c
> > +++ b/drivers/staging/rtl8712/rtl871x_xmit.c
> > @@ -156,7 +156,7 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)
> >                                       pxmitpriv->pxmit_frame_buf;
> >       struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
> >
> > -     if (pxmitpriv->pxmit_frame_buf == NULL)
> > +     if (!pxmitpriv->pxmit_frame_buf)
> >               return;
> >       for (i = 0; i < NR_XMITFRAME; i++) {
> >               r8712_xmit_complete(padapter, pxmitframe);
> > @@ -269,7 +269,7 @@ sint r8712_update_attrib(struct _adapter *padapter,
> _pkt *pkt,
> >                       pattrib->mac_id = 5;
> >               } else {
> >                       psta = r8712_get_stainfo(pstapriv, pattrib->ra);
> > -                     if (psta == NULL)  /* drop the pkt */
> > +                     if (!psta)  /* drop the pkt */
> >                               return _FAIL;
> >                       if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
> >                               pattrib->mac_id = 5;
> > @@ -362,7 +362,7 @@ static sint xmitframe_addmic(struct _adapter
> *padapter,
> >                                           &pattrib->ra[0]);
> >       if (pattrib->encrypt == _TKIP_) {
> >               /*encode mic code*/
> > -             if (stainfo != NULL) {
> > +             if (stainfo) {
> >                       u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
> 0x0,
> >                                          0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
> 0x0,
> >                                          0x0, 0x0};
> > @@ -596,10 +596,10 @@ sint r8712_xmitframe_coalesce(struct _adapter
> *padapter, _pkt *pkt,
> >       u8 *pbuf_start;
> >       sint bmcst = IS_MCAST(pattrib->ra);
> >
> > -     if (pattrib->psta == NULL)
> > +     if (!pattrib->psta)
> >               return _FAIL;
> >       psta = pattrib->psta;
> > -     if (pxmitframe->buf_addr == NULL)
> > +     if (!pxmitframe->buf_addr)
> >               return _FAIL;
> >       pbuf_start = pxmitframe->buf_addr;
> >       ptxdesc = pbuf_start;
> > @@ -627,7 +627,7 @@ sint r8712_xmitframe_coalesce(struct _adapter
> *padapter, _pkt *pkt,
> >               mpdu_len -= pattrib->hdrlen;
> >               /* adding icv, if necessary...*/
> >               if (pattrib->iv_len) {
> > -                     if (psta != NULL) {
> > +                     if (psta) {
> >                               switch (pattrib->encrypt) {
> >                               case _WEP40_:
> >                               case _WEP104_:
> > @@ -718,7 +718,7 @@ void r8712_update_protection(struct _adapter
> *padapter, u8 *ie, uint ie_len)
> >       case AUTO_VCS:
> >       default:
> >               perp = r8712_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
> > -             if (perp == NULL) {
> > +             if (!perp) {
> >                       pxmitpriv->vcs = NONE_VCS;
> >               } else {
> >                       protection = (*(perp + 2)) & BIT(1);
> > @@ -757,7 +757,7 @@ int r8712_free_xmitbuf(struct xmit_priv *pxmitpriv,
> struct xmit_buf *pxmitbuf)
> >       unsigned long irqL;
> >       struct  __queue *pfree_xmitbuf_queue =
> &pxmitpriv->free_xmitbuf_queue;
> >
> > -     if (pxmitbuf == NULL)
> > +     if (!pxmitbuf)
> >               return _FAIL;
> >       spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
> >       list_del_init(&pxmitbuf->list);
> > @@ -811,7 +811,7 @@ void r8712_free_xmitframe(struct xmit_priv
> *pxmitpriv,
> >       struct  __queue *pfree_xmit_queue = &pxmitpriv->free_xmit_queue;
> >       struct _adapter *padapter = pxmitpriv->adapter;
> >
> > -     if (pxmitframe == NULL)
> > +     if (!pxmitframe)
> >               return;
> >       spin_lock_irqsave(&pfree_xmit_queue->lock, irqL);
> >       list_del_init(&pxmitframe->list);
> > @@ -827,7 +827,7 @@ void r8712_free_xmitframe(struct xmit_priv
> *pxmitpriv,
> >  void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
> >                     struct xmit_frame *pxmitframe)
> >  {
> > -     if (pxmitframe == NULL)
> > +     if (!pxmitframe)
> >               return;
> >       if (pxmitframe->frame_tag == DATA_FRAMETAG)
> >               r8712_free_xmitframe(pxmitpriv, pxmitframe);
> > @@ -918,7 +918,7 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
> >                               psta = r8712_get_stainfo(pstapriv,
> pattrib->ra);
> >               }
> >       }
> > -     if (psta == NULL)
> > +     if (!psta)
> >               return _FAIL;
> >       ptxservq = get_sta_pending(padapter, &pstapending,
> >                  psta, pattrib->priority);
> > @@ -1030,7 +1030,7 @@ int r8712_pre_xmit(struct _adapter *padapter,
> struct xmit_frame *pxmitframe)
> >               return ret;
> >       }
> >       pxmitbuf = r8712_alloc_xmitbuf(pxmitpriv);
> > -     if (pxmitbuf == NULL) { /*enqueue packet*/
> > +     if (!pxmitbuf) { /*enqueue packet*/
> >               ret = false;
> >               r8712_xmit_enqueue(padapter, pxmitframe);
> >               spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
> > diff --git a/drivers/staging/rtl8712/usb_intf.c
> b/drivers/staging/rtl8712/usb_intf.c
> > index 7478bbd..91382c2 100644
> > --- a/drivers/staging/rtl8712/usb_intf.c
> > +++ b/drivers/staging/rtl8712/usb_intf.c
> > @@ -577,7 +577,7 @@ static int r871xu_drv_init(struct usb_interface
> *pusb_intf,
> >  error:
> >       usb_put_dev(udev);
> >       usb_set_intfdata(pusb_intf, NULL);
> > -     if (padapter && padapter->dvobj_deinit != NULL)
> > +     if (padapter && padapter->dvobj_deinit)
> >               padapter->dvobj_deinit(padapter);
> >       if (pnetdev)
> >               free_netdev(pnetdev);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1552408996-9962-1-git-send-email-digholebhagyashri%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903121759300.4097%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000006472e10583e8b8a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 12, 2019 at 10:30 PM Juli=
a Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><b=
r>
<br>
On Tue, 12 Mar 2019, Bhagyashri Dighole wrote:<br>
<br>
&gt; Replace NULL comparison with &#39;!&#39; operator which is indicated<b=
r>
&gt; by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blan=
k">checkpatch.pl</a>.<br>
&gt;<br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0-- Drop some invalid changes.<br>
<br>
Sorry, but I don&#39;t think Greg will be happy with three v2&#39;s.=C2=A0 =
It would be<br>
better to send a v3 that is correct in every way.<br></blockquote><div><br>=
</div><div>Okay.<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
<br>
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_recv.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 10 +++++-----<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_cmd.c=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_io.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++-----=
---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 16 ++++++++--------<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mp_ioctl.c=C2=A0 =C2=A0 |=C2=A0 =
2 +-<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_recv.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 20 ++++++++++----------<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_recv.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 10 +++++-----<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_security.c=C2=A0 =C2=A0 |=C2=A0 =
8 ++++----<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_sta_mgt.c=C2=A0 =C2=A0 =C2=A0|=
=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_xmit.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 24 ++++++++++++------------<br>
&gt;=C2=A0 drivers/staging/rtl8712/usb_intf.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 12 files changed, 59 insertions(+), 59 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/=
rtl8712/rtl8712_recv.c<br>
&gt; index 9e09431..9aa950e 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_recv.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_recv.c<br>
&gt; @@ -135,7 +135,7 @@ int r8712_free_recvframe(union recv_frame *precvfr=
ame,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&amp;pfree_recv_queue-&gt;=
lock, irqL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&amp;(precvframe-&gt;u.hdr.lis=
t));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_add_tail(&amp;(precvframe-&gt;u.hdr.lis=
t), &amp;pfree_recv_queue-&gt;queue);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter !=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pfree_recv_q=
ueue =3D=3D &amp;precvpriv-&gt;free_recv_queue)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0precvpriv-&gt;free_recvframe_cnt++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -273,7 +273,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struc=
t _adapter *padapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* 0~(n-1) fragm=
ent frame<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * enqueue to de=
fraf_g<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pdefrag_q !=3D NU=
LL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pdefrag_q) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (fragnum =3D=3D 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*the first fragment*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!list_empty(&amp;pdefrag_q-&gt=
;queue)) {<br>
&gt; @@ -299,7 +299,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struc=
t _adapter *padapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* the last frag=
ment frame<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * enqueue the l=
ast fragment<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pdefrag_q !=3D NU=
LL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pdefrag_q) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0phead =3D &amp;pdefrag_q-&gt;queue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_add_tail(&amp;pfhdr-&gt;list, phead);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/*call recvframe_defrag to defrag*/<br>
&gt; @@ -313,7 +313,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struc=
t _adapter *padapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0prtnframe =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((prtnframe !=3D NULL) &amp;&amp; (prtnframe-&=
gt;u.hdr.attrib.privacy)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (prtnframe &amp;&amp; prtnframe-&gt;u.hdr.attr=
ib.privacy) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* after defrag =
we must check tkip mic code */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (r8712_recvfr=
ame_chkmic(padapter, prtnframe) =3D=3D _FAIL) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0r8712_free_recvframe(prtnframe, pfree_recv_queue);<br>
&gt; @@ -889,7 +889,7 @@ static void process_link_qual(struct _adapter *pad=
apter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct rx_pkt_attrib *pattrib;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct smooth_rssi_data *sqd =3D &amp;padapt=
er-&gt;recvpriv.signal_qual_data;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (prframe =3D=3D NULL || padapter =3D=3D NULL)<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!prframe || !padapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pattrib =3D &amp;prframe-&gt;u.hdr.attrib;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pattrib-&gt;signal_qual !=3D 0) {<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/r=
tl8712/rtl871x_cmd.c<br>
&gt; index 05a78ac..eaae9c0 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_cmd.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_cmd.c<br>
&gt; @@ -194,7 +194,7 @@ void r8712_free_cmd_obj(struct cmd_obj *pcmd)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((pcmd-&gt;cmdcode !=3D _JoinBss_CMD_) &a=
mp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(pcmd-&gt;cmdcode !=3D _Create=
Bss_CMD_))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(pcmd-&gt;p=
armbuf);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pcmd-&gt;rsp !=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (pcmd-&gt;rsp) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pcmd-&gt;rsp=
sz !=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0kfree(pcmd-&gt;rsp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -229,7 +229,7 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psurveyPara-&gt;passive_mode =3D cpu_to_le32=
(pmlmepriv-&gt;passive_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psurveyPara-&gt;ss_ssidlen =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memset(psurveyPara-&gt;ss_ssid, 0, IW_ESSID_=
MAX_SIZE + 1);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((pssid !=3D NULL) &amp;&amp; (pssid-&gt;SsidL=
ength)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (pssid &amp;&amp; pssid-&gt;SsidLength) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(psurveyPa=
ra-&gt;ss_ssid, pssid-&gt;Ssid, pssid-&gt;SsidLength);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psurveyPara-&gt;=
ss_ssidlen =3D cpu_to_le32(pssid-&gt;SsidLength);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rt=
l8712/rtl871x_io.c<br>
&gt; index 17dafef..e34302a 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_io.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_io.c<br>
&gt; @@ -50,7 +50,7 @@ static uint _init_intf_hdl(struct _adapter *padapter=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0init_intf_priv =3D &amp;r8712_usb_init_intf_=
priv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pintf_priv =3D pintf_hdl-&gt;pintfpriv =3D k=
malloc(sizeof(struct intf_priv),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_ATOMIC);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pintf_priv =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pintf_priv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto _init_intf_=
hdl_fail;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pintf_hdl-&gt;adapter =3D (u8 *)padapter;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0set_intf_option(&amp;pintf_hdl-&gt;intf_opti=
on);<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/s=
taging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; index ad9b2f7..e55db92 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; @@ -467,11 +467,11 @@ static int r871x_set_wpa_ie(struct _adapter *pad=
apter, char *pie,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int group_cipher =3D 0, pairwise_cipher =3D =
0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((ielen &gt; MAX_WPA_IE_LEN) || (pie =3D=3D NU=
LL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ielen &gt; MAX_WPA_IE_LEN || !pie)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ielen) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buf =3D kmemdup(=
pie, ielen, GFP_ATOMIC);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (buf =3D=3D NULL)<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return -ENOMEM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ielen &lt; R=
SN_HEADER_LEN) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0ret=C2=A0 =3D -EINVAL;<br>
&gt; @@ -763,7 +763,7 @@ static int r871x_wx_set_pmkid(struct net_device *d=
ev,<br>
&gt;=C2=A0 =C2=A0*=C2=A0 =C2=A0If cmd is IW_PMKSA_REMOVE, it means the wpa_=
supplicant wants to<br>
&gt;=C2=A0 =C2=A0*=C2=A0 =C2=A0remove a PMKID/BSSID from driver.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pPMK =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pPMK)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(strIssueBssid, pPMK-&gt;bssid.sa_data=
, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (pPMK-&gt;cmd) {<br>
&gt; @@ -1085,7 +1085,7 @@ static int r871x_wx_set_mlme(struct net_device *=
dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct _adapter *padapter =3D netdev_priv(de=
v);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iw_mlme *mlme =3D (struct iw_mlme *) =
extra;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (mlme =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!mlme)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (mlme-&gt;cmd) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case IW_MLME_DEAUTH:<br>
&gt; @@ -1938,7 +1938,7 @@ static int r871x_get_ap_info(struct net_device *=
dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 bssid[ETH_ALEN];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char data[33];<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || (pdata =3D=3D =
NULL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || !pdata)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (check_fwstate(pmlmepriv, _FW_UNDER_SU=
RVEY |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 _FW_UNDER_LINKING)) {<br>
&gt; @@ -2002,7 +2002,7 @@ static int r871x_set_pid(struct net_device *dev,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct _adapter *padapter =3D netdev_priv(de=
v);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iw_point *pdata =3D &amp;wrqu-&gt;dat=
a;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (pdata =3D=
=3D NULL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || !pdata)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (copy_from_user(&amp;padapter-&gt;pid, pd=
ata-&gt;pointer, sizeof(int)))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt; @@ -2018,7 +2018,7 @@ static int r871x_set_chplan(struct net_device *d=
ev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iw_point *pdata =3D &amp;wrqu-&gt;dat=
a;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ch_plan =3D -1;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (pdata =3D=
=3D NULL)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || !pdata) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D -EINVAL;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -2038,7 +2038,7 @@ static int r871x_wps_start(struct net_device *de=
v,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iw_point *pdata =3D &amp;wrqu-&gt;dat=
a;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32=C2=A0 =C2=A0u32wps_start =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (pdata =3D=
=3D NULL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || !pdata)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (copy_from_user((void *)&amp;u32wps_start=
, pdata-&gt;pointer, 4))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EFAULT;<=
br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/=
rtl8712/rtl871x_mlme.c<br>
&gt; index c666e03..d48f3d1 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; @@ -95,7 +95,7 @@ static void _free_network(struct mlme_priv *pmlmepri=
v,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long irqL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 __queue *free_queue =3D &amp;(p=
mlmepriv-&gt;free_bss_pool);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pnetwork =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pnetwork)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pnetwork-&gt;fixed)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; @@ -115,7 +115,7 @@ static void free_network_nolock(struct mlme_priv *=
pmlmepriv,<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 __queue *free_queue =3D &amp;pm=
lmepriv-&gt;free_bss_pool;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pnetwork =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pnetwork)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pnetwork-&gt;fixed)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; @@ -780,7 +780,7 @@ void r8712_joinbss_event_callback(struct _adapter =
*adapter, u8 *pbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptarge=
t_wlan-&gt;fixed =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (ptarget_wlan =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (!ptarget_wlan) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_fwstate(pmlmepriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_FW_UN=
DER_LINKING))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmep=
riv-&gt;fw_state ^=3D<br>
&gt; @@ -794,7 +794,7 @@ void r8712_joinbss_event_callback(struct _adapter =
*adapter, u8 *pbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptarge=
t_sta =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 r8712_get_stainfo(pstapriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 pnetwork-&gt;network.MacAddress);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ptarget_=
sta =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!ptarget=
_sta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0ptarget_sta =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 r8712_alloc_stainfo(pstapriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 pnetwork-&gt;network.MacAddress);<br>
&gt; @@ -905,7 +905,7 @@ void r8712_stassoc_event_callback(struct _adapter =
*adapter, u8 *pbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!r8712_access_ctrl(&amp;adapter-&gt;acl_=
list, pstassoc-&gt;macaddr))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D r8712_get_stainfo(&amp;adapter-&gt;=
stapriv, pstassoc-&gt;macaddr);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psta !=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (psta) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*the sta have b=
een in sta_info_queue =3D&gt; do nothing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *(between drv h=
as received this event before and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * fw have not y=
et to set key to CAM_ENTRY)<br>
&gt; @@ -914,7 +914,7 @@ void r8712_stassoc_event_callback(struct _adapter =
*adapter, u8 *pbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D r8712_alloc_stainfo(&amp;adapter-&g=
t;stapriv, pstassoc-&gt;macaddr);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* to do : init sta_info variable */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psta-&gt;qos_option =3D 0;<br>
&gt; @@ -1112,7 +1112,7 @@ int r8712_select_and_join_from_scan(struct mlme_=
priv *pmlmepriv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (1) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (end_of_queue=
_search(phead, pmlmepriv-&gt;pscanned)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if ((pmlmepriv-&gt;assoc_by_rssi) &amp;&amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0(pnetwork_max_rssi !=3D NULL)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0(pnetwork_max_rssi)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D pnetwork_max_rssi;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto ask_for_joinbss;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt; @@ -1120,7 +1120,7 @@ int r8712_select_and_join_from_scan(struct mlme_=
priv *pmlmepriv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pnetwork =3D con=
tainer_of(pmlmepriv-&gt;pscanned,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct=
 wlan_network, list);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pnetwork =3D=3D N=
ULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!pnetwork)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmepriv-&gt;ps=
canned =3D pmlmepriv-&gt;pscanned-&gt;next;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pmlmepriv-&g=
t;assoc_by_bssid) {<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/stag=
ing/rtl8712/rtl871x_mp_ioctl.c<br>
&gt; index 588346d..bbef96f9f 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c<br>
&gt; @@ -186,7 +186,7 @@ static int mp_start_test(struct _adapter *padapter=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_free_stain=
fo(padapter, psta);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D r8712_alloc_stainfo(&amp;padapter-&=
gt;stapriv, bssid.MacAddress);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psta) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto end_of_mp_s=
tart_test;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/=
rtl8712/rtl871x_recv.c<br>
&gt; index 28f7369..aa4e406 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_recv.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_recv.c<br>
&gt; @@ -63,7 +63,7 @@ sint _r8712_init_recv_priv(struct recv_priv *precvpr=
iv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0precvpriv-&gt;pallocated_frame_buf =3D kzall=
oc(NR_RECVFRAME *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sizeof(union recv_frame) + RXFRAME=
_ALIGN_SZ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_ATOMIC);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (precvpriv-&gt;pallocated_frame_buf =3D=3D NUL=
L)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!precvpriv-&gt;pallocated_frame_buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kmemleak_not_leak(precvpriv-&gt;pallocated_f=
rame_buf);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0precvpriv-&gt;precv_frame_buf =3D precvpriv-=
&gt;pallocated_frame_buf +<br>
&gt; @@ -102,7 +102,7 @@ union recv_frame *r8712_alloc_recvframe(struct __q=
ueue *pfree_recv_queue)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (precvframe) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;precvframe-&gt;u.hdr.list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter =3D pre=
cvframe-&gt;u.hdr.adapter;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter !=3D NUL=
L) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0precvpriv =3D &amp;padapter-&gt;recvpriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (pfree_recv_queue =3D=3D &amp;precvpriv-&gt;free_recv_queue=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0precvpriv-&gt;free_recvframe_cnt--=
;<br>
&gt; @@ -150,7 +150,7 @@ sint r8712_recvframe_chkmic(struct _adapter *adapt=
er,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0stainfo =3D r8712_get_stainfo(&amp;adapter-&=
gt;stapriv, &amp;prxattrib-&gt;ta[0]);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (prxattrib-&gt;encrypt =3D=3D _TKIP_) {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* calculate mic=
 code */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo !=3D NULL=
) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (IS_MCAST(prxattrib-&gt;ra)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0iv =3D precvframe-&gt;u.hdr.rx_dat=
a +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prxattrib-&gt;hdrle=
n;<br>
&gt; @@ -248,7 +248,7 @@ union recv_frame *r8712_portctrl(struct _adapter *=
adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(&amp;ethe=
r_type, ptr, 2);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0be16_to_cpus(&am=
p;ether_type);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((psta !=3D NULL) =
&amp;&amp; (psta-&gt;ieee8021x_blocked)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (psta &amp;&amp; p=
sta-&gt;ieee8021x_blocked) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* blocked<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 * only accept EAPOL frame<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 */<br>
&gt; @@ -355,7 +355,7 @@ static sint sta2sta_data_frame(struct _adapter *ad=
apter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*psta =3D r8712_=
get_bcmc_stainfo(adapter);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*psta =3D r8712_=
get_stainfo(pstapriv, sta_addr); /* get ap_info */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (*psta =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!*psta) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_fwstat=
e(pmlmepriv, WIFI_MP_STATE))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0adapter-&gt;mppriv.rx_pktloss++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt; @@ -405,7 +405,7 @@ static sint ap2sta_data_frame(struct _adapter *ada=
pter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0*psta =3D r8712_get_bcmc_stainfo(adapter);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0*psta =3D r8712_get_stainfo(pstapriv, pattrib-&gt;bssid);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (*psta =3D=3D NULL=
)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!*psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (check_fwstate(pmlmepriv, WIFI_MP_=
STATE) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 check_fw=
state(pmlmepriv, _FW_LINKED)) {<br>
&gt; @@ -416,7 +416,7 @@ static sint ap2sta_data_frame(struct _adapter *ada=
pter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&=
gt;ta, pattrib-&gt;src, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&=
gt;bssid,=C2=A0 mybssid, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*psta =3D r8712_=
get_stainfo(pstapriv, pattrib-&gt;bssid);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (*psta =3D=3D NULL=
)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!*psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt; @@ -441,7 +441,7 @@ static sint sta2ap_data_frame(struct _adapter *ada=
pter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (memcmp(pattr=
ib-&gt;bssid, mybssid, ETH_ALEN))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*psta =3D r8712_=
get_stainfo(pstapriv, pattrib-&gt;src);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (*psta =3D=3D NULL=
)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!*psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return _SUCCESS;<br>
&gt; @@ -475,7 +475,7 @@ static sint validate_recv_data_frame(struct _adapt=
er *adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pda =3D get_da(ptr);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psa =3D get_sa(ptr);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pbssid =3D get_hdr_bssid(ptr);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pbssid =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pbssid)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&gt;dst, pda, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&gt;src, psa, ETH_ALEN);<br>
&gt; @@ -505,7 +505,7 @@ static sint validate_recv_data_frame(struct _adapt=
er *adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (res =3D=3D _FAIL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0precv_frame-&gt;u.hdr.psta =3D psta;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pattrib-&gt;amsdu =3D 0;<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/=
rtl8712/rtl871x_recv.h<br>
&gt; index f87b2ff..1a56cd4 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_recv.h<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_recv.h<br>
&gt; @@ -138,7 +138,7 @@ int recv_func(struct _adapter *padapter, void *pco=
ntext);<br>
&gt;=C2=A0 static inline u8 *get_rxmem(union recv_frame *precvframe)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* always return rx_head... */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (precvframe =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!precvframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return precvframe-&gt;u.hdr.rx_head;<br>
&gt;=C2=A0 }<br>
&gt; @@ -146,7 +146,7 @@ static inline u8 *get_rxmem(union recv_frame *prec=
vframe)<br>
&gt;=C2=A0 static inline u8 *get_recvframe_data(union recv_frame *precvfram=
e)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* always return rx_data */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (precvframe =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!precvframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return precvframe-&gt;u.hdr.rx_data;<br>
&gt;=C2=A0 }<br>
&gt; @@ -156,7 +156,7 @@ static inline u8 *recvframe_pull(union recv_frame =
*precvframe, sint sz)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* used for extract sz bytes from rx_data, u=
pdate rx_data and return<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * the updated rx_data to the caller<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (precvframe =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!precvframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0precvframe-&gt;u.hdr.rx_data +=3D sz;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (precvframe-&gt;u.hdr.rx_data &gt; precvf=
rame-&gt;u.hdr.rx_tail) {<br>
&gt; @@ -173,7 +173,7 @@ static inline u8 *recvframe_put(union recv_frame *=
precvframe, sint sz)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * return the updated rx_tail to the caller<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * after putting, rx_tail must be still larg=
er than rx_end.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (precvframe =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!precvframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0precvframe-&gt;u.hdr.rx_tail +=3D sz;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (precvframe-&gt;u.hdr.rx_tail &gt; precvf=
rame-&gt;u.hdr.rx_end) {<br>
&gt; @@ -191,7 +191,7 @@ static inline u8 *recvframe_pull_tail(union recv_f=
rame *precvframe, sint sz)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * updated rx_end to the caller<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * after pulling, rx_end must be still large=
r than rx_data.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (precvframe =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!precvframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0precvframe-&gt;u.hdr.rx_tail -=3D sz;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (precvframe-&gt;u.hdr.rx_tail &lt; precvf=
rame-&gt;u.hdr.rx_data) {<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/stag=
ing/rtl8712/rtl871x_security.c<br>
&gt; index f826450..148e24e 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_security.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_security.c<br>
&gt; @@ -160,7 +160,7 @@ void r8712_wep_encrypt(struct _adapter *padapter, =
u8 *pxmitframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 security_priv *psecuritypriv =
=3D &amp;padapter-&gt;securitypriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 xmit_priv *pxmitpriv =3D &amp;p=
adapter-&gt;xmitpriv;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (((struct xmit_frame *)pxmitframe)-&gt;buf_add=
r =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (((struct xmit_frame *)pxmitframe)-&gt;buf_add=
r=3D=3DNULL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pframe =3D ((struct xmit_frame *)pxmitframe)=
-&gt;buf_addr + TXDESC_OFFSET;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*start to encrypt each fragment*/<br>
&gt; @@ -584,7 +584,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, =
u8 *pxmitframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0stainfo =3D r8712_get_stainfo(&amp;padapter-&gt;stapriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;pattrib-&gt;ra[0]);<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo !=3D NULL=
) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0prwskey =3D &amp;stainfo-&gt;x_UncstKey.skey[0];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0for (curfragnum =3D 0; curfragnum &lt; pattrib-&gt;nr_frags;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 curfragnum++) {<br>
&gt; @@ -658,7 +658,7 @@ u32 r8712_tkip_decrypt(struct _adapter *padapter, =
u8 *precvframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (prxattrib-&gt;encrypt =3D=3D _TKIP_) {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stainfo =3D r871=
2_get_stainfo(&amp;padapter-&gt;stapriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;prxattrib-&gt;ta[0]);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo !=3D NULL=
) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0iv =3D pframe + prxattrib-&gt;hdrlen;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0payload =3D pframe + prxattrib-&gt;iv_len +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prxattrib-&gt;hdrlen;<br>
&gt; @@ -1367,7 +1367,7 @@ u32 r8712_aes_decrypt(struct _adapter *padapter,=
 u8 *precvframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (prxattrib-&gt;encrypt =3D=3D _AES_) {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stainfo =3D r871=
2_get_stainfo(&amp;padapter-&gt;stapriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;prxattrib-&gt;ta[0]);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo !=3D NULL=
) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (IS_MCAST(prxattrib-&gt;ra)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0iv =3D pframe + prxattrib-&gt;hdrl=
en;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0idx =3D iv[3];<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/stagi=
ng/rtl8712/rtl871x_sta_mgt.c<br>
&gt; index 7c30b9e..f1439a7 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c<br>
&gt; @@ -150,7 +150,7 @@ void r8712_free_stainfo(struct _adapter *padapter,=
 struct sta_info *psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 xmit_priv *pxmitpriv =3D &amp;p=
adapter-&gt;xmitpriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 sta_priv *pstapriv =3D &amp;pad=
apter-&gt;stapriv;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pfree_sta_queue =3D &amp;pstapriv-&gt;free_s=
ta_queue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pstaxmitpriv =3D &amp;psta-&gt;sta_xmitpriv;=
<br>
&gt; @@ -223,7 +223,7 @@ struct sta_info *r8712_get_stainfo(struct sta_priv=
 *pstapriv, u8 *hwaddr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct sta_info *psta =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32=C2=A0 =C2=A0 =C2=A0index;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (hwaddr =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!hwaddr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0index =3D wifi_mac_hash(hwaddr);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&amp;pstapriv-&gt;sta_hash=
_lock, irqL);<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/=
rtl8712/rtl871x_xmit.c<br>
&gt; index 7c88574..94c2a48 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_xmit.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_xmit.c<br>
&gt; @@ -156,7 +156,7 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pxmitp=
riv-&gt;pxmit_frame_buf;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct xmit_buf *pxmitbuf =3D (struct xmit_b=
uf *)pxmitpriv-&gt;pxmitbuf;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pxmitpriv-&gt;pxmit_frame_buf =3D=3D NULL)<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pxmitpriv-&gt;pxmit_frame_buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; NR_XMITFRAME; i++) {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_xmit_compl=
ete(padapter, pxmitframe);<br>
&gt; @@ -269,7 +269,7 @@ sint r8712_update_attrib(struct _adapter *padapter=
, _pkt *pkt,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pattrib-&gt;mac_id =3D 5;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0psta =3D r8712_get_stainfo(pstapriv, pattrib-&gt;ra);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (psta =3D=3D NULL)=C2=A0 /* drop the pkt */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (!psta)=C2=A0 /* drop the pkt */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pattrib-&gt;mac_id =3D 5;<br>
&gt; @@ -362,7 +362,7 @@ static sint xmitframe_addmic(struct _adapter *pada=
pter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;pattrib-&gt;ra[0]);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pattrib-&gt;encrypt =3D=3D _TKIP_) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*encode mic cod=
e*/<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo !=3D NULL=
) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stainfo) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0u8 null_key[16] =3D {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 0x0, 0x0};<br>
&gt; @@ -596,10 +596,10 @@ sint r8712_xmitframe_coalesce(struct _adapter *p=
adapter, _pkt *pkt,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 *pbuf_start;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sint bmcst =3D IS_MCAST(pattrib-&gt;ra);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pattrib-&gt;psta =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pattrib-&gt;psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D pattrib-&gt;psta;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pxmitframe-&gt;buf_addr =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pxmitframe-&gt;buf_addr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pbuf_start =3D pxmitframe-&gt;buf_addr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ptxdesc =3D pbuf_start;<br>
&gt; @@ -627,7 +627,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *pad=
apter, _pkt *pkt,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mpdu_len -=3D pa=
ttrib-&gt;hdrlen;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* adding icv, i=
f necessary...*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pattrib-&gt;=
iv_len) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (psta !=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (psta) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0switch (pattrib-&gt;encrypt) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case _WEP40_:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case _WEP104_:<br>
&gt; @@ -718,7 +718,7 @@ void r8712_update_protection(struct _adapter *pada=
pter, u8 *ie, uint ie_len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case AUTO_VCS:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0perp =3D r8712_g=
et_ie(ie, _ERPINFO_IE_, &amp;erp_len, ie_len);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (perp =3D=3D NULL)=
 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!perp) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pxmitpriv-&gt;vcs =3D NONE_VCS;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0protection =3D (*(perp + 2)) &amp; BIT(1);<br>
&gt; @@ -757,7 +757,7 @@ int r8712_free_xmitbuf(struct xmit_priv *pxmitpriv=
, struct xmit_buf *pxmitbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long irqL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 __queue *pfree_xmitbuf_queue =
=3D &amp;pxmitpriv-&gt;free_xmitbuf_queue;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pxmitbuf =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pxmitbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&amp;pfree_xmitbuf_queue-&=
gt;lock, irqL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&amp;pxmitbuf-&gt;list);<br>
&gt; @@ -811,7 +811,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitp=
riv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 __queue *pfree_xmit_queue =3D &=
amp;pxmitpriv-&gt;free_xmit_queue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct _adapter *padapter =3D pxmitpriv-&gt;=
adapter;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pxmitframe =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pxmitframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&amp;pfree_xmit_queue-&gt;=
lock, irqL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&amp;pxmitframe-&gt;list);<br>
&gt; @@ -827,7 +827,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitp=
riv,<br>
&gt;=C2=A0 void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0struct xmit_frame *pxmitframe)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pxmitframe =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pxmitframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pxmitframe-&gt;frame_tag =3D=3D DATA_FRA=
METAG)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_free_xmitf=
rame(pxmitpriv, pxmitframe);<br>
&gt; @@ -918,7 +918,7 @@ sint r8712_xmit_classifier(struct _adapter *padapt=
er,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D r8712_get_stainfo(pstapri=
v, pattrib-&gt;ra);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ptxservq =3D get_sta_pending(padapter, &amp;=
pstapending,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 psta, pa=
ttrib-&gt;priority);<br>
&gt; @@ -1030,7 +1030,7 @@ int r8712_pre_xmit(struct _adapter *padapter, st=
ruct xmit_frame *pxmitframe)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pxmitbuf =3D r8712_alloc_xmitbuf(pxmitpriv);=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pxmitbuf =3D=3D NULL) { /*enqueue packet*/<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pxmitbuf) { /*enqueue packet*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D false;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_xmit_enque=
ue(padapter, pxmitframe);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock_irqr=
estore(&amp;pxmitpriv-&gt;lock, irqL);<br>
&gt; diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8=
712/usb_intf.c<br>
&gt; index 7478bbd..91382c2 100644<br>
&gt; --- a/drivers/staging/rtl8712/usb_intf.c<br>
&gt; +++ b/drivers/staging/rtl8712/usb_intf.c<br>
&gt; @@ -577,7 +577,7 @@ static int r871xu_drv_init(struct usb_interface *p=
usb_intf,<br>
&gt;=C2=A0 error:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0usb_put_dev(udev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0usb_set_intfdata(pusb_intf, NULL);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter &amp;&amp; padapter-&gt;dvobj_deinit=
 !=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter &amp;&amp; padapter-&gt;dvobj_deinit=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;dvo=
bj_deinit(padapter);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pnetdev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free_netdev(pnet=
dev);<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1552408996-9962-1-git-send-email-digholebh=
agyashri%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/1552408996-9962-1-git-send-email-dighole=
bhagyashri%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903121759300.4097%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.20.1903121759300.4097%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--0000000000006472e10583e8b8a9--

