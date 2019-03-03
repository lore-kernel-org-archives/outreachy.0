X-GM-THRID: 6664067951305424896
X-Received: by 2002:a05:6000:10c1:: with SMTP id b1mr675417wrx.30.1551606362920;
        Sun, 03 Mar 2019 01:46:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d49:: with SMTP id t70ls1055367wmt.12.canary-gmail;
 Sun, 03 Mar 2019 01:46:01 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaK8gJdGnLg0ltoGi29pJTQsw4VUwwGyR1LqmiCizlfZ7pye1/fPD8fLlLiL3RqEI4XfLur
X-Received: by 2002:a1c:c00c:: with SMTP id q12mr866163wmf.5.1551606361813;
        Sun, 03 Mar 2019 01:46:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551606361; cv=none;
        d=google.com; s=arc-20160816;
        b=hHqhni6jnEG9X+ZRmUWVcrktK/hw3Lu6gd29T9nozCxzsKLK9bZAAmxkkmnh09476I
         ZqpBQb5SivaMU1nh+GzSbum7TU08jNYz6785XLIIg7Y+z4dH/CjrJcIQcdCb1qd52No6
         /7w2Ah3soloI4djuk0MRrHnqe1ZNHDvVs8SsavvXn915GlRiootUhC5LGwz2jYnR6NPO
         hBW5hwLOUbvR9ALMPJ6jPxXmsgj5f8bcmWOxmHlNLaVwK9lGAVq8S4PhOhYKwczmHSjz
         So4OwVVeffQ7FtMRMPW9SxNj0D/0dOIq7ETwYO8xdVGFPIq7dMOFLwjJ8VqRGNpTU36A
         3FSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=an9to6caCB924snkWWoYdlJ8Ra2+u2hpO/zgfMD0szM=;
        b=jRVZuzBHnWgxX6jM9zBBdwgOiVylwfkTlvg3GxEBL53e6mqanBGXmzoelmivUd1I0j
         qQjDVcxlF6P//KZxRGAaYhoRGHT0cxYEBbsy5eKsu5qncnqlZXIz5cK4353gQL7gJj04
         RVOmqefxTf77wk6q2BwgknGekXhMU7mPfl0XwELt0elxkdPtiPUFdbRqW1M6oFwTwsNE
         i1TYSw1UJ2tXtrFIAEvcueibSd2oClziWnvm9GvvBwgc1/sbXN1k6KqNcQTdHFAaAZ3C
         IgWtnEexl1tKlnFZT5ZBcPrHvv+AZT1D0mJk5g+T6GbmI34I4g3aI9FEi5sQVNGOB4EG
         FdiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f2si141072wrq.5.2019.03.03.01.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 01:46:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="297911834"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 10:46:01 +0100
Date: Sun, 3 Mar 2019 10:46:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: idebleenasen@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: pi433: Fix line over 80
 characters issue
In-Reply-To: <8bc1b671-996a-45eb-b78f-5b322a23d7a5@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903031044420.3207@hadrien>
References: <1551599208-3301-1-git-send-email-idebleenasen@gmail.com> <alpine.DEB.2.21.1903030853110.3207@hadrien> <8bc1b671-996a-45eb-b78f-5b322a23d7a5@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-743858605-1551606361=:3207"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-743858605-1551606361=:3207
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 3 Mar 2019, idebleenasen@gmail.com wrote:

> On Sunday, March 3, 2019 at 1:26:33 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Sat, 2 Mar 2019, Debleena Sen wrote:
>
>       > This patch re-formats the code to remove the checkpatch.pl
>       warning(on
>       > line no. 566):
>       > WARNING: line over 80 characters
>
>       The log message should be in the imperative.  So it should start
>       with
>       Reformat.  However, reformat is again quite vague.  Something
>       like "Add a
>       newline" would be better.
>
>       You don't need to give the line number.  That is not an
>       information that
>       is immediately meaningful, ie no one remembers what is on line
>       156.  To
>       find out what is on that line, they will have to look at the
>       change, and
>       at that time they can see the line number as well.
>
>       On the other hand, if you ever feel obliged to put something in
>       parentheses, please put a space in front of the (.  Otherwise it
>       looks
>       like a function call.
>
>       julia
>
>       >
>       > Signed-off-by: Debleena Sen <ideble...@gmail.com>
>       > ---
>       >  drivers/staging/pi433/rf69.c | 3 ++-
>       >  1 file changed, 2 insertions(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/pi433/rf69.c
>       b/drivers/staging/pi433/rf69.c
>       > index e19b9ce..0c189a7 100644
>       > --- a/drivers/staging/pi433/rf69.c
>       > +++ b/drivers/staging/pi433/rf69.c
>       > @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi,
>       enum flag flag)
>       >  {
>       >          switch (flag) {
>       >          case mode_switch_completed:
>       > -                return (rf69_read_reg(spi, REG_IRQFLAGS1) &
>       MASK_IRQFLAGS1_MODE_READY);
>       > +                return (rf69_read_reg(spi, REG_IRQFLAGS1) &
>       > +                        MASK_IRQFLAGS1_MODE_READY);
>       >          case ready_to_receive:
>       >                  return (rf69_read_reg(spi, REG_IRQFLAGS1) &
>       MASK_IRQFLAGS1_RX_READY);
>       >          case ready_to_send:
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1551599208-3301-1-git-se
>       nd-email-idebleenasen%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> "Add a newline to remove the checkpatch.pl warning:"  or "Break the line and
> match the indentation to remove the checkpatch.pl warning:"
> Can you please advise me which log message should I use? 

Either is fine.  Your suggestion is probably better.

> I've just tweaked the coding style to remove the warning. I've broken the
> long line and then matched the indentation with '(' of the return statement
> so that it conforms to the Linux Coding Style. 

It's true that these changes are quite simple, which somehow makes it hard
to know exactly what to say about them, because they seem so obvious.  But
it is useful to get into the right mindset about what information to
provide.

julia

> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/8bc1b671-996a-45eb-b78f-
> 5b322a23d7a5%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-743858605-1551606361=:3207--

