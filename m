X-GM-THRID: 6331676159841927168
X-Received: by 10.129.37.11 with SMTP id l11mr2891821ywl.165.1474208235380;
        Sun, 18 Sep 2016 07:17:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.91.212 with SMTP id g203ls2191906itb.13.gmail; Sun, 18 Sep
 2016 07:17:14 -0700 (PDT)
X-Received: by 10.66.20.97 with SMTP id m1mr2891706pae.120.1474208234604;
        Sun, 18 Sep 2016 07:17:14 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 7si4118027pfw.1.2016.09.18.07.17.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 07:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id vz6so5720086pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 07:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zN5wfmQDZoet6wqNrRbKD8uyf9BYnkFkIPSFMJY3K5U=;
        b=Bc08dL+1T+N3b+SP8cVXMllkV1+zBGwHC46S9vNze0tH7Qn82HpdN714rNtQee4Na9
         P4NgZcnd5VH8EUy5aB3e78RAF0co6Wm14M80yg2qy6WTpc1ZeQaLPVPirz0zBxtepqeP
         lLodY0ElhZU3sXxxSD2nzAYTPJim9ql8Yq40Gj1+mcD92sq5fezi2V7l8LfWV+15t/T0
         YO3rsiMkyPnQs6+NeLz+lot4MjfKzKbZuS+74NjN1XAZk8ohumRKAPRlcVsfLgjuJPqI
         lAJsw/86WAsRun/pymQvjv+YkQGIkKSEvnBPR3ACs2CSe+yIKY0zpMxaqBowAKHBCpfl
         jBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zN5wfmQDZoet6wqNrRbKD8uyf9BYnkFkIPSFMJY3K5U=;
        b=QHkgfFCUsBGo2aJ2eFJakJ7B9V8Xz8JLOUKhQLIYjjjLVW5r2sCNtEGk7BqD7TfgD6
         b7d4Fvlc5NTouNKXXh/ZM5qtSiGrmcuUA24Vj7UOI4EJlYZM2BvE5v9cKFh4lhBZs8MM
         9FMuQSo6Gmp0beX7xkd2ADMut15KC/n09d5DIMBcLbm6C/LoqwoHNJzS7rfNJqPkoPSj
         uOsttEjofeJ3tXikflK5oeFoZJGxCpfrt+jwFUaV6t4KG4AFiiKUpyLUQAjnC5FLJwjL
         2B1oqzfoyyekJs69amLhKCK7YZulHR7WenxGZXhietga4A8MYUGWKsNNkFmZRwYs/RxM
         ViRA==
X-Gm-Message-State: AE9vXwOwVgC94oDfc0Z7FyYB0gDkvs7u2vqHVmIon3rGy+XxnFZlUtPNWq1thps/aaUc7w==
X-Received: by 10.66.150.134 with SMTP id ui6mr38733510pab.41.1474208234421;
        Sun, 18 Sep 2016 07:17:14 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id tw2sm24789356pac.41.2016.09.18.07.17.12
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 07:17:13 -0700 (PDT)
Date: Sun, 18 Sep 2016 19:47:04 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, amitoj1606@gmail.com
Subject: [PATCH] staging: rtl8188eu: core: Remove unnecessary parentheses
 around pointers
Message-ID: <20160918141656.GA8430@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

No need for the parentheses around any pointer.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 3562f11..ccaf428 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -26,7 +26,7 @@
 
 void init_mlme_ap_info(struct adapter *padapter)
 {
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 
@@ -43,9 +43,9 @@ void free_mlme_ap_info(struct adapter *padapter)
 {
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
 	pmlmepriv->update_bcn = false;
 	pmlmeext->bstart_bss = false;
@@ -59,17 +59,17 @@ void free_mlme_ap_info(struct adapter *padapter)
 
 	/* free bc/mc sta_info */
 	psta = rtw_get_bcmc_stainfo(padapter);
-	spin_lock_bh(&(pstapriv->sta_hash_lock));
+	spin_lock_bh(&pstapriv->sta_hash_lock);
 	rtw_free_stainfo(padapter, psta);
-	spin_unlock_bh(&(pstapriv->sta_hash_lock));
+	spin_unlock_bh(&pstapriv->sta_hash_lock);
 }
 
 static void update_BCNTIM(struct adapter *padapter)
 {
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct wlan_bssid_ex *pnetwork_mlmeext = &(pmlmeinfo->network);
+	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
+	struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
 	unsigned char *pie = pnetwork_mlmeext->IEs;
 	u8 *p, *dst_ie, *premainder_ie = NULL;
 	u8 *pbackup_remainder_ie = NULL;
@@ -310,9 +310,9 @@ void	expire_timeout_chk(struct adapter *padapter)
 
 				spin_unlock_bh(&pstapriv->auth_list_lock);
 
-				spin_lock_bh(&(pstapriv->sta_hash_lock));
+				spin_lock_bh(&pstapriv->sta_hash_lock);
 				rtw_free_stainfo(padapter, psta);
-				spin_unlock_bh(&(pstapriv->sta_hash_lock));
+				spin_unlock_bh(&pstapriv->sta_hash_lock);
 
 				spin_lock_bh(&pstapriv->auth_list_lock);
 			}
@@ -548,7 +548,7 @@ static void update_bmc_sta(struct adapter *padapter)
 	unsigned char	network_type, raid;
 	int i, supportRateNum = 0;
 	unsigned int tx_ra_bitmap = 0;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex *pcur_network = (struct wlan_bssid_ex *)&pmlmepriv->cur_network.network;
 	struct sta_info *psta = rtw_get_bcmc_stainfo(padapter);
 
@@ -630,13 +630,13 @@ static void update_bmc_sta(struct adapter *padapter)
 
 void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 {
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct mlme_ext_priv	*pmlmeext = &(padapter->mlmeextpriv);
+	struct mlme_ext_priv	*pmlmeext = &adapter->mlmeextpriv;
 	struct ht_priv	*phtpriv_ap = &pmlmepriv->htpriv;
 	struct ht_priv	*phtpriv_sta = &psta->htpriv;
 
-	psta->mac_id = psta->aid+1;
+	psta->mac_id = psta->aid + 1;
 	DBG_88E("%s\n", __func__);
 
 	/* ap mode */
@@ -700,7 +700,7 @@ static void update_hw_ht_param(struct adapter *padapter)
 	unsigned char		max_AMPDU_len;
 	unsigned char		min_MPDU_spacing;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
 	DBG_88E("%s\n", __func__);
 
@@ -905,7 +905,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	pbss_network->Rssi = 0;
 
-	ether_addr_copy(pbss_network->MacAddress, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pbss_network->MacAddress, myid(&padapter->eeprompriv));
 
 	/* beacon interval */
 	p = rtw_get_beacon_interval_from_ie(ie);/* 8: TimeStamp, 2: Beacon Interval 2:Capability */
-- 
1.9.1


