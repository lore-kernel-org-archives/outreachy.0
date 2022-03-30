Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278497C
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 12:14:13 +0000 (UTC)
Received: by mail-qv1-f45.google.com with SMTP id hu11so16654510qvb.7
        for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 05:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=KJJhwBeTtnY2nZT5ALZKNRlgaNnJMvZu+qYm2CN8oO4=;
        b=Y/gBxvnb76fhPE1OInZR7m9WaE0SyS6g8TmyHSJZ0aPeawfPg1vM5Tc9tP3NUQ5Hfw
         AgjKpC2qZdtAi8Uc4SnAPg7SQdOSwbgMD8E2BlrU7m0w7Nvgbw4F1fnn6I9ogtrxLNen
         jhG/p/G5COss322dItT88SgteSqnCzSmp1aDmCu+dBocQ9ONmBN9RB9p5W4Zrlc16HVy
         PnN0HzVLpRHCGvRQoRG1SzpGP2FpxjR86L5Vz0nW+56Q86QVOJ5Aqpih2J4aa6JZfrDP
         Skj6jdsTiUI4ZNYQCgUBe2PQfyfJwgLS7gJJEpQVut21JSuIAuYkvTPjjq0ZCaj96ZPu
         g1uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=KJJhwBeTtnY2nZT5ALZKNRlgaNnJMvZu+qYm2CN8oO4=;
        b=IvzSXrdwA8LsZIJVr6POX3uLeRB6GbtaFNGMocJNvyMvyHu8Q1CngEfnEKG7q6Ip+D
         iRTSeSE/pGZE3ZzULjrdCgnpjNmqKhaVrDE3x6oEcWXWzevxdpcD9Vwi2QKD9i2Q5pXw
         SDierFyk+L+p8GjabbtvmGt/tlGqRta4VV0ipsRbyn2D0KFPQxdmqCFntCT3nVcILKBR
         uTMj4cavlO7rY2i4UJmTCZpeXy+96xIVZL9Ve3gLzGs7L5VNcwYvJEL/Rg6eNc5ozLFG
         /UoQ6dKVVyn8GikO0Cl6bknGO6vehkQOXdetmOPz6KKbDvDRpZw1LaaWDTp5rgxYQZ0o
         rWrA==
X-Gm-Message-State: AOAM531k5vGinG/YQIMe4Z5xmFBA+IxAE1zcT0Egi6byFZYOy7ez1aSE
	JFEpQVd7Gzz4DmTMbGD06/0Jg5vCwgrKVGRy
X-Google-Smtp-Source: ABdhPJxIJHx8s4eAdXf+Z4Y1U88oQpznn1sDNBGDgPNw5hndfShQyLpWT47999RdmYSVKqx7Qd+Jcg==
X-Received: by 2002:a05:6214:2487:b0:441:1c21:2693 with SMTP id gi7-20020a056214248700b004411c212693mr30625120qvb.17.1648642451613;
        Wed, 30 Mar 2022 05:14:11 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id j18-20020ac85c52000000b002e1b9897ae7sm16654103qtj.10.2022.03.30.05.14.10
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 05:14:11 -0700 (PDT)
Date: Wed, 30 Mar 2022 08:14:10 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: outreachy@lists.linux.dev
Subject: [PATCH] staging: rtl8723bs: place constants on the right side of
 tests
Message-ID: <20220330121410.GA340244@euclid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[I just sent this to Greg and kernel mailing lists but forgot to Cc
outreachy. Sending it only to outreachy this time.]

Adhere to Linux kernel coding style.

Reported by checkpatch:

WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index ed2d3b7d44d9..d5bb3a5bd2fb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -792,7 +792,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 			set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 			pmlmepriv->to_join = false;
 			s_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
-			if (_SUCCESS == s_ret) {
+			if (s_ret == _SUCCESS) {
 			     _set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
 			} else if (s_ret == 2) {/* there is no need to wait for join */
 				_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
@@ -1554,7 +1554,7 @@ void _rtw_join_timeout_handler(struct timer_list *t)
 				int do_join_r;
 
 				do_join_r = rtw_do_join(adapter);
-				if (_SUCCESS != do_join_r) {
+				if (do_join_r != _SUCCESS) {
 					continue;
 				}
 				break;
@@ -2558,7 +2558,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 		issued = (phtpriv->agg_enable_bitmap>>priority)&0x1;
 		issued |= (phtpriv->candidate_tid_bitmap>>priority)&0x1;
 
-		if (0 == issued) {
+		if (issued == 0) {
 			psta->htpriv.candidate_tid_bitmap |= BIT((u8)priority);
 			rtw_addbareq_cmd(padapter, (u8) priority, pattrib->ra);
 		}
@@ -2610,14 +2610,14 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 	struct wlan_network *cur_network = &pmlmepriv->cur_network;
 	int do_join_r;
 
-	if (0 < rtw_to_roam(padapter)) {
+	if (rtw_to_roam(padapter) > 0) {
 		memcpy(&pmlmepriv->assoc_ssid, &cur_network->network.ssid, sizeof(struct ndis_802_11_ssid));
 
 		pmlmepriv->assoc_by_bssid = false;
 
 		while (1) {
 			do_join_r = rtw_do_join(padapter);
-			if (_SUCCESS == do_join_r) {
+			if (do_join_r == _SUCCESS) {
 				break;
 			} else {
 				rtw_dec_to_roam(padapter);
-- 
2.25.1

