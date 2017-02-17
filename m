X-GM-THRID: 6387958804710948864
X-Received: by 10.157.35.107 with SMTP id k40mr2042374otd.92.1487312572401;
        Thu, 16 Feb 2017 22:22:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.18 with SMTP id v18ls301414itc.7.canary-gmail; Thu, 16
 Feb 2017 22:22:51 -0800 (PST)
X-Received: by 10.107.178.3 with SMTP id b3mr2183611iof.93.1487312571928;
        Thu, 16 Feb 2017 22:22:51 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si557451pfd.3.2017.02.16.22.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:22:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id a123so1287807pgc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JWmLzLQ4vuwmcuqGIoQFcbwb2GSqILn1+wVybfEf8NI=;
        b=QIUB+J5C3JrO1ZEY9mrXb7P5rrC2EexgGnzJtAdlFb2WGZbeXLyYJYOf2V1I8yCCuj
         T+SbLcHDD0ZEbMGbwNs0GZcPqyJlLF2INZUhhYFg9i8Iiwvlxgd0Nq+x+FRrPPuDLBeK
         Kh2HNHlsmusaQGYxaQGaX1ObxtbI59yMHD4KhjC5AotzdeeENzr7qu9ueDyFj5hV4gv/
         ycZ9UN22WCPu/y4l2z7iQ1QeLQr3BGsO8Bo2ChipWiFnIpGncbAN0AJQkK66qfNdjDlJ
         Z4+WtP5EN3BkU9Lq9skyis7vgIsfzSQwEu7mKaLeJhXnrl8fY+t8Pr+Zf35NIKFpRBYH
         2CGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JWmLzLQ4vuwmcuqGIoQFcbwb2GSqILn1+wVybfEf8NI=;
        b=bG5g8Rrt9m3GycPQZHalK3E7D/SrIgkvEWN5CBtTb1h+reia5zLm2UbdhcSEDLyRMa
         jxaRKhLtz2rgnqLzrEpMGSKvYN7DxhJsvvO46bpFh4Nffr6oFXoFyAgnrFXQCScdX8iI
         qY3g4fYr9EknxFN0wAjU2uKRelsvLTb7PkwI0A7vxK+c34YgwLfBsO6PJAgM3Hr7Op04
         VGxMKUYAKt6b5Ss7DulkPoNyiC7/o+mi2efwlhQKUja2oVP17le+FT5B9Zfxjkbp2Kgj
         RWCTqnLljfDWuGFQnlOwmT/sQxizOhujeac8DxCk8aXaMEM1ALlAuPP7NWafRhvWJ198
         /LDw==
X-Gm-Message-State: AMke39krBrdBcJ1qbTCqepSs5zoLlAw5ukGGaBfIKFPUOXOa/AGbQBO4QNHjWTolOwQ/FA==
X-Received: by 10.98.209.16 with SMTP id z16mr7375380pfg.139.1487312571684;
        Thu, 16 Feb 2017 22:22:51 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm17141628pgn.10.2017.02.16.22.22.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 22:22:51 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 5/6] staging: rtl8188eu: Remove multiple blank lines
Date: Fri, 17 Feb 2017 11:50:29 +0530
Message-Id: <3c8e389f01e08e2e0059b3fc5d50b2145e367d55.1487312015.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>

Remove blank lines to fix the checkpatch issue,
don't use multiple blank lines.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 289e809..6316a27 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -322,7 +322,6 @@ int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst)
 	memcpy((u8 *)&le_scap, rtw_get_capability_from_ie(src->IEs), 2);
 	memcpy((u8 *)&le_dcap, rtw_get_capability_from_ie(dst->IEs), 2);
 
-
 	s_cap = le16_to_cpu(le_scap);
 	d_cap = le16_to_cpu(le_dcap);
 
@@ -547,7 +546,6 @@ static int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *
 			bselected = false;
 	}
 
-
 	return bselected;
 }
 
@@ -557,7 +555,6 @@ void rtw_atimdone_event_callback(struct adapter *adapter, u8 *pbuf)
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("receive atimdone_evet\n"));
 }
 
-
 void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 {
 	u32 len;
@@ -824,7 +821,6 @@ void rtw_indicate_disconnect(struct adapter *padapter)
 
 	_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING | WIFI_UNDER_WPS);
 
-
 	if (pmlmepriv->to_roaming > 0)
 		_clr_fwstate_(pmlmepriv, _FW_LINKED);
 
@@ -958,7 +954,6 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 
 	cur_network->aid = pnetwork->join_res;
 
-
 	rtw_set_signal_stat_timer(&padapter->recvpriv);
 	padapter->recvpriv.signal_strength = ptarget_wlan->network.PhyInfo.SignalStrength;
 	padapter->recvpriv.signal_qual = ptarget_wlan->network.PhyInfo.SignalQuality;
@@ -1010,7 +1005,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 
 	rtw_get_encrypt_decrypt_from_registrypriv(adapter);
 
-
 	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
 	else
@@ -1070,7 +1064,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 				goto ignore_joinbss_callback;
 			}
 
-
 			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
 				ptarget_sta = rtw_joinbss_update_stainfo(adapter, pnetwork);
@@ -1351,7 +1344,6 @@ void _rtw_join_timeout_handler (unsigned long data)
 	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
 		return;
 
-
 	spin_lock_bh(&pmlmepriv->lock);
 
 	if (pmlmepriv->to_roaming > 0) { /*  join timeout caused by roaming */
@@ -1447,7 +1439,6 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
 	unsigned long since_scan;
 	struct adapter *adapter = container_of(pmlmepriv, struct adapter, mlmepriv);
 
-
 	/* check bssid, if needed */
 	if (pmlmepriv->assoc_by_bssid) {
 		if (memcmp(competitor->network.MacAddress, pmlmepriv->assoc_bssid, ETH_ALEN))
@@ -1530,7 +1521,6 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 			candidate->network.Configuration.DSConfig);
 	}
 
-
 	/*  check for situation of  _FW_LINKED */
 	if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
 		DBG_88E("%s: _FW_LINKED while ask_for_joinbss!!!\n", __func__);
@@ -1928,7 +1918,6 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 	struct ht_priv		*phtpriv = &pmlmepriv->htpriv;
 	u32 rx_packet_offset, max_recvbuf_sz;
 
-
 	phtpriv->ht_option = false;
 
 	p = rtw_get_ie(in_ie+12, _HT_CAPABILITY_IE_, &ielen, in_len-12);
-- 
2.7.4


