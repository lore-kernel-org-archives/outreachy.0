X-GM-THRID: 6387958804710948864
X-Received: by 10.99.103.71 with SMTP id b68mr2115309pgc.28.1487312567890;
        Thu, 16 Feb 2017 22:22:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.124 with SMTP id z57ls3522718otz.38.gmail; Thu, 16 Feb
 2017 22:22:47 -0800 (PST)
X-Received: by 10.157.60.243 with SMTP id t48mr1968846otf.79.1487312567598;
        Thu, 16 Feb 2017 22:22:47 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si557451pfd.3.2017.02.16.22.22.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:22:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id a123so1287807pgc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=sNJrdYN6PpmOr3ktuApHbfTxka+eg8+KlLqWe05GFOY=;
        b=px3Q5028ePcnl/cnat3bDmpua4kuzGfsH7Vn/Q5/wQ61AFpq2Kmr1e55jv2YKnuoJT
         l7dKzoyuwgHAZymABiSAfgsWHkwUDKpjKQ7z8WRFIGpDjb9nbsy54bDBt+BV+SJe42Q5
         /UnTjoLAFd0R46G5QoDV2SHTYk25bl3DtD64uFR3SYZ47rwFgOuukXZeo5jvc2Fd0Fls
         do3uOxvnPPVcNPXd0wtgXOmGTDqlAGFyB5wu3CeUjhm0vyC+fb45bxbDl2MKlL02RwA2
         VB37cVS21IWnvzqsxdK3Tgf+ptqxJL6P+OjWKhwKrsSm53xKgMGcuz4rvQst9oymG8Wh
         bEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=sNJrdYN6PpmOr3ktuApHbfTxka+eg8+KlLqWe05GFOY=;
        b=FjhwuCjh1ufaOMhvtn7uP9ts7gBTx7LIUCESnlOlQH1TfuwTSyPtAi7HJTxSLUwXmv
         0OKf2SA4XvaEPs3c5u0aEXhz8Oy1muVb20GK4GctDXyuLNzBqp5lKSX5gMj97/6wen5h
         BbEflL3CaQCKB5HbXCXFQzT9DT8HUOQ+HNDUuAfEHHg/Jr1zlD1iIOVuRsl2lvf12rXY
         xiiWI9TXi06HYge/uXcHTcEk8O/TAJ79l0jopZVxrDWMj0U+On43OFRoAgnop46nxqlZ
         F958sOG6Cvj4wQE9aNbR17xwB7JyrNR53srDqXfqkR0YjN0ruBsjU7QtDKkecIsrdm5A
         hK1A==
X-Gm-Message-State: AMke39mZAiTGlOMpBmWtAZUN8uZJevgnt/JT5T2LO5PbqX+PBXbutp5cnlGvR0x3+v58rg==
X-Received: by 10.84.229.9 with SMTP id b9mr8973956plk.175.1487312567225;
        Thu, 16 Feb 2017 22:22:47 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm17141628pgn.10.2017.02.16.22.22.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 22:22:46 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 3/6] staging: rtl8188eu: Put constant on right side of comparison
Date: Fri, 17 Feb 2017 11:50:27 +0530
Message-Id: <7aea636395a452bfd750d20eee689fc5d8f6d071.1487312015.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>

Constants should be on the right side of comparisons.

Issue found by checkpatch.pl script.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 0215b65..8bdb539 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -664,7 +664,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 			set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 			pmlmepriv->to_join = false;
 			s_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
-			if (_SUCCESS == s_ret) {
+			if (s_ret == _SUCCESS) {
 				mod_timer(&pmlmepriv->assoc_timer,
 					jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 			} else if (s_ret == 2) { /* there is no need to wait for join */
@@ -674,7 +674,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 				DBG_88E("try_to_join, but select scanning queue fail, to_roaming:%d\n", pmlmepriv->to_roaming);
 				if (pmlmepriv->to_roaming != 0) {
 					if (--pmlmepriv->to_roaming == 0 ||
-					    _SUCCESS != rtw_sitesurvey_cmd(adapter, &pmlmepriv->assoc_ssid, 1, NULL, 0)) {
+					    rtw_sitesurvey_cmd(adapter, &pmlmepriv->assoc_ssid, 1, NULL, 0) != _SUCCESS) {
 						pmlmepriv->to_roaming = 0;
 						rtw_free_assoc_resources(adapter);
 						rtw_indicate_disconnect(adapter);
@@ -1362,7 +1362,7 @@ void _rtw_join_timeout_handler (unsigned long data)
 			if (pmlmepriv->to_roaming != 0) { /* try another , */
 				DBG_88E("%s try another roaming\n", __func__);
 				do_join_r = rtw_do_join(adapter);
-				if (_SUCCESS != do_join_r) {
+				if (do_join_r != _SUCCESS) {
 					DBG_88E("%s roaming do_join return %d\n", __func__, do_join_r);
 					continue;
 				}
@@ -1548,8 +1548,8 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 
 		rtw_hal_get_def_var(adapter, HAL_DEF_CURRENT_ANTENNA, &(cur_ant));
 		DBG_88E("#### Opt_Ant_(%s), cur_Ant(%s)\n",
-			(2 == candidate->network.PhyInfo.Optimum_antenna) ? "A" : "B",
-			(2 == cur_ant) ? "A" : "B"
+			(candidate->network.PhyInfo.Optimum_antenna == 2) ? "A" : "B",
+			(cur_ant == 2) ? "A" : "B"
 		);
 	}
 
@@ -2082,7 +2082,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 		issued = (phtpriv->agg_enable_bitmap>>priority)&0x1;
 		issued |= (phtpriv->candidate_tid_bitmap>>priority)&0x1;
 
-		if (0 == issued) {
+		if (issued == 0) {
 			DBG_88E("rtw_issue_addbareq_cmd, p=%d\n", priority);
 			psta->htpriv.candidate_tid_bitmap |= BIT((u8)priority);
 			rtw_addbareq_cmd(padapter, (u8)priority, pattrib->ra);
@@ -2110,7 +2110,7 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 	else
 		pnetwork = &pmlmepriv->cur_network;
 
-	if (0 < pmlmepriv->to_roaming) {
+	if (pmlmepriv->to_roaming > 0) {
 		DBG_88E("roaming from %s(%pM length:%d\n",
 			pnetwork->network.Ssid.Ssid, pnetwork->network.MacAddress,
 			pnetwork->network.Ssid.SsidLength);
@@ -2120,13 +2120,13 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 
 		while (1) {
 			do_join_r = rtw_do_join(padapter);
-			if (_SUCCESS == do_join_r) {
+			if (do_join_r == _SUCCESS) {
 				break;
 			} else {
 				DBG_88E("roaming do_join return %d\n", do_join_r);
 				pmlmepriv->to_roaming--;
 
-				if (0 < pmlmepriv->to_roaming) {
+				if (pmlmepriv->to_roaming > 0) {
 					continue;
 				} else {
 					DBG_88E("%s(%d) -to roaming fail, indicate_disconnect\n", __func__, __LINE__);
-- 
2.7.4


