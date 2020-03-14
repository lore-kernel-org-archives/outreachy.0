X-GM-THRID: 6804107396790616064
X-Received: by 2002:adf:d844:: with SMTP id k4mr24829782wrl.21.1584205862112;
        Sat, 14 Mar 2020 10:11:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5233:: with SMTP id i19ls6679712wra.6.gmail; Sat, 14 Mar
 2020 10:11:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtmmXYQf0vEzS2LfdDOIKD3lCM1Z8tB1RnQsPodbLxE0v2WEJmVnwITRJyJSPJQZCK8AvSC
X-Received: by 2002:a5d:640a:: with SMTP id z10mr21428683wru.301.1584205860781;
        Sat, 14 Mar 2020 10:11:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584205860; cv=none;
        d=google.com; s=arc-20160816;
        b=aJ7ES9jZGiTYbAny/QS2EZwA4B1X4oh5whLpAzAL+1uFsAX3FApoeWADhu62G54zrb
         veq52oOwADDK9iquiSXuO3oxjoMqKNSrb7pf/3EG9VJI74pCVFsv9VuF4L+Nnlx052U3
         3TzfUyeYHjjv37zGyiCWct5EvjFF3WbI53b0BZ2lwoiMxk7WJ6OzdZN77+bqguApxh7c
         EMP8XAxTZBHrGxUVdCTQyMNZ59Gcnc374uBdoethOJFwEwx1oJVvT7dKF+Pf/Ajjs9kB
         khEu1GPW1lB0Hqwr5K5v7pMogQISw8qqBvauQ0W5lG6bLnIUYlq8K8vKfq63Kf5PuLTe
         tNPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TQ6dZumDSZBsbGelfFPHMurv9pnh7ngsCZA83lzQ5zQ=;
        b=q5e51E+FqvtE777oeKpZFfbsG1Ske3OAd3mylOtCJCcI9q8tMVcGudW7DgHhup13N+
         0TF11drRtbH3OCHF+3QJbPplTCBe4XMcQF3TjkFP4cW6XRmhR6VmH+8aXsHmNJmxuZKQ
         BNhDx+GaLG+QAneSwVgfdmjRi6rTTeY2nK3mJkdtcqsshP3btKslj+k/DIzqPkprRv30
         VIGBfgmDuQa0Ux+7g0nsUFPwLU1eMNdAbi82iFN3VVZrGOQbTs/75lrUMwyGRKNtyDcw
         Uu38W6qZAXQV7DpeLzSOXFU9zGBBzV6hGqxDRAM4iQUCoockr0Zu6BcEFEATM3oVkgY7
         4E1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o194si752806wme.2.2020.03.14.10.11.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 10:11:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,553,1574118000"; 
   d="scan'208";a="342369904"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 18:11:00 +0100
Date: Sat, 14 Mar 2020 18:10:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_atmio16d: remove
 commented code blocks
In-Reply-To: <7842c46c-710b-4a2a-bf46-396ed319e2a6@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003141808100.3026@hadrien>
References: <20200314165130.GA18939@deeUbuntu> <alpine.DEB.2.21.2003141756000.3026@hadrien> <7842c46c-710b-4a2a-bf46-396ed319e2a6@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-170443489-1584205860=:3026"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-170443489-1584205860=:3026
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 14 Mar 2020, Deepak Varma wrote:

>
>
> On Saturday, 14 March 2020 22:27:15 UTC+5:30, Julia Lawall wrote:
>
>
>       On Sat, 14 Mar 2020, Deepak R Varma wrote:
>
>       > Remove two if# 0 directive code blocks. The first commented
>       code block
>
>       #if
>
>       > is redundant too; whereas the other code block is never used.
>       Problem
>
>       Why do you say that the first one is redundant?
>
>       julia
>
>
> The instructions in if and else block are exactly the same. so, if or else,
> you are going to run the same instruction. Let me know if I misunderstood or
> misquoted.

Since one of them is under an #if 0, the current effect is quite
different.  Only the statement in the then branch will be executed.

Redundant would be eg:

x = 0;
x = 0;

There is no point in having the second line, because x is already 0.

Even without the #if 0, if you have:

if (x)
  y = 0;
else y = 0;

It doesn't seem reasonable to say that the second y = 0 is redundant. It
is the if that is is not necessary.  But once you have the if, you need
both the then and else branches.

julia

>
> Thank you.
>
>
>       > detected by checkpatch script.
>       >
>       > Signed-off-by: Deepak R Varma <mh12g...@gmail.com>
>       > ---
>       >  drivers/staging/comedi/drivers/ni_atmio16d.c | 10 ----------
>       >  1 file changed, 10 deletions(-)
>       >
>       > diff --git a/drivers/staging/comedi/drivers/ni_atmio16d.c
>       b/drivers/staging/comedi/drivers/ni_atmio16d.c
>       > index 68ad9676f962..0bca7d752015 100644
>       > --- a/drivers/staging/comedi/drivers/ni_atmio16d.c
>       > +++ b/drivers/staging/comedi/drivers/ni_atmio16d.c
>       > @@ -266,19 +266,9 @@ static int atmio16d_ai_cmdtest(struct
>       comedi_device *dev,
>       >          if (cmd->scan_begin_src == TRIG_FOLLOW) {
>       >                  /* internal trigger */
>       >                  err |=
>       comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
>       > -        } else {
>       > -#if 0
>       > -                /* external trigger */
>       > -                /* should be level/edge, hi/lo specification
>       here */
>       > -                err |=
>       comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
>       > -#endif
>       >          }
>       >
>       >          err |=
>       comedi_check_trigger_arg_min(&cmd->convert_arg, 10000);
>       > -#if 0
>       > -        err |=
>       comedi_check_trigger_arg_max(&cmd->convert_arg, SLOWEST_TIMER);
>       > -#endif
>       > -
>       >          err |=
>       comedi_check_trigger_arg_is(&cmd->scan_end_arg,
>       >                                            
>       cmd->chanlist_len);
>       >
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20200314165130.GA18939%4
>       0deeUbuntu.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/7842c46c-710b-4a2a-bf46-
> 396ed319e2a6%40googlegroups.com.
>
>
--8323329-170443489-1584205860=:3026--

