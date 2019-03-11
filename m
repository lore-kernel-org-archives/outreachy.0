X-GM-THRID: 6666820090157072384
X-Received: by 2002:a25:a2c1:: with SMTP id c1mr3897781ybn.85.1552309633984;
        Mon, 11 Mar 2019 06:07:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5888:: with SMTP id m130ls6919439ywb.9.gmail; Mon, 11
 Mar 2019 06:07:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzmQswW9UxAklFhtDfLWZ2cGkR6rJpd0OkrY03aDCRc7qjwlHDhUMi4zNtB0HfiLdVEnZ7m
X-Received: by 2002:a81:8546:: with SMTP id v67mr14381468ywf.1.1552309632668;
        Mon, 11 Mar 2019 06:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552309632; cv=none;
        d=google.com; s=arc-20160816;
        b=R/z0l5D43MqWyv2rH99OByssOs5r32rxq7jARjEsNeHYDS0Y6/OLvAjDRu1hvqa+Ul
         DJA30Ak5M+v5BXLjJJBXaMSRQJL6shp/Jffi8K7vIVGMm4wzKnAj05YxNeKSnNgay0fH
         DlZ9vufIEnr4dFzeJKJMXN0Q1364KG9EVRojh1PbT5R0wd8Fp6YoT23ooWm4ygaZuK2H
         JMXsGysWrdgXFeEvyE/tAUP5kN96OdoRxYdCM02ITvsHcc65wjpHCmDRpurxXVLL5Ozj
         gqmdNFmF+foLuJXnQoLpjZcxwydfktdUMjHaLJvJhbrMCCyjtp8qb/Q29Hx/XGRmrq84
         8I0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mSviOblQkXHfka21uBGabGTVZ+PmEuZZ853sGzJ9bbs=;
        b=J/kqpiq6bcSOSyVwIVZf4Q8ohkoAZtwwjjdG8Ayk3/UZmfM7Gn7tlOtWQJfvmvifNm
         wAx9cpPQZAmNZx9PDonTxHaqOV5UszESO3Xg3PnuA3rNIBEJcgMmjbjFYxMo5FEcqk+p
         RIC7jJBWHZHXqXc5R1iThtwDyjaJbz8ZIpDSzDaW7utDZN4a6M7XKLBVS0NNra4iZ9VN
         xG6xB0M25lr7aIQqh4SzgZ8vsNn66bYmb4Vo+adEjROH9a8UlexAewXi8fC2NQw0ghVy
         CxqMVExmGQPoVefb5LcxGsIb3DwNQJQMGeXVNmCZMGfI+OueZgP8p1+xToDHwRmVNwxY
         5EEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoLsp8iY;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id t128si242886ywa.4.2019.03.11.06.07.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 06:07:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoLsp8iY;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id m1so3830628otf.5
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 06:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mSviOblQkXHfka21uBGabGTVZ+PmEuZZ853sGzJ9bbs=;
        b=FoLsp8iYz9Th9u0REf4g4ym3h3x6b3oUsLD+yIBHv454vCeaUJm2MbuIxu3/6WKOZl
         JcovQOlyOko+lWBX3yOqoOwNXhv6e8skDwVEDzWIIkZ2PcIz7Q9w++MqLohGrqwKxGeK
         0bMe7rB6G4qk9AWOtGBlqVUrkBeUpbb3l4zB8V7BoCa7VNhOu94mMuD+ewgFbeizzDsS
         BC7cTSJujiqc+JPXndO/FF0zMRvEjnf+xd6wczKJ2TY7AzbghubeXYAFuMBv9WBfUoJl
         eiEyVJliANKhqtsZJCZi4nwPqmVsgoY7KkwsKOaKvjHXQ9uUB6QQk7UiFOcHL5xjAtlJ
         T3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mSviOblQkXHfka21uBGabGTVZ+PmEuZZ853sGzJ9bbs=;
        b=LIm1jGLJ69q91200RKLfuHyTHyUqQZIOVxEzpWiXQfm+unZdF0KG2ID8WbovyFaMvC
         ubmI9whqMKk0umfoXgfFDEMosTZJp37GelFn2yt5xtX9etpm8h4ZRjh6c2soupB98crT
         8h9QIfX7s1tWdac5ApHpi5gm/N8jGfjyL5/wHAGzoskZUiKwxPgzPnz+cRlYl9cIFwbm
         j6ctikRJCN50ffRgvmEbCzqB9sJzSM9+1Cht6kUg5moMlzK+8jefJ1WiGJ3uyq+utNbo
         Etf37Gd3rMh0s8YKJWKZkfAdMiKsc43qcijU7GC7jSzkZCsLqQp4WjNeRFb/hgcO3+So
         qyrA==
X-Gm-Message-State: APjAAAWLjm56KPzTnWIDHIxtZt9mZb1sBYHKUsRvPysYiyP+EgJYt7qv
	Q+N8dNTnz2/vBKvJRP6Q715Ax7JGDucjewWZEXw=
X-Received: by 2002:a9d:1a7:: with SMTP id e36mr20014206ote.270.1552309632189;
 Mon, 11 Mar 2019 06:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
 <20190311111607.28766-7-bhanusreemahesh@gmail.com> <alpine.DEB.2.20.1903111358590.3491@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903111358590.3491@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Mon, 11 Mar 2019 18:36:41 +0530
Message-ID: <CAB0Mk-MNGvseOFPgyXH13jaqZ3cDZ5jwqE-_devsLvqy12govA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 6/7] Staging: rtl8192u: Remove casts
 on the return values of list_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 11 Mar 2019 at 18:30, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Mon, 11 Mar 2019, Bhanusree Pola wrote:
>
> > Remove casts return values of on all occurances of list_entry.
> > Casts on the return values of list_entry are useless.
> > list_entry is a macro and already casts its return value to the type
> > mentioned in its second argument.
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 8 ++++----
> >  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 4 ++--
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > index c2483da9394e..f4c1befe6e8c 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > @@ -513,11 +513,11 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
> >       struct list_head *pList = &pTS->rx_pending_pkt_list;
> >       while(pList->next != &pTS->rx_pending_pkt_list)
> >       {
> > -             if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> > +             if( SN_LESS(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> >               {
> >                       pList = pList->next;
> >               }
> > -             else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
> > +             else if( SN_EQUAL(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
>
> You need to remove the parentheses around the list_entry call as well.
same patch ?
>
> julia
>
> >               {
> >                       return false;
> >               }
> > @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >               /* Current packet is going to be inserted into pending list.*/
> >               //IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
> >               if(!list_empty(&ieee->RxReorder_Unused_List)) {
> > -                     pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
> > +                     pReorderEntry = list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
> >                       list_del_init(&pReorderEntry->List);
> >
> >                       /* Make a reorder entry and insert into a the packet list.*/
> > @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
> >       /* Check if there is any packet need indicate.*/
> >       while(!list_empty(&pTS->rx_pending_pkt_list)) {
> >               IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
> > -             pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > +             pReorderEntry = list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> >               if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
> >                   SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
> >               {
> > diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > index aefa37b285b3..0368e5e3e95d 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> > @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
> >       if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
> >               // Indicate the pending packets sequentially according to SeqNum until meet the gap.
> >               while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
> > -                     pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > +                     pReorderEntry = list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> >                       if(index == 0)
> >                               pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
> >
> > @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
> >               while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
> >                       spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
> >                       //pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
> > -                     pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
> > +                     pRxReorderEntry = list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
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
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190311111607.28766-7-bhanusreemahesh%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903111358590.3491%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

