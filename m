X-GM-THRID: 6474399283336445952
X-Received: by 10.99.146.8 with SMTP id o8mr231946pgd.27.1507438575454;
        Sat, 07 Oct 2017 21:56:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.193 with SMTP id w1ls523262pgq.27.gmail; Sat, 07 Oct
 2017 21:56:14 -0700 (PDT)
X-Received: by 10.101.74.202 with SMTP id c10mr573956pgu.135.1507438574615;
        Sat, 07 Oct 2017 21:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507438574; cv=none;
        d=google.com; s=arc-20160816;
        b=JwK6om4CGP2EsP8dlLRgNgTVM1dK6pNYb9OYWAze5N+00vbqtWqs0SAkWO0GI26GI2
         Pi1vnL7Jqaj8VLuI6EtkywvyTdubV6Iifbac5UKjv3FSizT5/auGuLe//vHv95sZ3t5G
         vV6Wbv01W7cVUlGij4V4hnHBP20elen2fyxIY0/1Ou6r42A0LFiMH20DHDp0WngcjEif
         HSiW8IEL8zgLQeHgG9zW/h9qgTE/fb5PSfhyEPI8rXLOcqnlsNBJYfjCGuv+ZO92Dooj
         ZqKwtk+R6lUFTZt2oGpiCCL34GPOlF+s9HBp86TavjWr0EmeiCEgtwvJxUsMg1g+Fes/
         btIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=CpZerZljsEnFgNk0RgP9DSGCofZp+Xf1vo1IwJ/KC3s=;
        b=PdLNEt4SXcs+dxF5WUy5jfOA8U5tigWGl1G3x5NiAjpPk3bHLRQTsLL0M8c+8vaFJx
         HNNuzHhesPp/VxBSve4Ec5JSJYIuUidi/zV5CJXyqvWny1aSUt7OrNyYMVMEKapIw56C
         6Bq+ulMJc5BzwTwZ3TnTrVicugWVQ+fMZ9qP/nQLNZpbSUZWawFKxkSYNq/DBMhxwrBP
         QRrE2mffwYxHrAVT6W11UeSz4/2EXkHuj4CA0DPQWJuyUJW0wgyA1zKZOpphgwkvS5We
         +5nnQiHyGot+72j90ZvXNVtf5heuFEo4GgUR/sAslRJPprUdRtug9HDA5GHQhhRmcRky
         +8+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sAL4Rugu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e80si580549pfb.8.2017.10.07.21.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 21:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sAL4Rugu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id m28so20579683pfi.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 21:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CpZerZljsEnFgNk0RgP9DSGCofZp+Xf1vo1IwJ/KC3s=;
        b=sAL4Ruguv8hMGLHqRvxCVCpGXzJEVtQWTphWkXDONJQo8hWL1/MYET2T90euWfG8c6
         Q7JZNZii7mhAhtHUoPSmjMarL+gWLI94g4tMAyNPE/OPGDO6MoSRG8kFEDagxFrUHXzu
         nDWhia3I2fGdWhXB0XgPWU99EHiXvbWlZKaKYPRtbEv9XSynrGxvl8UHmBc1zXQ+M0wX
         hGPhVuD7phj03pOmN5/sUsdGbgHo4zmGK88qmlUJcXLZ2N4+e0cWltHRGZUsYoAtYw1m
         Vg2NYXrqcJLl1VlvbvH8MxcKYqyFLrU+gW9i5Aau0QPh7UTvnscwpCZjEjqJ0qKvGipM
         pwQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CpZerZljsEnFgNk0RgP9DSGCofZp+Xf1vo1IwJ/KC3s=;
        b=HcWWC/5/xQqeHyiar/6usMShl+tHWTwUWO0/XmKWtbLne09WW59r8WJ9oryFR4knJ7
         IRz7nmP4MS/ZFmJxSdokUkDONJETj1CCet1kHhAUM5m7eh9kB1dYR0cIAsoSNAitwiAv
         UJGqKidi7H/jkVDk0EsTUpDqYnye4PZMRlv982tg9nOiDdYAlzr/Nn2RaekbG42/QVMu
         56Nr2i7hmjMk9JSToK/l/UfRLzFG2XT2bQUfKcPfQ1jSCY7PdMjeIfl+8yFXNe/Cp54n
         3ptV8ATFWdUgrY+ltK/mMgQXBxjgwWIoqNYYEdCtQw44e/q+l49F7ZvLM5mIbpcm51Tk
         Xvew==
X-Gm-Message-State: AMCzsaV3+BdUXC6N6vlONc1OT6GzDXk0/2om874W1XD+NBA3/cy19ujx
	p0c9wN8BaVe6uyzbBQhY+GblPxZy
X-Google-Smtp-Source: AOwi7QDGu51b//IAPQOe0XuAlKJo0hZtDuHyM8YL7UjmPFwUEz2rxk8L6lUipK3Yc1Z0F+sE/SB/tQ==
X-Received: by 10.99.166.18 with SMTP id t18mr6063015pge.403.1507438574292;
        Sat, 07 Oct 2017 21:56:14 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id r12sm8050952pgp.81.2017.10.07.21.56.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 21:56:13 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 5/6] staging: rtl8723bs: rename camelcase bAcceptAddbaReq
Date: Sun,  8 Oct 2017 10:24:55 +0530
Message-Id: <ba7c1c8378ec994c15330973cf516db4aeb91cba.1507437264.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>

bAcceptAddbaReq uses camelcase which is not according to Linux kernel
coding style.
There is a 'bAcceptAddbaReq' field both in struct mlme_ext_info and
in struct registry_priv.Rename both of them.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c      | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_debug.c       | 8 +++++---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c   | 2 +-
 drivers/staging/rtl8723bs/include/drv_types.h    | 2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 2 +-
 7 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 01f78d1..79aa02a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -207,11 +207,11 @@ void rtw_btcoex_RejectApAggregatedPacket(struct adapter *padapter, u8 enable)
 	psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(&padapter->mlmepriv));
 
 	if (true == enable) {
-		pmlmeinfo->bAcceptAddbaReq = false;
+		pmlmeinfo->accept_addba_req = false;
 		if (psta)
 			send_delba(padapter, 0, psta->hwaddr);
 	} else{
-		pmlmeinfo->bAcceptAddbaReq = true;
+		pmlmeinfo->accept_addba_req = true;
 	}
 }
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
index 3db02e9..b5dd244 100644
--- a/drivers/staging/rtl8723bs/core/rtw_debug.c
+++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
@@ -1122,7 +1122,8 @@ int proc_get_rx_ampdu(struct seq_file *m, void *v)
 
 	if (pregpriv)
 		DBG_871X_SEL_NL(m,
-			"bAcceptAddbaReq = %d , 0:Reject AP's Add BA req, 1:Accept AP's Add BA req.\n", pmlmeinfo->bAcceptAddbaReq
+			"accept_addba_req = %d , 0:Reject AP's Add BA req, 1:Accept AP's Add BA req.\n",
+			pmlmeinfo->accept_addba_req
 			);
 
 	return 0;
@@ -1146,8 +1147,9 @@ ssize_t proc_set_rx_ampdu(struct file *file, const char __user *buffer, size_t c
 		sscanf(tmp, "%d ", &mode);
 
 		if (pregpriv && mode < 2) {
-			pmlmeinfo->bAcceptAddbaReq = mode;
-			DBG_871X("pmlmeinfo->bAcceptAddbaReq =%d\n", pmlmeinfo->bAcceptAddbaReq);
+			pmlmeinfo->accept_addba_req = mode;
+			DBG_871X("pmlmeinfo->accept_addba_req =%d\n",
+				 pmlmeinfo->accept_addba_req);
 			if (mode == 0) {
 				/*tear down Rx AMPDU*/
 				send_delba(padapter, 0, get_my_bssid(&(pmlmeinfo->network)));/* recipient*/
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 355ce9b..4be9eb2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -480,7 +480,7 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 	/* fill_fwpriv(padapter, &(pmlmeext->fwpriv)); */
 
 	init_mlme_ext_priv_value(padapter);
-	pmlmeinfo->bAcceptAddbaReq = pregistrypriv->bAcceptAddbaReq;
+	pmlmeinfo->accept_addba_req = pregistrypriv->accept_addba_req;
 
 	init_mlme_ext_timer(padapter);
 
@@ -1974,7 +1974,7 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 			/* process_addba_req(padapter, (u8 *)&(pmlmeinfo->ADDBA_req), GetAddr3Ptr(pframe)); */
 			process_addba_req(padapter, (u8 *)&(pmlmeinfo->ADDBA_req), addr);
 
-			if (pmlmeinfo->bAcceptAddbaReq) {
+			if (pmlmeinfo->accept_addba_req) {
 				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_ADDBA_RESP, 0);
 			} else{
 				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_ADDBA_RESP, 37);/* reject ADDBA Req */
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a169534..f6dc26c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1946,7 +1946,7 @@ void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr)
 		preorder_ctrl->indicate_seq = 0xffff;
 		#endif
 
-		preorder_ctrl->enable = (pmlmeinfo->bAcceptAddbaReq == true) ? true : false;
+		preorder_ctrl->enable = pmlmeinfo->accept_addba_req;
 	}
 
 }
diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 4d14fbc..6812dd0 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -177,7 +177,7 @@ struct registry_priv
 	u8 bt_ampdu;
 	s8	ant_num;
 
-	bool	bAcceptAddbaReq;
+	bool	accept_addba_req;
 
 	u8 antdiv_cfg;
 	u8 antdiv_type;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index f395246..0d22aaf 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -424,7 +424,7 @@ struct mlme_ext_info
 	u8 candidate_tid_bitmap;
 	u8 dialogToken;
 	/*  Accept ADDBA Request */
-	bool bAcceptAddbaReq;
+	bool accept_addba_req;
 	u8 bwmode_updated;
 	u8 hidden_ssid_mode;
 	u8 VHT_enable;
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 51df42d..b4b79fe 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -311,7 +311,7 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	registry_par->bt_ampdu = (u8)rtw_bt_ampdu;
 	registry_par->ant_num = (s8)rtw_ant_num;
 
-	registry_par->bAcceptAddbaReq = (u8)rtw_AcceptAddbaReq;
+	registry_par->accept_addba_req = (u8)rtw_AcceptAddbaReq;
 
 	registry_par->antdiv_cfg = (u8)rtw_antdiv_cfg;
 	registry_par->antdiv_type = (u8)rtw_antdiv_type;
-- 
2.7.4


