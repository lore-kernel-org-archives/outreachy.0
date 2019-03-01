X-GM-THRID: 6663286701018841088
X-Received: by 2002:a9d:a75:: with SMTP id 108mr2448609otg.34.1551435834982;
        Fri, 01 Mar 2019 02:23:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:afc3:: with SMTP id y186ls3846517oie.4.gmail; Fri, 01
 Mar 2019 02:23:54 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbTAklcBh0Jp36SSDa/5iueCYRRiMnhymioianxBSyIW6ai+1eP8ss17bTRZtXVweEbQ0iQ
X-Received: by 2002:aca:c5d7:: with SMTP id v206mr2415905oif.12.1551435834137;
        Fri, 01 Mar 2019 02:23:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551435834; cv=none;
        d=google.com; s=arc-20160816;
        b=SOJ+CjmW/bKTOXvToK8OAblOmtNYOqLv4t7S+g6CNA1wroG9c/cph0lynX/O3TcztW
         odm6jnSkgFIjJhulSRcivfbBoCkywW/i6dt1OoZdbUu08Iu/8b0STionflLTauC/iGL1
         i8DLgbCXRNakBjpNceeqoxUJu8XNNSDzb/dV+uVjW/xilDYnKU63a76+YhivMnYa7jJl
         mngd/BXIU/cZsH+eja6nUzXUkIDxDplqhu2UuBu8e+PRmz776394PNxuxpDpNRE7Z2/F
         0GkH/EPzm+nWnfY328U5+NJ/OGYvPXoZvNQEwzK69KXBQqSR94Mq4QBmJkMwpndvqBBQ
         A7yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1NHmA1dXbCV41o/y0ft/WpoEZ+pYPPn0BFzzxikcWfY=;
        b=URP6AV4lm5vdsuzJEBIK6wFCgWc4sezvcjkFGKwzE9BCZheGKVuVqXZ8PMa2BQ8hok
         bw+iBWgmJPU6NsgS8vJ4yRkCH9xZ+J0KO5jOVScKkt6GlQmKPPgh3pscBBxrhZ3zj6uG
         XMmhRgJAopbrBqDOrl7nSdb7lGvBwJmTVEQby+dCb/QQMSARqooGSe8TiB6/NeVW33wZ
         ziU39cqlFWxmsQOKJiSXjPUHXqSper6J4GG1t/ucr+/4ZG//DBoatI7I5lQG9L7dAqe7
         tYtbMxBcISojBuzlohHXdXgGFBWQl7OmylxMc6EDw/p1BwXKXkg+KQtEP3It3xhYf1Tz
         ELwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQJhgYCA;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com. [2607:f8b0:4864:20::331])
        by gmr-mx.google.com with ESMTPS id l6si1538036otn.5.2019.03.01.02.23.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 02:23:54 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) client-ip=2607:f8b0:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQJhgYCA;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x331.google.com with SMTP id g1so20465558otj.11
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 02:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1NHmA1dXbCV41o/y0ft/WpoEZ+pYPPn0BFzzxikcWfY=;
        b=YQJhgYCAOXnhh8Pu45CnqYcaIFG/V6QuU5LKd+ejaq8F18POj7aRHTkCrzJlANzZP6
         pw7rUw6Y6vcNkkaMg+4ibgJ7DauKqG/r1gDeEqinfPF7ighuYdiovTcEl+Q0p/U0Mux9
         LAS+6kRWsMBmk4ANZRybQLTjci102gXl+gQs6fFQpiIa3lKLcIVRSm+TNe0HgBkRQoXW
         KK5mHIhx4v7Q0r5ASeNMwSEnU4A1Tp2OrIsrGda4M7bs14dvZeVkbl51NOu9n4GK+i1b
         /tm63JpFDHbnVRUL6OHcxN0b+Etl1Gi+vbbTSllo7EdLyTMewEt2E9W5xn/G42vpo2b6
         mLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1NHmA1dXbCV41o/y0ft/WpoEZ+pYPPn0BFzzxikcWfY=;
        b=WCAS1NKdDjnCkwW4EM3mZnCKP/ZroLHA6SxfRiilutKoZDibn479UDQjEW9Rp8OuIR
         4Om/DyhgOey5iB2vaSoYhWWScc/h6rcDZxxTCT3NPBaZotMFisY+OMc4gf4r8Ie8z8eR
         291a2ZFNTeZN+ucfYAnL06fBQ3NOepuAhW+VZ4hd8i8PQMWACckoQKWPkiOmFYaJkN+S
         7AIAUmiUGXZ1tSBgyF0zgVGt7ouIvwI8Cu0jyfxM0ZocupxkXMQqnivHFX+u4qD/00Qd
         Fw2kQwJxj7f+5hfaFLjS8DmkmBP+tG+BkjGGR4wMiTPzWTiAoukm6WsqOBa/9C/ttMGz
         n0ZA==
X-Gm-Message-State: APjAAAXHjW/1BMQiV0CMa+iXzbHM6ptJZ3RWKZ0z3mHNgzeHc0Zp6HBb
	/NtMKq/G+WNrimmpK5l2687FDVgodhsqBDE/VYc=
X-Received: by 2002:a9d:6a1a:: with SMTP id g26mr2971481otn.299.1551435833641;
 Fri, 01 Mar 2019 02:23:53 -0800 (PST)
MIME-Version: 1.0
References: <20190301051505.55407-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903010759370.5204@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903010759370.5204@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Fri, 1 Mar 2019 15:53:40 +0530
Message-ID: <CAPnhUpa4ymoUOL0WLMJmtfVMPk66jZZ2zQe0vT2FPbeN6AyM2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8712: rename
 bDriverStopped to driver_stopped
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c1947a058305cd47"

--000000000000c1947a058305cd47
Content-Type: text/plain; charset="UTF-8"

On Fri, 1 Mar, 2019, 12:30 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 1 Mar 2019, Himadri Pandya wrote:
>
> > Fix checkpatch warning: Avoid CameCase for struct variable
> > bDriverStopped by renaming it to driver_stopped.
>
> A series should have a cover letter (0/3).
>

Yes. Including it in the next version.

Thank you.

- Himadri


> julia
>
>
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/rtl8712/drv_types.h           |  3 +--
> >  drivers/staging/rtl8712/os_intfs.c            |  2 +-
> >  drivers/staging/rtl8712/rtl8712_cmd.c         |  4 ++--
> >  drivers/staging/rtl8712/rtl8712_io.c          |  4 ++--
> >  drivers/staging/rtl8712/rtl8712_led.c         |  6 +++---
> >  drivers/staging/rtl8712/rtl8712_recv.c        | 10 +++++-----
> >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++--------
> >  drivers/staging/rtl8712/rtl871x_mlme.c        |  6 +++---
> >  drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 ++--
> >  drivers/staging/rtl8712/usb_intf.c            |  2 +-
> >  drivers/staging/rtl8712/usb_ops_linux.c       | 18 +++++++++---------
> >  11 files changed, 37 insertions(+), 38 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/drv_types.h
> b/drivers/staging/rtl8712/drv_types.h
> > index 48d62fe6c8d4..60c5ed55ab04 100644
> > --- a/drivers/staging/rtl8712/drv_types.h
> > +++ b/drivers/staging/rtl8712/drv_types.h
> > @@ -145,7 +145,7 @@ struct _adapter {
> >       struct  hal_priv        halpriv;
> >       struct  led_priv        ledpriv;
> >       struct mp_priv  mppriv;
> > -     s32     bDriverStopped;
> > +     s32     driver_stopped;
> >       s32     bSurpriseRemoved;
> >       s32     bSuspended;
> >       u32     IsrContent;
> > @@ -180,4 +180,3 @@ static inline u8 *myid(struct eeprom_priv *peepriv)
> >  u8 r8712_usb_hal_bus_init(struct _adapter *adapter);
> >
> >  #endif /*__DRV_TYPES_H__*/
> > -
> > diff --git a/drivers/staging/rtl8712/os_intfs.c
> b/drivers/staging/rtl8712/os_intfs.c
> > index 2d3f38007299..bd2ffd0ebde9 100644
> > --- a/drivers/staging/rtl8712/os_intfs.c
> > +++ b/drivers/staging/rtl8712/os_intfs.c
> > @@ -374,7 +374,7 @@ static int netdev_open(struct net_device *pnetdev)
> >
> >       mutex_lock(&padapter->mutex_start);
> >       if (!padapter->bup) {
> > -             padapter->bDriverStopped = false;
> > +             padapter->driver_stopped = false;
> >               padapter->bSurpriseRemoved = false;
> >               padapter->bup = true;
> >               if (rtl871x_hal_init(padapter) != _SUCCESS)
> > diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c
> b/drivers/staging/rtl8712/rtl8712_cmd.c
> > index 1920d02f7c9f..c7437f979252 100644
> > --- a/drivers/staging/rtl8712/rtl8712_cmd.c
> > +++ b/drivers/staging/rtl8712/rtl8712_cmd.c
> > @@ -317,7 +317,7 @@ int r8712_cmd_thread(void *context)
> >       while (1) {
> >               if (wait_for_completion_interruptible(cmd_queue_comp))
> >                       break;
> > -             if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> > +             if (padapter->driver_stopped || padapter->bSurpriseRemoved)
> >                       break;
> >               if (r8712_register_cmd_alive(padapter) != _SUCCESS)
> >                       continue;
> > @@ -368,7 +368,7 @@ int r8712_cmd_thread(void *context)
> >                       pcmdbuf += 2; /* 8 bytes alignment */
> >                       memcpy((u8 *)pcmdbuf, pcmd->parmbuf, pcmd->cmdsz);
> >                       while (check_cmd_fifo(padapter, wr_sz) == _FAIL) {
> > -                             if (padapter->bDriverStopped ||
> > +                             if (padapter->driver_stopped ||
> >                                   padapter->bSurpriseRemoved)
> >                                       break;
> >                               msleep(100);
> > diff --git a/drivers/staging/rtl8712/rtl8712_io.c
> b/drivers/staging/rtl8712/rtl8712_io.c
> > index 8eb79f73c014..ab775e721bf2 100644
> > --- a/drivers/staging/rtl8712/rtl8712_io.c
> > +++ b/drivers/staging/rtl8712/rtl8712_io.c
> > @@ -68,7 +68,7 @@ void r8712_read_mem(struct _adapter *adapter, u32
> addr, u32 cnt, u8 *pmem)
> >  {
> >       struct intf_hdl *hdl = &adapter->pio_queue->intf;
> >
> > -     if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> > +     if (adapter->driver_stopped || adapter->bSurpriseRemoved)
> >               return;
> >
> >       hdl->io_ops._read_mem(hdl, addr, cnt, pmem);
> > @@ -85,7 +85,7 @@ void r8712_read_port(struct _adapter *adapter, u32
> addr, u32 cnt, u8 *pmem)
> >  {
> >       struct intf_hdl *hdl = &adapter->pio_queue->intf;
> >
> > -     if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> > +     if (adapter->driver_stopped || adapter->bSurpriseRemoved)
> >               return;
> >
> >       hdl->io_ops._read_port(hdl, addr, cnt, pmem);
> > diff --git a/drivers/staging/rtl8712/rtl8712_led.c
> b/drivers/staging/rtl8712/rtl8712_led.c
> > index 07fcf9b9b811..deceef345056 100644
> > --- a/drivers/staging/rtl8712/rtl8712_led.c
> > +++ b/drivers/staging/rtl8712/rtl8712_led.c
> > @@ -109,7 +109,7 @@ static void SwLedOn(struct _adapter *padapter,
> struct LED_871x *pLed)
> >  {
> >       u8      LedCfg;
> >
> > -     if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> > +     if (padapter->bSurpriseRemoved || padapter->driver_stopped)
> >               return;
> >       LedCfg = r8712_read8(padapter, LEDCFG);
> >       switch (pLed->LedPin) {
> > @@ -137,7 +137,7 @@ static void SwLedOff(struct _adapter *padapter,
> struct LED_871x *pLed)
> >  {
> >       u8      LedCfg;
> >
> > -     if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> > +     if (padapter->bSurpriseRemoved || padapter->driver_stopped)
> >               return;
> >       LedCfg = r8712_read8(padapter, LEDCFG);
> >       switch (pLed->LedPin) {
> > @@ -816,7 +816,7 @@ static void BlinkTimerCallback(struct timer_list *t)
> >       /* This fixed the crash problem on Fedora 12 when trying to do the
> >        * insmod;ifconfig up;rmmod commands.
> >        */
> > -     if (pLed->padapter->bSurpriseRemoved ||
> pLed->padapter->bDriverStopped)
> > +     if (pLed->padapter->bSurpriseRemoved ||
> pLed->padapter->driver_stopped)
> >               return;
> >       schedule_work(&pLed->BlinkWorkItem);
> >  }
> > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c
> b/drivers/staging/rtl8712/rtl8712_recv.c
> > index 5bf9070b7a28..bca4edde18b4 100644
> > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > @@ -541,7 +541,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter
> *padapter,
> >                                 (preorder_ctrl->indicate_seq + 1) % 4096;
> >                       /*indicate this recv_frame*/
> >                       if (!pattrib->amsdu) {
> > -                             if (!padapter->bDriverStopped &&
> > +                             if (!padapter->driver_stopped &&
> >                                   !padapter->bSurpriseRemoved) {
> >                                       /* indicate this recv_frame */
> >                                       r8712_recv_indicatepkt(padapter,
> > @@ -576,7 +576,7 @@ static int recv_indicatepkt_reorder(struct _adapter
> *padapter,
> >               /* s1. */
> >               r8712_wlanhdr_to_ethhdr(prframe);
> >               if (pattrib->qos != 1) {
> > -                     if (!padapter->bDriverStopped &&
> > +                     if (!padapter->driver_stopped &&
> >                           !padapter->bSurpriseRemoved) {
> >                               r8712_recv_indicatepkt(padapter, prframe);
> >                               return _SUCCESS;
> > @@ -626,7 +626,7 @@ void r8712_reordering_ctrl_timeout_handler(void
> *pcontext)
> >       struct  __queue *ppending_recvframe_queue =
> >                                &preorder_ctrl->pending_recvframe_queue;
> >
> > -     if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> > +     if (padapter->driver_stopped || padapter->bSurpriseRemoved)
> >               return;
> >       spin_lock_irqsave(&ppending_recvframe_queue->lock, irql);
> >       r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, true);
> > @@ -643,7 +643,7 @@ static int r8712_process_recv_indicatepkts(struct
> _adapter *padapter,
> >       if (phtpriv->ht_option == 1) { /*B/G/N Mode*/
> >               if (recv_indicatepkt_reorder(padapter, prframe) !=
> _SUCCESS) {
> >                       /* including perform A-MPDU Rx Ordering Buffer
> Control*/
> > -                     if (!padapter->bDriverStopped &&
> > +                     if (!padapter->driver_stopped &&
> >                           !padapter->bSurpriseRemoved)
> >                               return _FAIL;
> >               }
> > @@ -651,7 +651,7 @@ static int r8712_process_recv_indicatepkts(struct
> _adapter *padapter,
> >               retval = r8712_wlanhdr_to_ethhdr(prframe);
> >               if (retval != _SUCCESS)
> >                       return retval;
> > -             if (!padapter->bDriverStopped &&
> !padapter->bSurpriseRemoved) {
> > +             if (!padapter->driver_stopped &&
> !padapter->bSurpriseRemoved) {
> >                       /* indicate this recv_frame */
> >                       r8712_recv_indicatepkt(padapter, prframe);
> >               } else {
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index e723357ac8c0..ad9b2f76d04a 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -1118,9 +1118,9 @@ static int r8711_wx_set_scan(struct net_device
> *dev,
> >       struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> >       u8 status = true;
> >
> > -     if (padapter->bDriverStopped) {
> > -             netdev_info(dev, "In %s: bDriverStopped=%d\n",
> > -                         __func__, padapter->bDriverStopped);
> > +     if (padapter->driver_stopped) {
> > +             netdev_info(dev, "In %s: driver_stopped=%d\n",
> > +                         __func__, padapter->driver_stopped);
> >               return -1;
> >       }
> >       if (!padapter->bup)
> > @@ -1175,7 +1175,7 @@ static int r8711_wx_get_scan(struct net_device
> *dev,
> >       char *stop = ev + wrqu->data.length;
> >       u32 ret = 0, cnt = 0;
> >
> > -     if (padapter->bDriverStopped)
> > +     if (padapter->driver_stopped)
> >               return -EINVAL;
> >       while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
> >                            _FW_UNDER_LINKING)) {
> > @@ -1938,7 +1938,7 @@ static int r871x_get_ap_info(struct net_device
> *dev,
> >       u8 bssid[ETH_ALEN];
> >       char data[33];
> >
> > -     if (padapter->bDriverStopped || (pdata == NULL))
> > +     if (padapter->driver_stopped || (pdata == NULL))
> >               return -EINVAL;
> >       while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
> >                            _FW_UNDER_LINKING)) {
> > @@ -2002,7 +2002,7 @@ static int r871x_set_pid(struct net_device *dev,
> >       struct _adapter *padapter = netdev_priv(dev);
> >       struct iw_point *pdata = &wrqu->data;
> >
> > -     if ((padapter->bDriverStopped) || (pdata == NULL))
> > +     if ((padapter->driver_stopped) || (pdata == NULL))
> >               return -EINVAL;
> >       if (copy_from_user(&padapter->pid, pdata->pointer, sizeof(int)))
> >               return -EINVAL;
> > @@ -2018,7 +2018,7 @@ static int r871x_set_chplan(struct net_device *dev,
> >       struct iw_point *pdata = &wrqu->data;
> >       int ch_plan = -1;
> >
> > -     if ((padapter->bDriverStopped) || (pdata == NULL)) {
> > +     if ((padapter->driver_stopped) || (pdata == NULL)) {
> >               ret = -EINVAL;
> >               goto exit;
> >       }
> > @@ -2038,7 +2038,7 @@ static int r871x_wps_start(struct net_device *dev,
> >       struct iw_point *pdata = &wrqu->data;
> >       u32   u32wps_start = 0;
> >
> > -     if ((padapter->bDriverStopped) || (pdata == NULL))
> > +     if ((padapter->driver_stopped) || (pdata == NULL))
> >               return -EINVAL;
> >       if (copy_from_user((void *)&u32wps_start, pdata->pointer, 4))
> >               return -EFAULT;
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index 3f17ef6f7e39..a10a5fbabb33 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -174,7 +174,7 @@ sint r8712_if_up(struct _adapter *padapter)
> >  {
> >       sint res;
> >
> > -     if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
> > +     if (padapter->driver_stopped || padapter->bSurpriseRemoved ||
> >           !check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {
> >               res = false;
> >       } else {
> > @@ -1055,7 +1055,7 @@ void _r8712_join_timeout_handler(struct _adapter
> *adapter)
> >       unsigned long irqL;
> >       struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
> >
> > -     if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> > +     if (adapter->driver_stopped || adapter->bSurpriseRemoved)
> >               return;
> >       spin_lock_irqsave(&pmlmepriv->lock, irqL);
> >       _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
> > @@ -1084,7 +1084,7 @@ void r8712_scan_timeout_handler (struct _adapter
> *adapter)
> >
> >  void _r8712_dhcp_timeout_handler (struct _adapter *adapter)
> >  {
> > -     if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> > +     if (adapter->driver_stopped || adapter->bSurpriseRemoved)
> >               return;
> >       if (adapter->pwrctrlpriv.pwr_mode !=
> adapter->registrypriv.power_mgnt)
> >               r8712_set_ps_mode(adapter,
> adapter->registrypriv.power_mgnt,
> > diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
> b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
> > index 351984fe254e..ab2be8507941 100644
> > --- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
> > +++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
> > @@ -32,7 +32,7 @@ void r8712_set_rpwm(struct _adapter *padapter, u8 val8)
> >               if (pwrpriv->rpwm_retry == 0)
> >                       return;
> >       }
> > -     if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> > +     if (padapter->driver_stopped || padapter->bSurpriseRemoved)
> >               return;
> >       rpwm = val8 | pwrpriv->tog;
> >       switch (val8) {
> > @@ -117,7 +117,7 @@ static void _rpwm_check_handler (struct _adapter
> *padapter)
> >  {
> >       struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
> >
> > -     if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> > +     if (padapter->driver_stopped || padapter->bSurpriseRemoved)
> >               return;
> >       if (pwrpriv->cpwm != pwrpriv->rpwm)
> >               schedule_work(&pwrpriv->rpwm_workitem);
> > diff --git a/drivers/staging/rtl8712/usb_intf.c
> b/drivers/staging/rtl8712/usb_intf.c
> > index 005010de9997..cb66ed4bbeac 100644
> > --- a/drivers/staging/rtl8712/usb_intf.c
> > +++ b/drivers/staging/rtl8712/usb_intf.c
> > @@ -289,7 +289,7 @@ void r871x_dev_unload(struct _adapter *padapter)
> >  {
> >       if (padapter->bup) {
> >               /*s1.*/
> > -             padapter->bDriverStopped = true;
> > +             padapter->driver_stopped = true;
> >
> >               /*s3.*/
> >               rtl871x_intf_stop(padapter);
> > diff --git a/drivers/staging/rtl8712/usb_ops_linux.c
> b/drivers/staging/rtl8712/usb_ops_linux.c
> > index ee5968808332..c4e66f19349e 100644
> > --- a/drivers/staging/rtl8712/usb_ops_linux.c
> > +++ b/drivers/staging/rtl8712/usb_ops_linux.c
> > @@ -147,7 +147,7 @@ static void usb_write_mem_complete(struct urb *purb)
> >
> >       if (purb->status != 0) {
> >               if (purb->status == (-ESHUTDOWN))
> > -                     padapter->bDriverStopped = true;
> > +                     padapter->driver_stopped = true;
> >               else
> >                       padapter->bSurpriseRemoved = true;
> >       }
> > @@ -164,7 +164,7 @@ void r8712_usb_write_mem(struct intf_hdl *pintfhdl,
> u32 addr, u32 cnt, u8 *wmem)
> >       struct usb_device *pusbd = pdvobj->pusbdev;
> >       struct urb *piorw_urb = pintfpriv->piorw_urb;
> >
> > -     if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved) ||
> > +     if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
> >           (padapter->pwrctrlpriv.pnp_bstop_trx))
> >               return;
> >       /* translate DMA FIFO addr to pipehandle */
> > @@ -186,7 +186,7 @@ static void r8712_usb_read_port_complete(struct urb
> *purb)
> >       struct _adapter *padapter = (struct _adapter *)precvbuf->adapter;
> >       struct recv_priv *precvpriv = &padapter->recvpriv;
> >
> > -     if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> > +     if (padapter->bSurpriseRemoved || padapter->driver_stopped)
> >               return;
> >       if (purb->status == 0) { /* SUCCESS */
> >               if ((purb->actual_length > (MAX_RECVBUF_SZ)) ||
> > @@ -218,11 +218,11 @@ static void r8712_usb_read_port_complete(struct
> urb *purb)
> >               case -EPIPE:
> >               case -ENODEV:
> >               case -ESHUTDOWN:
> > -                     padapter->bDriverStopped = true;
> > +                     padapter->driver_stopped = true;
> >                       break;
> >               case -ENOENT:
> >                       if (!padapter->bSuspended) {
> > -                             padapter->bDriverStopped = true;
> > +                             padapter->driver_stopped = true;
> >                               break;
> >                       }
> >                       /* Fall through. */
> > @@ -254,7 +254,7 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl,
> u32 addr, u32 cnt, u8 *rmem)
> >       struct recv_priv *precvpriv = &adapter->recvpriv;
> >       struct usb_device *pusbd = pdvobj->pusbdev;
> >
> > -     if (adapter->bDriverStopped || adapter->bSurpriseRemoved ||
> > +     if (adapter->driver_stopped || adapter->bSurpriseRemoved ||
> >           adapter->pwrctrlpriv.pnp_bstop_trx || !precvbuf)
> >               return _FAIL;
> >       r8712_init_recvbuf(adapter, precvbuf);
> > @@ -314,9 +314,9 @@ void r8712_xmit_bh(void *priv)
> >       struct _adapter *padapter = priv;
> >       struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
> >
> > -     if (padapter->bDriverStopped ||
> > +     if (padapter->driver_stopped ||
> >           padapter->bSurpriseRemoved) {
> > -             netdev_err(padapter->pnetdev, "xmit_bh => bDriverStopped
> or bSurpriseRemoved\n");
> > +             netdev_err(padapter->pnetdev, "xmit_bh => driver_stopped
> or bSurpriseRemoved\n");
> >               return;
> >       }
> >       ret = r8712_xmitframe_complete(padapter, pxmitpriv, NULL);
> > @@ -390,7 +390,7 @@ u32 r8712_usb_write_port(struct intf_hdl *pintfhdl,
> u32 addr, u32 cnt, u8 *wmem)
> >       struct usb_device *pusbd = pdvobj->pusbdev;
> >       struct pkt_attrib *pattrib = &pxmitframe->attrib;
> >
> > -     if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved) ||
> > +     if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
> >           (padapter->pwrctrlpriv.pnp_bstop_trx))
> >               return _FAIL;
> >       for (i = 0; i < 8; i++) {
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190301051505.55407-1-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000c1947a058305cd47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 1 Mar, 2019, 12:30 PM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Fri, 1 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; Fix checkpatch warning: Avoid CameCase for struct variable<br>
&gt; bDriverStopped by renaming it to driver_stopped.<br>
<br>
A series should have a cover letter (0/3).<br></blockquote></div></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Yes. Including it in the next ver=
sion.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you.</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">- Himadri</div><div dir=3D"auto=
"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
julia<br>
<br>
<br>
&gt;<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/drv_types.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 3 +--<br>
&gt;=C2=A0 drivers/staging/rtl8712/os_intfs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_cmd.c=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_io.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_led.c=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 6 +++---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_recv.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 10 +++++-----<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++-----=
---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 6 +++---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_pwrctrl.c=C2=A0 =C2=A0 =C2=A0|=
=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/rtl8712/usb_intf.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/rtl8712/usb_ops_linux.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 18 +++++++++---------<br>
&gt;=C2=A0 11 files changed, 37 insertions(+), 38 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl=
8712/drv_types.h<br>
&gt; index 48d62fe6c8d4..60c5ed55ab04 100644<br>
&gt; --- a/drivers/staging/rtl8712/drv_types.h<br>
&gt; +++ b/drivers/staging/rtl8712/drv_types.h<br>
&gt; @@ -145,7 +145,7 @@ struct _adapter {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 hal_priv=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 halpriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 led_priv=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ledpriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct mp_priv=C2=A0 mppriv;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0s32=C2=A0 =C2=A0 =C2=A0bDriverStopped;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0s32=C2=A0 =C2=A0 =C2=A0driver_stopped;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0s32=C2=A0 =C2=A0 =C2=A0bSurpriseRemoved;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0s32=C2=A0 =C2=A0 =C2=A0bSuspended;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32=C2=A0 =C2=A0 =C2=A0IsrContent;<br>
&gt; @@ -180,4 +180,3 @@ static inline u8 *myid(struct eeprom_priv *peepriv=
)<br>
&gt;=C2=A0 u8 r8712_usb_hal_bus_init(struct _adapter *adapter);<br>
&gt;<br>
&gt;=C2=A0 #endif /*__DRV_TYPES_H__*/<br>
&gt; -<br>
&gt; diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8=
712/os_intfs.c<br>
&gt; index 2d3f38007299..bd2ffd0ebde9 100644<br>
&gt; --- a/drivers/staging/rtl8712/os_intfs.c<br>
&gt; +++ b/drivers/staging/rtl8712/os_intfs.c<br>
&gt; @@ -374,7 +374,7 @@ static int netdev_open(struct net_device *pnetdev)=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;padapter-&gt;mutex_start);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!padapter-&gt;bup) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;bDriverS=
topped =3D false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;driver_s=
topped =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;bSu=
rpriseRemoved =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;bup=
 =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (rtl871x_hal_=
init(padapter) !=3D _SUCCESS)<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/r=
tl8712/rtl8712_cmd.c<br>
&gt; index 1920d02f7c9f..c7437f979252 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_cmd.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_cmd.c<br>
&gt; @@ -317,7 +317,7 @@ int r8712_cmd_thread(void *context)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (1) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (wait_for_com=
pletion_interruptible(cmd_queue_comp))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDri=
verStopped || padapter-&gt;bSurpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driv=
er_stopped || padapter-&gt;bSurpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (r8712_regist=
er_cmd_alive(padapter) !=3D _SUCCESS)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue;<br>
&gt; @@ -368,7 +368,7 @@ int r8712_cmd_thread(void *context)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pcmdbuf +=3D 2; /* 8 bytes alignment */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0memcpy((u8 *)pcmdbuf, pcmd-&gt;parmbuf, pcmd-&gt;cmdsz);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0while (check_cmd_fifo(padapter, wr_sz) =3D=3D _FAIL) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;bSurpri=
seRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msleep(100);<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl8712_io.c b/drivers/staging/rt=
l8712/rtl8712_io.c<br>
&gt; index 8eb79f73c014..ab775e721bf2 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_io.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_io.c<br>
&gt; @@ -68,7 +68,7 @@ void r8712_read_mem(struct _adapter *adapter, u32 ad=
dr, u32 cnt, u8 *pmem)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct intf_hdl *hdl =3D &amp;adapter-&gt;pi=
o_queue-&gt;intf;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;bDriverStopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;driver_stopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hdl-&gt;io_ops._read_mem(hdl, addr, cnt, pme=
m);<br>
&gt; @@ -85,7 +85,7 @@ void r8712_read_port(struct _adapter *adapter, u32 a=
ddr, u32 cnt, u8 *pmem)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct intf_hdl *hdl =3D &amp;adapter-&gt;pi=
o_queue-&gt;intf;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;bDriverStopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;driver_stopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hdl-&gt;io_ops._read_port(hdl, addr, cnt, pm=
em);<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/r=
tl8712/rtl8712_led.c<br>
&gt; index 07fcf9b9b811..deceef345056 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_led.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_led.c<br>
&gt; @@ -109,7 +109,7 @@ static void SwLedOn(struct _adapter *padapter, str=
uct LED_871x *pLed)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8=C2=A0 =C2=A0 =C2=A0 LedCfg;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bSurpriseRemoved || padapter-&gt=
;bDriverStopped)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bSurpriseRemoved || padapter-&gt=
;driver_stopped)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LedCfg =3D r8712_read8(padapter, LEDCFG);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (pLed-&gt;LedPin) {<br>
&gt; @@ -137,7 +137,7 @@ static void SwLedOff(struct _adapter *padapter, st=
ruct LED_871x *pLed)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8=C2=A0 =C2=A0 =C2=A0 LedCfg;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bSurpriseRemoved || padapter-&gt=
;bDriverStopped)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bSurpriseRemoved || padapter-&gt=
;driver_stopped)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LedCfg =3D r8712_read8(padapter, LEDCFG);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (pLed-&gt;LedPin) {<br>
&gt; @@ -816,7 +816,7 @@ static void BlinkTimerCallback(struct timer_list *=
t)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* This fixed the crash problem on Fedora 12=
 when trying to do the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * insmod;ifconfig up;rmmod commands.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pLed-&gt;padapter-&gt;bSurpriseRemoved || pLe=
d-&gt;padapter-&gt;bDriverStopped)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (pLed-&gt;padapter-&gt;bSurpriseRemoved || pLe=
d-&gt;padapter-&gt;driver_stopped)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0schedule_work(&amp;pLed-&gt;BlinkWorkItem);<=
br>
&gt;=C2=A0 }<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/=
rtl8712/rtl8712_recv.c<br>
&gt; index 5bf9070b7a28..bca4edde18b4 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_recv.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_recv.c<br>
&gt; @@ -541,7 +541,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapt=
er *padapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(preorder_ctrl-&gt;indicate=
_seq + 1) % 4096;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/*indicate this recv_frame*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (!pattrib-&gt;amsdu) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!padapter-&gt;bDriverStopped &amp;&a=
mp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!padapter-&gt;driver_stopped &amp;&a=
mp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!padapter-&gt;bSurpr=
iseRemoved) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* ind=
icate this recv_frame */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_=
recv_indicatepkt(padapter,<br>
&gt; @@ -576,7 +576,7 @@ static int recv_indicatepkt_reorder(struct _adapte=
r *padapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* s1. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_wlanhdr_to=
_ethhdr(prframe);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pattrib-&gt;=
qos !=3D 1) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (!padapter-&gt;bDriverStopped &amp;&amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (!padapter-&gt;driver_stopped &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0!padapter-&gt;bSurpriseRemoved) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_recv_indicatepkt(padapter, p=
rframe);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _SUCCESS;<br>
&gt; @@ -626,7 +626,7 @@ void r8712_reordering_ctrl_timeout_handler(void *p=
context)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct=C2=A0 __queue *ppending_recvframe_que=
ue =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;preorder_ctrl-&gt;pending_re=
cvframe_queue;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped || padapter-&gt;b=
SurpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || padapter-&gt;b=
SurpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&amp;ppending_recvframe_qu=
eue-&gt;lock, irql);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_recv_indicatepkts_in_order(padapter, p=
reorder_ctrl, true);<br>
&gt; @@ -643,7 +643,7 @@ static int r8712_process_recv_indicatepkts(struct =
_adapter *padapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (phtpriv-&gt;ht_option =3D=3D 1) { /*B/G/=
N Mode*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (recv_indicat=
epkt_reorder(padapter, prframe) !=3D _SUCCESS) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* including perform A-MPDU Rx Ordering Buffer Control*/<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (!padapter-&gt;bDriverStopped &amp;&amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (!padapter-&gt;driver_stopped &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0!padapter-&gt;bSurpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -651,7 +651,7 @@ static int r8712_process_recv_indicatepkts(struct =
_adapter *padapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D r8712=
_wlanhdr_to_ethhdr(prframe);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (retval !=3D =
_SUCCESS)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return retval;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!padapter-&gt;bDr=
iverStopped &amp;&amp; !padapter-&gt;bSurpriseRemoved) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!padapter-&gt;dri=
ver_stopped &amp;&amp; !padapter-&gt;bSurpriseRemoved) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* indicate this recv_frame */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0r8712_recv_indicatepkt(padapter, prframe);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/s=
taging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; index e723357ac8c0..ad9b2f76d04a 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; @@ -1118,9 +1118,9 @@ static int r8711_wx_set_scan(struct net_device *=
dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct mlme_priv *pmlmepriv =3D &amp;padapte=
r-&gt;mlmepriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 status =3D true;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_info(dev, &quo=
t;In %s: bDriverStopped=3D%d\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0__func__, padapter-&gt;bDriverStopped);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_info(dev, &quo=
t;In %s: driver_stopped=3D%d\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0__func__, padapter-&gt;driver_stopped);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!padapter-&gt;bup)<br>
&gt; @@ -1175,7 +1175,7 @@ static int r8711_wx_get_scan(struct net_device *=
dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char *stop =3D ev + wrqu-&gt;data.length;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 ret =3D 0, cnt =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (check_fwstate(pmlmepriv, _FW_UNDER_SU=
RVEY |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 _FW_UNDER_LINKING)) {<br>
&gt; @@ -1938,7 +1938,7 @@ static int r871x_get_ap_info(struct net_device *=
dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 bssid[ETH_ALEN];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char data[33];<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped || (pdata =3D=3D =
NULL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || (pdata =3D=3D =
NULL))<br>
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
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;bDriverStopped) || (pdata =3D=
=3D NULL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (pdata =3D=
=3D NULL))<br>
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
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;bDriverStopped) || (pdata =3D=
=3D NULL)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (pdata =3D=
=3D NULL)) {<br>
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
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;bDriverStopped) || (pdata =3D=
=3D NULL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (pdata =3D=
=3D NULL))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (copy_from_user((void *)&amp;u32wps_start=
, pdata-&gt;pointer, 4))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EFAULT;<=
br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/=
rtl8712/rtl871x_mlme.c<br>
&gt; index 3f17ef6f7e39..a10a5fbabb33 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
&gt; @@ -174,7 +174,7 @@ sint r8712_if_up(struct _adapter *padapter)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sint res;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped || padapter-&gt;b=
SurpriseRemoved ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || padapter-&gt;b=
SurpriseRemoved ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!check_fwstate(&amp;padapter-&=
gt;mlmepriv, _FW_LINKED)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D false;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; @@ -1055,7 +1055,7 @@ void _r8712_join_timeout_handler(struct _adapter=
 *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long irqL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct mlme_priv *pmlmepriv =3D &amp;adapter=
-&gt;mlmepriv;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;bDriverStopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;driver_stopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&amp;pmlmepriv-&gt;lock, i=
rqL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);=
<br>
&gt; @@ -1084,7 +1084,7 @@ void r8712_scan_timeout_handler (struct _adapter=
 *adapter)<br>
&gt;<br>
&gt;=C2=A0 void _r8712_dhcp_timeout_handler (struct _adapter *adapter)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;bDriverStopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;driver_stopped || adapter-&gt;bSu=
rpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (adapter-&gt;pwrctrlpriv.pwr_mode !=3D ad=
apter-&gt;registrypriv.power_mgnt)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_set_ps_mod=
e(adapter, adapter-&gt;registrypriv.power_mgnt,<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/stagi=
ng/rtl8712/rtl871x_pwrctrl.c<br>
&gt; index 351984fe254e..ab2be8507941 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c<br>
&gt; @@ -32,7 +32,7 @@ void r8712_set_rpwm(struct _adapter *padapter, u8 va=
l8)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrpriv-&gt;=
rpwm_retry =3D=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped || padapter-&gt;b=
SurpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || padapter-&gt;b=
SurpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rpwm =3D val8 | pwrpriv-&gt;tog;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (val8) {<br>
&gt; @@ -117,7 +117,7 @@ static void _rpwm_check_handler (struct _adapter *=
padapter)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct pwrctrl_priv *pwrpriv =3D &amp;padapt=
er-&gt;pwrctrlpriv;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped || padapter-&gt;b=
SurpriseRemoved)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped || padapter-&gt;b=
SurpriseRemoved)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrpriv-&gt;cpwm !=3D pwrpriv-&gt;rpwm)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0schedule_work(&a=
mp;pwrpriv-&gt;rpwm_workitem);<br>
&gt; diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8=
712/usb_intf.c<br>
&gt; index 005010de9997..cb66ed4bbeac 100644<br>
&gt; --- a/drivers/staging/rtl8712/usb_intf.c<br>
&gt; +++ b/drivers/staging/rtl8712/usb_intf.c<br>
&gt; @@ -289,7 +289,7 @@ void r871x_dev_unload(struct _adapter *padapter)<b=
r>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bup) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*s1.*/<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;bDriverS=
topped =3D true;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;driver_s=
topped =3D true;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*s3.*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtl871x_intf_sto=
p(padapter);<br>
&gt; diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging=
/rtl8712/usb_ops_linux.c<br>
&gt; index ee5968808332..c4e66f19349e 100644<br>
&gt; --- a/drivers/staging/rtl8712/usb_ops_linux.c<br>
&gt; +++ b/drivers/staging/rtl8712/usb_ops_linux.c<br>
&gt; @@ -147,7 +147,7 @@ static void usb_write_mem_complete(struct urb *pur=
b)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (purb-&gt;status !=3D 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (purb-&gt;sta=
tus =3D=3D (-ESHUTDOWN))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0padapter-&gt;bDriverStopped =3D true;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0padapter-&gt;driver_stopped =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0padapter-&gt;bSurpriseRemoved =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -164,7 +164,7 @@ void r8712_usb_write_mem(struct intf_hdl *pintfhdl=
, u32 addr, u32 cnt, u8 *wmem)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct usb_device *pusbd =3D pdvobj-&gt;pusb=
dev;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct urb *piorw_urb =3D pintfpriv-&gt;pior=
w_urb;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;bDriverStopped) || (padapter-&g=
t;bSurpriseRemoved) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (padapter-&g=
t;bSurpriseRemoved) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(padapter-&gt;pwrctrlpriv.pnp_=
bstop_trx))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* translate DMA FIFO addr to pipehandle */<=
br>
&gt; @@ -186,7 +186,7 @@ static void r8712_usb_read_port_complete(struct ur=
b *purb)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct _adapter *padapter =3D (struct _adapt=
er *)precvbuf-&gt;adapter;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct recv_priv *precvpriv =3D &amp;padapte=
r-&gt;recvpriv;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bSurpriseRemoved || padapter-&gt=
;bDriverStopped)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bSurpriseRemoved || padapter-&gt=
;driver_stopped)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (purb-&gt;status =3D=3D 0) { /* SUCCESS *=
/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((purb-&gt;ac=
tual_length &gt; (MAX_RECVBUF_SZ)) ||<br>
&gt; @@ -218,11 +218,11 @@ static void r8712_usb_read_port_complete(struct =
urb *purb)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case -EPIPE:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case -ENODEV:<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case -ESHUTDOWN:=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0padapter-&gt;bDriverStopped =3D true;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0padapter-&gt;driver_stopped =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case -ENOENT:<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (!padapter-&gt;bSuspended) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;bDriverStopped =3D true;<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;driver_stopped =3D true;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* Fall through. */<br>
&gt; @@ -254,7 +254,7 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl,=
 u32 addr, u32 cnt, u8 *rmem)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct recv_priv *precvpriv =3D &amp;adapter=
-&gt;recvpriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct usb_device *pusbd =3D pdvobj-&gt;pusb=
dev;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;bDriverStopped || adapter-&gt;bSu=
rpriseRemoved ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (adapter-&gt;driver_stopped || adapter-&gt;bSu=
rpriseRemoved ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;pwrctrlpriv.pnp_bs=
top_trx || !precvbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_init_recvbuf(adapter, precvbuf);<br>
&gt; @@ -314,9 +314,9 @@ void r8712_xmit_bh(void *priv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct _adapter *padapter =3D priv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct xmit_priv *pxmitpriv =3D &amp;padapte=
r-&gt;xmitpriv;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;bDriverStopped ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (padapter-&gt;driver_stopped ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;bSurpriseRemoved)=
 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(padapter-&=
gt;pnetdev, &quot;xmit_bh =3D&gt; bDriverStopped or bSurpriseRemoved\n&quot=
;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(padapter-&=
gt;pnetdev, &quot;xmit_bh =3D&gt; driver_stopped or bSurpriseRemoved\n&quot=
;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D r8712_xmitframe_complete(padapter, p=
xmitpriv, NULL);<br>
&gt; @@ -390,7 +390,7 @@ u32 r8712_usb_write_port(struct intf_hdl *pintfhdl=
, u32 addr, u32 cnt, u8 *wmem)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct usb_device *pusbd =3D pdvobj-&gt;pusb=
dev;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct pkt_attrib *pattrib =3D &amp;pxmitfra=
me-&gt;attrib;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;bDriverStopped) || (padapter-&g=
t;bSurpriseRemoved) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((padapter-&gt;driver_stopped) || (padapter-&g=
t;bSurpriseRemoved) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(padapter-&gt;pwrctrlpriv.pnp_=
bstop_trx))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; 8; i++) {<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190301051505.55407-1-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190301051505.55407-1-himadri18.07%40gmail.=
com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--000000000000c1947a058305cd47--

