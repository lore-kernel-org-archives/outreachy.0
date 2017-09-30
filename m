X-GM-THRID: 6471369058680832000
X-Received: by 10.13.249.65 with SMTP id j62mr15237062ywf.20.1506752651446;
        Fri, 29 Sep 2017 23:24:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.197.194 with SMTP id v185ls1036133ybe.8.gmail; Fri, 29 Sep
 2017 23:24:10 -0700 (PDT)
X-Received: by 10.129.47.3 with SMTP id v3mr14573188ywv.154.1506752650767;
        Fri, 29 Sep 2017 23:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506752650; cv=none;
        d=google.com; s=arc-20160816;
        b=D83hQ6N6YfI16/2+RnpQywPCzMu4U/0m4VNsZw2SYuPrgqcj9x8FTY81Vvy05piT+g
         PDZ6LtfPG/Zm6I0Eo9RIuV+DqeC2A8KtetYHBoK0tPgH58Ti/wwhsdGmEVd0nd2N3RVM
         aLppEtsx2hqaBpn7rb+76dOl+WT3VSMIqoCChsQEv+SdCERe/wN6P50KkNC5jyXhq9Px
         VYKI3AMn+JRCBHnKZ10SYetjyK/o7u2SAc25KUQOET0jmd9PGF/nqO0/ydHEd5rRm3uG
         AG+hKjNUzPibzGp0qTr5JbK0qia04/5PQHuDDxoyR5jUI52q+ix/RwULqxS7Z1xd+auo
         Uj8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=pqVDS9Zr47yaG/02Sku6GdTzgUce36prJY1JfFPxsbE=;
        b=TemeVyaoA5BQCOZ+avCXGCT12rt4ELwkHUWWTtVUfU5Ey/mXGJ2MsTEP3p1tsHZDDF
         JJmZYnIYCJGjiDOAhxrGAIXdB1BHPKmMnrKY60cM6GZvPAfuQ3QW+Kd9SSDj+GIU10X9
         If1ml9/jAEuZNL28T0n6ouiX8wvI+JUmX5XDxqx6twkBnGixpQA8+0cklG1RHXOah9cR
         ndip/IzIXQ7r5/JRs02rTOCn5UOJX7a5yIZJnX0aPSoon78C+KC5IqjqQkKiO6i1473A
         qZQ4KRb/1I70n5SQsIWbIDTSdWYnGJxpfSKSebHPJ84HmcNW99JNZbS/mToQWvchF0dK
         dFTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYoqa6jQ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id l203si334304ywe.23.2017.09.29.23.24.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 23:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYoqa6jQ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id z14so1048799qkg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 23:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=pqVDS9Zr47yaG/02Sku6GdTzgUce36prJY1JfFPxsbE=;
        b=DYoqa6jQYbiRUwcw21EMHqFLkRjc1VkGTqm+N+p4taJQlVeeSUW73w7QGFEqygqpOM
         vMhScGJqrqvZquRRi5dMnKlGTIMrVpZKryU5iKJp2zdNQ2LF5C+hfRdEAz6JqqUfPfqX
         tX4Qxck9aKB6n2JLuZg30sOw72jCxUvPmPGvh9hBhIPRxINnXr0AoX3fa+BDkpFGqxAH
         kEICO4qseLyLV2Z6R/yMzeYDPIBiqesTTVJuPTySGzbHoXenGy+ryiJHjcQQ4FUdBXXQ
         KzvjsHyhkS0z6WAIrhEqf75aN6q8PrCX1AfxH080Gk5Y0/5P4uOTQgrmgwqXMoOwagKr
         QA+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=pqVDS9Zr47yaG/02Sku6GdTzgUce36prJY1JfFPxsbE=;
        b=AH2pTHalnCQ7epmoiTqB4Q8b0sNereqyUC5ahwdgM2TLIafrQrQvMAJ7/Ycgb/A6mQ
         TNKBqHxmqZa4iLuuPsCTq6rnrdFDUC3JA04G0wQe3kVWVJQiQsv/tAtk1BusdR8C/KLr
         4yLzMhj1CW+lKiSfzepjJQjGx43/37Ku4pv+m4hTTfHJ47XTbF5JCpw2yja8V++EyhhU
         vsX1BofEuzs0V7uR9oDoP1fVyfByMGixK5eIvL6p8qGqJeu5zMDPW6uYxUMg0VXxuHRH
         8p8qHF9QkbmH3OKMUmBCK3JDB4iAW75FnsmukmJ8jyksaOB8gRN0MkymKR8QQUUWkkzX
         jiOg==
X-Gm-Message-State: AMCzsaVvvNOHNl2rOpTI35Lvu9GvU/dKoAUln6nIAlbDC8BuVf3cPWSG
	s0yisFLzhLjrCnG/1axE3veDqEgQMXNFOXB7XP4=
X-Google-Smtp-Source: AOwi7QDaxUbgXgAyODOgfJANTj15Sb1ErjX0J0PV35gp2c0SYhJT85feLhSP8qaPdULsUiw7i9Y72GZBxSaUgC+k0iY=
X-Received: by 10.55.177.198 with SMTP id a189mr6231080qkf.77.1506752650335;
 Fri, 29 Sep 2017 23:24:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.57.196 with HTTP; Fri, 29 Sep 2017 23:24:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709300821090.2511@hadrien>
References: <1506734581-10932-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1709300702330.2511@hadrien> <CAB3L5oz0BXtxrWKXFPG0MqM7tGFrbjT376Hjz1GM2KHox_DDcQ@mail.gmail.com>
 <alpine.DEB.2.20.1709300802170.2511@hadrien> <CAB3L5ox9u0pj04pjkiC8MRgx=MZqwh=g=2VE0-ZG8NYvrUrDBg@mail.gmail.com>
 <alpine.DEB.2.20.1709300821090.2511@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 30 Sep 2017 11:54:09 +0530
Message-ID: <CAB3L5oz40LP-+oYjQfBi-2ZPdDh9TdKHYK3=dOzFUk3jOoHBWw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use
 list_entry instead of container_of
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 30, 2017 at 11:51 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 30 Sep 2017, Srishti Sharma wrote:
>
>> On Sat, Sep 30, 2017 at 11:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 30 Sep 2017, Srishti Sharma wrote:
>> >
>> >> On Sat, Sep 30, 2017 at 10:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> >
>> >> >
>> >> > On Sat, 30 Sep 2017, Srishti Sharma wrote:
>> >> >
>> >> >> For variables of the type struct list_head* use list_entry to access
>> >> >> the current list element instead of using container_of.
>> >> >> Done using the following semantic patch by coccinelle.
>> >> >>
>> >> >> @r@
>> >> >> identifier e;
>> >> >> struct list_head* l;
>> >> >> @@
>> >> >>
>> >> >> <... when != l == NULL
>> >> >> l;
>> >> >> ...>
>> >> > I don't see what is the goal of the above code.  The list_head variable is
>> >> > not going to be in a statement by itself.  There is also no need to check
>> >> > for l being NULL.  If it is NULL, the original code is incorrect too.
>> >>
>> >> Since only those container_of are to replaced with list_entry which
>> >> have a variable of type list_head*  , I wanted to check if it occurs
>> >> anywhere before
>> >> container_of ,
>> >
>> > Why?  If it is a list, then it seems appropriate to access it using
>> > list_head.
>> >
>> >> which it only does in it's declaration , because it
>> >> can't be in any
>> >> statement by itself . I think it will be better to write .
>> >>
>> >> @r@
>> >> identifier e;
>> >> struct list_head* l;
>> >> @@
>> >>
>> >> <...
>> >> container_of(l,...);
>> >> ...>
>> >
>> > This doesn't ensure that there is a preceding container_of, if that is
>> > what you are trying to do.  The problem is that <... P ...> finds 0 or
>> > more occurrences of pattern P, not 1 or more occurrences.  1 or more
>> > occurrences is <+... P ...+>.  But it would be simpler if you want an
>> > occurrence of container_of before the thing you are transforming to put
>> >
>> > container_of(l,...);
>> > ...
>> > e = ...
>> >
>> > But this doesn't make sense either, partly because the preceding
>> > container_of is just not needed, and also because a container_of would not
>> > be in a statement by itself.  In Coccinelle, when you put a ; after
>> > something is means that the thing is a complete statement, not just the
>> > end half of a statement.
>>
>> So , I guess we can simply write.
>>
>> e =
>> -container_of
>> +list_entry
>>      (l,...)
>
> Yes.  You don't even need the e =.  As long as there is a call to
> container_of on a list_head * value, you can change it.

Okay, Thanks again :) , I'll make the changes and resend .

Regards,
Srishti
>
> julia
>
>>
>> Regards,
>> Srishti
>>
>> >
>> > julia
>> >
>> >> e =
>> >> -container_of
>> >> +list_entry
>> >>      (
>> >>       ....)
>> >>
>> >> >> (
>> >> >> e =
>> >> >> -container_of
>> >> >> +list_entry
>> >> >>      (
>> >> >>       ...)
>> >> >> )
>> >> >
>> >> > Here you don't need the outer ( ).  This makes a disjunction with only
>> >> > one choice.  Since there is only one choice, you don't need the
>> >> > disjunction.
>> >>
>> >> Thanks a lot , for pointing out the errors .
>> >>
>> >> Regards,
>> >> Srishti
>> >> > julia
>> >> >
>> >> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> >> ---
>> >> >>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
>> >> >>  1 file changed, 6 insertions(+), 6 deletions(-)
>> >> >>
>> >> >> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> >> >> index 22cf362..f9df4ac 100644
>> >> >> --- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> >> >> +++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> >> >> @@ -152,8 +152,8 @@ u32       _rtw_free_sta_priv(struct       sta_priv *pstapriv)
>> >> >>                       while (phead != plist) {
>> >> >>                               int i;
>> >> >>
>> >> >> -                             psta = container_of(plist, struct sta_info,
>> >> >> -                                                 hash_list);
>> >> >> +                             psta = list_entry(plist, struct sta_info,
>> >> >> +                                               hash_list);
>> >> >>                               plist = plist->next;
>> >> >>
>> >> >>                               for (i = 0; i < 16; i++) {
>> >> >> @@ -323,7 +323,7 @@ u32       rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
>> >> >>               plist = phead->next;
>> >> >>
>> >> >>               while (!list_empty(phead)) {
>> >> >> -                     prframe = container_of(plist, struct recv_frame, list);
>> >> >> +                     prframe = list_entry(plist, struct recv_frame, list);
>> >> >>
>> >> >>                       plist = plist->next;
>> >> >>
>> >> >> @@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
>> >> >>               plist = phead->next;
>> >> >>
>> >> >>               while (phead != plist) {
>> >> >> -                     psta = container_of(plist, struct sta_info, hash_list);
>> >> >> +                     psta = list_entry(plist, struct sta_info, hash_list);
>> >> >>
>> >> >>                       plist = plist->next;
>> >> >>
>> >> >> @@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
>> >> >>       plist = phead->next;
>> >> >>
>> >> >>       while (phead != plist) {
>> >> >> -             psta = container_of(plist, struct sta_info, hash_list);
>> >> >> +             psta = list_entry(plist, struct sta_info, hash_list);
>> >> >>
>> >> >>               if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
>> >> >>                       /*  if found the matched address */
>> >> >> @@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
>> >> >>       phead = get_list_head(pacl_node_q);
>> >> >>       plist = phead->next;
>> >> >>       while (phead != plist) {
>> >> >> -             paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
>> >> >> +             paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>> >> >>               plist = plist->next;
>> >> >>
>> >> >>               if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
>> >> >> --
>> >> >> 2.7.4
>> >> >>
>> >> >> --
>> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506734581-10932-1-git-send-email-srishtishar%40gmail.com.
>> >> >> For more options, visit https://groups.google.com/d/optout.
>> >> >>
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5ox9u0pj04pjkiC8MRgx%3DMZqwh%3Dg%3D2VE0-ZG8NYvrUrDBg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

