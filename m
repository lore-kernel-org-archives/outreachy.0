X-GM-THRID: 6464167912849539072
X-Received: by 10.31.219.66 with SMTP id s63mr4520047vkg.30.1505056653576;
        Sun, 10 Sep 2017 08:17:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.56.137 with SMTP id f131ls2849427ioa.23.gmail; Sun, 10 Sep
 2017 08:17:32 -0700 (PDT)
X-Received: by 10.99.56.81 with SMTP id h17mr5422076pgn.29.1505056652747;
        Sun, 10 Sep 2017 08:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505056652; cv=none;
        d=google.com; s=arc-20160816;
        b=kRR3ZV5lNKjll3dVOrukEIgzPpKJ/sv3XqvlY9pCNMh1FVk5YbNj31qOo2vE6P7sC5
         kj57WtleZLA+Fh6tUdSRBXVPMTGYS48p3sSaN0/KMYqaSAoRTiybXtT/G33PsVZNIRYk
         wN1MvyQ4kERKe5LYX4/W7KetLY6h4/u1dMsfkUSXI+0jiw4CbI92srQOS6vurSNNG7vt
         BEI2ESW80nfw5XrK7H5pSNq3b1B88JBxeOMBEfviKHGfdRlFlZ1fuGFrM8YpK61IEqA0
         /qdV9s5DbIQgQpsDYxMFCaE3s3vjilvL5bX76U4lKtYl+lcH5ksUN7iGmkYQf57mKBsS
         rTfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=lVc26Tpipix1Zeil9G6AM51N6LnfoocJh199HAQnIM4=;
        b=QNnBLxC3iug2fpCk+EBwFtcW731T///mL2/J21wOxxEGN8ev/rsr6KaGLWVjolxo3U
         UBCb9ySYK4sRDweSTrvNAI3gU5BeCprg8bi8ctQyTPaGaR/p7fQy2ZKq0jesH9aqc9WG
         YcQ4lmCnULvcOtfpDQdcttq+S0MraQ19Jh+cBu5jWlQYxhzv8MbgMptaNKNWhwhYDpeB
         o3mM4JVaRImG4rS03pKYjYIqXy2pMMzf/4EVRebduyxh/DReBQweOfDkHNbgOU4h/T1G
         jnhOojMzgVas9IbogqazL/HsSWlAfewiKk0gE/d1md9QmnNO5x5t9h0NUzvQnu8SqKTG
         YCWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMHLWdp/;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id v25si665723pfg.11.2017.09.10.08.17.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 08:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMHLWdp/;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so1522644pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 08:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lVc26Tpipix1Zeil9G6AM51N6LnfoocJh199HAQnIM4=;
        b=oMHLWdp/W0bBM22s0Vw8vHwhe4RMxFEjMGzlYb4fikYH3pci6Pk0A3Oaac51FT+rp5
         eYiWv2K1yWNgb9rrRUYf+ACVQwC7AmoTDaCH7BDRSdcz5i9I5t2hCzcZUm3KZ5sop3Oj
         Wh2/ESH35YdqnSyYz9J9HTP6wDvE7n4UUZPsRuYvJHqxTiO/Pu88rRbPv2SzGB/qIf3m
         /mtNeJCFI1vGD5fEitWJwBtGKibFGQQEf90c8hD6az/2EIil0F+N5sYIBFw/nXx70zTJ
         jsoJWiVjEn5qKefkQrSNAFFxhOL1Ln+GL+m+lN/c69P7Xy866Seipnj1uSP1MZ1Q0oNK
         d7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lVc26Tpipix1Zeil9G6AM51N6LnfoocJh199HAQnIM4=;
        b=hxH/32Tfkq7xh6//YDWBC2iPokShdTa6FzRQsqubi9o4nfAYOhaj3vfUpavw60QPC+
         AnfxpJl9AZydH7q8c6jp61/DAz5c1gfS8BUTToSCwRT7ADl0PwRSd9f+OYXS7uIDB7cD
         Guu9hz1B958OkmVknM6FFIMsNYrt0MKmqsgfFTpVDfRvhd+i9MJyz6gEu4xW9Mfk/g5I
         P74pU1fAch9kc8bzneVzT3KUoMhjOHmOfqaSZtSOEvwW8h6JBexh+9qGPDyjxfvHFgz3
         FBVbdEZY/RloOngBlUpTmceY42VjeAre+6YwmcJUPqF8mmjyzIMDva/LIzGMDnwKo4Lq
         mZ2w==
X-Gm-Message-State: AHPjjUi+J1SON6XsDmt1G30N4tY0IIxQmlND9ZTN+P1df2eCKnqKwRN5
	zBQ9mSPdWa4tkUNm
X-Google-Smtp-Source: ADKCNb4nPN8KCWV8JPrFapxK7CUeLezuiCBSEjFZGhNrRk+aoBpx0N2sDFl/Bmb0MCuTkrlzapurlQ==
X-Received: by 10.98.57.18 with SMTP id g18mr9144224pfa.271.1505056652489;
        Sun, 10 Sep 2017 08:17:32 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id c7sm11555869pfg.165.2017.09.10.08.17.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 08:17:32 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 01/10] staging: rtl8723bs: Add spaces around '='
Date: Sun, 10 Sep 2017 20:45:28 +0530
Message-Id: <7b2a57c6f3eb01142a73e92124fdf06a7504e68e.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Use one space around (on each side of) '=' operator

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 0215899..7f22ca9 100644
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


