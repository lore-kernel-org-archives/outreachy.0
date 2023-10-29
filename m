Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B5E624
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 10:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="fEf/Oa1l"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=aOJQfGhtYb9VsAE7Arrwi25l62+gf9pWuijosCEmeNE=;
  b=fEf/Oa1lPNRorem2o2jcVah1mSqOKfJwzmsSUkNjI61DOqahOv6xwBEC
   QebyRp6aP/COqmOEISdn8a64FCL3KsPlwiH7k4Hqpdps+bph5CbKOS8NI
   YUi2uJHlLE9X2A8spWiQleyNOQU6Lu2seF/kwQFk45mTE6LzptFQEj02E
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,261,1694728800"; 
   d="scan'208";a="70044546"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 11:36:13 +0100
Date: Sun, 29 Oct 2023 11:36:12 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: outreachy@lists.linux.dev, helen.fornazier@gmail.com, 
    gagallo7+outreachy@gmail.com
Subject: Re: [PATCH] Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
In-Reply-To: <20231029091913.17509-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310291131250.3136@hadrien>
References: <20231029091913.17509-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Dorine Tipo wrote:

> Fix code style issues and improve error handling in ethernet-tx.c
>
> This commit addresses the following issues in the drivers/staging/octeon/ethernet-tx.c file:
>
> 1. Removed unnecessary parentheses around conditions:
>    - Removed unnecessary parentheses around 'CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1' and 'CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1'.
>    - Removed unnecessary parentheses around 'skb->len < 64'.
>    - Removed unnecessary parentheses around 'skb->protocol == htons(ETH_P_IP)'.
>
> 2. Replaced 'BUG()' with 'WARN_ON_ONCE()' for better error handling:
>    - Replaced the use of 'BUG()' with 'WARN_ON_ONCE()' at line 454 to avoid crashing the kernel and provide more graceful error handling.
>
> 3. Removed redundant code sections:
>    - Removed the code enclosed by the #if 0 and its #endif directives at lines 577, 586, and 599 as they are no longer needed.
>
> These changes improve code readability, reduce unnecessary parentheses, and enhance error handling
> while removing redundant code sections. The code is now more in line with coding standards and best practices.

This is going better in the right direction.  But it seems that youare
doing multiple things.  Each patch should do only one thing.  Thus you
need to make a patch series.  Please read the tutorial accordingly.

I recall a comment in a mail from Dan Carpenter saying that there should
not no new occurrences of WARN_ON in the kernel.  See if you can find that
mail in the outreachy archives (I'm not sure if I saw it there, but it
seems likely).  Maybe there is an error code that you can return instead.

You are also missing your signed off by.

In any case, I think it would be better to send one single patch that does
ont single thing, and get that accepted, to be sure that you are doing the
whole process correctly, rather than trying to do many things at once.

julia

> ---
>  drivers/staging/octeon/ethernet-tx.c | 50 +++-------------------------
>  1 file changed, 5 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index bbf33b88bb7c..cdc98ce2e61e 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -153,8 +153,8 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  	 * completely remove "qos" in the event neither interface
>  	 * supports multiple queues per port.
>  	 */
> -	if ((CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1) ||
> -	    (CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1)) {
> +	if (CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1 ||
> +	    CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1) {
>  		qos = GET_SKBUFF_QOS(skb);
>  		if (qos <= 0)
>  			qos = 0;
> @@ -224,7 +224,7 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  	 * no room to add the padding.  The kernel should always give
>  	 * us at least a cache line
>  	 */
> -	if ((skb->len < 64) && OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
> +	if (skb->len < 64 && OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
>  		union cvmx_gmxx_prtx_cfg gmx_prt_cfg;
>  		int interface = INTERFACE(priv->port);
>  		int index = INDEX(priv->port);
> @@ -360,7 +360,7 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  dont_put_skbuff_in_hw:
>
>  	/* Check if we can use the hardware checksumming */
> -	if ((skb->protocol == htons(ETH_P_IP)) &&
> +	if (skb->protocol == htons(ETH_P_IP) &&
>  	    (ip_hdr(skb)->version == 4) &&
>  	    (ip_hdr(skb)->ihl == 5) &&
>  	    ((ip_hdr(skb)->frag_off == 0) ||
> @@ -451,7 +451,7 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  		__skb_queue_tail(&priv->tx_free_list[qos], skb);
>  		break;
>  	default:
> -		BUG();
> +		WARN_ON_ONCE(1);
>  	}
>
>  	while (skb_to_free > 0) {
> @@ -574,42 +574,14 @@ netdev_tx_t cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
>
>  	if (skb->protocol == htons(ETH_P_IP)) {
>  		work->word2.s.ip_offset = 14;
> -#if 0
> -		work->word2.s.vlan_valid = 0;	/* FIXME */
> -		work->word2.s.vlan_cfi = 0;	/* FIXME */
> -		work->word2.s.vlan_id = 0;	/* FIXME */
> -		work->word2.s.dec_ipcomp = 0;	/* FIXME */
> -#endif
>  		work->word2.s.tcp_or_udp =
>  		    (ip_hdr(skb)->protocol == IPPROTO_TCP) ||
>  		    (ip_hdr(skb)->protocol == IPPROTO_UDP);
> -#if 0
> -		/* FIXME */
> -		work->word2.s.dec_ipsec = 0;
> -		/* We only support IPv4 right now */
> -		work->word2.s.is_v6 = 0;
> -		/* Hardware would set to zero */
> -		work->word2.s.software = 0;
> -		/* No error, packet is internal */
> -		work->word2.s.L4_error = 0;
> -#endif
>  		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
>  					  (ip_hdr(skb)->frag_off ==
>  					      cpu_to_be16(1 << 14)));
> -#if 0
> -		/* Assume Linux is sending a good packet */
> -		work->word2.s.IP_exc = 0;
> -#endif
>  		work->word2.s.is_bcast = (skb->pkt_type == PACKET_BROADCAST);
>  		work->word2.s.is_mcast = (skb->pkt_type == PACKET_MULTICAST);
> -#if 0
> -		/* This is an IP packet */
> -		work->word2.s.not_IP = 0;
> -		/* No error, packet is internal */
> -		work->word2.s.rcv_error = 0;
> -		/* No error, packet is internal */
> -		work->word2.s.err_code = 0;
> -#endif
>
>  		/*
>  		 * When copying the data, include 4 bytes of the
> @@ -619,12 +591,6 @@ netdev_tx_t cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
>  		memcpy(work->packet_data, skb->data + 10,
>  		       sizeof(work->packet_data));
>  	} else {
> -#if 0
> -		work->word2.snoip.vlan_valid = 0;	/* FIXME */
> -		work->word2.snoip.vlan_cfi = 0;	/* FIXME */
> -		work->word2.snoip.vlan_id = 0;	/* FIXME */
> -		work->word2.snoip.software = 0;	/* Hardware would set to zero */
> -#endif
>  		work->word2.snoip.is_rarp = skb->protocol == htons(ETH_P_RARP);
>  		work->word2.snoip.is_arp = skb->protocol == htons(ETH_P_ARP);
>  		work->word2.snoip.is_bcast =
> @@ -632,12 +598,6 @@ netdev_tx_t cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
>  		work->word2.snoip.is_mcast =
>  		    (skb->pkt_type == PACKET_MULTICAST);
>  		work->word2.snoip.not_IP = 1;	/* IP was done up above */
> -#if 0
> -		/* No error, packet is internal */
> -		work->word2.snoip.rcv_error = 0;
> -		/* No error, packet is internal */
> -		work->word2.snoip.err_code = 0;
> -#endif
>  		memcpy(work->packet_data, skb->data, sizeof(work->packet_data));
>  	}
>
> --
> 2.25.1
>
>
>
