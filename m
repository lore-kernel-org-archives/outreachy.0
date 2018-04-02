X-GM-THRID: 6536210357179908096
X-Received: by 2002:a19:2a8b:: with SMTP id q11-v6mr407120lfq.15.1522694488001;
        Mon, 02 Apr 2018 11:41:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.42.3 with SMTP id q3ls1591268ljq.15.gmail; Mon, 02 Apr 2018
 11:41:26 -0700 (PDT)
X-Google-Smtp-Source: AIpwx48yUrWJBFkvqFOPjIWc9gyxz3RWlOTCDD2aZ0rAIUhkW7WJfKRRUWhkLM0uOuXhQIjocxDJ
X-Received: by 10.46.27.93 with SMTP id b90mr364521ljb.43.1522694486853;
        Mon, 02 Apr 2018 11:41:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522694486; cv=none;
        d=google.com; s=arc-20160816;
        b=KCScCwqp0GsZroV6pzUelOc7lnU2+6cfNInLOs7MMYM/pMWdnmp3PcK41L44QO35CA
         WcDIn/yu31tc6K+O9f1hf0Zt2SRqAFWUlFvwjP4qlK/Khe+XMF9dlTi82Kbx4Y+wQoWq
         jjVnEd9W9dx1K0hfe7Syz1NsBhDJ0sYjNlUyFQT/12AcRG67Equ3xkXZSxZF8v1nHCDO
         ShOUpm8MvMcuk9LBf0FPt3jWuiwAVlySbG45BHREJlEvL9yS0rU6KQrwWSRV4ZrBMfen
         iqRCXxW3+iKTDdKCZRg8WcGHZL7f6YqRhGle0xo6l3XXDqkrKux3q8oIiAXDZSWknUzV
         6q6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=esZ0JqAc2CPYw9mHEPKkdiFDWuPJK9QEZSdhccpAha4=;
        b=0R8kEWCsByT3oboHmR/UPm+/VFjMcoJOgfcaB3UeDL+qw9QId5qHU8gpTKSs3VsuLd
         J4RcLscVUS5D4BhjIJopT80wop8D2eucdQnBqMVB6SBMkneu4V5dTegGLYcrzUqaHCNO
         lXhq+XQiitdkjxsNaJNTmPQU5jOwGq8fbrT7thYf8K/P+RzX/cgQ+OqOeOb2kgMpw6Ua
         l1bkikwf8J9z9Fukr0ZcWu4hyIFySSdHn8miatqyKy4Zx+VmSnUWkun7ZOprg8S80NIq
         Ohl0FhquUR2HguWAsW/77qbaa+FRk1Zj+rPhEgoFkOmSUtu5wODWiIGmA4GNiAZLCpi7
         Ea9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i24-v6si32481lfc.4.2018.04.02.11.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Apr 2018 11:41:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,396,1517871600"; 
   d="scan'208";a="320978009"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2018 20:41:25 +0200
Date: Mon, 2 Apr 2018 20:41:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v6] staging: vt6655: Remove else after
 return
In-Reply-To: <CAC4++KBNTsP=WaDJeNJ1yGJOjWFwP_DQSMKDDmfKmTtXsgyNbA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1804022037410.2383@hadrien>
References: <1522659771-799-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <alpine.DEB.2.20.1804021119160.3198@hadrien> <CAC4++KBNTsP=WaDJeNJ1yGJOjWFwP_DQSMKDDmfKmTtXsgyNbA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 2 Apr 2018, Nishka Dasgupta wrote:

> On Mon, Apr 2, 2018 at 2:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Mon, 2 Apr 2018, Nishka Dasgupta wrote:
> >
> >> Remove else after return and match alignment with open parenthesis.
> >> Issue found with checkpatch.
> >
> > Overall, I'm not sure that this is a good idea.  The file is full of ifs
> > and elses that each deal with different cases, sort of like a state
> > machine.  It seems reasonable for the else code to be somehow at the same
> > level as the then code.
> >
> > On the other hand, it could improve a lot the future of this file to make
> > it look more like Linux kernel code.  You could make a patch to drop all
> > the s_u and s_v's in front of function names.  In this function, maybe it
> > would be useful to make a local variable u16 datadur and then assign this
> > variable to the result of calling GetDataDuration.
>
> Wouldn't a new variable make it harder to keep track of the code?

I think it could be OK.  You would initialize the variable and then use it
immediately.

>
> > There could then be eg
> > buf->duration_f0 = cpu_to_le16(datadur); all over the place.  This would
> > make it possible to move the GetDataDuration calls over to the left.  Then
> > some newline could be added to their arguments to stay within 80
> > characters.
>
> I'm sorry, I'm not quite sure I follow. What would moving the
> GetDataDuration calls to the left involve?

I just meant that if you have

datadur = GetDataDuration(...)

then the call to GetDataDuration would be somewhat further to the left
than it is currently.  That is, there would be more space for the
arguments before reachign column 80.

> > The local variable could also have the letters indicating
> > their types removed from the fronts of their names.
>
> I will work on that.
>
> To clarify, should all these changes be in the same patch or a patchset?

A set.  But I would suggest not to do too much at once.  Do a few things,
and then see if they are ok before moving on.  It will make a lot of
changes to the file.

> Also, what about the alignment I matched? There were some other cases
> like that (an extra space or not enough spaces). Should I put all
> those in the same patch or a patchset?

I don't remember the details, but if they are all whitespace changes, they
could be in a single patch.  See what seems best.

julia

> > Overall, it's
> > unfortunate that there are so many function calls with huge argument
> > lists, where most of the arguments are the same.  This seems quite error
> > prone as well as being verbose.  I don't know if it is possible to solve
> > this problem, though.
> >
>
> Thanking you,
> Nishka Dasgupta
>
> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> >> ---
> >> Changes in v6:
> >>  - Remove else after return
> >>  - Move variable declarations to top of code block
> >>  - Adjust alignments within the if-block
> >>
> >>  drivers/staging/vt6655/rxtx.c | 41 ++++++++++++++++++++---------------------
> >>  1 file changed, 20 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> >> index 9c4a532..78b814e 100644
> >> --- a/drivers/staging/vt6655/rxtx.c
> >> +++ b/drivers/staging/vt6655/rxtx.c
> >> @@ -552,6 +552,11 @@ s_uFillDataHead(
> >>                       return buf->duration_a;
> >>               } /* if (byFBOption == AUTO_FB_NONE) */
> >>       } else if (byPktType == PK_TYPE_11A) {
> >> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >> +             /*Get SignalField, ServiceField & Length */
> >> +             vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> >> +                               byPktType, &buf->ab);
> >> +
> >
> > I'm not sure that this is correct, because the call to vnt_get_phy_field
> > has been moved out of a conditional.  Also you now have a declared
> > variable buf that is shadowed by another variable buf, of another type, in
> > a nested if.  That could be confusing.
> >
> > julia
> >
> >>               if (byFBOption != AUTO_FB_NONE) {
> >>                       /* Auto Fallback */
> >>                       struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
> >> @@ -565,31 +570,25 @@ s_uFillDataHead(
> >>                       buf->duration_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
> >>                                                                              wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> >>                       buf->duration_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
> >> -                                                                             wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> >> +                                                                            wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> >>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> >>                       return buf->duration;
> >> -             } else {
> >> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >> -                     /* Get SignalField, ServiceField & Length */
> >> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> >> -                                       byPktType, &buf->ab);
> >> -
> >> -                     if (is_pspoll) {
> >> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> >> -
> >> -                             buf->duration = dur;
> >> -                     } else {
> >> -                             /* Get Duration and TimeStampOff */
> >> -                             buf->duration =
> >> -                                     cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> >> -                                                                         wCurrentRate, bNeedAck, uFragIdx,
> >> -                                                                         cbLastFragmentSize, uMACfragNum,
> >> -                                                                         byFBOption));
> >> -                     }
> >> +             }
> >> +             if (is_pspoll) {
> >> +                     __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> >>
> >> -                     buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> >> -                     return buf->duration;
> >> +                     buf->duration = dur;
> >> +             } else {
> >> +                     /* Get Duration and TimeStampOff */
> >> +                     buf->duration =
> >> +                             cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> >> +                                                                 wCurrentRate, bNeedAck, uFragIdx,
> >> +                                                                 cbLastFragmentSize, uMACfragNum,
> >> +                                                                 byFBOption));
> >>               }
> >> +
> >> +             buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> >> +             return buf->duration;
> >>       } else {
> >>               struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >>               /* Get SignalField, ServiceField & Length */
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1522659771-799-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

