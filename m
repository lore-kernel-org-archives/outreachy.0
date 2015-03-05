X-GM-THRID: 6740862042112
X-Received: by 10.152.45.7 with SMTP id i7mr1706085lam.9.1425577511502;
        Thu, 05 Mar 2015 09:45:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.100 with SMTP id l4ls1795wif.7.gmail; Thu, 05 Mar 2015
 09:45:11 -0800 (PST)
X-Received: by 10.194.95.67 with SMTP id di3mr1724801wjb.0.1425577511170;
        Thu, 05 Mar 2015 09:45:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si1448203wib.1.2015.03.05.09.45.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 05 Mar 2015 09:45:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,348,1422918000"; 
   d="scan'208";a="102261205"
Received: from unknown (HELO [132.207.219.65]) ([132.207.219.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Mar 2015 18:45:10 +0100
Date: Thu, 5 Mar 2015 12:45:07 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: pr_warn
 instead printk
In-Reply-To: <1425576898-6611-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1503051244390.6373@hadrien>
References: <1425576898-6611-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1723128551-1425577509=:6373"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1723128551-1425577509=:6373
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 5 Mar 2015, Hatice ERTÜRK wrote:

> This patch fixes the following warning using checkpatch.pl
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
> dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

This is a network driver.  In at least most of the cases it should be
possible to use the netdev functions.

julia

> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 96ab304..ff6b212 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
>  			struct ieee80211_hdr_3addrqos *header;
>
>  			header = (struct ieee80211_hdr_3addrqos *)frag->data;
> -			printk(KERN_DEBUG "%s: TKIP countermeasures: dropped "
> +			pr_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
>  			       "TX packet to %pM\n",
>  			       ieee->dev->name, header->addr1);
>  		}
> @@ -219,7 +219,7 @@ int ieee80211_encrypt_fragment(
>
>  	atomic_dec(&crypt->refcnt);
>  	if (res < 0) {
> -		printk(KERN_INFO "%s: Encryption failed: len=%d.\n",
> +		pr_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
>  		       ieee->dev->name, frag->len);
>  		ieee->ieee_stats.tx_discards++;
>  		return -1;
> @@ -623,7 +623,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  	 * creating it... */
>  	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE))||
>  	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
> -		printk(KERN_WARNING "%s: No xmit handler.\n",
> +		pr_warn(KERN_WARNING "%s: No xmit handler.\n",
>  		       ieee->dev->name);
>  		goto success;
>  	}
> @@ -631,7 +631,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>
>  	if(likely(ieee->raw_tx == 0)){
>  		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
> -			printk(KERN_WARNING "%s: skb too small (%d).\n",
> +			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
>  			ieee->dev->name, skb->len);
>  			goto success;
>  		}
> @@ -747,7 +747,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  		* postfix, header, FCS, etc.) */
>  		txb = ieee80211_alloc_txb(nr_frags, frag_size + ieee->tx_headroom, GFP_ATOMIC);
>  		if (unlikely(!txb)) {
> -			printk(KERN_WARNING "%s: Could not allocate TXB\n",
> +			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
>  			ieee->dev->name);
>  			goto failed;
>  		}
> @@ -846,14 +846,14 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  		}
>  	}else{
>  		if (unlikely(skb->len < sizeof(struct ieee80211_hdr_3addr))) {
> -			printk(KERN_WARNING "%s: skb too small (%d).\n",
> +			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
>  			ieee->dev->name, skb->len);
>  			goto success;
>  		}
>
>  		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
>  		if(!txb){
> -			printk(KERN_WARNING "%s: Could not allocate TXB\n",
> +			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
>  			ieee->dev->name);
>  			goto failed;
>  		}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425576898-6611-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1723128551-1425577509=:6373--

