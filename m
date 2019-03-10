X-GM-THRID: 6666820090157072384
X-Received: by 2002:ac2:4149:: with SMTP id c9mr1615215lfi.12.1552241548411;
        Sun, 10 Mar 2019 11:12:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:121d:: with SMTP id t29ls1687688lje.4.gmail; Sun, 10 Mar
 2019 11:12:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx5PfaUmAJB2N8NY/u0MaQ+QJzwqmFsXmdJhwgK/c9v3B/ck3dIf/ySD8u+PhqkiN1sj1Wc
X-Received: by 2002:a2e:80c7:: with SMTP id r7mr1538724ljg.10.1552241547660;
        Sun, 10 Mar 2019 11:12:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552241547; cv=none;
        d=google.com; s=arc-20160816;
        b=EMC5jRGNiefnAQvnt6KO9KrhV8jWk0uc60bRD2Vh8SxIHeKSu4lt1lig1peNfTdjym
         ShxaOVbuNJssyMt5fgEcPKxnV3c/8BDxxkyJ7wW3koyET1tI7zIq7+LRqxg99e3yUD1j
         W39e02BuD7DO1I0JevzIJFTLR0waxEHvgKju0ivZmDHh2WuP4hrniZa8v4pHGj1T+yga
         lVkSPs2hlyZrjhAO3kRaJXhWyCBo5EykHtWN7KLlgD8Jwnn7LCvhhhJFIjWW8qUgzHsH
         hRHCZWeC9slIhOwgmkOA7KCvmSMxSpl3TAmMYB31LyKOoLb6QQB4omzsx9eQcBFGDhwo
         R0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CET4EEnXGclgRUvYpI5CQ+/c85Vkbsom++87rDmwrmU=;
        b=asNHDJ43845VbR0ripB/K/98sZnvjjAI13rWksK8tUn835vxW8A3mvLg2QzsL6gooO
         ydiHSsHtcMy/9XkuHaWc1NbAI3lXpgaoO2hSYJeWoZ75tPpU0CJb8IMUVhD0I0r33F5f
         TNDI/0qhozikGAMI+gzpzL+cTCO5WL/sbzHpmnsnAVVgdQzdkCI/8lIeihr5chSjKRLA
         hrmZP6BxRoJcEw/YiFfsoQnGIOExe7kQZSgdbb7jXxWAbXyfMAyU20TXqdhF6ZvYDUEh
         clb4P77w0blBaQha6gH7sOLwM4ExD0eNepJSpstHmMIJ6JAZIpEwLHxTnSeKNSk/Dxr0
         1v0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 19si124715lje.4.2019.03.10.11.12.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:12:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="372706070"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 19:12:26 +0100
Date: Sun, 10 Mar 2019 19:12:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: rtl8192u: Remove
 typedef for struct _RX_REORDER_ENTRY
In-Reply-To: <20190310174635.16923-6-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903101908440.3131@hadrien>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com> <20190310174635.16923-6-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Mar 2019, Bhanusree Pola wrote:

> -Avoid typedefs for structure types to maintain kernel coding style.
> -Remove typedefs RX_REORDER_ENTRY  and *PRX_REORDER_ENTRY  of struct _RX_REORDER_ENTRY .
> -Change Structure name _RX_REORDER_ENTRY  to rx_reorder_entry to maintain Linux kernel Coding Style.
> -Replace occurences of RX_REORDER_ENTRY  to struct rx_reorder_entry.
> -Replace occurences of PRX_REORDER_ENTRY  to struct rx_reorder_entry *.
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h      |  6 +++---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 12 ++++++------
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
>  3 files changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 6986b51b37c4..b19b0cf01e1f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1474,11 +1474,11 @@ struct bandwidth_autoswitch {
>
>  #define REORDER_WIN_SIZE	128
>  #define REORDER_ENTRY_NUM	128
> -typedef struct _RX_REORDER_ENTRY {
> +struct rx_reorder_entry {
>  	struct list_head	List;
>  	u16			SeqNum;
>  	struct ieee80211_rxb *prxb;
> -} RX_REORDER_ENTRY, *PRX_REORDER_ENTRY;
> +};
>  //added by amy for order
>  typedef enum _Fsync_State {
>  	Default_Fsync,
> @@ -1654,7 +1654,7 @@ struct ieee80211_device {
>  	struct list_head		Rx_TS_Unused_List;
>  	struct rx_ts_record		RxTsRecord[TOTAL_TS_NUM];
>  //#ifdef TO_DO_LIST
> -	RX_REORDER_ENTRY	RxReorderEntry[128];
> +	struct rx_reorder_entry		RxReorderEntry[128];
>  	struct list_head		RxReorder_Unused_List;
>  //#endif
>  	// Qos related. Added by Annie, 2005-11-01.
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 5147f7c01e31..17d50476bdb2 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -508,16 +508,16 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  	return 1;
>  }
>
> -static bool AddReorderEntry(struct rx_ts_record *pTS, PRX_REORDER_ENTRY pReorderEntry)
> +static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *pReorderEntry)
>  {
>  	struct list_head *pList = &pTS->rx_pending_pkt_list;
>  	while(pList->next != &pTS->rx_pending_pkt_list)
>  	{
> -		if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> +		if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
>  		{
>  			pList = pList->next;
>  		}
> -		else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> +		else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
>  		{
>  			return false;
>  		}
> @@ -589,7 +589,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  				    struct rx_ts_record *pTS, u16 SeqNum)
>  {
>  	PRT_HIGH_THROUGHPUT	pHTInfo = ieee->pHTInfo;
> -	PRX_REORDER_ENTRY	pReorderEntry = NULL;
> +	struct rx_reorder_entry	*pReorderEntry = NULL;
>  	struct ieee80211_rxb **prxbIndicateArray;
>  	u8			WinSize = pHTInfo->RxReorderWinSize;
>  	u16			WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
> @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  		/* Current packet is going to be inserted into pending list.*/
>  		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
>  		if(!list_empty(&ieee->RxReorder_Unused_List)) {
> -			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
> +			pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);

You have made the 80 character problems worse.  But you are in luck,
because the casts on the return values of list_entry are useless.
list_entry is a macro and already casts its return value to the type
mentioned in its second argument.

This could be an extra patch in the series.  In that patch, for the ifs
that are above, you could also adjust the spacing around the if and the
condition expression to follow the kernel guidelines.

The patches are now much more readable with only one typedef at a time :)

julia


>  			list_del_init(&pReorderEntry->List);
>
>  			/* Make a reorder entry and insert into a the packet list.*/
> @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	/* Check if there is any packet need indicate.*/
>  	while(!list_empty(&pTS->rx_pending_pkt_list)) {
>  		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
> -		pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> +		pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
>  		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
>  		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
>  		{
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> index c76715ffa08b..aefa37b285b3 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> @@ -28,7 +28,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
>  	struct rx_ts_record     *pRxTs = from_timer(pRxTs, t, rx_pkt_pending_timer);
>  	struct ieee80211_device *ieee = container_of(pRxTs, struct ieee80211_device, RxTsRecord[pRxTs->num]);
>
> -	PRX_REORDER_ENTRY	pReorderEntry = NULL;
> +	struct rx_reorder_entry	*pReorderEntry = NULL;
>
>  	//u32 flags = 0;
>  	unsigned long flags = 0;
> @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
>  	if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
>  		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
>  		while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
> -			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTs->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> +			pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
>  			if(index == 0)
>  				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
>
> @@ -133,7 +133,7 @@ void TSInitialize(struct ieee80211_device *ieee)
>  {
>  	struct tx_ts_record     *pTxTS  = ieee->TxTsRecord;
>  	struct rx_ts_record     *pRxTS  = ieee->RxTsRecord;
> -	PRX_REORDER_ENTRY	pRxReorderEntry = ieee->RxReorderEntry;
> +	struct rx_reorder_entry	*pRxReorderEntry = ieee->RxReorderEntry;
>  	u8				count = 0;
>  	IEEE80211_DEBUG(IEEE80211_DL_TS, "==========>%s()\n", __func__);
>  	// Initialize Tx TS related info.
> @@ -418,7 +418,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
>
>  	if(TxRxSelect == RX_DIR) {
>  //#ifdef TO_DO_LIST
> -		PRX_REORDER_ENTRY	pRxReorderEntry;
> +		struct rx_reorder_entry	*pRxReorderEntry;
>  		struct rx_ts_record     *pRxTS = (struct rx_ts_record *)pTs;
>  		if(timer_pending(&pRxTS->rx_pkt_pending_timer))
>  			del_timer_sync(&pRxTS->rx_pkt_pending_timer);
> @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
>  		while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
>  			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
>  			//pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> -			pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> +			pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
>  			list_del_init(&pRxReorderEntry->List);
>  			{
>  				int i = 0;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310174635.16923-6-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

