X-GM-THRID: 6205509094362578944
X-Received: by 10.194.83.169 with SMTP id r9mr976505wjy.6.1444839003597;
        Wed, 14 Oct 2015 09:10:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.91.205 with SMTP id p196ls53391lfb.28.gmail; Wed, 14 Oct
 2015 09:10:01 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr978992lbp.24.1444839001640;
        Wed, 14 Oct 2015 09:10:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bh7si919969wib.1.2015.10.14.09.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 09:10:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="182798817"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 18:10:01 +0200
Date: Wed, 14 Oct 2015 18:09:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unused code
In-Reply-To: <CAKHNQQHjzrqSggo57khaaV+Bsv28NKUawQcbbhEmnXVy_80OZA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510141808580.2421@hadrien>
References: <20151014142414.GA17736@ubuntu> <alpine.DEB.2.10.1510141625572.2421@hadrien> <CAKHNQQHjzrqSggo57khaaV+Bsv28NKUawQcbbhEmnXVy_80OZA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> On Wed, Oct 14, 2015 at 7:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> The variable frame_authorized is declared and mentioned in the code but
> >> is not used anywhere so, it should be removed.
> >> Semantic patch used:
> >> @@
> >> type T;
> >> identifier i;
> >> constant C;
> >> position p != e.p;
> >> @@
> >>
> >> - T i@p;
> >>   <+... when != i
> >> - i = C;
> >>   ...+>
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ---
> >>  1 file changed, 3 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> index 4b5f32d..ab60c3f 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> @@ -899,7 +899,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
> >>       struct net_device *wds = NULL;
> >>       struct sk_buff *skb2 = NULL;
> >>       struct net_device *wds = NULL;
> >> -     int frame_authorized = 0;
> >>       int from_assoc_ap = 0;
> >>       void *sta = NULL;
> >>  #endif
> >> @@ -1106,10 +1105,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
> >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
> >>                                            wds != NULL)) {
> >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
> >> -                     frame_authorized = 0;
> >>                       break;
> >>               case AP_RX_CONTINUE:
> >> -                     frame_authorized = 1;
> >>                       break;
> >
> > Should the cases be merged?  I don't know what is the common strategy in
> > the Linux kernel.
> >
> > julia
> >
>
> What do you suggest?

case AP_RX_CONTINUE_NOT_AUTHORIZED:
case AP_RX_CONTINUE:
         break;

Normally, falling through from one case to the next is a possible source
of errors, but when there is nothing to do, perhaps the code becomes more
concise and clear.

julia

>
> >>               case AP_RX_DROP:
> >>                       goto rx_dropped;
> >> --
> >> 2.1.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014142414.GA17736%40ubuntu.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQHjzrqSggo57khaaV%2BBsv28NKUawQcbbhEmnXVy_80OZA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

