X-GM-THRID: 6474240568402640896
X-Received: by 10.28.15.134 with SMTP id 128mr687967wmp.0.1507405662761;
        Sat, 07 Oct 2017 12:47:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.138 with SMTP id y132ls398752wmy.9.gmail; Sat, 07 Oct
 2017 12:47:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAhJ6lpcWAO0WTb8uBN9MGlN0U+6Y9eyqofkAYhbPmnVhQRqY7z67phTfj4J2Vmvrgt7ZBL
X-Received: by 10.28.149.18 with SMTP id x18mr551403wmd.18.1507405661763;
        Sat, 07 Oct 2017 12:47:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507405661; cv=none;
        d=google.com; s=arc-20160816;
        b=mPg0UMdASlWUNFynGWOtWSZaHwLz6UYFiiFMv+L4Nz0BuK/yXhiDWjUeA/vuc365xT
         zH4i4jplI3TnqPCkthUiJiYv/pGp2VoOyreHm2Ofjd6zVQnq+pti+I/hC3yPFfuzYm93
         zCMFX/0EN4/KwJkbGAhoprLkIg9o/RXB4IU6MvriPwMj9irj07VZsfyDjxa76v3jN3iv
         pT4rArl4F96Xg65VJ3OY88RzNZ2aU3hQtnxpeohQWTtyOVqnXjPM8k+AseU0OFKLxL5P
         +fYlKuZUsP7kcVmaB7k8aRS5m8JmCH70HHbtHDFnpy/40QqCnxiGx2mQaDVXAPgf4eOw
         qstg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=P+wrIYsvVaMKeEzz+IBKHHp6Bpt4LEELLHM88/kes74=;
        b=N019UcxaS1qeRzfzBZ3SOrdxR6z1u/9wvtgw4h9LIf0w4DZFGEbxwMfDHanLp4nPl6
         +2d6jNUqqlBZRSFH8dafxTpao9H9CIA3BkGy4yK2n/es2x44dr+1v0AMSEOlWvxV7zmJ
         obbcSiMwlFEUuJIMtQYH3ziFUii1P9Jkj8klX4P1E+vab2LK6lR39dmMrptEP+35Spso
         dGJ9aDPV056DUaJ68l05lvxzayqrhyWnfX9ho1JL5KC4If9HuZlQlXE70o7IMsVJNRZx
         OyiX3+0iAz30Tv0XMai1THqL/VBIv4xhxCX++h7DF++TYTSWrugpGlGd2E40+NvAd24R
         7VJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 196si596019wmk.4.2017.10.07.12.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 12:47:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="294921585"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 21:47:41 +0200
Date: Sat, 7 Oct 2017 21:47:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replace
 list_for_each with list_for_each_entry
In-Reply-To: <CAHXiS598RAKBpkEneC+3MB6XY7QHoE6s7MSaEQ4Q1V5ffkQQMA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1710072147210.2071@hadrien>
References: <1507401578-26613-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1710072119220.2071@hadrien> <CAHXiS598RAKBpkEneC+3MB6XY7QHoE6s7MSaEQ4Q1V5ffkQQMA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2017, Aastha Gupta wrote:

> On Sun, Oct 8, 2017 at 12:49 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 8 Oct 2017, Aastha Gupta wrote:
> >
> >> list_for_each is a macro that iterates over the elements of a list.
> >> list_entry is a function that takes as argument a list pointer and
> >> returns the structure that is pointed to.
> >> list_for_each_entry is a macro that iterates over the structures in the
> >> list, rather than exposing the list spine.
> >>
> >> Here the  list is only used for its entries,
> >> and thus list_for_each_entry can be used instead of the
> >> composition of list_for_each and list_entry.
> >>
> >> This patch is with the help of following Coccinelle script:
> >>
> >> @@
> >> expression l, list;
> >> type t1, t2;
> >> identifier p, v;
> >> iterator name list_for_each_entry, list_for_each;
> >> @@
> >>
> >> - t1 *p;
> >> ...
> >> - list_for_each(p, l)
> >> + list_for_each_entry(v, l, list)
> >> {
> >> ... when != p
> >> - v = list_entry(p, t2, list);
> >> ... when != p
> >> }
> >>
> >> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> >> ---
> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 +---
> >>  1 file changed, 1 insertion(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> index cbf8eb4..b8461f4 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >> @@ -447,13 +447,11 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
> >>       switch (ieee->iw_mode) {
> >>       case IW_MODE_ADHOC:
> >>       {
> >> -             struct list_head *p;
> >>               struct ieee_ibss_seq *entry = NULL;
> >>               u8 *mac = header->addr2;
> >>               int index = mac[5] % IEEE_IBSS_MAC_HASH_SIZE;
> >>
> >> -             list_for_each(p, &ieee->ibss_mac_hash[index]) {
> >> -                     entry = list_entry(p, struct ieee_ibss_seq, list);
> >> +             list_for_each_entry(entry, &ieee->ibss_mac_hash[index], list) {
> >>                       if (!memcmp(entry->mac, mac, ETH_ALEN))
> >>                               break;
> >>               }
> >
> > You can also drop the braces.
> >
> > julia
>
> Braces after the list_for_each_entry in ieee80211_rx.c ?

Yes.  The body of the loop is a single statement.

julia

> >
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507401578-26613-1-git-send-email-aastha.gupta4104%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

