X-GM-THRID: 6666794148561944576
X-Received: by 2002:a37:c083:: with SMTP id v3mr2295266qkv.32.1552234738151;
        Sun, 10 Mar 2019 09:18:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8302:: with SMTP id f2ls6506833qkd.0.gmail; Sun, 10 Mar
 2019 09:18:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxKKjKw6SwRIEUgK0RuKOlIcRB1qCk98ce6IU6VH5Kn9JHSmPA4225eiaaHVzZ7fhTEI81j
X-Received: by 2002:a37:634c:: with SMTP id x73mr16239784qkb.17.1552234737514;
        Sun, 10 Mar 2019 09:18:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552234737; cv=none;
        d=google.com; s=arc-20160816;
        b=Nd+3Ys3EhliwFEoJL0qeoDkuknnqO0Me5l8W34yOY6i0ffBBNw7G/peI7Mo/9O7HTj
         zxKS/kVyq7as9KF6ZX6m3HOMayvMwuLGihTVozKcAur9JuQzGA8X6N0Z3qWJJaWQvBtl
         Bj0JI3CtkRLlv48QRBlHPJNLey97GTExnH80cyP9IpaR9LBV5QLmFcFJXg8gY8wfsnFr
         aRO3r+Z//FfYOsnvaaL5hynFIHAbpuKwURePfY9m/M58HuWIsU2SS+ma2DNJ5gppY3J3
         vZMFSoBnxkFYfL4OjK3Me2TFKt9/B4+zetWIH0vLJXUU7tkZdDCwKfaxiDf8eoPA/gtk
         7xaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=igAm5NXGUDDq1UIipsJN8Lx9sec3eNNuhr9TCvZtuEs=;
        b=n6ButsnobTvYES7MHo9Ew9jpxPAFAdpcoEnaIUCN4bjmgJSjfHlqiLLV4JkQG+4aWh
         YMR3VhQnwof5+uScNr6I56BeUiv8NE8XQuExofsU6ZIAogs44kbIdt/fe41OHhbyxK0U
         MWKUBN0gTDXlffoVC3SryNRZ9lH/y00q5cdJDmFqxg+tg1GQT1CGgffrLdbj4X/xZqvJ
         8Hl6Q70WJq7cN2O6OoT167qGeH5j4uRVfJx9vVkStMovhU88tQHf+Oc79QwwO+zB7/fA
         rMH52jCajsIbGFmERvCAPFODi25NSwIkyBI1TRVowshWkjT2IBQMupYwTedTx3Wcl7W7
         sv0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=izO+EvJt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y202si152944qka.2.2019.03.10.09.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=izO+EvJt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id v20so1911256otk.7
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 09:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=igAm5NXGUDDq1UIipsJN8Lx9sec3eNNuhr9TCvZtuEs=;
        b=izO+EvJtbv+4aQvI0NmKWh1LS2E/KFPJRG/NTMYEmN5QkOW65UoWQ3Orsok6Q6qKEy
         Rrb03l4FbeNm+qO6klxV82cyiA51OqJYkxdFjIIU+bya5SyvCsj4GVCYFmtvcjMpBHx8
         qVlOD8u5OANnf76mo+PmgrY5OW55wRXNqimJDpUKHIziWS+7FYvivaK6mtbCcaOvDqeQ
         33YafDt47B9TAs+U4e33DwoCU4Pc11mZBeLIJV6WJZrV1jpDPzSW4xhyA/SArMlH+bwf
         IUAJmN4uOvUNbEnWppc/lVK41urDC5JMKvT9vYFSfai4oKjpU+HUQQgA3ZVV0iHNKxSe
         2juQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=igAm5NXGUDDq1UIipsJN8Lx9sec3eNNuhr9TCvZtuEs=;
        b=CDYsrBrnzbeLBKQ9ddrV91iSc2tLWfe96dB9mvAZfOdDlQ4XYoM8wMh8kGJJH7gio6
         ZLQSmWZr9GQUQdM0r6c4lBafHY3Ygs/4BtBUqCcTJ09K3xwd5f9JRL8MvO8Sg6XSYdfG
         dPTkDLWBF7CP0FIFywKvVO3ZDEMVXU8MZVIflm0TuzfyUvPTX4+8ETNORQfwkaLHOI/u
         MB2G7ykbAfLTeRRgvadLGNCLg24nE9SSTeH+o5+o5woTAi67WXCoifkHb/Zj8VMhLxkm
         sUhee0s3eS8k22ZGeDZ3l3a8n/X57JzT+pfeVKLUEP4W6T9DjM9mrx4ZeMv8CVg4mWow
         u9uA==
X-Gm-Message-State: APjAAAXAuiL8fSdIzbWrOYaIFk/ymTQlEKznBr1fX7iFJt1OA/iryb+a
	qArySZNiSP13Zai6y3FdJIr0ucxUOWp7VMPQ7/0=
X-Received: by 2002:a9d:6410:: with SMTP id h16mr18307956otl.136.1552234736928;
 Sun, 10 Mar 2019 09:18:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190310160554.4479-1-bhanusreemahesh@gmail.com>
 <20190310160554.4479-3-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1903101709320.3131@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903101709320.3131@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Sun, 10 Mar 2019 21:48:45 +0530
Message-ID: <CAB0Mk-O+Yx+d1Ta+voqBWp_aMEJ1pV15ybVkxZkV78rWquzk8g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8192: Remove
 occurances of typedef struct datatypes
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, 10 Mar 2019 at 21:42, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sun, 10 Mar 2019, Bhanusree Pola wrote:
>
> > Remove all occurances of typedef struct type datatypes.
> > Replace all occurances of IbssParms with struct _IbssParms
> > Replace all occurances of RX_REORDER_ENTRY with struct _RX_REORDER_ENTRY
> > Replace all occurances of bandwidth_autoswitch with struct _bandwidth_autoswitch
> > Replace all occurances of RT_LINK_DETECT_T with struct _RT_LINK_DETECT_T
> > Replace all occurances of RT_POWER_SAVE_CONTROL with struct _RT_POWER_SAVE_CONTROL
> > Replace all occurances of PRX_REORDER_ENTRY with struct _RX_REORDER_ENTRY *
>
> You need to respect the principle that the kernel should compile at all
> times.  So if you remove a typedef, then you should update the uses in the
> same patch.
Thanks for the quick reply :) . i was really confused on how to make
the series on this.
>
> Also, you should choose struct names that correspond to the Linux kernel
> coding style.  So, no underscores in front of names, no _T at the end of
> the name, and no camel case or names in all capital letters (except for
> macros).
I will follow that.
>
> The patches will be much easier to review if you make a series with one
> patch per structure.
Sure.
>
> julia
>
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211.h      | 10 +++++-----
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 12 ++++++------
> >  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
> >  3 files changed, 16 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> > index b1036d522640..092ae4621e04 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> > @@ -1554,7 +1554,7 @@ struct _RT_POWER_SAVE_CONTROL {
> >       struct octet_string                     tmpSuppRateSet;
> >       u8                                      tmpSuppRateBuf[MAX_NUM_RATES];
> >       bool                            bTmpSuppRate;
> > -     IbssParms                               tmpIbpm;
> > +     struct _IbssParms                               tmpIbpm;
> >       bool                            bTmpIbpm;
> >
> >       //
> > @@ -1654,7 +1654,7 @@ struct ieee80211_device {
> >       struct list_head                Rx_TS_Unused_List;
> >       struct rx_ts_record             RxTsRecord[TOTAL_TS_NUM];
> >  //#ifdef TO_DO_LIST
> > -     RX_REORDER_ENTRY        RxReorderEntry[128];
> > +     struct  _RX_REORDER_ENTRY       RxReorderEntry[128];
> >       struct list_head                RxReorder_Unused_List;
> >  //#endif
> >       // Qos related. Added by Annie, 2005-11-01.
> > @@ -1871,14 +1871,14 @@ struct ieee80211_device {
> >       Fsync_State                     fsync_state;
> >       bool            bis_any_nonbepkts;
> >       //20Mhz 40Mhz AutoSwitch Threshold
> > -     bandwidth_autoswitch bandwidth_auto_switch;
> > +     struct _bandwidth_autoswitch bandwidth_auto_switch;
> >       //for txpower tracking
> >       bool FwRWRF;
> >
> >       //added by amy for AP roaming
> > -     RT_LINK_DETECT_T        LinkDetectInfo;
> > +     struct _RT_LINK_DETECT_T        LinkDetectInfo;
> >       //added by amy for ps
> > -     RT_POWER_SAVE_CONTROL   PowerSaveControl;
> > +     struct _RT_POWER_SAVE_CONTROL   PowerSaveControl;
> >  //}
> >       /* used if IEEE_SOFTMAC_TX_QUEUE is set */
> >       struct  tx_pending tx_pending;
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > index 5147f7c01e31..fe5a716ae3e7 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > @@ -508,16 +508,16 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
> >       return 1;
> >  }
> >
> > -static bool AddReorderEntry(struct rx_ts_record *pTS, PRX_REORDER_ENTRY pReorderEntry)
> > +static bool AddReorderEntry(struct rx_ts_record *pTS, struct _RX_REORDER_ENTRY *pReorderEntry)
> >  {
> >       struct list_head *pList = &pTS->rx_pending_pkt_list;
> >       while(pList->next != &pTS->rx_pending_pkt_list)
> >       {
> > -             if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> > +             if( SN_LESS(pReorderEntry->SeqNum, ((struct _RX_REORDER_ENTRY *)list_entry(pList->next, struct _RX_REORDER_ENTRY,List))->SeqNum) )
> >               {
> >                       pList = pList->next;
> >               }
> > -             else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
> > +             else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct _RX_REORDER_ENTRY *)list_entry(pList->next, struct _RX_REORDER_ENTRY,List))->SeqNum) )
> >               {
> >                       return false;
> >               }
> > @@ -589,7 +589,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >                                   struct rx_ts_record *pTS, u16 SeqNum)
> >  {
> >       PRT_HIGH_THROUGHPUT     pHTInfo = ieee->pHTInfo;
> > -     PRX_REORDER_ENTRY       pReorderEntry = NULL;
> > +     struct _RX_REORDER_ENTRY        *pReorderEntry = NULL;
> >       struct ieee80211_rxb **prxbIndicateArray;
> >       u8                      WinSize = pHTInfo->RxReorderWinSize;
> >       u16                     WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
> > @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >               /* Current packet is going to be inserted into pending list.*/
> >               //IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
> >               if(!list_empty(&ieee->RxReorder_Unused_List)) {
> > -                     pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
> > +                     pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(ieee->RxReorder_Unused_List.next,struct _RX_REORDER_ENTRY,List);
> >                       list_del_init(&pReorderEntry->List);
> >
> >                       /* Make a reorder entry and insert into a the packet list.*/
> > @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >       /* Check if there is any packet need indicate.*/
> >       while(!list_empty(&pTS->rx_pending_pkt_list)) {
> >               IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
> > -             pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> > +             pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pTS->rx_pending_pkt_list.prev,struct _RX_REORDER_ENTRY,List);
> >               if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
> >                   SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
> >               {
> > diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > index c76715ffa08b..7e3740f16399 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > @@ -28,7 +28,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
> >       struct rx_ts_record     *pRxTs = from_timer(pRxTs, t, rx_pkt_pending_timer);
> >       struct ieee80211_device *ieee = container_of(pRxTs, struct ieee80211_device, RxTsRecord[pRxTs->num]);
> >
> > -     PRX_REORDER_ENTRY       pReorderEntry = NULL;
> > +     struct _RX_REORDER_ENTRY        *pReorderEntry = NULL;
> >
> >       //u32 flags = 0;
> >       unsigned long flags = 0;
> > @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
> >       if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
> >               // Indicate the pending packets sequentially according to SeqNum until meet the gap.
> >               while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
> > -                     pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTs->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> > +                     pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct _RX_REORDER_ENTRY, List);
> >                       if(index == 0)
> >                               pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
> >
> > @@ -133,7 +133,7 @@ void TSInitialize(struct ieee80211_device *ieee)
> >  {
> >       struct tx_ts_record     *pTxTS  = ieee->TxTsRecord;
> >       struct rx_ts_record     *pRxTS  = ieee->RxTsRecord;
> > -     PRX_REORDER_ENTRY       pRxReorderEntry = ieee->RxReorderEntry;
> > +     struct _RX_REORDER_ENTRY        *pRxReorderEntry = ieee->RxReorderEntry;
> >       u8                              count = 0;
> >       IEEE80211_DEBUG(IEEE80211_DL_TS, "==========>%s()\n", __func__);
> >       // Initialize Tx TS related info.
> > @@ -418,7 +418,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
> >
> >       if(TxRxSelect == RX_DIR) {
> >  //#ifdef TO_DO_LIST
> > -             PRX_REORDER_ENTRY       pRxReorderEntry;
> > +             struct _RX_REORDER_ENTRY        *pRxReorderEntry;
> >               struct rx_ts_record     *pRxTS = (struct rx_ts_record *)pTs;
> >               if(timer_pending(&pRxTS->rx_pkt_pending_timer))
> >                       del_timer_sync(&pRxTS->rx_pkt_pending_timer);
> > @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
> >               while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
> >                       spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
> >                       //pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> > -                     pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
> > +                     pRxReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct _RX_REORDER_ENTRY, List);
> >                       list_del_init(&pRxReorderEntry->List);
> >                       {
> >                               int i = 0;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310160554.4479-3-bhanusreemahesh%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903101709320.3131%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

