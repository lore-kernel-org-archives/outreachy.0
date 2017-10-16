X-GM-THRID: 6477576827810349056
X-Received: by 10.202.72.84 with SMTP id v81mr4847533oia.19.1508178382986;
        Mon, 16 Oct 2017 11:26:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.53.196 with SMTP id c187ls3748001oia.13.gmail; Mon, 16 Oct
 2017 11:26:22 -0700 (PDT)
X-Received: by 10.157.86.206 with SMTP id b14mr5650965otj.36.1508178382124;
        Mon, 16 Oct 2017 11:26:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508178382; cv=none;
        d=google.com; s=arc-20160816;
        b=XTI0aArdfaAN/62uk5MGllyQ8LIo7Jsjgdf+FtbZE1VkK4QUmyF9vX2zWj3flCKMW9
         OM3CeR3BwSfr5ell1cBbZOXYe443DD04d+GAfKL/ja7SnAINpmKf2jKWxc1JXTb7D0xa
         MNkkn75i2KkHwB7g6x7ZM/qa/fj/U++1Sk30XhqwvN657AHC1Lc6XgNg0ECB6hbcOLqY
         BR4RiYXw/dePPWjFUpJjNqWIfAXgZpND8DmJ9bWigJUJhH6+qx6pm+7MgDnoZGZ33v98
         aT9C7j3dI7qTy8igA6eYv7/BClxF0BJK7Nd01vHvH7ZQGlCL4TRo5pFmThGUT4tlfZ9Z
         Qd1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=DKtMCHA35RYBM8gEDEjJwMQWL2OrUsv1m+JELMkQkXQ=;
        b=0kgqSnj7/lzPLzBmtNy4UrBx9faVWe521NHHNuKb6GEdXijKo73159180KIxzFX34M
         gvyCTfcimqS+UtWaG1SKbvxNGJy51iSgcU6CO3Iq1x0BjShtOl4foR2ICUAqXya8nD66
         Rpl1u5Vkly1owEwjV4Qcf3V8fI35HZmOlDDy7UJbic0Xo0TvtMV4jVfZwHeItqfuVKvP
         6ueeeMJjVgnOiymkxpaXFctmKZX6gGlNvWQiY9E3U58zd5DpqmQ/scuOYgLVMmUai5QN
         NPLtTLsRMWXNcDRlAtQNwosYXJ+xeQ6XBDwVFsX5tRxQyqCbGfH2GAJrnaueQqH2TyIK
         w3cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=eJSk3xJE;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::229 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x229.google.com (mail-ua0-x229.google.com. [2607:f8b0:400c:c08::229])
        by gmr-mx.google.com with ESMTPS id i1si547587ote.0.2017.10.16.11.26.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:26:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::229 as permitted sender) client-ip=2607:f8b0:400c:c08::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=eJSk3xJE;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::229 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x229.google.com with SMTP id b11so10340288uae.12
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DKtMCHA35RYBM8gEDEjJwMQWL2OrUsv1m+JELMkQkXQ=;
        b=eJSk3xJErNhLR2aZvvH+xYdCLmlbrpPpyQ0SbBrRCxaN8GJ4a+I9STW7VNumonIVQX
         k6XXwfVp6Uc8hM32lqCU/wD/zpt4hzuzU3k3OL8ebXDclftNC4Um6YMSPtyZHz8yHmzN
         01fFMCCGrm3PlhEYxoBR0w6xTQdNdyIsYacEWDc17bmDf7ezTl3VKUiawWFmbrpQjhr2
         VQMnt7CFSNX8Km5q8CZZWmiMDfEWMc3j/EBrswPw4RHjhjlTWJciSXsmiX14Bzc+GA2E
         Z5IzJBT2qK7eLlwi7UeblDh9jEbkX6teQytq/lwedv338TrrPJzRca+2/DAskEXigCKF
         ejqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DKtMCHA35RYBM8gEDEjJwMQWL2OrUsv1m+JELMkQkXQ=;
        b=SrtN+K48NEndBJ+FX9eKl1suDFsKgLNDOfzCUStXP9dyjLW8BeXZ4XKDta0Ee7AW7r
         /VPpzL1jWEJytsPbDwZ/H33aoqigIQ3HZ2K5jz2J74MKJCEiCIkJ0RHwWhNq5tpqyiT6
         Bg1kA4wJtaoEwMhwXu8A8nC5m7CIOjp5rS3ifJhzd6A8pgNGGAEHQti8rmeaxD4bnjbs
         HGikLOpkDZx5RWA9YZHTwdn0MCUjAmbszhLoweVOnuZZiHxrL3N2YEgR35pFfCqNm6sV
         jXPltVa/vFxV3gjmkBm8oR0J/nvIcuFF9t7Cqwsvlakf9fh4VlitBFmuoWfK2zGIulvH
         +21A==
X-Gm-Message-State: AMCzsaUVrlNe0pyES0BZfA4ASPTeuzssbH4y1fTT0sPDpIto9zy5xEwa
	kc9TLZWj/Gjdi4OI0Y7MFF+cpqj7
X-Google-Smtp-Source: AOwi7QBZdloH5cvclPc8LSnrr8C77xJ83EFQZRL89I4Kew7i9JDmw5azJHvuwwdy5eszahbG/Rllow==
X-Received: by 10.159.35.107 with SMTP id 98mr7345307uae.190.1508178381457;
        Mon, 16 Oct 2017 11:26:21 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.29.87])
        by smtp.gmail.com with ESMTPSA id o20sm803534vke.15.2017.10.16.11.26.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 11:26:20 -0700 (PDT)
Date: Mon, 16 Oct 2017 14:26:14 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171016182614.GA3341@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

checkpatch message: 'CHECK: Unnecessary parentheses around'.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
FYI:
	* I read 'Ignore checkpatch.pl if it complains about parens around boolean expressions or ternary conditionals in return values, like this: return ((depth > 1) ? (depth - 1) : depth);'. All the fixes in this patch are not in 'return values', so I hope there are OK ;)

drivers/staging/wlan-ng/cfg80211.c     | 10 +++++-----
 drivers/staging/wlan-ng/hfa384x_usb.c  | 18 +++++++++---------
 drivers/staging/wlan-ng/p80211conv.c   |  6 +++---
 drivers/staging/wlan-ng/p80211netdev.c |  4 ++--
 4 files changed, 19 insertions(+), 19 deletions(-)

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
-- 
2.7.4


