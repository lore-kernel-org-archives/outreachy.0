X-GM-THRID: 6477590717145284608
X-Received: by 10.37.59.132 with SMTP id i126mr6732584yba.13.1508205666722;
        Mon, 16 Oct 2017 19:01:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.98.8 with SMTP id w8ls5603ywb.0.gmail; Mon, 16 Oct 2017
 19:01:05 -0700 (PDT)
X-Received: by 10.129.109.199 with SMTP id i190mr7300089ywc.196.1508205665778;
        Mon, 16 Oct 2017 19:01:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508205665; cv=none;
        d=google.com; s=arc-20160816;
        b=T7e3bXn+e0bXoWOxFZjf/l9bxgNVjjwrBO990NQti/j5pKDZNyIET9J7rdYpWbex+K
         /w1p4xKy6/JBjfGmRTe2Dz+zDaBO0ei+sBwTMh+XORpajKr40s27aSEcA4G7+nCTAcaj
         3MFL9nHPbGhUXaUTXmmEf5aJeAGZVXb4ylbCrg/DoMEoaKJe7+8vvPdYcGAmCH/XNAQ9
         y3O8cEkhC6GNH62fQFDdQ0BLOhKSsD/ZyiU6IH5TSVtHPNT2cQkIwQUbBAsvJyMstD4f
         PUNkz8UYxr1ByOx/85NFCLs9Pcgn8VXx0KzsTguHsDkPcucjaFc6IaMB9Gnl/EoRUXdy
         t4BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=kyLAj86Ypc3we2blogOjWhN5tOY96cryWLkMgnr2lbs=;
        b=LIVfIPDuwmx3EzMGuIvNXOb98ml7ovuacCG3J7AkV/IPUH+8w7ht1xvL3wj6Z1Odea
         OmEpDmnoSz03hAPBvlMwTukA/s1pbt5nrpdMJCTQ4Wmwzh22cBhHCZm4+iTEPoMSEosQ
         tIznYSLAxdiijDh5t4YFUHU7TAfialMXDcrCwVQBv4d/qzLSuouvnF9CXvnMtaEX+2VV
         0Ay21nweYONimX8VCmFX4Ae+9spQLCH9+v+LFbvxoCYGyLJjGECGmx7PLHUZ7i67/y7w
         Le92kOOY4z9pChpeEqYJf9XJV2b9jg3bnL6BuMtJgkoKsG835+n32n0n/b5ZW5ddfvMq
         zFVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=yvZf8FDN;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22f as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x22f.google.com (mail-ua0-x22f.google.com. [2607:f8b0:400c:c08::22f])
        by gmr-mx.google.com with ESMTPS id a4si497033ywb.5.2017.10.16.19.01.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 19:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22f as permitted sender) client-ip=2607:f8b0:400c:c08::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=yvZf8FDN;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22f as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x22f.google.com with SMTP id l40so136105uah.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 19:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kyLAj86Ypc3we2blogOjWhN5tOY96cryWLkMgnr2lbs=;
        b=yvZf8FDNoia/zArH/odKlVVJtERv1/10QWpxP/0/ap0NuNiAlZJJ6RuaErpuXzNjMd
         Y+6kbwz1NpGaGFC9vHWm3QOGhBnjQ1F2uMcxdHc4njIMlp5HWTA40lL+FI5LWpFCrOul
         Ra1/tLaopZ9Vf2LfgyXxh5PavkI786JfVsCWAbnc7dlRSFG9uDUk/cwERapjDt0aqxLA
         FGdYpK5q1CbY3iZpAvcXn6UYbQ7h69O6tIQs+vAJGgN6aDoUc5ecILTUPjNasXvJM7QD
         S5ZFn19Ez5pr7N70m5SUuQln1WkgOEULJRUWfSySzUVfpHjQqo61+FSO0ZhldAnhj6PG
         e1iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kyLAj86Ypc3we2blogOjWhN5tOY96cryWLkMgnr2lbs=;
        b=jpqv9bGPE3RAkyXao/3/LcskfrbRXbhHM2MQYFIevbdMDirar62EvCJ1se32HwJJe7
         wx8jqOb/vyRIiJ06Ab3z4BaDCD1oNfDMSonAviSwVk/jo09jmPX2fphcZOJknWJ98EbR
         N6Lvr+XRpFQqV6f5crXvM1pq1v1ZyM4xPtyrL8aMA2XpKnFzSlcDkSYfmDTARZJHVc3o
         qABCfGBRc4OgRvw0kQ6PotWTHKVTRalSXEWENFLZ7yNqgr93gMCq7oD1NJvLrfkYaPjn
         22+YYkVthvVOrEX9JIQqGXEZl4lNm37MYFbjsH3tYsttHDtQsxNRMQ7rOks1Gbua2gy2
         vNSw==
X-Gm-Message-State: AMCzsaVnm41DiTWibXOlbgmSZ4s8dsLYWnk99+qma50pHcAxd2N92fVj
	NR4NF/ISycW1p97GkXJ1Rlv9jmTt
X-Google-Smtp-Source: AOwi7QB/06NhaEFT4pRA86ji8ThldObMxWue6lSLhKyUKdblpQPPjZGmls4fRMtmV7+5z2StDs75vA==
X-Received: by 10.176.9.201 with SMTP id e9mr9187197uah.2.1508205664926;
        Mon, 16 Oct 2017 19:01:04 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id i13sm591623uak.19.2017.10.16.19.01.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 19:01:04 -0700 (PDT)
Date: Mon, 16 Oct 2017 22:01:02 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: pablo@netfilter.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] taging: wlan-ng: Remove unnecessary
 parentheses
Message-ID: <20171017020102.GB2215@ubuntu-server-1604>
References: <20171016192006.GA3939@ubuntu-server-1604>
 <alpine.DEB.2.20.1710162206360.25741@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710162206360.25741@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 16, 2017 at 10:08:44PM +0200, Julia Lawall wrote:
> An "s" got lost in the subject line.
> 
> On Mon, 16 Oct 2017, Frank A. Cancio Bello wrote:
> 
> > checkpatch message: 'CHECK: Unnecessary parentheses around' and one
> > instance of 'CHECK: Logical continuations should be on the previous
> > line'.
> 
> This is not written in the proper style for a log message.  Write complete
> sentences, start in the imperative, and say what you have done and why,
> rather than just listing the message that prompted it.  It is good to
> credit the tool that helped you find the issue.
> 
Pls discard this patch because it was merged into the patch with:
Subject: [PATCH v2] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171017014821.GA3282@ubuntu-server-1604>

Thanks Julia for all your help.

> julia
> 
> > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > ---
> > FYI:
> > 	* I took the liberty to include in this patch two types of checkpatch issues to facilitate patch review. The case of the 'CHECK: Logical continuations should be on the previous line' was in a same line of the other issue.
> >
> > 	* checkpatch is complaining about 'CHECK: Logical continuations should be on the previous line' but I think is OK because to fix it the line would exceed the 80 characters.
> >
> > 	* I decided to ignore another checkpatch complain with this patch: 'CHECK: Avoid CamelCase: <DIDmsg_dot11req_mibget>', to avoid mixing CamelCase with parenthesis removal in the same patch.
> >  drivers/staging/wlan-ng/p80211req.c  |  2 +-
> >  drivers/staging/wlan-ng/prism2fw.c   | 23 +++++++++++------------
> >  drivers/staging/wlan-ng/prism2mgmt.c | 29 ++++++++++++++---------------
> >  drivers/staging/wlan-ng/prism2sta.c  |  4 ++--
> >  4 files changed, 28 insertions(+), 30 deletions(-)
> >
> > diff --git a/drivers/staging/wlan-ng/p80211req.c b/drivers/staging/wlan-ng/p80211req.c
> > index afe8477..0d1556c 100644
> > --- a/drivers/staging/wlan-ng/p80211req.c
> > +++ b/drivers/staging/wlan-ng/p80211req.c
> > @@ -124,7 +124,7 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
> >
> >  	/* Check Permissions */
> >  	if (!capable(CAP_NET_ADMIN) &&
> > -	    (msg->msgcode != DIDmsg_dot11req_mibget)) {
> > +	    msg->msgcode != DIDmsg_dot11req_mibget) {
> >  		netdev_err(wlandev->netdev,
> >  			   "%s: only dot11req_mibget allowed for non-root.\n",
> >  			   wlandev->name);
> > diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
> > index 344bec8..5b9aa63 100644
> > --- a/drivers/staging/wlan-ng/prism2fw.c
> > +++ b/drivers/staging/wlan-ng/prism2fw.c
> > @@ -1177,8 +1177,8 @@ static int validate_identity(void)
> >  				 s3info[i].info.compat.top);
> >
> >  			/* MAC compat range */
> > -			if ((s3info[i].info.compat.role == 1) &&
> > -			    (s3info[i].info.compat.id == 2)) {
> > +			if (s3info[i].info.compat.role == 1 &&
> > +			    s3info[i].info.compat.id == 2) {
> >  				if (s3info[i].info.compat.variant !=
> >  				    macid.variant) {
> >  					result = 2;
> > @@ -1186,17 +1186,16 @@ static int validate_identity(void)
> >  			}
> >
> >  			/* PRI compat range */
> > -			if ((s3info[i].info.compat.role == 1) &&
> > -			    (s3info[i].info.compat.id == 3)) {
> > -				if ((s3info[i].info.compat.bottom > priid.top)
> > -				    || (s3info[i].info.compat.top <
> > -					priid.bottom)) {
> > +			if (s3info[i].info.compat.role == 1 &&
> > +			    s3info[i].info.compat.id == 3) {
> > +				if (s3info[i].info.compat.bottom > priid.top ||
> > +				    s3info[i].info.compat.top < priid.bottom) {
> >  					result = 3;
> >  				}
> >  			}
> >  			/* SEC compat range */
> > -			if ((s3info[i].info.compat.role == 1) &&
> > -			    (s3info[i].info.compat.id == 4)) {
> > +			if (s3info[i].info.compat.role == 1 &&
> > +			    s3info[i].info.compat.id == 4) {
> >  				/* FIXME: isn't something missing here? */
> >  			}
> >
> > @@ -1218,8 +1217,8 @@ static int validate_identity(void)
> >  				continue;
> >  			if (nicid.minor != s3info[i].info.version.minor)
> >  				continue;
> > -			if ((nicid.variant != s3info[i].info.version.variant) &&
> > -			    (nicid.id != 0x8008))
> > +			if (nicid.variant != s3info[i].info.version.variant &&
> > +			    nicid.id != 0x8008)
> >  				continue;
> >
> >  			trump = 1;
> > @@ -1234,7 +1233,7 @@ static int validate_identity(void)
> >  	}
> >  	/* walk through */
> >
> > -	if (trump && (result != 2))
> > +	if (trump && result != 2)
> >  		result = 0;
> >  	return result;
> >  }
> > diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
> > index 7207059..4677307 100644
> > --- a/drivers/staging/wlan-ng/prism2mgmt.c
> > +++ b/drivers/staging/wlan-ng/prism2mgmt.c
> > @@ -402,7 +402,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
> >  		goto exit;
> >  	}
> >
> > -	item = &(hw->scanresults->info.hscanresult.result[req->bssindex.data]);
> > +	item = &hw->scanresults->info.hscanresult.result[req->bssindex.data];
> >  	/* signal and noise */
> >  	req->signal.status = P80211ENUM_msgitem_status_data_ok;
> >  	req->noise.status = P80211ENUM_msgitem_status_data_ok;
> > @@ -427,7 +427,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
> >
> >  #define REQBASICRATE(N) \
> >  	do { \
> > -		if ((count >= N) && DOT11_RATE5_ISBASIC_GET( \
> > +		if (count >= N && DOT11_RATE5_ISBASIC_GET( \
> >  			item->supprates[(N) - 1])) { \
> >  			req->basicrate ## N .data = item->supprates[(N) - 1]; \
> >  			req->basicrate ## N .status = \
> > @@ -562,7 +562,7 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
> >  	/*** STATION ***/
> >  	/* Set the REQUIRED config items */
> >  	/* SSID */
> > -	pstr = (struct p80211pstrd *)&(msg->ssid.data);
> > +	pstr = (struct p80211pstrd *)&msg->ssid.data;
> >  	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
> >  	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFOWNSSID,
> >  					bytebuf, HFA384x_RID_CNFOWNSSID_LEN);
> > @@ -1063,7 +1063,7 @@ int prism2mgmt_autojoin(struct wlandevice *wlandev, void *msgp)
> >
> >  	/* Set the ssid */
> >  	memset(bytebuf, 0, 256);
> > -	pstr = (struct p80211pstrd *)&(msg->ssid.data);
> > +	pstr = (struct p80211pstrd *)&msg->ssid.data;
> >  	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
> >  	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
> >  					bytebuf,
> > @@ -1187,7 +1187,7 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
> >  				/* Save macport 0 state */
> >  				result = hfa384x_drvr_getconfig16(hw,
> >  						  HFA384x_RID_CNFPORTTYPE,
> > -						  &(hw->presniff_port_type));
> > +						  &hw->presniff_port_type);
> >  				if (result) {
> >  					netdev_dbg
> >  					(wlandev->netdev,
> > @@ -1198,7 +1198,7 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
> >  				/* Save the wepflags state */
> >  				result = hfa384x_drvr_getconfig16(hw,
> >  						  HFA384x_RID_CNFWEPFLAGS,
> > -						  &(hw->presniff_wepflags));
> > +						  &hw->presniff_wepflags);
> >  				if (result) {
> >  					netdev_dbg
> >  					(wlandev->netdev,
> > @@ -1256,10 +1256,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
> >  				     word, result);
> >  				goto failed;
> >  			}
> > -			if ((msg->keepwepflags.status ==
> > -			     P80211ENUM_msgitem_status_data_ok)
> > -			    && (msg->keepwepflags.data !=
> > -				P80211ENUM_truth_true)) {
> > +			if (msg->keepwepflags.status ==
> > +			     P80211ENUM_msgitem_status_data_ok &&
> > +			    msg->keepwepflags.data != P80211ENUM_truth_true) {
> >  				/* Set the wepflags for no decryption */
> >  				word = HFA384x_WEPFLAGS_DISABLE_TXCRYPT |
> >  				    HFA384x_WEPFLAGS_DISABLE_RXCRYPT;
> > @@ -1279,8 +1278,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
> >  		}
> >
> >  		/* Do we want to strip the FCS in monitor mode? */
> > -		if ((msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok)
> > -		    && (msg->stripfcs.data == P80211ENUM_truth_true)) {
> > +		if (msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok
> > +		    && msg->stripfcs.data == P80211ENUM_truth_true) {
> >  			hw->sniff_fcs = 0;
> >  		} else {
> >  			hw->sniff_fcs = 1;
> > @@ -1317,9 +1316,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
> >
> >  		/* Set the driver state */
> >  		/* Do we want the prism2 header? */
> > -		if ((msg->prismheader.status ==
> > -		     P80211ENUM_msgitem_status_data_ok) &&
> > -		    (msg->prismheader.data == P80211ENUM_truth_true)) {
> > +		if (msg->prismheader.status ==
> > +		     P80211ENUM_msgitem_status_data_ok &&
> > +		    msg->prismheader.data == P80211ENUM_truth_true) {
> >  			hw->sniffhdr = 0;
> >  			wlandev->netdev->type = ARPHRD_IEEE80211_PRISM;
> >  		} else if ((msg->wlanheader.status ==
> > diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> > index 070a237..38956fb 100644
> > --- a/drivers/staging/wlan-ng/prism2sta.c
> > +++ b/drivers/staging/wlan-ng/prism2sta.c
> > @@ -1929,8 +1929,8 @@ void prism2sta_commsqual_defer(struct work_struct *data)
> >  		return;
> >
> >  	/* we don't care if we're in AP mode */
> > -	if ((wlandev->macmode == WLAN_MACMODE_NONE) ||
> > -	    (wlandev->macmode == WLAN_MACMODE_ESS_AP)) {
> > +	if (wlandev->macmode == WLAN_MACMODE_NONE ||
> > +	    wlandev->macmode == WLAN_MACMODE_ESS_AP) {
> >  		return;
> >  	}
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171016192006.GA3939%40ubuntu-server-1604.
> > For more options, visit https://groups.google.com/d/optout.
> >

