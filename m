X-GM-THRID: 6889706616955863040
X-Received: by 2002:a17:906:4b12:: with SMTP id y18mr7935344eju.533.1604156761260;
        Sat, 31 Oct 2020 08:06:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d4c3:: with SMTP id t3ls1786628edr.0.gmail; Sat, 31 Oct
 2020 08:05:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyyovhe5zIPfKjwJ+Pp6J5bNFYnRiP0nmdyxUb6D+mhcIXcBPukrts3cYqM2MKgTBYQJieh
X-Received: by 2002:aa7:cac2:: with SMTP id l2mr8165843edt.141.1604156759104;
        Sat, 31 Oct 2020 08:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604156759; cv=none;
        d=google.com; s=arc-20160816;
        b=UN4WR8ECU3zAgCbRX71Bmp/VCie6sJk1tPvZgfzKMdJ4QerkaopoIAIQzVgOlI2bwv
         kcmA5ihyANmWc1p0MLnFdhWRQnrWcpSrOKJlTEPPvCalEZVy3NqzRyQ6KueUPNs2Av5r
         baekIPGr5yOwY3sai5n/uGdnwrCt2LwLWtx5ax+XjsAEjzzw74yX40qWgzVifKd0RU4u
         KVEvq6p0dIjiHIN1h1gWvtMEPZrxgGPNd4QOZ5i18Wu8RbW/aTej5VAVlGiCLZPdPnel
         MPY8tgCrQVMA/EGtOmXRbtdwddLX44LMBH3tYrg+N7AnlFC/FQxRE7bxJzE1pc/PejvO
         db2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Wlck6YIuurilsHJh3D/5RPSGg8jeEo1mK0bpxOwy5MI=;
        b=nsPnT0pOXFt2o6WQw2Mi0Re1yrdObQ3nvwpMkXf52vrYhJTJQ+cdPg9p4GAM+TXPLP
         m474Fh7vtkHCUEinjYNfBM1BO/W0JhKdDHg5JXAND9Z+GddRUcyXfKkTur9sbqIsSCe3
         /DYxYr4pPs/shd6+9oYzp/TZeswFn9LbXOMnbR43gcD3vq2OrqAto3WFsyBI1pHE5zv9
         2CKnXhA4QYnmoTAzO8rPjFUcArFV+fMzmy6gq4RXjNvz2nu3OqG7tPIuA7UIJcjt42WM
         olNCh5IH7qIcQw+pJKnYp5w6jsYYOaUVuRj+5s4lN8JOItFVo+zkC4nAE2SQA9v+PMtp
         vcpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n11si347070edi.1.2020.10.31.08.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 08:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,437,1596492000"; 
   d="scan'208";a="363257551"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2020 16:05:58 +0100
Date: Sat, 31 Oct 2020 16:05:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
cc: Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: vt6655: Remove else
 after return
In-Reply-To: <20201031142519.GA1965@Zangetsu>
Message-ID: <alpine.DEB.2.22.394.2010311605260.2733@hadrien>
References: <cover.1604133727.git.mdejesusfilho@gmail.com> <alpine.DEB.2.22.394.2010311036290.2733@hadrien> <20201031142519.GA1965@Zangetsu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 31 Oct 2020, Marcos Antonio de Jesus Filho wrote:

> On Sat, Oct 31, 2020 at 10:37:02AM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 31 Oct 2020, Marcos Antonio de Jesus Filho wrote:
> >
> > > This patchset removes multiples useless else statements after return statements. Reported by check patch.
> > >
> > > Observation
> > > -----------
> > >
> > > After cleaning up the code I noticed that the code from 530 to 548 repeats at 551,569 and that it can be removed and one of the conditional statements can be simplified.
> > >
> > > Marcos Antonio de Jesus Filho (3):
> > >   staging: vt6655: Remove useless else
> > >   staging: vt6655: Remove useless else
> > >   staging: vt6655: Remove useless else
> >
> > The patches need different subject lines.
>
> How would I name patchs like this, that do the same thing but in different parts of the code?

Since it's always the same file, it could be one patch.

Or I guess you could add the name of the affected function to the subject
line.

julia


>
> >
> > julia
> >
> > >
> > >  drivers/staging/vt6655/rxtx.c | 99 ++++++++++++++++++-----------------
> > >  1 file changed, 51 insertions(+), 48 deletions(-)
> > >
> > > --
> > > 2.28.0
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1604133727.git.mdejesusfilho%40gmail.com.
> > >
>

