X-GM-THRID: 6471369058680832000
X-Received: by 10.28.157.82 with SMTP id g79mr1016418wme.20.1506752523202;
        Fri, 29 Sep 2017 23:22:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.148.68 with SMTP id 62ls46590wrq.0.gmail; Fri, 29 Sep 2017
 23:22:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCZa7pbAvJ377ci8+fl+8DXe7a1N3Fjv4nyM4gZpE46bhS7ROzrU7RiN5gr631Mznrdeuc1
X-Received: by 10.28.135.132 with SMTP id j126mr1045765wmd.0.1506752522484;
        Fri, 29 Sep 2017 23:22:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506752522; cv=none;
        d=google.com; s=arc-20160816;
        b=ob+JryJTmMIahQ0JFUpC66oP18mOLhNoM8FDJRG/Qch9IsZMK8wtaokLic5tl7H5r5
         pSLwPUdSjzg7W9QEA52Wb1IJwi77G7ThE506H4dTZz1KJ5m3GAB3i5toeCOFMmEfb7tG
         CHybV+67gb1gzhuywWHJtH77uHMGBOWzfak+dxVA2woNzZMp0u3IVhBU8Qtgf5O0WwG4
         eBsJY/9aZHJHgQ74lNTFdV1c+IAP9tYWawJhXxlNS1Lb0s0ZeVeZfsgsyiD603ClRSCQ
         2GUpH/ymZCgo/E1KJO4Gm6PfY6bYlrLoOMcNuf0cOfRKvPUhPwUWwNVTIB36AABMfRjk
         XNwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=R75xD6ejNqSYoIh/uES2TdgiySYbyu5+TsqaAO3sCJk=;
        b=k12vRIG/5d4ec7nXuX+smqMgel8gDcmFa6KUz/IBE5eZueaoVWSwi/sG+dWFZa/c+8
         pVzbNh8EEz+rfMCcXyy/MEDzrH7eW5c6vU25R7TrIxs5rnmfc27PvOXe3wBqNOuvp5z5
         mAEm8TiEjiD/rEnsFS/oVgRYxlQo8zpnmzJazxWMgJ+O3bzZz12TEelEvNjrPFftXNHH
         pUCKwouRiHrExi/obpznX3O3n4xquzZQZc4QfP0dgHs+eeka3u5HydPewQac6ACkZx8e
         WEE4GWXdFkvfpSnriNCxZHlAnbJvSi2NVGQR2qTRAp7rmUhVM76vrKbhyg9wXsAfVCYp
         U1PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si865341wme.4.2017.09.29.23.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 23:22:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,456,1500933600"; 
   d="scan'208";a="239213300"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 08:22:01 +0200
Date: Sat, 30 Sep 2017 08:21:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use list_entry
 instead of container_of
In-Reply-To: <CAB3L5ox9u0pj04pjkiC8MRgx=MZqwh=g=2VE0-ZG8NYvrUrDBg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709300821090.2511@hadrien>
References: <1506734581-10932-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709300702330.2511@hadrien> <CAB3L5oz0BXtxrWKXFPG0MqM7tGFrbjT376Hjz1GM2KHox_DDcQ@mail.gmail.com> <alpine.DEB.2.20.1709300802170.2511@hadrien>
 <CAB3L5ox9u0pj04pjkiC8MRgx=MZqwh=g=2VE0-ZG8NYvrUrDBg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Sep 2017, Srishti Sharma wrote:

> On Sat, Sep 30, 2017 at 11:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 30 Sep 2017, Srishti Sharma wrote:
> >
> >> On Sat, Sep 30, 2017 at 10:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >
> >> >
> >> > On Sat, 30 Sep 2017, Srishti Sharma wrote:
> >> >
> >> >> For variables of the type struct list_head* use list_entry to access
> >> >> the current list element instead of using container_of.
> >> >> Done using the following semantic patch by coccinelle.
> >> >>
> >> >> @r@
> >> >> identifier e;
> >> >> struct list_head* l;
> >> >> @@
> >> >>
> >> >> <... when != l == NULL
> >> >> l;
> >> >> ...>
> >> > I don't see what is the goal of the above code.  The list_head variable is
> >> > not going to be in a statement by itself.  There is also no need to check
> >> > for l being NULL.  If it is NULL, the original code is incorrect too.
> >>
> >> Since only those container_of are to replaced with list_entry which
> >> have a variable of type list_head*  , I wanted to check if it occurs
> >> anywhere before
> >> container_of ,
> >
> > Why?  If it is a list, then it seems appropriate to access it using
> > list_head.
> >
> >> which it only does in it's declaration , because it
> >> can't be in any
> >> statement by itself . I think it will be better to write .
> >>
> >> @r@
> >> identifier e;
> >> struct list_head* l;
> >> @@
> >>
> >> <...
> >> container_of(l,...);
> >> ...>
> >
> > This doesn't ensure that there is a preceding container_of, if that is
> > what you are trying to do.  The problem is that <... P ...> finds 0 or
> > more occurrences of pattern P, not 1 or more occurrences.  1 or more
> > occurrences is <+... P ...+>.  But it would be simpler if you want an
> > occurrence of container_of before the thing you are transforming to put
> >
> > container_of(l,...);
> > ...
> > e = ...
> >
> > But this doesn't make sense either, partly because the preceding
> > container_of is just not needed, and also because a container_of would not
> > be in a statement by itself.  In Coccinelle, when you put a ; after
> > something is means that the thing is a complete statement, not just the
> > end half of a statement.
>
> So , I guess we can simply write.
>
> e =
> -container_of
> +list_entry
>      (l,...)

Yes.  You don't even need the e =.  As long as there is a call to
container_of on a list_head * value, you can change it.

julia

>
> Regards,
> Srishti
>
> >
> > julia
> >
> >> e =
> >> -container_of
> >> +list_entry
> >>      (
> >>       ....)
> >>
> >> >> (
> >> >> e =
> >> >> -container_of
> >> >> +list_entry
> >> >>      (
> >> >>       ...)
> >> >> )
> >> >
> >> > Here you don't need the outer ( ).  This makes a disjunction with only
> >> > one choice.  Since there is only one choice, you don't need the
> >> > disjunction.
> >>
> >> Thanks a lot , for pointing out the errors .
> >>
> >> Regards,
> >> Srishti
> >> > julia
> >> >
> >> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> >> ---
> >> >>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
> >> >>  1 file changed, 6 insertions(+), 6 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> >> >> index 22cf362..f9df4ac 100644
> >> >> --- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> >> >> +++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> >> >> @@ -152,8 +152,8 @@ u32       _rtw_free_sta_priv(struct       sta_priv *pstapriv)
> >> >>                       while (phead != plist) {
> >> >>                               int i;
> >> >>
> >> >> -                             psta = container_of(plist, struct sta_info,
> >> >> -                                                 hash_list);
> >> >> +                             psta = list_entry(plist, struct sta_info,
> >> >> +                                               hash_list);
> >> >>                               plist = plist->next;
> >> >>
> >> >>                               for (i = 0; i < 16; i++) {
> >> >> @@ -323,7 +323,7 @@ u32       rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
> >> >>               plist = phead->next;
> >> >>
> >> >>               while (!list_empty(phead)) {
> >> >> -                     prframe = container_of(plist, struct recv_frame, list);
> >> >> +                     prframe = list_entry(plist, struct recv_frame, list);
> >> >>
> >> >>                       plist = plist->next;
> >> >>
> >> >> @@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
> >> >>               plist = phead->next;
> >> >>
> >> >>               while (phead != plist) {
> >> >> -                     psta = container_of(plist, struct sta_info, hash_list);
> >> >> +                     psta = list_entry(plist, struct sta_info, hash_list);
> >> >>
> >> >>                       plist = plist->next;
> >> >>
> >> >> @@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
> >> >>       plist = phead->next;
> >> >>
> >> >>       while (phead != plist) {
> >> >> -             psta = container_of(plist, struct sta_info, hash_list);
> >> >> +             psta = list_entry(plist, struct sta_info, hash_list);
> >> >>
> >> >>               if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
> >> >>                       /*  if found the matched address */
> >> >> @@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
> >> >>       phead = get_list_head(pacl_node_q);
> >> >>       plist = phead->next;
> >> >>       while (phead != plist) {
> >> >> -             paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> >> >> +             paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
> >> >>               plist = plist->next;
> >> >>
> >> >>               if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
> >> >> --
> >> >> 2.7.4
> >> >>
> >> >> --
> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506734581-10932-1-git-send-email-srishtishar%40gmail.com.
> >> >> For more options, visit https://groups.google.com/d/optout.
> >> >>
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5ox9u0pj04pjkiC8MRgx%3DMZqwh%3Dg%3D2VE0-ZG8NYvrUrDBg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

