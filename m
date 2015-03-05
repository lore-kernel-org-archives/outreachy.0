X-GM-THRID: 6740862042112
X-Received: by 10.70.55.233 with SMTP id v9mr11867614pdp.5.1425591973972;
        Thu, 05 Mar 2015 13:46:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.219 with SMTP id f88ls73254ioj.60.gmail; Thu, 05 Mar
 2015 13:46:13 -0800 (PST)
X-Received: by 10.66.229.36 with SMTP id sn4mr12320294pac.32.1425591973609;
        Thu, 05 Mar 2015 13:46:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e3si865172igq.1.2015.03.05.13.46.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 05 Mar 2015 13:46:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,349,1422918000"; 
   d="scan'208";a="102280931"
Received: from unknown (HELO [132.207.218.42]) ([132.207.218.42])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Mar 2015 22:46:10 +0100
Date: Thu, 5 Mar 2015 16:46:08 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 31/31] Staging: rtl8192u: ieee80211:
 pr_warn instead printk
In-Reply-To: <1425578576-7227-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1503051644310.2856@hadrien>
References: <1425578576-7227-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-341094741-1425591970=:2856"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-341094741-1425591970=:2856
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 5 Mar 2015, Hatice ERTÜRK wrote:

> This patch fixes the following warning using checkpatch.pl
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
> dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

I think that this code does not compile.  Please always compile your
modified files before submitting the patch, and check that your
compilation results in a .o file for the .c file.

The dev_ functions take an extra argument, and shouldn't have the KERN_XXX
arguments.  Furthermore, it looks like you should be able to use the
netdev functions.

julia

> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
> v2:
>  Changed pr_warn and used dev_warn.
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index ff6b212..ecd8542 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
>  			struct ieee80211_hdr_3addrqos *header;
>
>  			header = (struct ieee80211_hdr_3addrqos *)frag->data;
> -			pr_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
> +			dev_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
>  			       "TX packet to %pM\n",
>  			       ieee->dev->name, header->addr1);
>  		}
> @@ -219,7 +219,7 @@ int ieee80211_encrypt_fragment(
>
>  	atomic_dec(&crypt->refcnt);
>  	if (res < 0) {
> -		pr_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
> +		dev_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
>  		       ieee->dev->name, frag->len);
>  		ieee->ieee_stats.tx_discards++;
>  		return -1;
> @@ -623,7 +623,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  	 * creating it... */
>  	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE))||
>  	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
> -		pr_warn(KERN_WARNING "%s: No xmit handler.\n",
> +		dev_warn(KERN_WARNING "%s: No xmit handler.\n",
>  		       ieee->dev->name);
>  		goto success;
>  	}
> @@ -631,7 +631,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>
>  	if(likely(ieee->raw_tx == 0)){
>  		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
> -			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
> +			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
>  			ieee->dev->name, skb->len);
>  			goto success;
>  		}
> @@ -747,7 +747,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  		* postfix, header, FCS, etc.) */
>  		txb = ieee80211_alloc_txb(nr_frags, frag_size + ieee->tx_headroom, GFP_ATOMIC);
>  		if (unlikely(!txb)) {
> -			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
> +			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
>  			ieee->dev->name);
>  			goto failed;
>  		}
> @@ -846,14 +846,14 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  		}
>  	}else{
>  		if (unlikely(skb->len < sizeof(struct ieee80211_hdr_3addr))) {
> -			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
> +			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
>  			ieee->dev->name, skb->len);
>  			goto success;
>  		}
>
>  		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
>  		if(!txb){
> -			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
> +			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425578576-7227-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-341094741-1425591970=:2856--

