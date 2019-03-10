X-GM-THRID: 6666794148561944576
X-Received: by 2002:a1c:c00c:: with SMTP id q12mr2082295wmf.5.1552234334149;
        Sun, 10 Mar 2019 09:12:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c0cc:: with SMTP id s12ls131790wmh.14.gmail; Sun, 10 Mar
 2019 09:12:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfq6fuf3c5DDgRxoI+R8nSqw9dVceBX3nTysMO+1sxm70aj9e9wcuL3xiA6NoYUawUvk7O
X-Received: by 2002:a1c:a702:: with SMTP id q2mr2006048wme.0.1552234333318;
        Sun, 10 Mar 2019 09:12:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552234333; cv=none;
        d=google.com; s=arc-20160816;
        b=rZ49gJZ/v5LTVg1Lwkdg7fl62oRkzyNCAFl+GXhjuI/0aYEnur3K3hFL3AmU3LAQzz
         6BBBOVfltUQRx2CH2WKU/vBaF+y0ZEC1r/cVu8vb99m7iy3pNWT1n6JkA3Q5XbLAtUXe
         R0l9bNdF5U0pXUfgst4PJJbyy++VOC8XMZyQ4y7/2TD+LxksqJFTuQwl/rXucUJP9wjS
         uR7klD3IqsxnMbBBwx8wjpwaaDFil1oL+gLhDY2xqP54GPFJnn8vjeg1PS/cXNB/NuPG
         Fu30gPlo4ThGXWRlLR3T4o+yrUXNFy7RduNrL42Dx2itTTG0eyMI2UTmNK5yhHAtdfDw
         N6rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fqIffjSqoAyDkP6nHclZyzx26AlROfsyCeppzsTdIR0=;
        b=wZyZJ5hJnYu6et5DOjBHR995s/D+kdhcnlLlKKGlvFXQPhTEqDCPkv5+Pwb2vNhu/v
         I/eq9oYp4Rft5dWPNAfbMqAEiVrl9NMsK9ADiDVr2wH6vevtkQ4yW8mouvGOB8XHLhvX
         Xf6krqJcI8L0iUOdr4CpIkKrFZaialf3CcKoOkK9trQeIx3RQ6oM3fGow1LvLyzQqq+e
         YYN50/mNXzZOCSX4h+Xa5mpOQ65bNRkypoutAybUnbEpmuWhSG9g7+GH6DJReDwW5pt2
         1gTRrqcSWN+Epj3qJsEEYX3o/8xZbI0MAQzu+u5ZGxV5eT5f25hLEpqDzupzN+cEexZr
         68pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r15si609893wmc.4.2019.03.10.09.12.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:12:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,464,1544482800"; 
   d="scan'208";a="298707021"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 17:12:12 +0100
Date: Sun, 10 Mar 2019 17:12:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8192: Remove occurances
 of typedef struct datatypes
In-Reply-To: <20190310160554.4479-3-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903101709320.3131@hadrien>
References: <20190310160554.4479-1-bhanusreemahesh@gmail.com> <20190310160554.4479-3-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Mar 2019, Bhanusree Pola wrote:

> Remove all occurances of typedef struct type datatypes.
> Replace all occurances of IbssParms with struct _IbssParms
> Replace all occurances of RX_REORDER_ENTRY with struct _RX_REORDER_ENTRY
> Replace all occurances of bandwidth_autoswitch with struct _bandwidth_autoswitch
> Replace all occurances of RT_LINK_DETECT_T with struct _RT_LINK_DETECT_T
> Replace all occurances of RT_POWER_SAVE_CONTROL with struct _RT_POWER_SAVE_CONTROL
> Replace all occurances of PRX_REORDER_ENTRY with struct _RX_REORDER_ENTRY *

You need to respect the principle that the kernel should compile at all
times.  So if you remove a typedef, then you should update the uses in the
same patch.

Also, you should choose struct names that correspond to the Linux kernel
coding style.  So, no underscores in front of names, no _T at the end of
the name, and no camel case or names in all capital letters (except for
macros).

The patches will be much easier to review if you make a series with one
patch per structure.

julia

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h      | 10 +++++-----
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 12 ++++++------
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
>  3 files changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index b1036d522640..092ae4621e04 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1554,7 +1554,7 @@ struct _RT_POWER_SAVE_CONTROL {
>  	struct octet_string			tmpSuppRateSet;
>  	u8					tmpSuppRateBuf[MAX_NUM_RATES];
>  	bool				bTmpSuppRate;
> -	IbssParms				tmpIbpm;
> +	struct _IbssParms				tmpIbpm;
>  	bool				bTmpIbpm;
>
>  	//
> @@ -1654,7 +1654,7 @@ struct ieee80211_device {
>  	struct list_head		Rx_TS_Unused_List;
>  	struct rx_ts_record		RxTsRecord[TOTAL_TS_NUM];
>  //#ifdef TO_DO_LIST
> -	RX_REORDER_ENTRY	RxReorderEntry[128];
> +	struct	_RX_REORDER_ENTRY	RxReorderEntry[128];
>  	struct list_head		RxReorder_Unused_List;
>  //#endif
>  	// Qos related. Added by Annie, 2005-11-01.
> @@ -1871,14 +1871,14 @@ struct ieee80211_device {
>  	Fsync_State			fsync_state;
>  	bool		bis_any_nonbepkts;
>  	//20Mhz 40Mhz AutoSwitch Threshold
> -	bandwidth_autoswitch bandwidth_auto_switch;
> +	struct _bandwidth_autoswitch bandwidth_auto_switch;
>  	//for txpower tracking
>  	bool FwRWRF;
>
>  	//added by amy for AP roaming
> -	RT_LINK_DETECT_T	LinkDetectInfo;
> +	struct _RT_LINK_DETECT_T	LinkDetectInfo;
>  	//added by amy for ps
> -	RT_POWER_SAVE_CONTROL	PowerSaveControl;
> +	struct _RT_POWER_SAVE_CONTROL	PowerSaveControl;
>  //}
>  	/* used if IEEE_SOFTMAC_TX_QUEUE is set */
>  	struct  tx_pending tx_pending;
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 5147f7c01e31..fe5a716ae3e7 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -508,16 +508,16 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  	return 1;
>  }
>
> -static bool AddReorderEntry(struct rx_ts_record *pTS, PRX_REORDER_ENTRY pReorderEntry)
> +static bool AddReorderEntry(struct rx_ts_record *pTS, struct _RX_REORDER_ENTRY *pReorderEntry)
>  {
>  	struct list_head *pList = &pTS->rx_pending_pkt_list;
>  	while(pList->next != &pTS->rx_pending_pkt_list)
>  	{
> -		if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> +		if( SN_LESS(pReorderEntry->SeqNum, ((struct _RX_REORDER_ENTRY *)list_entry(pList->next, struct _RX_REORDER_ENTRY,List))->SeqNum) )
>  		{
>  			pList = pList->next;
>  		}
> -		else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> +		else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct _RX_REORDER_ENTRY *)list_entry(pList->next, struct _RX_REORDER_ENTRY,List))->SeqNum) )
>  		{
>  			return false;
>  		}
> @@ -589,7 +589,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  				    struct rx_ts_record *pTS, u16 SeqNum)
>  {
>  	PRT_HIGH_THROUGHPUT	pHTInfo = ieee->pHTInfo;
> -	PRX_REORDER_ENTRY	pReorderEntry = NULL;
> +	struct _RX_REORDER_ENTRY	*pReorderEntry = NULL;
>  	struct ieee80211_rxb **prxbIndicateArray;
>  	u8			WinSize = pHTInfo->RxReorderWinSize;
>  	u16			WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
> @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  		/* Current packet is going to be inserted into pending list.*/
>  		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
>  		if(!list_empty(&ieee->RxReorder_Unused_List)) {
> -			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
> +			pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(ieee->RxReorder_Unused_List.next,struct _RX_REORDER_ENTRY,List);
>  			list_del_init(&pReorderEntry->List);
>
>  			/* Make a reorder entry and insert into a the packet list.*/
> @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	/* Check if there is any packet need indicate.*/
>  	while(!list_empty(&pTS->rx_pending_pkt_list)) {
>  		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
> -		pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> +		pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pTS->rx_pending_pkt_list.prev,struct _RX_REORDER_ENTRY,List);
>  		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
>  		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
>  		{
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> index c76715ffa08b..7e3740f16399 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> @@ -28,7 +28,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
>  	struct rx_ts_record     *pRxTs = from_timer(pRxTs, t, rx_pkt_pending_timer);
>  	struct ieee80211_device *ieee = container_of(pRxTs, struct ieee80211_device, RxTsRecord[pRxTs->num]);
>
> -	PRX_REORDER_ENTRY	pReorderEntry = NULL;
> +	struct _RX_REORDER_ENTRY	*pReorderEntry = NULL;
>
>  	//u32 flags = 0;
>  	unsigned long flags = 0;
> @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
>  	if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
>  		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
>  		while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
> -			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTs->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> +			pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct _RX_REORDER_ENTRY, List);
>  			if(index == 0)
>  				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
>
> @@ -133,7 +133,7 @@ void TSInitialize(struct ieee80211_device *ieee)
>  {
>  	struct tx_ts_record     *pTxTS  = ieee->TxTsRecord;
>  	struct rx_ts_record     *pRxTS  = ieee->RxTsRecord;
> -	PRX_REORDER_ENTRY	pRxReorderEntry = ieee->RxReorderEntry;
> +	struct _RX_REORDER_ENTRY	*pRxReorderEntry = ieee->RxReorderEntry;
>  	u8				count = 0;
>  	IEEE80211_DEBUG(IEEE80211_DL_TS, "==========>%s()\n", __func__);
>  	// Initialize Tx TS related info.
> @@ -418,7 +418,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
>
>  	if(TxRxSelect == RX_DIR) {
>  //#ifdef TO_DO_LIST
> -		PRX_REORDER_ENTRY	pRxReorderEntry;
> +		struct _RX_REORDER_ENTRY	*pRxReorderEntry;
>  		struct rx_ts_record     *pRxTS = (struct rx_ts_record *)pTs;
>  		if(timer_pending(&pRxTS->rx_pkt_pending_timer))
>  			del_timer_sync(&pRxTS->rx_pkt_pending_timer);
> @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
>  		while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
>  			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
>  			//pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> -			pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> +			pRxReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct _RX_REORDER_ENTRY, List);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310160554.4479-3-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

