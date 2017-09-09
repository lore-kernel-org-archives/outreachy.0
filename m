X-GM-THRID: 6463845646554103808
X-Received: by 10.129.67.22 with SMTP id q22mr4419654ywa.187.1504981342612;
        Sat, 09 Sep 2017 11:22:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.147 with SMTP id e141ls3069953ite.1.gmail; Sat, 09 Sep
 2017 11:22:21 -0700 (PDT)
X-Received: by 10.101.91.131 with SMTP id i3mr4094029pgr.93.1504981341824;
        Sat, 09 Sep 2017 11:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504981341; cv=none;
        d=google.com; s=arc-20160816;
        b=pakzanZBzy2VAGvjefqW/sP+gGN4kz6/85iV/Xkw3FD/DxPHGpreSzyw7rCosIVg9i
         Yy5vMw3OVUXpRU0UWxRNljO2Ukw2hYx9Y8Go1MafGOE3bbnKvCNdKYUBaANMXTfHDct9
         x9N4Aqf2MoBPXeeWShLkmD7edfMDyj2A9CRVF1yVMNc+p/qvJmH+1OLXd/VZTCzQyGD8
         u9Xx+OX3wpiw2wR1sNFkWQKCoNRIxYIAPeN0w0gS0apKMMr8CPaQY2Tf07eqkgpb+luP
         sqNB9UX7r5z6iX9pmHuTtIKIVAoJGkxLxbvmusW7VWcAo051yoovxOuGRUJqEU9Ecwgz
         AKzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=4yTPWoITFVvlTtIfbqmdq8Bga/CCC7HH1Xe3yq5BnTY=;
        b=aIK2C7G8pXTPGkAKgdLwzfvOKMHzZ8WBjdZnVsafYwUpzVEfDO3wBLT6qpbHL4ZBge
         Qlt1vTru/AM4wZ7DWiAXAVA8AaxHPAaUt7o85OKAWBZcDeMkDg9XnMIECs8zx+l4ht7Q
         J5KS51oTFxR+g4NaKTRqABJotSvHKWHtZ2FaO+ZIw2BRlnvaaf12CPrRz321he3Q3dH2
         9RZgKPLRZFS3/B7ZyLKvGPIQjAmB10xEy0UyY9qneaH1XrLS1ARUDAFsnf8saU4aZrTE
         7wc9C0ZEevXMWC7qHu6xxiDe5+BqCl91C//IEeUlIZuk7AXC9QmqkC+Wnny/N+2hTxWy
         M0Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S+bA/3Ey;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a67si505809pfe.17.2017.09.09.11.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 11:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S+bA/3Ey;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id q68so2760532pgq.2
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 11:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4yTPWoITFVvlTtIfbqmdq8Bga/CCC7HH1Xe3yq5BnTY=;
        b=S+bA/3Ey+x08fOjQ2KhcefXlrf6BhUSRtg7j2CnG3VLgv05HYeuevR3ccJFK7rrryI
         DKVAGxnnaJ07+6tSfU/kYXcyR8fXG5bHrpYB0Oag7ZEdkkrQ+WF92OOlgC7Wbjk9FjqI
         vIIOhOCEseE4JltcsMuBOblP2yEFedYfbrsfM2WdB4UUggbBQ4TZYSKeEh6OkUMs7piO
         NvJGBWh7CG3pj0bdUMzqJy93ghZY8xFTbZfu+1EXOnSjAQje3kkUSAQQTFlgoLjBLT98
         9zFRuBJZ/sTpZh2UHhDw/AYzvIc3ry9hLVzLLL0OCk5D/un+q/CxlEsKCNrdVglDb43C
         5l9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4yTPWoITFVvlTtIfbqmdq8Bga/CCC7HH1Xe3yq5BnTY=;
        b=nDXFDSnb+AKUnL75HlnbrM8tLECqy5VDbZl3UTiYakMUdK8uYHh2WxMCeH1pDtop3d
         dehWrefJwKO8j1id8aBvY8asYGBSHnlaqmjZ2vmas6wiRsWyzslZXZ8tdscbHjm7/LN2
         toH9xVQfJK3mi3TXpeWDf8u8YiuVTwFjWyEEdwS7MZrGABsUYVm+nWRPEg/3AiahwipK
         b1AZc/+l3qX4XdajWxE5fWhneHhxhb9mxm3P0Ft9dcGYo4b+RMQgy2mqIDyD63V9JOH0
         IHZtL1qi7nfyrvOr6dDsvqf/L3fMwdi6qm6ThqRADlZiL0iDtYxQXW3khc5YANB+3Lyg
         LR/w==
X-Gm-Message-State: AHPjjUiOaV3kQosQ0AHH8xA2cZ0PZqbjM2MofX7V6l+MQ0rtp4oor0li
	/FRSKU2GpyDz+g==
X-Google-Smtp-Source: ADKCNb6KfOzYVHZ4w+yyxORR1A0YzQzLB2O5gGF5RfMwqsFHvnIOGSb5Ic6G3w8j9+FBivp7cXH38Q==
X-Received: by 10.84.129.98 with SMTP id 89mr7860686plb.383.1504981341571;
        Sat, 09 Sep 2017 11:22:21 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id 80sm8794666pfq.38.2017.09.09.11.22.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 11:22:20 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rtl8723bs: Add spaces around '=', '|', '<<'
Date: Sat,  9 Sep 2017 23:50:13 +0530
Message-Id: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Use one space around most binary operators

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 0215899..0129381 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -121,7 +121,7 @@
 
 static int rtw_enusbss = 0;/* 0:disable, 1:enable */
 
-static int rtw_hwpdn_mode =2;/* 0:disable, 1:enable, 2: by EFUSE config */
+static int rtw_hwpdn_mode = 2;/* 0:disable, 1:enable, 2: by EFUSE config */
 
 #ifdef CONFIG_HW_PWRP_DETECTION
 static int rtw_hwpwrp_detect = 1;
@@ -183,7 +183,7 @@
 
 module_param(rtw_hw_wps_pbc, int, 0644);
 
-static uint rtw_max_roaming_times =2;
+static uint rtw_max_roaming_times = 2;
 module_param(rtw_max_roaming_times, uint, 0644);
 MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times to try");
 
@@ -222,7 +222,7 @@
 /*  BIT4 - RF,					0: non-support, 1: support */
 /*  BIT5 - RF_TXPWR_TRACK,	0: non-support, 1: support */
 /*  BIT6 - RF_TXPWR_LMT,		0: non-support, 1: support */
-static int rtw_load_phy_file = (BIT2|BIT6);
+static int rtw_load_phy_file = (BIT2 | BIT6);
 module_param(rtw_load_phy_file, int, 0644);
 MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
 static int rtw_decrypt_phy_file = 0;
@@ -255,8 +255,8 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 
 	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
 	registry_par->vcs_type = (u8)rtw_vcs_type;
-	registry_par->rts_thresh =(u16)rtw_rts_thresh;
-	registry_par->frag_thresh =(u16)rtw_frag_thresh;
+	registry_par->rts_thresh = (u16)rtw_rts_thresh;
+	registry_par->frag_thresh = (u16)rtw_frag_thresh;
 	registry_par->preamble = (u8)rtw_preamble;
 	registry_par->scan_mode = (u8)rtw_scan_mode;
 	registry_par->adhoc_tx_pwr = (u8)rtw_adhoc_tx_pwr;
@@ -440,7 +440,7 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
 	u32 priority;
 	u8 *pdata = skb->data;
 
-	memcpy(&eth_type, pdata+(ETH_ALEN<<1), 2);
+	memcpy(&eth_type, pdata+(ETH_ALEN << 1), 2);
 
 	switch (be16_to_cpu(eth_type)) {
 		case ETH_P_IP:
@@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct adapter *padapter)
 #ifdef CONFIG_GTK_OL
 	psecuritypriv->binstallKCK_KEK = _FAIL;
 #endif /* CONFIG_GTK_OL */
-	psecuritypriv->sw_encrypt =pregistrypriv->software_encrypt;
-	psecuritypriv->sw_decrypt =pregistrypriv->software_decrypt;
+	psecuritypriv->sw_encrypt = pregistrypriv->software_encrypt;
+	psecuritypriv->sw_decrypt = pregistrypriv->software_decrypt;
 
 	psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open; /* open system */
 	psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
@@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)
 	pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
 	pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;
 
-	_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY |_FW_UNDER_LINKING);
+	_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING);
 
 	pwrctrlpriv->pwr_state_check_cnts = 0;
 
@@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 		goto exit;
 	}
 
-	padapter->cmdpriv.padapter =padapter;
+	padapter->cmdpriv.padapter = padapter;
 
 	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
@@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev)
 
 		DBG_871X("MAC Address = "MAC_FMT"\n", MAC_ARG(pnetdev->dev_addr));
 
-		status =rtw_start_drv_threads(padapter);
+		status = rtw_start_drv_threads(padapter);
 		if (status == _FAIL) {
 			DBG_871X("Initialize driver software resource Failed!\n");
 			goto netdev_open_error;
@@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
 		}
 
 		/* Disable WOW, set H2C command */
-		poidparam.subcode =WOWLAN_DISABLE;
+		poidparam.subcode = WOWLAN_DISABLE;
 		padapter->HalFunc.SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&poidparam);
 
 		psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(&padapter->mlmepriv));
@@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
 		DBG_871X_LEVEL(_drv_always_, "do not reset timer\n");
 	}
 
-	pwrpriv->wowlan_mode =false;
+	pwrpriv->wowlan_mode = false;
 
 	/* clean driver side wake up reason. */
 	pwrpriv->wowlan_wake_reason = 0;
-- 
1.9.1


