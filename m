X-GM-THRID: 6666820090157072384
X-Received: by 2002:a50:944c:: with SMTP id q12mr6680896eda.0.1552244505300;
        Sun, 10 Mar 2019 12:01:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4942:: with SMTP id f2ls350973ejt.8.gmail; Sun, 10
 Mar 2019 12:01:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtjRbDFCkO9VDqVjkouooU7hR4pS+HbniNWqr7xKxgDjrFvqdIjh2HUc+NAaqDtG0Qazuw
X-Received: by 2002:a17:906:16c6:: with SMTP id t6mr3172415ejd.6.1552244504489;
        Sun, 10 Mar 2019 12:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552244504; cv=none;
        d=google.com; s=arc-20160816;
        b=F+nLCL3w4r1lKLarikzapDvTu/PC+BUImiNfBe7qdB6V+jjbkZPx2HEoB95ad2wJsF
         vVooULCDVdByKMPx/evIwMg1vLgRZi0y736RL+sx7McEN9rPv+m8eMhpzT3qZJuge0IP
         tc/UHfQ4LJsQscj6VdXRJNjjZ4QbHQqdoMuUkrXDiGpg+ehXS1bhut/O/Rf6Rjdb/t5w
         4YrkuiZrTTebtVh7yvM0FPNu26NMXCLQlcOtHuvKCJlgsLQ+IJzI7+gNLGlghLdyERiH
         Bt41y0vckUEdItlPsJM2wdGyG76BKNUEaH3rdo2T9mh+yXEb+1Kqvciwj5UD2BUCsGEP
         8+yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pg5eJPxFi5HfzuzAMrB37CRt3lTTj4Vkn0wMBk7ntwM=;
        b=n6LbxJMAefm9/KoEYG8r5kI8FpWxCpxkskMpEK0i7PbtuyrtV9dryiyb73/c7iwdrN
         EcB2gGIwSdReJryMrCOe4gKukUYtIsZPLFcYjq0bL9RbcD/tS1ZdDgJUhWh0HMI4lR5B
         NsQEsmfV0wcr1xWbb1vjQB4cyhYU5UEqQkwGHrtFlJYlnOX9ry874wmUB9Rjf2BNMvU2
         PS4TJYqngWYbBVPWNRl8rGwfMiT1FRo0SiJn9WcboFgTjubDU8jW9QKYJU+rRC57POdM
         iKKRNWjqliQ950OGEclJ6dYxzFGlud0ZD4zNZFnLXaT9css9kb6W1ycrp+CFyB3nEwZY
         BADw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k46si166147eda.4.2019.03.10.12.01.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 12:01:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="372708380"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 20:01:44 +0100
Date: Sun, 10 Mar 2019 20:01:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: rtl8192u: Remove
 typedef for struct _RX_REORDER_ENTRY
In-Reply-To: <986CD150-9565-4962-B036-43CFCBEFF7FE@gmail.com>
Message-ID: <alpine.DEB.2.21.1903101958370.3131@hadrien>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com> <20190310174635.16923-6-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1903101908440.3131@hadrien> <986CD150-9565-4962-B036-43CFCBEFF7FE@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Mar 2019, Bhanusree Mahesh wrote:

>
>
> > On Mar 10, 2019, at 23:42, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> >> On Sun, 10 Mar 2019, Bhanusree Pola wrote:
> >>
> >> -Avoid typedefs for structure types to maintain kernel coding style.
> >> -Remove typedefs RX_REORDER_ENTRY  and *PRX_REORDER_ENTRY  of struct _RX_REORDER_ENTRY .
> >> -Change Structure name _RX_REORDER_ENTRY  to rx_reorder_entry to maintain Linux kernel Coding Style.
> >> -Replace occurences of RX_REORDER_ENTRY  to struct rx_reorder_entry.
> >> -Replace occurences of PRX_REORDER_ENTRY  to struct rx_reorder_entry *.
> >>
> >> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> >> ---
> >> drivers/staging/rtl8192u/ieee80211/ieee80211.h      |  6 +++---
> >> drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 12 ++++++------
> >> drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
> >> 3 files changed, 14 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> >> index 6986b51b37c4..b19b0cf01e1f 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> >> @@ -1474,11 +1474,11 @@ struct bandwidth_autoswitch {
> >>
> >> #define REORDER_WIN_SIZE    128
> >> #define REORDER_ENTRY_NUM    128
> >> -typedef struct _RX_REORDER_ENTRY {
> >> +struct rx_reorder_entry {
> >>    struct list_head    List;
> >>    u16            SeqNum;
> >>    struct ieee80211_rxb *prxb;
> >> -} RX_REORDER_ENTRY, *PRX_REORDER_ENTRY;
> >> +};
> >> //added by amy for order
> >> typedef enum _Fsync_State {
> >>    Default_Fsync,
> >> @@ -1654,7 +1654,7 @@ struct ieee80211_device {
> >>    struct list_head        Rx_TS_Unused_List;
> >>    struct rx_ts_record        RxTsRecord[TOTAL_TS_NUM];
> >> //#ifdef TO_DO_LIST
> >> -    RX_REORDER_ENTRY    RxReorderEntry[128];
> >> +    struct rx_reorder_entry        RxReorderEntry[128];
> >>    struct list_head        RxReorder_Unused_List;
> >> //#endif
> >>    // Qos related. Added by Annie, 2005-11-01.
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> index 5147f7c01e31..17d50476bdb2 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> @@ -508,16 +508,16 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
> >>    return 1;
> >> }
> >>
> >> -static bool AddReorderEntry(struct rx_ts_record *pTS, PRX_REORDER_ENTRY pReorderEntry)
> >> +static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *pReorderEntry)
> >> {
> >>    struct list_head *pList = &pTS->rx_pending_pkt_list;
> >>    while(pList->next != &pTS->rx_pending_pkt_list)
> >>    {
> >> -        if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> >> +        if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> >>        {
> >>            pList = pList->next;
> >>        }
> >> -        else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> >> +        else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> >>        {
> >>            return false;
> >>        }
> >> @@ -589,7 +589,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >>                    struct rx_ts_record *pTS, u16 SeqNum)
> >> {
> >>    PRT_HIGH_THROUGHPUT    pHTInfo = ieee->pHTInfo;
> >> -    PRX_REORDER_ENTRY    pReorderEntry = NULL;
> >> +    struct rx_reorder_entry    *pReorderEntry = NULL;
> >>    struct ieee80211_rxb **prxbIndicateArray;
> >>    u8            WinSize = pHTInfo->RxReorderWinSize;
> >>    u16            WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
> >> @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >>        /* Current packet is going to be inserted into pending list.*/
> >>        //IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
> >>        if(!list_empty(&ieee->RxReorder_Unused_List)) {
> >> -            pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
> >> +            pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
> >
> > You have made the 80 character problems worse.  But you are in luck,
> > because the casts on the return values of list_entry are useless.
> > list_entry is a macro and already casts its return value to the type
> > mentioned in its second argument.
> Should I remove the typecast of return value ?
> This must be done in the same patch right ?

No it doesn't have to be done in the same patch.  Casting a value that is
already casted takes up extra space, but doesn't pose any compilation
problem.  Since the change is different than removing typedefs, it would
be better to make a separate patch, but still part of the same series,
since it depends on the other patches (same file and same affected lines).

> >
> > This could be an extra patch in the series.  In that patch, for the ifs
> > that are above, you could also adjust the spacing around the if and the
> > condition expression to follow the kernel guidelines.
> Only this exclusively would be an extra patch ?

One extra patch for all of the list_entry issues.  If a line affected by a
list_entry issue also has some glaring whitespace issues, you can also fix
them up.  I guess these whitespace issues on ifs would occur everywhere in
the file.  If you want to fix them all up, it could indeed be yet another
patch in the series.

julia

> >
> > The patches are now much more readable with only one typedef at a time :)
> >
> > julia
> >
> >
> >>            list_del_init(&pReorderEntry->List);
> >>
> >>            /* Make a reorder entry and insert into a the packet list.*/
> >> @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >>    /* Check if there is any packet need indicate.*/
> >>    while(!list_empty(&pTS->rx_pending_pkt_list)) {
> >>        IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
> >> -        pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> >> +        pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> >>        if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
> >>            SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
> >>        {
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> >> index c76715ffa08b..aefa37b285b3 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> >> @@ -28,7 +28,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
> >>    struct rx_ts_record     *pRxTs = from_timer(pRxTs, t, rx_pkt_pending_timer);
> >>    struct ieee80211_device *ieee = container_of(pRxTs, struct ieee80211_device, RxTsRecord[pRxTs->num]);
> >>
> >> -    PRX_REORDER_ENTRY    pReorderEntry = NULL;
> >> +    struct rx_reorder_entry    *pReorderEntry = NULL;
> >>
> >>    //u32 flags = 0;
> >>    unsigned long flags = 0;
> >> @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
> >>    if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
> >>        // Indicate the pending packets sequentially according to SeqNum until meet the gap.
> >>        while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
> >> -            pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTs->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> >> +            pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> >>            if(index == 0)
> >>                pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
> >>
> >> @@ -133,7 +133,7 @@ void TSInitialize(struct ieee80211_device *ieee)
> >> {
> >>    struct tx_ts_record     *pTxTS  = ieee->TxTsRecord;
> >>    struct rx_ts_record     *pRxTS  = ieee->RxTsRecord;
> >> -    PRX_REORDER_ENTRY    pRxReorderEntry = ieee->RxReorderEntry;
> >> +    struct rx_reorder_entry    *pRxReorderEntry = ieee->RxReorderEntry;
> >>    u8                count = 0;
> >>    IEEE80211_DEBUG(IEEE80211_DL_TS, "==========>%s()\n", __func__);
> >>    // Initialize Tx TS related info.
> >> @@ -418,7 +418,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
> >>
> >>    if(TxRxSelect == RX_DIR) {
> >> //#ifdef TO_DO_LIST
> >> -        PRX_REORDER_ENTRY    pRxReorderEntry;
> >> +        struct rx_reorder_entry    *pRxReorderEntry;
> >>        struct rx_ts_record     *pRxTS = (struct rx_ts_record *)pTs;
> >>        if(timer_pending(&pRxTS->rx_pkt_pending_timer))
> >>            del_timer_sync(&pRxTS->rx_pkt_pending_timer);
> >> @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
> >>        while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
> >>            spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
> >>            //pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> >> -            pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> >> +            pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> >>            list_del_init(&pRxReorderEntry->List);
> >>            {
> >>                int i = 0;
> >> --
> >> 2.17.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310174635.16923-6-bhanusreemahesh%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

