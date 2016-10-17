X-GM-THRID: 6342317350126092288
X-Received: by 10.157.33.196 with SMTP id s62mr6684570otb.8.1476685830635;
        Sun, 16 Oct 2016 23:30:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls11569548ota.25.gmail; Sun, 16 Oct
 2016 23:30:30 -0700 (PDT)
X-Received: by 10.13.209.3 with SMTP id t3mr6135710ywd.133.1476685830261;
        Sun, 16 Oct 2016 23:30:30 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id x14si3868015vkd.3.2016.10.16.23.30.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 23:30:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x79so24982247lff.2
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 23:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qpsPckLWRUQiHCW+RBkC10DxZxKUddr6Ujxb2NYUfTA=;
        b=sugsVhoFyDPq7HeqdOmOoQ3NHxecZeCy1C/W/MjtF1c1b4ZBjRBJDTg/9yn40uAoqd
         wmaIofO+hZKWndc/ph6XHraw6m9heAn96NVFZLMezqCj8A2kxjDPZaiCptOruMR+6g3M
         4opgONq9Assg7wFRXVhX0mTSt50tM5aCyimvqe6DRI8gVvMkp+7jty4Ig1REY0NH51e/
         smtOHtdHKUksXI68hWZyCH0+xNTQGCFZM3can8RXob3dOVkQ0X/p2ZtYeogmcTIdCxWK
         2vUxO0doE+Cf8l154t7Ip30CaKZWk1wW4OfRSenrClXNcB1zImAk1VylweCQq4nR7l6X
         F5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qpsPckLWRUQiHCW+RBkC10DxZxKUddr6Ujxb2NYUfTA=;
        b=UqulvicKPauFxiwit4w1XAOJ2iksympyrAEWttBKILR+A/6ybdKSApRpV+vke/dX31
         uSgz0Zurrysa29MKU5pKDuTc2D7aWaSXP+3DEQ6kUlicsjRNX/q0ksqbhcXZ6UOR9aS6
         47MFdFBjs2Aw50/K2ZbjhwZQJLo+h7nNj7Mpqg0afZ6z6cnRBEBLwa5j/yYoTWopmRMM
         wA851X6gwE98dWF9noHo8QacmBA3vnYXoym+Cjsk1DLr9x7aaVPZbrec374WMQZAwGeJ
         krlqKt65OMQyoUw4dAUZ6gj+HIVuo72cp3/GnVngY37Ortvx2m5m65LuXX/05gy9HL8l
         /itg==
X-Gm-Message-State: AA6/9RkQr6ro+75meQ8sdbSgrMFC6ERoVrxfbRSYSuKfJMFfZzMhixP/eRbea8D/dxoJtA==
X-Received: by 10.28.54.209 with SMTP id y78mr6802315wmh.94.1476685829462;
        Sun, 16 Oct 2016 23:30:29 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id v3sm50251403wjm.4.2016.10.16.23.30.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 16 Oct 2016 23:30:28 -0700 (PDT)
Date: Mon, 17 Oct 2016 09:30:27 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: Replace the name of a  variable
Message-ID: <20161017063027.GA6200@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace the name '*Error' variable with 'err'.

Found and solve with Coccinelle:
@r1@
type s;
identifier sn =~ "Error";
identifier f;
type p;
expression c;
@@

f(...) {

<...
(
-p sn = c;
+p err = c;
|
-sn
+err
)
...>
}

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 138 +++++++++++-----------
 1 file changed, 69 insertions(+), 69 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 483a6b6..8c47558 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -603,7 +603,7 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 {
 	struct wilc_priv *priv;
 	u32 i;
-	s32 s32Error = 0;
+	s32 err = 0;
 	u8 au8ScanChanList[MAX_NUM_SCANNED_NETWORKS];
 	struct hidden_network strHiddenNetwork;
 	struct wilc_vif *vif;
@@ -641,14 +641,14 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 					strHiddenNetwork.n_ssids -= 1;
 				}
 			}
-			s32Error = wilc_scan(vif, USER_SCAN, ACTIVE_SCAN,
+			err = wilc_scan(vif, USER_SCAN, ACTIVE_SCAN,
 					     au8ScanChanList,
 					     request->n_channels,
 					     (const u8 *)request->ie,
 					     request->ie_len, CfgScanResult,
 					     (void *)priv, &strHiddenNetwork);
 		} else {
-			s32Error = wilc_scan(vif, USER_SCAN, ACTIVE_SCAN,
+			err = wilc_scan(vif, USER_SCAN, ACTIVE_SCAN,
 					     au8ScanChanList,
 					     request->n_channels,
 					     (const u8 *)request->ie,
@@ -659,16 +659,16 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 		netdev_err(priv->dev, "Requested scanned channels over\n");
 	}
 
-	if (s32Error != 0)
-		s32Error = -EBUSY;
+	if (err != 0)
+		err = -EBUSY;
 
-	return s32Error;
+	return err;
 }
 
 static int connect(struct wiphy *wiphy, struct net_device *dev,
 		   struct cfg80211_connect_params *sme)
 {
-	s32 s32Error = 0;
+	s32 err = 0;
 	u32 i;
 	u8 u8security = NO_ENCRYPT;
 	enum AUTHTYPE tenuAuth_type = ANY;
@@ -706,9 +706,9 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 	if (i < last_scanned_cnt) {
 		pstrNetworkInfo = &last_scanned_shadow[i];
 	} else {
-		s32Error = -ENOENT;
+		err = -ENOENT;
 		wilc_connecting = 0;
-		return s32Error;
+		return err;
 	}
 
 	memset(priv->WILC_WFI_wep_key, 0, sizeof(priv->WILC_WFI_wep_key));
@@ -756,10 +756,10 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 			else
 				u8security = ENCRYPT_ENABLED | WPA | AES;
 		} else {
-			s32Error = -ENOTSUPP;
+			err = -ENOTSUPP;
 			netdev_err(dev, "Not supported cipher\n");
 			wilc_connecting = 0;
-			return s32Error;
+			return err;
 		}
 	}
 
@@ -804,25 +804,25 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 
 	wilc_wlan_set_bssid(dev, pstrNetworkInfo->bssid, STATION_MODE);
 
-	s32Error = wilc_set_join_req(vif, pstrNetworkInfo->bssid, sme->ssid,
+	err = wilc_set_join_req(vif, pstrNetworkInfo->bssid, sme->ssid,
 				     sme->ssid_len, sme->ie, sme->ie_len,
 				     CfgConnectResult, (void *)priv,
 				     u8security, tenuAuth_type,
 				     pstrNetworkInfo->ch,
 				     pstrNetworkInfo->join_params);
-	if (s32Error != 0) {
+	if (err != 0) {
 		netdev_err(dev, "wilc_set_join_req(): Error\n");
-		s32Error = -ENOENT;
+		err = -ENOENT;
 		wilc_connecting = 0;
-		return s32Error;
+		return err;
 	}
 
-	return s32Error;
+	return err;
 }
 
 static int disconnect(struct wiphy *wiphy, struct net_device *dev, u16 reason_code)
 {
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct wilc_priv *priv;
 	struct host_if_drv *pstrWFIDrv;
 	struct wilc_vif *vif;
@@ -853,13 +853,13 @@ static int disconnect(struct wiphy *wiphy, struct net_device *dev, u16 reason_co
 	wilc_ie = false;
 	pstrWFIDrv->p2p_timeout = 0;
 
-	s32Error = wilc_disconnect(vif, reason_code);
-	if (s32Error != 0) {
+	err = wilc_disconnect(vif, reason_code);
+	if (err != 0) {
 		netdev_err(priv->dev, "Error in disconnecting\n");
-		s32Error = -EINVAL;
+		err = -EINVAL;
 	}
 
-	return s32Error;
+	return err;
 }
 
 static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
@@ -867,7 +867,7 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 		   const u8 *mac_addr, struct key_params *params)
 
 {
-	s32 s32Error = 0, KeyLen = params->key_len;
+	s32 err = 0, KeyLen = params->key_len;
 	struct wilc_priv *priv;
 	const u8 *pu8RxMic = NULL;
 	const u8 *pu8TxMic = NULL;
@@ -1070,10 +1070,10 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 
 	default:
 		netdev_err(netdev, "Not supported cipher\n");
-		s32Error = -ENOTSUPP;
+		err = -ENOTSUPP;
 	}
 
-	return s32Error;
+	return err;
 }
 
 static int del_key(struct wiphy *wiphy, struct net_device *netdev,
@@ -1249,7 +1249,7 @@ static int change_bss(struct wiphy *wiphy, struct net_device *dev,
 
 static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 {
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct cfg_param_attr pstrCfgParamVal;
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
@@ -1277,18 +1277,18 @@ static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 		pstrCfgParamVal.rts_threshold = priv->dev->ieee80211_ptr->wiphy->rts_threshold;
 	}
 
-	s32Error = wilc_hif_set_cfg(vif, &pstrCfgParamVal);
-	if (s32Error)
+	err = wilc_hif_set_cfg(vif, &pstrCfgParamVal);
+	if (err)
 		netdev_err(priv->dev, "Error in setting WIPHY PARAMS\n");
 
-	return s32Error;
+	return err;
 }
 
 static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 		     struct cfg80211_pmksa *pmksa)
 {
 	u32 i;
-	s32 s32Error = 0;
+	s32 err = 0;
 	u8 flag = 0;
 	struct wilc_vif *vif;
 	struct wilc_priv *priv = wiphy_priv(wiphy);
@@ -1312,20 +1312,20 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 			priv->pmkid_list.numpmkid++;
 	} else {
 		netdev_err(netdev, "Invalid PMKID index\n");
-		s32Error = -EINVAL;
+		err = -EINVAL;
 	}
 
-	if (!s32Error)
-		s32Error = wilc_set_pmkid_info(vif, &priv->pmkid_list);
+	if (!err)
+		err = wilc_set_pmkid_info(vif, &priv->pmkid_list);
 
-	return s32Error;
+	return err;
 }
 
 static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 		     struct cfg80211_pmksa *pmksa)
 {
 	u32 i;
-	s32 s32Error = 0;
+	s32 err = 0;
 
 	struct wilc_priv *priv = wiphy_priv(wiphy);
 
@@ -1348,10 +1348,10 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 		}
 		priv->pmkid_list.numpmkid--;
 	} else {
-		s32Error = -EINVAL;
+		err = -EINVAL;
 	}
 
-	return s32Error;
+	return err;
 }
 
 static int flush_pmksa(struct wiphy *wiphy, struct net_device *netdev)
@@ -1571,7 +1571,7 @@ static int remain_on_channel(struct wiphy *wiphy,
 			     struct ieee80211_channel *chan,
 			     unsigned int duration, u64 *cookie)
 {
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
 
@@ -1580,7 +1580,7 @@ static int remain_on_channel(struct wiphy *wiphy,
 
 	if (wdev->iftype == NL80211_IFTYPE_AP) {
 		netdev_dbg(vif->ndev, "Required while in AP mode\n");
-		return s32Error;
+		return err;
 	}
 
 	curr_channel = chan->hw_value;
@@ -1917,7 +1917,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 {
 	struct cfg80211_beacon_data *beacon = &(settings->beacon);
 	struct wilc_priv *priv;
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct wilc *wl;
 	struct wilc_vif *vif;
 
@@ -1925,9 +1925,9 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 	vif = netdev_priv(dev);
 	wl = vif->wilc;
 
-	s32Error = set_channel(wiphy, &settings->chandef);
+	err = set_channel(wiphy, &settings->chandef);
 
-	if (s32Error != 0)
+	if (err != 0)
 		netdev_err(dev, "Error in setting channel\n");
 
 	wilc_wlan_set_bssid(dev, wl->vif[vif->idx]->src_addr, AP_MODE);
@@ -1955,7 +1955,7 @@ static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
 
 static int stop_ap(struct wiphy *wiphy, struct net_device *dev)
 {
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
 	u8 NullBssid[ETH_ALEN] = {0};
@@ -1968,18 +1968,18 @@ static int stop_ap(struct wiphy *wiphy, struct net_device *dev)
 
 	wilc_wlan_set_bssid(dev, NullBssid, AP_MODE);
 
-	s32Error = wilc_del_beacon(vif);
+	err = wilc_del_beacon(vif);
 
-	if (s32Error)
+	if (err)
 		netdev_err(dev, "Host delete beacon fail\n");
 
-	return s32Error;
+	return err;
 }
 
 static int add_station(struct wiphy *wiphy, struct net_device *dev,
 		       const u8 *mac, struct station_parameters *params)
 {
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct wilc_priv *priv;
 	struct add_sta_param strStaParams = { {0} };
 	struct wilc_vif *vif;
@@ -2014,19 +2014,19 @@ static int add_station(struct wiphy *wiphy, struct net_device *dev,
 		strStaParams.flags_mask = params->sta_flags_mask;
 		strStaParams.flags_set = params->sta_flags_set;
 
-		s32Error = wilc_add_station(vif, &strStaParams);
-		if (s32Error)
+		err = wilc_add_station(vif, &strStaParams);
+		if (err)
 			netdev_err(dev, "Host add station fail\n");
 	}
 
-	return s32Error;
+	return err;
 }
 
 static int del_station(struct wiphy *wiphy, struct net_device *dev,
 		       struct station_del_parameters *params)
 {
 	const u8 *mac = params->mac;
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
 
@@ -2038,21 +2038,21 @@ static int del_station(struct wiphy *wiphy, struct net_device *dev,
 
 	if (vif->iftype == AP_MODE || vif->iftype == GO_MODE) {
 		if (!mac)
-			s32Error = wilc_del_allstation(vif,
+			err = wilc_del_allstation(vif,
 				     priv->assoc_stainfo.au8Sta_AssociatedBss);
 
-		s32Error = wilc_del_station(vif, mac);
+		err = wilc_del_station(vif, mac);
 
-		if (s32Error)
+		if (err)
 			netdev_err(dev, "Host delete station fail\n");
 	}
-	return s32Error;
+	return err;
 }
 
 static int change_station(struct wiphy *wiphy, struct net_device *dev,
 			  const u8 *mac, struct station_parameters *params)
 {
-	s32 s32Error = 0;
+	s32 err = 0;
 	struct wilc_priv *priv;
 	struct add_sta_param strStaParams = { {0} };
 	struct wilc_vif *vif;
@@ -2086,11 +2086,11 @@ static int change_station(struct wiphy *wiphy, struct net_device *dev,
 		strStaParams.flags_mask = params->sta_flags_mask;
 		strStaParams.flags_set = params->sta_flags_set;
 
-		s32Error = wilc_edit_station(vif, &strStaParams);
-		if (s32Error)
+		err = wilc_edit_station(vif, &strStaParams);
+		if (err)
 			netdev_err(dev, "Host edit station fail\n");
 	}
-	return s32Error;
+	return err;
 }
 
 static struct wireless_dev *add_virtual_intf(struct wiphy *wiphy,
@@ -2268,7 +2268,7 @@ struct wireless_dev *wilc_create_wiphy(struct net_device *net, struct device *de
 {
 	struct wilc_priv *priv;
 	struct wireless_dev *wdev;
-	s32 s32Error = 0;
+	s32 err = 0;
 
 	wdev = WILC_WFI_CfgAlloc();
 	if (!wdev) {
@@ -2297,8 +2297,8 @@ struct wireless_dev *wilc_create_wiphy(struct net_device *net, struct device *de
 
 	set_wiphy_dev(wdev->wiphy, dev);
 
-	s32Error = wiphy_register(wdev->wiphy);
-	if (s32Error)
+	err = wiphy_register(wdev->wiphy);
+	if (err)
 		netdev_err(net, "Cannot register wiphy device\n");
 
 	priv->dev = net;
@@ -2307,7 +2307,7 @@ struct wireless_dev *wilc_create_wiphy(struct net_device *net, struct device *de
 
 int wilc_init_host_int(struct net_device *net)
 {
-	int s32Error = 0;
+	int err = 0;
 
 	struct wilc_priv *priv;
 
@@ -2323,16 +2323,16 @@ int wilc_init_host_int(struct net_device *net)
 	priv->bInP2PlistenState = false;
 
 	mutex_init(&priv->scan_req_lock);
-	s32Error = wilc_init(net, &priv->hif_drv);
-	if (s32Error)
+	err = wilc_init(net, &priv->hif_drv);
+	if (err)
 		netdev_err(net, "Error while initializing hostinterface\n");
 
-	return s32Error;
+	return err;
 }
 
 int wilc_deinit_host_int(struct net_device *net)
 {
-	int s32Error = 0;
+	int err = 0;
 	struct wilc_vif *vif;
 	struct wilc_priv *priv;
 
@@ -2345,16 +2345,16 @@ int wilc_deinit_host_int(struct net_device *net)
 
 	op_ifcs--;
 
-	s32Error = wilc_deinit(vif);
+	err = wilc_deinit(vif);
 
 	clear_shadow_scan();
 	if (op_ifcs == 0)
 		del_timer_sync(&wilc_during_ip_timer);
 
-	if (s32Error)
+	if (err)
 		netdev_err(net, "Error while deintializing host interface\n");
 
-	return s32Error;
+	return err;
 }
 
 void wilc_free_wiphy(struct net_device *net)
-- 
2.7.4


