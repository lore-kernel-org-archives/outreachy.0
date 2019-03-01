X-GM-THRID: 6663286701018841088
X-Received: by 2002:a24:a4a:: with SMTP id 71mr2068251itw.8.1551417331608;
        Thu, 28 Feb 2019 21:15:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:b648:: with SMTP id d8ls2158646itj.4.gmail; Thu, 28 Feb
 2019 21:15:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqyUHwT9L7XBwJ33x4rGw95kX2cZxV43XQp2ipwha+UxZoSKKWfe2rbi6AH/nCGuukBjauIZ
X-Received: by 2002:a24:6283:: with SMTP id d125mr2081838itc.14.1551417330705;
        Thu, 28 Feb 2019 21:15:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551417330; cv=none;
        d=google.com; s=arc-20160816;
        b=yH9Ka4X5MwOMFKr5MXL8xjkbeqOd8yfQ1BBIxtCCmr4CDUopzpFMyOy4TXqyVF5AMN
         wlzTXKmIW+GnPjXRSCRBP3hM48W9/QTtE2flHxui4Uj0WMX5uRe6bqcFs1I/pB0V9Zhf
         lK4YgPSBr+0xh2spxIB2Xfw5W6JC051pYhzsgDXKjjfwOqi0QBSMGYlxFeFiiK7h7l1q
         nLheDoeEz/qHAwsWe3R7RtyvUBnvjFRNZuBNgOV/k5MkdblrR0mGTKD7A4PDED1cES9M
         tFCsfYmqOxQ9eP5Dpyi+Z7cs833ovUURT2LOenVyPX/yeIGut9B5NVkdb9tJAqcNIHX4
         sF1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KaX6AnRuEEEa3GALanknznIaSygCHXi8p0+spwNrg/8=;
        b=GX5F52Hm7nLWCbLCBvGzUrg9uIh9xJ0XOilAFizSzLpSSpJKWG6URC2HqJWNtT3e7K
         pjP2wFQw0z3zRKaF8K44szOaLZ5IalWRmA2rk3D0rG1bpP6507pAfya4U7o8A71SWe95
         UAHMxw8/BfLw7NoEqAVNZUUWB0VwxB4w4ZOS8IqD0PPeOHvKvDUS8easpW+lXyozVmZn
         KUJnQqTxsdGH8Lx0ihcrQoNzgsFOdSS8mWc8PRcUa3+iD1+rbt7pcJJfV7+y2byXe53k
         bnte2RrGqy06WAQ0UO58NGrnWs7XlwWbaI/ZD9JUEEVBHaYN6Gb0oz3kHMNxo7p8p9X7
         PYOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2pXbFwB;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 185si131046itw.4.2019.02.28.21.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 21:15:30 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2pXbFwB;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id r14so10876990pls.12
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 21:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KaX6AnRuEEEa3GALanknznIaSygCHXi8p0+spwNrg/8=;
        b=u2pXbFwB601Olw0KizXZzlCsDJulyu8APb5P23PAC22oMTBOkJXxL4NHQ1XmWIQxu5
         GBIYrDgpLNoxKWcxx5tm4R/oFsZ2ePshDqlmB0rts9QLtvjXctuQEDyZaNUi5ZTgG03b
         /qbeqbUV0SQ4KsD9cz7G/vFFuhOrjX60I3wQUEImyOVVRxCQUm70jNL5HF2yZ564ATrD
         4Fy4nGc6dwkcPBsD8QnYTLCRtisDAB/7CBH5rXglBtQQluNWwYRYgn/MMvodjKAZKNNl
         9e267EBwnVYVTrGZt7T/lshyXLI+76vHUEnDV46LuyRnRq6y3Tya4TrzdmFai5yRNPn0
         ZuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KaX6AnRuEEEa3GALanknznIaSygCHXi8p0+spwNrg/8=;
        b=P77zspuzciDldSg1+8HcAr0+fUj4+ZA+C2WOMzEpE03TNvx36nKtY/5gmKar5sMEyf
         zxpR6/B3yKtczV0P5vc8j4hGvjCBqa8LdTvqD1IW15R8v3ArAib2RT7A+ZlMeSEAjH5U
         s045b9IffQQJaM/If5wHDQck4InTp29OPiHzDvz33k8e+Qz6PXi5enhY89I+MCwzHSVm
         zSChADM0vaAl8+804SkwF8nyYE1vVTYeYkB8NLbtWOWBB/b9b1hCVHjBp6+qcluK/Pjr
         rZ3rMY9lc068wliFlvZJSihFNjSP1G4JHl5nS+fEkK1ViWTspVlTJ5wqEPP43fB8NwtR
         rb7g==
X-Gm-Message-State: APjAAAVQBt9VN94IUM+zgK2BJWW/L02c5eu8a1LlnlVbE2PHI5Gl4Zas
	kGcFQHfGK6n0aH83BD5tY1c=
X-Received: by 2002:a17:902:3c5:: with SMTP id d63mr3541109pld.24.1551417329707;
        Thu, 28 Feb 2019 21:15:29 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id e14sm9543231pga.61.2019.02.28.21.15.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 21:15:28 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 1/3] staging: rtl8712: rename bDriverStopped to driver_stopped
Date: Fri,  1 Mar 2019 10:45:03 +0530
Message-Id: <20190301051505.55407-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix checkpatch warning: Avoid CameCase for struct variable
bDriverStopped by renaming it to driver_stopped.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h           |  3 +--
 drivers/staging/rtl8712/os_intfs.c            |  2 +-
 drivers/staging/rtl8712/rtl8712_cmd.c         |  4 ++--
 drivers/staging/rtl8712/rtl8712_io.c          |  4 ++--
 drivers/staging/rtl8712/rtl8712_led.c         |  6 +++---
 drivers/staging/rtl8712/rtl8712_recv.c        | 10 +++++-----
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++--------
 drivers/staging/rtl8712/rtl871x_mlme.c        |  6 +++---
 drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 ++--
 drivers/staging/rtl8712/usb_intf.c            |  2 +-
 drivers/staging/rtl8712/usb_ops_linux.c       | 18 +++++++++---------
 11 files changed, 37 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index 48d62fe6c8d4..60c5ed55ab04 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -145,7 +145,7 @@ struct _adapter {
 	struct	hal_priv	halpriv;
 	struct	led_priv	ledpriv;
 	struct mp_priv  mppriv;
-	s32	bDriverStopped;
+	s32	driver_stopped;
 	s32	bSurpriseRemoved;
 	s32	bSuspended;
 	u32	IsrContent;
@@ -180,4 +180,3 @@ static inline u8 *myid(struct eeprom_priv *peepriv)
 u8 r8712_usb_hal_bus_init(struct _adapter *adapter);
 
 #endif /*__DRV_TYPES_H__*/
-
diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 2d3f38007299..bd2ffd0ebde9 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -374,7 +374,7 @@ static int netdev_open(struct net_device *pnetdev)
 
 	mutex_lock(&padapter->mutex_start);
 	if (!padapter->bup) {
-		padapter->bDriverStopped = false;
+		padapter->driver_stopped = false;
 		padapter->bSurpriseRemoved = false;
 		padapter->bup = true;
 		if (rtl871x_hal_init(padapter) != _SUCCESS)
diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 1920d02f7c9f..c7437f979252 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -317,7 +317,7 @@ int r8712_cmd_thread(void *context)
 	while (1) {
 		if (wait_for_completion_interruptible(cmd_queue_comp))
 			break;
-		if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
+		if (padapter->driver_stopped || padapter->bSurpriseRemoved)
 			break;
 		if (r8712_register_cmd_alive(padapter) != _SUCCESS)
 			continue;
@@ -368,7 +368,7 @@ int r8712_cmd_thread(void *context)
 			pcmdbuf += 2; /* 8 bytes alignment */
 			memcpy((u8 *)pcmdbuf, pcmd->parmbuf, pcmd->cmdsz);
 			while (check_cmd_fifo(padapter, wr_sz) == _FAIL) {
-				if (padapter->bDriverStopped ||
+				if (padapter->driver_stopped ||
 				    padapter->bSurpriseRemoved)
 					break;
 				msleep(100);
diff --git a/drivers/staging/rtl8712/rtl8712_io.c b/drivers/staging/rtl8712/rtl8712_io.c
index 8eb79f73c014..ab775e721bf2 100644
--- a/drivers/staging/rtl8712/rtl8712_io.c
+++ b/drivers/staging/rtl8712/rtl8712_io.c
@@ -68,7 +68,7 @@ void r8712_read_mem(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
 	struct intf_hdl *hdl = &adapter->pio_queue->intf;
 
-	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
 		return;
 
 	hdl->io_ops._read_mem(hdl, addr, cnt, pmem);
@@ -85,7 +85,7 @@ void r8712_read_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
 	struct intf_hdl *hdl = &adapter->pio_queue->intf;
 
-	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
 		return;
 
 	hdl->io_ops._read_port(hdl, addr, cnt, pmem);
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 07fcf9b9b811..deceef345056 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -109,7 +109,7 @@ static void SwLedOn(struct _adapter *padapter, struct LED_871x *pLed)
 {
 	u8	LedCfg;
 
-	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
+	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
 		return;
 	LedCfg = r8712_read8(padapter, LEDCFG);
 	switch (pLed->LedPin) {
@@ -137,7 +137,7 @@ static void SwLedOff(struct _adapter *padapter, struct LED_871x *pLed)
 {
 	u8	LedCfg;
 
-	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
+	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
 		return;
 	LedCfg = r8712_read8(padapter, LEDCFG);
 	switch (pLed->LedPin) {
@@ -816,7 +816,7 @@ static void BlinkTimerCallback(struct timer_list *t)
 	/* This fixed the crash problem on Fedora 12 when trying to do the
 	 * insmod;ifconfig up;rmmod commands.
 	 */
-	if (pLed->padapter->bSurpriseRemoved || pLed->padapter->bDriverStopped)
+	if (pLed->padapter->bSurpriseRemoved || pLed->padapter->driver_stopped)
 		return;
 	schedule_work(&pLed->BlinkWorkItem);
 }
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 5bf9070b7a28..bca4edde18b4 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -541,7 +541,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 				  (preorder_ctrl->indicate_seq + 1) % 4096;
 			/*indicate this recv_frame*/
 			if (!pattrib->amsdu) {
-				if (!padapter->bDriverStopped &&
+				if (!padapter->driver_stopped &&
 				    !padapter->bSurpriseRemoved) {
 					/* indicate this recv_frame */
 					r8712_recv_indicatepkt(padapter,
@@ -576,7 +576,7 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 		/* s1. */
 		r8712_wlanhdr_to_ethhdr(prframe);
 		if (pattrib->qos != 1) {
-			if (!padapter->bDriverStopped &&
+			if (!padapter->driver_stopped &&
 			    !padapter->bSurpriseRemoved) {
 				r8712_recv_indicatepkt(padapter, prframe);
 				return _SUCCESS;
@@ -626,7 +626,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 	struct  __queue *ppending_recvframe_queue =
 				 &preorder_ctrl->pending_recvframe_queue;
 
-	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
+	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
 		return;
 	spin_lock_irqsave(&ppending_recvframe_queue->lock, irql);
 	r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, true);
@@ -643,7 +643,7 @@ static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
 	if (phtpriv->ht_option == 1) { /*B/G/N Mode*/
 		if (recv_indicatepkt_reorder(padapter, prframe) != _SUCCESS) {
 			/* including perform A-MPDU Rx Ordering Buffer Control*/
-			if (!padapter->bDriverStopped &&
+			if (!padapter->driver_stopped &&
 			    !padapter->bSurpriseRemoved)
 				return _FAIL;
 		}
@@ -651,7 +651,7 @@ static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
 		retval = r8712_wlanhdr_to_ethhdr(prframe);
 		if (retval != _SUCCESS)
 			return retval;
-		if (!padapter->bDriverStopped && !padapter->bSurpriseRemoved) {
+		if (!padapter->driver_stopped && !padapter->bSurpriseRemoved) {
 			/* indicate this recv_frame */
 			r8712_recv_indicatepkt(padapter, prframe);
 		} else {
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index e723357ac8c0..ad9b2f76d04a 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1118,9 +1118,9 @@ static int r8711_wx_set_scan(struct net_device *dev,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	u8 status = true;
 
-	if (padapter->bDriverStopped) {
-		netdev_info(dev, "In %s: bDriverStopped=%d\n",
-			    __func__, padapter->bDriverStopped);
+	if (padapter->driver_stopped) {
+		netdev_info(dev, "In %s: driver_stopped=%d\n",
+			    __func__, padapter->driver_stopped);
 		return -1;
 	}
 	if (!padapter->bup)
@@ -1175,7 +1175,7 @@ static int r8711_wx_get_scan(struct net_device *dev,
 	char *stop = ev + wrqu->data.length;
 	u32 ret = 0, cnt = 0;
 
-	if (padapter->bDriverStopped)
+	if (padapter->driver_stopped)
 		return -EINVAL;
 	while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
 			     _FW_UNDER_LINKING)) {
@@ -1938,7 +1938,7 @@ static int r871x_get_ap_info(struct net_device *dev,
 	u8 bssid[ETH_ALEN];
 	char data[33];
 
-	if (padapter->bDriverStopped || (pdata == NULL))
+	if (padapter->driver_stopped || (pdata == NULL))
 		return -EINVAL;
 	while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
 			     _FW_UNDER_LINKING)) {
@@ -2002,7 +2002,7 @@ static int r871x_set_pid(struct net_device *dev,
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_point *pdata = &wrqu->data;
 
-	if ((padapter->bDriverStopped) || (pdata == NULL))
+	if ((padapter->driver_stopped) || (pdata == NULL))
 		return -EINVAL;
 	if (copy_from_user(&padapter->pid, pdata->pointer, sizeof(int)))
 		return -EINVAL;
@@ -2018,7 +2018,7 @@ static int r871x_set_chplan(struct net_device *dev,
 	struct iw_point *pdata = &wrqu->data;
 	int ch_plan = -1;
 
-	if ((padapter->bDriverStopped) || (pdata == NULL)) {
+	if ((padapter->driver_stopped) || (pdata == NULL)) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -2038,7 +2038,7 @@ static int r871x_wps_start(struct net_device *dev,
 	struct iw_point *pdata = &wrqu->data;
 	u32   u32wps_start = 0;
 
-	if ((padapter->bDriverStopped) || (pdata == NULL))
+	if ((padapter->driver_stopped) || (pdata == NULL))
 		return -EINVAL;
 	if (copy_from_user((void *)&u32wps_start, pdata->pointer, 4))
 		return -EFAULT;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 3f17ef6f7e39..a10a5fbabb33 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -174,7 +174,7 @@ sint r8712_if_up(struct _adapter *padapter)
 {
 	sint res;
 
-	if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
+	if (padapter->driver_stopped || padapter->bSurpriseRemoved ||
 	    !check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {
 		res = false;
 	} else {
@@ -1055,7 +1055,7 @@ void _r8712_join_timeout_handler(struct _adapter *adapter)
 	unsigned long irqL;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 
-	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
 		return;
 	spin_lock_irqsave(&pmlmepriv->lock, irqL);
 	_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
@@ -1084,7 +1084,7 @@ void r8712_scan_timeout_handler (struct _adapter *adapter)
 
 void _r8712_dhcp_timeout_handler (struct _adapter *adapter)
 {
-	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
 		return;
 	if (adapter->pwrctrlpriv.pwr_mode != adapter->registrypriv.power_mgnt)
 		r8712_set_ps_mode(adapter, adapter->registrypriv.power_mgnt,
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
index 351984fe254e..ab2be8507941 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
@@ -32,7 +32,7 @@ void r8712_set_rpwm(struct _adapter *padapter, u8 val8)
 		if (pwrpriv->rpwm_retry == 0)
 			return;
 	}
-	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
+	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
 		return;
 	rpwm = val8 | pwrpriv->tog;
 	switch (val8) {
@@ -117,7 +117,7 @@ static void _rpwm_check_handler (struct _adapter *padapter)
 {
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
-	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
+	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
 		return;
 	if (pwrpriv->cpwm != pwrpriv->rpwm)
 		schedule_work(&pwrpriv->rpwm_workitem);
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 005010de9997..cb66ed4bbeac 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -289,7 +289,7 @@ void r871x_dev_unload(struct _adapter *padapter)
 {
 	if (padapter->bup) {
 		/*s1.*/
-		padapter->bDriverStopped = true;
+		padapter->driver_stopped = true;
 
 		/*s3.*/
 		rtl871x_intf_stop(padapter);
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index ee5968808332..c4e66f19349e 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -147,7 +147,7 @@ static void usb_write_mem_complete(struct urb *purb)
 
 	if (purb->status != 0) {
 		if (purb->status == (-ESHUTDOWN))
-			padapter->bDriverStopped = true;
+			padapter->driver_stopped = true;
 		else
 			padapter->bSurpriseRemoved = true;
 	}
@@ -164,7 +164,7 @@ void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
 	struct usb_device *pusbd = pdvobj->pusbdev;
 	struct urb *piorw_urb = pintfpriv->piorw_urb;
 
-	if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved) ||
+	if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
 	    (padapter->pwrctrlpriv.pnp_bstop_trx))
 		return;
 	/* translate DMA FIFO addr to pipehandle */
@@ -186,7 +186,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 	struct _adapter *padapter = (struct _adapter *)precvbuf->adapter;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
-	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
+	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
 		return;
 	if (purb->status == 0) { /* SUCCESS */
 		if ((purb->actual_length > (MAX_RECVBUF_SZ)) ||
@@ -218,11 +218,11 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 		case -EPIPE:
 		case -ENODEV:
 		case -ESHUTDOWN:
-			padapter->bDriverStopped = true;
+			padapter->driver_stopped = true;
 			break;
 		case -ENOENT:
 			if (!padapter->bSuspended) {
-				padapter->bDriverStopped = true;
+				padapter->driver_stopped = true;
 				break;
 			}
 			/* Fall through. */
@@ -254,7 +254,7 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *rmem)
 	struct recv_priv *precvpriv = &adapter->recvpriv;
 	struct usb_device *pusbd = pdvobj->pusbdev;
 
-	if (adapter->bDriverStopped || adapter->bSurpriseRemoved ||
+	if (adapter->driver_stopped || adapter->bSurpriseRemoved ||
 	    adapter->pwrctrlpriv.pnp_bstop_trx || !precvbuf)
 		return _FAIL;
 	r8712_init_recvbuf(adapter, precvbuf);
@@ -314,9 +314,9 @@ void r8712_xmit_bh(void *priv)
 	struct _adapter *padapter = priv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-	if (padapter->bDriverStopped ||
+	if (padapter->driver_stopped ||
 	    padapter->bSurpriseRemoved) {
-		netdev_err(padapter->pnetdev, "xmit_bh => bDriverStopped or bSurpriseRemoved\n");
+		netdev_err(padapter->pnetdev, "xmit_bh => driver_stopped or bSurpriseRemoved\n");
 		return;
 	}
 	ret = r8712_xmitframe_complete(padapter, pxmitpriv, NULL);
@@ -390,7 +390,7 @@ u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
 	struct usb_device *pusbd = pdvobj->pusbdev;
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
 
-	if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved) ||
+	if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
 	    (padapter->pwrctrlpriv.pnp_bstop_trx))
 		return _FAIL;
 	for (i = 0; i < 8; i++) {
-- 
2.17.1


