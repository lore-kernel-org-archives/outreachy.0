X-GM-THRID: 6663286701018841088
X-Received: by 2002:a50:915d:: with SMTP id f29mr458241eda.12.1551423610647;
        Thu, 28 Feb 2019 23:00:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3645:: with SMTP id r5ls1631433ejb.4.gmail; Thu, 28
 Feb 2019 23:00:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqyBKRsOgIzwh6m29Z2rAibjcut9R80b99vMeFlsqZqPcVgf92oEPi0FamEaB1BKDYS3OzUj
X-Received: by 2002:a17:906:14c2:: with SMTP id y2mr309829ejc.11.1551423609938;
        Thu, 28 Feb 2019 23:00:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551423609; cv=none;
        d=google.com; s=arc-20160816;
        b=WJue0t3LpDdPGsQqBBgyi7QNEsthqo/Zq1dv0Pf1uNn7R0yZS++UGrzPiCEgHUjiQD
         r2Vc9OM5X75qI+LNgljOMPzSY3hARAEW3T7hOzm+j6Vs4y8rwfFOXE2HGpteipWYYda4
         eawi0szAEQIm0152oRrzG12l95zKgMcHVRIB9hIuBsh4gJbrWS9fFgbzVMKbp5vJI33m
         +oyfR+6f7oWoCKnRNcUzH7cBF80Ep+B1TZntkxHWoyq10cqHjEVkBk80qOSIetbAEMBK
         cPvzVlN94OmazVjd1hh/wb8ZLrG2lXwb5/7vR6QQoAQPMIS0vS7eve55aKqfQHqI/sTz
         qf0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fxajKqI1YBc2efSawJMnK4Jfp0E+e/nhUXdymePb+mQ=;
        b=tfVjj0NSPl1b7hLrQlS/PQIwcwX+4kDkiItZu7QAG+ND/jKoVym3i+BHLsTlKZD36O
         Zhg9VwJlw+VzjDyGIuawWgqugVeU/k4uHqhjfLdmW7ncK/LuDZwmh3C6nD6erCajAEuV
         09qa6BSGkBdPAgH/Ye9mvotyj5cC8yQoQ3N6P0Ah9SMn2CkVWIQSy5BJ61/Lnfx15yDq
         DLiBuDb34TROG7b6pDtiI9VMf7RUa/5pjXtCwAuzyOVe3XOcuby+/LzHOGhdnbPkJE9X
         9oJFT+XN4/SsJvWU3tsE+N67y0H/sZR5lrGk/Zid974AeISHh7wMBQ5vt1JX0UH44KrX
         +C+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si633770edb.1.2019.02.28.23.00.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 23:00:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,426,1544482800"; 
   d="scan'208";a="371447924"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2019 07:59:58 +0100
Date: Fri, 1 Mar 2019 07:59:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8712: rename
 bDriverStopped to driver_stopped
In-Reply-To: <20190301051505.55407-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903010759370.5204@hadrien>
References: <20190301051505.55407-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Mar 2019, Himadri Pandya wrote:

> Fix checkpatch warning: Avoid CameCase for struct variable
> bDriverStopped by renaming it to driver_stopped.

A series should have a cover letter (0/3).

julia


>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h           |  3 +--
>  drivers/staging/rtl8712/os_intfs.c            |  2 +-
>  drivers/staging/rtl8712/rtl8712_cmd.c         |  4 ++--
>  drivers/staging/rtl8712/rtl8712_io.c          |  4 ++--
>  drivers/staging/rtl8712/rtl8712_led.c         |  6 +++---
>  drivers/staging/rtl8712/rtl8712_recv.c        | 10 +++++-----
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++--------
>  drivers/staging/rtl8712/rtl871x_mlme.c        |  6 +++---
>  drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 ++--
>  drivers/staging/rtl8712/usb_intf.c            |  2 +-
>  drivers/staging/rtl8712/usb_ops_linux.c       | 18 +++++++++---------
>  11 files changed, 37 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 48d62fe6c8d4..60c5ed55ab04 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -145,7 +145,7 @@ struct _adapter {
>  	struct	hal_priv	halpriv;
>  	struct	led_priv	ledpriv;
>  	struct mp_priv  mppriv;
> -	s32	bDriverStopped;
> +	s32	driver_stopped;
>  	s32	bSurpriseRemoved;
>  	s32	bSuspended;
>  	u32	IsrContent;
> @@ -180,4 +180,3 @@ static inline u8 *myid(struct eeprom_priv *peepriv)
>  u8 r8712_usb_hal_bus_init(struct _adapter *adapter);
>
>  #endif /*__DRV_TYPES_H__*/
> -
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index 2d3f38007299..bd2ffd0ebde9 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -374,7 +374,7 @@ static int netdev_open(struct net_device *pnetdev)
>
>  	mutex_lock(&padapter->mutex_start);
>  	if (!padapter->bup) {
> -		padapter->bDriverStopped = false;
> +		padapter->driver_stopped = false;
>  		padapter->bSurpriseRemoved = false;
>  		padapter->bup = true;
>  		if (rtl871x_hal_init(padapter) != _SUCCESS)
> diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
> index 1920d02f7c9f..c7437f979252 100644
> --- a/drivers/staging/rtl8712/rtl8712_cmd.c
> +++ b/drivers/staging/rtl8712/rtl8712_cmd.c
> @@ -317,7 +317,7 @@ int r8712_cmd_thread(void *context)
>  	while (1) {
>  		if (wait_for_completion_interruptible(cmd_queue_comp))
>  			break;
> -		if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> +		if (padapter->driver_stopped || padapter->bSurpriseRemoved)
>  			break;
>  		if (r8712_register_cmd_alive(padapter) != _SUCCESS)
>  			continue;
> @@ -368,7 +368,7 @@ int r8712_cmd_thread(void *context)
>  			pcmdbuf += 2; /* 8 bytes alignment */
>  			memcpy((u8 *)pcmdbuf, pcmd->parmbuf, pcmd->cmdsz);
>  			while (check_cmd_fifo(padapter, wr_sz) == _FAIL) {
> -				if (padapter->bDriverStopped ||
> +				if (padapter->driver_stopped ||
>  				    padapter->bSurpriseRemoved)
>  					break;
>  				msleep(100);
> diff --git a/drivers/staging/rtl8712/rtl8712_io.c b/drivers/staging/rtl8712/rtl8712_io.c
> index 8eb79f73c014..ab775e721bf2 100644
> --- a/drivers/staging/rtl8712/rtl8712_io.c
> +++ b/drivers/staging/rtl8712/rtl8712_io.c
> @@ -68,7 +68,7 @@ void r8712_read_mem(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
>  {
>  	struct intf_hdl *hdl = &adapter->pio_queue->intf;
>
> -	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> +	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
>  		return;
>
>  	hdl->io_ops._read_mem(hdl, addr, cnt, pmem);
> @@ -85,7 +85,7 @@ void r8712_read_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
>  {
>  	struct intf_hdl *hdl = &adapter->pio_queue->intf;
>
> -	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> +	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
>  		return;
>
>  	hdl->io_ops._read_port(hdl, addr, cnt, pmem);
> diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
> index 07fcf9b9b811..deceef345056 100644
> --- a/drivers/staging/rtl8712/rtl8712_led.c
> +++ b/drivers/staging/rtl8712/rtl8712_led.c
> @@ -109,7 +109,7 @@ static void SwLedOn(struct _adapter *padapter, struct LED_871x *pLed)
>  {
>  	u8	LedCfg;
>
> -	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> +	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
>  		return;
>  	LedCfg = r8712_read8(padapter, LEDCFG);
>  	switch (pLed->LedPin) {
> @@ -137,7 +137,7 @@ static void SwLedOff(struct _adapter *padapter, struct LED_871x *pLed)
>  {
>  	u8	LedCfg;
>
> -	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> +	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
>  		return;
>  	LedCfg = r8712_read8(padapter, LEDCFG);
>  	switch (pLed->LedPin) {
> @@ -816,7 +816,7 @@ static void BlinkTimerCallback(struct timer_list *t)
>  	/* This fixed the crash problem on Fedora 12 when trying to do the
>  	 * insmod;ifconfig up;rmmod commands.
>  	 */
> -	if (pLed->padapter->bSurpriseRemoved || pLed->padapter->bDriverStopped)
> +	if (pLed->padapter->bSurpriseRemoved || pLed->padapter->driver_stopped)
>  		return;
>  	schedule_work(&pLed->BlinkWorkItem);
>  }
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index 5bf9070b7a28..bca4edde18b4 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -541,7 +541,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
>  				  (preorder_ctrl->indicate_seq + 1) % 4096;
>  			/*indicate this recv_frame*/
>  			if (!pattrib->amsdu) {
> -				if (!padapter->bDriverStopped &&
> +				if (!padapter->driver_stopped &&
>  				    !padapter->bSurpriseRemoved) {
>  					/* indicate this recv_frame */
>  					r8712_recv_indicatepkt(padapter,
> @@ -576,7 +576,7 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
>  		/* s1. */
>  		r8712_wlanhdr_to_ethhdr(prframe);
>  		if (pattrib->qos != 1) {
> -			if (!padapter->bDriverStopped &&
> +			if (!padapter->driver_stopped &&
>  			    !padapter->bSurpriseRemoved) {
>  				r8712_recv_indicatepkt(padapter, prframe);
>  				return _SUCCESS;
> @@ -626,7 +626,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
>  	struct  __queue *ppending_recvframe_queue =
>  				 &preorder_ctrl->pending_recvframe_queue;
>
> -	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> +	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
>  		return;
>  	spin_lock_irqsave(&ppending_recvframe_queue->lock, irql);
>  	r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, true);
> @@ -643,7 +643,7 @@ static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
>  	if (phtpriv->ht_option == 1) { /*B/G/N Mode*/
>  		if (recv_indicatepkt_reorder(padapter, prframe) != _SUCCESS) {
>  			/* including perform A-MPDU Rx Ordering Buffer Control*/
> -			if (!padapter->bDriverStopped &&
> +			if (!padapter->driver_stopped &&
>  			    !padapter->bSurpriseRemoved)
>  				return _FAIL;
>  		}
> @@ -651,7 +651,7 @@ static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
>  		retval = r8712_wlanhdr_to_ethhdr(prframe);
>  		if (retval != _SUCCESS)
>  			return retval;
> -		if (!padapter->bDriverStopped && !padapter->bSurpriseRemoved) {
> +		if (!padapter->driver_stopped && !padapter->bSurpriseRemoved) {
>  			/* indicate this recv_frame */
>  			r8712_recv_indicatepkt(padapter, prframe);
>  		} else {
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index e723357ac8c0..ad9b2f76d04a 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -1118,9 +1118,9 @@ static int r8711_wx_set_scan(struct net_device *dev,
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>  	u8 status = true;
>
> -	if (padapter->bDriverStopped) {
> -		netdev_info(dev, "In %s: bDriverStopped=%d\n",
> -			    __func__, padapter->bDriverStopped);
> +	if (padapter->driver_stopped) {
> +		netdev_info(dev, "In %s: driver_stopped=%d\n",
> +			    __func__, padapter->driver_stopped);
>  		return -1;
>  	}
>  	if (!padapter->bup)
> @@ -1175,7 +1175,7 @@ static int r8711_wx_get_scan(struct net_device *dev,
>  	char *stop = ev + wrqu->data.length;
>  	u32 ret = 0, cnt = 0;
>
> -	if (padapter->bDriverStopped)
> +	if (padapter->driver_stopped)
>  		return -EINVAL;
>  	while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
>  			     _FW_UNDER_LINKING)) {
> @@ -1938,7 +1938,7 @@ static int r871x_get_ap_info(struct net_device *dev,
>  	u8 bssid[ETH_ALEN];
>  	char data[33];
>
> -	if (padapter->bDriverStopped || (pdata == NULL))
> +	if (padapter->driver_stopped || (pdata == NULL))
>  		return -EINVAL;
>  	while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
>  			     _FW_UNDER_LINKING)) {
> @@ -2002,7 +2002,7 @@ static int r871x_set_pid(struct net_device *dev,
>  	struct _adapter *padapter = netdev_priv(dev);
>  	struct iw_point *pdata = &wrqu->data;
>
> -	if ((padapter->bDriverStopped) || (pdata == NULL))
> +	if ((padapter->driver_stopped) || (pdata == NULL))
>  		return -EINVAL;
>  	if (copy_from_user(&padapter->pid, pdata->pointer, sizeof(int)))
>  		return -EINVAL;
> @@ -2018,7 +2018,7 @@ static int r871x_set_chplan(struct net_device *dev,
>  	struct iw_point *pdata = &wrqu->data;
>  	int ch_plan = -1;
>
> -	if ((padapter->bDriverStopped) || (pdata == NULL)) {
> +	if ((padapter->driver_stopped) || (pdata == NULL)) {
>  		ret = -EINVAL;
>  		goto exit;
>  	}
> @@ -2038,7 +2038,7 @@ static int r871x_wps_start(struct net_device *dev,
>  	struct iw_point *pdata = &wrqu->data;
>  	u32   u32wps_start = 0;
>
> -	if ((padapter->bDriverStopped) || (pdata == NULL))
> +	if ((padapter->driver_stopped) || (pdata == NULL))
>  		return -EINVAL;
>  	if (copy_from_user((void *)&u32wps_start, pdata->pointer, 4))
>  		return -EFAULT;
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 3f17ef6f7e39..a10a5fbabb33 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -174,7 +174,7 @@ sint r8712_if_up(struct _adapter *padapter)
>  {
>  	sint res;
>
> -	if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
> +	if (padapter->driver_stopped || padapter->bSurpriseRemoved ||
>  	    !check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {
>  		res = false;
>  	} else {
> @@ -1055,7 +1055,7 @@ void _r8712_join_timeout_handler(struct _adapter *adapter)
>  	unsigned long irqL;
>  	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
>
> -	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> +	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
>  		return;
>  	spin_lock_irqsave(&pmlmepriv->lock, irqL);
>  	_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
> @@ -1084,7 +1084,7 @@ void r8712_scan_timeout_handler (struct _adapter *adapter)
>
>  void _r8712_dhcp_timeout_handler (struct _adapter *adapter)
>  {
> -	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
> +	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
>  		return;
>  	if (adapter->pwrctrlpriv.pwr_mode != adapter->registrypriv.power_mgnt)
>  		r8712_set_ps_mode(adapter, adapter->registrypriv.power_mgnt,
> diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
> index 351984fe254e..ab2be8507941 100644
> --- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
> +++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
> @@ -32,7 +32,7 @@ void r8712_set_rpwm(struct _adapter *padapter, u8 val8)
>  		if (pwrpriv->rpwm_retry == 0)
>  			return;
>  	}
> -	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> +	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
>  		return;
>  	rpwm = val8 | pwrpriv->tog;
>  	switch (val8) {
> @@ -117,7 +117,7 @@ static void _rpwm_check_handler (struct _adapter *padapter)
>  {
>  	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
>
> -	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
> +	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
>  		return;
>  	if (pwrpriv->cpwm != pwrpriv->rpwm)
>  		schedule_work(&pwrpriv->rpwm_workitem);
> diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
> index 005010de9997..cb66ed4bbeac 100644
> --- a/drivers/staging/rtl8712/usb_intf.c
> +++ b/drivers/staging/rtl8712/usb_intf.c
> @@ -289,7 +289,7 @@ void r871x_dev_unload(struct _adapter *padapter)
>  {
>  	if (padapter->bup) {
>  		/*s1.*/
> -		padapter->bDriverStopped = true;
> +		padapter->driver_stopped = true;
>
>  		/*s3.*/
>  		rtl871x_intf_stop(padapter);
> diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
> index ee5968808332..c4e66f19349e 100644
> --- a/drivers/staging/rtl8712/usb_ops_linux.c
> +++ b/drivers/staging/rtl8712/usb_ops_linux.c
> @@ -147,7 +147,7 @@ static void usb_write_mem_complete(struct urb *purb)
>
>  	if (purb->status != 0) {
>  		if (purb->status == (-ESHUTDOWN))
> -			padapter->bDriverStopped = true;
> +			padapter->driver_stopped = true;
>  		else
>  			padapter->bSurpriseRemoved = true;
>  	}
> @@ -164,7 +164,7 @@ void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
>  	struct usb_device *pusbd = pdvobj->pusbdev;
>  	struct urb *piorw_urb = pintfpriv->piorw_urb;
>
> -	if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved) ||
> +	if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
>  	    (padapter->pwrctrlpriv.pnp_bstop_trx))
>  		return;
>  	/* translate DMA FIFO addr to pipehandle */
> @@ -186,7 +186,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
>  	struct _adapter *padapter = (struct _adapter *)precvbuf->adapter;
>  	struct recv_priv *precvpriv = &padapter->recvpriv;
>
> -	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> +	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
>  		return;
>  	if (purb->status == 0) { /* SUCCESS */
>  		if ((purb->actual_length > (MAX_RECVBUF_SZ)) ||
> @@ -218,11 +218,11 @@ static void r8712_usb_read_port_complete(struct urb *purb)
>  		case -EPIPE:
>  		case -ENODEV:
>  		case -ESHUTDOWN:
> -			padapter->bDriverStopped = true;
> +			padapter->driver_stopped = true;
>  			break;
>  		case -ENOENT:
>  			if (!padapter->bSuspended) {
> -				padapter->bDriverStopped = true;
> +				padapter->driver_stopped = true;
>  				break;
>  			}
>  			/* Fall through. */
> @@ -254,7 +254,7 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *rmem)
>  	struct recv_priv *precvpriv = &adapter->recvpriv;
>  	struct usb_device *pusbd = pdvobj->pusbdev;
>
> -	if (adapter->bDriverStopped || adapter->bSurpriseRemoved ||
> +	if (adapter->driver_stopped || adapter->bSurpriseRemoved ||
>  	    adapter->pwrctrlpriv.pnp_bstop_trx || !precvbuf)
>  		return _FAIL;
>  	r8712_init_recvbuf(adapter, precvbuf);
> @@ -314,9 +314,9 @@ void r8712_xmit_bh(void *priv)
>  	struct _adapter *padapter = priv;
>  	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
>
> -	if (padapter->bDriverStopped ||
> +	if (padapter->driver_stopped ||
>  	    padapter->bSurpriseRemoved) {
> -		netdev_err(padapter->pnetdev, "xmit_bh => bDriverStopped or bSurpriseRemoved\n");
> +		netdev_err(padapter->pnetdev, "xmit_bh => driver_stopped or bSurpriseRemoved\n");
>  		return;
>  	}
>  	ret = r8712_xmitframe_complete(padapter, pxmitpriv, NULL);
> @@ -390,7 +390,7 @@ u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
>  	struct usb_device *pusbd = pdvobj->pusbdev;
>  	struct pkt_attrib *pattrib = &pxmitframe->attrib;
>
> -	if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved) ||
> +	if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
>  	    (padapter->pwrctrlpriv.pnp_bstop_trx))
>  		return _FAIL;
>  	for (i = 0; i < 8; i++) {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190301051505.55407-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

