X-GM-THRID: 6209065689827770368
X-Received: by 10.182.68.104 with SMTP id v8mr9156821obt.9.1445661036095;
        Fri, 23 Oct 2015 21:30:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.168 with SMTP id 37ls877741qgb.52.gmail; Fri, 23 Oct
 2015 21:30:35 -0700 (PDT)
X-Received: by 10.13.216.14 with SMTP id a14mr19673110ywe.8.1445661035612;
        Fri, 23 Oct 2015 21:30:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si2574805pbc.1.2015.10.23.21.30.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 21:30:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so135131650pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 21:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=azIK/Y49WNo81caXv3tML8RETgQbCnva+ID3Eai+/3w=;
        b=BymliuqblEyqsAKFzFG/kGX0d9AxfMEo7xtre3RCA+l7YxRWQgw+aCFB7dwKnCRBAZ
         A9WtTsBFP4U+LHEjFy0Eeqd9PpdGMRi/qy2Pm+6AQaW/SNycOAtxQXWWW+284F3YDgbP
         e6+nwmbYY9KiHnUXjd/r1uiN2NrzEBXGt7xIeb3tCjgrjKe/Ml7eyiMOBJyBa/8GJxAZ
         zIv7HGqlsd4uv5grKEHShguevwC1bR4Vvl5qgzaUvUT9FUH+HlC5Rd0yn5iWGrUeEjNx
         oUkOBiWh+tk14IL7O/gSArVxLX2tcz9lmWRUKW4XUuSqEN/chedIifdm8cYUehKowHNu
         h0xQ==
X-Received: by 10.68.107.65 with SMTP id ha1mr8977690pbb.143.1445661035451;
        Fri, 23 Oct 2015 21:30:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id zi1sm21722165pbc.10.2015.10.23.21.30.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 21:30:35 -0700 (PDT)
Date: Fri, 23 Oct 2015 21:30:34 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: r8723au: move params to new line to improve
 readability
Message-ID: <26a472013a14bf1e03dfd2ba7852b10832bdceb2.1445653471.git.amsfield22@gmail.com>
References: <cover.1445653471.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445653471.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Parameters are shifted to new line to stay within 80 char line
limit and improve readability.

Addresses checkpatch.pl: WARNING: line over 80 characters

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 78 ++++++++++++++++++++++-----------
 1 file changed, 52 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 852f4ae..69e3f09 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -120,7 +120,8 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
 	if (remainder_ielen > 0) {
 		pbackup_remainder_ie = kmalloc(remainder_ielen, GFP_ATOMIC);
 		if (pbackup_remainder_ie && premainder_ie)
-			memcpy(pbackup_remainder_ie, premainder_ie, remainder_ielen);
+			memcpy(pbackup_remainder_ie, premainder_ie,
+			       remainder_ielen);
 	}
 
 	*dst_ie++ = WLAN_EID_TIM;
@@ -250,7 +251,8 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 					 * for this station
 					 */
 					pstapriv->tim_bitmap |= CHKBIT(psta->aid);
-					update_beacon23a(padapter, WLAN_EID_TIM, NULL, false);
+					update_beacon23a(padapter, WLAN_EID_TIM,
+							 NULL, false);
 
 					if (!pmlmeext->active_keep_alive_check)
 						continue;
@@ -267,7 +269,8 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 
 			DBG_8723A("asoc expire %pM, state = 0x%x\n",
 				  psta->hwaddr, psta->state);
-			updated = ap_free_sta23a(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
+			updated = ap_free_sta23a(padapter, psta, false,
+						 WLAN_REASON_DEAUTH_LEAVING);
 		} else {
 			/*
 			 * TODO: Aging mechanism to digest frames in
@@ -312,9 +315,11 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 			continue;
 
 		if (psta->state & WIFI_SLEEP_STATE)
-			ret = issue_nulldata23a(padapter, psta->hwaddr, 0, 1, 50);
+			ret = issue_nulldata23a(padapter, psta->hwaddr,
+						0, 1, 50);
 		else
-			ret = issue_nulldata23a(padapter, psta->hwaddr, 0, 3, 50);
+			ret = issue_nulldata23a(padapter, psta->hwaddr,
+						0, 3, 50);
 
 		psta->keep_alive_trycnt++;
 		if (ret == _SUCCESS) {
@@ -337,7 +342,8 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 		if (!list_empty(&psta->asoc_list)) {
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
-			updated = ap_free_sta23a(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
+			updated = ap_free_sta23a(padapter, psta, false,
+						 WLAN_REASON_DEAUTH_LEAVING);
 		}
 		spin_unlock_bh(&pstapriv->asoc_list_lock);
 
@@ -350,7 +356,8 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 	associated_clients_update23a(padapter, updated);
 }
 
-void add_RATid23a(struct rtw_adapter *padapter, struct sta_info *psta, u8 rssi_level)
+void add_RATid23a(struct rtw_adapter *padapter, struct sta_info *psta,
+		  u8 rssi_level)
 {
 	int i;
 	u8 rf_type;
@@ -472,7 +479,8 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 		supportRateNum = rtw_get_rateset_len23a((u8 *)&pcur_network->SupportedRates);
 		network_type = rtw_check_network_type23a((u8 *)&pcur_network->SupportedRates, supportRateNum, 1);
 
-		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
+		memcpy(psta->bssrateset, &pcur_network->SupportedRates,
+		       supportRateNum);
 		psta->bssratelen = supportRateNum;
 
 		/* b/g mode ra_bitmap */
@@ -492,7 +500,8 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 		}
 
 		raid = networktype_to_raid23a(network_type);
-		init_rate = get_highest_rate_idx23a(tx_ra_bitmap&0x0fffffff)&0x3f;
+		init_rate = get_highest_rate_idx23a(tx_ra_bitmap & 0x0fffffff)
+						    & 0x3f;
 
 		/* ap mode */
 		rtl8723a_SetHalODMVar(padapter, HAL_ODM_STA_INFO, psta, true);
@@ -506,7 +515,8 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 
 			tx_ra_bitmap |= ((raid<<28)&0xf0000000);
 
-			DBG_8723A("update_bmc_sta, mask = 0x%x, arg = 0x%x\n", tx_ra_bitmap, arg);
+			DBG_8723A("update_bmc_sta, mask = 0x%x, arg = 0x%x\n",
+				  tx_ra_bitmap, arg);
 
 			/* bitmap[0:27] = tx_rate_bitmap */
 			/* bitmap[28:31]= Rate Adaptive id */
@@ -534,7 +544,8 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
  * MAC_ID = 0 for bssid for sta/ap/adhoc
  * CAM_ID = 0~3 for default key, cmd_id=macid+3, macid=aid+1;
  */
-void update_sta_info23a_apmode23a(struct rtw_adapter *padapter, struct sta_info *psta)
+void update_sta_info23a_apmode23a(struct rtw_adapter *padapter,
+				  struct sta_info *psta)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -568,11 +579,12 @@ void update_sta_info23a_apmode23a(struct rtw_adapter *padapter, struct sta_info
 			phtpriv_sta->sgi = true;
 
 		/* bwmode */
-		if ((phtpriv_sta->ht_cap.cap_info & phtpriv_ap->ht_cap.cap_info) & cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH_20_40)) {
+		if ((phtpriv_sta->ht_cap.cap_info
+		     & phtpriv_ap->ht_cap.cap_info)
+		    & cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH_20_40)) {
 			/* phtpriv_sta->bwmode = HT_CHANNEL_WIDTH_40; */
 			phtpriv_sta->bwmode = pmlmeext->cur_bwmode;
 			phtpriv_sta->ch_offset = pmlmeext->cur_ch_offset;
-
 		}
 
 		psta->qos_option = true;
@@ -1108,7 +1120,8 @@ int rtw_acl_add_sta23a(struct rtw_adapter *padapter, u8 *addr)
 
 			paclnode->valid = true;
 
-			list_add_tail(&paclnode->list, get_list_head(pacl_node_q));
+			list_add_tail(&paclnode->list,
+				      get_list_head(pacl_node_q));
 
 			pacl_list->num++;
 
@@ -1413,7 +1426,8 @@ void associated_clients_update23a(struct rtw_adapter *padapter, u8 updated)
 }
 
 /* called > TSR LEVEL for USB or SDIO Interface */
-void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter, struct sta_info *psta)
+void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter,
+				   struct sta_info *psta)
 {
 	u8 beacon_updated = false;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1455,7 +1469,8 @@ void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter, struct sta_info
 
 			if (pmlmepriv->num_sta_non_erp == 1) {
 				beacon_updated = true;
-				update_beacon23a(padapter, WLAN_EID_ERP_INFO, NULL, true);
+				update_beacon23a(padapter, WLAN_EID_ERP_INFO,
+						 NULL, true);
 			}
 		}
 
@@ -1467,7 +1482,8 @@ void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter, struct sta_info
 
 			if (pmlmepriv->num_sta_non_erp == 0) {
 				beacon_updated = true;
-				update_beacon23a(padapter, WLAN_EID_ERP_INFO, NULL, true);
+				update_beacon23a(padapter, WLAN_EID_ERP_INFO,
+						 NULL, true);
 			}
 		}
 
@@ -1554,7 +1570,8 @@ void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter, struct sta_info
 	DBG_8723A("%s, updated =%d\n", __func__, beacon_updated);
 }
 
-u8 bss_cap_update_on_sta_leave23a(struct rtw_adapter *padapter, struct sta_info *psta)
+u8 bss_cap_update_on_sta_leave23a(struct rtw_adapter *padapter,
+				  struct sta_info *psta)
 {
 	u8 beacon_updated = false;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1620,7 +1637,8 @@ u8 bss_cap_update_on_sta_leave23a(struct rtw_adapter *padapter, struct sta_info
 	return beacon_updated;
 }
 
-u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta, bool active, u16 reason)
+u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta,
+		  bool active, u16 reason)
 {
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 beacon_updated = false;
@@ -1665,7 +1683,8 @@ u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta, bool acti
 	return beacon_updated;
 }
 
-int rtw_ap_inform_ch_switch23a(struct rtw_adapter *padapter, u8 new_ch, u8 ch_offset)
+int rtw_ap_inform_ch_switch23a(struct rtw_adapter *padapter, u8 new_ch,
+			       u8 ch_offset)
 {
 	struct list_head *phead, *plist;
 	struct sta_info *psta = NULL;
@@ -1686,7 +1705,9 @@ int rtw_ap_inform_ch_switch23a(struct rtw_adapter *padapter, u8 new_ch, u8 ch_of
 	list_for_each(plist, phead) {
 		psta = container_of(plist, struct sta_info, asoc_list);
 
-		issue_action_spct_ch_switch23a(padapter, psta->hwaddr, new_ch, ch_offset);
+		issue_action_spct_ch_switch23a(padapter, psta->hwaddr,
+					       new_ch, ch_offset);
+
 		psta->expire_to = ((pstapriv->expire_to * 2) > 5) ? 5 : (pstapriv->expire_to * 2);
 	}
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
@@ -1770,7 +1791,8 @@ void sta_info_update23a(struct rtw_adapter *padapter, struct sta_info *psta)
 }
 
 /* called >= TSR LEVEL for USB or SDIO Interface */
-void ap_sta_info_defer_update23a(struct rtw_adapter *padapter, struct sta_info *psta)
+void ap_sta_info_defer_update23a(struct rtw_adapter *padapter,
+				 struct sta_info *psta)
 {
 	if (psta->state & _FW_LINKED) {
 		/* add ratid */
@@ -1793,7 +1815,8 @@ void rtw_ap_restore_network(struct rtw_adapter *padapter)
 
 	rtw_setopmode_cmd23a(padapter, NL80211_IFTYPE_AP);
 
-	set_channel_bwmode23a(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);
+	set_channel_bwmode23a(padapter, pmlmeext->cur_channel,
+			      pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);
 
 	start_bss_network(padapter, (u8 *)&mlmepriv->cur_network.network);
 
@@ -1832,7 +1855,8 @@ void rtw_ap_restore_network(struct rtw_adapter *padapter)
 		if (psta->state & _FW_LINKED) {
 			Update_RA_Entry23a(padapter, psta);
 			/* pairwise key */
-			rtw_setstakey_cmd23a(padapter, (unsigned char *)psta, true);
+			rtw_setstakey_cmd23a(padapter, (unsigned char *)psta,
+					     true);
 		}
 	}
 }
@@ -1897,7 +1921,8 @@ void stop_ap_mode23a(struct rtw_adapter *padapter)
 	 * reset and init security priv , this can
 	 * refine with rtw_reset_securitypriv23a
 	 */
-	memset((unsigned char *)&padapter->securitypriv, 0, sizeof(struct security_priv));
+	memset((unsigned char *)&padapter->securitypriv, 0,
+	       sizeof(struct security_priv));
 	padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
 	padapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
 
@@ -1918,7 +1943,8 @@ void stop_ap_mode23a(struct rtw_adapter *padapter)
 	}
 	spin_unlock_bh(&pacl_node_q->lock);
 
-	DBG_8723A("%s, free acl_node_queue, num =%d\n", __func__, pacl_list->num);
+	DBG_8723A("%s, free acl_node_queue, num =%d\n", __func__,
+		  pacl_list->num);
 
 	rtw_sta_flush23a(padapter);
 
-- 
2.1.4


