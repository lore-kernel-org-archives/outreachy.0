X-GM-THRID: 6477590717145284608
X-Received: by 10.25.145.71 with SMTP id y7mr288701lfj.38.1508184526953;
        Mon, 16 Oct 2017 13:08:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.17.77 with SMTP id f74ls1173022lje.8.gmail; Mon, 16 Oct
 2017 13:08:45 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TtIXjRo4Jvs1Q8ETyQxEf+z0zEtzabCtLMOUEdi04acyzvBTV/S8og0fFQZA2gvQ48RQ04
X-Received: by 10.46.18.17 with SMTP id t17mr357022lje.33.1508184525536;
        Mon, 16 Oct 2017 13:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508184525; cv=none;
        d=google.com; s=arc-20160816;
        b=SdsD5V9OQiYFpePGUmKdaFFVQUAKpQfusFEzHOtw+lrAYlEc/MNRSkRCezMKNT6JHq
         ZP6hjaBEWyqc5ZCz8CwwPinFD7xvsjsdeYqP3gH0ntV20aKCsy1H3lAvSqABn+V4zof9
         78tDt0/43tvL2cqufVsgbVQ/A6djiEWKcI1XygZbmi5nXUoeZHEBeciZ6lgmzM+X5eC5
         jpQaL7bj3J+HVDTL/Z6yEy8MgvOS62IFGb7JRksgW81UkH322GuY4C2vYNRN9cTERiEH
         HqQxW/A9QG0wg77A/WenyrviyJ9LZFJfylnnCrLqet5cVVvEda4o7QltrT8wU/nTbGCy
         Q+bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+Y934LHde8Ifx1igS7MP6arkTppKxBAgP7NVcZzHg+4=;
        b=QRuxaKi/QSN9wmz0/BAO6dPI4wZvFU3Hsq0CclBsb8wG2wS3qG9jwtpEcSQzP3QfvU
         9Jc9RqWix8f9DoT8H368rJ8kAPztiQTyGO4TqU76/rsyuDASMKP9POjqksvQYJ5BFLj5
         MxNEsr//947IeX8PWwrmYrANw8Px+OoNrDgMxcZY1FTL0ElApF6mlj2ZNofNKxVJ4oaK
         0C6nA89QGPJ8sYA5plIhNCYGQ7FE226ZTOyVubRE8yZvVWLhQdlt5VyvIdulkpRT+tBN
         1SPUXFV4Xp4fHMPoycHLGjkULiLNR9Ikiwj0ZIr3b1qQHy9yCM0h+TWrfOlGUJBi73ld
         yDKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l14si408586lje.1.2017.10.16.13.08.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 13:08:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,387,1503352800"; 
   d="scan'208";a="296476579"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2017 22:08:44 +0200
Date: Mon, 16 Oct 2017 22:08:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: pablo@netfilter.org, Julia.Lawall@lip6.fr, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] taging: wlan-ng: Remove unnecessary
 parentheses
In-Reply-To: <20171016192006.GA3939@ubuntu-server-1604>
Message-ID: <alpine.DEB.2.20.1710162206360.25741@hadrien>
References: <20171016192006.GA3939@ubuntu-server-1604>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

An "s" got lost in the subject line.

On Mon, 16 Oct 2017, Frank A. Cancio Bello wrote:

> checkpatch message: 'CHECK: Unnecessary parentheses around' and one
> instance of 'CHECK: Logical continuations should be on the previous
> line'.

This is not written in the proper style for a log message.  Write complete
sentences, start in the imperative, and say what you have done and why,
rather than just listing the message that prompted it.  It is good to
credit the tool that helped you find the issue.

julia

> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
> FYI:
> 	* I took the liberty to include in this patch two types of checkpatch issues to facilitate patch review. The case of the 'CHECK: Logical continuations should be on the previous line' was in a same line of the other issue.
>
> 	* checkpatch is complaining about 'CHECK: Logical continuations should be on the previous line' but I think is OK because to fix it the line would exceed the 80 characters.
>
> 	* I decided to ignore another checkpatch complain with this patch: 'CHECK: Avoid CamelCase: <DIDmsg_dot11req_mibget>', to avoid mixing CamelCase with parenthesis removal in the same patch.
>  drivers/staging/wlan-ng/p80211req.c  |  2 +-
>  drivers/staging/wlan-ng/prism2fw.c   | 23 +++++++++++------------
>  drivers/staging/wlan-ng/prism2mgmt.c | 29 ++++++++++++++---------------
>  drivers/staging/wlan-ng/prism2sta.c  |  4 ++--
>  4 files changed, 28 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/p80211req.c b/drivers/staging/wlan-ng/p80211req.c
> index afe8477..0d1556c 100644
> --- a/drivers/staging/wlan-ng/p80211req.c
> +++ b/drivers/staging/wlan-ng/p80211req.c
> @@ -124,7 +124,7 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
>
>  	/* Check Permissions */
>  	if (!capable(CAP_NET_ADMIN) &&
> -	    (msg->msgcode != DIDmsg_dot11req_mibget)) {
> +	    msg->msgcode != DIDmsg_dot11req_mibget) {
>  		netdev_err(wlandev->netdev,
>  			   "%s: only dot11req_mibget allowed for non-root.\n",
>  			   wlandev->name);
> diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
> index 344bec8..5b9aa63 100644
> --- a/drivers/staging/wlan-ng/prism2fw.c
> +++ b/drivers/staging/wlan-ng/prism2fw.c
> @@ -1177,8 +1177,8 @@ static int validate_identity(void)
>  				 s3info[i].info.compat.top);
>
>  			/* MAC compat range */
> -			if ((s3info[i].info.compat.role == 1) &&
> -			    (s3info[i].info.compat.id == 2)) {
> +			if (s3info[i].info.compat.role == 1 &&
> +			    s3info[i].info.compat.id == 2) {
>  				if (s3info[i].info.compat.variant !=
>  				    macid.variant) {
>  					result = 2;
> @@ -1186,17 +1186,16 @@ static int validate_identity(void)
>  			}
>
>  			/* PRI compat range */
> -			if ((s3info[i].info.compat.role == 1) &&
> -			    (s3info[i].info.compat.id == 3)) {
> -				if ((s3info[i].info.compat.bottom > priid.top)
> -				    || (s3info[i].info.compat.top <
> -					priid.bottom)) {
> +			if (s3info[i].info.compat.role == 1 &&
> +			    s3info[i].info.compat.id == 3) {
> +				if (s3info[i].info.compat.bottom > priid.top ||
> +				    s3info[i].info.compat.top < priid.bottom) {
>  					result = 3;
>  				}
>  			}
>  			/* SEC compat range */
> -			if ((s3info[i].info.compat.role == 1) &&
> -			    (s3info[i].info.compat.id == 4)) {
> +			if (s3info[i].info.compat.role == 1 &&
> +			    s3info[i].info.compat.id == 4) {
>  				/* FIXME: isn't something missing here? */
>  			}
>
> @@ -1218,8 +1217,8 @@ static int validate_identity(void)
>  				continue;
>  			if (nicid.minor != s3info[i].info.version.minor)
>  				continue;
> -			if ((nicid.variant != s3info[i].info.version.variant) &&
> -			    (nicid.id != 0x8008))
> +			if (nicid.variant != s3info[i].info.version.variant &&
> +			    nicid.id != 0x8008)
>  				continue;
>
>  			trump = 1;
> @@ -1234,7 +1233,7 @@ static int validate_identity(void)
>  	}
>  	/* walk through */
>
> -	if (trump && (result != 2))
> +	if (trump && result != 2)
>  		result = 0;
>  	return result;
>  }
> diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
> index 7207059..4677307 100644
> --- a/drivers/staging/wlan-ng/prism2mgmt.c
> +++ b/drivers/staging/wlan-ng/prism2mgmt.c
> @@ -402,7 +402,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
>  		goto exit;
>  	}
>
> -	item = &(hw->scanresults->info.hscanresult.result[req->bssindex.data]);
> +	item = &hw->scanresults->info.hscanresult.result[req->bssindex.data];
>  	/* signal and noise */
>  	req->signal.status = P80211ENUM_msgitem_status_data_ok;
>  	req->noise.status = P80211ENUM_msgitem_status_data_ok;
> @@ -427,7 +427,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
>
>  #define REQBASICRATE(N) \
>  	do { \
> -		if ((count >= N) && DOT11_RATE5_ISBASIC_GET( \
> +		if (count >= N && DOT11_RATE5_ISBASIC_GET( \
>  			item->supprates[(N) - 1])) { \
>  			req->basicrate ## N .data = item->supprates[(N) - 1]; \
>  			req->basicrate ## N .status = \
> @@ -562,7 +562,7 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
>  	/*** STATION ***/
>  	/* Set the REQUIRED config items */
>  	/* SSID */
> -	pstr = (struct p80211pstrd *)&(msg->ssid.data);
> +	pstr = (struct p80211pstrd *)&msg->ssid.data;
>  	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
>  	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFOWNSSID,
>  					bytebuf, HFA384x_RID_CNFOWNSSID_LEN);
> @@ -1063,7 +1063,7 @@ int prism2mgmt_autojoin(struct wlandevice *wlandev, void *msgp)
>
>  	/* Set the ssid */
>  	memset(bytebuf, 0, 256);
> -	pstr = (struct p80211pstrd *)&(msg->ssid.data);
> +	pstr = (struct p80211pstrd *)&msg->ssid.data;
>  	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
>  	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
>  					bytebuf,
> @@ -1187,7 +1187,7 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  				/* Save macport 0 state */
>  				result = hfa384x_drvr_getconfig16(hw,
>  						  HFA384x_RID_CNFPORTTYPE,
> -						  &(hw->presniff_port_type));
> +						  &hw->presniff_port_type);
>  				if (result) {
>  					netdev_dbg
>  					(wlandev->netdev,
> @@ -1198,7 +1198,7 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  				/* Save the wepflags state */
>  				result = hfa384x_drvr_getconfig16(hw,
>  						  HFA384x_RID_CNFWEPFLAGS,
> -						  &(hw->presniff_wepflags));
> +						  &hw->presniff_wepflags);
>  				if (result) {
>  					netdev_dbg
>  					(wlandev->netdev,
> @@ -1256,10 +1256,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  				     word, result);
>  				goto failed;
>  			}
> -			if ((msg->keepwepflags.status ==
> -			     P80211ENUM_msgitem_status_data_ok)
> -			    && (msg->keepwepflags.data !=
> -				P80211ENUM_truth_true)) {
> +			if (msg->keepwepflags.status ==
> +			     P80211ENUM_msgitem_status_data_ok &&
> +			    msg->keepwepflags.data != P80211ENUM_truth_true) {
>  				/* Set the wepflags for no decryption */
>  				word = HFA384x_WEPFLAGS_DISABLE_TXCRYPT |
>  				    HFA384x_WEPFLAGS_DISABLE_RXCRYPT;
> @@ -1279,8 +1278,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  		}
>
>  		/* Do we want to strip the FCS in monitor mode? */
> -		if ((msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok)
> -		    && (msg->stripfcs.data == P80211ENUM_truth_true)) {
> +		if (msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok
> +		    && msg->stripfcs.data == P80211ENUM_truth_true) {
>  			hw->sniff_fcs = 0;
>  		} else {
>  			hw->sniff_fcs = 1;
> @@ -1317,9 +1316,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>
>  		/* Set the driver state */
>  		/* Do we want the prism2 header? */
> -		if ((msg->prismheader.status ==
> -		     P80211ENUM_msgitem_status_data_ok) &&
> -		    (msg->prismheader.data == P80211ENUM_truth_true)) {
> +		if (msg->prismheader.status ==
> +		     P80211ENUM_msgitem_status_data_ok &&
> +		    msg->prismheader.data == P80211ENUM_truth_true) {
>  			hw->sniffhdr = 0;
>  			wlandev->netdev->type = ARPHRD_IEEE80211_PRISM;
>  		} else if ((msg->wlanheader.status ==
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 070a237..38956fb 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -1929,8 +1929,8 @@ void prism2sta_commsqual_defer(struct work_struct *data)
>  		return;
>
>  	/* we don't care if we're in AP mode */
> -	if ((wlandev->macmode == WLAN_MACMODE_NONE) ||
> -	    (wlandev->macmode == WLAN_MACMODE_ESS_AP)) {
> +	if (wlandev->macmode == WLAN_MACMODE_NONE ||
> +	    wlandev->macmode == WLAN_MACMODE_ESS_AP) {
>  		return;
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171016192006.GA3939%40ubuntu-server-1604.
> For more options, visit https://groups.google.com/d/optout.
>

