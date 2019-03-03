X-GM-THRID: 6664112359271825408
X-Received: by 2002:a24:cd07:: with SMTP id l7mr8849062itg.22.1551609575155;
        Sun, 03 Mar 2019 02:39:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls3806194ita.2.gmail; Sun, 03 Mar
 2019 02:39:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqw8wQjlRzriUiu2mrOwIFchVXtYTX2Dux3OHXiHlOzGxvaW2f7rxlbk992VoSxUKJ6365TF
X-Received: by 2002:a24:220a:: with SMTP id o10mr8841654ito.22.1551609574183;
        Sun, 03 Mar 2019 02:39:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551609574; cv=none;
        d=google.com; s=arc-20160816;
        b=FNEiSrzrUgKblO7rxt6Y18dzCSVuR6wLlLndHu7iVfjBoMVTkwgXETov2rQlhBF1nv
         HTqCnLZtbJGRD3lfplKXw2KjFuMMzikeH2FdB5DF3b8XeK0hfHsAIGdpCmfqgoZB2NIA
         9BlJaA3P5zlKipILgopAAsUKvqWnn+9DxGbYDRT8klC6vVLkl5CbUF7++2qx2OIJzGES
         drlxUmGG2UF1G5Hj9ZyfuxqXc2b1IUElGT10zlGq3iG98LQke2y1+vrbcUoPbXdCKsxo
         JfzTmwDeDsPT7hr7GyX/373Rw3ugRAJGms+PjDd4GQP6946ewoeZbh2fhZMF6T7sVy7e
         smQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NjAE2fwTv0YdCd7c2zBNK/alsa3Jd22zf/RF3dD/zNo=;
        b=qylad8hTYLPGkyugbl0/3b1M0/J7V9QupU2RNiV+FPPNrWsRAIw4HEvQZZfW4JQx9N
         h3KVQ5csyicdvU9maTNEvk9X7lNl8iRV05nupm4lYjJBEgvBbMqjOv09MjgDz0mPy3jr
         4CLY920nBO8OQYH86AHAZZ3VKuhtB72f+adTmDATP5ClMSvO4J00x7FbFdDkj08CmVZb
         pPOP6iHnRprI9xBDC5eL15IpVWI0MwtbGG7BxJuziIHNLphXcm17ROqKiX8KQElaQxj7
         gJLaP0i3C4G16UPL9hcOlaVn4QTGJg6CzXXCORfF2s4ztsx+v9k4Y1IBZOuUxXlMgBmt
         e9gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K3R2/RO6";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 185si110802itw.4.2019.03.03.02.39.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:39:34 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K3R2/RO6";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id bj4so1123701plb.7
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 02:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NjAE2fwTv0YdCd7c2zBNK/alsa3Jd22zf/RF3dD/zNo=;
        b=K3R2/RO6gJfQVBMRDS120JGYh8n1gfL/gkcvMbwJYJKmUsQlVF3LgsY8hWg+Wfr/SU
         np1k6vFTZR1ZIU2nm7YldmeiiQGrJE8QpaxoJ4yfy2xoRrlgmIeiqNtFXwlhOiuYitIk
         0AEtTEaA+cieZG6sthBxI2HqD1X8NxSpoStgpbGV16Wgy0Ho8ayBq7sjqm022w9xiTxK
         XpkiHg9uNjN9UXhavRq+4tKkhWWgrNKiOzgz2Hi/RxTLKJxz/Wgsz6l1xhLvS38TKe+T
         mDLHcAAD57xkF4v0IQvXWZTtDW4x60IrIImSbrVAPpLQ2CiTuioDfWjhBv80JjxHq3aH
         I5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NjAE2fwTv0YdCd7c2zBNK/alsa3Jd22zf/RF3dD/zNo=;
        b=ep1hj4X/sO2mk5jt7ZUlZp70N4VECuodbOZ5ZfUNACGDDCP1WNXd07AJOve15HzTGc
         mgTz7WMkJC6NKeoPA/qNAJbpf2YvPvpzBB/guEdtV9dgUAi29Zz/igbgGSXFbxG0dueh
         ywVMTNqDQzrlfHNBT4kaGjgmrVFpE/VNEfJrLD+PsA91z7J9NM2nqCmIsmoBhsF70xVn
         1dkpYTuPLwZYjyQ9xhcQw0vFAfxIfY6VVgStke+edOTlpYx+gPVkGtXy3Qh2BdXaZwi+
         2LzpRIpqEA6B6csMZT+Xdm/RmzL3uC20byD89Tui4y1SeAb1V9qA6re4FroQQH0+rYoG
         MKFg==
X-Gm-Message-State: APjAAAVxP5FLsWm+A3XU8tquUY9B8H7T9AFpbrWiLYa54arOo89uTLb3
	MvUR9/kiMFbKVqxivA2ZmdbOMH6s8+0=
X-Received: by 2002:a17:902:684:: with SMTP id 4mr14615866plh.3.1551609573398;
        Sun, 03 Mar 2019 02:39:33 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id v6sm23675pgs.71.2019.03.03.02.39.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:39:32 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 2/3] staging: rtl8712: rename bSurpriseRemoved to surprise_removed
Date: Sun,  3 Mar 2019 16:09:14 +0530
Message-Id: <20190303103915.2684-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190303103915.2684-1-himadri18.07@gmail.com>
References: <20190303103915.2684-1-himadri18.07@gmail.com>

 - Rename structure field bSurprisedRemoved to surprised_removed to avoid
camelcase. Suggested by checkpatch.
 - Change type to bool as the variable is used as a boolean.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Include the type change in changelog text
	- Change the log message to make it more concise and informative
---
 drivers/staging/rtl8712/drv_types.h       |  2 +-
 drivers/staging/rtl8712/os_intfs.c        |  2 +-
 drivers/staging/rtl8712/rtl8712_cmd.c     |  4 ++--
 drivers/staging/rtl8712/rtl8712_io.c      |  4 ++--
 drivers/staging/rtl8712/rtl8712_led.c     |  6 +++---
 drivers/staging/rtl8712/rtl8712_recv.c    | 10 +++++-----
 drivers/staging/rtl8712/rtl871x_eeprom.c  | 23 +++++++++++------------
 drivers/staging/rtl8712/rtl871x_mlme.c    |  6 +++---
 drivers/staging/rtl8712/rtl871x_pwrctrl.c |  4 ++--
 drivers/staging/rtl8712/usb_intf.c        |  6 +++---
 drivers/staging/rtl8712/usb_ops_linux.c   | 16 ++++++++--------
 11 files changed, 41 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index e990118092c5..acee68d3d152 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -146,7 +146,7 @@ struct _adapter {
 	struct	led_priv	ledpriv;
 	struct mp_priv  mppriv;
 	bool	driver_stopped;
-	s32	bSurpriseRemoved;
+	bool	surprise_removed;
 	s32	bSuspended;
 	u32	IsrContent;
 	u32	ImrContent;
diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index bd2ffd0ebde9..41ba1eeea2f2 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -375,7 +375,7 @@ static int netdev_open(struct net_device *pnetdev)
 	mutex_lock(&padapter->mutex_start);
 	if (!padapter->bup) {
 		padapter->driver_stopped = false;
-		padapter->bSurpriseRemoved = false;
+		padapter->surprise_removed = false;
 		padapter->bup = true;
 		if (rtl871x_hal_init(padapter) != _SUCCESS)
 			goto netdev_open_error;
diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index c7437f979252..1ffd984c25a4 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -317,7 +317,7 @@ int r8712_cmd_thread(void *context)
 	while (1) {
 		if (wait_for_completion_interruptible(cmd_queue_comp))
 			break;
-		if (padapter->driver_stopped || padapter->bSurpriseRemoved)
+		if (padapter->driver_stopped || padapter->surprise_removed)
 			break;
 		if (r8712_register_cmd_alive(padapter) != _SUCCESS)
 			continue;
@@ -369,7 +369,7 @@ int r8712_cmd_thread(void *context)
 			memcpy((u8 *)pcmdbuf, pcmd->parmbuf, pcmd->cmdsz);
 			while (check_cmd_fifo(padapter, wr_sz) == _FAIL) {
 				if (padapter->driver_stopped ||
-				    padapter->bSurpriseRemoved)
+				    padapter->surprise_removed)
 					break;
 				msleep(100);
 				continue;
diff --git a/drivers/staging/rtl8712/rtl8712_io.c b/drivers/staging/rtl8712/rtl8712_io.c
index ab775e721bf2..384cbdb05e19 100644
--- a/drivers/staging/rtl8712/rtl8712_io.c
+++ b/drivers/staging/rtl8712/rtl8712_io.c
@@ -68,7 +68,7 @@ void r8712_read_mem(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
 	struct intf_hdl *hdl = &adapter->pio_queue->intf;
 
-	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->surprise_removed)
 		return;
 
 	hdl->io_ops._read_mem(hdl, addr, cnt, pmem);
@@ -85,7 +85,7 @@ void r8712_read_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
 	struct intf_hdl *hdl = &adapter->pio_queue->intf;
 
-	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->surprise_removed)
 		return;
 
 	hdl->io_ops._read_port(hdl, addr, cnt, pmem);
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index deceef345056..a899a93dfcbb 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -109,7 +109,7 @@ static void SwLedOn(struct _adapter *padapter, struct LED_871x *pLed)
 {
 	u8	LedCfg;
 
-	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
+	if (padapter->surprise_removed || padapter->driver_stopped)
 		return;
 	LedCfg = r8712_read8(padapter, LEDCFG);
 	switch (pLed->LedPin) {
@@ -137,7 +137,7 @@ static void SwLedOff(struct _adapter *padapter, struct LED_871x *pLed)
 {
 	u8	LedCfg;
 
-	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
+	if (padapter->surprise_removed || padapter->driver_stopped)
 		return;
 	LedCfg = r8712_read8(padapter, LEDCFG);
 	switch (pLed->LedPin) {
@@ -816,7 +816,7 @@ static void BlinkTimerCallback(struct timer_list *t)
 	/* This fixed the crash problem on Fedora 12 when trying to do the
 	 * insmod;ifconfig up;rmmod commands.
 	 */
-	if (pLed->padapter->bSurpriseRemoved || pLed->padapter->driver_stopped)
+	if (pLed->padapter->surprise_removed || pLed->padapter->driver_stopped)
 		return;
 	schedule_work(&pLed->BlinkWorkItem);
 }
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index bca4edde18b4..9e0943185638 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -542,7 +542,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 			/*indicate this recv_frame*/
 			if (!pattrib->amsdu) {
 				if (!padapter->driver_stopped &&
-				    !padapter->bSurpriseRemoved) {
+				    !padapter->surprise_removed) {
 					/* indicate this recv_frame */
 					r8712_recv_indicatepkt(padapter,
 							       prframe);
@@ -577,7 +577,7 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 		r8712_wlanhdr_to_ethhdr(prframe);
 		if (pattrib->qos != 1) {
 			if (!padapter->driver_stopped &&
-			    !padapter->bSurpriseRemoved) {
+			    !padapter->surprise_removed) {
 				r8712_recv_indicatepkt(padapter, prframe);
 				return _SUCCESS;
 			} else {
@@ -626,7 +626,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 	struct  __queue *ppending_recvframe_queue =
 				 &preorder_ctrl->pending_recvframe_queue;
 
-	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
+	if (padapter->driver_stopped || padapter->surprise_removed)
 		return;
 	spin_lock_irqsave(&ppending_recvframe_queue->lock, irql);
 	r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, true);
@@ -644,14 +644,14 @@ static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
 		if (recv_indicatepkt_reorder(padapter, prframe) != _SUCCESS) {
 			/* including perform A-MPDU Rx Ordering Buffer Control*/
 			if (!padapter->driver_stopped &&
-			    !padapter->bSurpriseRemoved)
+			    !padapter->surprise_removed)
 				return _FAIL;
 		}
 	} else { /*B/G mode*/
 		retval = r8712_wlanhdr_to_ethhdr(prframe);
 		if (retval != _SUCCESS)
 			return retval;
-		if (!padapter->driver_stopped && !padapter->bSurpriseRemoved) {
+		if (!padapter->driver_stopped && !padapter->surprise_removed) {
 			/* indicate this recv_frame */
 			r8712_recv_indicatepkt(padapter, prframe);
 		} else {
diff --git a/drivers/staging/rtl8712/rtl871x_eeprom.c b/drivers/staging/rtl8712/rtl871x_eeprom.c
index 948bd0c757b5..0027d8eb22fa 100644
--- a/drivers/staging/rtl8712/rtl871x_eeprom.c
+++ b/drivers/staging/rtl8712/rtl871x_eeprom.c
@@ -37,7 +37,7 @@ static void shift_out_bits(struct _adapter *padapter, u16 data, u16 count)
 {
 	u16 x, mask;
 
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		goto out;
 	mask = 0x01 << (count - 1);
 	x = r8712_read8(padapter, EE_9346CR);
@@ -46,7 +46,7 @@ static void shift_out_bits(struct _adapter *padapter, u16 data, u16 count)
 		x &= ~_EEDI;
 		if (data & mask)
 			x |= _EEDI;
-		if (padapter->bSurpriseRemoved)
+		if (padapter->surprise_removed)
 			goto out;
 		r8712_write8(padapter, EE_9346CR, (u8)x);
 		udelay(CLOCK_RATE);
@@ -54,7 +54,7 @@ static void shift_out_bits(struct _adapter *padapter, u16 data, u16 count)
 		down_clk(padapter, &x);
 		mask >>= 1;
 	} while (mask);
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		goto out;
 	x &= ~_EEDI;
 	r8712_write8(padapter, EE_9346CR, (u8)x);
@@ -65,7 +65,7 @@ static u16 shift_in_bits(struct _adapter *padapter)
 {
 	u16 x, d = 0, i;
 
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		goto out;
 	x = r8712_read8(padapter, EE_9346CR);
 	x &= ~(_EEDO | _EEDI);
@@ -73,7 +73,7 @@ static u16 shift_in_bits(struct _adapter *padapter)
 	for (i = 0; i < 16; i++) {
 		d <<= 1;
 		up_clk(padapter, &x);
-		if (padapter->bSurpriseRemoved)
+		if (padapter->surprise_removed)
 			goto out;
 		x = r8712_read8(padapter, EE_9346CR);
 		x &= ~(_EEDI);
@@ -117,17 +117,17 @@ static void eeprom_clean(struct _adapter *padapter)
 {
 	u16 x;
 
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		return;
 	x = r8712_read8(padapter, EE_9346CR);
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		return;
 	x &= ~(_EECS | _EEDI);
 	r8712_write8(padapter, EE_9346CR, (u8)x);
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		return;
 	up_clk(padapter, &x);
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		return;
 	down_clk(padapter, &x);
 }
@@ -194,11 +194,11 @@ u16 r8712_eeprom_read16(struct _adapter *padapter, u16 reg) /*ReadEEprom*/
 	tmp8_clk_new = tmp8_clk_ori | 0x20;
 	if (tmp8_clk_new != tmp8_clk_ori)
 		r8712_write8(padapter, 0x10250003, tmp8_clk_new);
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		goto out;
 	/* select EEPROM, reset bits, set _EECS */
 	x = r8712_read8(padapter, EE_9346CR);
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		goto out;
 	x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
 	x |= _EEM1 | _EECS;
@@ -218,4 +218,3 @@ u16 r8712_eeprom_read16(struct _adapter *padapter, u16 reg) /*ReadEEprom*/
 		r8712_write8(padapter, 0x102502f1, tmp8_ori);
 	return data;
 }
-
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index a10a5fbabb33..c666e038f43e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -174,7 +174,7 @@ sint r8712_if_up(struct _adapter *padapter)
 {
 	sint res;
 
-	if (padapter->driver_stopped || padapter->bSurpriseRemoved ||
+	if (padapter->driver_stopped || padapter->surprise_removed ||
 	    !check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {
 		res = false;
 	} else {
@@ -1055,7 +1055,7 @@ void _r8712_join_timeout_handler(struct _adapter *adapter)
 	unsigned long irqL;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 
-	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->surprise_removed)
 		return;
 	spin_lock_irqsave(&pmlmepriv->lock, irqL);
 	_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
@@ -1084,7 +1084,7 @@ void r8712_scan_timeout_handler (struct _adapter *adapter)
 
 void _r8712_dhcp_timeout_handler (struct _adapter *adapter)
 {
-	if (adapter->driver_stopped || adapter->bSurpriseRemoved)
+	if (adapter->driver_stopped || adapter->surprise_removed)
 		return;
 	if (adapter->pwrctrlpriv.pwr_mode != adapter->registrypriv.power_mgnt)
 		r8712_set_ps_mode(adapter, adapter->registrypriv.power_mgnt,
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
index ab2be8507941..2beafc7742b3 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
@@ -32,7 +32,7 @@ void r8712_set_rpwm(struct _adapter *padapter, u8 val8)
 		if (pwrpriv->rpwm_retry == 0)
 			return;
 	}
-	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
+	if (padapter->driver_stopped || padapter->surprise_removed)
 		return;
 	rpwm = val8 | pwrpriv->tog;
 	switch (val8) {
@@ -117,7 +117,7 @@ static void _rpwm_check_handler (struct _adapter *padapter)
 {
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
-	if (padapter->driver_stopped || padapter->bSurpriseRemoved)
+	if (padapter->driver_stopped || padapter->surprise_removed)
 		return;
 	if (pwrpriv->cpwm != pwrpriv->rpwm)
 		schedule_work(&pwrpriv->rpwm_workitem);
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index cb66ed4bbeac..674c31155cdd 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -271,7 +271,7 @@ static void r8712_usb_dvobj_deinit(struct _adapter *padapter)
 void rtl871x_intf_stop(struct _adapter *padapter)
 {
 	/*disable_hw_interrupt*/
-	if (!padapter->bSurpriseRemoved) {
+	if (!padapter->surprise_removed) {
 		/*device still exists, so driver can do i/o operation
 		 * TODO:
 		 */
@@ -298,7 +298,7 @@ void r871x_dev_unload(struct _adapter *padapter)
 		r8712_stop_drv_threads(padapter);
 
 		/*s5.*/
-		if (!padapter->bSurpriseRemoved) {
+		if (!padapter->surprise_removed) {
 			padapter->hw_init_completed = false;
 			rtl8712_hal_deinit(padapter);
 		}
@@ -600,7 +600,7 @@ static void r871xu_dev_remove(struct usb_interface *pusb_intf)
 		/* never exit with a firmware callback pending */
 		wait_for_completion(&padapter->rtl8712_fw_ready);
 		if (drvpriv.drv_registered)
-			padapter->bSurpriseRemoved = true;
+			padapter->surprise_removed = true;
 		unregister_netdev(pnetdev); /* will call netdev_close() */
 		flush_scheduled_work();
 		udelay(1);
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index c4e66f19349e..8df308df35c6 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -149,7 +149,7 @@ static void usb_write_mem_complete(struct urb *purb)
 		if (purb->status == (-ESHUTDOWN))
 			padapter->driver_stopped = true;
 		else
-			padapter->bSurpriseRemoved = true;
+			padapter->surprise_removed = true;
 	}
 	complete(&pintfpriv->io_retevt_comp);
 }
@@ -164,7 +164,7 @@ void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
 	struct usb_device *pusbd = pdvobj->pusbdev;
 	struct urb *piorw_urb = pintfpriv->piorw_urb;
 
-	if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
+	if ((padapter->driver_stopped) || (padapter->surprise_removed) ||
 	    (padapter->pwrctrlpriv.pnp_bstop_trx))
 		return;
 	/* translate DMA FIFO addr to pipehandle */
@@ -186,7 +186,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 	struct _adapter *padapter = (struct _adapter *)precvbuf->adapter;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
-	if (padapter->bSurpriseRemoved || padapter->driver_stopped)
+	if (padapter->surprise_removed || padapter->driver_stopped)
 		return;
 	if (purb->status == 0) { /* SUCCESS */
 		if ((purb->actual_length > (MAX_RECVBUF_SZ)) ||
@@ -254,7 +254,7 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *rmem)
 	struct recv_priv *precvpriv = &adapter->recvpriv;
 	struct usb_device *pusbd = pdvobj->pusbdev;
 
-	if (adapter->driver_stopped || adapter->bSurpriseRemoved ||
+	if (adapter->driver_stopped || adapter->surprise_removed ||
 	    adapter->pwrctrlpriv.pnp_bstop_trx || !precvbuf)
 		return _FAIL;
 	r8712_init_recvbuf(adapter, precvbuf);
@@ -315,8 +315,8 @@ void r8712_xmit_bh(void *priv)
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
 	if (padapter->driver_stopped ||
-	    padapter->bSurpriseRemoved) {
-		netdev_err(padapter->pnetdev, "xmit_bh => driver_stopped or bSurpriseRemoved\n");
+	    padapter->surprise_removed) {
+		netdev_err(padapter->pnetdev, "xmit_bh => driver_stopped or surprise_removed\n");
 		return;
 	}
 	ret = r8712_xmitframe_complete(padapter, pxmitpriv, NULL);
@@ -360,7 +360,7 @@ static void usb_write_port_complete(struct urb *purb)
 			break;
 		}
 	}
-	if (padapter->bSurpriseRemoved)
+	if (padapter->surprise_removed)
 		return;
 	switch (purb->status) {
 	case 0:
@@ -390,7 +390,7 @@ u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
 	struct usb_device *pusbd = pdvobj->pusbdev;
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
 
-	if ((padapter->driver_stopped) || (padapter->bSurpriseRemoved) ||
+	if ((padapter->driver_stopped) || (padapter->surprise_removed) ||
 	    (padapter->pwrctrlpriv.pnp_bstop_trx))
 		return _FAIL;
 	for (i = 0; i < 8; i++) {
-- 
2.17.1


