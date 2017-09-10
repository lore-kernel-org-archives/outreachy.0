X-GM-THRID: 6464167912849539072
X-Received: by 10.202.231.199 with SMTP id e190mr2699726oih.9.1505065282334;
        Sun, 10 Sep 2017 10:41:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.86 with SMTP id 83ls4235295itj.19.gmail; Sun, 10 Sep
 2017 10:41:21 -0700 (PDT)
X-Received: by 10.36.109.205 with SMTP id m196mr5199120itc.2.1505065281762;
        Sun, 10 Sep 2017 10:41:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505065281; cv=none;
        d=google.com; s=arc-20160816;
        b=cePdiCgDoQ5J1GtD53r+PLcRT6QV6/e1yUk5jnBZgxL/t3nKsbGGTVUDalets19HQn
         O4QygqormT9OnjsxP7DL/o2qqYMzgRxspsE/SWQrBztYNOuiO2732mEbCGBrOT+Kz8ji
         XN/pGEKHc3Gt21/vopaq/Tuik6pVIG5Y/xxiaKAntpoMsYcxnTzcltMCtxaactgQ2JAe
         pZ6kDNQ3vyETRgNbwAxqyZ9sSqFuKnDDanOihCfqa2IfbyfpnZGPxxxJGhBkx1PcaoJR
         6VMu55kGgvzwLFTb7BXEIP9j/QYggiDVanqO9Ka9hgvkijLAoB5DUxL3wkbwlRJE0S/t
         kuvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=wzMrmS5bvjqKyWjgR4uM2jd5ZjxNNiADLUxK3E4HVzI=;
        b=tF5QyU5U2W+DP3Ro20LJOTqrCBCacouAZLBkp/F9KxAGeH6nNhvEbXG8x2/mrAUAnZ
         0YWxHDZTFtZ9w+3TUW3GfNwtFdtEme0b6ha89ZPRrLebi+KeRvBsT/OKIrjuBRU/WqOw
         zSJxVRyxzdaNNm08oZk/TqoJfKKuNsRIKrOGLSrZsnvRl6nFQZFG+hbkVFw02eOc8bFv
         OCLJOHF26IIH60IQybDe7Jf6+qrJlI+nA/YPxl/okSCY/jQX5JyGQy36GeL0ekkcbSfa
         oVitSBG3brFtUl0Jvr9wm/15ecyoRlJqJmJhhF3RgLAkYCue8uBoJydOtLGlYgWlj7+l
         1n8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxE2ax5/;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w69si720637pfd.3.2017.09.10.10.41.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:41:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxE2ax5/;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id h4so3969437pfk.0
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wzMrmS5bvjqKyWjgR4uM2jd5ZjxNNiADLUxK3E4HVzI=;
        b=WxE2ax5//unoYk1Gv45iqQmXIgFfRD+OYk7dZnuExqa3mC5fXjG7bJlnSNcwM18bp7
         0BIkQ1oUtrb3OnlThxw5e/rD0Nh0yPWbHTyO7ztjVy7S9xU+FQ/TpLW3qoIo1P++o/+d
         GG7azk6l/CTD6luOaWBWMums3deX5pRdus8acMiD3EHhW2okfSfymv3A5EJ2BPdQNl4E
         hDsBOZa3SAnEBecVMxV8oZkEGLHCwELzhgWWEJlW8ie8C33VGL51xQW0ybGUN86mTx0h
         5sKbkmabOQftiNCsQe+sI6/lhgr38XcIKGlo/Kx0wo2sfVesJLytS7hqYTyBMOF5BjPZ
         vByw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wzMrmS5bvjqKyWjgR4uM2jd5ZjxNNiADLUxK3E4HVzI=;
        b=t5oXZCMQmVPB3BbKzVTG/zvloyjiY8E3tKyQLx1ot0YxfL5PNiR00U/sQyrDCI25vx
         w/Nt0anda+JX7QYzY/b80EAncWwE/81+iRpZIp5Blp/AVJnjMY4kp9okqIhVNjZ9A3Nj
         AeZZN0lX8476auiHhvD/BQWEROjhKjfLLhKIfgdkckmL1Xc982CgJMObGFXSParlKfbY
         dJMWBK3VD7HIwGfPOdaNIj9kCXT3J2VQBWlCGWASCVmhXcWBvGheDlFd4UsLrCbMvSEz
         tHvsdLkkertjSy7igGz52jhLI+Oe2RtR4iofsMYy/t6iaUAmhkDI8uYlBIDpWcuP1TBn
         jEyw==
X-Gm-Message-State: AHPjjUiBGPxpmpH37rwEBjd1qTPkYZ77Kgi2fuhEO9gqs6TqlhmqXPuR
	dOLpdp+jBruimw==
X-Google-Smtp-Source: ADKCNb6Dm1Hu3UoN9JyiuxBh2/0XYYqDlC724HBVNdCv833EeiSlGf4OkcaJlYdAbjsUaayFxz7rNA==
X-Received: by 10.84.241.77 with SMTP id u13mr10691431plm.149.1505065281477;
        Sun, 10 Sep 2017 10:41:21 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id i2sm13035421pfd.21.2017.09.10.10.41.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:41:20 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 09/10] staging: rtl8723bs: Remove unneccesary braces and change position of open brace
Date: Sun, 10 Sep 2017 23:09:10 +0530
Message-Id: <19189259dfaf0430c17f5f4f6d14ce1d87e367a1.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Follow linux-kernel code style for conditional statements

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 63 +++++++++--------------------
 1 file changed, 19 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 7a2d088..fb8502a 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -351,8 +351,7 @@ static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 	struct sockaddr *addr = p;
 
-	if (padapter->bup == false)
-	{
+	if (padapter->bup == false) {
 		/* DBG_871X("r8711_net_set_mac_address(), MAC =%x:%x:%x:%x:%x:%x\n", addr->sa_data[0], addr->sa_data[1], addr->sa_data[2], addr->sa_data[3], */
 		/* addr->sa_data[4], addr->sa_data[5]); */
 		memcpy(padapter->eeprompriv.mac_addr, addr->sa_data, ETH_ALEN);
@@ -425,9 +424,7 @@ static u16 rtw_select_queue(struct net_device *dev, struct sk_buff *skb
 	skb->priority = rtw_classify8021d(skb);
 
 	if (pmlmepriv->acm_mask != 0)
-	{
 		skb->priority = qos_acm(pmlmepriv->acm_mask, skb->priority);
-	}
 
 	return rtw_1d_to_queue[skb->priority];
 }
@@ -1036,8 +1033,7 @@ int netdev_open(struct net_device *pnetdev)
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);
 
-	if (pwrctrlpriv->bInSuspend == true)
-	{
+	if (pwrctrlpriv->bInSuspend == true) {
 		DBG_871X("+871x_drv - drv_open, bInSuspend =%d\n", pwrctrlpriv->bInSuspend);
 		return 0;
 	}
@@ -1066,16 +1062,13 @@ static int  ips_netdrv_open(struct adapter *padapter)
 	/* padapter->bup = true; */
 
 	status = rtw_hal_init(padapter);
-	if (status == _FAIL)
-	{
+	if (status == _FAIL) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("ips_netdrv_open(): Can't init h/w!\n"));
 		goto netdev_open_error;
 	}
 
 	if (padapter->intf_start)
-	{
 		padapter->intf_start(padapter);
-	}
 
 	_set_timer(&padapter->mlmepriv.dynamic_chk_timer, 2000);
 
@@ -1119,9 +1112,7 @@ void rtw_ips_dev_unload(struct adapter *padapter)
 
 
 	if (padapter->bSurpriseRemoved == false)
-	{
 		rtw_hal_deinit(padapter);
-	}
 
 }
 
@@ -1132,8 +1123,7 @@ static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 
-	if (true == bnormal)
-	{
+	if (true == bnormal) {
 		if (mutex_lock_interruptible(&(adapter_to_dvobj(padapter)->hw_init_mutex)) == 0) {
 			status = _netdev_open(pnetdev);
 			mutex_unlock(&(adapter_to_dvobj(padapter)->hw_init_mutex));
@@ -1152,8 +1142,7 @@ static int netdev_close(struct net_device *pnetdev)
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+871x_drv - drv_close\n"));
 
-	if (pwrctl->bInternalAutoSuspend == true)
-	{
+	if (pwrctl->bInternalAutoSuspend == true) {
 		/* rtw_pwr_wakeup(padapter); */
 		if (pwrctl->rf_pwrstate == rf_off)
 			pwrctl->ps_flag = true;
@@ -1174,8 +1163,7 @@ static int netdev_close(struct net_device *pnetdev)
 		DBG_871X("(2)871x_drv - drv_close, bup =%d, hw_init_completed =%d\n", padapter->bup, padapter->hw_init_completed);
 
 		/* s1. */
-		if (pnetdev)
-		{
+		if (pnetdev) {
 			if (!rtw_netif_queue_stopped(pnetdev))
 				rtw_netif_stop_queue(pnetdev);
 		}
@@ -1219,8 +1207,7 @@ void rtw_dev_unload(struct adapter *padapter)
 
 	RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("+%s\n", __func__));
 
-	if (padapter->bup == true)
-	{
+	if (padapter->bup == true) {
 		DBG_871X("===> %s\n", __func__);
 
 		padapter->bDriverStopped = true;
@@ -1257,8 +1244,7 @@ void rtw_dev_unload(struct adapter *padapter)
 			DBG_871X_LEVEL(_drv_always_, "%s: driver not in IPS\n", __func__);
 		}
 
-		if (padapter->bSurpriseRemoved == false)
-		{
+		if (padapter->bSurpriseRemoved == false) {
 			rtw_btcoex_IpsNotify(padapter, pwrctl->ips_mode_req);
 #ifdef CONFIG_WOWLAN
 			if (pwrctl->bSupportRemoteWakeup == true &&
@@ -1296,8 +1282,7 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 
 	if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)
-			&& check_fwstate(pmlmepriv, _FW_LINKED))
-		{
+			&& check_fwstate(pmlmepriv, _FW_LINKED)) {
 			DBG_871X("%s %s(" MAC_FMT "), length:%d assoc_ssid.length:%d\n", __func__,
 					pmlmepriv->cur_network.network.Ssid.Ssid,
 					MAC_ARG(pmlmepriv->cur_network.network.MacAddress),
@@ -1307,14 +1292,12 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 		}
 	}
 
-	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) && check_fwstate(pmlmepriv, _FW_LINKED))
-	{
+	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) && check_fwstate(pmlmepriv, _FW_LINKED)) {
 		rtw_disassoc_cmd(padapter, 0, false);
 		/* s2-2.  indicate disconnect to os */
 		rtw_indicate_disconnect(padapter);
 	}
-	else if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
-	{
+	else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		rtw_sta_flush(padapter);
 	}
 
@@ -1327,8 +1310,7 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY))
 		rtw_indicate_scan_done(padapter, 1);
 
-	if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true)
-	{
+	if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true) {
 		DBG_871X_LEVEL(_drv_always_, "%s: fw_under_linking\n", __func__);
 		rtw_indicate_disconnect(padapter);
 	}
@@ -1379,8 +1361,7 @@ int rtw_suspend_wow(struct adapter *padapter)
 		padapter->HalFunc.SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&poidparam);
 		if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)
-				&& check_fwstate(pmlmepriv, _FW_LINKED))
-			{
+				&& check_fwstate(pmlmepriv, _FW_LINKED)) {
 				DBG_871X("%s %s(" MAC_FMT "), length:%d assoc_ssid.length:%d\n", __func__,
 						pmlmepriv->cur_network.network.Ssid.Ssid,
 						MAC_ARG(pmlmepriv->cur_network.network.MacAddress),
@@ -1393,8 +1374,7 @@ int rtw_suspend_wow(struct adapter *padapter)
 
 		DBG_871X_LEVEL(_drv_always_, "%s: wowmode suspending\n", __func__);
 
-		if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true)
-		{
+		if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
 			DBG_871X_LEVEL(_drv_always_, "%s: fw_under_survey\n", __func__);
 			rtw_indicate_scan_done(padapter, 1);
 			clr_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
@@ -1412,8 +1392,7 @@ int rtw_suspend_wow(struct adapter *padapter)
 			rtw_set_ps_mode(padapter, PS_MODE_DTIM, 0, 0, "WOWLAN");
 
 	}
-	else
-	{
+	else {
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
 	}
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
@@ -1489,8 +1468,7 @@ static int rtw_suspend_normal(struct adapter *padapter)
 	rtw_suspend_free_assoc_resource(padapter);
 
 	if ((rtw_hal_check_ips_status(padapter) == true)
-		|| (adapter_to_pwrctl(padapter)->rf_pwrstate == rf_off))
-	{
+		|| (adapter_to_pwrctl(padapter)->rf_pwrstate == rf_off)) {
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR #### driver in IPS ####ERROR###!!!\n", __func__);
 
 	}
@@ -1524,8 +1502,7 @@ int rtw_suspend_common(struct adapter *padapter)
 	while (pwrpriv->bips_processing == true)
 		msleep(1);
 
-	if ((!padapter->bup) || (padapter->bDriverStopped) || (padapter->bSurpriseRemoved))
-	{
+	if ((!padapter->bup) || (padapter->bDriverStopped) || (padapter->bSurpriseRemoved)) {
 		DBG_871X("%s bup =%d bDriverStopped =%d bSurpriseRemoved = %d\n", __func__
 			, padapter->bup, padapter->bDriverStopped, padapter->bSurpriseRemoved);
 		pdbgpriv->dbg_suspend_error_cnt++;
@@ -1814,16 +1791,14 @@ static int rtw_resume_process_normal(struct adapter *padapter)
 	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 	/*  interface init */
 	/* if (sdio_init(adapter_to_dvobj(padapter)) != _SUCCESS) */
-	if ((padapter->intf_init) && (padapter->intf_init(adapter_to_dvobj(padapter)) != _SUCCESS))
-	{
+	if ((padapter->intf_init) && (padapter->intf_init(adapter_to_dvobj(padapter)) != _SUCCESS)) {
 		ret = -1;
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("%s: initialize SDIO Failed!!\n", __func__));
 		goto exit;
 	}
 	rtw_hal_disable_interrupt(padapter);
 	/* if (sdio_alloc_irq(adapter_to_dvobj(padapter)) != _SUCCESS) */
-	if ((padapter->intf_alloc_irq) && (padapter->intf_alloc_irq(adapter_to_dvobj(padapter)) != _SUCCESS))
-	{
+	if ((padapter->intf_alloc_irq) && (padapter->intf_alloc_irq(adapter_to_dvobj(padapter)) != _SUCCESS)) {
 		ret = -1;
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("%s: sdio_alloc_irq Failed!!\n", __func__));
 		goto exit;
-- 
1.9.1


