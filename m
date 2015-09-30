X-GM-THRID: 6200064367824732160
X-Received: by 10.180.9.104 with SMTP id y8mr4425363wia.7.1443590179285;
        Tue, 29 Sep 2015 22:16:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.164 with SMTP id s4ls20203laa.63.gmail; Tue, 29 Sep 2015
 22:16:18 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr213989lbs.18.1443590178643;
        Tue, 29 Sep 2015 22:16:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o5si165451wib.0.2015.09.29.22.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 22:16:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,611,1437429600"; 
   d="scan'208";a="180101567"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 07:16:18 +0200
Date: Wed, 30 Sep 2015 07:16:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Drivers: staging: wlan-ng: p80211conv:
 replaced functions for copying/comparing ethernet addresses
In-Reply-To: <20150929221607.GA15184@ubuntu>
Message-ID: <alpine.DEB.2.02.1509300715010.1984@localhost6.localdomain6>
References: <20150929221607.GA15184@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

If you look at git log --oneline for this file, it seems that Staging: 
wlan-ng: is preferred for this file, rather than Drivers: staging: 
wlan-ng: p80211conv:.

On Wed, 30 Sep 2015, Shivani Bhardwaj wrote:

> Replaced the function memcpy() by ether_addr_copy() and, memcmp() by
> ether_addr_equal() as these functions are more preferable for copying
> and comparing the ethernet addresses respectively.
> Also fixed the issue of character limit of 80 per line and removed
> one unnecessary statement.

The removed statement is related to logging on kzalloc.  It has nothing to 
do with the other changes, so it should not be in the same patch.

julia

> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211conv.c | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index 49f2ef8..9c4dba6 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -178,21 +178,23 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
>  
>  	switch (wlandev->macmode) {
>  	case WLAN_MACMODE_IBSS_STA:
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
> +				ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
>  		break;
>  	case WLAN_MACMODE_ESS_STA:
>  		fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
> -		memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
> +				ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
>  		break;
>  	case WLAN_MACMODE_ESS_AP:
>  		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
>  		break;
>  	default:
>  		netdev_err(wlandev->netdev,
> @@ -242,8 +244,8 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
>  
>  	for (i = 0; i < wlandev->spy_number; i++) {
>  
> -		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
> -			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
> +		if (!ether_addr_equal(wlandev->spy_address[i], mac, ETH_ALEN)) {
> +			ether_addr_copy(wlandev->spy_address[i], mac, ETH_ALEN);
>  			wlandev->spy_stat[i].level = rxmeta->signal;
>  			wlandev->spy_stat[i].noise = rxmeta->noise;
>  			wlandev->spy_stat[i].qual =
> @@ -614,8 +616,6 @@ int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
>  	rxmeta = kzalloc(sizeof(struct p80211_rxmeta), GFP_ATOMIC);
>  
>  	if (rxmeta == NULL) {
> -		netdev_err(wlandev->netdev,
> -			   "%s: Failed to allocate rxmeta.\n", wlandev->name);
>  		result = 1;
>  		goto exit;
>  	}
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150929221607.GA15184%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

