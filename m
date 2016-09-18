X-GM-THRID: 6331605115209777152
X-Received: by 10.66.158.10 with SMTP id wq10mr12902182pab.35.1474191694614;
        Sun, 18 Sep 2016 02:41:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.90.20 with SMTP id v20ls2175058ita.10.gmail; Sun, 18 Sep
 2016 02:41:32 -0700 (PDT)
X-Received: by 10.66.187.234 with SMTP id fv10mr2699041pac.50.1474191692268;
        Sun, 18 Sep 2016 02:41:32 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si3890248pam.0.2016.09.18.02.41.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so2795990pfl.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fF6wQ481n9Kcv0tXtn6j3K5C1PpXEFwmo08qU4ZIfeY=;
        b=CKb4Oi2P2QhTOiAcW/TViaV8Wazkl/RuavZU782TWNTsWtQQUg2p+N0VBp1V/MqhgQ
         bJ8oNfnYwaiqMv1QNzf64ku3/jXFRyb34pl7w1Xty9nJS8iLX9nInopnLACq9fD+PWYr
         q+D9NLIjUS2A25xk0eHzZo3A9ZrbZoKKW5/Ea6sYEeK3MFrS/6v126TRo0F18npvE2le
         5OB0U9QxTJ8wHDWbPHjlo8e6r0PyagDI0s9MFWzkycHu0KOzqjT8SmeJdzeIRlZZr7ey
         V3PNyyKqyiHZnAe00xfLXg8+OWNmna4om30ToPtZ85Rn08q1BTKljaS1nwSC6qH2fPtV
         fGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fF6wQ481n9Kcv0tXtn6j3K5C1PpXEFwmo08qU4ZIfeY=;
        b=jaZXdAoH2GBQpZKo511qXMTeQ9OgGnVuHaCIVlVtT4irQOMU1Rhlg9bG8n3vaSILYS
         Hetyi+b30JAs4LFOAVQKaDql8Q5xKD++wkOzA8qXQAlIjYiWj8ziBbwE1ap4kDTCJlI2
         oCqzJyvL0dwkJ4oi1Xhao2T3cDc2lp0VIORYtJefv1sAySDDrR7L8RS/3IOEJBWJ2n2d
         N6rE7Z8eApuiDQP2zedWSkByFm+Ao8uXYWsQuHUiWP7rRgRq5OEs27ygxhS6H4XcJ7Cj
         qIyFyLOiFM4VNweaRv3QP7kZgQ3keCV4fXnLM8YaV6jAPmUX7Ax9MFaeCSTE1JbnJ961
         rvpA==
X-Gm-Message-State: AE9vXwPQ8Q7T70xkiwTcMY5VzqjUDw4bn0luHIz13BabXvNNNSd3Lw5dckr5Levv1zJsNQ==
X-Received: by 10.98.155.7 with SMTP id r7mr23458681pfd.171.1474191691571;
        Sun, 18 Sep 2016 02:41:31 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.165.60])
        by smtp.gmail.com with ESMTPSA id y184sm63527491pfg.94.2016.09.18.02.41.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:41:31 -0700 (PDT)
Date: Sun, 18 Sep 2016 15:11:14 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: Remove the typedef to the 'wlandevice'
 structure
Message-ID: <20160918094114.GA23729@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes the typedef 'wlandevice_t' to the 'wlandevice'
structure.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c     | 38 ++++++-------
 drivers/staging/wlan-ng/hfa384x.h      |  4 +-
 drivers/staging/wlan-ng/hfa384x_usb.c  | 22 ++++----
 drivers/staging/wlan-ng/p80211conv.c   |  6 +--
 drivers/staging/wlan-ng/p80211netdev.c | 36 ++++++-------
 drivers/staging/wlan-ng/p80211netdev.h | 22 ++++----
 drivers/staging/wlan-ng/p80211req.c    | 10 ++--
 drivers/staging/wlan-ng/p80211req.h    |  2 +-
 drivers/staging/wlan-ng/p80211wep.c    |  6 +--
 drivers/staging/wlan-ng/prism2fw.c     | 14 ++---
 drivers/staging/wlan-ng/prism2mgmt.c   | 20 +++----
 drivers/staging/wlan-ng/prism2mgmt.h   | 38 ++++++-------
 drivers/staging/wlan-ng/prism2mib.c    | 36 ++++++-------
 drivers/staging/wlan-ng/prism2sta.c    | 98 +++++++++++++++++-----------------
 drivers/staging/wlan-ng/prism2usb.c    | 14 ++---
 15 files changed, 183 insertions(+), 183 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index a36e40d..58f69d8 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -35,7 +35,7 @@ static const u32 prism2_cipher_suites[PRISM2_NUM_CIPHER_SUITES] = {
 
 /* prism2 device private data */
 struct prism2_wiphy_private {
-	wlandevice_t *wlandev;
+	struct wlandevice *wlandev;
 
 	struct ieee80211_supported_band band;
 	struct ieee80211_channel channels[ARRAY_SIZE(prism2_channels)];
@@ -69,7 +69,7 @@ static int prism2_result2err(int prism2_result)
 	return err;
 }
 
-static int prism2_domibset_uint32(wlandevice_t *wlandev, u32 did, u32 data)
+static int prism2_domibset_uint32(struct wlandevice *wlandev, u32 did, u32 data)
 {
 	struct p80211msg_dot11req_mibset msg;
 	p80211item_uint32_t *mibitem =
@@ -82,7 +82,7 @@ static int prism2_domibset_uint32(wlandevice_t *wlandev, u32 did, u32 data)
 	return p80211req_dorequest(wlandev, (u8 *)&msg);
 }
 
-static int prism2_domibset_pstr32(wlandevice_t *wlandev,
+static int prism2_domibset_pstr32(struct wlandevice *wlandev,
 				  u32 did, u8 len, const u8 *data)
 {
 	struct p80211msg_dot11req_mibset msg;
@@ -103,7 +103,7 @@ static int prism2_change_virtual_intf(struct wiphy *wiphy,
 				      enum nl80211_iftype type, u32 *flags,
 				      struct vif_params *params)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	u32 data;
 	int result;
 	int err = 0;
@@ -144,7 +144,7 @@ static int prism2_add_key(struct wiphy *wiphy, struct net_device *dev,
 			  u8 key_index, bool pairwise, const u8 *mac_addr,
 			  struct key_params *params)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	u32 did;
 
 	int err = 0;
@@ -188,7 +188,7 @@ static int prism2_get_key(struct wiphy *wiphy, struct net_device *dev,
 			  const u8 *mac_addr, void *cookie,
 			  void (*callback)(void *cookie, struct key_params*))
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	struct key_params params;
 	int len;
 
@@ -216,7 +216,7 @@ static int prism2_get_key(struct wiphy *wiphy, struct net_device *dev,
 static int prism2_del_key(struct wiphy *wiphy, struct net_device *dev,
 			  u8 key_index, bool pairwise, const u8 *mac_addr)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	u32 did;
 	int err = 0;
 	int result = 0;
@@ -241,7 +241,7 @@ static int prism2_del_key(struct wiphy *wiphy, struct net_device *dev,
 static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
 				  u8 key_index, bool unicast, bool multicast)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 
 	int err = 0;
 	int result = 0;
@@ -259,7 +259,7 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
 static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 			      const u8 *mac, struct station_info *sinfo)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	struct p80211msg_lnxreq_commsquality quality;
 	int result;
 
@@ -294,7 +294,7 @@ static int prism2_scan(struct wiphy *wiphy,
 {
 	struct net_device *dev;
 	struct prism2_wiphy_private *priv = wiphy_priv(wiphy);
-	wlandevice_t *wlandev;
+	struct wlandevice *wlandev;
 	struct p80211msg_dot11req_scan msg1;
 	struct p80211msg_dot11req_scan_results msg2;
 	struct cfg80211_bss *bss;
@@ -411,7 +411,7 @@ exit:
 static int prism2_set_wiphy_params(struct wiphy *wiphy, u32 changed)
 {
 	struct prism2_wiphy_private *priv = wiphy_priv(wiphy);
-	wlandevice_t *wlandev = priv->wlandev;
+	struct wlandevice *wlandev = priv->wlandev;
 	u32 data;
 	int result;
 	int err = 0;
@@ -453,7 +453,7 @@ exit:
 static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 			  struct cfg80211_connect_params *sme)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	struct ieee80211_channel *channel = sme->channel;
 	struct p80211msg_lnxreq_autojoin msg_join;
 	u32 did;
@@ -563,7 +563,7 @@ exit:
 static int prism2_disconnect(struct wiphy *wiphy, struct net_device *dev,
 			     u16 reason_code)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	struct p80211msg_lnxreq_autojoin msg_join;
 	int result;
 	int err = 0;
@@ -597,7 +597,7 @@ static int prism2_set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 			       enum nl80211_tx_power_setting type, int mbm)
 {
 	struct prism2_wiphy_private *priv = wiphy_priv(wiphy);
-	wlandevice_t *wlandev = priv->wlandev;
+	struct wlandevice *wlandev = priv->wlandev;
 	u32 data;
 	int result;
 	int err = 0;
@@ -624,7 +624,7 @@ static int prism2_get_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 			       int *dbm)
 {
 	struct prism2_wiphy_private *priv = wiphy_priv(wiphy);
-	wlandevice_t *wlandev = priv->wlandev;
+	struct wlandevice *wlandev = priv->wlandev;
 	struct p80211msg_dot11req_mibget msg;
 	p80211item_uint32_t *mibitem;
 	int result;
@@ -649,7 +649,7 @@ exit:
 }
 
 /* Interface callback functions, passing data back up to the cfg80211 layer */
-void prism2_connect_result(wlandevice_t *wlandev, u8 failed)
+void prism2_connect_result(struct wlandevice *wlandev, u8 failed)
 {
 	u16 status = failed ?
 		     WLAN_STATUS_UNSPECIFIED_FAILURE : WLAN_STATUS_SUCCESS;
@@ -658,13 +658,13 @@ void prism2_connect_result(wlandevice_t *wlandev, u8 failed)
 				NULL, 0, NULL, 0, status, GFP_KERNEL);
 }
 
-void prism2_disconnected(wlandevice_t *wlandev)
+void prism2_disconnected(struct wlandevice *wlandev)
 {
 	cfg80211_disconnected(wlandev->netdev, 0, NULL,
 		0, false, GFP_KERNEL);
 }
 
-void prism2_roamed(wlandevice_t *wlandev)
+void prism2_roamed(struct wlandevice *wlandev)
 {
 	cfg80211_roamed(wlandev->netdev, NULL, wlandev->bssid,
 		NULL, 0, NULL, 0, GFP_KERNEL);
@@ -689,7 +689,7 @@ static const struct cfg80211_ops prism2_usb_cfg_ops = {
 };
 
 /* Functions to create/free wiphy interface */
-static struct wiphy *wlan_create_wiphy(struct device *dev, wlandevice_t *wlandev)
+static struct wiphy *wlan_create_wiphy(struct device *dev, struct wlandevice *wlandev)
 {
 	struct wiphy *wiphy;
 	struct prism2_wiphy_private *priv;
diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index cec6d0b..60c0773 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1273,7 +1273,7 @@ typedef struct hfa384x {
 	int join_retries;	/* number of join retries till we fail */
 	hfa384x_JoinRequest_data_t joinreq;	/* join request saved data */
 
-	wlandevice_t *wlandev;
+	struct wlandevice *wlandev;
 	/* Timer to allow for the deferred processing of linkstatus messages */
 	struct work_struct link_bh;
 
@@ -1410,7 +1410,7 @@ int
 hfa384x_drvr_txframe(hfa384x_t *hw, struct sk_buff *skb,
 		     union p80211_hdr *p80211_hdr,
 		     struct p80211_metawep *p80211_wep);
-void hfa384x_tx_timeout(wlandevice_t *wlandev);
+void hfa384x_tx_timeout(struct wlandevice *wlandev);
 
 int hfa384x_cmd_initialize(hfa384x_t *hw);
 int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport);
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 3378107..9c29311 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -154,7 +154,7 @@ static void dbprint_urb(struct urb *urb);
 #endif
 
 static void
-hfa384x_int_rxmonitor(wlandevice_t *wlandev, hfa384x_usb_rxfrm_t *rxfrm);
+hfa384x_int_rxmonitor(struct wlandevice *wlandev, hfa384x_usb_rxfrm_t *rxfrm);
 
 static void hfa384x_usb_defer(struct work_struct *data);
 
@@ -169,11 +169,11 @@ static void hfa384x_ctlxout_callback(struct urb *urb);
 static void hfa384x_usbin_callback(struct urb *urb);
 
 static void
-hfa384x_usbin_txcompl(wlandevice_t *wlandev, hfa384x_usbin_t *usbin);
+hfa384x_usbin_txcompl(struct wlandevice *wlandev, hfa384x_usbin_t *usbin);
 
-static void hfa384x_usbin_rx(wlandevice_t *wlandev, struct sk_buff *skb);
+static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb);
 
-static void hfa384x_usbin_info(wlandevice_t *wlandev, hfa384x_usbin_t *usbin);
+static void hfa384x_usbin_info(struct wlandevice *wlandev, hfa384x_usbin_t *usbin);
 
 static void hfa384x_usbin_ctlx(hfa384x_t *hw, hfa384x_usbin_t *usbin,
 			       int urb_status);
@@ -2656,7 +2656,7 @@ exit:
 	return result;
 }
 
-void hfa384x_tx_timeout(wlandevice_t *wlandev)
+void hfa384x_tx_timeout(struct wlandevice *wlandev)
 {
 	hfa384x_t *hw = wlandev->priv;
 	unsigned long flags;
@@ -2988,7 +2988,7 @@ unlock:
 ----------------------------------------------------------------*/
 static void hfa384x_usbin_callback(struct urb *urb)
 {
-	wlandevice_t *wlandev = urb->context;
+	struct wlandevice *wlandev = urb->context;
 	hfa384x_t *hw;
 	hfa384x_usbin_t *usbin = (hfa384x_usbin_t *)urb->transfer_buffer;
 	struct sk_buff *skb = NULL;
@@ -3285,7 +3285,7 @@ unlock:
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static void hfa384x_usbin_txcompl(wlandevice_t *wlandev,
+static void hfa384x_usbin_txcompl(struct wlandevice *wlandev,
 				  hfa384x_usbin_t *usbin)
 {
 	u16 status;
@@ -3316,7 +3316,7 @@ static void hfa384x_usbin_txcompl(wlandevice_t *wlandev,
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static void hfa384x_usbin_rx(wlandevice_t *wlandev, struct sk_buff *skb)
+static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 {
 	hfa384x_usbin_t *usbin = (hfa384x_usbin_t *)skb->data;
 	hfa384x_t *hw = wlandev->priv;
@@ -3416,7 +3416,7 @@ static void hfa384x_usbin_rx(wlandevice_t *wlandev, struct sk_buff *skb)
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static void hfa384x_int_rxmonitor(wlandevice_t *wlandev,
+static void hfa384x_int_rxmonitor(struct wlandevice *wlandev,
 				  hfa384x_usb_rxfrm_t *rxfrm)
 {
 	hfa384x_rx_frame_t *rxdesc = &(rxfrm->desc);
@@ -3517,7 +3517,7 @@ static void hfa384x_int_rxmonitor(wlandevice_t *wlandev,
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static void hfa384x_usbin_info(wlandevice_t *wlandev, hfa384x_usbin_t *usbin)
+static void hfa384x_usbin_info(struct wlandevice *wlandev, hfa384x_usbin_t *usbin)
 {
 	usbin->infofrm.info.framelen =
 	    le16_to_cpu(usbin->infofrm.info.framelen);
@@ -3542,7 +3542,7 @@ static void hfa384x_usbin_info(wlandevice_t *wlandev, hfa384x_usbin_t *usbin)
 ----------------------------------------------------------------*/
 static void hfa384x_usbout_callback(struct urb *urb)
 {
-	wlandevice_t *wlandev = urb->context;
+	struct wlandevice *wlandev = urb->context;
 
 #ifdef DEBUG_USB
 	dbprint_urb(urb);
diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 6354036..efc52e9 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -104,7 +104,7 @@ static const u8 oui_8021h[] = { 0x00, 0x00, 0xf8 };
 *	May be called in interrupt or non-interrupt context
 *----------------------------------------------------------------
 */
-int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
+int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
 			struct sk_buff *skb, union p80211_hdr *p80211_hdr,
 			struct p80211_metawep *p80211_wep)
 {
@@ -232,7 +232,7 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
 }
 
 /* jkriegl: from orinoco, modified */
-static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
+static void orinoco_spy_gather(struct wlandevice *wlandev, char *mac,
 			       struct p80211_rxmeta *rxmeta)
 {
 	int i;
@@ -274,7 +274,7 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
 *	May be called in interrupt or non-interrupt context
 *----------------------------------------------------------------
 */
-int skb_p80211_to_ether(wlandevice_t *wlandev, u32 ethconv,
+int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 			struct sk_buff *skb)
 {
 	netdevice_t *netdev = wlandev->netdev;
diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index 90cc8cd..fb97779 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -101,7 +101,7 @@ static int p80211knetdev_do_ioctl(netdevice_t *dev, struct ifreq *ifr,
 				  int cmd);
 static int p80211knetdev_set_mac_address(netdevice_t *dev, void *addr);
 static void p80211knetdev_tx_timeout(netdevice_t *netdev);
-static int p80211_rx_typedrop(wlandevice_t *wlandev, u16 fc);
+static int p80211_rx_typedrop(struct wlandevice *wlandev, u16 fc);
 
 int wlan_watchdog = 5000;
 module_param(wlan_watchdog, int, 0644);
@@ -149,7 +149,7 @@ static int p80211knetdev_init(netdevice_t *netdev)
 static int p80211knetdev_open(netdevice_t *netdev)
 {
 	int result = 0;		/* success */
-	wlandevice_t *wlandev = netdev->ml_priv;
+	struct wlandevice *wlandev = netdev->ml_priv;
 
 	/* Check to make sure the MSD is running */
 	if (wlandev->msdstate != WLAN_MSD_RUNNING)
@@ -184,7 +184,7 @@ static int p80211knetdev_open(netdevice_t *netdev)
 static int p80211knetdev_stop(netdevice_t *netdev)
 {
 	int result = 0;
-	wlandevice_t *wlandev = netdev->ml_priv;
+	struct wlandevice *wlandev = netdev->ml_priv;
 
 	if (wlandev->close)
 		result = wlandev->close(wlandev);
@@ -208,7 +208,7 @@ static int p80211knetdev_stop(netdevice_t *netdev)
 * Side effects:
 *
 ----------------------------------------------------------------*/
-void p80211netdev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
+void p80211netdev_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 {
 	/* Enqueue for post-irq processing */
 	skb_queue_tail(&wlandev->nsd_rxq, skb);
@@ -227,7 +227,7 @@ void p80211netdev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
  *	    CONV_TO_ETHER_FAILED if conversion failed
  *	    CONV_TO_ETHER_SKIPPED if frame is ignored
  */
-static int p80211_convert_to_ether(wlandevice_t *wlandev, struct sk_buff *skb)
+static int p80211_convert_to_ether(struct wlandevice *wlandev, struct sk_buff *skb)
 {
 	struct p80211_hdr_a3 *hdr;
 
@@ -265,7 +265,7 @@ static int p80211_convert_to_ether(wlandevice_t *wlandev, struct sk_buff *skb)
  */
 static void p80211netdev_rx_bh(unsigned long arg)
 {
-	wlandevice_t *wlandev = (wlandevice_t *) arg;
+	struct wlandevice *wlandev = (struct wlandevice *) arg;
 	struct sk_buff *skb = NULL;
 	netdevice_t *dev = wlandev->netdev;
 
@@ -322,7 +322,7 @@ static int p80211knetdev_hard_start_xmit(struct sk_buff *skb,
 {
 	int result = 0;
 	int txresult = -1;
-	wlandevice_t *wlandev = netdev->ml_priv;
+	struct wlandevice *wlandev = netdev->ml_priv;
 	union p80211_hdr p80211_hdr;
 	struct p80211_metawep p80211_wep;
 
@@ -448,7 +448,7 @@ failed:
 ----------------------------------------------------------------*/
 static void p80211knetdev_set_multicast_list(netdevice_t *dev)
 {
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 
 	/* TODO:  real multicast support as well */
 
@@ -459,7 +459,7 @@ static void p80211knetdev_set_multicast_list(netdevice_t *dev)
 
 #ifdef SIOCETHTOOL
 
-static int p80211netdev_ethtool(wlandevice_t *wlandev, void __user *useraddr)
+static int p80211netdev_ethtool(struct wlandevice *wlandev, void __user *useraddr)
 {
 	u32 ethcmd;
 	struct ethtool_drvinfo info;
@@ -535,7 +535,7 @@ static int p80211knetdev_do_ioctl(netdevice_t *dev, struct ifreq *ifr, int cmd)
 {
 	int result = 0;
 	struct p80211ioctl_req *req = (struct p80211ioctl_req *) ifr;
-	wlandevice_t *wlandev = dev->ml_priv;
+	struct wlandevice *wlandev = dev->ml_priv;
 	u8 *msgbuf;
 
 	netdev_dbg(dev, "rx'd ioctl, cmd=%d, len=%d\n", cmd, req->len);
@@ -633,7 +633,7 @@ static int p80211knetdev_set_mac_address(netdevice_t *dev, void *addr)
 	dot11req.msgcode = DIDmsg_dot11req_mibset;
 	dot11req.msglen = sizeof(struct p80211msg_dot11req_mibset);
 	memcpy(dot11req.devname,
-	       ((wlandevice_t *) dev->ml_priv)->name, WLAN_DEVNAMELEN_MAX - 1);
+	       ((struct wlandevice *) dev->ml_priv)->name, WLAN_DEVNAMELEN_MAX - 1);
 
 	/* Set up the mibattribute argument */
 	mibattr->did = DIDmsg_dot11req_mibset_mibattribute;
@@ -717,7 +717,7 @@ static const struct net_device_ops p80211_netdev_ops = {
 *	compiled drivers, this function will be called in the
 *	context of the kernel startup code.
 ----------------------------------------------------------------*/
-int wlan_setup(wlandevice_t *wlandev, struct device *physdev)
+int wlan_setup(struct wlandevice *wlandev, struct device *physdev)
 {
 	int result = 0;
 	netdevice_t *netdev;
@@ -783,7 +783,7 @@ int wlan_setup(wlandevice_t *wlandev, struct device *physdev)
 *	compiled drivers, this function will be called in the
 *	context of the kernel startup code.
 ----------------------------------------------------------------*/
-void wlan_unsetup(wlandevice_t *wlandev)
+void wlan_unsetup(struct wlandevice *wlandev)
 {
 	struct wireless_dev *wdev;
 
@@ -817,7 +817,7 @@ void wlan_unsetup(wlandevice_t *wlandev)
 * Call Context:
 *	Can be either interrupt or not.
 ----------------------------------------------------------------*/
-int register_wlandev(wlandevice_t *wlandev)
+int register_wlandev(struct wlandevice *wlandev)
 {
 	return register_netdev(wlandev->netdev);
 }
@@ -839,7 +839,7 @@ int register_wlandev(wlandevice_t *wlandev)
 * Call Context:
 *	Can be either interrupt or not.
 ----------------------------------------------------------------*/
-int unregister_wlandev(wlandevice_t *wlandev)
+int unregister_wlandev(struct wlandevice *wlandev)
 {
 	struct sk_buff *skb;
 
@@ -882,7 +882,7 @@ int unregister_wlandev(wlandevice_t *wlandev)
 * Call context:
 *	Usually interrupt.
 ----------------------------------------------------------------*/
-void p80211netdev_hwremoved(wlandevice_t *wlandev)
+void p80211netdev_hwremoved(struct wlandevice *wlandev)
 {
 	wlandev->hwremoved = 1;
 	if (wlandev->state == WLAN_DEVICE_OPEN)
@@ -912,7 +912,7 @@ void p80211netdev_hwremoved(wlandevice_t *wlandev)
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static int p80211_rx_typedrop(wlandevice_t *wlandev, u16 fc)
+static int p80211_rx_typedrop(struct wlandevice *wlandev, u16 fc)
 {
 	u16 ftype;
 	u16 fstype;
@@ -1073,7 +1073,7 @@ static int p80211_rx_typedrop(wlandevice_t *wlandev, u16 fc)
 
 static void p80211knetdev_tx_timeout(netdevice_t *netdev)
 {
-	wlandevice_t *wlandev = netdev->ml_priv;
+	struct wlandevice *wlandev = netdev->ml_priv;
 
 	if (wlandev->tx_timeout) {
 		wlandev->tx_timeout(wlandev);
diff --git a/drivers/staging/wlan-ng/p80211netdev.h b/drivers/staging/wlan-ng/p80211netdev.h
index 820a0e2..138acdb 100644
--- a/drivers/staging/wlan-ng/p80211netdev.h
+++ b/drivers/staging/wlan-ng/p80211netdev.h
@@ -157,7 +157,7 @@ extern int wlan_watchdog;
 extern int wlan_wext_write;
 
 /* WLAN device type */
-typedef struct wlandevice {
+struct wlandevice {
 	void *priv;		/* private data for MSD */
 
 	/* Subsystem State */
@@ -222,19 +222,19 @@ typedef struct wlandevice {
 	u8 spy_number;
 	char spy_address[IW_MAX_SPY][ETH_ALEN];
 	struct iw_quality spy_stat[IW_MAX_SPY];
-} wlandevice_t;
+};
 
 /* WEP stuff */
-int wep_change_key(wlandevice_t *wlandev, int keynum, u8 *key, int keylen);
-int wep_decrypt(wlandevice_t *wlandev, u8 *buf, u32 len, int key_override,
+int wep_change_key(struct wlandevice *wlandev, int keynum, u8 *key, int keylen);
+int wep_decrypt(struct wlandevice *wlandev, u8 *buf, u32 len, int key_override,
 		u8 *iv, u8 *icv);
-int wep_encrypt(wlandevice_t *wlandev, u8 *buf, u8 *dst, u32 len, int keynum,
+int wep_encrypt(struct wlandevice *wlandev, u8 *buf, u8 *dst, u32 len, int keynum,
 		u8 *iv, u8 *icv);
 
-int wlan_setup(wlandevice_t *wlandev, struct device *physdev);
-void wlan_unsetup(wlandevice_t *wlandev);
-int register_wlandev(wlandevice_t *wlandev);
-int unregister_wlandev(wlandevice_t *wlandev);
-void p80211netdev_rx(wlandevice_t *wlandev, struct sk_buff *skb);
-void p80211netdev_hwremoved(wlandevice_t *wlandev);
+int wlan_setup(struct wlandevice *wlandev, struct device *physdev);
+void wlan_unsetup(struct wlandevice *wlandev);
+int register_wlandev(struct wlandevice *wlandev);
+int unregister_wlandev(struct wlandevice *wlandev);
+void p80211netdev_rx(struct wlandevice *wlandev, struct sk_buff *skb);
+void p80211netdev_hwremoved(struct wlandevice *wlandev);
 #endif
diff --git a/drivers/staging/wlan-ng/p80211req.c b/drivers/staging/wlan-ng/p80211req.c
index f755318..40627d5 100644
--- a/drivers/staging/wlan-ng/p80211req.c
+++ b/drivers/staging/wlan-ng/p80211req.c
@@ -72,8 +72,8 @@
 #include "p80211metastruct.h"
 #include "p80211req.h"
 
-static void p80211req_handlemsg(wlandevice_t *wlandev, struct p80211msg *msg);
-static void p80211req_mibset_mibget(wlandevice_t *wlandev,
+static void p80211req_handlemsg(struct wlandevice *wlandev, struct p80211msg *msg);
+static void p80211req_mibset_mibget(struct wlandevice *wlandev,
 				   struct p80211msg_dot11req_mibget *mib_msg,
 				   int isget);
 
@@ -108,7 +108,7 @@ static void p80211req_handle_action(struct wlandevice *wlandev, u32 *data,
 *	Potentially blocks the caller, so it's a good idea to
 *	not call this function from an interrupt context.
 ----------------------------------------------------------------*/
-int p80211req_dorequest(wlandevice_t *wlandev, u8 *msgbuf)
+int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
 {
 	struct p80211msg *msg = (struct p80211msg *) msgbuf;
 
@@ -164,7 +164,7 @@ int p80211req_dorequest(wlandevice_t *wlandev, u8 *msgbuf)
 * Call context:
 *	Process thread
 ----------------------------------------------------------------*/
-static void p80211req_handlemsg(wlandevice_t *wlandev, struct p80211msg *msg)
+static void p80211req_handlemsg(struct wlandevice *wlandev, struct p80211msg *msg)
 {
 	switch (msg->msgcode) {
 
@@ -191,7 +191,7 @@ static void p80211req_handlemsg(wlandevice_t *wlandev, struct p80211msg *msg)
 	}			/* switch msg->msgcode */
 }
 
-static void p80211req_mibset_mibget(wlandevice_t *wlandev,
+static void p80211req_mibset_mibget(struct wlandevice *wlandev,
 				   struct p80211msg_dot11req_mibget *mib_msg,
 				   int isget)
 {
diff --git a/drivers/staging/wlan-ng/p80211req.h b/drivers/staging/wlan-ng/p80211req.h
index a95a45a..8d3054c 100644
--- a/drivers/staging/wlan-ng/p80211req.h
+++ b/drivers/staging/wlan-ng/p80211req.h
@@ -48,6 +48,6 @@
 #ifndef _LINUX_P80211REQ_H
 #define _LINUX_P80211REQ_H
 
-int p80211req_dorequest(wlandevice_t *wlandev, u8 *msgbuf);
+int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf);
 
 #endif
diff --git a/drivers/staging/wlan-ng/p80211wep.c b/drivers/staging/wlan-ng/p80211wep.c
index 22c7970..23b1837 100644
--- a/drivers/staging/wlan-ng/p80211wep.c
+++ b/drivers/staging/wlan-ng/p80211wep.c
@@ -119,7 +119,7 @@ static const u32 wep_crc32_table[256] = {
 
 /* keylen in bytes! */
 
-int wep_change_key(wlandevice_t *wlandev, int keynum, u8 *key, int keylen)
+int wep_change_key(struct wlandevice *wlandev, int keynum, u8 *key, int keylen)
 {
 	if (keylen < 0)
 		return -1;
@@ -143,7 +143,7 @@ int wep_change_key(wlandevice_t *wlandev, int keynum, u8 *key, int keylen)
  * 4-byte IV at start of buffer, 4-byte ICV at end of buffer.
  * if successful, buf start is payload begin, length -= 8;
  */
-int wep_decrypt(wlandevice_t *wlandev, u8 *buf, u32 len, int key_override,
+int wep_decrypt(struct wlandevice *wlandev, u8 *buf, u32 len, int key_override,
 		u8 *iv, u8 *icv)
 {
 	u32 i, j, k, crc, keylen;
@@ -217,7 +217,7 @@ int wep_decrypt(wlandevice_t *wlandev, u8 *buf, u32 len, int key_override,
 }
 
 /* encrypts in-place. */
-int wep_encrypt(wlandevice_t *wlandev, u8 *buf, u8 *dst, u32 len, int keynum,
+int wep_encrypt(struct wlandevice *wlandev, u8 *buf, u8 *dst, u32 len, int keynum,
 		u8 *iv, u8 *icv)
 {
 	u32 i, j, k, crc, keylen;
diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 56bffd9..161637b 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -161,13 +161,13 @@ static hfa384x_caplevel_t priid;
 /* Local Function Declarations */
 
 static int prism2_fwapply(const struct ihex_binrec *rfptr,
-wlandevice_t *wlandev);
+struct wlandevice *wlandev);
 
 static int read_fwfile(const struct ihex_binrec *rfptr);
 
 static int mkimage(struct imgchunk *clist, unsigned int *ccnt);
 
-static int read_cardpda(struct pda *pda, wlandevice_t *wlandev);
+static int read_cardpda(struct pda *pda, struct wlandevice *wlandev);
 
 static int mkpdrlist(struct pda *pda);
 
@@ -177,7 +177,7 @@ static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
 static int crcimage(struct imgchunk *fchunk, unsigned int nfchunks,
 	     struct s3crcrec *s3crc, unsigned int ns3crc);
 
-static int writeimage(wlandevice_t *wlandev, struct imgchunk *fchunk,
+static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
 	       unsigned int nfchunks);
 static void free_chunks(struct imgchunk *fchunk, unsigned int *nfchunks);
 
@@ -201,7 +201,7 @@ static int validate_identity(void);
 *	0	- success
 *	~0	- failure
 ----------------------------------------------------------------*/
-static int prism2_fwtry(struct usb_device *udev, wlandevice_t *wlandev)
+static int prism2_fwtry(struct usb_device *udev, struct wlandevice *wlandev)
 {
 	const struct firmware *fw_entry = NULL;
 
@@ -239,7 +239,7 @@ static int prism2_fwtry(struct usb_device *udev, wlandevice_t *wlandev)
 *	~0	- failure
 ----------------------------------------------------------------*/
 static int prism2_fwapply(const struct ihex_binrec *rfptr,
-			  wlandevice_t *wlandev)
+			  struct wlandevice *wlandev)
 {
 	signed int result = 0;
 	struct p80211msg_dot11req_mibget getmsg;
@@ -766,7 +766,7 @@ static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
 *	0	- success
 *	~0	- failure (probably an errno)
 ----------------------------------------------------------------*/
-static int read_cardpda(struct pda *pda, wlandevice_t *wlandev)
+static int read_cardpda(struct pda *pda, struct wlandevice *wlandev)
 {
 	int result = 0;
 	struct p80211msg_p2req_readpda *msg;
@@ -982,7 +982,7 @@ static int read_fwfile(const struct ihex_binrec *record)
 *	0	success
 *	~0	failure
 ----------------------------------------------------------------*/
-static int writeimage(wlandevice_t *wlandev, struct imgchunk *fchunk,
+static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
 	       unsigned int nfchunks)
 {
 	int result = 0;
diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index d8ed9a0..73ea127 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -113,7 +113,7 @@
 *	process thread  (usually)
 *	interrupt
 ----------------------------------------------------------------*/
-int prism2mgmt_scan(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 {
 	int result = 0;
 	hfa384x_t *hw = wlandev->priv;
@@ -366,7 +366,7 @@ exit:
 *	process thread  (usually)
 *	interrupt
 ----------------------------------------------------------------*/
-int prism2mgmt_scan_results(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
 {
 	int result = 0;
 	struct p80211msg_dot11req_scan_results *req;
@@ -525,7 +525,7 @@ exit:
 *	process thread  (usually)
 *	interrupt
 ----------------------------------------------------------------*/
-int prism2mgmt_start(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 {
 	int result = 0;
 	hfa384x_t *hw = wlandev->priv;
@@ -708,7 +708,7 @@ done:
 * Call context:
 *	process thread  (usually)
 ----------------------------------------------------------------*/
-int prism2mgmt_readpda(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_readpda(struct wlandevice *wlandev, void *msgp)
 {
 	hfa384x_t *hw = wlandev->priv;
 	struct p80211msg_p2req_readpda *msg = msgp;
@@ -774,7 +774,7 @@ int prism2mgmt_readpda(wlandevice_t *wlandev, void *msgp)
 * Call context:
 *	process thread  (usually)
 ----------------------------------------------------------------*/
-int prism2mgmt_ramdl_state(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_ramdl_state(struct wlandevice *wlandev, void *msgp)
 {
 	hfa384x_t *hw = wlandev->priv;
 	struct p80211msg_p2req_ramdl_state *msg = msgp;
@@ -829,7 +829,7 @@ int prism2mgmt_ramdl_state(wlandevice_t *wlandev, void *msgp)
 * Call context:
 *	process thread  (usually)
 ----------------------------------------------------------------*/
-int prism2mgmt_ramdl_write(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_ramdl_write(struct wlandevice *wlandev, void *msgp)
 {
 	hfa384x_t *hw = wlandev->priv;
 	struct p80211msg_p2req_ramdl_write *msg = msgp;
@@ -890,7 +890,7 @@ int prism2mgmt_ramdl_write(wlandevice_t *wlandev, void *msgp)
 * Call context:
 *	process thread  (usually)
 ----------------------------------------------------------------*/
-int prism2mgmt_flashdl_state(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_flashdl_state(struct wlandevice *wlandev, void *msgp)
 {
 	int result = 0;
 	hfa384x_t *hw = wlandev->priv;
@@ -961,7 +961,7 @@ int prism2mgmt_flashdl_state(wlandevice_t *wlandev, void *msgp)
 * Call context:
 *	process thread  (usually)
 ----------------------------------------------------------------*/
-int prism2mgmt_flashdl_write(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_flashdl_write(struct wlandevice *wlandev, void *msgp)
 {
 	hfa384x_t *hw = wlandev->priv;
 	struct p80211msg_p2req_flashdl_write *msg = msgp;
@@ -1021,7 +1021,7 @@ int prism2mgmt_flashdl_write(wlandevice_t *wlandev, void *msgp)
 *	process thread  (usually)
 *	interrupt
 ----------------------------------------------------------------*/
-int prism2mgmt_autojoin(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_autojoin(struct wlandevice *wlandev, void *msgp)
 {
 	hfa384x_t *hw = wlandev->priv;
 	int result = 0;
@@ -1092,7 +1092,7 @@ int prism2mgmt_autojoin(wlandevice_t *wlandev, void *msgp)
 *	process thread  (usually)
 *	interrupt
 ----------------------------------------------------------------*/
-int prism2mgmt_wlansniff(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 {
 	int result = 0;
 	struct p80211msg_lnxreq_wlansniff *msg = msgp;
diff --git a/drivers/staging/wlan-ng/prism2mgmt.h b/drivers/staging/wlan-ng/prism2mgmt.h
index e647203..7ab19e9 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.h
+++ b/drivers/staging/wlan-ng/prism2mgmt.h
@@ -63,24 +63,24 @@
 extern int prism2_reset_holdtime;
 extern int prism2_reset_settletime;
 
-u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate);
+u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate);
 
-void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf);
-void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status);
-void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status);
-void prism2sta_ev_alloc(wlandevice_t *wlandev);
+void prism2sta_ev_info(struct wlandevice *wlandev, hfa384x_InfFrame_t *inf);
+void prism2sta_ev_txexc(struct wlandevice *wlandev, u16 status);
+void prism2sta_ev_tx(struct wlandevice *wlandev, u16 status);
+void prism2sta_ev_alloc(struct wlandevice *wlandev);
 
-int prism2mgmt_mibset_mibget(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_scan(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_scan_results(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_start(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_wlansniff(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_readpda(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_ramdl_state(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_ramdl_write(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_flashdl_state(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_flashdl_write(wlandevice_t *wlandev, void *msgp);
-int prism2mgmt_autojoin(wlandevice_t *wlandev, void *msgp);
+int prism2mgmt_mibset_mibget(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_start(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_readpda(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_ramdl_state(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_ramdl_write(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_flashdl_state(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_flashdl_write(struct wlandevice *wlandev, void *msgp);
+int prism2mgmt_autojoin(struct wlandevice *wlandev, void *msgp);
 
 /*---------------------------------------------------------------
 * conversion functions going between wlan message data types and
@@ -108,8 +108,8 @@ void prism2sta_commsqual_defer(struct work_struct *data);
 void prism2sta_commsqual_timer(unsigned long data);
 
 /* Interface callback functions, passing data back up to the cfg80211 layer */
-void prism2_connect_result(wlandevice_t *wlandev, u8 failed);
-void prism2_disconnected(wlandevice_t *wlandev);
-void prism2_roamed(wlandevice_t *wlandev);
+void prism2_connect_result(struct wlandevice *wlandev, u8 failed);
+void prism2_disconnected(struct wlandevice *wlandev);
+void prism2_roamed(struct wlandevice *wlandev);
 
 #endif
diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 524271f..b02a3b1 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -87,61 +87,61 @@ struct mibrec {
 	u16 parm3;
 	int (*func)(struct mibrec *mib,
 		     int isget,
-		     wlandevice_t *wlandev,
+		     struct wlandevice *wlandev,
 		     hfa384x_t *hw,
 		     struct p80211msg_dot11req_mibset *msg, void *data);
 };
 
 static int prism2mib_bytearea2pstr(struct mibrec *mib,
 				   int isget,
-				   wlandevice_t *wlandev,
+				   struct wlandevice *wlandev,
 				   hfa384x_t *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data);
 
 static int prism2mib_uint32(struct mibrec *mib,
 			    int isget,
-			    wlandevice_t *wlandev,
+			    struct wlandevice *wlandev,
 			    hfa384x_t *hw,
 			    struct p80211msg_dot11req_mibset *msg, void *data);
 
 static int prism2mib_flag(struct mibrec *mib,
 			  int isget,
-			  wlandevice_t *wlandev,
+			  struct wlandevice *wlandev,
 			  hfa384x_t *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data);
 
 static int prism2mib_wepdefaultkey(struct mibrec *mib,
 				   int isget,
-				   wlandevice_t *wlandev,
+				   struct wlandevice *wlandev,
 				   hfa384x_t *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data);
 
 static int prism2mib_privacyinvoked(struct mibrec *mib,
 				    int isget,
-				    wlandevice_t *wlandev,
+				    struct wlandevice *wlandev,
 				    hfa384x_t *hw,
 				    struct p80211msg_dot11req_mibset *msg,
 				    void *data);
 
 static int prism2mib_excludeunencrypted(struct mibrec *mib,
 					int isget,
-					wlandevice_t *wlandev,
+					struct wlandevice *wlandev,
 					hfa384x_t *hw,
 					struct p80211msg_dot11req_mibset *msg,
 					void *data);
 
 static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 					    int isget,
-					    wlandevice_t *wlandev,
+					    struct wlandevice *wlandev,
 					    hfa384x_t *hw,
 					    struct p80211msg_dot11req_mibset *msg,
 					    void *data);
 
 static int prism2mib_priv(struct mibrec *mib,
 			  int isget,
-			  wlandevice_t *wlandev,
+			  struct wlandevice *wlandev,
 			  hfa384x_t *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data);
 
@@ -257,7 +257,7 @@ static struct mibrec mibtab[] = {
  *	interrupt
  */
 
-int prism2mgmt_mibset_mibget(wlandevice_t *wlandev, void *msgp)
+int prism2mgmt_mibset_mibget(struct wlandevice *wlandev, void *msgp)
 {
 	hfa384x_t *hw = wlandev->priv;
 	int result, isget;
@@ -373,7 +373,7 @@ done:
 
 static int prism2mib_bytearea2pstr(struct mibrec *mib,
 				   int isget,
-				   wlandevice_t *wlandev,
+				   struct wlandevice *wlandev,
 				   hfa384x_t *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data)
@@ -423,7 +423,7 @@ static int prism2mib_bytearea2pstr(struct mibrec *mib,
 
 static int prism2mib_uint32(struct mibrec *mib,
 			    int isget,
-			    wlandevice_t *wlandev,
+			    struct wlandevice *wlandev,
 			    hfa384x_t *hw,
 			    struct p80211msg_dot11req_mibset *msg, void *data)
 {
@@ -470,7 +470,7 @@ static int prism2mib_uint32(struct mibrec *mib,
 
 static int prism2mib_flag(struct mibrec *mib,
 			  int isget,
-			  wlandevice_t *wlandev,
+			  struct wlandevice *wlandev,
 			  hfa384x_t *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data)
 {
@@ -527,7 +527,7 @@ static int prism2mib_flag(struct mibrec *mib,
 
 static int prism2mib_wepdefaultkey(struct mibrec *mib,
 				   int isget,
-				   wlandevice_t *wlandev,
+				   struct wlandevice *wlandev,
 				   hfa384x_t *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data)
@@ -577,7 +577,7 @@ static int prism2mib_wepdefaultkey(struct mibrec *mib,
 
 static int prism2mib_privacyinvoked(struct mibrec *mib,
 				    int isget,
-				    wlandevice_t *wlandev,
+				    struct wlandevice *wlandev,
 				    hfa384x_t *hw,
 				    struct p80211msg_dot11req_mibset *msg,
 				    void *data)
@@ -619,7 +619,7 @@ static int prism2mib_privacyinvoked(struct mibrec *mib,
 
 static int prism2mib_excludeunencrypted(struct mibrec *mib,
 					int isget,
-					wlandevice_t *wlandev,
+					struct wlandevice *wlandev,
 					hfa384x_t *hw,
 					struct p80211msg_dot11req_mibset *msg,
 					void *data)
@@ -655,7 +655,7 @@ static int prism2mib_excludeunencrypted(struct mibrec *mib,
 
 static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 					    int isget,
-					    wlandevice_t *wlandev,
+					    struct wlandevice *wlandev,
 					    hfa384x_t *hw,
 					    struct p80211msg_dot11req_mibset *msg,
 					    void *data)
@@ -701,7 +701,7 @@ static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 
 static int prism2mib_priv(struct mibrec *mib,
 			  int isget,
-			  wlandevice_t *wlandev,
+			  struct wlandevice *wlandev,
 			  hfa384x_t *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data)
 {
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 64f9072..2deb263 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -81,7 +81,7 @@
 #include "prism2mgmt.h"
 
 static char *dev_info = "prism2_usb";
-static wlandevice_t *create_wlan(void);
+static struct wlandevice *create_wlan(void);
 
 int prism2_reset_holdtime = 30;	/* Reset hold time in ms */
 int prism2_reset_settletime = 100;	/* Reset settle time in ms */
@@ -98,36 +98,36 @@ MODULE_PARM_DESC(prism2_reset_settletime, "reset settle time in ms");
 
 MODULE_LICENSE("Dual MPL/GPL");
 
-static int prism2sta_open(wlandevice_t *wlandev);
-static int prism2sta_close(wlandevice_t *wlandev);
-static void prism2sta_reset(wlandevice_t *wlandev);
-static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
+static int prism2sta_open(struct wlandevice *wlandev);
+static int prism2sta_close(struct wlandevice *wlandev);
+static void prism2sta_reset(struct wlandevice *wlandev);
+static int prism2sta_txframe(struct wlandevice *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep);
-static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg);
-static int prism2sta_getcardinfo(wlandevice_t *wlandev);
-static int prism2sta_globalsetup(wlandevice_t *wlandev);
-static int prism2sta_setmulticast(wlandevice_t *wlandev, netdevice_t *dev);
+static int prism2sta_mlmerequest(struct wlandevice *wlandev, struct p80211msg *msg);
+static int prism2sta_getcardinfo(struct wlandevice *wlandev);
+static int prism2sta_globalsetup(struct wlandevice *wlandev);
+static int prism2sta_setmulticast(struct wlandevice *wlandev, netdevice_t *dev);
 
-static void prism2sta_inf_handover(wlandevice_t *wlandev,
+static void prism2sta_inf_handover(struct wlandevice *wlandev,
 				   hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_tallies(wlandevice_t *wlandev,
+static void prism2sta_inf_tallies(struct wlandevice *wlandev,
 				  hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
+static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
 					  hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
+static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 				      hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
+static void prism2sta_inf_chinforesults(struct wlandevice *wlandev,
 					hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
+static void prism2sta_inf_linkstatus(struct wlandevice *wlandev,
 				     hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
+static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
 				      hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_authreq(wlandevice_t *wlandev,
+static void prism2sta_inf_authreq(struct wlandevice *wlandev,
 				  hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
+static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 					hfa384x_InfFrame_t *inf);
-static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
+static void prism2sta_inf_psusercnt(struct wlandevice *wlandev,
 				    hfa384x_InfFrame_t *inf);
 
 /*
@@ -151,7 +151,7 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
  * Call context:
  *	process thread
  */
-static int prism2sta_open(wlandevice_t *wlandev)
+static int prism2sta_open(struct wlandevice *wlandev)
 {
 	/* We don't currently have to do anything else.
 	 * The setup of the MAC should be subsequently completed via
@@ -185,7 +185,7 @@ static int prism2sta_open(wlandevice_t *wlandev)
  * Call context:
  *	process thread
  */
-static int prism2sta_close(wlandevice_t *wlandev)
+static int prism2sta_close(struct wlandevice *wlandev)
 {
 	/* We don't currently have to do anything else.
 	 * Higher layers know we're not ready from dev->start==0 and
@@ -213,7 +213,7 @@ static int prism2sta_close(wlandevice_t *wlandev)
  * Call context:
  *	process thread
  */
-static void prism2sta_reset(wlandevice_t *wlandev)
+static void prism2sta_reset(struct wlandevice *wlandev)
 {
 }
 
@@ -238,7 +238,7 @@ static void prism2sta_reset(wlandevice_t *wlandev)
  * Call context:
  *	process thread
  */
-static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
+static int prism2sta_txframe(struct wlandevice *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep)
 {
@@ -277,7 +277,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
  * Call context:
  *	process thread
  */
-static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
+static int prism2sta_mlmerequest(struct wlandevice *wlandev, struct p80211msg *msg)
 {
 	hfa384x_t *hw = wlandev->priv;
 
@@ -407,7 +407,7 @@ static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
  *	process thread  (usually)
  *	interrupt
  */
-u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
+u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
 {
 	hfa384x_t *hw = wlandev->priv;
 	u32 result;
@@ -580,7 +580,7 @@ u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
  * Call context:
  *	Either.
  */
-static int prism2sta_getcardinfo(wlandevice_t *wlandev)
+static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 {
 	int result = 0;
 	hfa384x_t *hw = wlandev->priv;
@@ -909,7 +909,7 @@ done:
  * Call context:
  *	process thread
  */
-static int prism2sta_globalsetup(wlandevice_t *wlandev)
+static int prism2sta_globalsetup(struct wlandevice *wlandev)
 {
 	hfa384x_t *hw = wlandev->priv;
 
@@ -918,7 +918,7 @@ static int prism2sta_globalsetup(wlandevice_t *wlandev)
 					WLAN_DATA_MAXLEN);
 }
 
-static int prism2sta_setmulticast(wlandevice_t *wlandev, netdevice_t *dev)
+static int prism2sta_setmulticast(struct wlandevice *wlandev, netdevice_t *dev)
 {
 	int result = 0;
 	hfa384x_t *hw = wlandev->priv;
@@ -959,7 +959,7 @@ exit:
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_handover(wlandevice_t *wlandev,
+static void prism2sta_inf_handover(struct wlandevice *wlandev,
 				   hfa384x_InfFrame_t *inf)
 {
 	pr_debug("received infoframe:HANDOVER (unhandled)\n");
@@ -982,7 +982,7 @@ static void prism2sta_inf_handover(wlandevice_t *wlandev,
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_tallies(wlandevice_t *wlandev,
+static void prism2sta_inf_tallies(struct wlandevice *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1028,7 +1028,7 @@ static void prism2sta_inf_tallies(wlandevice_t *wlandev,
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
+static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
 
@@ -1084,7 +1084,7 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
+static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
 					  hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1125,7 +1125,7 @@ static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
+static void prism2sta_inf_chinforesults(struct wlandevice *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1171,7 +1171,7 @@ static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
 void prism2sta_processing_defer(struct work_struct *data)
 {
 	hfa384x_t *hw = container_of(data, struct hfa384x, link_bh);
-	wlandevice_t *wlandev = hw->wlandev;
+	struct wlandevice *wlandev = hw->wlandev;
 	hfa384x_bytestr32_t ssid;
 	int result;
 
@@ -1438,7 +1438,7 @@ void prism2sta_processing_defer(struct work_struct *data)
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
+static void prism2sta_inf_linkstatus(struct wlandevice *wlandev,
 				     hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1466,7 +1466,7 @@ static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
+static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1527,7 +1527,7 @@ static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
  *	interrupt
  *
  */
-static void prism2sta_inf_authreq(wlandevice_t *wlandev,
+static void prism2sta_inf_authreq(struct wlandevice *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1542,7 +1542,7 @@ static void prism2sta_inf_authreq(wlandevice_t *wlandev,
 	}
 }
 
-static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
+static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1716,7 +1716,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
  * Call context:
  *	interrupt
  */
-static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
+static void prism2sta_inf_psusercnt(struct wlandevice *wlandev,
 				    hfa384x_InfFrame_t *inf)
 {
 	hfa384x_t *hw = wlandev->priv;
@@ -1741,7 +1741,7 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
  * Call context:
  *	interrupt
  */
-void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
+void prism2sta_ev_info(struct wlandevice *wlandev, hfa384x_InfFrame_t *inf)
 {
 	inf->infotype = le16_to_cpu(inf->infotype);
 	/* Dispatch */
@@ -1808,7 +1808,7 @@ void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
  * Call context:
  *	interrupt
  */
-void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
+void prism2sta_ev_txexc(struct wlandevice *wlandev, u16 status)
 {
 	pr_debug("TxExc status=0x%x.\n", status);
 }
@@ -1829,7 +1829,7 @@ void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
  * Call context:
  *	interrupt
  */
-void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
+void prism2sta_ev_tx(struct wlandevice *wlandev, u16 status)
 {
 	pr_debug("Tx Complete, status=0x%04x\n", status);
 	/* update linux network stats */
@@ -1852,7 +1852,7 @@ void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
  * Call context:
  *	interrupt
  */
-void prism2sta_ev_alloc(wlandevice_t *wlandev)
+void prism2sta_ev_alloc(struct wlandevice *wlandev)
 {
 	netif_wake_queue(wlandev->netdev);
 }
@@ -1860,14 +1860,14 @@ void prism2sta_ev_alloc(wlandevice_t *wlandev)
 /*
 * create_wlan
 *
-* Called at module init time.  This creates the wlandevice_t structure
+* Called at module init time.  This creates the struct wlandevice structure
 * and initializes it with relevant bits.
 *
 * Arguments:
 *	none
 *
 * Returns:
-*	the created wlandevice_t structure.
+*	the created struct wlandevice structure.
 *
 * Side effects:
 *	also allocates the priv/hw structures.
@@ -1876,13 +1876,13 @@ void prism2sta_ev_alloc(wlandevice_t *wlandev)
 *	process thread
 *
 */
-static wlandevice_t *create_wlan(void)
+static struct wlandevice *create_wlan(void)
 {
-	wlandevice_t *wlandev = NULL;
+	struct wlandevice *wlandev = NULL;
 	hfa384x_t *hw = NULL;
 
 	/* Alloc our structures */
-	wlandev = kzalloc(sizeof(wlandevice_t), GFP_KERNEL);
+	wlandev = kzalloc(sizeof(struct wlandevice), GFP_KERNEL);
 	hw = kzalloc(sizeof(hfa384x_t), GFP_KERNEL);
 
 	if (!wlandev || !hw) {
@@ -1914,7 +1914,7 @@ static wlandevice_t *create_wlan(void)
 void prism2sta_commsqual_defer(struct work_struct *data)
 {
 	hfa384x_t *hw = container_of(data, struct hfa384x, commsqual_bh);
-	wlandevice_t *wlandev = hw->wlandev;
+	struct wlandevice *wlandev = hw->wlandev;
 	hfa384x_bytestr32_t ssid;
 	struct p80211msg_dot11req_mibget msg;
 	p80211item_uint32_t *mibitem = (p80211item_uint32_t *)
diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index 0463ec1..3561487 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -61,7 +61,7 @@ static int prism2sta_probe_usb(struct usb_interface *interface,
 {
 	struct usb_device *dev;
 
-	wlandevice_t *wlandev = NULL;
+	struct wlandevice *wlandev = NULL;
 	hfa384x_t *hw = NULL;
 	int result = 0;
 
@@ -134,9 +134,9 @@ done:
 
 static void prism2sta_disconnect_usb(struct usb_interface *interface)
 {
-	wlandevice_t *wlandev;
+	struct wlandevice *wlandev;
 
-	wlandev = (wlandevice_t *)usb_get_intfdata(interface);
+	wlandev = (struct wlandevice *)usb_get_intfdata(interface);
 	if (wlandev) {
 		LIST_HEAD(cleanlist);
 		hfa384x_usbctlx_t *ctlx, *temp;
@@ -219,9 +219,9 @@ static int prism2sta_suspend(struct usb_interface *interface,
 			     pm_message_t message)
 {
 	hfa384x_t *hw = NULL;
-	wlandevice_t *wlandev;
+	struct wlandevice *wlandev;
 
-	wlandev = (wlandevice_t *)usb_get_intfdata(interface);
+	wlandev = (struct wlandevice *)usb_get_intfdata(interface);
 	if (!wlandev)
 		return -ENODEV;
 
@@ -242,9 +242,9 @@ static int prism2sta_resume(struct usb_interface *interface)
 {
 	int result = 0;
 	hfa384x_t *hw = NULL;
-	wlandevice_t *wlandev;
+	struct wlandevice *wlandev;
 
-	wlandev = (wlandevice_t *)usb_get_intfdata(interface);
+	wlandev = (struct wlandevice *)usb_get_intfdata(interface);
 	if (!wlandev)
 		return -ENODEV;
 
-- 
2.7.4


