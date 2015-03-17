X-GM-THRID: 8800398475264
X-Received: by 10.152.28.137 with SMTP id b9mr10266454lah.8.1426611542391;
        Tue, 17 Mar 2015 09:59:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.206 with SMTP id q14ls73184lal.49.gmail; Tue, 17 Mar
 2015 09:59:01 -0700 (PDT)
X-Received: by 10.152.6.232 with SMTP id e8mr10262501laa.2.1426611541943;
        Tue, 17 Mar 2015 09:59:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew13si174228wid.0.2015.03.17.09.59.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 09:59:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,417,1422918000"; 
   d="scan'208";a="126430632"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Mar 2015 17:59:01 +0100
Date: Tue, 17 Mar 2015 17:58:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: p80211conv: Replace memcpy
 with ether_addr_copy
In-Reply-To: <1426598097-26197-1-git-send-email-ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.10.1503171758350.2527@hadrien>
References: <1426598097-26197-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 17 Mar 2015, Ioana Ciornei wrote:

> Replace memcpy() with ether_addr_copy() when using __aligned(2) Ethernet
> addresses.

You should justify why the addresses are aligned.

julia


> Changes done using the following coccinelle script:
>
> @@
> expression e1, e2;
> @@
>
> - memcpy(e1, e2, ETH_ALEN);
> + ether_addr_copy(e1, e2);
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211conv.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index bd69e8c..b3f48074 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
>
>  	switch (wlandev->macmode) {
>  	case WLAN_MACMODE_IBSS_STA:
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
> +		ether_addr_copy(p80211_hdr->a3.a3, wlandev->bssid);
>  		break;
>  	case WLAN_MACMODE_ESS_STA:
>  		fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
> -		memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, wlandev->bssid);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
> +		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.daddr);
>  		break;
>  	case WLAN_MACMODE_ESS_AP:
>  		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid);
> +		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.saddr);
>  		break;
>  	default:
>  		netdev_err(wlandev->netdev,
> @@ -241,7 +241,7 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
>  	for (i = 0; i < wlandev->spy_number; i++) {
>
>  		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
> -			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
> +			ether_addr_copy(wlandev->spy_address[i], mac);
>  			wlandev->spy_stat[i].level = rxmeta->signal;
>  			wlandev->spy_stat[i].noise = rxmeta->noise;
>  			wlandev->spy_stat[i].qual =
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426598097-26197-1-git-send-email-ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

