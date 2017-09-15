X-GM-THRID: 6465882401621934080
X-Received: by 10.25.205.75 with SMTP id d72mr55817lfg.19.1505457916379;
        Thu, 14 Sep 2017 23:45:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.21 with SMTP id m21ls141633wma.11.canary-gmail; Thu, 14
 Sep 2017 23:45:15 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb604rb5yKQ6gsXwa46c8egAjLIzQYqttj0ii3QdszdZdBmSkJf1wMPXGn0C9f9jgq987+W1
X-Received: by 10.223.196.139 with SMTP id m11mr1509007wrf.30.1505457915163;
        Thu, 14 Sep 2017 23:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457915; cv=none;
        d=google.com; s=arc-20160816;
        b=ya+10ztn2diIgFHu+VK0B7C/vSdtDl9grR8XuY+yG4xcix/lG6j9HYz1r+xBbBIwqM
         95CTPheymJUj/+3EEnqanWmDqrDZovqLyYOYyGoPPtv5bPa64vj7T1zPklgcJowlwJis
         UnMxWOh3dRoVQkFApHrXYBqYMIFCTVvpK10vokdc+LjxKk1uxxqJQpZOKbhoGg3uD4qQ
         97hA/xWMayUIzIcsERf78aSorHgMAyNrBoTMp0yKsyvJEyg1/0YrQREedGVzibhVFudL
         rAR0opP4vpqAhQvgldwmABlfajSJqa1QNsc8e4Bi2DpXdasvjujA+UfK5bQ770PFUH6n
         xLUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=omki47qrJIT8MLp6VbqKRbpch+OEFuiIruoN07wEDjg=;
        b=K0KTezKe8tvAZCLV+LbTPFVL4ejPlhIxhQaPoFEQUR9WY2iXtbm1JTpN7ypnoWhz2J
         fNwld+I27kCFAC++2XMMaI7CHsqecJQgXgsTrRDNlNOp2Vc55sEf03O0bjhTo/9a5Xfo
         h4RfS1e8NzoBTsSad8YaZDUlSgnwhv+Fu7IBt+fToVsFK80ugQbTgXyyyouP0yo8DJug
         8rUgcovQZ1HxwYn5Z9WDnl9Qjpdn2gQMYwDrAwqONU0KcKfjBGnHFR1DF/RKTNUGgxqw
         MsrPO95drhu00II9WfQ2V669kB9NMXqbzbD8vNe3OSodpSWU1kdYD8bbzywYl+SYAP2M
         vMbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si26384wma.1.2017.09.14.23.45.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:45:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="237580063"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 08:45:14 +0200
Date: Fri, 15 Sep 2017 08:45:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: fid: fix line over
 80 characters
In-Reply-To: <CAHXiS58xWtzqVeKcO7ZdSoqeFs196ETbvVSBBH4RQ7xgcfKo=A@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709150844570.2287@hadrien>
References: <1505455551-14649-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709150820250.2287@hadrien> <CAHXiS58xWtzqVeKcO7ZdSoqeFs196ETbvVSBBH4RQ7xgcfKo=A@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Aastha Gupta wrote:

> On Fri, Sep 15, 2017 at 11:51 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Fri, 15 Sep 2017, Aastha Gupta wrote:
> >
> >> This patch fixes checkpatch.pl warning:
> >>
> >> WARNING: line over 80 characters
> >>
> >> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> >> ---
> >>  drivers/staging/lustre/lustre/fid/fid_request.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > This one is on the same file as the one I acked, but is not in a series
> > with it.  And they have the same subject line.
> >
> > julia
> >
>
> This is 'fid' and that was 'fld'.Both are different files.

Oops, you are correct :)

julia

>
> >>
> >> diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
> >> index ba73623..6a98225 100644
> >> --- a/drivers/staging/lustre/lustre/fid/fid_request.c
> >> +++ b/drivers/staging/lustre/lustre/fid/fid_request.c
> >> @@ -279,7 +279,8 @@ int seq_client_alloc_fid(const struct lu_env *env,
> >>       *fid = seq->lcs_fid;
> >>       mutex_unlock(&seq->lcs_mutex);
> >>
> >> -     CDEBUG(D_INFO, "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
> >> +     CDEBUG(D_INFO,
> >> +            "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
> >>       return rc;
> >>  }
> >>  EXPORT_SYMBOL(seq_client_alloc_fid);
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505455551-14649-1-git-send-email-aastha.gupta4104%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHXiS58xWtzqVeKcO7ZdSoqeFs196ETbvVSBBH4RQ7xgcfKo%3DA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

