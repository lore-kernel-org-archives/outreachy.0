X-GM-THRID: 6331575608361877504
X-Received: by 10.157.0.33 with SMTP id 30mr2377425ota.139.1474184824691;
        Sun, 18 Sep 2016 00:47:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.213 with SMTP id b204ls1155677iob.41.gmail; Sun, 18 Sep
 2016 00:47:03 -0700 (PDT)
X-Received: by 10.66.234.197 with SMTP id ug5mr2315707pac.143.1474184823956;
        Sun, 18 Sep 2016 00:47:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si3850300pam.0.2016.09.18.00.47.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 00:47:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so2707788pfl.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 00:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=h2eC9ZIdYdS1gg/5VMAmHWAh8W27375y7+rHePqvlAk=;
        b=CiXgyBAoi0OhQrocdQ7iLfExNsdxSTEFkruYv8x11jIhg55bibS5gAWbhiWq9mS2Z7
         dXjXSyGqulQFY/j5IHWdQdHrqekXjGd/8nVGDeDw9NvgO+Bhxb6DtqdKOJH29YBVlh3p
         P60L0xk6DJo67kMDENYC5PhYHRx/qMuw7n/T5yu6gUuPHls/rHtaSndyzzm0a1AA4uQ2
         wN0diCZuSNn2L6vnhfOiRutEoz21PMFZCZN2e9Tg4aYdrAEuKpb9noNpOFj74VVtUexU
         qdW/FZT31J6c/y/VXgRKQSdE+rto5FFRQcRKql3q2XZDFqVl5JfjnpdxhBRzfLpNsCbJ
         4Ygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=h2eC9ZIdYdS1gg/5VMAmHWAh8W27375y7+rHePqvlAk=;
        b=J6DtfjbkLjjEkq3U6FJAGudo8IFkBRrtKiHYKbFB7EiXiAqUQ8H3yA6vA3rjmfCftr
         kzUNf6HJQJjihn50gfySppkfhbECPyT05/8FJTG2fWHbd9ViOVuf5wxmqaOQcFBkTSo6
         Y2B0TNnN0Uprz0F0siy76/6ZiWnxc1fpMiC4zZUjjEh24YGtdgMJf9jFPk93xi9cyWMs
         FvBHy+yrYYOu2CdFNgLFQzjMzbA/rW7Juj3XGXildlUAP9fOZ4OKYf1Xbv98tCdSLf6c
         qgQrjl0sSlve/vlYIaYT1KSjo8thK6Q0DuoPn1AQKKZQ3fw/Vx/SNvexTW7iTWLmpugp
         C7ag==
X-Gm-Message-State: AE9vXwNvFWFYqlZpsKKjTiJzqVQrFtrfZ/8mL+oUufX6spBl8IIVwpoaLjUkTPU1KfmjtA==
X-Received: by 10.98.34.221 with SMTP id p90mr21444424pfj.18.1474184823774;
        Sun, 18 Sep 2016 00:47:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id u19sm20533542pfa.40.2016.09.18.00.47.01
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 00:47:03 -0700 (PDT)
Date: Sun, 18 Sep 2016 13:16:55 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, amitoj1606@gmail.com
Subject: [PATCH 1/3] staging: rtl8188eu: core: Remove unnecessary parentheses
 around LNet function pointer
Message-ID: <20160918074648.GA4656@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

No need for the parentheses around any function pointer.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 3562f11..dfd5055 100644
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
 
@@ -630,9 +630,9 @@ static void update_bmc_sta(struct adapter *padapter)
 
 void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 {
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct mlme_ext_priv	*pmlmeext = &(padapter->mlmeextpriv);
+	struct mlme_ext_priv	*pmlmeext = &adapter->mlmeextpriv;
 	struct ht_priv	*phtpriv_ap = &pmlmepriv->htpriv;
 	struct ht_priv	*phtpriv_sta = &psta->htpriv;
 
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


