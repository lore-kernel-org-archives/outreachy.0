X-GM-THRID: 6331637573158436864
X-Received: by 10.28.26.72 with SMTP id a69mr254610wma.11.1474200402563;
        Sun, 18 Sep 2016 05:06:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.18.133 with SMTP id 127ls566354wms.9.gmail; Sun, 18 Sep
 2016 05:06:41 -0700 (PDT)
X-Received: by 10.194.222.198 with SMTP id qo6mr400434wjc.11.1474200401944;
        Sun, 18 Sep 2016 05:06:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s6si321872wmb.1.2016.09.18.05.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 05:06:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,356,1470693600"; 
   d="scan'208";a="193814466"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Sep 2016 14:06:41 +0200
Date: Sun, 18 Sep 2016 14:06:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove useless
 type conversion
In-Reply-To: <CAOH+1jHDArZjjivS24GN=2ocUfvU92zC-P1WLfTJh=gq12dCAg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609181406150.3238@hadrien>
References: <1474199218-15749-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609181351180.3238@hadrien> <CAOH+1jHDArZjjivS24GN=2ocUfvU92zC-P1WLfTJh=gq12dCAg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Sep 2016, Bhumika Goyal wrote:

> On Sun, Sep 18, 2016 at 5:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 18 Sep 2016, Bhumika Goyal wrote:
> >
> >> Some type conversions like casting a pointer to a pointer of same type,
> >> casting to the original type using addressof(&) operator etc. are not
> >> needed. Therefore, remove them. Done using coccinelle:
> >>
> >> @@
> >> type t;
> >> t *p,a;
> >
> > It makes no particular sense, but currently in Coccinelle, the * in the
> > metavariable declaration applies to all of the declared variables.
> >
> > To avoid this problem, could you make separate declarations for p and a,
> > and try again?
> >
> Oh, I didn't know that. Thanks for telling. I will modify the script then.

You should actually run the script again, and not just change the commit
message, because you may get different results.

julia

>
> Thanks,
> Bhumika
>
> > thanks,
> > julia
> >
> >> @@
> >> (
> >> - (t)(a)
> >> + a
> >> |
> >> - (t *)(p)
> >> + p
> >> |
> >> - (t *)(&a)
> >> + &a
> >> )
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
> >>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 6 +++---
> >>  drivers/staging/rtl8192u/r8192U_core.c                 | 3 +--
> >>  drivers/staging/rtl8192u/r8192U_dm.c                   | 6 +++---
> >>  4 files changed, 8 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> >> index 49db1b7..10a8040 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> >> @@ -806,7 +806,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
> >>               *(tag++) = 2;
> >>
> >>               put_unaligned_le16(ieee->current_network.atim_window,
> >> -                                (u8 *)tag);
> >> +                                tag);
> >>               tag+=2;
> >>       }
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> >> index 28737ec..98fbb6e 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> >> @@ -354,7 +354,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
> >>
> >>       req = (struct rtl_80211_hdr_3addr *) skb->data;
> >>       tag = (u8 *)req;
> >> -     dst = (u8 *)(&req->addr2[0]);
> >> +     dst = &req->addr2[0];
> >>       tag += sizeof(struct rtl_80211_hdr_3addr);
> >>       pDialogToken = tag + 2;  //category+action
> >>       pBaParamSet = (PBA_PARAM_SET)(tag + 3);   //+DialogToken
> >> @@ -452,7 +452,7 @@ int ieee80211_rx_ADDBARsp(struct ieee80211_device *ieee, struct sk_buff *skb)
> >>       }
> >>       rsp = (struct rtl_80211_hdr_3addr *)skb->data;
> >>       tag = (u8 *)rsp;
> >> -     dst = (u8 *)(&rsp->addr2[0]);
> >> +     dst = &rsp->addr2[0];
> >>       tag += sizeof(struct rtl_80211_hdr_3addr);
> >>       pDialogToken = tag + 2;
> >>       pStatusCode = (u16 *)(tag + 3);
> >> @@ -590,7 +590,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
> >>
> >>       IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
> >>       delba = (struct rtl_80211_hdr_3addr *)skb->data;
> >> -     dst = (u8 *)(&delba->addr2[0]);
> >> +     dst = &delba->addr2[0];
> >>       pDelBaParamSet = (PDELBA_PARAM_SET)&delba->payload[2];
> >>
> >>       if(pDelBaParamSet->field.Initiator == 1)
> >> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> >> index b86b28a..9a7f1df 100644
> >> --- a/drivers/staging/rtl8192u/r8192U_core.c
> >> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> >> @@ -5010,8 +5010,7 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
> >>
> >>       dev->netdev_ops = &rtl8192_netdev_ops;
> >>
> >> -     dev->wireless_handlers =
> >> -             (struct iw_handler_def *)&r8192_wx_handlers_def;
> >> +     dev->wireless_handlers = &r8192_wx_handlers_def;
> >>
> >>       dev->type = ARPHRD_ETHER;
> >>
> >> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> >> index 1e0e53c..9209aad 100644
> >> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> >> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> >> @@ -150,7 +150,7 @@ void deinit_hal_dm(struct net_device *dev)
> >>  #ifdef USB_RX_AGGREGATION_SUPPORT
> >>  void dm_CheckRxAggregation(struct net_device *dev)
> >>  {
> >> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
> >> +     struct r8192_priv *priv = ieee80211_priv(dev);
> >>       PRT_HIGH_THROUGHPUT     pHTInfo = priv->ieee80211->pHTInfo;
> >>       static unsigned long    lastTxOkCnt;
> >>       static unsigned long    lastRxOkCnt;
> >> @@ -2346,7 +2346,7 @@ dm_CheckEdcaTurbo_EXIT:
> >>
> >>  static void dm_init_ctstoself(struct net_device *dev)
> >>  {
> >> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
> >> +     struct r8192_priv *priv = ieee80211_priv(dev);
> >>
> >>       priv->ieee80211->bCTSToSelfEnable = true;
> >>       priv->ieee80211->CTSToSelfTH = CTSToSelfTHVal;
> >> @@ -2354,7 +2354,7 @@ static void dm_init_ctstoself(struct net_device *dev)
> >>
> >>  static void dm_ctstoself(struct net_device *dev)
> >>  {
> >> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
> >> +     struct r8192_priv *priv = ieee80211_priv(dev);
> >>       PRT_HIGH_THROUGHPUT     pHTInfo = priv->ieee80211->pHTInfo;
> >>       static unsigned long                            lastTxOkCnt;
> >>       static unsigned long                            lastRxOkCnt;
> >> --
> >> 1.9.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474199218-15749-1-git-send-email-bhumirks%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jHDArZjjivS24GN%3D2ocUfvU92zC-P1WLfTJh%3Dgq12dCAg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

