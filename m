X-GM-THRID: 6477590717145284608
X-Received: by 10.101.76.71 with SMTP id l7mr2483445pgr.149.1508181615480;
        Mon, 16 Oct 2017 12:20:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.122.82 with SMTP id j18ls196658pgn.24.gmail; Mon, 16 Oct
 2017 12:20:14 -0700 (PDT)
X-Received: by 10.101.85.143 with SMTP id j15mr2478785pgs.65.1508181614544;
        Mon, 16 Oct 2017 12:20:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508181614; cv=none;
        d=google.com; s=arc-20160816;
        b=RrPAF0HGuRw54zgReRTBcWW2+lcLmJyHuJ29de4/xN8YxswFZUo16a93p9NRzwkKMv
         fiAU0CAgbwAZdYYHPCdFWdtAQBijeV+B/TCrUNcEWEviu/kHLZ9i+OlNBazz/NFGaUSp
         /WyMRpbnmg8hp5IgeG0Rz6zaBTaiWDWriOrutWW3ssiM0EtMTIhq8Uh9sOiVCj5Kbxia
         HsRQa8SWIDyYZfGtz49/HoDM81sXAphdKevnUUD9eUILm+G7TsTE3LX22o0ftNmz3u9g
         WBXEeJ6qC44oAM6qx8n7jlz2MnlVmfIcOdRa5GUJUYcr0J7/1BsSa4GCdNT0jSYlEE5Z
         hzZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=ofZCwKv+kgPpPzU1QDGr/FZez6Eah7GcfaR2qvsPIYc=;
        b=EhTDkaBuRtzSvZS6IbovHYAVqelO4BRzGGIf+7H5k2xDXe0Jzs69z/beA8VbMUWIPG
         NrP+b46qwzmstWivHZ9m/s9pXwazq0LJd5vOV0oKKpboOw4YNSA0pgqy16wDdqYO8C5V
         08vI+n128yMw4koeEpKv6FCFE28asMKiCPL1h5h6yWbsG8Dc3pBFKFCZlIJIV8qO9kve
         0/4HgWMjMzM7puVfX85nymgvfRs9L0A2I5ZGb64ofnkJMUaM7jT2EONP+tttiLzJSII7
         AedTUJznZ6NX/I9khgO5EAbOFZSp+21vcrjuyJTnEXUK75UUrKoxxWVNPYZz17QTGJx4
         /iyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=jqx4cwwu;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x22e.google.com (mail-vk0-x22e.google.com. [2607:f8b0:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id be11si429608plb.3.2017.10.16.12.20.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 12:20:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22e as permitted sender) client-ip=2607:f8b0:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=jqx4cwwu;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x22e.google.com with SMTP id k195so457159vke.10
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 12:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ofZCwKv+kgPpPzU1QDGr/FZez6Eah7GcfaR2qvsPIYc=;
        b=jqx4cwwuWoecFgUNPrzf5Izjvs0YhqwL+tZ4d77ZTqEILwcIJhxFKEglfV/waX3eXq
         Ew8Obwtk3pCtiS7h+7GiRFyfswkUeUKuiNlftPduD7Elvry4uRzeVi3DCayIzEcK/CHn
         ysbSvYbkc3ukb7lNLZWQJlSkn+VFnTINURKMTqEDs1VVZkTVFvqccgYYH2i4R1LmBcHz
         /filBjRRLEO1/i1KnvK+j1GmC/rGH++BKad/heGyjg4TE1bvquaVb7JGMeE0iALBY7LC
         wVKkGMqtRdib9Q6Ht35IMOAS7vre4fG3sQQUQGrmbgZJpnNwj3ozm1MH/6+lq305L1GH
         7Mfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ofZCwKv+kgPpPzU1QDGr/FZez6Eah7GcfaR2qvsPIYc=;
        b=nB55iFiqwQAYPlc1OjkZ62lG9Y0UjVedJysmOmlkRMCBSRMuCXB2KF/wzlSsAHr78d
         mt69tIpJ3S452ABKYhLz5sqo1YGl99Kh2YSNM6jbtVMsMuZSiFit0WGP2uAKIDXvfGx6
         Y9apoPvLPOLv2xq4JUCKsoKd/yFKn5rjvFWzKfQlc6k/ruXCdLyYBoMrqaAGnPwANdvq
         ByAHM3w7atvwA5dXgRtlNtUvlKoZ2B9h7pK43Glzo8JxUR17aso6gST9OQsu9I2sbMpd
         sHYdGcAVI56WVloowcBwopcB1ZIC2cqL5n3/8Qy601g+c0xckG6idwBqUTyU3Q8VFmA3
         8qEw==
X-Gm-Message-State: AMCzsaUxGhaAf1pDDAfbsJXI7lu2P15i97UofDV/bFbJmDiVIb3+eBTo
	RCehdApve/KrDm73Y4BtBPrMdJJK
X-Google-Smtp-Source: ABhQp+TzmglsUBdnNbraXfWjNMahegzKNFm+JUbB9bnz+PrA25x1bR8mFonQtY91uFfmy9s5TniZ3Q==
X-Received: by 10.31.231.198 with SMTP id e189mr1335897vkh.52.1508181613738;
        Mon, 16 Oct 2017 12:20:13 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.29.87])
        by smtp.gmail.com with ESMTPSA id k11sm1892577vka.17.2017.10.16.12.20.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 12:20:13 -0700 (PDT)
Date: Mon, 16 Oct 2017 15:20:06 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] taging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171016192006.GA3939@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

checkpatch message: 'CHECK: Unnecessary parentheses around' and one
instance of 'CHECK: Logical continuations should be on the previous
line'.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
FYI:
	* I took the liberty to include in this patch two types of checkpatch issues to facilitate patch review. The case of the 'CHECK: Logical continuations should be on the previous line' was in a same line of the other issue.

	* checkpatch is complaining about 'CHECK: Logical continuations should be on the previous line' but I think is OK because to fix it the line would exceed the 80 characters.

	* I decided to ignore another checkpatch complain with this patch: 'CHECK: Avoid CamelCase: <DIDmsg_dot11req_mibget>', to avoid mixing CamelCase with parenthesis removal in the same patch.

 drivers/staging/wlan-ng/p80211req.c  |  2 +-
 drivers/staging/wlan-ng/prism2fw.c   | 23 +++++++++++------------
 drivers/staging/wlan-ng/prism2mgmt.c | 29 ++++++++++++++---------------
 drivers/staging/wlan-ng/prism2sta.c  |  4 ++--
 4 files changed, 28 insertions(+), 30 deletions(-)

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
index 7207059..4677307 100644
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
+		if (msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok
+		    && msg->stripfcs.data == P80211ENUM_truth_true) {
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


