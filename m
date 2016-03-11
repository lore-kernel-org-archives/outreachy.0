X-GM-THRID: 6260686017839235072
X-Received: by 10.66.224.68 with SMTP id ra4mr4348232pac.45.1457679582102;
        Thu, 10 Mar 2016 22:59:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.196 with SMTP id l4ls54102igx.43.canary; Thu, 10 Mar
 2016 22:59:41 -0800 (PST)
X-Received: by 10.107.148.84 with SMTP id w81mr5710735iod.20.1457679581826;
        Thu, 10 Mar 2016 22:59:41 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tu5si880080pab.2.2016.03.10.22.59.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 22:59:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id q6so7356739pav.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 22:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vZgwaeNcRlvNqZZMibQy0qnZ7XkRpZL3/X4g46/qaRU=;
        b=V5MTymdek7rP3ekc3dCtq5fBI93d79iW8kjYfO5kYsUQam0XZoy1PcTYb1J7GBzBxS
         0C1hwjezxGlaiArEZKqFBcJzJCcLWwFB4zvD1NJZQ0O4306EUrH2X9QfBoWSi886dtpH
         SePpuEaS4EMKst1MGKC2s4M1ieUC1dCb4A/peD3uzJ2ehpQZSRKTNTBiRg7KIYO351TS
         c6FkkglyMIXIZ7RFRDwJQF8F2SlVyC6k+z86MrA+bTCJqdID6HyRaaG7He2N/EacOndr
         nCDrewZoB1oc8bcFL0+H4hgnc4YQ0AUgDDgUq55r2iR7xiuKtoc/nSUza35xpUHR5k0w
         6XXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vZgwaeNcRlvNqZZMibQy0qnZ7XkRpZL3/X4g46/qaRU=;
        b=jgSKiw0sg/ka35JWjw6gCS033L5sp+Nof+EuvHh7d90k5WnctX7Fkpb1AHUj46ihkN
         Iad2Ps7WM/n8fK33F4jqHlkGJygW0Mte224vJmv6kp/W8yxG/pOYv5qNM9CnINDlnUsD
         n7NvTVDb4n/HSdqCPlfwgzSfslE5PhE/nptnMUd0ewDk9vfAkcZ9RfAH63ROI8xIJBIB
         Dt7RD8optnL3tj3fr5gEMbESq3Cqp2/ohyA2zfSlsQS+EIZqnWrT94lQ+wXwPimNnztp
         OAW8G3wieGzVmG07v6JttfOmHJ7vaSJggT0hmiOlMrF9Z+iDIVOvsCKZ62sSpEZ0ROfu
         35Vg==
X-Gm-Message-State: AD7BkJJx264YCbetbR/vl+0g5KV/XBqueT9SvI0YI2z9uASviR0futUgk/jZa/JVsMgiHQ==
X-Received: by 10.66.62.169 with SMTP id z9mr11705929par.139.1457679581633;
        Thu, 10 Mar 2016 22:59:41 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.187.211])
        by smtp.gmail.com with ESMTPSA id yh5sm10138720pab.13.2016.03.10.22.59.33
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 22:59:41 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 12:29:28 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8723au: Remove unused functions and prototype
Date: Fri, 11 Mar 2016 12:28:50 +0530
Message-Id: <0f157dd29b9abb5f4f3c698fd607024b9620c65f.1457679000.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457679000.git.bhumirks@gmail.com>
References: <cover.1457679000.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457679000.git.bhumirks@gmail.com>
References: <cover.1457679000.git.bhumirks@gmail.com>

The functions rtw_ap_inform_ch_switch23a, rtw_acl_remove_sta23a and
rtw_acl_add_sta23a are not used anywhere in the kernel. So remove their
definition and prototype.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c    | 115 -----------------------------
 drivers/staging/rtl8723au/include/rtw_ap.h |   3 -
 2 files changed, 118 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index ce4b589..f68e277 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -1046,93 +1046,6 @@ void rtw_set_macaddr_acl23a(struct rtw_adapter *padapter, int mode)
 	pacl_list->mode = mode;
 }
 
-int rtw_acl_add_sta23a(struct rtw_adapter *padapter, u8 *addr)
-{
-	struct list_head *phead;
-	u8 added = false;
-	int i, ret = 0;
-	struct rtw_wlan_acl_node *paclnode;
-	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
-	struct rtw_queue *pacl_node_q = &pacl_list->acl_node_q;
-
-	DBG_8723A("%s(acl_num =%d) =%pM\n", __func__, pacl_list->num, addr);
-
-	if ((NUM_ACL-1) < pacl_list->num)
-		return -1;
-
-	spin_lock_bh(&pacl_node_q->lock);
-	phead = get_list_head(pacl_node_q);
-	list_for_each_entry(paclnode, phead, list) {
-		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
-			if (paclnode->valid == true) {
-				added = true;
-				DBG_8723A("%s, sta has been added\n", __func__);
-				break;
-			}
-		}
-	}
-	spin_unlock_bh(&pacl_node_q->lock);
-
-	if (added)
-		return ret;
-
-	spin_lock_bh(&pacl_node_q->lock);
-
-	for (i = 0; i < NUM_ACL; i++) {
-		paclnode = &pacl_list->aclnode[i];
-
-		if (!paclnode->valid) {
-			INIT_LIST_HEAD(&paclnode->list);
-
-			memcpy(paclnode->addr, addr, ETH_ALEN);
-
-			paclnode->valid = true;
-
-			list_add_tail(&paclnode->list, get_list_head(pacl_node_q));
-
-			pacl_list->num++;
-
-			break;
-		}
-	}
-
-	DBG_8723A("%s, acl_num =%d\n", __func__, pacl_list->num);
-
-	spin_unlock_bh(&pacl_node_q->lock);
-	return ret;
-}
-
-int rtw_acl_remove_sta23a(struct rtw_adapter *padapter, u8 *addr)
-{
-	struct list_head *phead;
-	struct rtw_wlan_acl_node *paclnode, *ptmp;
-	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
-	struct rtw_queue *pacl_node_q = &pacl_list->acl_node_q;
-
-	DBG_8723A("%s(acl_num =%d) = %pM\n", __func__, pacl_list->num, addr);
-
-	spin_lock_bh(&pacl_node_q->lock);
-	phead = get_list_head(pacl_node_q);
-	list_for_each_entry_safe(paclnode, ptmp, phead, list) {
-		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
-			if (paclnode->valid) {
-				paclnode->valid = false;
-
-				list_del_init(&paclnode->list);
-
-				pacl_list->num--;
-			}
-		}
-	}
-	spin_unlock_bh(&pacl_node_q->lock);
-
-	DBG_8723A("%s, acl_num =%d\n", __func__, pacl_list->num);
-
-	return 0;
-}
-
 static void update_bcn_erpinfo_ie(struct rtw_adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1598,34 +1511,6 @@ u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta, bool acti
 	return beacon_updated;
 }
 
-int rtw_ap_inform_ch_switch23a(struct rtw_adapter *padapter, u8 new_ch, u8 ch_offset)
-{
-	struct list_head *phead;
-	struct sta_info *psta = NULL;
-	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
-
-	if ((pmlmeinfo->state&0x03) != MSR_AP)
-		return 0;
-
-	DBG_8723A("%s(%s): with ch:%u, offset:%u\n", __func__,
-		  padapter->pnetdev->name, new_ch, ch_offset);
-
-	spin_lock_bh(&pstapriv->asoc_list_lock);
-	phead = &pstapriv->asoc_list;
-	list_for_each_entry(psta, phead, asoc_list) {
-		issue_action_spct_ch_switch23a(padapter, psta->hwaddr, new_ch, ch_offset);
-		psta->expire_to = ((pstapriv->expire_to * 2) > 5) ? 5 : (pstapriv->expire_to * 2);
-	}
-	spin_unlock_bh(&pstapriv->asoc_list_lock);
-
-	issue_action_spct_ch_switch23a(padapter, bc_addr, new_ch, ch_offset);
-
-	return 0;
-}
-
 int rtw_sta_flush23a(struct rtw_adapter *padapter)
 {
 	struct list_head *phead;
diff --git a/drivers/staging/rtl8723au/include/rtw_ap.h b/drivers/staging/rtl8723au/include/rtw_ap.h
index 9f8d235..55a708f 100644
--- a/drivers/staging/rtl8723au/include/rtw_ap.h
+++ b/drivers/staging/rtl8723au/include/rtw_ap.h
@@ -36,8 +36,6 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
 			     struct ieee80211_mgmt *mgmt, unsigned int len);
 void rtw_ap_restore_network(struct rtw_adapter *padapter);
 void rtw_set_macaddr_acl23a(struct rtw_adapter *padapter, int mode);
-int rtw_acl_add_sta23a(struct rtw_adapter *padapter, u8 *addr);
-int rtw_acl_remove_sta23a(struct rtw_adapter *padapter, u8 *addr);
 
 void associated_clients_update23a(struct rtw_adapter *padapter, u8 updated);
 void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter, struct sta_info *psta);
@@ -46,7 +44,6 @@ void sta_info_update23a(struct rtw_adapter *padapter, struct sta_info *psta);
 void ap_sta_info_defer_update23a(struct rtw_adapter *padapter, struct sta_info *psta);
 u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta, bool active, u16 reason);
 int rtw_sta_flush23a(struct rtw_adapter *padapter);
-int rtw_ap_inform_ch_switch23a(struct rtw_adapter *padapter, u8 new_ch, u8 ch_offset);
 void start_ap_mode23a(struct rtw_adapter *padapter);
 void stop_ap_mode23a(struct rtw_adapter *padapter);
 #endif /* end of CONFIG_8723AU_AP_MODE */
-- 
1.9.1


