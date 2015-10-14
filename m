X-GM-THRID: 6205509094362578944
X-Received: by 10.180.85.133 with SMTP id h5mr1126076wiz.1.1444841382646;
        Wed, 14 Oct 2015 09:49:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.137 with SMTP id hs9ls182462wib.37.gmail; Wed, 14 Oct
 2015 09:49:42 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr1010473wjb.3.1444841382236;
        Wed, 14 Oct 2015 09:49:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bh7si924251wib.1.2015.10.14.09.49.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 09:49:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="150555985"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 18:49:41 +0200
Date: Wed, 14 Oct 2015 18:49:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unused code
In-Reply-To: <CAKHNQQEQYMt3pHCOK9=wP_29hk1PD2=h5PkJx4=9WcYeGUB2iA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510141849220.2421@hadrien>
References: <20151014142414.GA17736@ubuntu> <alpine.DEB.2.10.1510141625572.2421@hadrien> <CAKHNQQHjzrqSggo57khaaV+Bsv28NKUawQcbbhEmnXVy_80OZA@mail.gmail.com> <alpine.DEB.2.10.1510141808580.2421@hadrien> <CAKHNQQGXmgmC28yZMrKyu-8L5Tm_waXTnRbZv2et5tNp2uwHVQ@mail.gmail.com>
 <CAKHNQQEQYMt3pHCOK9=wP_29hk1PD2=h5PkJx4=9WcYeGUB2iA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> On Wed, Oct 14, 2015 at 9:40 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> > On Wed, Oct 14, 2015 at 9:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>
> >>
> >> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
> >>
> >>> On Wed, Oct 14, 2015 at 7:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>> >
> >>> >
> >>> > On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
> >>> >
> >>> >> The variable frame_authorized is declared and mentioned in the code but
> >>> >> is not used anywhere so, it should be removed.
> >>> >> Semantic patch used:
> >>> >> @@
> >>> >> type T;
> >>> >> identifier i;
> >>> >> constant C;
> >>> >> position p != e.p;
> >>> >> @@
> >>> >>
> >>> >> - T i@p;
> >>> >>   <+... when != i
> >>> >> - i = C;
> >>> >>   ...+>
> >>> >>
> >>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >>> >> ---
> >>> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ---
> >>> >>  1 file changed, 3 deletions(-)
> >>> >>
> >>> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >>> >> index 4b5f32d..ab60c3f 100644
> >>> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >>> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >>> >> @@ -899,7 +899,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
> >>> >>       struct net_device *wds = NULL;
> >>> >>       struct sk_buff *skb2 = NULL;
> >>> >>       struct net_device *wds = NULL;
> >>> >> -     int frame_authorized = 0;
> >>> >>       int from_assoc_ap = 0;
> >>> >>       void *sta = NULL;
> >>> >>  #endif
> >>> >> @@ -1106,10 +1105,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
> >>> >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
> >>> >>                                            wds != NULL)) {
> >>> >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
> >>> >> -                     frame_authorized = 0;
> >>> >>                       break;
> >>> >>               case AP_RX_CONTINUE:
> >>> >> -                     frame_authorized = 1;
> >>> >>                       break;
> >>> >
> >>> > Should the cases be merged?  I don't know what is the common strategy in
> >>> > the Linux kernel.
> >>> >
> >>> > julia
> >>> >
> >>>
> >>> What do you suggest?
> >>
> >> case AP_RX_CONTINUE_NOT_AUTHORIZED:
> >> case AP_RX_CONTINUE:
> >>          break;
> >>
> >> Normally, falling through from one case to the next is a possible source
> >> of errors, but when there is nothing to do, perhaps the code becomes more
> >> concise and clear.
> >>
> >> julia
> >>
>
> Should I send this as a patch series? Or combining the cases will look
> fine under the heading "removing extra code" with the other code?

I think it could be done at once.

julia

>
> >
> > Fine. I'll do this.
> > Thank you. :)
> >
> >>>
> >>> >>               case AP_RX_DROP:
> >>> >>                       goto rx_dropped;
> >>> >> --
> >>> >> 2.1.0
> >>> >>
> >>> >> --
> >>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014142414.GA17736%40ubuntu.
> >>> >> For more options, visit https://groups.google.com/d/optout.
> >>> >>
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >>> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQHjzrqSggo57khaaV%2BBsv28NKUawQcbbhEmnXVy_80OZA%40mail.gmail.com.
> >>> For more options, visit https://groups.google.com/d/optout.
> >>>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQEQYMt3pHCOK9%3DwP_29hk1PD2%3Dh5PkJx4%3D9WcYeGUB2iA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

