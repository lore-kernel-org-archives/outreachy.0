X-GM-THRID: 6471369058680832000
X-Received: by 10.28.1.146 with SMTP id 140mr971483wmb.2.1506751604525;
        Fri, 29 Sep 2017 23:06:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.130.196 with SMTP id 62ls445wrc.5.gmail; Fri, 29 Sep 2017
 23:06:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBD/D40bj0DO0bVM04mDFqVv2LE9dRqTIpyudoHBIfYhvT4XfPrqJGiTADl8Hczjw1hOusB
X-Received: by 10.28.7.196 with SMTP id 187mr885373wmh.7.1506751603722;
        Fri, 29 Sep 2017 23:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506751603; cv=none;
        d=google.com; s=arc-20160816;
        b=k/NO2168++pSn9PqQZ+L3jzZJNWdk0kzHeFWPg2ne2oVbZvpel0yWRkCreSPEGYF6T
         CrlejQSrnvoCNJppjtbdxWJ8ofjfb5y712zMwZS+bjTkU6IxV1KmYG8GmV4UjmD52S4X
         z85FC6ob/RhZKb2/BLLNIp5eYm/0+K8tutSBPgA4bU0TGDOPQPuv2ud/jqhNh6XKsNYK
         ljpLsf4gmFZ8s7CSjplgFLVvkDIHB7P9ybx+V5SftPeHZrapU40GEZN1xuAsbZXuhdap
         pJ3yNZPVV5rFIrOiJfPkooq3dfkG0LGFtPPUO+zSNjPDO3UUDW6QTFrP6dSJiGKtmfRo
         GILQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=k11+4MB2dWSnZfmzJDDuw/aF6kdwqBey6h1ZqXzu0BM=;
        b=SijcnyqcnTN4+4fzIF824iUFxtMgDpE9rj9mun8fO71wN9yP12iZG9N4Psy4/lGGBf
         dr7sjYktY66TrL6utXGxJ59HZTzEAAP9XV/HnoWmi1IdXHtD+W/ZmhK5wTizhwDy9wOA
         Yo5l1JgJVez6yfOInNMNYd7WNsHmcIjJG96M4vok5zRPBsErxjU0EHyjcl4Hm0Ylaf4P
         FdfqhMy8eVjbVJgXnb33W6HKPvO3kiaAwH4GsUzUXKUGXZdp+A7icEFWAVYGj5Iy8PN8
         lzJDh/z01HiuCyYNwnCxqT5JbxYmeF4mC/6ovXhp6J7rRGhicbocnORTKk9989QAwItf
         UmRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si758094wmg.4.2017.09.29.23.06.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 23:06:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,456,1500933600"; 
   d="scan'208";a="239212209"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 08:06:42 +0200
Date: Sat, 30 Sep 2017 08:06:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use list_entry
 instead of container_of
In-Reply-To: <CAB3L5oz0BXtxrWKXFPG0MqM7tGFrbjT376Hjz1GM2KHox_DDcQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709300802170.2511@hadrien>
References: <1506734581-10932-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709300702330.2511@hadrien> <CAB3L5oz0BXtxrWKXFPG0MqM7tGFrbjT376Hjz1GM2KHox_DDcQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Sep 2017, Srishti Sharma wrote:

> On Sat, Sep 30, 2017 at 10:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 30 Sep 2017, Srishti Sharma wrote:
> >
> >> For variables of the type struct list_head* use list_entry to access
> >> the current list element instead of using container_of.
> >> Done using the following semantic patch by coccinelle.
> >>
> >> @r@
> >> identifier e;
> >> struct list_head* l;
> >> @@
> >>
> >> <... when != l == NULL
> >> l;
> >> ...>
> > I don't see what is the goal of the above code.  The list_head variable is
> > not going to be in a statement by itself.  There is also no need to check
> > for l being NULL.  If it is NULL, the original code is incorrect too.
>
> Since only those container_of are to replaced with list_entry which
> have a variable of type list_head*  , I wanted to check if it occurs
> anywhere before
> container_of ,

Why?  If it is a list, then it seems appropriate to access it using
list_head.

> which it only does in it's declaration , because it
> can't be in any
> statement by itself . I think it will be better to write .
>
> @r@
> identifier e;
> struct list_head* l;
> @@
>
> <...
> container_of(l,...);
> ...>

This doesn't ensure that there is a preceding container_of, if that is
what you are trying to do.  The problem is that <... P ...> finds 0 or
more occurrences of pattern P, not 1 or more occurrences.  1 or more
occurrences is <+... P ...+>.  But it would be simpler if you want an
occurrence of container_of before the thing you are transforming to put

container_of(l,...);
...
e = ...

But this doesn't make sense either, partly because the preceding
container_of is just not needed, and also because a container_of would not
be in a statement by itself.  In Coccinelle, when you put a ; after
something is means that the thing is a complete statement, not just the
end half of a statement.

julia

> e =
> -container_of
> +list_entry
>      (
>       ....)
>
> >> (
> >> e =
> >> -container_of
> >> +list_entry
> >>      (
> >>       ...)
> >> )
> >
> > Here you don't need the outer ( ).  This makes a disjunction with only
> > one choice.  Since there is only one choice, you don't need the
> > disjunction.
>
> Thanks a lot , for pointing out the errors .
>
> Regards,
> Srishti
> > julia
> >
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> ---
> >>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
> >>  1 file changed, 6 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> >> index 22cf362..f9df4ac 100644
> >> --- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> >> +++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> >> @@ -152,8 +152,8 @@ u32       _rtw_free_sta_priv(struct       sta_priv *pstapriv)
> >>                       while (phead != plist) {
> >>                               int i;
> >>
> >> -                             psta = container_of(plist, struct sta_info,
> >> -                                                 hash_list);
> >> +                             psta = list_entry(plist, struct sta_info,
> >> +                                               hash_list);
> >>                               plist = plist->next;
> >>
> >>                               for (i = 0; i < 16; i++) {
> >> @@ -323,7 +323,7 @@ u32       rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
> >>               plist = phead->next;
> >>
> >>               while (!list_empty(phead)) {
> >> -                     prframe = container_of(plist, struct recv_frame, list);
> >> +                     prframe = list_entry(plist, struct recv_frame, list);
> >>
> >>                       plist = plist->next;
> >>
> >> @@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
> >>               plist = phead->next;
> >>
> >>               while (phead != plist) {
> >> -                     psta = container_of(plist, struct sta_info, hash_list);
> >> +                     psta = list_entry(plist, struct sta_info, hash_list);
> >>
> >>                       plist = plist->next;
> >>
> >> @@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
> >>       plist = phead->next;
> >>
> >>       while (phead != plist) {
> >> -             psta = container_of(plist, struct sta_info, hash_list);
> >> +             psta = list_entry(plist, struct sta_info, hash_list);
> >>
> >>               if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
> >>                       /*  if found the matched address */
> >> @@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
> >>       phead = get_list_head(pacl_node_q);
> >>       plist = phead->next;
> >>       while (phead != plist) {
> >> -             paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> >> +             paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
> >>               plist = plist->next;
> >>
> >>               if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506734581-10932-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

