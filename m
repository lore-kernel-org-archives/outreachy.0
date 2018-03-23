X-GM-THRID: 6536210357179908096
X-Received: by 10.46.93.219 with SMTP id v88mr1930039lje.36.1521844289445;
        Fri, 23 Mar 2018 15:31:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:fc2:: with SMTP id 63-v6ls1239091lfp.16.gmail; Fri, 23
 Mar 2018 15:31:28 -0700 (PDT)
X-Google-Smtp-Source: AG47ELs2VXjRfwVXhJt4rQiGbugJo7dl2JyY3i6dRMzKGfb21F0jVuKooXiS2vcLRdUf2SaUp1bk
X-Received: by 2002:a19:a9c6:: with SMTP id s189-v6mr2085210lfe.11.1521844288197;
        Fri, 23 Mar 2018 15:31:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521844288; cv=none;
        d=google.com; s=arc-20160816;
        b=NyYFTXiRMNJn01Ve8s1yTRX9aRUgCvaoDOrXFnSczeTu3wce+TiDLWqn3J8rHXoisr
         MVMpFqI4c8qzPg1opYfp62kHcCN6PZE5wBLbI5sMd6z5bC0TWrsUTwKgYYAhZ7cZ8NUX
         8rSIErakQ4ms1SuqwByh2+zWOhqKAeD27IYB+65hqr3rVGi/HG6gpgWsyijP/a8WrPEg
         5tyRfJhyWHSVl6bexrpbaxa30YEPw+XAVNJYE36QvV7Z0x6E2LQhtuyBynQpg3XebfaH
         338Dtc9ftPfiycs9uDmEjjceZs2NTyi/CcXPK9cFaYxQ+tFTYROZtMJcrODhnjCe8By3
         bq3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=J7qH5IHk+DcwoqeaH+/mYeVn0r6gBPGhSn7WHG6j3+Q=;
        b=Hrd3pZkqgbyB6XnvEtp3wdpdocCkA8rGN/PMa6ZG2YFdm5vo8OJZVzJOOhC1320ekI
         Wwg+050RSYoGlXcXMpxn/sE4h+q7zTLV5NoJGjGfRuHiUu/jiwOHCoK66nqi8wiWanAl
         X/0lL1GIE9ZChFw9oIvHadGWmHB946845e2m+qQBaD76HM0E9NyhXG9eex+28pkhlcHj
         bEe5S2jvkFVlVTZK9P5R4qOPmArcIrxQCkOXdqAXZnkTKYRsgG+kDCkVQ/LU1M8ani4d
         fJ27KT8B9gppMeaG/Fg9GC2NjNPbHiPI1elhhY720Om1iQlDAVZ4SVzwLrX6Vkc2qT0D
         lPOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j185-v6si321653lfe.3.2018.03.23.15.31.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 15:31:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,351,1517871600"; 
   d="scan'208";a="319689272"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2018 23:31:26 +0100
Date: Fri, 23 Mar 2018 18:31:24 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: vt6655: Change
 CARD_PKT_TYPE from typedef to enum
In-Reply-To: <CAC4++KDR0oqq6HVRU5NEJx5U_GUZ1-mb8PRP2nXTn1KpTEXkMA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803231829090.2369@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <alpine.DEB.2.20.1803231435550.2450@hadrien> <CAC4++KDR0oqq6HVRU5NEJx5U_GUZ1-mb8PRP2nXTn1KpTEXkMA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> On Sat, Mar 24, 2018 at 12:06 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Fri, 23 Mar 2018, Nishka Dasgupta wrote:
> >
> >> Change CARD_PKT_TYPE from typedef enum to enum. Issue found with checkpatch.
> >>
> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> >> ---
> >> Changes in v2:
> >>  - Clarify subject and commit message.
> >>
> >>  drivers/staging/vt6655/card.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> >> index 487039a..be5254a 100644
> >> --- a/drivers/staging/vt6655/card.h
> >> +++ b/drivers/staging/vt6655/card.h
> >> @@ -39,12 +39,12 @@
> >>  #define CB_MAX_CHANNEL_5G       42
> >>  #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
> >>
> >> -typedef enum _CARD_PKT_TYPE {
> >> +enum CARD_PKT_TYPE {
> >>       PKT_TYPE_802_11_BCN,
> >>       PKT_TYPE_802_11_MNG,
> >>       PKT_TYPE_802_11_DATA,
> >>       PKT_TYPE_802_11_ALL
> >> -} CARD_PKT_TYPE, *PCARD_PKT_TYPE;
> >> +};
> >
> > Were the typedefs never use?  If they were used, then this should result
> > in a kernel that doesn't compile.
>
> This particular driver is compiling at my end; if I remember
> correctly, all of drivers/staging/ also compiled with the changes in
> this patchset.
> Just to be sure, I also searched within this driver for this (and
> other) typedefs being used after the definition, and I couldn't find
> any occurrences, which confused me a little. Am I doing something
> wrong?

For an enum, it could be useful even if the type name is never used,
because the enum serves to define some constants, eg PKT_TYPE_802_11_BCN.
But even the constants don't seem to be used in this case.  So it seems
that the whole thing could just be dropped.

julia


>
> > julia
> >
> >>
> >>  typedef enum _CARD_STATUS_TYPE {
> >>       CARD_STATUS_MEDIA_CONNECT,
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> Thanking you,
> Nishka Dasgupta
>

