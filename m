X-GM-THRID: 6477576827810349056
X-Received: by 10.55.161.216 with SMTP id k207mr9840612qke.12.1508204904875;
        Mon, 16 Oct 2017 18:48:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.197.199 with SMTP id k68ls34877qkl.8.gmail; Mon, 16 Oct
 2017 18:48:24 -0700 (PDT)
X-Received: by 10.200.46.133 with SMTP id h5mr9528856qta.40.1508204904291;
        Mon, 16 Oct 2017 18:48:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508204904; cv=none;
        d=google.com; s=arc-20160816;
        b=oNoLMe3iWkCvvfQFpMqpjYQtfR+6eTGpdD+prJK/OYU2aROpoQUJWOTG+PunoSW32v
         y0lW++3PzqDneV38Fpdnt21iJfj9o3CKEnw//ldoKdGAoioHt+GZqnM8tmZN40CsrFgC
         wXveNzEysXMw+EZcY3tugWyFzVz/szSevY4bEpD4LRdCP3atqK51QHYkXTa6zmaJdEXS
         TfjIIOFGWJ80KGOGVbYLdL4XZSsRB8ah2tmrzKyLxu+DAyDKfP6q8qPox10A0vmhcXmK
         TfuHgvBRJVlQmUu5a2+TI1NuGNRL4xfziSyOwU3brV48Kudj5lxOo5zH6Htb4cZuQBXF
         XAug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:dkim-signature:arc-authentication-results;
        bh=xg+4gG/UdX26qUFgVV8TLi5VW3pUAExxv8/KUqx6j7A=;
        b=PfsdUXBVVmhVW8cC+S5TyF7D2P6X06GYhNvJCNvDvyEvLj7/YJSY/rRUTW2OK+4Qnh
         lTf8RacJXXgGt4uarK42MKVoj9hzFZaOqbtkcGBHiG7t+WicZgtMsRWXx/pmsLoKkLQs
         gbCdkToUv8OgVpbxSt1ayLmzLYC+sDk3Bo6sBMDSQmGpI4ct0+sRbcWypwwAbpm0NE2t
         BSjkfl0xOf6GuIu7xVH6RaVB/7AEcEHCBlrxLBqmzYsFZSJqp/MDQXQUylNdlPrrM21w
         msT2ft8lLO+DhfZBasK5tKK2t5ronoX6bWi0e2VUQrcQoA++dLFIwKpcomUA/CRIj9+k
         Wugg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=yl0Tvd4K;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id x10si451548qkl.5.2017.10.16.18.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 18:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=yl0Tvd4K;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x241.google.com with SMTP id u32so126711uau.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 18:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=xg+4gG/UdX26qUFgVV8TLi5VW3pUAExxv8/KUqx6j7A=;
        b=yl0Tvd4KBpQq4f6XaF05lb2s04NeDapTYSVaSMmoyO1bk6QVHWPjhFbfwIAsLztDmm
         39BYgaySQh1K+Wly0qBl2AQPDtpGJs+ZMqviuyI2P5JV7PZqlvGx9rvfNY7NGeHJJYte
         st8936VNke/YC6CxccQUo6RqFQskDFFreAFQcWBhefri1SQ3yuR24GT8AdsC5FSrS2CA
         zQMJHgi82yTn/YrMBeQkC46tlpFznipsXo0ngbLJpuLRDgLH3+sm0NCtIbYPwYgrewtS
         UOrQMYJ/dV00JgrLModOcct9kKS9uv8Br9/0W02BKTWapEUSGKqVOKpaM3vA179qepB7
         ofXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xg+4gG/UdX26qUFgVV8TLi5VW3pUAExxv8/KUqx6j7A=;
        b=lbHrEih/SYdyE9Z77ZTRXZO8NZdjQwu0JZgWmEwP3ssqrMQekpnuQMy5KvEsBvta5l
         FvYJrNMjJ6WZhVjRPjx/hHDx+x4Zsy6NYEjRFKoZN91TfEEXib+USjPOWP3O6Euny2ua
         U5xe75I5T1rJVMiHg52gdZmVZ99ERhplqNpCKqXoXF4EM07G4nqYH1MXFt80TxQB8LWX
         2YLC1zlb+SFy7PjRQs7FivPvWUjg3ixyfJpOw36dXkF/6FJNAofQjDARwyHWTCUTJ1Jq
         Ys9OBceBrsoS76tt/Kn+jKWgPd6b2ZCOWhQeyb374yZENzXhj5d+RJsh5oUXKvp0w3+X
         gi3Q==
X-Gm-Message-State: AMCzsaXeq7B1Y5giBvvCTOlvIscOKRqO1xaSGCSUt1U7ZPKhW+zPJLGW
	avlRnWXJWoG3vVc7q8a2fa5GrJZp
X-Google-Smtp-Source: ABhQp+RWY301GPxz90lkylNP3aAFR6m9W8kY7NO4BBcpgay2LIZF8BPO1WWTaYfwwJuIGjoIG3zdbw==
X-Received: by 10.176.70.210 with SMTP id t18mr8808238uab.19.1508204903688;
        Mon, 16 Oct 2017 18:48:23 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id n203sm1926284vke.48.2017.10.16.18.48.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 18:48:23 -0700 (PDT)
Date: Mon, 16 Oct 2017 21:48:21 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Julia.Lawall@lip6.fr, pablo@netfilter.org
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171017014821.GA3282@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171016182614.GA3341@ubuntu-server-1604>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parentheses to comply with preferred coding style for
the linux kernel and avoid the following checkpatch's message:
'CHECK: Unnecessary parentheses around'

Credits to checkpatch.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
Changes in v2:
	* I rewrote the log message to improve the style taking in consideration Julia's suggestions.
	* I merged in this patch similars changes that initially were in theirs own patch. I will reply that other patch email thread, saying to discard it, to avoid confussion.

 drivers/staging/wlan-ng/cfg80211.c     | 10 +++++-----
 drivers/staging/wlan-ng/hfa384x_usb.c  | 18 +++++++++---------
 drivers/staging/wlan-ng/p80211conv.c   |  6 +++---
 drivers/staging/wlan-ng/p80211netdev.c |  4 ++--
 drivers/staging/wlan-ng/p80211req.c    |  2 +-
 drivers/staging/wlan-ng/prism2fw.c     | 23 +++++++++++------------
 drivers/staging/wlan-ng/prism2mgmt.c   | 29 ++++++++++++++---------------
 drivers/staging/wlan-ng/prism2sta.c    |  4 ++--
 8 files changed, 47 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 178f6f5..03279aa 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 
 	memset(sinfo, 0, sizeof(*sinfo));
 
-	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
+	if (!wlandev || wlandev->msdstate != WLAN_MSD_RUNNING)
 		return -EOPNOTSUPP;
 
 	/* build request message */
@@ -367,8 +367,8 @@ static int prism2_scan(struct wiphy *wiphy,
 		msg2.bssindex.data = i;
 
 		result = p80211req_dorequest(wlandev, (u8 *)&msg2);
-		if ((result != 0) ||
-		    (msg2.resultcode.data != P80211ENUM_resultcode_success)) {
+		if (result != 0 ||
+		    msg2.resultcode.data != P80211ENUM_resultcode_success) {
 			break;
 		}
 
@@ -475,8 +475,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 	}
 
 	/* Set the authorization */
-	if ((sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM) ||
-	    ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && !is_wep))
+	if (sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM ||
+	    sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC && !is_wep)
 		msg_join.authtype.data = P80211ENUM_authalg_opensystem;
 	else if ((sme->auth_type == NL80211_AUTHTYPE_SHARED_KEY) ||
 		 ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && is_wep))
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index d1e8218..b5fdfd8 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1781,9 +1781,9 @@ int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport)
 {
 	int result = 0;
 
-	if ((!hw->isap && macport != 0) ||
-	    (hw->isap && !(macport <= HFA384x_PORTID_MAX)) ||
-	    (hw->port_enabled[macport])) {
+	if (!hw->isap && macport != 0 ||
+	    hw->isap && !(macport <= HFA384x_PORTID_MAX) ||
+	    hw->port_enabled[macport]) {
 		result = -EINVAL;
 	} else {
 		result = hfa384x_cmd_enable(hw, macport);
@@ -2465,7 +2465,7 @@ int hfa384x_drvr_start(struct hfa384x *hw)
 		netdev_err(hw->wlandev->netdev, "Cannot get bulk in endpoint status.\n");
 		goto done;
 	}
-	if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_in))
+	if (status == 1 && usb_clear_halt(hw->usb, hw->endp_in))
 		netdev_err(hw->wlandev->netdev, "Failed to reset bulk in endpoint.\n");
 
 	result =
@@ -2474,7 +2474,7 @@ int hfa384x_drvr_start(struct hfa384x *hw)
 		netdev_err(hw->wlandev->netdev, "Cannot get bulk out endpoint status.\n");
 		goto done;
 	}
-	if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_out))
+	if (status == 1 && usb_clear_halt(hw->usb, hw->endp_out))
 		netdev_err(hw->wlandev->netdev, "Failed to reset bulk out endpoint.\n");
 
 	/* Synchronous unlink, in case we're trying to restart the driver */
@@ -3054,7 +3054,7 @@ static void hfa384x_usbin_callback(struct urb *urb)
 		goto exit;
 
 	skb = hw->rx_urb_skb;
-	if (!skb || (skb->data != urb->transfer_buffer)) {
+	if (!skb || skb->data != urb->transfer_buffer) {
 		WARN_ON(1);
 		return;
 	}
@@ -3501,8 +3501,8 @@ static void hfa384x_int_rxmonitor(struct wlandevice *wlandev,
 		return;
 
 	/* only prepend the prism header if in the right mode */
-	if ((wlandev->netdev->type == ARPHRD_IEEE80211_PRISM) &&
-	    (hw->sniffhdr != 0)) {
+	if (wlandev->netdev->type == ARPHRD_IEEE80211_PRISM &&
+	    hw->sniffhdr != 0) {
 		struct p80211_caphdr *caphdr;
 		/* The NEW header format! */
 		datap = skb_put(skb, sizeof(struct p80211_caphdr));
@@ -3772,7 +3772,7 @@ static void hfa384x_ctlxout_callback(struct urb *urb)
 
 	spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
 
-	if (!timer_ok && (hw->resp_timer_done == 0)) {
+	if (!timer_ok && hw->resp_timer_done == 0) {
 		spin_lock_irqsave(&hw->ctlxq.lock, flags);
 		goto delresp;
 	}
diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index c1b6d42..bc63eb2 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -356,10 +356,10 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 		sizeof(struct wlan_llc));
 
 	/* Test for the various encodings */
-	if ((payload_length >= sizeof(struct wlan_ethhdr)) &&
+	if (payload_length >= sizeof(struct wlan_ethhdr) &&
 	    (e_llc->dsap != 0xaa || e_llc->ssap != 0xaa) &&
-	    ((!ether_addr_equal_unaligned(daddr, e_hdr->daddr)) ||
-	     (!ether_addr_equal_unaligned(saddr, e_hdr->saddr)))) {
+	    (!ether_addr_equal_unaligned(daddr, e_hdr->daddr) ||
+	     !ether_addr_equal_unaligned(saddr, e_hdr->saddr))) {
 		pr_debug("802.3 ENCAP len: %d\n", payload_length);
 		/* 802.3 Encapsulated */
 		/* Test for an overlength frame */
diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index 0f50365..ad11a3f 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -427,7 +427,7 @@ static int p80211knetdev_hard_start_xmit(struct sk_buff *skb,
 
 failed:
 	/* Free up the WEP buffer if it's not the same as the skb */
-	if ((p80211_wep.data) && (p80211_wep.data != skb->data))
+	if (p80211_wep.data && p80211_wep.data != skb->data)
 		kzfree(p80211_wep.data);
 
 	/* we always free the skb here, never in a lower level. */
@@ -491,7 +491,7 @@ static int p80211netdev_ethtool(struct wlandevice *wlandev,
 		edata.cmd = ethcmd;
 
 		if (wlandev->linkstatus &&
-		    (wlandev->macmode != WLAN_MACMODE_NONE)) {
+		    wlandev->macmode != WLAN_MACMODE_NONE) {
 			edata.data = 1;
 		} else {
 			edata.data = 0;
diff --git a/drivers/staging/wlan-ng/p80211req.c b/drivers/staging/wlan-ng/p80211req.c
index afe8477..0d1556c 100644
--- a/drivers/staging/wlan-ng/p80211req.c
+++ b/drivers/staging/wlan-ng/p80211req.c
@@ -124,7 +124,7 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
 
 	/* Check Permissions */
 	if (!capable(CAP_NET_ADMIN) &&
-	    (msg->msgcode != DIDmsg_dot11req_mibget)) {
+	    msg->msgcode != DIDmsg_dot11req_mibget) {
 		netdev_err(wlandev->netdev,
 			   "%s: only dot11req_mibget allowed for non-root.\n",
 			   wlandev->name);
diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 344bec8..5b9aa63 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -1177,8 +1177,8 @@ static int validate_identity(void)
 				 s3info[i].info.compat.top);
 
 			/* MAC compat range */
-			if ((s3info[i].info.compat.role == 1) &&
-			    (s3info[i].info.compat.id == 2)) {
+			if (s3info[i].info.compat.role == 1 &&
+			    s3info[i].info.compat.id == 2) {
 				if (s3info[i].info.compat.variant !=
 				    macid.variant) {
 					result = 2;
@@ -1186,17 +1186,16 @@ static int validate_identity(void)
 			}
 
 			/* PRI compat range */
-			if ((s3info[i].info.compat.role == 1) &&
-			    (s3info[i].info.compat.id == 3)) {
-				if ((s3info[i].info.compat.bottom > priid.top)
-				    || (s3info[i].info.compat.top <
-					priid.bottom)) {
+			if (s3info[i].info.compat.role == 1 &&
+			    s3info[i].info.compat.id == 3) {
+				if (s3info[i].info.compat.bottom > priid.top ||
+				    s3info[i].info.compat.top < priid.bottom) {
 					result = 3;
 				}
 			}
 			/* SEC compat range */
-			if ((s3info[i].info.compat.role == 1) &&
-			    (s3info[i].info.compat.id == 4)) {
+			if (s3info[i].info.compat.role == 1 &&
+			    s3info[i].info.compat.id == 4) {
 				/* FIXME: isn't something missing here? */
 			}
 
@@ -1218,8 +1217,8 @@ static int validate_identity(void)
 				continue;
 			if (nicid.minor != s3info[i].info.version.minor)
 				continue;
-			if ((nicid.variant != s3info[i].info.version.variant) &&
-			    (nicid.id != 0x8008))
+			if (nicid.variant != s3info[i].info.version.variant &&
+			    nicid.id != 0x8008)
 				continue;
 
 			trump = 1;
@@ -1234,7 +1233,7 @@ static int validate_identity(void)
 	}
 	/* walk through */
 
-	if (trump && (result != 2))
+	if (trump && result != 2)
 		result = 0;
 	return result;
 }
diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index 7207059..6ac2b48 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -402,7 +402,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
 		goto exit;
 	}
 
-	item = &(hw->scanresults->info.hscanresult.result[req->bssindex.data]);
+	item = &hw->scanresults->info.hscanresult.result[req->bssindex.data];
 	/* signal and noise */
 	req->signal.status = P80211ENUM_msgitem_status_data_ok;
 	req->noise.status = P80211ENUM_msgitem_status_data_ok;
@@ -427,7 +427,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
 
 #define REQBASICRATE(N) \
 	do { \
-		if ((count >= N) && DOT11_RATE5_ISBASIC_GET( \
+		if (count >= N && DOT11_RATE5_ISBASIC_GET( \
 			item->supprates[(N) - 1])) { \
 			req->basicrate ## N .data = item->supprates[(N) - 1]; \
 			req->basicrate ## N .status = \
@@ -562,7 +562,7 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	/*** STATION ***/
 	/* Set the REQUIRED config items */
 	/* SSID */
-	pstr = (struct p80211pstrd *)&(msg->ssid.data);
+	pstr = (struct p80211pstrd *)&msg->ssid.data;
 	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
 	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFOWNSSID,
 					bytebuf, HFA384x_RID_CNFOWNSSID_LEN);
@@ -1063,7 +1063,7 @@ int prism2mgmt_autojoin(struct wlandevice *wlandev, void *msgp)
 
 	/* Set the ssid */
 	memset(bytebuf, 0, 256);
-	pstr = (struct p80211pstrd *)&(msg->ssid.data);
+	pstr = (struct p80211pstrd *)&msg->ssid.data;
 	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
 	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
 					bytebuf,
@@ -1187,7 +1187,7 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 				/* Save macport 0 state */
 				result = hfa384x_drvr_getconfig16(hw,
 						  HFA384x_RID_CNFPORTTYPE,
-						  &(hw->presniff_port_type));
+						  &hw->presniff_port_type);
 				if (result) {
 					netdev_dbg
 					(wlandev->netdev,
@@ -1198,7 +1198,7 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 				/* Save the wepflags state */
 				result = hfa384x_drvr_getconfig16(hw,
 						  HFA384x_RID_CNFWEPFLAGS,
-						  &(hw->presniff_wepflags));
+						  &hw->presniff_wepflags);
 				if (result) {
 					netdev_dbg
 					(wlandev->netdev,
@@ -1256,10 +1256,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 				     word, result);
 				goto failed;
 			}
-			if ((msg->keepwepflags.status ==
-			     P80211ENUM_msgitem_status_data_ok)
-			    && (msg->keepwepflags.data !=
-				P80211ENUM_truth_true)) {
+			if (msg->keepwepflags.status ==
+			     P80211ENUM_msgitem_status_data_ok &&
+			    msg->keepwepflags.data != P80211ENUM_truth_true) {
 				/* Set the wepflags for no decryption */
 				word = HFA384x_WEPFLAGS_DISABLE_TXCRYPT |
 				    HFA384x_WEPFLAGS_DISABLE_RXCRYPT;
@@ -1279,8 +1278,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		}
 
 		/* Do we want to strip the FCS in monitor mode? */
-		if ((msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok)
-		    && (msg->stripfcs.data == P80211ENUM_truth_true)) {
+		if (msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok &&
+		    msg->stripfcs.data == P80211ENUM_truth_true) {
 			hw->sniff_fcs = 0;
 		} else {
 			hw->sniff_fcs = 1;
@@ -1317,9 +1316,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 
 		/* Set the driver state */
 		/* Do we want the prism2 header? */
-		if ((msg->prismheader.status ==
-		     P80211ENUM_msgitem_status_data_ok) &&
-		    (msg->prismheader.data == P80211ENUM_truth_true)) {
+		if (msg->prismheader.status ==
+		     P80211ENUM_msgitem_status_data_ok &&
+		    msg->prismheader.data == P80211ENUM_truth_true) {
 			hw->sniffhdr = 0;
 			wlandev->netdev->type = ARPHRD_IEEE80211_PRISM;
 		} else if ((msg->wlanheader.status ==
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 070a237..38956fb 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1929,8 +1929,8 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 		return;
 
 	/* we don't care if we're in AP mode */
-	if ((wlandev->macmode == WLAN_MACMODE_NONE) ||
-	    (wlandev->macmode == WLAN_MACMODE_ESS_AP)) {
+	if (wlandev->macmode == WLAN_MACMODE_NONE ||
+	    wlandev->macmode == WLAN_MACMODE_ESS_AP) {
 		return;
 	}
 
-- 
2.7.4


