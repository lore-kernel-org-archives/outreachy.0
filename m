X-GM-THRID: 6200599277557776384
X-Received: by 10.194.118.65 with SMTP id kk1mr1210543wjb.5.1443689704208;
        Thu, 01 Oct 2015 01:55:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.34 with SMTP id fl2ls94137wib.21.gmail; Thu, 01 Oct
 2015 01:55:03 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr280537wic.3.1443689703872;
        Thu, 01 Oct 2015 01:55:03 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o5si59233wib.0.2015.10.01.01.55.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:55:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,616,1437429600"; 
   d="scan'208";a="180383536"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2015 10:55:03 +0200
Date: Thu, 1 Oct 2015 10:55:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: replace memcpy with
 ether_addr_copy
In-Reply-To: <1443689512-18360-1-git-send-email-ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.10.1510011054130.2526@hadrien>
References: <1443689512-18360-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 1 Oct 2015, Ioana Ciornei wrote:

> Replace memcpy with ether_addr_copy since the output of pahole
> shows that the addresses are aligned.
>
> struct p80211_hdr_a3 {
>         __le16                     fc;                   /*     0     2 */
>         u16                        dur;                  /*     2     2 */
>         u8                         a1[6];                /*     4     6 */
>         u8                         a2[6];                /*    10     6 */
>         u8                         a3[6];                /*    16     6 */
>         u16                        seq;                  /*    22     2 */
>
>         /* size: 24, cachelines: 1, members: 6 */
>         /* last cacheline: 24 bytes */
> };
>
> struct net_device {
>         char                       name[16];             /*     0    16 */
>         struct hlist_node          name_hlist;           /*    16    16 */
>
>      ...............
>
>  /* --- cacheline 12 boundary (768 bytes) --- */
>         long unsigned int          last_rx;              /*   768     8 */
>         unsigned char *            dev_addr;             /*   776     8 */
>         struct netdev_rx_queue *   _rx;                  /*   784     8 */
>
>     .................
> };
>
> struct wlandevice {
>         struct wlandevice *        next;                 /*     0     8 */
>     .................
>         u8                         bssid[6];             /*   128     6 */
>     .................
> };
>
> struct net_device {
>         char                       name[16];             /*     0    16 */
>     .................
>         unsigned char *            dev_addr;             /*   776     8 */
>     ................
> };
>
> struct wlan_ethhdr {
>         u8                         daddr[6];             /*     0     6 */
>         u8                         saddr[6];             /*     6     6 */
>         u16                        type;                 /*    12     2 */
>
>         /* size: 14, cachelines: 1, members: 3 */
>         /* last cacheline: 14 bytes */
> };
>
> Coccinelle semantic patch:
>
> @@
> expression E1,E2;constant E3;
> @@
>
> - memcpy(E1, E2, E3)

I would go further in constraining E3.  It should be ETH_ALEN, or perhaps
6, for less careful code.

julia

> + ether_addr_copy(E1, E2)
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211conv.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index 1b02cdf..8b6de4f 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
>
>  	switch (wlandev->macmode) {
>  	case WLAN_MACMODE_IBSS_STA:
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, (const u8*)&e_hdr.daddr);
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
> +		ether_addr_copy(p80211_hdr->a3.a3, (const u8*)&e_hdr.daddr);
>  		break;
>  	case WLAN_MACMODE_ESS_AP:
>  		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, (const u8*)&e_hdr.daddr);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid);
> +		ether_addr_copy(p80211_hdr->a3.a3, (const u8*)&e_hdr.saddr);
>  		break;
>  	default:
>  		netdev_err(wlandev->netdev,
> @@ -243,7 +243,7 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
>  	for (i = 0; i < wlandev->spy_number; i++) {
>
>  		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
> -			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
> +			ether_addr_copy(wlandev->spy_address[i], mac);
>  			wlandev->spy_stat[i].level = rxmeta->signal;
>  			wlandev->spy_stat[i].noise = rxmeta->noise;
>  			wlandev->spy_stat[i].qual =
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443689512-18360-1-git-send-email-ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

