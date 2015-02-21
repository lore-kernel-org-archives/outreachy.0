X-GM-THRID: 2102830039040
X-Received: by 10.112.159.227 with SMTP id xf3mr455019lbb.11.1424553046938;
        Sat, 21 Feb 2015 13:10:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.98 with SMTP id l2ls399684laf.73.gmail; Sat, 21 Feb
 2015 13:10:46 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr462937lbc.2.1424553046638;
        Sat, 21 Feb 2015 13:10:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si374065wic.1.2015.02.21.13.10.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:10:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100872728"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:10:45 +0100
Date: Sat, 21 Feb 2015 22:10:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace C99 comments
 with C89
In-Reply-To: <1424549422-28933-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212209560.2296@localhost6.localdomain6>
References: <1424549422-28933-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Ksenija Stanojevic wrote:

> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 252 +++++++++++-----------
>  1 file changed, 126 insertions(+), 126 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index d401dbf..c4676af 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -22,7 +22,7 @@
>  
>  
>  #include <linux/compiler.h>
> -//#include <linux/config.h>
> +/* #include <linux/config.h> */
>  #include <linux/errno.h>
>  #include <linux/if_arp.h>
>  #include <linux/in6.h>
> @@ -222,8 +222,8 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
>  
>  	rx_stats->len = skb->len;
>  	ieee80211_rx_mgt(ieee,(struct ieee80211_hdr_4addr *)skb->data,rx_stats);
> -	//if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN)))
> -	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))//use ADDR1 to perform address matching for Management frames
> +	/* if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN))) */
> +	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))/* use ADDR1 to perform address matching for Management frames */

Consider moving the comments to respect the 80 character limit.

>  	{
>  		dev_kfree_skb_any(skb);
>  		return 0;
> @@ -325,7 +325,7 @@ static int ieee80211_is_eapol_frame(struct ieee80211_device *ieee,
>  		return 0;
>  
>  	/* check for port access entity Ethernet type */
> -//	pos = skb->data + 24;
> +/* pos = skb->data + 24; */

Don't change the position of code.  There are a few other occurrences 
below.

julia

>  	pos = skb->data + hdrlen;
>  	ethertype = (pos[6] << 8) | pos[7];
>  	if (ethertype == ETH_P_PAE)
> @@ -430,18 +430,18 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  	u8 tid;
>  
>  
> -	//TO2DS and QoS
> +	/* TO2DS and QoS */
>  	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
>  	  hdr_4addrqos = (struct ieee80211_hdr_4addrqos *)header;
>  	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
>  	  tid = UP2AC(tid);
>  	  tid ++;
> -	} else if(IEEE80211_QOS_HAS_SEQ(fc)) { //QoS
> +	} else if(IEEE80211_QOS_HAS_SEQ(fc)) { /* QoS */
>  	  hdr_3addrqos = (struct ieee80211_hdr_3addrqos *)header;
>  	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
>  	  tid = UP2AC(tid);
>  	  tid ++;
> -	} else { // no QoS
> +	} else { /* no QoS */
>  	  tid = 0;
>  	}
>  
> @@ -458,7 +458,7 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  			if (!memcmp(entry->mac, mac, ETH_ALEN))
>  				break;
>  		}
> -	//	if (memcmp(entry->mac, mac, ETH_ALEN)){
> +	/* if (memcmp(entry->mac, mac, ETH_ALEN)){ */
>  		if (p == &ieee->ibss_mac_hash[index]) {
>  			entry = kmalloc(sizeof(struct ieee_ibss_seq), GFP_ATOMIC);
>  			if (!entry) {
> @@ -488,19 +488,19 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  		return 0;
>  	}
>  
> -//	if(tid != 0) {
> -//		printk(KERN_WARNING ":)))))))))))%x %x %x, fc(%x)\n", tid, *last_seq, seq, header->frame_ctl);
> -//	}
> +/* if(tid != 0) { */
> +/* printk(KERN_WARNING ":)))))))))))%x %x %x, fc(%x)\n", tid, *last_seq, seq, header->frame_ctl); */
> +/* } */
>  	if ((*last_seq == seq) &&
>  	    time_after(*last_time + IEEE_PACKET_RETRY_TIME, jiffies)) {
>  		if (*last_frag == frag){
> -			//printk(KERN_WARNING "[1] go drop!\n");
> +			/* printk(KERN_WARNING "[1] go drop!\n"); */
>  			goto drop;
>  
>  		}
>  		if (*last_frag + 1 != frag)
>  			/* out-of-order fragment */
> -			//printk(KERN_WARNING "[2] go drop!\n");
> +			/* printk(KERN_WARNING "[2] go drop!\n"); */
>  			goto drop;
>  	} else
>  		*last_seq = seq;
> @@ -510,8 +510,8 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  	return 0;
>  
>  drop:
> -//	BUG_ON(!(fc & IEEE80211_FCTL_RETRY));
> -//	printk("DUP\n");
> +/* BUG_ON(!(fc & IEEE80211_FCTL_RETRY)); */
> +/* printk("DUP\n"); */
>  
>  	return 1;
>  }
> @@ -546,11 +546,11 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
>  {
>  	u8 i = 0 , j=0;
>  	u16 ethertype;
> -//	if(index > 1)
> -//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index);
> +/* if(index > 1) */
> +/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index); */
>  	for(j = 0; j<index; j++)
>  	{
> -//added by amy for reorder
> +/* added by amy for reorder */
>  		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
>  		for(i = 0; i<prxb->nr_subframes; i++) {
>  			struct sk_buff *sub_skb = prxb->subframes[i];
> @@ -574,19 +574,19 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
>  				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->src, ETH_ALEN);
>  				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->dst, ETH_ALEN);
>  			}
> -			//stats->rx_packets++;
> -			//stats->rx_bytes += sub_skb->len;
> +			/* stats->rx_packets++; */
> +			/* stats->rx_bytes += sub_skb->len; */
>  
>  		/* Indicat the packets to upper layer */
>  			if (sub_skb) {
> -				//printk("0skb_len(%d)\n", skb->len);
> +				/* printk("0skb_len(%d)\n", skb->len); */
>  				sub_skb->protocol = eth_type_trans(sub_skb, ieee->dev);
>  				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
>  				sub_skb->dev = ieee->dev;
>  				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
> -				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
> +				/* skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */ */
>  				ieee->last_rx_ps_time = jiffies;
> -				//printk("1skb_len(%d)\n", skb->len);
> +				/* printk("1skb_len(%d)\n", skb->len); */
>  				netif_rx(sub_skb);
>  			}
>  		}
> @@ -660,11 +660,11 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packets indication!! IndicateSeq: %d, NewSeq: %d\n",\
>  				pTS->RxIndicateSeq, SeqNum);
>  		prxbIndicateArray[0] = prxb;
> -//		printk("========================>%s(): SeqNum is %d\n",__func__,SeqNum);
> +/* printk("========================>%s(): SeqNum is %d\n",__func__,SeqNum); */
>  		index = 1;
>  	} else {
>  		/* Current packet is going to be inserted into pending list.*/
> -		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
> +		/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__); */
>  		if(!list_empty(&ieee->RxReorder_Unused_List)) {
>  			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
>  			list_del_init(&pReorderEntry->List);
> @@ -672,7 +672,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  			/* Make a reorder entry and insert into a the packet list.*/
>  			pReorderEntry->SeqNum = SeqNum;
>  			pReorderEntry->prxb = prxb;
> -	//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pREorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
> +	/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pREorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum); */
>  
>  			if(!AddReorderEntry(pTS, pReorderEntry)) {
>  				IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Duplicate packet is dropped!! IndicateSeq: %d, NewSeq: %d\n",
> @@ -730,7 +730,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  
>  			IEEE80211_DEBUG(IEEE80211_DL_REORDER,"Packets indication!! IndicateSeq: %d, NewSeq: %d\n",pTS->RxIndicateSeq, SeqNum);
>  			prxbIndicateArray[index] = pReorderEntry->prxb;
> -		//	printk("========================>%s(): pReorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
> +		/* printk("========================>%s(): pReorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum); */
>  			index++;
>  
>  			list_add_tail(&pReorderEntry->List,&ieee->RxReorder_Unused_List);
> @@ -742,11 +742,11 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  
>  	/* Handling pending timer. Set this timer to prevent from long time Rx buffering.*/
>  	if(index>0) {
> -		// Cancel previous pending timer.
> -	//	del_timer_sync(&pTS->RxPktPendingTimer);
> +		/* Cancel previous pending timer. */
> +	/* del_timer_sync(&pTS->RxPktPendingTimer); */
>  		pTS->RxTimeoutIndicateSeq = 0xffff;
>  
> -		// Indicate packets
> +		/* Indicate packets */
>  		if(index>REORDER_WIN_SIZE){
>  			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Rx Reorer buffer full!! \n");
>  			return;
> @@ -755,7 +755,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	}
>  
>  	if(bPktInBuf && pTS->RxTimeoutIndicateSeq==0xffff) {
> -		// Set new pending timer.
> +		/* Set new pending timer. */
>  		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): SET rx timeout timer\n", __func__);
>  		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
>  		if(timer_pending(&pTS->RxPktPendingTimer))
> @@ -796,8 +796,8 @@ static u8 parse_subframe(struct sk_buff *skb,
>  	if(rx_stats->bContainHTC) {
>  		LLCOffset += sHTCLng;
>  	}
> -	//printk("ChkLength = %d\n", LLCOffset);
> -	// Null packet, don't indicate it to upper layer
> +	/* printk("ChkLength = %d\n", LLCOffset); */
> +	/* Null packet, don't indicate it to upper layer */
>  	ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
>  
>  	if (skb->len <= ChkLength)
> @@ -815,7 +815,7 @@ static u8 parse_subframe(struct sk_buff *skb,
>  
>  		memcpy(rxb->src,src,ETH_ALEN);
>  		memcpy(rxb->dst,dst,ETH_ALEN);
> -		//IEEE80211_DEBUG_DATA(IEEE80211_DL_RX,skb->data,skb->len);
> +		/* IEEE80211_DEBUG_DATA(IEEE80211_DL_RX,skb->data,skb->len); */
>  		return 1;
>  	} else {
>  		rxb->nr_subframes = 0;
> @@ -824,7 +824,7 @@ static u8 parse_subframe(struct sk_buff *skb,
>  		while(skb->len > ETHERNET_HEADER_SIZE) {
>  			/* Offset 12 denote 2 mac address */
>  			nSubframe_Length = *((u16 *)(skb->data + 12));
> -			//==m==>change the length order
> +			/* ==m==>change the length order */
>  			nSubframe_Length = (nSubframe_Length>>8) + (nSubframe_Length<<8);
>  
>  			if(skb->len<(ETHERNET_HEADER_SIZE + nSubframe_Length)) {
> @@ -875,9 +875,9 @@ static u8 parse_subframe(struct sk_buff *skb,
>  #ifdef JOHN_NOCPY
>  		dev_kfree_skb(skb);
>  #endif
> -		//{just for debug added by david
> -		//printk("AMSDU::rxb->nr_subframes = %d\n",rxb->nr_subframes);
> -		//}
> +		/* {just for debug added by david */
> +		/* printk("AMSDU::rxb->nr_subframes = %d\n",rxb->nr_subframes); */
> +		/* } */
>  		return rxb->nr_subframes;
>  	}
>  }
> @@ -890,7 +890,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  {
>  	struct net_device *dev = ieee->dev;
>  	struct ieee80211_hdr_4addr *hdr;
> -	//struct ieee80211_hdr_3addrqos *hdr;
> +	/* struct ieee80211_hdr_3addrqos *hdr; */
>  
>  	size_t hdrlen;
>  	u16 fc, type, stype, sc;
> @@ -898,12 +898,12 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	unsigned int frag;
>  	u8 *payload;
>  	u16 ethertype;
> -	//added by amy for reorder
> +	/* added by amy for reorder */
>  	u8	TID = 0;
>  	u16	SeqNum = 0;
>  	PRX_TS_RECORD pTS = NULL;
> -	//bool bIsAggregateFrame = false;
> -	//added by amy for reorder
> +	/* bool bIsAggregateFrame = false; */
> +	/* added by amy for reorder */
>  #ifdef NOT_YET
>  	struct net_device *wds = NULL;
>  	struct sk_buff *skb2 = NULL;
> @@ -912,7 +912,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	int from_assoc_ap = 0;
>  	void *sta = NULL;
>  #endif
> -//	u16 qos_ctl = 0;
> +/* u16 qos_ctl = 0; */
>  	u8 dst[ETH_ALEN];
>  	u8 src[ETH_ALEN];
>  	u8 bssid[ETH_ALEN];
> @@ -921,7 +921,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  
>  	int i;
>  	struct ieee80211_rxb *rxb = NULL;
> -	// cheat the the hdr type
> +	/* cheat the the hdr type */
>  	hdr = (struct ieee80211_hdr_4addr *)skb->data;
>  	stats = &ieee->stats;
>  
> @@ -947,7 +947,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  		rx_stats->bContainHTC = 1;
>  	}
>  
> -	//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
> +	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len); */
>  #ifdef NOT_YET
>  	/* Put this code here so that we avoid duplicating it in all
>  	 * Rx paths. - Jean II */
> @@ -1014,7 +1014,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	if (skb->len < IEEE80211_DATA_HDR3_LEN)
>  		goto rx_dropped;
>  
> -	// if QoS enabled, should check the sequence for each of the AC
> +	/* if QoS enabled, should check the sequence for each of the AC */
>  	if( (ieee->pHTInfo->bCurRxReorderEnable == false) || !ieee->current_network.qos_data.active|| !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)){
>  		if (is_duplicate_packet(ieee, hdr))
>  		goto rx_dropped;
> @@ -1023,7 +1023,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	else
>  	{
>  		PRX_TS_RECORD pRxTS = NULL;
> -			//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n",__func__, tid);
> +			/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n",__func__, tid); */
>  		if(GetTs(
>  				ieee,
>  				(PTS_COMMON_INFO *) &pRxTS,
> @@ -1033,7 +1033,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  				true))
>  		{
>  
> -		//	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pRxTS->RxLastFragNum is %d,frag is %d,pRxTS->RxLastSeqNum is %d,seq is %d\n",__func__,pRxTS->RxLastFragNum,frag,pRxTS->RxLastSeqNum,WLAN_GET_SEQ_SEQ(sc));
> +		/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pRxTS->RxLastFragNum is %d,frag is %d,pRxTS->RxLastSeqNum is %d,seq is %d\n",__func__,pRxTS->RxLastFragNum,frag,pRxTS->RxLastSeqNum,WLAN_GET_SEQ_SEQ(sc)); */
>  			if ((fc & (1<<11)) &&
>  			    (frag == pRxTS->RxLastFragNum) &&
>  			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->RxLastSeqNum)) {
> @@ -1054,7 +1054,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	if (type == IEEE80211_FTYPE_MGMT) {
>  
>  
> -	//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
> +	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len); */
>  		if (ieee80211_rx_frame_mgmt(ieee, skb, rx_stats, type, stype))
>  			goto rx_dropped;
>  		else
> @@ -1127,14 +1127,14 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  		}
>  	}
>  #endif
> -	//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
> +	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len); */
>  	/* Nullfunc frames may have PS-bit set, so they must be passed to
>  	 * hostap_handle_sta_rx() before being dropped here. */
>  	if (stype != IEEE80211_STYPE_DATA &&
>  	    stype != IEEE80211_STYPE_DATA_CFACK &&
>  	    stype != IEEE80211_STYPE_DATA_CFPOLL &&
>  	    stype != IEEE80211_STYPE_DATA_CFACKPOLL&&
> -	    stype != IEEE80211_STYPE_QOS_DATA//add by David,2006.8.4
> +	    stype != IEEE80211_STYPE_QOS_DATA/* add by David,2006.8.4 */
>  	    ) {
>  		if (stype != IEEE80211_STYPE_NULLFUNC)
>  			IEEE80211_DEBUG_DROP(
> @@ -1160,8 +1160,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	hdr = (struct ieee80211_hdr_4addr *) skb->data;
>  
>  	/* skb: hdr + (possibly fragmented) plaintext payload */
> -	// PR: FIXME: hostap has additional conditions in the "if" below:
> -	// ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
> +	/* PR: FIXME: hostap has additional conditions in the "if" below: */
> +	/* ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) && */
>  	if ((frag != 0 || (fc & IEEE80211_FCTL_MOREFRAGS))) {
>  		int flen;
>  		struct sk_buff *frag_skb = ieee80211_frag_cache_get(ieee, hdr);
> @@ -1223,7 +1223,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  		goto rx_dropped;
>  	}
>  
> -	//added by amy for AP roaming
> +	/* added by amy for AP roaming */
>  	ieee->LinkDetectInfo.NumRecvDataInPeriod++;
>  	ieee->LinkDetectInfo.NumRxOkInPeriod++;
>  
> @@ -1273,7 +1273,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  		printk(KERN_WARNING "RX: IEEE802.1X EPAOL frame!\n");
>  	}
>  */
> -//added by amy for reorder
> +/* added by amy for reorder */
>  	if(ieee->current_network.qos_data.active && IsQoSDataFrame(skb->data)
>  		&& !is_multicast_ether_addr(hdr->addr1))
>  	{
> @@ -1285,10 +1285,10 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  			ieee->bis_any_nonbepkts = true;
>  		}
>  	}
> -//added by amy for reorder
> +/* added by amy for reorder */
>  	/* skb: hdr + (possible reassembled) full plaintext payload */
>  	payload = skb->data + hdrlen;
> -	//ethertype = (payload[6] << 8) | payload[7];
> +	/* ethertype = (payload[6] << 8) | payload[7]; */
>  	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
>  	if(rxb == NULL)
>  	{
> @@ -1307,9 +1307,9 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  		goto rx_dropped;
>  	}
>  
> -//added by amy for reorder
> +/* added by amy for reorder */
>  	if(ieee->pHTInfo->bCurRxReorderEnable == false ||pTS == NULL){
> -//added by amy for reorder
> +/* added by amy for reorder */
>  		for(i = 0; i<rxb->nr_subframes; i++) {
>  			struct sk_buff *sub_skb = rxb->subframes[i];
>  
> @@ -1341,14 +1341,14 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  				}
>  
>  				/* Indicat the packets to upper layer */
> -				//printk("0skb_len(%d)\n", skb->len);
> +				/* printk("0skb_len(%d)\n", skb->len); */
>  				sub_skb->protocol = eth_type_trans(sub_skb, dev);
>  				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
>  				sub_skb->dev = dev;
>  				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
> -				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
> +				/* skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */ */
>  				ieee->last_rx_ps_time = jiffies;
> -				//printk("1skb_len(%d)\n", skb->len);
> +				/* printk("1skb_len(%d)\n", skb->len); */
>  				netif_rx(sub_skb);
>  			}
>  		}
> @@ -1478,8 +1478,8 @@ static int ieee80211_qos_convert_ac_to_parameters(struct
>  	int i;
>  	struct ieee80211_qos_ac_parameter *ac_params;
>  	u8 aci;
> -	//u8 cw_min;
> -	//u8 cw_max;
> +	/* u8 cw_min; */
> +	/* u8 cw_max; */
>  
>  	for (i = 0; i < QOS_QUEUE_NUM; i++) {
>  		ac_params = &(param_elm->ac_params_record[i]);
> @@ -1572,7 +1572,7 @@ static const char *get_info_element_string(u16 id)
>  		MFIE_STRING(MEASURE_REPORT);
>  		MFIE_STRING(QUIET);
>  		MFIE_STRING(IBSS_DFS);
> -	       // MFIE_STRING(ERP_INFO);
> +	       /* MFIE_STRING(ERP_INFO); */
>  		MFIE_STRING(RSN);
>  		MFIE_STRING(RATES_EX);
>  		MFIE_STRING(GENERIC);
> @@ -1603,11 +1603,11 @@ static inline void ieee80211_extract_country_ie(
>  			}
>  		}
>  
> -		//
> -		// 070305, rcnjko: I update country IE watch dog here because
> -		// some AP (e.g. Cisco 1242) don't include country IE in their
> -		// probe response frame.
> -		//
> +		/*  */
> +		/* 070305, rcnjko: I update country IE watch dog here because */
> +		/* some AP (e.g. Cisco 1242) don't include country IE in their */
> +		/* probe response frame. */
> +		/*  */
>  		if(IS_EQUAL_CIE_SRC(ieee, addr2) )
>  		{
>  			UPDATE_CIE_WATCHDOG(ieee);
> @@ -1628,7 +1628,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  	u16	tmp_htinfo_len=0;
>  	u16 ht_realtek_agg_len=0;
>  	u8  ht_realtek_agg_buf[MAX_IE_LEN];
> -//	u16 broadcom_len = 0;
> +/* u16 broadcom_len = 0; */
>  #ifdef CONFIG_IEEE80211_DEBUG
>  	char rates_str[64];
>  	char *p;
> @@ -1759,19 +1759,19 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  
>  			offset = (info_element->data[2] >> 1)*2;
>  
> -			//printk("offset1:%x aid:%x\n",offset, ieee->assoc_id);
> +			/* printk("offset1:%x aid:%x\n",offset, ieee->assoc_id); */
>  
>  			if(ieee->assoc_id < 8*offset ||
>  				ieee->assoc_id > 8*(offset + info_element->len -3))
>  
>  				break;
>  
> -			offset = (ieee->assoc_id / 8) - offset;// + ((aid % 8)? 0 : 1) ;
> +			offset = (ieee->assoc_id / 8) - offset;/* + ((aid % 8)? 0 : 1) ; */
>  
>  			if(info_element->data[3+offset] & (1<<(ieee->assoc_id%8)))
>  				network->dtim_data |= IEEE80211_DTIM_UCAST;
>  
> -			//IEEE80211_DEBUG_MGMT("MFIE_TYPE_TIM: partially ignored\n");
> +			/* IEEE80211_DEBUG_MGMT("MFIE_TYPE_TIM: partially ignored\n"); */
>  			break;
>  
>  		case MFIE_TYPE_ERP:
> @@ -1820,7 +1820,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  			}
>  #endif
>  
> -			//for HTcap and HTinfo parameters
> +			/* for HTcap and HTinfo parameters */
>  			if(tmp_htcap_len == 0){
>  				if(info_element->len >= 4 &&
>  				   info_element->data[0] == 0x00 &&
> @@ -1886,7 +1886,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  
>  			}
>  
> -			//if(tmp_htcap_len !=0  ||  tmp_htinfo_len != 0)
> +			/* if(tmp_htcap_len !=0  ||  tmp_htinfo_len != 0) */
>  			{
>  				if((info_element->len >= 3 &&
>  					 info_element->data[0] == 0x00 &&
> @@ -1914,7 +1914,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  			}
>  			else
>  				network->ralink_cap_exist = false;
> -			//added by amy for atheros AP
> +			/* added by amy for atheros AP */
>  			if((info_element->len >= 3 &&
>  				info_element->data[0] == 0x00 &&
>  				info_element->data[1] == 0x03 &&
> @@ -1939,7 +1939,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  			}
>  			else
>  				network->cisco_cap_exist = false;
> -			//added by amy for LEAP of cisco
> +			/* added by amy for LEAP of cisco */
>  			if(info_element->len > 4 &&
>  				info_element->data[0] == 0x00 &&
>  				info_element->data[1] == 0x40 &&
> @@ -1955,9 +1955,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  					}
>  					else
>  						network->bCcxRmEnable = false;
> -					//
> -					// CCXv4 Table 59-1 MBSSID Masks.
> -					//
> +					/*  */
> +					/* CCXv4 Table 59-1 MBSSID Masks. */
> +					/*  */
>  					network->MBssidMask = network->CcxRmState[1] & 0x07;
>  					if(network->MBssidMask != 0)
>  					{
> @@ -2004,7 +2004,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  			       network->rsn_ie_len);
>  			break;
>  
> -			//HT related element.
> +			/* HT related element. */
>  		case MFIE_TYPE_HT_CAP:
>  			IEEE80211_DEBUG_SCAN("MFIE_TYPE_HT_CAP: %d bytes\n",
>  					     info_element->len);
> @@ -2015,9 +2015,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  					sizeof(network->bssht.bdHTCapBuf):tmp_htcap_len;
>  				memcpy(network->bssht.bdHTCapBuf,info_element->data,network->bssht.bdHTCapLen);
>  
> -				//If peer is HT, but not WMM, call QosSetLegacyWMMParamWithHT()
> -				// windows driver will update WMM parameters each beacon received once connected
> -				// Linux driver is a bit different.
> +				/* If peer is HT, but not WMM, call QosSetLegacyWMMParamWithHT() */
> +				/* windows driver will update WMM parameters each beacon received once connected */
> +				/* Linux driver is a bit different. */
>  				network->bssht.bdSupportHT = true;
>  			}
>  			else
> @@ -2044,9 +2044,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  			{
>  				network->bWithAironetIE = true;
>  
> -				// CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23):
> -				// "A Cisco access point advertises support for CKIP in beacon and probe response packets,
> -				//  by adding an Aironet element and setting one or both of the CKIP negotiation bits."
> +				/* CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23): */
> +				/* "A Cisco access point advertises support for CKIP in beacon and probe response packets, */
> +				/* by adding an Aironet element and setting one or both of the CKIP negotiation bits." */
>  				if(	(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_MIC)	||
>  					(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_PK)	)
>  				{
> @@ -2071,8 +2071,8 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  		case MFIE_TYPE_COUNTRY:
>  			IEEE80211_DEBUG_SCAN("MFIE_TYPE_COUNTRY: %d bytes\n",
>  					     info_element->len);
> -			//printk("=====>Receive <%s> Country IE\n",network->ssid);
> -			ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);//addr2 is same as addr3 when from an AP
> +			/* printk("=====>Receive <%s> Country IE\n",network->ssid); */
> +			ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);/* addr2 is same as addr3 when from an AP */
>  			break;
>  /* TODO */
>  		default:
> @@ -2107,7 +2107,7 @@ static inline u8 ieee80211_SignalStrengthTranslate(
>  {
>  	u8 RetSS;
>  
> -	// Step 1. Scale mapping.
> +	/* Step 1. Scale mapping. */
>  	if(CurrSS >= 71 && CurrSS <= 100)
>  	{
>  		RetSS = 90 + ((CurrSS - 70) / 3);
> @@ -2148,11 +2148,11 @@ static inline u8 ieee80211_SignalStrengthTranslate(
>  	{
>  		RetSS = CurrSS;
>  	}
> -	//RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
> +	/* RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS)); */
>  
> -	// Step 2. Smoothing.
> +	/* Step 2. Smoothing. */
>  
> -	//RT_TRACE(COMP_DBG, DBG_LOUD, ("$$$$$ After Smoothing:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
> +	/* RT_TRACE(COMP_DBG, DBG_LOUD, ("$$$$$ After Smoothing:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS)); */
>  
>  	return RetSS;
>  }
> @@ -2160,9 +2160,9 @@ static inline u8 ieee80211_SignalStrengthTranslate(
>  /* 0-100 index */
>  static long ieee80211_translate_todbm(u8 signal_strength_index)
>  {
> -	long	signal_power; // in dBm.
> +	long	signal_power; /* in dBm. */
>  
> -	// Translate to dBm (x=0.5y-95).
> +	/* Translate to dBm (x=0.5y-95). */
>  	signal_power = (long)((signal_strength_index + 1) >> 1);
>  	signal_power -= 95;
>  
> @@ -2176,8 +2176,8 @@ static inline int ieee80211_network_init(
>  	struct ieee80211_rx_stats *stats)
>  {
>  #ifdef CONFIG_IEEE80211_DEBUG
> -	//char rates_str[64];
> -	//char *p;
> +	/* char rates_str[64]; */
> +	/* char *p; */
>  #endif
>  
>  	network->qos_data.active = 0;
> @@ -2212,8 +2212,8 @@ static inline int ieee80211_network_init(
>  #endif
>  	network->CountryIeLen = 0;
>  	memset(network->CountryIeBuf, 0, MAX_IE_LEN);
> -//Initialize HT parameters
> -	//ieee80211_ht_initialize(&network->bssht);
> +/* Initialize HT parameters */
> +	/* ieee80211_ht_initialize(&network->bssht); */
>  	HTInitializeBssDesc(&network->bssht);
>  	if (stats->freq == IEEE80211_52GHZ_BAND) {
>  		/* for A band (No DS info) */
> @@ -2257,7 +2257,7 @@ static inline int ieee80211_network_init(
>  		network->flags |= NETWORK_EMPTY_ESSID;
>  
>  	stats->signal = 30 + (stats->SignalStrength * 70) / 100;
> -	//stats->signal = ieee80211_SignalStrengthTranslate(stats->signal);
> +	/* stats->signal = ieee80211_SignalStrengthTranslate(stats->signal); */
>  	stats->noise = ieee80211_translate_todbm((u8)(100-stats->signal)) -25;
>  
>  	memcpy(&network->stats, stats, sizeof(network->stats));
> @@ -2272,11 +2272,11 @@ static inline int is_same_network(struct ieee80211_network *src,
>  	 * and the capability field (in particular IBSS and BSS) all match.
>  	 * We treat all <hidden> with the same BSSID and channel
>  	 * as one network */
> -	return //((src->ssid_len == dst->ssid_len) &&
> +	return /* ((src->ssid_len == dst->ssid_len) && */
>  		(((src->ssid_len == dst->ssid_len) || (ieee->iw_mode == IW_MODE_INFRA)) &&
>  		(src->channel == dst->channel) &&
>  		!memcmp(src->bssid, dst->bssid, ETH_ALEN) &&
> -		//!memcmp(src->ssid, dst->ssid, src->ssid_len) &&
> +		/* !memcmp(src->ssid, dst->ssid, src->ssid_len) && */
>  		(!memcmp(src->ssid, dst->ssid, src->ssid_len) || (ieee->iw_mode == IW_MODE_INFRA)) &&
>  		((src->capability & WLAN_CAPABILITY_IBSS) ==
>  		(dst->capability & WLAN_CAPABILITY_IBSS)) &&
> @@ -2340,9 +2340,9 @@ static inline void update_network(struct ieee80211_network *dst,
>  
>  	dst->last_scanned = jiffies;
>  	/* qos related parameters */
> -	//qos_active = src->qos_data.active;
> +	/* qos_active = src->qos_data.active; */
>  	qos_active = dst->qos_data.active;
> -	//old_param = dst->qos_data.old_param_count;
> +	/* old_param = dst->qos_data.old_param_count; */
>  	old_param = dst->qos_data.param_count;
>  	if(dst->flags & NETWORK_HAS_QOS_MASK)
>  		memcpy(&dst->qos_data, &src->qos_data,
> @@ -2366,14 +2366,14 @@ static inline void update_network(struct ieee80211_network *dst,
>  	dst->qos_data.old_param_count = old_param;
>  
>  	/* dst->last_associate is not overwritten */
> -	dst->wmm_info = src->wmm_info; //sure to exist in beacon or probe response frame.
> +	dst->wmm_info = src->wmm_info; /* sure to exist in beacon or probe response frame. */
>  	if(src->wmm_param[0].ac_aci_acm_aifsn|| \
>  	   src->wmm_param[1].ac_aci_acm_aifsn|| \
>  	   src->wmm_param[2].ac_aci_acm_aifsn|| \
>  	   src->wmm_param[3].ac_aci_acm_aifsn) {
>  	  memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
>  	}
> -	//dst->QoS_Enable = src->QoS_Enable;
> +	/* dst->QoS_Enable = src->QoS_Enable; */
>  #ifdef THOMAS_TURBO
>  	dst->Turbo_Enable = src->Turbo_Enable;
>  #endif
> @@ -2381,7 +2381,7 @@ static inline void update_network(struct ieee80211_network *dst,
>  	dst->CountryIeLen = src->CountryIeLen;
>  	memcpy(dst->CountryIeBuf, src->CountryIeBuf, src->CountryIeLen);
>  
> -	//added by amy for LEAP
> +	/* added by amy for LEAP */
>  	dst->bWithAironetIE = src->bWithAironetIE;
>  	dst->bCkipSupported = src->bCkipSupported;
>  	memcpy(dst->CcxRmState, src->CcxRmState, 2);
> @@ -2412,7 +2412,7 @@ static inline void ieee80211_process_probe_response(
>  #endif
>  	unsigned long flags;
>  	short renew;
> -	//u8 wmm_info;
> +	/* u8 wmm_info; */
>  
>  	memset(&network, 0, sizeof(struct ieee80211_network));
>  	IEEE80211_DEBUG_SCAN(
> @@ -2447,12 +2447,12 @@ static inline void ieee80211_process_probe_response(
>  		return;
>  	}
>  
> -	// For Asus EeePc request,
> -	// (1) if wireless adapter receive get any 802.11d country code in AP beacon,
> -	//	   wireless adapter should follow the country code.
> -	// (2)  If there is no any country code in beacon,
> -	//       then wireless adapter should do active scan from ch1~11 and
> -	//       passive scan from ch12~14
> +	/* For Asus EeePc request, */
> +	/* (1) if wireless adapter receive get any 802.11d country code in AP beacon, */
> +	/* wireless adapter should follow the country code. */
> +	/* (2)  If there is no any country code in beacon, */
> +	/* then wireless adapter should do active scan from ch1~11 and */
> +	/* passive scan from ch12~14 */
>  
>  	if (!IsLegalChannel(ieee, network.channel))
>  		return;
> @@ -2460,7 +2460,7 @@ static inline void ieee80211_process_probe_response(
>  	{
>  		if (WLAN_FC_GET_STYPE(beacon->header.frame_ctl) == IEEE80211_STYPE_PROBE_RESP)
>  		{
> -			// Case 1: Country code
> +			/* Case 1: Country code */
>  			if(IS_COUNTRY_IE_VALID(ieee) )
>  			{
>  				if (!IsLegalChannel(ieee, network.channel)) {
> @@ -2468,10 +2468,10 @@ static inline void ieee80211_process_probe_response(
>  					return;
>  				}
>  			}
> -			// Case 2: No any country code.
> +			/* Case 2: No any country code. */
>  			else
>  			{
> -				// Filter over channel ch12~14
> +				/* Filter over channel ch12~14 */
>  				if(network.channel > 11)
>  				{
>  					printk("GetScanInfo(): For Global Domain, filter probe response at channel(%d).\n", network.channel);
> @@ -2481,7 +2481,7 @@ static inline void ieee80211_process_probe_response(
>  		}
>  		else
>  		{
> -			// Case 1: Country code
> +			/* Case 1: Country code */
>  			if(IS_COUNTRY_IE_VALID(ieee) )
>  			{
>  				if (!IsLegalChannel(ieee, network.channel)) {
> @@ -2489,10 +2489,10 @@ static inline void ieee80211_process_probe_response(
>  					return;
>  				}
>  			}
> -			// Case 2: No any country code.
> +			/* Case 2: No any country code. */
>  			else
>  			{
> -				// Filter over channel ch12~14
> +				/* Filter over channel ch12~14 */
>  				if(network.channel > 14)
>  				{
>  					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n",network.channel);
> @@ -2528,7 +2528,7 @@ static inline void ieee80211_process_probe_response(
>  			if(ieee->state == IEEE80211_LINKED)
>  				ieee->LinkDetectInfo.NumRecvBcnInPeriod++;
>  		}
> -		else //hidden AP
> +		else /* hidden AP */
>  			network.flags = (~NETWORK_EMPTY_ESSID & network.flags)|(NETWORK_EMPTY_ESSID & ieee->current_network.flags);
>  	}
>  
> @@ -2587,16 +2587,16 @@ static inline void ieee80211_process_probe_response(
>  		 * net and call the new_net handler
>  		 */
>  		renew = !time_after(target->last_scanned + ieee->scan_age, jiffies);
> -		//YJ,add,080819,for hidden ap
> +		/* YJ,add,080819,for hidden ap */
>  		if(is_beacon(beacon->header.frame_ctl) == 0)
>  			network.flags = (~NETWORK_EMPTY_ESSID & network.flags)|(NETWORK_EMPTY_ESSID & target->flags);
> -		//if(strncmp(network.ssid, "linksys-c",9) == 0)
> -		//	printk("====>2 network.ssid=%s FLAG=%d target.ssid=%s FLAG=%d\n", network.ssid, network.flags, target->ssid, target->flags);
> +		/* if(strncmp(network.ssid, "linksys-c",9) == 0) */
> +		/* printk("====>2 network.ssid=%s FLAG=%d target.ssid=%s FLAG=%d\n", network.ssid, network.flags, target->ssid, target->flags); */
>  		if(((network.flags & NETWORK_EMPTY_ESSID) == NETWORK_EMPTY_ESSID) \
>  		    && (((network.ssid_len > 0) && (strncmp(target->ssid, network.ssid, network.ssid_len)))\
>  		    ||((ieee->current_network.ssid_len == network.ssid_len)&&(strncmp(ieee->current_network.ssid, network.ssid, network.ssid_len) == 0)&&(ieee->state == IEEE80211_NOLINK))))
>  			renew = 1;
> -		//YJ,add,080819,for hidden ap,end
> +		/* YJ,add,080819,for hidden ap,end */
>  
>  		update_network(target, &network);
>  		if(renew && (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE))
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424549422-28933-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

