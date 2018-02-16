X-GM-THRID: 6523195637320646656
X-Received: by 10.28.129.133 with SMTP id c127mr297594wmd.8.1518807269127;
        Fri, 16 Feb 2018 10:54:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.208.133 with SMTP id y5ls889365wrh.5.gmail; Fri, 16 Feb
 2018 10:54:28 -0800 (PST)
X-Google-Smtp-Source: AH8x227V3tNpy/nfJdIlmXClg+5QTROwMyIFjbrKfABrLRHjD/aWQ7VgOvjHOTGICX1zIWsCZ5bn
X-Received: by 10.223.133.101 with SMTP id 92mr1345383wrh.5.1518807267990;
        Fri, 16 Feb 2018 10:54:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518807267; cv=none;
        d=google.com; s=arc-20160816;
        b=hnqoUSr1Vv5FCwIttOEJGqFYYOSi3ZPGubkxroGBM3jcVA37LWTi0Jyd5FZSk3jLeo
         6gwW33aG/fRdAbhnSiNlMvm7et4lFnKnYOW7xRwC6YKY7GFQ8PdTn7rzXl2D23RkRFNu
         kgbkZaFf0YPaiRq5IePg4xgmotzZcx1TvFvV+c8BducrU4+P5QTmTi47ewbKKr/3JA+5
         JG7F0S3q+LDJ/7kxAH1viUVV08YIytCoUUM4OKCteVhxQqkTpo1ySqAJxwQ6aCb0L4ML
         DE8d5zfa7BozNTrS5XEiVqqZXsVOAYU99kqC4lVLf2qPDLFfvFVJ9jllDCIrJuX1eau0
         DTDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=a4qEWpIzM3riPo9xjQGrbDeEu2RtORoW+Q4ob2F/CEs=;
        b=TdkTrhlAuVB4P9fZ7HyU1llaDxHpHTrg5G11OjmcMUzJ9GW9yDtRJOxgvTDndP0uLg
         8HAuNs4op39dKkwwhp70Z8uPqQLhZEdp7B7mlWbSz00sr63wF29aKm17251Ixwcob+Pr
         4r73BU0zk3n1MrnR3LC26LNjxX+oySjkFCjOfVb+YHnUDn9ycLzoGXrFX4CvWqjesCC4
         8xzrv2GSCXiCf8rBv74lSXS7UPQRRF30hcOUzcPfPWyP5de4JT0pnpKlcc5KhjD2ykul
         bGPWYeZze4YCga9NowvQUOTgFodSRaFhut47TLEvWe/h86hIu0hOyly68rD1bOwqie2E
         QoMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r20si464043wmg.0.2018.02.16.10.54.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 10:54:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,520,1511823600"; 
   d="scan'208";a="313991983"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2018 19:54:27 +0100
Date: Fri, 16 Feb 2018 19:54:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <greg@kroah.com>
cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
    Richard Weinberger <richard@nod.at>, 
    Shreeya Patel <shreeya.patel23498@gmail.com>, 
    Boris Brezillon <boris.brezillon@free-electrons.com>, 
    David Woodhouse <dwmw2@infradead.org>, 
    Brian Norris <computersforpeace@gmail.com>, 
    Marek Vasut <marek.vasut@gmail.com>, 
    Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk statements
 with pr_*macros
In-Reply-To: <20180216184832.GA9616@kroah.com>
Message-ID: <alpine.DEB.2.20.1802161952170.4340@hadrien>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com> <1963507.Bpu1nn9g4S@blindfold> <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com> <20180216184832.GA9616@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Feb 2018, Greg KH wrote:

> On Fri, Feb 16, 2018 at 02:24:46PM -0300, Ezequiel Garcia wrote:
> > Hey Richard,
> >
> > On 16 February 2018 at 14:19, Richard Weinberger <richard@nod.at> wrote:
> > > Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:
> > >> This patchset removes all the log levels i.e. KERN_WARN,
> > >> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> > >> statements and replaces the printk statements with appropriate
> > >> pr_*macros.
> > >> According to the kernel coding style, pr_*macro is the preferred
> > >> way to print the message.
> > >
> > > Beside of that, how does it improve the code?
> > > Don't get me wrong, pr_* is the way to go for new code, but I don't think it
> > > is worth "fixing" in existing code and make working with git blame more
> > > painful.
> > >
> >
> > Shreeya's intention is to work on [1], migrating drivers to exec_op.
> > As a first task, before being accepted, she is required to submit
> > cleanup patches (or small tasks).
>
> "cleanup patches" should always start in the drivers/staging/ tree, to
> avoid bothering other subsytem maintainers.  Please start there before
> moving on to the "tasks" as mentioned on the site that are picked by the
> mentors.
>
> Don't skip the cleanup patches for no good reason please.

Actually, I told Shreeya that she could skip the initial phase because she
has been doing some other work on kernel code off and on over the last few
months.  On the other hand, a generic change such as printk -> pr* or dev*
could indeed have just been experimented with on staging drivers.

julia

>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180216184832.GA9616%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

