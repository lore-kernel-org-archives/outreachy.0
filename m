X-GM-THRID: 6666820090157072384
X-Received: by 2002:a19:c502:: with SMTP id w2mr1856600lfe.15.1552309206161;
        Mon, 11 Mar 2019 06:00:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c501:: with SMTP id w1ls909697lfe.10.gmail; Mon, 11 Mar
 2019 06:00:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5Zop9Ryokt7ebHGYbreRE9/7o2dxcUKyJznxif3GiKA36nsawanGlymkcM7yhy8CpfTNl
X-Received: by 2002:a19:760a:: with SMTP id c10mr880362lff.9.1552309205267;
        Mon, 11 Mar 2019 06:00:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552309205; cv=none;
        d=google.com; s=arc-20160816;
        b=xdNcspfi20J3UQNnSQWaRGoqfngVsnZYe3kyGpTUwc6YbBW0qF684cCZUAntGbeJ27
         Jh5GBTp/g9lFG1eXM7w92uwiyod98LkFd1z+bF7/JLh14UtWZJfFjH17l7OtI/TFNKZ6
         +WKo8sQkBonTC9sJasHWoAYotp6coMqI42+YekYD71dHpymbJXT3SKYVhP/uxaP2m2PI
         fgueVg1gRJCLikWNmQ3e8eO2ovim8sr8ZSw2xiU8YHhw5FtEgI1dIiqpFG3i0rqrAmVp
         6N7xSWeC0Y75blnmicQEKVHkAmaPXM6qzbxB8v4QbCYjKnUrQ/qz9MluFr87kt/vV7ER
         ON9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=R2vzhxtWy9fLvnnxbsz9zIOJS+DbrGFTthZk0Our0ho=;
        b=N0C72haih8Wg9Y+g5z/aKidaDrI2P+PJeEVQ9wXA+s0f/IcI+ONBFLkrwBI9uC41zh
         nyy3nbIRXf/7szcAZt4l/oiChTckGo3UA2V/8E51PXn+A21u2FY56/IO0gzxuCQjw9kM
         lbGpd7gbmkqGnbcv+kCTXsdOsuXGHoRg+/J1mm6aWe12ZTfXUhLYLI0APGBJMSA+BnxN
         U7N1wsZXkpcr3oiq7qidXcHlhTgNz7pzSRH8ZVZN6RpNGvUuJNk9rnHWtHecU+EPs+0x
         vrcQNKoWD8nYHojXZxVB2NTL757w8AdBkfKd/89nYMuzfMAyCVA24ViahD128FF0CyTF
         bNow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n21si207366lfl.2.2019.03.11.06.00.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 06:00:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,467,1544482800"; 
   d="scan'208";a="298803623"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2019 14:00:04 +0100
Date: Mon, 11 Mar 2019 14:00:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3 6/7] Staging: rtl8192u: Remove
 casts on the return values of list_entry
In-Reply-To: <20190311111607.28766-7-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.20.1903111358590.3491@hadrien>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com> <20190311111607.28766-7-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Mar 2019, Bhanusree Pola wrote:

> Remove casts return values of on all occurances of list_entry.
> Casts on the return values of list_entry are useless.
> list_entry is a macro and already casts its return value to the type
> mentioned in its second argument.
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 8 ++++----
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index c2483da9394e..f4c1befe6e8c 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -513,11 +513,11 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
>  	struct list_head *pList = &pTS->rx_pending_pkt_list;
>  	while(pList->next != &pTS->rx_pending_pkt_list)
>  	{
> -		if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> +		if( SN_LESS(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
>  		{
>  			pList = pList->next;
>  		}
> -		else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> +		else if( SN_EQUAL(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )

You need to remove the parentheses around the list_entry call as well.

julia

>  		{
>  			return false;
>  		}
> @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  		/* Current packet is going to be inserted into pending list.*/
>  		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
>  		if(!list_empty(&ieee->RxReorder_Unused_List)) {
> -			pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
> +			pReorderEntry = list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
>  			list_del_init(&pReorderEntry->List);
>
>  			/* Make a reorder entry and insert into a the packet list.*/
> @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	/* Check if there is any packet need indicate.*/
>  	while(!list_empty(&pTS->rx_pending_pkt_list)) {
>  		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
> -		pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> +		pReorderEntry = list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
>  		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
>  		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
>  		{
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> index aefa37b285b3..0368e5e3e95d 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
>  	if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
>  		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
>  		while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
> -			pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> +			pReorderEntry = list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
>  			if(index == 0)
>  				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
>
> @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
>  		while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
>  			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
>  			//pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> -			pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> +			pRxReorderEntry = list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190311111607.28766-7-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

