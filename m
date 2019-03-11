X-GM-THRID: 6666820090157072384
X-Received: by 2002:adf:fb0c:: with SMTP id c12mr1585928wrr.28.1552314617856;
        Mon, 11 Mar 2019 07:30:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fac8:: with SMTP id a8ls1856055wrs.17.gmail; Mon, 11 Mar
 2019 07:30:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvCY6mNx2+rT84pveGX2zuMdROS5Gy0+qW6TsJbVwNA9msGX8mHPNCwIMAZ4+EjWZXmfFi
X-Received: by 2002:a05:6000:10c1:: with SMTP id b1mr1712748wrx.30.1552314616835;
        Mon, 11 Mar 2019 07:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552314616; cv=none;
        d=google.com; s=arc-20160816;
        b=MzU8+z8Usaaa4MqOxLotMO7UqX3uTLS9RcIcgfEkL+K8Vw3c2IoQtiLC0OOPkPur82
         oBS8xwFDP0PT0ojrxpszg8EcbVlHhR3WgK+ymKMZFZIMhL/9JC/7EBq5ypAwPGcHKzJV
         +CjSCisQyDMEDm4aHBCDsa1yIhHj5/pRy5T1qo43siitw8WC0WvVEoAYZPjNEIesI7xF
         L8K6BFKOPCgnGAt1yExHQ4kODeL66Ydhk/3vSEdvmoOsceN+algdzsTcTQiP3Mx/VcDi
         ha32ffdH7+0ywsk2ji9CdkxdjzZFuCfHG8fqtU3AJPOxT9KGGp/naCN0HAuwk7YfvlHo
         uVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OccbGlrJr7LEyZNwsfnca7r9RP9BgYCNSvk8v5RUaCU=;
        b=drUo/WtIj4yeaQynfD/fhnluAeTzuAfMcw8dVgEgKrvde/ROAJ+FksAVY4zmJIngyC
         ZHC5HvfscyrsXIEtuW2J35dakkwnio029Y3oi9V3UmZtWbwN9Jj9fNAylGQrur8cTrsE
         c6C10MtI0Kw5E3IRZwZwdonjCbaCTmk4WjVn1HU4uRrfcuYUfUwARnQZjRNE8DDt1eWv
         nd1lykB727O5hzDZEXGi4+EoI92nLiR0IoW6ZFZhVAEQ9k34dqu2apVg1psj2APw3V/w
         Kos3y6dtwIDLQ7IUkQJ9wGVQ1bbZKOgBmlHEHmu5B3IJ4HCOICcEtjHXeb5A6YWZ5+Tc
         Vvwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b8si287804wru.1.2019.03.11.07.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 07:30:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,468,1544482800"; 
   d="scan'208";a="372853267"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2019 15:30:15 +0100
Date: Mon, 11 Mar 2019 15:30:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3 6/7] Staging: rtl8192u: Remove
 casts on the return values of list_entry
In-Reply-To: <CAB0Mk-MNGvseOFPgyXH13jaqZ3cDZ5jwqE-_devsLvqy12govA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1903111529440.2390@hadrien>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com> <20190311111607.28766-7-bhanusreemahesh@gmail.com> <alpine.DEB.2.20.1903111358590.3491@hadrien> <CAB0Mk-MNGvseOFPgyXH13jaqZ3cDZ5jwqE-_devsLvqy12govA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Mar 2019, Bhanusree Mahesh wrote:

> On Mon, 11 Mar 2019 at 18:30, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Mon, 11 Mar 2019, Bhanusree Pola wrote:
> >
> > > Remove casts return values of on all occurances of list_entry.
> > > Casts on the return values of list_entry are useless.
> > > list_entry is a macro and already casts its return value to the type
> > > mentioned in its second argument.
> > >
> > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 8 ++++----
> > >  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 4 ++--
> > >  2 files changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > > index c2483da9394e..f4c1befe6e8c 100644
> > > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > > @@ -513,11 +513,11 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
> > >       struct list_head *pList = &pTS->rx_pending_pkt_list;
> > >       while(pList->next != &pTS->rx_pending_pkt_list)
> > >       {
> > > -             if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> > > +             if( SN_LESS(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> > >               {
> > >                       pList = pList->next;
> > >               }
> > > -             else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> > > +             else if( SN_EQUAL(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> >
> > You need to remove the parentheses around the list_entry call as well.
> same patch ?

Yes, the same patch would be fine.  It's part of the removal of the cast.

julia


> >
> > julia
> >
> > >               {
> > >                       return false;
> > >               }
> > > @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> > >               /* Current packet is going to be inserted into pending list.*/
> > >               //IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
> > >               if(!list_empty(&ieee->RxReorder_Unused_List)) {
> > > -                     pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
> > > +                     pReorderEntry = list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
> > >                       list_del_init(&pReorderEntry->List);
> > >
> > >                       /* Make a reorder entry and insert into a the packet list.*/
> > > @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> > >       /* Check if there is any packet need indicate.*/
> > >       while(!list_empty(&pTS->rx_pending_pkt_list)) {
> > >               IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
> > > -             pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > > +             pReorderEntry = list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > >               if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
> > >                   SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
> > >               {
> > > diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > > index aefa37b285b3..0368e5e3e95d 100644
> > > --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > > +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > > @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
> > >       if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
> > >               // Indicate the pending packets sequentially according to SeqNum until meet the gap.
> > >               while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
> > > -                     pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > > +                     pReorderEntry = list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > >                       if(index == 0)
> > >                               pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
> > >
> > > @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
> > >               while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
> > >                       spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
> > >                       //pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> > > -                     pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > > +                     pRxReorderEntry = list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > >                       list_del_init(&pRxReorderEntry->List);
> > >                       {
> > >                               int i = 0;
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190311111607.28766-7-bhanusreemahesh%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903111358590.3491%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB0Mk-MNGvseOFPgyXH13jaqZ3cDZ5jwqE-_devsLvqy12govA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

