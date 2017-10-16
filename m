X-GM-THRID: 6477576827810349056
X-Received: by 10.107.198.142 with SMTP id w136mr8650170iof.59.1508190363719;
        Mon, 16 Oct 2017 14:46:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.185.65 with SMTP id k1ls76415iti.10.canary-gmail; Mon, 16
 Oct 2017 14:46:02 -0700 (PDT)
X-Received: by 10.107.130.222 with SMTP id m91mr8755890ioi.70.1508190362933;
        Mon, 16 Oct 2017 14:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508190362; cv=none;
        d=google.com; s=arc-20160816;
        b=xouLdlWnuBTG5c4Nn3Ig3loh8kF3W7BdI4g8QuLeOWsoEpZO1cKLZs5WXALDOmrdeP
         XDNegoB/2qeWuea2i5x8TDNys+QgTAT5HWuqKsJE+fS3PDDHjNIM18i0mTN4uxJ5qcpW
         N+/iY9ZlBNVzpjV14fe7Fi0gyPdTz1DRgQXPqaQWDWCokEGSmjtbaPDoxuWY9od14Be/
         vysrTWPKqTtIr/Mf6Sx1OfpKZAscEVsW3inoGLSFqO8J82DWtUFEN46dOcAwZg4Hhnua
         z+Fner/aN//RDEg0IFl7nY0tUnzYZ9cKdQO+0g0M4nyuH5zl88/Jqkx4Gbd7hNMSvOz4
         fcqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=jPhqa4q7weyj/PCeS4B15w+PX+eROSqlw7yxphQ9tnk=;
        b=RBnehKPdt9YvthvnmrsotMxlZExga1I7rGBX+dygIyHEVHn5Vfno0i9k6G5TWtK8EP
         DMVNC+G/pcjdslw8hqDhRL/i8VAe9bsuThTnL+ZlfA0w6C8fpqAvJCMfovM/Fvk838QT
         EGt2JF8nZpvS7ZUP/MoSOQvHxeDw5+T96CC+T/2vW7EXVzx4o0m3M0lhbNjqsND3E8JJ
         o8cYqPBYScyCiLYW7hFNEBaZj0eWmbH0wl0yKqNReevPX/qmGByQVIUfCToaxW3X1Ai8
         plsE9OuPpCCCYYoLvaMjbNcc0Kvqk6bPmo0ag5HIqn6TN6Lc54tCPPIVtRQX210hBeGC
         zV8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=KfuDU+GK;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22f as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x22f.google.com (mail-ua0-x22f.google.com. [2607:f8b0:400c:c08::22f])
        by gmr-mx.google.com with ESMTPS id r66si770136itc.0.2017.10.16.14.46.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 14:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22f as permitted sender) client-ip=2607:f8b0:400c:c08::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=KfuDU+GK;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22f as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x22f.google.com with SMTP id f46so10727550uae.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 14:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jPhqa4q7weyj/PCeS4B15w+PX+eROSqlw7yxphQ9tnk=;
        b=KfuDU+GKkBpmVi0olCG9HONSKQsK2TUbnqEe3x+RQb5OLnLeZG2KINixOmnfhgzymZ
         Drg2QuddYxM6z2MAHQjygjLaqACV1lbiVZo1uxx24p4SnSPAFnlzZTzoMBwUF7wrvgM+
         v5+VD7yKkR3TMPFXdqcSmhksl93iDPnFw5D1zOR8cs53Ph8fKH6ILIIMSP2vaTVRT0OB
         IhAIck0dGpGGYGcwZxRksAd5grPD2dJPL9xDLAi8JfSMsDpjlElkI+QfeIapQmnwUMOg
         EbmrS5pEOOAiVraYTkK2V1WECGRQPs26kPTcrG6LH1Vh3+MFNoLN88Xwig7PJlLR0rsk
         excw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jPhqa4q7weyj/PCeS4B15w+PX+eROSqlw7yxphQ9tnk=;
        b=H0Jl6RbAOJFHB5iWtwrCwj2uXDXg9D6mp67qQmwGpLZloZx0Eokgu+3i/aOX/dIUAD
         IDTrm7f0gal6V9WjBh4GwDMzDX/ypaKSwY31Sg+7VEkWciRX/ojGQr37siNWsFR4cxTL
         f/uThXocBkYiUN9roCUqPAM5lix6lf2EUHSquVp8JqRVDo/4PL/xWMBl9dAXtGa+FuK7
         S/9Ox+O2kBYMEQ2H+WxU/BLFMFoVWc64RwQoQdR3nDopIoaRsgW9cOXbarK4U+gNlBtv
         jU7eh92pojLMC+xH1D7ixhI54Fk2VxmETRe3w2DIzC+MkODkBD1bGAkFSSGHZvwIXHLr
         EWcg==
X-Gm-Message-State: AMCzsaXSaChL/S+Z8nSBJN0r5QKYgQOUwyVimpr2koG2OEFRZOCvBmTx
	p/HhS1IK6wTB0MfFzzBtIaxfNFIL
X-Google-Smtp-Source: AOwi7QDntQMwM/uUpMoGRrvsPY2WdhzxyEGUT3m1Lif4qkXSmK25eOH2gXl0lG0JNNRrAoSm5qWxRQ==
X-Received: by 10.159.49.179 with SMTP id v48mr9572602uad.101.1508190362261;
        Mon, 16 Oct 2017 14:46:02 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id m6sm2053173vkb.13.2017.10.16.14.45.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 14:46:01 -0700 (PDT)
Date: Mon, 16 Oct 2017 17:45:56 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: pablo@netfilter.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Remove unnecessary
 parentheses
Message-ID: <20171016214556.GA2215@ubuntu-server-1604>
References: <20171016182614.GA3341@ubuntu-server-1604>
 <alpine.DEB.2.20.1710162217290.25741@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710162217290.25741@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 16, 2017 at 10:18:14PM +0200, Julia Lawall wrote:
> This patch has the same subject line as the one I previously commented on
> (modulo the typo in that one).
> 

Thanks Julia for your quick response. Before work on your suggestions I have a question regarding the above comment:

Do you want that I merge this two patches to avoid two patches with the same subject line? Or they are OK as two with the same subject line? I split the changes into two patches to avoid big patches and the subject line come as the same because I'm doing the same in each of them ;)

> On Mon, 16 Oct 2017, Frank A. Cancio Bello wrote:
> 
> > checkpatch message: 'CHECK: Unnecessary parentheses around'.
> 
> Again, say what and why you have done.
> 
> julia
> 
> > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > ---
> > FYI:
> > 	* I read 'Ignore checkpatch.pl if it complains about parens around boolean expressions or ternary conditionals in return values, like this: return ((depth > 1) ? (depth - 1) : depth);'. All the fixes in this patch are not in 'return values', so I hope there are OK ;)
> >
> > drivers/staging/wlan-ng/cfg80211.c     | 10 +++++-----
> >  drivers/staging/wlan-ng/hfa384x_usb.c  | 18 +++++++++---------
> >  drivers/staging/wlan-ng/p80211conv.c   |  6 +++---
> >  drivers/staging/wlan-ng/p80211netdev.c |  4 ++--
> >  4 files changed, 19 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > index 178f6f5..03279aa 100644
> > --- a/drivers/staging/wlan-ng/cfg80211.c
> > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > @@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
> >
> >  	memset(sinfo, 0, sizeof(*sinfo));
> >
> > -	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
> > +	if (!wlandev || wlandev->msdstate != WLAN_MSD_RUNNING)
> >  		return -EOPNOTSUPP;
> >
> >  	/* build request message */
> > @@ -367,8 +367,8 @@ static int prism2_scan(struct wiphy *wiphy,
> >  		msg2.bssindex.data = i;
> >
> >  		result = p80211req_dorequest(wlandev, (u8 *)&msg2);
> > -		if ((result != 0) ||
> > -		    (msg2.resultcode.data != P80211ENUM_resultcode_success)) {
> > +		if (result != 0 ||
> > +		    msg2.resultcode.data != P80211ENUM_resultcode_success) {
> >  			break;
> >  		}
> >
> > @@ -475,8 +475,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
> >  	}
> >
> >  	/* Set the authorization */
> > -	if ((sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM) ||
> > -	    ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && !is_wep))
> > +	if (sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM ||
> > +	    sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC && !is_wep)
> >  		msg_join.authtype.data = P80211ENUM_authalg_opensystem;
> >  	else if ((sme->auth_type == NL80211_AUTHTYPE_SHARED_KEY) ||
> >  		 ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && is_wep))
> > diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> > index d1e8218..b5fdfd8 100644
> > --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> > +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> > @@ -1781,9 +1781,9 @@ int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport)
> >  {
> >  	int result = 0;
> >
> > -	if ((!hw->isap && macport != 0) ||
> > -	    (hw->isap && !(macport <= HFA384x_PORTID_MAX)) ||
> > -	    (hw->port_enabled[macport])) {
> > +	if (!hw->isap && macport != 0 ||
> > +	    hw->isap && !(macport <= HFA384x_PORTID_MAX) ||
> > +	    hw->port_enabled[macport]) {
> >  		result = -EINVAL;
> >  	} else {
> >  		result = hfa384x_cmd_enable(hw, macport);
> > @@ -2465,7 +2465,7 @@ int hfa384x_drvr_start(struct hfa384x *hw)
> >  		netdev_err(hw->wlandev->netdev, "Cannot get bulk in endpoint status.\n");
> >  		goto done;
> >  	}
> > -	if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_in))
> > +	if (status == 1 && usb_clear_halt(hw->usb, hw->endp_in))
> >  		netdev_err(hw->wlandev->netdev, "Failed to reset bulk in endpoint.\n");
> >
> >  	result =
> > @@ -2474,7 +2474,7 @@ int hfa384x_drvr_start(struct hfa384x *hw)
> >  		netdev_err(hw->wlandev->netdev, "Cannot get bulk out endpoint status.\n");
> >  		goto done;
> >  	}
> > -	if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_out))
> > +	if (status == 1 && usb_clear_halt(hw->usb, hw->endp_out))
> >  		netdev_err(hw->wlandev->netdev, "Failed to reset bulk out endpoint.\n");
> >
> >  	/* Synchronous unlink, in case we're trying to restart the driver */
> > @@ -3054,7 +3054,7 @@ static void hfa384x_usbin_callback(struct urb *urb)
> >  		goto exit;
> >
> >  	skb = hw->rx_urb_skb;
> > -	if (!skb || (skb->data != urb->transfer_buffer)) {
> > +	if (!skb || skb->data != urb->transfer_buffer) {
> >  		WARN_ON(1);
> >  		return;
> >  	}
> > @@ -3501,8 +3501,8 @@ static void hfa384x_int_rxmonitor(struct wlandevice *wlandev,
> >  		return;
> >
> >  	/* only prepend the prism header if in the right mode */
> > -	if ((wlandev->netdev->type == ARPHRD_IEEE80211_PRISM) &&
> > -	    (hw->sniffhdr != 0)) {
> > +	if (wlandev->netdev->type == ARPHRD_IEEE80211_PRISM &&
> > +	    hw->sniffhdr != 0) {
> >  		struct p80211_caphdr *caphdr;
> >  		/* The NEW header format! */
> >  		datap = skb_put(skb, sizeof(struct p80211_caphdr));
> > @@ -3772,7 +3772,7 @@ static void hfa384x_ctlxout_callback(struct urb *urb)
> >
> >  	spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
> >
> > -	if (!timer_ok && (hw->resp_timer_done == 0)) {
> > +	if (!timer_ok && hw->resp_timer_done == 0) {
> >  		spin_lock_irqsave(&hw->ctlxq.lock, flags);
> >  		goto delresp;
> >  	}
> > diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> > index c1b6d42..bc63eb2 100644
> > --- a/drivers/staging/wlan-ng/p80211conv.c
> > +++ b/drivers/staging/wlan-ng/p80211conv.c
> > @@ -356,10 +356,10 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
> >  		sizeof(struct wlan_llc));
> >
> >  	/* Test for the various encodings */
> > -	if ((payload_length >= sizeof(struct wlan_ethhdr)) &&
> > +	if (payload_length >= sizeof(struct wlan_ethhdr) &&
> >  	    (e_llc->dsap != 0xaa || e_llc->ssap != 0xaa) &&
> > -	    ((!ether_addr_equal_unaligned(daddr, e_hdr->daddr)) ||
> > -	     (!ether_addr_equal_unaligned(saddr, e_hdr->saddr)))) {
> > +	    (!ether_addr_equal_unaligned(daddr, e_hdr->daddr) ||
> > +	     !ether_addr_equal_unaligned(saddr, e_hdr->saddr))) {
> >  		pr_debug("802.3 ENCAP len: %d\n", payload_length);
> >  		/* 802.3 Encapsulated */
> >  		/* Test for an overlength frame */
> > diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> > index 0f50365..ad11a3f 100644
> > --- a/drivers/staging/wlan-ng/p80211netdev.c
> > +++ b/drivers/staging/wlan-ng/p80211netdev.c
> > @@ -427,7 +427,7 @@ static int p80211knetdev_hard_start_xmit(struct sk_buff *skb,
> >
> >  failed:
> >  	/* Free up the WEP buffer if it's not the same as the skb */
> > -	if ((p80211_wep.data) && (p80211_wep.data != skb->data))
> > +	if (p80211_wep.data && p80211_wep.data != skb->data)
> >  		kzfree(p80211_wep.data);
> >
> >  	/* we always free the skb here, never in a lower level. */
> > @@ -491,7 +491,7 @@ static int p80211netdev_ethtool(struct wlandevice *wlandev,
> >  		edata.cmd = ethcmd;
> >
> >  		if (wlandev->linkstatus &&
> > -		    (wlandev->macmode != WLAN_MACMODE_NONE)) {
> > +		    wlandev->macmode != WLAN_MACMODE_NONE) {
> >  			edata.data = 1;
> >  		} else {
> >  			edata.data = 0;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171016182614.GA3341%40ubuntu-server-1604.
> > For more options, visit https://groups.google.com/d/optout.
> >

