X-GM-THRID: 6464167912849539072
X-Received: by 10.107.169.31 with SMTP id s31mr4683362ioe.86.1505064716342;
        Sun, 10 Sep 2017 10:31:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.222.13 with SMTP id v13ls2825067iog.40.gmail; Sun, 10 Sep
 2017 10:31:55 -0700 (PDT)
X-Received: by 10.99.123.81 with SMTP id k17mr5430731pgn.95.1505064715593;
        Sun, 10 Sep 2017 10:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505064715; cv=none;
        d=google.com; s=arc-20160816;
        b=LbAC6xCunoiv9wSDgmfNCNEUOU3NMe11MM9KZmRY7j0k/6bfMlovY46lQtHGS6SVpY
         eNnVEKhRHVLdWxvtSws1EtvDv+mxfuMQHOaWFOkGyXYMtS7/OIxCI/0dp2ZM1IJCPzll
         I796CHhlBOV/3seD69miN81EE0jKk0mYKH79W2lvhrwm9CE4aJL9dHkksb10n5bZA4Kp
         EfUWQtUDAFnjw0X6/swAUM5dA8PvF87b8WKD060ChmVjYm1wkCO8X4pmklUlrqK40rdR
         HbxFWB7ecEkdiHBg8XH89xmsEGRbaYpVB4yZQUO0XooPWqxlqZ18hJDPe4vnCsGo35m8
         UDGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=urOQ7wp2G29WVdglBG2T2Uqvjx1UkEYgxk+ag0SJczw=;
        b=wPO1ZD49cJYSEJav7vy5Gn1g9I9wZGsAmxN+kyy/tpCybpuh5pTFf48RnUBQSJOh1U
         2qeFTImA2Xd9iq6ghTRQqfTRUIsdOBsxqyj84FgNCNMBPXUVDkd+NB+qpmMYXtVlPxFh
         LfmJCe7PYCm9fhuH0loHRvv2fMTk3Bl2QVjDexesQqnLk6V7ddwMo3t7fxanGMbvpIHa
         v7ZCLUMB1s/ahDUUT0prGqFwpjePBkTCMthyAWZMDXIMy5UeaWCxayr2N/1/D8kiO/yh
         aj4rkvz4vXtcR9b27tzlPDyDiDUk25JiEP/3MnTMPJeairl2e4b0zeopf0YRzr+vy44y
         mt6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kfdAOObb;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id p24si607128pfk.12.2017.09.10.10.31.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kfdAOObb;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id t3so3628097pgt.5
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=urOQ7wp2G29WVdglBG2T2Uqvjx1UkEYgxk+ag0SJczw=;
        b=kfdAOObbxNxKDYum3Ilqyo38+EWYwPUn5gf93hnfddyz75A9io7u7/8mCs82xes3sr
         ppE99JdT2g+QxA4tW8o6P8TYW7OOYIsMWRSQbI3/rZxX4jIncGRv/jTjXy3ks/H/nN/x
         +n5yyRIDuABHFSmlbRqpnYJuLlbcGUBInR6gIVq4P6h3Uq1LbbUdTKgXSsJ20Bus0lyy
         cSAMusEaqeBqsUBKmdBakji/7n6Ndpi6w/CVwyblICw2lMCd7p0FBxiIhe93IsGWFt8g
         +M/cBU98Km3ysYRsSk38w5gAkFFGvZ0BgCkjyvtwzdFSsEzyfaLLNEWG7suGmIk848j6
         oOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=urOQ7wp2G29WVdglBG2T2Uqvjx1UkEYgxk+ag0SJczw=;
        b=LkVHK6HQAyEQ2OY5Eq3i+HjPl5Ey8Jvxnnnayj0Z+3EHSIBAAy8Q7FpVJxwAMjDEmr
         llLv5VcqPsDQN0YcCMUtRr2BPKbN2nK58XBJpRkD71eLZutM7OBYGHgThtjvj+2kb8C4
         u7e4sy++r+WN1fxrphhYOgzjRXxhH4VnhChIqjkTLY+hFwKQAsxqngMOjeSDTKFmkvAA
         fNGiCWWfcEAqx+ma+yJTCeZvkDYbDcYpFfrVhAATRGHm2ui0WEezHO65ULdPAKu3CnRn
         9PGex3IWb0ubRtvMXaNsvacegZqn8npHtaNJ8YfDLbPAaaM+vmvpFyTQ5ZACr5xncTYd
         TIGg==
X-Gm-Message-State: AHPjjUgktr6IwHMZ7xMhzfh2HuLhvjSiIg6mJk97Pd1AWik8d09LENCk
	xNL6o5FvYp+t5g==
X-Google-Smtp-Source: ADKCNb602zfTkGsYiI9OiTdocvhSjbhSJa9t6PM6uq19M6GesP76TYyR8oUBIFePuxOws7taimfPDQ==
X-Received: by 10.99.114.76 with SMTP id c12mr9111221pgn.221.1505064715297;
        Sun, 10 Sep 2017 10:31:55 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id v126sm12141039pfv.113.2017.09.10.10.31.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:31:54 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 05/10] staging: rtl8723bs: Add space between concatenated strings
Date: Sun, 10 Sep 2017 22:59:50 +0530
Message-Id: <86078625c574018711c48bf66ebb5f62d540ac79.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Use spaces between concatenated strings

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 50 ++++++++++++++---------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 97ff3ab..b320df8 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -467,7 +467,7 @@ static int rtw_ndev_notifier_call(struct notifier_block * nb, unsigned long stat
 	if (dev->netdev_ops->ndo_do_ioctl != rtw_ioctl)
 		return NOTIFY_DONE;
 
-	DBG_871X_LEVEL(_drv_info_, FUNC_NDEV_FMT" state:%lu\n", FUNC_NDEV_ARG(dev), state);
+	DBG_871X_LEVEL(_drv_info_, FUNC_NDEV_FMT " state:%lu\n", FUNC_NDEV_ARG(dev), state);
 
 	switch (state) {
 	case NETDEV_CHANGENAME:
@@ -497,7 +497,7 @@ static int rtw_ndev_init(struct net_device *dev)
 {
 	struct adapter *adapter = rtw_netdev_priv(dev);
 
-	DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT"\n", FUNC_ADPT_ARG(adapter));
+	DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT "\n", FUNC_ADPT_ARG(adapter));
 	strncpy(adapter->old_ifname, dev->name, IFNAMSIZ);
 	rtw_adapter_proc_init(dev);
 
@@ -508,7 +508,7 @@ static void rtw_ndev_uninit(struct net_device *dev)
 {
 	struct adapter *adapter = rtw_netdev_priv(dev);
 
-	DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT"\n", FUNC_ADPT_ARG(adapter));
+	DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT "\n", FUNC_ADPT_ARG(adapter));
 	rtw_adapter_proc_deinit(dev);
 }
 
@@ -984,7 +984,7 @@ int _netdev_open(struct net_device *pnetdev)
 			goto netdev_open_error;
 		}
 
-		DBG_871X("MAC Address = "MAC_FMT"\n", MAC_ARG(pnetdev->dev_addr));
+		DBG_871X("MAC Address = " MAC_FMT "\n", MAC_ARG(pnetdev->dev_addr));
 
 		status = rtw_start_drv_threads(padapter);
 		if (status == _FAIL) {
@@ -1203,7 +1203,7 @@ static int netdev_close(struct net_device *pnetdev)
 
 void rtw_ndev_destructor(struct net_device *ndev)
 {
-	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
+	DBG_871X(FUNC_NDEV_FMT "\n", FUNC_NDEV_ARG(ndev));
 
 	if (ndev->ieee80211_ptr)
 		kfree((u8 *)ndev->ieee80211_ptr);
@@ -1292,7 +1292,7 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
 	if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)
@@ -1333,7 +1333,7 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 		rtw_indicate_disconnect(padapter);
 	}
 
-	DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 	return _SUCCESS;
 }
 
@@ -1347,7 +1347,7 @@ int rtw_suspend_wow(struct adapter *padapter)
 	struct wowlan_ioctl_param poidparam;
 	int ret = _SUCCESS;
 
-	DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
 
 	DBG_871X("wowlan_mode: %d\n", pwrpriv->wowlan_mode);
@@ -1401,7 +1401,7 @@ int rtw_suspend_wow(struct adapter *padapter)
 		}
 
 		if (rtw_get_ch_setting_union(padapter, &ch, &bw, &offset) != 0) {
-			DBG_871X(FUNC_ADPT_FMT" back to linked/linking union - ch:%u, bw:%u, offset:%u\n",
+			DBG_871X(FUNC_ADPT_FMT " back to linked/linking union - ch:%u, bw:%u, offset:%u\n",
 				FUNC_ADPT_ARG(padapter), ch, bw, offset);
 			set_channel_bwmode(padapter, ch, offset, bw);
 		}
@@ -1416,7 +1416,7 @@ int rtw_suspend_wow(struct adapter *padapter)
 	{
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
 	}
-	DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 	return ret;
 }
 #endif /* ifdef CONFIG_WOWLAN */
@@ -1430,7 +1430,7 @@ int rtw_suspend_ap_wow(struct adapter *padapter)
 	struct wowlan_ioctl_param poidparam;
 	int ret = _SUCCESS;
 
-	DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
 	pwrpriv->wowlan_ap_mode = true;
 
@@ -1462,14 +1462,14 @@ int rtw_suspend_ap_wow(struct adapter *padapter)
 	DBG_871X_LEVEL(_drv_always_, "%s: wowmode suspending\n", __func__);
 
 	if (rtw_get_ch_setting_union(padapter, &ch, &bw, &offset) != 0) {
-		DBG_871X(FUNC_ADPT_FMT" back to linked/linking union - ch:%u, bw:%u, offset:%u\n",
+		DBG_871X(FUNC_ADPT_FMT " back to linked/linking union - ch:%u, bw:%u, offset:%u\n",
 			 FUNC_ADPT_ARG(padapter), ch, bw, offset);
 		set_channel_bwmode(padapter, ch, offset, bw);
 	}
 
 	rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, 0, "AP-WOWLAN");
 
-	DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 	return ret;
 }
 #endif /* ifdef CONFIG_AP_WOWLAN */
@@ -1480,7 +1480,7 @@ static int rtw_suspend_normal(struct adapter *padapter)
 	struct net_device *pnetdev = padapter->pnetdev;
 	int ret = _SUCCESS;
 
-	DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 	if (pnetdev) {
 		netif_carrier_off(pnetdev);
 		rtw_netif_stop_queue(pnetdev);
@@ -1501,7 +1501,7 @@ static int rtw_suspend_normal(struct adapter *padapter)
 	if (padapter->intf_deinit)
 		padapter->intf_deinit(adapter_to_dvobj(padapter));
 
-	DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 	return ret;
 }
 
@@ -1599,7 +1599,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
 	struct sta_info *psta = NULL;
 	int ret = _SUCCESS;
 
-	DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
 	if (padapter) {
 		pnetdev = padapter->pnetdev;
@@ -1710,7 +1710,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
 	/* clean driver side wake up reason. */
 	pwrpriv->wowlan_wake_reason = 0;
 exit:
-	DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 	return ret;
 }
 #endif /* ifdef CONFIG_WOWLAN */
@@ -1725,7 +1725,7 @@ int rtw_resume_process_ap_wow(struct adapter *padapter)
 	struct wowlan_ioctl_param poidparam;
 	int ret = _SUCCESS;
 
-	DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
 	if (padapter) {
 		pnetdev = padapter->pnetdev;
@@ -1785,7 +1785,7 @@ int rtw_resume_process_ap_wow(struct adapter *padapter)
 	/* clean driver side wake up reason. */
 	pwrpriv->wowlan_wake_reason = 0;
 exit:
-	DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 	return ret;
 }
 #endif /* ifdef CONFIG_APWOWLAN */
@@ -1811,7 +1811,7 @@ static int rtw_resume_process_normal(struct adapter *padapter)
 	psdpriv = padapter->dvobj;
 	pdbgpriv = &psdpriv->drv_dbg;
 
-	DBG_871X("==> "FUNC_ADPT_FMT" entry....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 	/*  interface init */
 	/* if (sdio_init(adapter_to_dvobj(padapter)) != _SUCCESS) */
 	if ((padapter->intf_init) && (padapter->intf_init(adapter_to_dvobj(padapter)) != _SUCCESS))
@@ -1849,21 +1849,21 @@ static int rtw_resume_process_normal(struct adapter *padapter)
 
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
-		DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - WIFI_STATION_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
+		DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - WIFI_STATION_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
 
 		if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME))
 			rtw_roaming(padapter, NULL);
 
 	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
-		DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - WIFI_AP_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
+		DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - WIFI_AP_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
 		rtw_ap_restore_network(padapter);
 	} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
-		DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - WIFI_ADHOC_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
+		DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - WIFI_ADHOC_STATE\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
 	} else {
-		DBG_871X(FUNC_ADPT_FMT" fwstate:0x%08x - ???\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
+		DBG_871X(FUNC_ADPT_FMT " fwstate:0x%08x - ???\n", FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
 	}
 
-	DBG_871X("<== "FUNC_ADPT_FMT" exit....\n", FUNC_ADPT_ARG(padapter));
+	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 
 exit:
 	return ret;
-- 
1.9.1


