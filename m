X-GM-THRID: 6471369058680832000
X-Received: by 10.129.78.23 with SMTP id c23mr15009345ywb.61.1506752264135;
        Fri, 29 Sep 2017 23:17:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.70.196 with SMTP id t187ls1029952yba.1.gmail; Fri, 29 Sep
 2017 23:17:43 -0700 (PDT)
X-Received: by 10.129.173.36 with SMTP id l36mr14628419ywh.130.1506752263487;
        Fri, 29 Sep 2017 23:17:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506752263; cv=none;
        d=google.com; s=arc-20160816;
        b=GUCLUgKG0j4mezX3z5BivSawxGnYooZx6adg5+uycam+SGQwUubcj1V5I2k27zNOuC
         fh4RMZGmuib6w6aW2nwElP8nJ4geJx6k69gWdF4ZIcgC57quNX3Ry5Wr1LLHR0bvo/Pr
         GAwAEJNIRJeGA8v94n/98JpTdObKqWpkGx+a+RzMrLt+m9L7ocJ2wqd8mv569keK2tpQ
         r9ElnwzYWE8zjxPfOFRhIbQNHSPyt9eBJoFhzG+RYaaayqYTXduJb85q4gLoiWAsgMCc
         sn2cDrMgSSUtQvtWa3zLpm8Io6Ntxhi0iieir0k2RKYcP25h7ZeypidzytT5nssnwnRq
         UUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=jtWE9TbdvkTBbXS8Yb0R7oACm5gqj30OlqQ1dE4Sbuk=;
        b=x58p4Q7r1lkC3fCW8atTJk3OTI8qk2K2E9G41hShIAurUyQIi8tldurqBQSXu6OpwZ
         WDQOyr16wzeNR21NjiGGjfgZ782zCaevacIARwmhwKTow8C91azh0tZAYitrwRj4nWpV
         ZiX4UUk4LWN3aMeXGIzNva1TdFdZGCanvL9RFjeN+swtFZjlScNcjxHXZBFgchpjoRpA
         mCwd69QcTiy7eAzINXB0UIU/XIfFmXPXusLEJFS7xZJaJ3hn40z/42DNMFOX7hBVyOiw
         1X7CD8nAn2cJbjtNacufS1UUApc2cedFP05fhCJE2Xn0aserthIlojWDP985IZFpLW5O
         vsQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=huTCVYFA;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id u8si129792ywh.12.2017.09.29.23.17.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 23:17:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=huTCVYFA;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id s18so2068742qta.3
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 23:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jtWE9TbdvkTBbXS8Yb0R7oACm5gqj30OlqQ1dE4Sbuk=;
        b=huTCVYFAk+a/7vjb+yF8yOmAGuwTa7gJTnJHrHn0kWQH2S11jQEW3yclE3J2HZfsGn
         xByinh7kEoBDA/fHVhyPIC/9Aahcd8BEMOzswO/tjez2+6a44twY/yv8aK1q8GZktH4w
         JDF50yIl6gvV85EJItzrz46+oy66sA6zZIhGSvMqnSIlWw2yh2HtmBNdjET4UEwl3TNY
         Bc9eRFJ3AO06/zepVwCTfEvsFTDgP2H9aydmxSuhWd4lg+830BxUPOlr9GMj9Jt1lXo+
         BhuyGz8ofRpRpAjov4rj4ZHdOpCYFlfihciAgYERW3zkh2Kukr0oxjhAePh+Ul/NGbIk
         i4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jtWE9TbdvkTBbXS8Yb0R7oACm5gqj30OlqQ1dE4Sbuk=;
        b=jlomeGLQujSFXo4h7w9CrB4YBmGi/szuXuURIvuFFO8H45cpcjo3qaiOGBgqdx+r01
         WgcgvC0DaBGxw8w7OLRKlETdEfzFoOCY8KVrOJqHjPUd3mv9p1VnAYhC7IuHy+rni2Vb
         2r5oUIc4XuyfRZUvdtFJd4mglChBaV9Lt5aM058qzsKYtKB4vV7xT0QxF+nA9QDd6sWc
         24vDGkrvXax5r/xqs15agOEW9tDkTD9H6HpYcBXsyLn/SleBACI94OjwBI0/Rh/3vdCX
         D5yDCG9M+cgFwq6Y8FVgh72oyl3LpC1poiN2Dd0mrF2Fl30iElS5BEjVXF3ilYy4skJ2
         t0nA==
X-Gm-Message-State: AMCzsaUjUAhGTm3wmct96kOfUfKlsohPNIS1iqKQAWCHvXEFnO6uStxa
	KbezZsjzP7yyqrFTnX0l1nUaXOVng1HYtMFD26E=
X-Google-Smtp-Source: AOwi7QDffcW3+uqHGUQP0BrZZ68srcbp1Reotf7BGedUCI5hHQdJTDfVRvws5q9PYe7QGAldeBTILX5ZT0seZckuQQE=
X-Received: by 10.237.53.23 with SMTP id a23mr10251809qte.125.1506752263107;
 Fri, 29 Sep 2017 23:17:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.57.196 with HTTP; Fri, 29 Sep 2017 23:17:42 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709300802170.2511@hadrien>
References: <1506734581-10932-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1709300702330.2511@hadrien> <CAB3L5oz0BXtxrWKXFPG0MqM7tGFrbjT376Hjz1GM2KHox_DDcQ@mail.gmail.com>
 <alpine.DEB.2.20.1709300802170.2511@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 30 Sep 2017 11:47:42 +0530
Message-ID: <CAB3L5ox9u0pj04pjkiC8MRgx=MZqwh=g=2VE0-ZG8NYvrUrDBg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use
 list_entry instead of container_of
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 30, 2017 at 11:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 30 Sep 2017, Srishti Sharma wrote:
>
>> On Sat, Sep 30, 2017 at 10:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 30 Sep 2017, Srishti Sharma wrote:
>> >
>> >> For variables of the type struct list_head* use list_entry to access
>> >> the current list element instead of using container_of.
>> >> Done using the following semantic patch by coccinelle.
>> >>
>> >> @r@
>> >> identifier e;
>> >> struct list_head* l;
>> >> @@
>> >>
>> >> <... when != l == NULL
>> >> l;
>> >> ...>
>> > I don't see what is the goal of the above code.  The list_head variable is
>> > not going to be in a statement by itself.  There is also no need to check
>> > for l being NULL.  If it is NULL, the original code is incorrect too.
>>
>> Since only those container_of are to replaced with list_entry which
>> have a variable of type list_head*  , I wanted to check if it occurs
>> anywhere before
>> container_of ,
>
> Why?  If it is a list, then it seems appropriate to access it using
> list_head.
>
>> which it only does in it's declaration , because it
>> can't be in any
>> statement by itself . I think it will be better to write .
>>
>> @r@
>> identifier e;
>> struct list_head* l;
>> @@
>>
>> <...
>> container_of(l,...);
>> ...>
>
> This doesn't ensure that there is a preceding container_of, if that is
> what you are trying to do.  The problem is that <... P ...> finds 0 or
> more occurrences of pattern P, not 1 or more occurrences.  1 or more
> occurrences is <+... P ...+>.  But it would be simpler if you want an
> occurrence of container_of before the thing you are transforming to put
>
> container_of(l,...);
> ...
> e = ...
>
> But this doesn't make sense either, partly because the preceding
> container_of is just not needed, and also because a container_of would not
> be in a statement by itself.  In Coccinelle, when you put a ; after
> something is means that the thing is a complete statement, not just the
> end half of a statement.

So , I guess we can simply write.

e =
-container_of
+list_entry
     (l,...)

Regards,
Srishti

>
> julia
>
>> e =
>> -container_of
>> +list_entry
>>      (
>>       ....)
>>
>> >> (
>> >> e =
>> >> -container_of
>> >> +list_entry
>> >>      (
>> >>       ...)
>> >> )
>> >
>> > Here you don't need the outer ( ).  This makes a disjunction with only
>> > one choice.  Since there is only one choice, you don't need the
>> > disjunction.
>>
>> Thanks a lot , for pointing out the errors .
>>
>> Regards,
>> Srishti
>> > julia
>> >
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> ---
>> >>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
>> >>  1 file changed, 6 insertions(+), 6 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> >> index 22cf362..f9df4ac 100644
>> >> --- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> >> +++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> >> @@ -152,8 +152,8 @@ u32       _rtw_free_sta_priv(struct       sta_priv *pstapriv)
>> >>                       while (phead != plist) {
>> >>                               int i;
>> >>
>> >> -                             psta = container_of(plist, struct sta_info,
>> >> -                                                 hash_list);
>> >> +                             psta = list_entry(plist, struct sta_info,
>> >> +                                               hash_list);
>> >>                               plist = plist->next;
>> >>
>> >>                               for (i = 0; i < 16; i++) {
>> >> @@ -323,7 +323,7 @@ u32       rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
>> >>               plist = phead->next;
>> >>
>> >>               while (!list_empty(phead)) {
>> >> -                     prframe = container_of(plist, struct recv_frame, list);
>> >> +                     prframe = list_entry(plist, struct recv_frame, list);
>> >>
>> >>                       plist = plist->next;
>> >>
>> >> @@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
>> >>               plist = phead->next;
>> >>
>> >>               while (phead != plist) {
>> >> -                     psta = container_of(plist, struct sta_info, hash_list);
>> >> +                     psta = list_entry(plist, struct sta_info, hash_list);
>> >>
>> >>                       plist = plist->next;
>> >>
>> >> @@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
>> >>       plist = phead->next;
>> >>
>> >>       while (phead != plist) {
>> >> -             psta = container_of(plist, struct sta_info, hash_list);
>> >> +             psta = list_entry(plist, struct sta_info, hash_list);
>> >>
>> >>               if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
>> >>                       /*  if found the matched address */
>> >> @@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
>> >>       phead = get_list_head(pacl_node_q);
>> >>       plist = phead->next;
>> >>       while (phead != plist) {
>> >> -             paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
>> >> +             paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>> >>               plist = plist->next;
>> >>
>> >>               if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506734581-10932-1-git-send-email-srishtishar%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>

