X-GM-THRID: 6208958539899076608
X-Received: by 10.112.63.165 with SMTP id h5mr5460459lbs.18.1445635813659;
        Fri, 23 Oct 2015 14:30:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.77 with SMTP id l74ls494195lfi.20.gmail; Fri, 23 Oct
 2015 14:30:12 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr5355092lbb.10.1445635812913;
        Fri, 23 Oct 2015 14:30:12 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id em5si159878wib.2.2015.10.23.14.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 14:30:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ll6so47397149wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 14:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dY6Wu1EApaKtVli77nxsiO4ZqqocOgeAFNp/f/O3axU=;
        b=bR7ucedzqw20NfSm0Wkgz4axHDBGHvnfJQldMsQVcPz8u4qVWi0JQzZcJDpFn5F0H2
         mE3rPtJ8OHgANv93DlQ9v9lqSCknIRgr98i5mlYo54aEfg7t6OveZBuXdAD98T6oJxsi
         /TrTBxqhCkYIOj545ucUvbHE49oxSw9lGgwIaIxoNpZugnqoemZxxkxPbcgwCqs/MuS4
         OLaA1Z6HuR7c81C9c8K9kEmW7GS9S2WS8laqLFdmkjZOErYb81iLNFamWk844/v3Ynao
         OXtviatMurLrKUu4cn8JsfS0JLRqJZ8cTwkhuj9eVulTLpMJXp0eCeylYLgKCurAZzLl
         5f8A==
X-Received: by 10.194.71.164 with SMTP id w4mr6653535wju.19.1445635812607;
        Fri, 23 Oct 2015 14:30:12 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id hk5sm24656669wjb.6.2015.10.23.14.30.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 14:30:12 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: wlan-ng: Do not use multiple blank lines.
Date: Sat, 24 Oct 2015 00:30:03 +0300
Message-Id: <1445635803-18177-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 342e2b3..8c1e3f0 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -2,7 +2,6 @@
 #include "hfa384x.h"
 #include "prism2mgmt.h"
 
-
 /* Prism2 channel/frequency/bitrate declarations */
 static const struct ieee80211_channel prism2_channels[] = {
 	{ .center_freq = 2412 },
@@ -34,7 +33,6 @@ static const u32 prism2_cipher_suites[PRISM2_NUM_CIPHER_SUITES] = {
 	WLAN_CIPHER_SUITE_WEP104
 };
 
-
 /* prism2 device private data */
 struct prism2_wiphy_private {
 	wlandevice_t *wlandev;
@@ -48,7 +46,6 @@ struct prism2_wiphy_private {
 
 static const void * const prism2_wiphy_privid = &prism2_wiphy_privid;
 
-
 /* Helper Functions */
 static int prism2_result2err(int prism2_result)
 {
@@ -100,7 +97,6 @@ static int prism2_domibset_pstr32(wlandevice_t *wlandev,
 	return p80211req_dorequest(wlandev, (u8 *) &msg);
 }
 
-
 /* The interface functions, called by the cfg80211 layer */
 static int prism2_change_virtual_intf(struct wiphy *wiphy,
 				      struct net_device *dev,
@@ -298,7 +294,6 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
 	return err;
 }
 
-
 static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 			      const u8 *mac, struct station_info *sinfo)
 {
@@ -322,7 +317,6 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 
 	result = wlandev->mlmerequest(wlandev, (struct p80211msg *) &quality);
 
-
 	if (result == 0) {
 		sinfo->txrate.legacy = quality.txrate.data;
 		sinfo->filled |= BIT(NL80211_STA_INFO_TX_BITRATE);
@@ -623,7 +617,6 @@ static int prism2_disconnect(struct wiphy *wiphy, struct net_device *dev,
 	int result;
 	int err = 0;
 
-
 	/* Do a join, with a bogus ssid. Thats the only way I can think of */
 	msg_join.msgcode = DIDmsg_lnxreq_autojoin;
 
@@ -638,7 +631,6 @@ static int prism2_disconnect(struct wiphy *wiphy, struct net_device *dev,
 	return err;
 }
 
-
 static int prism2_join_ibss(struct wiphy *wiphy, struct net_device *dev,
 			    struct cfg80211_ibss_params *params)
 {
@@ -650,7 +642,6 @@ static int prism2_leave_ibss(struct wiphy *wiphy, struct net_device *dev)
 	return -EOPNOTSUPP;
 }
 
-
 static int prism2_set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 			       enum nl80211_tx_power_setting type, int mbm)
 {
@@ -706,9 +697,6 @@ exit:
 	return err;
 }
 
-
-
-
 /* Interface callback functions, passing data back up to the cfg80211 layer */
 void prism2_connect_result(wlandevice_t *wlandev, u8 failed)
 {
@@ -731,7 +719,6 @@ void prism2_roamed(wlandevice_t *wlandev)
 		NULL, 0, NULL, 0, GFP_KERNEL);
 }
 
-
 /* Structures for declaring wiphy interface */
 static const struct cfg80211_ops prism2_usb_cfg_ops = {
 	.change_virtual_intf = prism2_change_virtual_intf,
@@ -750,7 +737,6 @@ static const struct cfg80211_ops prism2_usb_cfg_ops = {
 	.get_tx_power = prism2_get_tx_power,
 };
 
-
 /* Functions to create/free wiphy interface */
 static struct wiphy *wlan_create_wiphy(struct device *dev, wlandevice_t *wlandev)
 {
@@ -788,7 +774,6 @@ static struct wiphy *wlan_create_wiphy(struct device *dev, wlandevice_t *wlandev
 	return wiphy;
 }
 
-
 static void wlan_free_wiphy(struct wiphy *wiphy)
 {
 	wiphy_unregister(wiphy);
-- 
1.9.1


