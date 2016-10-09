X-GM-THRID: 6339165268076396544
X-Received: by 10.25.130.147 with SMTP id e141mr1702896lfd.16.1475992647478;
        Sat, 08 Oct 2016 22:57:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.158 with SMTP id e30ls675209lji.29.gmail; Sat, 08 Oct
 2016 22:57:27 -0700 (PDT)
X-Received: by 10.25.215.91 with SMTP id o88mr211832lfg.14.1475992647090;
        Sat, 08 Oct 2016 22:57:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w16si397137wmd.0.2016.10.08.22.57.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 22:57:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,316,1473112800"; 
   d="scan'208";a="196117696"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 07:57:26 +0200
Date: Sun, 9 Oct 2016 07:57:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Use ether_addr_copy
 function
In-Reply-To: <1475951919-2908-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1610090756490.3134@hadrien>
References: <1475951919-2908-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Dilek Uzulmez wrote:

> This patch fixes the following checkpatch.pl warnings:
> WARNING: "Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2)" in file p80211conv.c
> Pahole shows that the addresses are aligned

It would be nicer to show the output of pahole so that one can check that
you have interpreted it properly.

julia

>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211conv.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index 0247cbc..513aebb 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -178,21 +178,21 @@ int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
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
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475951919-2908-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

