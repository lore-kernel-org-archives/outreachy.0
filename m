X-GM-THRID: 6477576827810349056
X-Received: by 10.28.107.65 with SMTP id g62mr231478wmc.32.1508185095767;
        Mon, 16 Oct 2017 13:18:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.79 with SMTP id n73ls3354708wrb.3.gmail; Mon, 16 Oct
 2017 13:18:14 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Q+JIKUXzlz1pj/wW0DWpskiXOVt9M/kmmzkUvKs626/cA1Axt8JXJrEIUpHsjBAnFidxEA
X-Received: by 10.28.191.6 with SMTP id p6mr224338wmf.25.1508185094884;
        Mon, 16 Oct 2017 13:18:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508185094; cv=none;
        d=google.com; s=arc-20160816;
        b=XTuCn5gKij74WbDI3rNcKzgS9zkyAzktnAFmlfZAgNREs1nGMfXy/Apnqn+eYTLRgg
         3zOe5lMVf9NR55BGe/MZgbyr941two1yhERnmVsf0rg37M+fqMNmY8SsrZ32IbmWWTmt
         4oHIIcmXbydBFB2NTJuVZLRf+PlewSZxf+phEygr3tRxbGd5EiiV8c6KJXUD/pBaB1cW
         fkaKFV90TGBM/9kuWjrJTGpsjgljxrew2khqgZdV65NleCO4O+9AW7TL30dvFHxGrk3X
         L+0bDUOabB6KFBpNLFe4+A8BUZ+fgjh5WRBm9qVpxwpiLa6NyZf921cmMHtp/nbx0a0f
         xTMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=opZN7PeMh/DRMjKNggAE8GT1wZ8ujRcAEBDCjJdWLk8=;
        b=uL379GSF7rCAHZZ8E5Maly9iCV36iL7GOP2Kp9A3+KLj/BwE2Wu2OUgtVIfohKxZ7G
         qeIA8/8lf/UvvKfoMa3HR24hRsfJxFWCV+ciBAqeGRYBn4/w14Oe70p7qWOCgsSWSfsm
         j9aRPPKePCSQldv8ttKFXpLEFaVh163ctDOWB0eXErfHsk59+Wu1Q6bYwTKrcNxnASw/
         kJncq85ssgKZYiVoxKRVbI5mNHyiLUblblMrm86hx8QGTMYD5ISB9xCb9sO27WspGf1X
         Ngaftl80u8zlEymHPvoLrnTFXXUhLhc3abibyfsxi3tkTJuimZAFverDFEEWnZ6BQtg0
         0QMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k37si253921wre.0.2017.10.16.13.18.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 13:18:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,388,1503352800"; 
   d="scan'208";a="296477266"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2017 22:18:14 +0200
Date: Mon, 16 Oct 2017 22:18:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: pablo@netfilter.org, Julia.Lawall@lip6.fr, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Remove unnecessary
 parentheses
In-Reply-To: <20171016182614.GA3341@ubuntu-server-1604>
Message-ID: <alpine.DEB.2.20.1710162217290.25741@hadrien>
References: <20171016182614.GA3341@ubuntu-server-1604>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

This patch has the same subject line as the one I previously commented on
(modulo the typo in that one).

On Mon, 16 Oct 2017, Frank A. Cancio Bello wrote:

> checkpatch message: 'CHECK: Unnecessary parentheses around'.

Again, say what and why you have done.

julia

> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
> FYI:
> 	* I read 'Ignore checkpatch.pl if it complains about parens around boolean expressions or ternary conditionals in return values, like this: return ((depth > 1) ? (depth - 1) : depth);'. All the fixes in this patch are not in 'return values', so I hope there are OK ;)
>
> drivers/staging/wlan-ng/cfg80211.c     | 10 +++++-----
>  drivers/staging/wlan-ng/hfa384x_usb.c  | 18 +++++++++---------
>  drivers/staging/wlan-ng/p80211conv.c   |  6 +++---
>  drivers/staging/wlan-ng/p80211netdev.c |  4 ++--
>  4 files changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 178f6f5..03279aa 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
>
>  	memset(sinfo, 0, sizeof(*sinfo));
>
> -	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
> +	if (!wlandev || wlandev->msdstate != WLAN_MSD_RUNNING)
>  		return -EOPNOTSUPP;
>
>  	/* build request message */
> @@ -367,8 +367,8 @@ static int prism2_scan(struct wiphy *wiphy,
>  		msg2.bssindex.data = i;
>
>  		result = p80211req_dorequest(wlandev, (u8 *)&msg2);
> -		if ((result != 0) ||
> -		    (msg2.resultcode.data != P80211ENUM_resultcode_success)) {
> +		if (result != 0 ||
> +		    msg2.resultcode.data != P80211ENUM_resultcode_success) {
>  			break;
>  		}
>
> @@ -475,8 +475,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
>  	}
>
>  	/* Set the authorization */
> -	if ((sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM) ||
> -	    ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && !is_wep))
> +	if (sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM ||
> +	    sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC && !is_wep)
>  		msg_join.authtype.data = P80211ENUM_authalg_opensystem;
>  	else if ((sme->auth_type == NL80211_AUTHTYPE_SHARED_KEY) ||
>  		 ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && is_wep))
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index d1e8218..b5fdfd8 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -1781,9 +1781,9 @@ int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport)
>  {
>  	int result = 0;
>
> -	if ((!hw->isap && macport != 0) ||
> -	    (hw->isap && !(macport <= HFA384x_PORTID_MAX)) ||
> -	    (hw->port_enabled[macport])) {
> +	if (!hw->isap && macport != 0 ||
> +	    hw->isap && !(macport <= HFA384x_PORTID_MAX) ||
> +	    hw->port_enabled[macport]) {
>  		result = -EINVAL;
>  	} else {
>  		result = hfa384x_cmd_enable(hw, macport);
> @@ -2465,7 +2465,7 @@ int hfa384x_drvr_start(struct hfa384x *hw)
>  		netdev_err(hw->wlandev->netdev, "Cannot get bulk in endpoint status.\n");
>  		goto done;
>  	}
> -	if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_in))
> +	if (status == 1 && usb_clear_halt(hw->usb, hw->endp_in))
>  		netdev_err(hw->wlandev->netdev, "Failed to reset bulk in endpoint.\n");
>
>  	result =
> @@ -2474,7 +2474,7 @@ int hfa384x_drvr_start(struct hfa384x *hw)
>  		netdev_err(hw->wlandev->netdev, "Cannot get bulk out endpoint status.\n");
>  		goto done;
>  	}
> -	if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_out))
> +	if (status == 1 && usb_clear_halt(hw->usb, hw->endp_out))
>  		netdev_err(hw->wlandev->netdev, "Failed to reset bulk out endpoint.\n");
>
>  	/* Synchronous unlink, in case we're trying to restart the driver */
> @@ -3054,7 +3054,7 @@ static void hfa384x_usbin_callback(struct urb *urb)
>  		goto exit;
>
>  	skb = hw->rx_urb_skb;
> -	if (!skb || (skb->data != urb->transfer_buffer)) {
> +	if (!skb || skb->data != urb->transfer_buffer) {
>  		WARN_ON(1);
>  		return;
>  	}
> @@ -3501,8 +3501,8 @@ static void hfa384x_int_rxmonitor(struct wlandevice *wlandev,
>  		return;
>
>  	/* only prepend the prism header if in the right mode */
> -	if ((wlandev->netdev->type == ARPHRD_IEEE80211_PRISM) &&
> -	    (hw->sniffhdr != 0)) {
> +	if (wlandev->netdev->type == ARPHRD_IEEE80211_PRISM &&
> +	    hw->sniffhdr != 0) {
>  		struct p80211_caphdr *caphdr;
>  		/* The NEW header format! */
>  		datap = skb_put(skb, sizeof(struct p80211_caphdr));
> @@ -3772,7 +3772,7 @@ static void hfa384x_ctlxout_callback(struct urb *urb)
>
>  	spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
>
> -	if (!timer_ok && (hw->resp_timer_done == 0)) {
> +	if (!timer_ok && hw->resp_timer_done == 0) {
>  		spin_lock_irqsave(&hw->ctlxq.lock, flags);
>  		goto delresp;
>  	}
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index c1b6d42..bc63eb2 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -356,10 +356,10 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
>  		sizeof(struct wlan_llc));
>
>  	/* Test for the various encodings */
> -	if ((payload_length >= sizeof(struct wlan_ethhdr)) &&
> +	if (payload_length >= sizeof(struct wlan_ethhdr) &&
>  	    (e_llc->dsap != 0xaa || e_llc->ssap != 0xaa) &&
> -	    ((!ether_addr_equal_unaligned(daddr, e_hdr->daddr)) ||
> -	     (!ether_addr_equal_unaligned(saddr, e_hdr->saddr)))) {
> +	    (!ether_addr_equal_unaligned(daddr, e_hdr->daddr) ||
> +	     !ether_addr_equal_unaligned(saddr, e_hdr->saddr))) {
>  		pr_debug("802.3 ENCAP len: %d\n", payload_length);
>  		/* 802.3 Encapsulated */
>  		/* Test for an overlength frame */
> diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> index 0f50365..ad11a3f 100644
> --- a/drivers/staging/wlan-ng/p80211netdev.c
> +++ b/drivers/staging/wlan-ng/p80211netdev.c
> @@ -427,7 +427,7 @@ static int p80211knetdev_hard_start_xmit(struct sk_buff *skb,
>
>  failed:
>  	/* Free up the WEP buffer if it's not the same as the skb */
> -	if ((p80211_wep.data) && (p80211_wep.data != skb->data))
> +	if (p80211_wep.data && p80211_wep.data != skb->data)
>  		kzfree(p80211_wep.data);
>
>  	/* we always free the skb here, never in a lower level. */
> @@ -491,7 +491,7 @@ static int p80211netdev_ethtool(struct wlandevice *wlandev,
>  		edata.cmd = ethcmd;
>
>  		if (wlandev->linkstatus &&
> -		    (wlandev->macmode != WLAN_MACMODE_NONE)) {
> +		    wlandev->macmode != WLAN_MACMODE_NONE) {
>  			edata.data = 1;
>  		} else {
>  			edata.data = 0;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171016182614.GA3341%40ubuntu-server-1604.
> For more options, visit https://groups.google.com/d/optout.
>

