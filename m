X-GM-THRID: 6740862042112
X-Received: by 10.152.36.132 with SMTP id q4mr2356415laj.6.1425651566620;
        Fri, 06 Mar 2015 06:19:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.97 with SMTP id p1ls167207wib.51.gmail; Fri, 06 Mar
 2015 06:19:26 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr5516027wid.1.1425651566323;
        Fri, 06 Mar 2015 06:19:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si138580wib.1.2015.03.06.06.19.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 06 Mar 2015 06:19:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,353,1422918000"; 
   d="scan'208";a="102374230"
Received: from unknown (HELO [132.207.219.65]) ([132.207.219.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Mar 2015 15:19:25 +0100
Date: Fri, 6 Mar 2015 09:19:23 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 32/32] Staging: rtl8192u: ieee80211:
 pr_warn instead printk
In-Reply-To: <1425651329-14574-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1503060918090.2715@hadrien>
References: <1425651329-14574-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1492100295-1425651566=:2715"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1492100295-1425651566=:2715
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 6 Mar 2015, Hatice ERTÜRK wrote:

> This patch fixes the following warning using checkpatch.pl
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
> dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
> v3:
>  Changed usage dev_functions.
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index ecd8542..8d4ade4 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
>  			struct ieee80211_hdr_3addrqos *header;
>
>  			header = (struct ieee80211_hdr_3addrqos *)frag->data;
> -			dev_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
> +			dev_debug("%s: TKIP countermeasures: dropped "

Please ensure that your code compiles.  This call is not correct,

Also, I have the impression that this patch is against your previous
patch.  It should be against the original state of the code.

Finally, please explain why a netdev function cannot be used.  This is a
network driver.

julia

>  			       "TX packet to %pM\n",
>  			       ieee->dev->name, header->addr1);
>  		}
> @@ -219,7 +219,7 @@ int ieee80211_encrypt_fragment(
>
>  	atomic_dec(&crypt->refcnt);
>  	if (res < 0) {
> -		dev_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
> +		dev_info("%s: Encryption failed: len=%d.\n",
>  		       ieee->dev->name, frag->len);
>  		ieee->ieee_stats.tx_discards++;
>  		return -1;
> @@ -623,7 +623,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  	 * creating it... */
>  	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE))||
>  	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
> -		dev_warn(KERN_WARNING "%s: No xmit handler.\n",
> +		dev_warn("%s: No xmit handler.\n",
>  		       ieee->dev->name);
>  		goto success;
>  	}
> @@ -631,7 +631,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>
>  	if(likely(ieee->raw_tx == 0)){
>  		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
> -			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
> +			dev_warn("%s: skb too small (%d).\n",
>  			ieee->dev->name, skb->len);
>  			goto success;
>  		}
> @@ -747,7 +747,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  		* postfix, header, FCS, etc.) */
>  		txb = ieee80211_alloc_txb(nr_frags, frag_size + ieee->tx_headroom, GFP_ATOMIC);
>  		if (unlikely(!txb)) {
> -			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
> +			dev_warn("%s: Could not allocate TXB\n",
>  			ieee->dev->name);
>  			goto failed;
>  		}
> @@ -846,14 +846,14 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  		}
>  	}else{
>  		if (unlikely(skb->len < sizeof(struct ieee80211_hdr_3addr))) {
> -			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
> +			dev_warn("%s: skb too small (%d).\n",
>  			ieee->dev->name, skb->len);
>  			goto success;
>  		}
>
>  		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
>  		if(!txb){
> -			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
> +			dev_warn("%s: Could not allocate TXB\n",
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425651329-14574-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1492100295-1425651566=:2715--

