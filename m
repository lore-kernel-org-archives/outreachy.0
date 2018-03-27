X-GM-THRID: 6534171640869158912
X-Received: by 10.28.52.142 with SMTP id b136mr2553215wma.13.1522184618463;
        Tue, 27 Mar 2018 14:03:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.152.19 with SMTP id a19ls491767wme.7.canary-gmail; Tue, 27
 Mar 2018 14:03:36 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/YiBS5Mo1Ijsd7UTzghwKkZ7ORTjfO2jCRJIREhmfafiuzZ6ozzWOGazF766FPUjELmrfN
X-Received: by 10.28.146.75 with SMTP id u72mr1569098wmd.18.1522184616586;
        Tue, 27 Mar 2018 14:03:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522184616; cv=none;
        d=google.com; s=arc-20160816;
        b=RFpoQNBGg7bRBMgvvn27joZteEizxzJl8aLnO34vz1q/8BC+N8cGKgZIgQl6dWuiq9
         DBjsGl1svr7ZWHJrIHLxsmzVNlj1INxnkp+vM4ESHwt5WvtAdhW/OP4qaU7lBswBHOp5
         V6bm1sicRutGGAuXLLSxAS0JKVZA7jbE4XlrSv4d8CGRrHKWWHMktw8bdanmezqRVVcK
         7D2YSPE1TDQI/MnWyVTutWuBEdoWV7JjnIwMJI+jiJdWmisEGXK4FzecFNZSuM0wCu17
         daTeDFSZWhsV/FQFoxauBkYKtLBqJfYcCXqJQsA78F2bSxKQPfeFlvsa0cI3c9axgCjQ
         bXhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FcQHFwJ/qiG8MZ1jGtriARoWmD8x0Ib+BcBpfYPemZQ=;
        b=R9d2xZ7+SCPlMervaQg9UlUSY/XujtKZiGS0sGmFUpkW6b+HyuVXhL/0d1AaYuZtpC
         JejiElsFiqYAlbknniOO4acMIrPpmtJj+Tjik8TPHQXxvyW5hNbLO0kySwfvu5C05tda
         8+dr/HklClU9XwbTDAHrIhauRRdBl1F2tZ4Pk1n98aenlh4HQAj6aEhhjzj4fHmfmf0Q
         1pyl8CPoMDEUpTBmkXL6TVzrIwDUlxX5s9tN9cSs9Gm104YSJ/mlA4BkWIgTOwJFE4L8
         IBmWAe7pOvkG2L7vir1FvWrCxN5C5oIGhPRmOO+dlory13JRhqWKUwOcsQVzmzOIYSAO
         4enw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n11si118191wrh.4.2018.03.27.14.03.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Mar 2018 14:03:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,368,1517871600"; 
   d="scan'208";a="320274398"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2018 23:03:36 +0200
Date: Tue, 27 Mar 2018 23:03:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: application
In-Reply-To: <CAC4++KD6f+8As-7qxSHwp=m+hDZ85r_btf=cxtxSx75Hc7jTvw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803272303130.2383@hadrien>
References: <alpine.DEB.2.20.1803180739260.3299@hadrien> <e84b04f6-0288-4490-b3e3-8bf9166f3d4f@googlegroups.com> <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com> <CAC4++KD6f+8As-7qxSHwp=m+hDZ85r_btf=cxtxSx75Hc7jTvw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 28 Mar 2018, Nishka Dasgupta wrote:

> On Wed, Mar 21, 2018 at 3:34 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> >
> >
> > On Tue, Mar 20, 2018 at 9:54 PM, Nishka Dasgupta
> > <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> >>
> >>
> >>
> >> On Sunday, March 18, 2018 at 12:13:08 PM UTC+5:30, Julia Lawall wrote:
> >>>
> >>> Hello,
> >>>
> >>> Currently three of the kernel projects have a deadline of March 22 and
> >>> the
> >>> Userfaultd project has a deadline of March 29.  In either case, the
> >>> deadline is 4pm UTC.  You can find out what time that is in your area
> >>> using the following link:
> >>>
> >>> https://www.google.com/search?q=4pm+UTC+to
> >>>
> >>> You make a separate application for each project you are interested in.
> >>> If you are interested in multiple projects, please clearly indicate your
> >>> preference between them.
> >>>
> >>> julia
> >>
> >>
> >> Does this include the project "dri-devel aka kernel GPU subsystem"? Its
> >> deadline is also listed as 29th on the outreachy website.
> >>
> >
> > Yes, you should make a separate application for "dri-devel aka kernel GPU
> > subsystem" project as well.
> >
>
> May I list the same cleanup patches as contributions if I apply to
> multiple projects?

Yes, this is perfectly fine.

julia

>
> I will of course be ordering the projects according to my preference.
>
>  Thanking you,
> Nishka Dasgupta
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups
> >> "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an
> >> email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit
> >> https://groups.google.com/d/msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-8bf9166f3d4f%40googlegroups.com.
> >>
> >> For more options, visit https://groups.google.com/d/optout.
> >
> >
> >
> >
> > --
> > Shraddha
>

