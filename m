X-GM-THRID: 6536210357179908096
X-Received: by 2002:a19:4806:: with SMTP id v6-v6mr414372lfa.37.1522694636692;
        Mon, 02 Apr 2018 11:43:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.83 with SMTP id y19ls1589320ljd.12.gmail; Mon, 02 Apr
 2018 11:43:55 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/JSIrQy5SgYf4ZgBiHDER0tcKHZ7EOZtEkXMPIc75UjMmqm/tb544+LHY3UPonC0TnkfnL
X-Received: by 10.46.153.73 with SMTP id r9mr391498ljj.6.1522694635940;
        Mon, 02 Apr 2018 11:43:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522694635; cv=none;
        d=google.com; s=arc-20160816;
        b=wVaRi8156my1WrNu6TOMx2XfAUs+bIyvPhqCUkon1yK8qSoKJHsfHY6bh/2HBhLSJt
         91PHy6JfxRIQ5UFXs/eICZw3W6r6ZTRW2rsnyo33JSp6ccnfj1DgwOUkqJ4g9jASJ2O1
         LDQiz3i4IVGZNi9+8wQlS4F65N9zD+R/qtbucPjGeHea15JD5F+fiLT1MqeuHZyNVMFs
         QnonLqQhLldEU2AoNqJMNprWdnKzRWiuKRwP1kOoInUvMNd5inWPg9hlqbsu7btWdSpR
         hpWIhMXJtpCcyzbLXVYv3cGKl5JpCCMW1m+5VQrdLwFsGur1xFl4EqNenQwi/xp8EoUB
         hSGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Md6HpiB41A8T4k2Cs6sF1ZX/HZRsHb13dYr24m+kqYg=;
        b=HdLkX0Td+5vphufgMFUZiucwRdH4sHteMFuS7SoPxsAfgwSLIh/qGu+CSPj5rP0TIW
         EuW5dXAraWEMxQEXN67vf4Yb6L+zjqZbZkXi9dKtGu3TwM3MT1e1fxHvUs0KVK+RllPO
         ctbYvniYoeRW0/C4rwWPLQgoXv9Aqe6bY9W8Yg8U/I237tAOelvtUyShRPW6LM3Ol3zb
         mgqi04EdCadb1uP4dq0frb9FmDc4PzsgTzwl47SGUpJwWevJ3puBIwDfgSbxYNKr7/Za
         OEejGgpYzWCNYO6RGeQCdKLXPfU3tKFKEvRFlKwt48BLIuGlcwEf8XYqeoI7pW68eO8Z
         ZYTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i24-v6si32646lfc.4.2018.04.02.11.43.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Apr 2018 11:43:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,396,1517871600"; 
   d="scan'208";a="320978147"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2018 20:43:55 +0200
Date: Mon, 2 Apr 2018 20:43:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v6] staging: vt6655: Remove else after
 return
In-Reply-To: <CAC4++KCUXi2Lsum_834SQvxq6JOrZHC-9XwNYuaaF9Xs87bQUw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1804022042040.2383@hadrien>
References: <1522659771-799-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <alpine.DEB.2.20.1804021119160.3198@hadrien> <CAC4++KCUXi2Lsum_834SQvxq6JOrZHC-9XwNYuaaF9Xs87bQUw@mail.gmail.com>
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
> > variable to the result of calling GetDataDuration.  There could then be eg
> > buf->duration_f0 = cpu_to_le16(datadur); all over the place.  This would
> > make it possible to move the GetDataDuration calls over to the left.  Then
> > some newline could be added to their arguments to stay within 80
> > characters.  The local variable could also have the letters indicating
> > their types removed from the fronts of their names.  Overall, it's
> > unfortunate that there are so many function calls with huge argument
> > lists, where most of the arguments are the same.  This seems quite error
> > prone as well as being verbose.  I don't know if it is possible to solve
> > this problem, though.
> >
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
> > has been moved out of a conditional.
>
> But if the if condition is true then vnt_get_phy_field gets called
> again and if not then the value stays at it is, so does that affect
> much?

It depends on what vnt_get_phy_field does.  Maybe it is not valid to call
it at this point if the if test is true.

> > Also you now have a declared
> > variable buf that is shadowed by another variable buf, of another type, in
> > a nested if.  That could be confusing.
>
> Should I change the name of the outer buf? The two variables don't
> exactly conflict with each other, since the if ends with a return, but
> I agree that it is confusing.

I think you should just drop the idea of removing the else.  Doing so
makes the code somehow unbalanced.

julia

> >
> > julia
>
> Thanking you,
> Nishka Dasgupta
>
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

