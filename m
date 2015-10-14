X-GM-THRID: 6205299530591633408
X-Received: by 10.112.55.69 with SMTP id q5mr495399lbp.24.1444814091975;
        Wed, 14 Oct 2015 02:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.78.81 with SMTP id c78ls14688lfb.45.gmail; Wed, 14 Oct 2015
 02:14:51 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr505629lbb.13.1444814091433;
        Wed, 14 Oct 2015 02:14:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si271443wiv.3.2015.10.14.02.14.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 02:14:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="182718746"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 11:14:51 +0200
Date: Wed, 14 Oct 2015 11:14:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: rtw_xmit: Remove
 extra NULL tests
In-Reply-To: <CAKHNQQEo5dKJzZABVyD3kfv2-FwCFEP8etzxFtj8CHoomnrBcg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510141113100.2421@hadrien>
References: <20151014005112.GA26569@ubuntu> <alpine.DEB.2.02.1510140748240.2038@localhost6.localdomain6> <CAKHNQQHkNOgY71D6eo5-R-OGBALnJ5H8fyHgkN0xcNMjDZ+T0Q@mail.gmail.com> <CAKHNQQEo5dKJzZABVyD3kfv2-FwCFEP8etzxFtj8CHoomnrBcg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> On Wed, Oct 14, 2015 at 2:38 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> > On Wed, Oct 14, 2015 at 11:18 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
> >>
> >>> Variables already tested for NULL value are checked again so, the extra
> >>> NULL tests should be removed.
> >>> Semantic patch used:
> >>>
> >>> @@ expression E; @@
> >>> if(E==NULL) {... return...;}
> >>> - if(E)
> >>
> >> This is not a valid semantic patch.  The if needs at least a then branch.
> >>
> >> julia
> >>
> >>
> >
> > @@ expression E;
> statement S; @@
> > if(E==NULL) {... return ...;}
> > else S
> > -if(E==NULL){
> > +{
> > ...
> > }
> > -else S

It is strange to remove the { and add it back.  Your semantic patch can
have more newlines than the actual C code, so you don't have to put the {
on the same line as the if.

julia

> >
> > Can you check this one, Julia?
> >
> >>>
> >>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >>> ---
> >>>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
> >>>  1 file changed, 9 deletions(-)
> >>>
> >>> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >>> index a4b6bb6..0ea521b 100644
> >>> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> >>> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >>> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
> >>>
> >>>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
> >>>               /* encode mic code */
> >>> -             if (stainfo) {
> >>>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
> >>>                                        0x0, 0x0, 0x0, 0x0,
> >>>                                        0x0, 0x0, 0x0, 0x0,
> >>> @@ -792,10 +791,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
> >>>                                        *(payload + curfragnum + 6),
> >>>                                        *(payload + curfragnum + 7));
> >>>                       }
> >>> -             } else {
> >>> -                     RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> >>> -                              "xmitframe_addmic: rtw_get_stainfo23a ==NULL!!!\n");
> >>> -             }
> >>>       }
> >>>
> >>>       return _SUCCESS;
> >>> @@ -934,7 +929,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
> >>>               /* TODO: fill HT Control Field */
> >>>
> >>>               /* Update Seq Num will be handled by f/w */
> >>> -             if (psta) {
> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
> >>>                       pattrib->seqnum = psta->sta_xmitpriv.txseq_tid[pattrib->priority];
> >>> @@ -970,7 +964,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
> >>>                                       pattrib->ampdu_en = true;/* AGG EN */
> >>>                               }
> >>>                       }
> >>> -             }
> >>>       }
> >>>  exit:
> >>>       return res;
> >>> @@ -1132,7 +1125,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
> >>>
> >>>               /* adding icv, if necessary... */
> >>>               if (pattrib->iv_len) {
> >>> -                     if (psta) {
> >>>                               switch (pattrib->encrypt) {
> >>>                               case WLAN_CIPHER_SUITE_WEP40:
> >>>                               case WLAN_CIPHER_SUITE_WEP104:
> >>> @@ -1158,7 +1150,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
> >>>                                                      psta->dot11txpn, 0);
> >>>                                       break;
> >>>                               }
> >>> -                     }
> >>>
> >>>                       memcpy(pframe, pattrib->iv, pattrib->iv_len);
> >>>
> >>> --
> >>> 2.1.0
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >>> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014005112.GA26569%40ubuntu.
> >>> For more options, visit https://groups.google.com/d/optout.
> >>>
>

