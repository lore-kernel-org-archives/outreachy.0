X-GM-THRID: 6330911507339018240
X-Received: by 10.28.154.76 with SMTP id c73mr38038wme.20.1474036015813;
        Fri, 16 Sep 2016 07:26:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.72 with SMTP id u69ls805445wmu.8.gmail; Fri, 16 Sep 2016
 07:26:51 -0700 (PDT)
X-Received: by 10.28.168.12 with SMTP id r12mr37308wme.12.1474036011240;
        Fri, 16 Sep 2016 07:26:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si610479wmd.1.2016.09.16.07.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 07:26:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,344,1470693600"; 
   d="scan'208";a="193688026"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 16:26:50 +0200
Date: Fri, 16 Sep 2016 16:26:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ks7010: Replace memset
 with eth_zero_addr
In-Reply-To: <1474035877-26234-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609161626350.3049@hadrien>
References: <1474035877-26234-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Sep 2016, Bhumika Goyal wrote:

> Use eth_zero_addr to assign zero address to the given address array
> instead of memset when the second argument in memset is address
> of zero. Coccinelle was used to do the replacement and add the
> header file linux/etherdevice.h if not already present.
> Script:
> @header@
> @@
> #include <linux/etherdevice.h>
>
> @r1@
> expression e;
> @@
>
> -memset(e,0,ETH_ALEN);
> +eth_zero_addr(e);
>
> @includeheader depends on r1 && !header@
> @@
> + #include <linux/etherdevice.h>
> #include <...>
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
> 	- add a space after #include in the semantic patch.
> Changes in v3:
> 	-Made changes in the semantic patch
> 	-Modified commit message.
>
>  drivers/staging/ks7010/ks_hostif.c   | 7 ++++---
>  drivers/staging/ks7010/ks_wlan_net.c | 6 +++---
>  2 files changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index e3cc8ce..deb82ab 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -14,6 +14,7 @@
>  #include "eap_packet.h"
>  #include "michael_mic.h"
>
> +#include <linux/etherdevice.h>
>  #include <linux/if_ether.h>
>  #include <linux/if_arp.h>
>
> @@ -780,7 +781,7 @@ void hostif_start_confirm(struct ks_wlan_private *priv)
>  	wrqu.data.flags = 0;
>  	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
>  	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
> -		memset(wrqu.ap_addr.sa_data, '\0', ETH_ALEN);
> +		eth_zero_addr(wrqu.ap_addr.sa_data);
>  		DPRINTK(3, "IWEVENT: disconnect\n");
>  		wireless_send_event(priv->net_dev, SIOCGIWAP, &wrqu, NULL);
>  	}
> @@ -838,7 +839,7 @@ void hostif_connect_indication(struct ks_wlan_private *priv)
>  	wrqu0.ap_addr.sa_family = ARPHRD_ETHER;
>  	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS &&
>  	    (old_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
> -		memset(wrqu0.ap_addr.sa_data, '\0', ETH_ALEN);
> +		eth_zero_addr(wrqu0.ap_addr.sa_data);
>  		DPRINTK(3, "IWEVENT: disconnect\n");
>  		DPRINTK(3, "disconnect :: scan_ind_count=%d\n",
>  			priv->scan_ind_count);
> @@ -910,7 +911,7 @@ void hostif_stop_confirm(struct ks_wlan_private *priv)
>  		if ((priv->connect_status & CONNECT_STATUS_MASK) ==
>  		    DISCONNECT_STATUS
>  		    && (old_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
> -			memset(wrqu0.ap_addr.sa_data, '\0', ETH_ALEN);
> +			eth_zero_addr(wrqu0.ap_addr.sa_data);
>  			DPRINTK(3, "IWEVENT: disconnect\n");
>  			printk("IWEVENT: disconnect\n");
>  			DPRINTK(3, "disconnect :: scan_ind_count=%d\n",
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index c17c45d..70cc9be 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -401,7 +401,7 @@ static int ks_wlan_set_wap(struct net_device *dev, struct iw_request_info *info,
>  			priv->need_commit |= SME_MODE_SET;
>  		}
>  	} else {
> -		memset(priv->reg.bssid, 0x0, ETH_ALEN);
> +		eth_zero_addr(priv->reg.bssid);
>  		return -EOPNOTSUPP;
>  	}
>
> @@ -432,7 +432,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
>  	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
>  		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
>  	} else {
> -		memset(awrq->sa_data, 0, ETH_ALEN);
> +		eth_zero_addr(awrq->sa_data);
>  	}
>
>  	awrq->sa_family = ARPHRD_ETHER;
> @@ -2091,7 +2091,7 @@ static int ks_wlan_set_pmksa(struct net_device *dev,
>  			list_for_each(ptr, &priv->pmklist.head) {
>  				pmk = list_entry(ptr, struct pmk_t, list);
>  				if (!memcmp(pmksa->bssid.sa_data, pmk->bssid, ETH_ALEN)) {	/* match address! list del. */
> -					memset(pmk->bssid, 0, ETH_ALEN);
> +					eth_zero_addr(pmk->bssid);
>  					memset(pmk->pmkid, 0, IW_PMKID_LEN);
>  					list_del_init(&pmk->list);
>  					break;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474035877-26234-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

