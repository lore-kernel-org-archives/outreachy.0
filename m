X-GM-THRID: 6617910833765679104
X-Received: by 2002:a63:4444:: with SMTP id t4-v6mr276522pgk.14.1540852574002;
        Mon, 29 Oct 2018 15:36:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6255:: with SMTP id q21-v6ls116580pgv.8.gmail; Mon, 29
 Oct 2018 15:36:13 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cho0LG+xcRnGyD6oerjkBy7x1IYsUj0ZRn+Pa7UCxbEdZTX0Y39t9zn0PJXPCpq9l8pujG
X-Received: by 2002:a62:4b0b:: with SMTP id y11-v6mr85495pfa.99.1540852573153;
        Mon, 29 Oct 2018 15:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540852573; cv=none;
        d=google.com; s=arc-20160816;
        b=Kx9qCMCl/2TqM9ODaJKLFiSUswUhYHTBeyC5LbPatqa4tATPdGoXHgu4ccwZGZSzh8
         AEUtPdj/6ScY4JGL3dhsM9J5Wakrmgj4oKhl6RX4028m0p2IGto/XHWuHZ1eXblegzZt
         ZdeqNbMtX/1WCYi4jDioOggW4WsnD2shEoG7fNi0ZXgd1H4OEJ68HeRp1kpPOwcIQ4wM
         HFgK4lkuuddiNQGDUA1I3JB5VncRBlchKSDTJBeK2wy7YDcERBT1fK/NFgEWWZJAZge4
         yWWUn+msXX+w89VuIXIt7bpyl0/61g98pKQaVIPCV1mtSN3gyuPYAdxioNWN2uBOS9MX
         neIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=0mr37KV5Zc7hEdBU6NScXk+pbzUmGybdcEV0SukqthY=;
        b=z8yahHOSXdOzkAwL785sKe/iYW1E9PpNfbgTysBctRK3Ur2uyblBRV2K27f9u8sCIN
         B1gdoaTIJEbaaIjBRDY2CUBzuZXOFcYaK9tKLH4ye0XSwGP22Ucze1PAIcKp/09l0rei
         vMBYzF0Viek6W7DpZi2HlY8HDBxpt27OkgoXQgQSJj6lGpqUIPRWkcUcImJ+fkX95Vie
         eRsMcEA6McPe4U5Cp+UFD98bI2LxbMwFRZd4aP5hkFpDjCzJ57MVaAUwzLsfy1ar3tiB
         gl44QJgB7yjVKmGYHsJdbskJQkdYA+NatPqoB6pjjI1gZm8gO0EdZN4lyw9FXuM72YBc
         /sRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+A6EMpu;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id j5-v6si841232pll.0.2018.10.29.15.36.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 15:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+A6EMpu;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2b.google.com with SMTP id k17-v6so6067569ioc.4
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 15:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0mr37KV5Zc7hEdBU6NScXk+pbzUmGybdcEV0SukqthY=;
        b=X+A6EMpuWHUKxGCxmYTx3V0mG/9K4U35yTmd0vmZQg3qo57T1p55piBW6VZgSjJ14f
         d+eWW0wYbo3nTYt8vjyYPgyVyOlxfQeY4UMRqnbqw0aml9Jea8h4h2a8H6/kD67YYoz3
         frFoAabPMWBoMOqHYWWmN/bCORzCcWApUmp4iew/HWoDi+LIrNfrPa9aICP32cMxJcbE
         9mMTuBE32T2sxIKogLgvOzSJYm8cDLg0+eJddT1LQq55XU/SE+ITdd1/7QRjqpOTuGWd
         +mlkSH04CyRl6I6CLfCcePP8QZhD0eGpphwUBFJCCY2JcP4igFKYbuNcU/bKTs4eoFFp
         UxVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0mr37KV5Zc7hEdBU6NScXk+pbzUmGybdcEV0SukqthY=;
        b=YxhNKAOZyLDgjAmZJgCIK0O6CUGbksWo2rwTzfyoFIklcCCrb3OmSLS+Tojd5GYYTc
         XqoVRfVLKNvQm++0PcfXyJ9vfgynZ644aHJegnpnt2Y0SAXh746DZgPPP3pKdzx9x4zS
         BQDpWS8GxS+aw/Cq4N+lLo7dV330KzoLVSL30brYDQX8yqNTy2MkKFefVfjjPPYCt5Xc
         i47PPswRtWtZnHySkMFmYDB0YvX70DBYhJZwPxRyQvy4smbO6qwBxv/dsyU5S3MMkl4M
         HXYnj+UrU0kysGHfqyH9WhUWFrh+uETBqpqRd39B9a9Qwl4lE8HZ/PTm88sLaMjN7SF5
         9auw==
X-Gm-Message-State: AGRZ1gIV0AkeE8s8TsC94/Rup23df31WUvTXx6D/H4uQppmWFrC6uV+M
	+SJoLjfpvJm52vD0lbtw5ANSVjx+1Ro=
X-Received: by 2002:a5e:8d19:: with SMTP id m25-v6mr9823499ioj.258.1540852571434;
        Mon, 29 Oct 2018 15:36:11 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from ubu-Virtual-Machine (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id y7-v6sm7732903itb.40.2018.10.29.15.36.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Oct 2018 15:36:10 -0700 (PDT)
Date: Mon, 29 Oct 2018 18:36:08 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bastien Nocera <hadess@hadess.net>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 1/2] staging: rtl8723bs: core: remove unnecessary blank lines
Message-ID: <964b239d75c6a13269b78a357969f2102392d215.1540850889.git.kimbrownkd@gmail.com>
References: <cover.1540850888.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540850888.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove unnecessary blank lines, including multiple blank lines, blank
lines after opening braces, and blank lines before closing braces, from
file core/rtw_ap.c. Issues found by checkpatch.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 212 ------------------------
 1 file changed, 212 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 2691241bfd84..330cd21c21bd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -21,7 +21,6 @@ void init_mlme_ap_info(struct adapter *padapter)
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 
-
 	spin_lock_init(&pmlmepriv->bcn_update_lock);
 
 	/* for ACL */
@@ -69,7 +68,6 @@ static void update_BCNTIM(struct adapter *padapter)
 	/* update TIM IE */
 	/* if (pstapriv->tim_bitmap) */
 	if (true) {
-
 		u8 *p, *dst_ie, *premainder_ie = NULL, *pbackup_remainder_ie = NULL;
 		__le16 tim_bitmap_le;
 		uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
@@ -83,7 +81,6 @@ static void update_BCNTIM(struct adapter *padapter)
 			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
 		);
 		if (p != NULL && tim_ielen > 0) {
-
 			tim_ielen += 2;
 
 			premainder_ie = p+tim_ielen;
@@ -95,8 +92,6 @@ static void update_BCNTIM(struct adapter *padapter)
 			/* append TIM IE from dst_ie offset */
 			dst_ie = p;
 		} else{
-
-
 			tim_ielen = 0;
 
 			/* calucate head_len */
@@ -121,7 +116,6 @@ static void update_BCNTIM(struct adapter *padapter)
 			if (p !=  NULL)
 				offset += tmp_len+2;
 
-
 			/* DS Parameter Set IE, len =3 */
 			offset += 3;
 
@@ -131,12 +125,9 @@ static void update_BCNTIM(struct adapter *padapter)
 
 			/* append TIM IE from offset */
 			dst_ie = pie + offset;
-
 		}
 
-
 		if (remainder_ielen > 0) {
-
 			pbackup_remainder_ie = rtw_malloc(remainder_ielen);
 			if (pbackup_remainder_ie && premainder_ie)
 				memcpy(pbackup_remainder_ie, premainder_ie, remainder_ielen);
@@ -160,7 +151,6 @@ static void update_BCNTIM(struct adapter *padapter)
 			*dst_ie++ = 0;
 
 		if (tim_ielen == 4) {
-
 			__le16 pvb;
 
 			if (pstapriv->tim_bitmap&0xff00)
@@ -171,15 +161,12 @@ static void update_BCNTIM(struct adapter *padapter)
 			*dst_ie++ = le16_to_cpu(pvb);
 
 		} else if (tim_ielen == 5) {
-
-
 			memcpy(dst_ie, &tim_bitmap_le, 2);
 			dst_ie += 2;
 		}
 
 		/* copy remainder IE */
 		if (pbackup_remainder_ie) {
-
 			memcpy(dst_ie, pbackup_remainder_ie, remainder_ielen);
 
 			kfree(pbackup_remainder_ie);
@@ -187,7 +174,6 @@ static void update_BCNTIM(struct adapter *padapter)
 
 		offset =  (uint)(dst_ie - pie);
 		pnetwork_mlmeext->IELength = offset + remainder_ielen;
-
 	}
 }
 
@@ -223,7 +209,6 @@ void expire_timeout_chk(struct adapter *padapter)
 	char chk_alive_list[NUM_STA];
 	int i;
 
-
 	spin_lock_bh(&pstapriv->auth_list_lock);
 
 	phead = &pstapriv->auth_list;
@@ -237,16 +222,13 @@ void expire_timeout_chk(struct adapter *padapter)
 	}
 	#endif
 	while (phead != plist) {
-
 		psta = LIST_CONTAINOR(plist, struct sta_info, auth_list);
 
 		plist = get_next(plist);
 
 		if (psta->expire_to > 0) {
-
 			psta->expire_to--;
 			if (psta->expire_to == 0) {
-
 				list_del_init(&psta->auth_list);
 				pstapriv->auth_list_cnt--;
 
@@ -267,13 +249,11 @@ void expire_timeout_chk(struct adapter *padapter)
 				spin_lock_bh(&pstapriv->auth_list_lock);
 			}
 		}
-
 	}
 
 	spin_unlock_bh(&pstapriv->auth_list_lock);
 	psta = NULL;
 
-
 	spin_lock_bh(&pstapriv->asoc_list_lock);
 
 	phead = &pstapriv->asoc_list;
@@ -287,7 +267,6 @@ void expire_timeout_chk(struct adapter *padapter)
 	}
 	#endif
 	while (phead != plist) {
-
 		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 #ifdef CONFIG_AUTO_AP_MODE
@@ -304,11 +283,9 @@ void expire_timeout_chk(struct adapter *padapter)
 		}
 
 		if (psta->expire_to == 0) {
-
 			struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
 			if (padapter->registrypriv.wifi_spec == 1) {
-
 				psta->expire_to = pstapriv->expire_to;
 				continue;
 			}
@@ -336,7 +313,6 @@ void expire_timeout_chk(struct adapter *padapter)
 				if (stainfo_offset_valid(stainfo_offset))
 					chk_alive_list[chk_alive_num++] = stainfo_offset;
 
-
 				continue;
 			}
 			list_del_init(&psta->asoc_list);
@@ -348,8 +324,6 @@ void expire_timeout_chk(struct adapter *padapter)
 			);
 			updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
 		} else{
-
-
 			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
 			if (psta->sleepq_len > (NR_XMITFRAME/pstapriv->asoc_list_cnt)
 				&& padapter->xmitpriv.free_xmitframe_cnt < ((
@@ -404,7 +378,6 @@ void expire_timeout_chk(struct adapter *padapter)
 				psta->keep_alive_trycnt = 0;
 				continue;
 			} else if (psta->keep_alive_trycnt <= 3) {
-
 				DBG_871X(
 					"ack check for asoc expire, keep_alive_trycnt =%d\n",
 					psta->keep_alive_trycnt);
@@ -453,7 +426,6 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 	shortGIrate = query_ra_short_GI(psta);
 
 	if (pcur_network->Configuration.DSConfig > 14) {
-
 		if (tx_ra_bitmap & 0xffff000)
 			sta_band |= WIRELESS_11_5N;
 
@@ -474,7 +446,6 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 	psta->raid = rtw_hal_networktype_to_raid(padapter, psta);
 
 	if (psta->aid < NUM_STA) {
-
 		u8 arg[4] = {0};
 
 		arg[0] = psta->mac_id;
@@ -487,11 +458,8 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 
 		rtw_hal_add_ra_tid(padapter, tx_ra_bitmap, arg, rssi_level);
 	} else{
-
-
 		DBG_871X("station aid %d exceed the max number\n", psta->aid);
 	}
-
 }
 
 void update_bmc_sta(struct adapter *padapter)
@@ -507,7 +475,6 @@ void update_bmc_sta(struct adapter *padapter)
 	struct sta_info *psta = rtw_get_bcmc_stainfo(padapter);
 
 	if (psta) {
-
 		psta->aid = 0;/* default set to 0 */
 		/* psta->mac_id = psta->aid+4; */
 		psta->mac_id = psta->aid + 1;/* mac_id = 1 for bc/mc stainfo */
@@ -572,11 +539,8 @@ void update_bmc_sta(struct adapter *padapter)
 		spin_unlock_bh(&psta->lock);
 
 	} else{
-
-
 		DBG_871X("add_RATid_bmc_sta error!\n");
 	}
-
 }
 
 /* notes: */
@@ -611,7 +575,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 	else
 		psta->ieee8021x_blocked = false;
 
-
 	/* update sta's cap */
 
 	/* ERP */
@@ -619,7 +582,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 
 	/* HT related cap */
 	if (phtpriv_sta->ht_option) {
-
 		/* check if sta supports rx ampdu */
 		phtpriv_sta->ampdu_enable = phtpriv_ap->ampdu_enable;
 
@@ -640,7 +602,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 
 		phtpriv_sta->ch_offset = pmlmeext->cur_ch_offset;
 
-
 		/* check if sta support s Short GI 20M */
 		if ((
 			phtpriv_sta->ht_cap.cap_info & phtpriv_ap->ht_cap.cap_info
@@ -651,7 +612,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 		if ((
 			phtpriv_sta->ht_cap.cap_info & phtpriv_ap->ht_cap.cap_info
 		) & cpu_to_le16(IEEE80211_HT_CAP_SGI_40)) {
-
 			if (psta->bw_mode == CHANNEL_WIDTH_40) /* according to psta->bw_mode */
 				phtpriv_sta->sgi_40m = true;
 			else
@@ -663,7 +623,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 		/*  B0 Config LDPC Coding Capability */
 		if (TEST_FLAG(phtpriv_ap->ldpc_cap, LDPC_HT_ENABLE_TX) &&
 			GET_HT_CAPABILITY_ELE_LDPC_CAP((u8 *)(&phtpriv_sta->ht_cap))) {
-
 			SET_FLAG(cur_ldpc_cap, (LDPC_HT_ENABLE_TX | LDPC_HT_CAP_TX));
 			DBG_871X("Enable HT Tx LDPC for STA(%d)\n", psta->aid);
 		}
@@ -671,13 +630,10 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 		/*  B7 B8 B9 Config STBC setting */
 		if (TEST_FLAG(phtpriv_ap->stbc_cap, STBC_HT_ENABLE_TX) &&
 			GET_HT_CAPABILITY_ELE_RX_STBC((u8 *)(&phtpriv_sta->ht_cap))) {
-
 			SET_FLAG(cur_stbc_cap, (STBC_HT_ENABLE_TX | STBC_HT_CAP_TX));
 			DBG_871X("Enable HT Tx STBC for STA(%d)\n", psta->aid);
 		}
 	} else{
-
-
 		phtpriv_sta->ampdu_enable = false;
 
 		phtpriv_sta->sgi_20m = false;
@@ -704,16 +660,12 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 
 	memset((void *)&psta->sta_stats, 0, sizeof(struct stainfo_stats));
 
-
 	/* add ratid */
 	/* add_RATid(padapter, psta);//move to ap_sta_info_defer_update() */
 
-
 	spin_lock_bh(&psta->lock);
 	psta->state |= _FW_LINKED;
 	spin_unlock_bh(&psta->lock);
-
-
 }
 
 static void update_ap_info(struct adapter *padapter, struct sta_info *psta)
@@ -731,7 +683,6 @@ static void update_ap_info(struct adapter *padapter, struct sta_info *psta)
 
 	/* HT related cap */
 	if (phtpriv_ap->ht_option) {
-
 		/* check if sta supports rx ampdu */
 		/* phtpriv_ap->ampdu_enable = phtpriv_ap->ampdu_enable; */
 
@@ -743,11 +694,8 @@ static void update_ap_info(struct adapter *padapter, struct sta_info *psta)
 		if ((phtpriv_ap->ht_cap.cap_info) & cpu_to_le16(IEEE80211_HT_CAP_SGI_40))
 			phtpriv_ap->sgi_40m = true;
 
-
 		psta->qos_option = true;
 	} else{
-
-
 		phtpriv_ap->ampdu_enable = false;
 
 		phtpriv_ap->sgi_20m = false;
@@ -772,7 +720,6 @@ static void update_hw_ht_param(struct adapter *padapter)
 
 	DBG_871X("%s\n", __func__);
 
-
 	/* handle A-MPDU parameter field */
 	/*
 		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
@@ -805,7 +752,6 @@ static void update_hw_ht_param(struct adapter *padapter)
 	/*  Config current HT Protection mode. */
 	/*  */
 	/* pmlmeinfo->HT_protection = pmlmeinfo->HT_info.infos[1] & 0x3; */
-
 }
 
 void start_bss_network(struct adapter *padapter, u8 *pbuf)
@@ -833,7 +779,6 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	cur_bwmode = CHANNEL_WIDTH_20;
 	cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
-
 	/* check if there is wps ie, */
 	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
 	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
@@ -845,14 +790,12 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	))
 		pmlmeext->bstart_bss = true;
 
-
 	/* todo: update wmm, ht cap */
 	/* pmlmeinfo->WMM_enable; */
 	/* pmlmeinfo->HT_enable; */
 	if (pmlmepriv->qospriv.qos_option)
 		pmlmeinfo->WMM_enable = true;
 	if (pmlmepriv->htpriv.ht_option) {
-
 		pmlmeinfo->WMM_enable = true;
 		pmlmeinfo->HT_enable = true;
 		/* pmlmeinfo->HT_info_enable = true; */
@@ -900,12 +843,10 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	rtw_hal_set_hwreg(padapter, HW_VAR_DO_IQK, NULL);
 
 	if (!pmlmepriv->cur_network.join_res) { /* setting only at  first time */
-
 		/* u32 initialgain; */
 
 		/* initialgain = 0x1e; */
 
-
 		/* disable dynamic functions, such as high power, DIG */
 		/* Save_DM_Func_Flag(padapter); */
 		/* Switch_DM_Func(padapter, DYNAMIC_FUNC_DISABLE, false); */
@@ -914,7 +855,6 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
 
 		/* rtw_hal_set_hwreg(padapter, HW_VAR_INITIAL_GAIN, (u8 *)(&initialgain)); */
-
 	}
 
 	/* set channel, bwmode */
@@ -925,7 +865,6 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		(pnetwork->IELength - sizeof(struct ndis_802_11_fix_ie))
 	);
 	if (p && ie_len) {
-
 		pht_info = (struct HT_info_element *)(p+2);
 
 		if (cur_channel > 14) {
@@ -937,12 +876,10 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		}
 
 		if ((cbw40_enable) &&	 (pht_info->infos[0] & BIT(2))) {
-
 			/* switch to the 40M Hz mode */
 			/* pmlmeext->cur_bwmode = CHANNEL_WIDTH_40; */
 			cur_bwmode = CHANNEL_WIDTH_40;
 			switch (pht_info->infos[0] & 0x3) {
-
 			case 1:
 				/* pmlmeext->cur_ch_offset = HAL_PRIME_CHNL_OFFSET_LOWER; */
 				cur_ch_offset = HAL_PRIME_CHNL_OFFSET_LOWER;
@@ -958,9 +895,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 				cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 				break;
 			}
-
 		}
-
 	}
 
 	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
@@ -991,9 +926,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		rtw_get_capability((struct wlan_bssid_ex *)pnetwork)
 	);
 
-
 	if (pmlmeext->bstart_bss) {
-
 		update_beacon(padapter, _TIM_IE_, NULL, true);
 
 #ifndef CONFIG_INTERRUPT_BASED_TXBCN /* other case will  tx beacon when bcn interrupt coming in. */
@@ -1002,15 +935,12 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 			DBG_871X("issue_beacon, fail!\n");
 
 #endif /* CONFIG_INTERRUPT_BASED_TXBCN */
-
 	}
 
-
 	/* update bc/mc sta_info */
 	update_bmc_sta(padapter);
 
 	/* pmlmeext->bstart_bss = true; */
-
 }
 
 int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
@@ -1050,7 +980,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return _FAIL;
 
-
 	if (len < 0 || len > MAX_IE_SZ)
 		return _FAIL;
 
@@ -1060,7 +989,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	memcpy(ie, pbuf, pbss_network->IELength);
 
-
 	if (pbss_network->InfrastructureMode != Ndis802_11APMode)
 		return _FAIL;
 
@@ -1086,7 +1014,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
 	if (p && ie_len > 0) {
-
 		memset(&pbss_network->Ssid, 0, sizeof(struct ndis_802_11_ssid));
 		memcpy(pbss_network->Ssid.Ssid, (p + 2), ie_len);
 		pbss_network->Ssid.SsidLength = ie_len;
@@ -1105,7 +1032,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	pbss_network->Configuration.DSConfig = channel;
 
-
 	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
 	/*  get supported rates */
 	p = rtw_get_ie(
@@ -1115,7 +1041,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
 	if (p !=  NULL) {
-
 		memcpy(supportRate, p+2, ie_len);
 		supportRateNum = ie_len;
 	}
@@ -1128,17 +1053,14 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		pbss_network->IELength - _BEACON_IE_OFFSET_
 	);
 	if (p !=  NULL) {
-
 		memcpy(supportRate+supportRateNum, p+2, ie_len);
 		supportRateNum += ie_len;
-
 	}
 
 	network_type = rtw_check_network_type(supportRate, supportRateNum, channel);
 
 	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
 
-
 	/* parsing ERP_IE */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
@@ -1168,7 +1090,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
 	if (p && ie_len > 0) {
-
 		if (rtw_parse_wpa2_ie(
 			p,
 			ie_len+2,
@@ -1176,7 +1097,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			&pairwise_cipher,
 			NULL
 		) == _SUCCESS) {
-
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 
 			psecuritypriv->dot8021xalg = 1;/* psk,  todo:802.1x */
@@ -1185,7 +1105,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			psecuritypriv->wpa2_group_cipher = group_cipher;
 			psecuritypriv->wpa2_pairwise_cipher = pairwise_cipher;
 		}
-
 	}
 
 	/* wpa */
@@ -1194,7 +1113,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psecuritypriv->wpa_group_cipher = _NO_PRIVACY_;
 	psecuritypriv->wpa_pairwise_cipher = _NO_PRIVACY_;
 	for (p = ie + _BEACON_IE_OFFSET_; ; p += (ie_len + 2)) {
-
 		p = rtw_get_ie(
 			p,
 			_SSN_IE_1_,
@@ -1202,7 +1120,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 		);
 		if ((p) && (!memcmp(p+2, OUI1, 4))) {
-
 			if (rtw_parse_wpa_ie(
 				p,
 				ie_len+2,
@@ -1210,7 +1127,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 				&pairwise_cipher,
 				NULL
 			) == _SUCCESS) {
-
 				psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 
 				psecuritypriv->dot8021xalg = 1;/* psk,  todo:802.1x */
@@ -1222,22 +1138,17 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			}
 
 			break;
-
 		}
 
 		if ((p == NULL) || (ie_len == 0))
 				break;
-
-
 	}
 
 	/* wmm */
 	ie_len = 0;
 	pmlmepriv->qospriv.qos_option = 0;
 	if (pregistrypriv->wmm_enable) {
-
 		for (p = ie + _BEACON_IE_OFFSET_; ; p += (ie_len + 2)) {
-
 			p = rtw_get_ie(
 				p,
 				_VENDOR_SPECIFIC_IE_,
@@ -1245,7 +1156,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 				(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 			);
 			if ((p) && !memcmp(p+2, WMM_PARA_IE, 6)) {
-
 				pmlmepriv->qospriv.qos_option = 1;
 
 				*(p+8) |= BIT(7);/* QoS Info, support U-APSD */
@@ -1261,7 +1171,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 			if ((p == NULL) || (ie_len == 0))
 				break;
-
 		}
 	}
 
@@ -1273,7 +1182,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
 	if (p && ie_len > 0) {
-
 		u8 rf_type = 0;
 		u8 max_rx_ampdu_factor = 0;
 		struct rtw_ieee80211_ht_cap *pht_cap = (struct rtw_ieee80211_ht_cap *)(p+2);
@@ -1294,26 +1202,20 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		if (!TEST_FLAG(pmlmepriv->htpriv.ldpc_cap, LDPC_HT_ENABLE_RX))
 			pht_cap->cap_info &= cpu_to_le16(~(IEEE80211_HT_CAP_LDPC_CODING));
 
-
 		if (!TEST_FLAG(pmlmepriv->htpriv.stbc_cap, STBC_HT_ENABLE_TX))
 			pht_cap->cap_info &= cpu_to_le16(~(IEEE80211_HT_CAP_TX_STBC));
 
-
 		if (!TEST_FLAG(pmlmepriv->htpriv.stbc_cap, STBC_HT_ENABLE_RX))
 			pht_cap->cap_info &= cpu_to_le16(~(IEEE80211_HT_CAP_RX_STBC_3R));
 
-
 		pht_cap->ampdu_params_info &= ~(
 			IEEE80211_HT_CAP_AMPDU_FACTOR|IEEE80211_HT_CAP_AMPDU_DENSITY
 		);
 
 		if ((psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_CCMP) ||
 			(psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_CCMP)) {
-
 			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&(0x07<<2));
 		} else{
-
-
 			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&0x00);
 		}
 
@@ -1328,13 +1230,11 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 		rtw_hal_get_hwreg(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));
 		if (rf_type == RF_1T1R) {
-
 			pht_cap->supp_mcs_set[0] = 0xff;
 			pht_cap->supp_mcs_set[1] = 0x0;
 		}
 
 		memcpy(&pmlmepriv->htpriv.ht_cap, p+2, ie_len);
-
 	}
 
 	/* parsing HT_INFO_IE */
@@ -1347,9 +1247,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	if (p && ie_len > 0)
 		pHT_info_ie = p;
 
-
 	switch (network_type) {
-
 	case WIRELESS_11B:
 		pbss_network->NetworkTypeInUse = Ndis802_11DS;
 		break;
@@ -1373,21 +1271,18 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	if ((psecuritypriv->wpa2_pairwise_cipher&WPA_CIPHER_TKIP) ||
 		      (psecuritypriv->wpa_pairwise_cipher&WPA_CIPHER_TKIP)) {
-
 		/* todo: */
 		/* ht_cap = false; */
 	}
 
 	/* ht_cap */
 	if (pregistrypriv->ht_enable && ht_cap) {
-
 		pmlmepriv->htpriv.ht_option = true;
 		pmlmepriv->qospriv.qos_option = 1;
 
 		if (pregistrypriv->ampdu_enable == 1)
 			pmlmepriv->htpriv.ampdu_enable = true;
 
-
 		HT_caps_handler(padapter, (struct ndis_80211_var_ie *)pHT_caps_ie);
 
 		HT_info_handler(padapter, (struct ndis_80211_var_ie *)pHT_info_ie);
@@ -1401,15 +1296,12 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* start_bss_network(padapter, (u8 *)pbss_network); */
 	rtw_startbss_cmd(padapter, RTW_CMDF_WAIT_ACK);
 
-
 	/* alloc sta_info for ap itself */
 	psta = rtw_get_stainfo(&padapter->stapriv, pbss_network->MacAddress);
 	if (!psta) {
-
 		psta = rtw_alloc_stainfo(&padapter->stapriv, pbss_network->MacAddress);
 		if (psta == NULL)
 			return _FAIL;
-
 	}
 
 	/*  update AP's sta info */
@@ -1424,7 +1316,6 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* update_bmc_sta(padapter); */
 
 	return ret;
-
 }
 
 void rtw_set_macaddr_acl(struct adapter *padapter, int mode)
@@ -1457,21 +1348,17 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	if ((NUM_ACL-1) < pacl_list->num)
 		return (-1);
 
-
 	spin_lock_bh(&(pacl_node_q->lock));
 
 	phead = get_list_head(pacl_node_q);
 	plist = get_next(phead);
 
 	while (phead != plist) {
-
 		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
-
 			if (paclnode->valid == true) {
-
 				added = true;
 				DBG_871X("%s, sta has been added\n", __func__);
 				break;
@@ -1481,19 +1368,15 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 
 	spin_unlock_bh(&(pacl_node_q->lock));
 
-
 	if (added)
 		return ret;
 
-
 	spin_lock_bh(&(pacl_node_q->lock));
 
 	for (i = 0; i < NUM_ACL; i++) {
-
 		paclnode = &pacl_list->aclnode[i];
 
 		if (!paclnode->valid) {
-
 			INIT_LIST_HEAD(&paclnode->list);
 
 			memcpy(paclnode->addr, addr, ETH_ALEN);
@@ -1538,7 +1421,6 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	plist = get_next(phead);
 
 	while (phead != plist) {
-
 		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
@@ -1546,9 +1428,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 			!memcmp(paclnode->addr, addr, ETH_ALEN) ||
 			!memcmp(baddr, addr, ETH_ALEN)
 		) {
-
 			if (paclnode->valid) {
-
 				paclnode->valid = false;
 
 				list_del_init(&paclnode->list);
@@ -1563,7 +1443,6 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	DBG_871X("%s, acl_num =%d\n", __func__, pacl_list->num);
 
 	return ret;
-
 }
 
 u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
@@ -1588,20 +1467,17 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
 
-
 	psetstakey_para->algorithm = (u8)psta->dot118021XPrivacy;
 
 	memcpy(psetstakey_para->addr, psta->hwaddr, ETH_ALEN);
 
 	memcpy(psetstakey_para->key, &psta->dot118021x_UncstKey, 16);
 
-
 	res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 
 exit:
 
 	return res;
-
 }
 
 static int rtw_ap_set_key(
@@ -1643,7 +1519,6 @@ static int rtw_ap_set_key(
 	psetkeyparm->set_tx = set_tx;
 
 	switch (alg) {
-
 	case _WEP40_:
 		keylen = 5;
 		break;
@@ -1665,7 +1540,6 @@ static int rtw_ap_set_key(
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 
-
 	INIT_LIST_HEAD(&pcmd->list);
 
 	res = rtw_enqueue_cmd(pcmdpriv, pcmd);
@@ -1693,7 +1567,6 @@ int rtw_ap_set_wep_key(
 	u8 alg;
 
 	switch (keylen) {
-
 	case 5:
 		alg = _WEP40_;
 		break;
@@ -1712,7 +1585,6 @@ int rtw_ap_set_wep_key(
 static void update_bcn_fixed_ie(struct adapter *padapter)
 {
 	DBG_871X("%s\n", __func__);
-
 }
 
 static void update_bcn_erpinfo_ie(struct adapter *padapter)
@@ -1737,7 +1609,6 @@ static void update_bcn_erpinfo_ie(struct adapter *padapter)
 		(pnetwork->IELength - _BEACON_IE_OFFSET_)
 	);
 	if (p && len > 0) {
-
 		struct ndis_80211_var_ie *pIE = (struct ndis_80211_var_ie *)p;
 
 		if (pmlmepriv->num_sta_non_erp == 1)
@@ -1754,37 +1625,31 @@ static void update_bcn_erpinfo_ie(struct adapter *padapter)
 
 		ERP_IE_handler(padapter, pIE);
 	}
-
 }
 
 static void update_bcn_htcap_ie(struct adapter *padapter)
 {
 	DBG_871X("%s\n", __func__);
-
 }
 
 static void update_bcn_htinfo_ie(struct adapter *padapter)
 {
 	DBG_871X("%s\n", __func__);
-
 }
 
 static void update_bcn_rsn_ie(struct adapter *padapter)
 {
 	DBG_871X("%s\n", __func__);
-
 }
 
 static void update_bcn_wpa_ie(struct adapter *padapter)
 {
 	DBG_871X("%s\n", __func__);
-
 }
 
 static void update_bcn_wmm_ie(struct adapter *padapter)
 {
 	DBG_871X("%s\n", __func__);
-
 }
 
 static void update_bcn_wps_ie(struct adapter *padapter)
@@ -1802,7 +1667,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	unsigned char *ie = pnetwork->IEs;
 	u32 ielen = pnetwork->IELength;
 
-
 	DBG_871X("%s\n", __func__);
 
 	pwps_ie = rtw_get_wps_ie(
@@ -1826,7 +1690,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	remainder_ielen = ielen - wps_offset - wps_ielen;
 
 	if (remainder_ielen > 0) {
-
 		pbackup_remainder_ie = rtw_malloc(remainder_ielen);
 		if (pbackup_remainder_ie)
 			memcpy(pbackup_remainder_ie, premainder_ie, remainder_ielen);
@@ -1834,7 +1697,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 	wps_ielen = (uint)pwps_ie_src[1];/* to get ie data len */
 	if ((wps_offset+wps_ielen+2+remainder_ielen) <= MAX_IE_SZ) {
-
 		memcpy(pwps_ie, pwps_ie_src, wps_ielen+2);
 		pwps_ie += (wps_ielen+2);
 
@@ -1850,7 +1712,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	/*  deal with the case without set_tx_beacon_cmd() in update_beacon() */
 #if defined(CONFIG_INTERRUPT_BASED_TXBCN)
 	if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {
-
 		u8 sr = 0;
 
 		rtw_get_wps_attr_content(
@@ -1871,7 +1732,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 static void update_bcn_p2p_ie(struct adapter *padapter)
 {
-
 }
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
@@ -1892,9 +1752,6 @@ static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 
 	else
 		DBG_871X("unknown OUI type!\n");
-
-
-
 }
 
 void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
@@ -1918,7 +1775,6 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 	spin_lock_bh(&pmlmepriv->bcn_update_lock);
 
 	switch (ie_id) {
-
 	case 0xFF:
 
 		update_bcn_fixed_ie(padapter);/* 8: TimeStamp, 2: Beacon Interval 2:Capability */
@@ -1971,12 +1827,10 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 
 #ifndef CONFIG_INTERRUPT_BASED_TXBCN
 	if (tx) {
-
 		/* send_beacon(padapter);//send_beacon must execute on TSR level */
 		set_tx_beacon_cmd(padapter);
 	}
 #endif /* CONFIG_INTERRUPT_BASED_TXBCN */
-
 }
 
 /*
@@ -2060,14 +1914,12 @@ static int rtw_ht_operation_update(struct adapter *padapter)
 		   __func__, pmlmepriv->ht_op_mode, op_mode_changes);
 
 	return op_mode_changes;
-
 }
 
 void associated_clients_update(struct adapter *padapter, u8 updated)
 {
 	/* update associcated stations cap. */
 	if (updated) {
-
 		struct list_head	*phead, *plist;
 		struct sta_info *psta = NULL;
 		struct sta_priv *pstapriv = &padapter->stapriv;
@@ -2079,7 +1931,6 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
 
 		/* check asoc_queue */
 		while (phead != plist) {
-
 			psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 
 			plist = get_next(plist);
@@ -2088,9 +1939,7 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
 		}
 
 		spin_unlock_bh(&pstapriv->asoc_list_lock);
-
 	}
-
 }
 
 /* called > TSR LEVEL for USB or SDIO Interface*/
@@ -2101,102 +1950,75 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 
 	if (!(psta->flags & WLAN_STA_SHORT_PREAMBLE)) {
-
 		if (!psta->no_short_preamble_set) {
-
 			psta->no_short_preamble_set = 1;
 
 			pmlmepriv->num_sta_no_short_preamble++;
 
 			if ((pmlmeext->cur_wireless_mode > WIRELESS_11B) &&
 				(pmlmepriv->num_sta_no_short_preamble == 1)) {
-
 				beacon_updated = true;
 				update_beacon(padapter, 0xFF, NULL, true);
 			}
-
 		}
 	} else{
-
-
 		if (psta->no_short_preamble_set) {
-
 			psta->no_short_preamble_set = 0;
 
 			pmlmepriv->num_sta_no_short_preamble--;
 
 			if ((pmlmeext->cur_wireless_mode > WIRELESS_11B) &&
 				(pmlmepriv->num_sta_no_short_preamble == 0)) {
-
 				beacon_updated = true;
 				update_beacon(padapter, 0xFF, NULL, true);
 			}
-
 		}
 	}
 
 	if (psta->flags & WLAN_STA_NONERP) {
-
 		if (!psta->nonerp_set) {
-
 			psta->nonerp_set = 1;
 
 			pmlmepriv->num_sta_non_erp++;
 
 			if (pmlmepriv->num_sta_non_erp == 1) {
-
 				beacon_updated = true;
 				update_beacon(padapter, _ERPINFO_IE_, NULL, true);
 			}
 		}
-
 	} else{
-
-
 		if (psta->nonerp_set) {
-
 			psta->nonerp_set = 0;
 
 			pmlmepriv->num_sta_non_erp--;
 
 			if (pmlmepriv->num_sta_non_erp == 0) {
-
 				beacon_updated = true;
 				update_beacon(padapter, _ERPINFO_IE_, NULL, true);
 			}
 		}
-
 	}
 
-
 	if (!(psta->capability & WLAN_CAPABILITY_SHORT_SLOT)) {
-
 		if (!psta->no_short_slot_time_set) {
-
 			psta->no_short_slot_time_set = 1;
 
 			pmlmepriv->num_sta_no_short_slot_time++;
 
 			if ((pmlmeext->cur_wireless_mode > WIRELESS_11B) &&
 				 (pmlmepriv->num_sta_no_short_slot_time == 1)) {
-
 				beacon_updated = true;
 				update_beacon(padapter, 0xFF, NULL, true);
 			}
-
 		}
 	} else{
-
-
 		if (psta->no_short_slot_time_set) {
-
 			psta->no_short_slot_time_set = 0;
 
 			pmlmepriv->num_sta_no_short_slot_time--;
 
 			if ((pmlmeext->cur_wireless_mode > WIRELESS_11B) &&
 				 (pmlmepriv->num_sta_no_short_slot_time == 0)) {
-
 				beacon_updated = true;
 				update_beacon(padapter, 0xFF, NULL, true);
 			}
@@ -2204,7 +2026,6 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (psta->flags & WLAN_STA_HT) {
-
 		u16 ht_capab = le16_to_cpu(psta->htpriv.ht_cap.cap_info);
 
 		DBG_871X("HT: STA " MAC_FMT " HT Capabilities "
@@ -2238,8 +2059,6 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 		}
 
 	} else{
-
-
 		if (!psta->no_ht_set) {
 			psta->no_ht_set = 1;
 			pmlmepriv->num_sta_no_ht++;
@@ -2253,7 +2072,6 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-
 		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
 		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
 	}
@@ -2262,7 +2080,6 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	associated_clients_update(padapter,  beacon_updated);
 
 	DBG_871X("%s, updated =%d\n", __func__, beacon_updated);
-
 }
 
 u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
@@ -2279,7 +2096,6 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 		pmlmepriv->num_sta_no_short_preamble--;
 		if (pmlmeext->cur_wireless_mode > WIRELESS_11B
 		    && pmlmepriv->num_sta_no_short_preamble == 0){
-
 			beacon_updated = true;
 			update_beacon(padapter, 0xFF, NULL, true);
 		}
@@ -2289,7 +2105,6 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 		psta->nonerp_set = 0;
 		pmlmepriv->num_sta_non_erp--;
 		if (pmlmepriv->num_sta_non_erp == 0) {
-
 			beacon_updated = true;
 			update_beacon(padapter, _ERPINFO_IE_, NULL, true);
 		}
@@ -2300,7 +2115,6 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 		pmlmepriv->num_sta_no_short_slot_time--;
 		if (pmlmeext->cur_wireless_mode > WIRELESS_11B
 		    && pmlmepriv->num_sta_no_short_slot_time == 0){
-
 			beacon_updated = true;
 			update_beacon(padapter, 0xFF, NULL, true);
 		}
@@ -2322,7 +2136,6 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-
 		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
 		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
 	}
@@ -2333,7 +2146,6 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 	DBG_871X("%s, updated =%d\n", __func__, beacon_updated);
 
 	return beacon_updated;
-
 }
 
 u8 ap_free_sta(
@@ -2349,7 +2161,6 @@ u8 ap_free_sta(
 		return beacon_updated;
 
 	if (active == true) {
-
 		/* tear down Rx AMPDU */
 		send_delba(padapter, 0, psta->hwaddr);/*  recipient */
 
@@ -2362,13 +2173,11 @@ u8 ap_free_sta(
 	psta->htpriv.agg_enable_bitmap = 0x0;/* reset */
 	psta->htpriv.candidate_tid_bitmap = 0x0;/* reset */
 
-
 	/* report_del_sta_event(padapter, psta->hwaddr, reason); */
 
 	/* clear cam entry / key */
 	rtw_clearstakey_cmd(padapter, psta, true);
 
-
 	spin_lock_bh(&psta->lock);
 	psta->state &= ~_FW_LINKED;
 	spin_unlock_bh(&psta->lock);
@@ -2381,9 +2190,7 @@ u8 ap_free_sta(
 
 	rtw_free_stainfo(padapter, psta);
 
-
 	return beacon_updated;
-
 }
 
 int rtw_sta_flush(struct adapter *padapter)
@@ -2401,14 +2208,12 @@ int rtw_sta_flush(struct adapter *padapter)
 	if ((pmlmeinfo->state&0x03) != WIFI_FW_AP_STATE)
 		return ret;
 
-
 	spin_lock_bh(&pstapriv->asoc_list_lock);
 	phead = &pstapriv->asoc_list;
 	plist = get_next(phead);
 
 	/* free sta asoc_queue */
 	while (phead != plist) {
-
 		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 
 		plist = get_next(plist);
@@ -2422,13 +2227,11 @@ int rtw_sta_flush(struct adapter *padapter)
 	}
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
-
 	issue_deauth(padapter, bc_addr, WLAN_REASON_DEAUTH_LEAVING);
 
 	associated_clients_update(padapter, true);
 
 	return ret;
-
 }
 
 /* called > TSR LEVEL for USB or SDIO Interface*/
@@ -2437,7 +2240,6 @@ void sta_info_update(struct adapter *padapter, struct sta_info *psta)
 	int flags = psta->flags;
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
-
 	/* update wmm cap. */
 	if (WLAN_STA_WME&flags)
 		psta->qos_option = 1;
@@ -2449,12 +2251,9 @@ void sta_info_update(struct adapter *padapter, struct sta_info *psta)
 
 	/* update 802.11n ht cap. */
 	if (WLAN_STA_HT&flags) {
-
 		psta->htpriv.ht_option = true;
 		psta->qos_option = 1;
 	} else{
-
-
 		psta->htpriv.ht_option = false;
 	}
 
@@ -2462,8 +2261,6 @@ void sta_info_update(struct adapter *padapter, struct sta_info *psta)
 		psta->htpriv.ht_option = false;
 
 	update_sta_info_apmode(padapter, psta);
-
-
 }
 
 /* called >= TSR LEVEL for USB or SDIO Interface*/
@@ -2473,7 +2270,6 @@ void ap_sta_info_defer_update(struct adapter *padapter, struct sta_info *psta)
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
 	if (psta->state & _FW_LINKED) {
-
 		pmlmeinfo->FW_sta_info[psta->mac_id].psta = psta;
 
 		/* add ratid */
@@ -2506,7 +2302,6 @@ void rtw_ap_restore_network(struct adapter *padapter)
 
 	if ((padapter->securitypriv.dot11PrivacyAlgrthm == _TKIP_) ||
 		(padapter->securitypriv.dot11PrivacyAlgrthm == _AES_)) {
-
 		/* restore group key, WEP keys is restored in ips_leave() */
 		rtw_set_key(
 			padapter,
@@ -2531,7 +2326,6 @@ void rtw_ap_restore_network(struct adapter *padapter)
 		stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
 		if (stainfo_offset_valid(stainfo_offset))
 			chk_alive_list[chk_alive_num++] = stainfo_offset;
-
 	}
 
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
@@ -2548,12 +2342,10 @@ void rtw_ap_restore_network(struct adapter *padapter)
 			/* per sta pairwise key and settings */
 			if ((padapter->securitypriv.dot11PrivacyAlgrthm == _TKIP_) ||
 				(padapter->securitypriv.dot11PrivacyAlgrthm == _AES_)) {
-
 				rtw_setstakey_cmd(padapter, psta, true, false);
 			}
 		}
 	}
-
 }
 
 void start_ap_mode(struct adapter *padapter)
@@ -2595,7 +2387,6 @@ void start_ap_mode(struct adapter *padapter)
 	pmlmepriv->p2p_beacon_ie = NULL;
 	pmlmepriv->p2p_probe_resp_ie = NULL;
 
-
 	/* for ACL */
 	INIT_LIST_HEAD(&(pacl_list->acl_node_q.queue));
 	pacl_list->num = 0;
@@ -2604,7 +2395,6 @@ void start_ap_mode(struct adapter *padapter)
 		INIT_LIST_HEAD(&pacl_list->aclnode[i].list);
 		pacl_list->aclnode[i].valid = false;
 	}
-
 }
 
 void stop_ap_mode(struct adapter *padapter)
@@ -2635,12 +2425,10 @@ void stop_ap_mode(struct adapter *padapter)
 	phead = get_list_head(pacl_node_q);
 	plist = get_next(phead);
 	while (phead != plist) {
-
 		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
 		if (paclnode->valid == true) {
-
 			paclnode->valid = false;
 
 			list_del_init(&paclnode->list);
-- 
2.17.1


