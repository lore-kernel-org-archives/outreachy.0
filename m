X-GM-THRID: 6661107741495394304
X-Received: by 2002:a1c:700d:: with SMTP id l13mr549506wmc.14.1550931731830;
        Sat, 23 Feb 2019 06:22:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f350:: with SMTP id e16ls419786wrp.13.gmail; Sat, 23 Feb
 2019 06:22:11 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbHZASTaaCm2hH/pOfVl+n4NofiPglJ4whlxQs7XDAnIfcPIUA/XvRbS0CVnQ2p3mVo9U/V
X-Received: by 2002:adf:822f:: with SMTP id 44mr496523wrb.2.1550931731029;
        Sat, 23 Feb 2019 06:22:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550931731; cv=none;
        d=google.com; s=arc-20160816;
        b=BbPX+bFqM8VYwhJUml7/eu8U6CtLFUt58wEcCqv69MvFnpHJLj6grEQRhMqbyusmf9
         q2my2P45eZ42G9maI5mD7VLSpiRFqPjBqKKAolA8AHONoBTRDZ5UUGjmK4ck2sQWohpW
         LF9os7zs73tofiYW3qgElynIYfGKjXWR4+/5aUhHlQi0k0yhhhkG201szPr9IUQ/tnH3
         03Yd6RnnBYwz7odwicVbcGpHuNN+7L3SA4GYBHUF8VrCGkC85NJfcLAtabOwHSqTgZMA
         dnsDRfnFvlN+o3BTagZjRwKerIvUHuVsTrks8S36FLcTpcDCy6AjX3do4qNyGpx3Fiw3
         AI/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RJO31DYd06rEuGOUViY/IbYrqJ/Mt1qocTrKia9M8Rg=;
        b=BdrE9hIJz03ah7Ez09UWiJhbKtDdRpXKn+i9+37tUnTiBx1yqSqjrJAUR6Z3tiXW+k
         YwabS9mOGH2O5J4xpyJnrnmGk5FhY3NZflotyEf7+/RM3ZRcL1F4jnpguLldSvr1vdYf
         H9efERZZL1a5rL0dqKl2h86gYN5gV5oBptT+DiMtoCfTfk5DfKioPbwYYdHSuXnOj7hN
         lKJqp6I44x4jkcZ1Yn7xarstRDTcw43ZntJWdCRoiW5U3751JuZb5uPr4zE8FVzQdseY
         DfvasfcLDSl7K/S2zJ1EhLHQchMpHF3M/k3Z0DPpn0D+ipEkjr3voNrrYguIpMZbQsls
         1tAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t22si197311wmj.2.2019.02.23.06.22.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 06:22:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,404,1544482800"; 
   d="scan'208";a="297106343"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 15:22:10 +0100
Date: Sat, 23 Feb 2019 15:22:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: mt7621_dma: Prefer
 unsigned int over just unsigned
In-Reply-To: <CAB0Mk-Nr3GrXEnVE4pdQG6snUpXq3pOqx=19nNpZYCDLEtcF4Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1902231521580.2551@hadrien>
References: <20190223081941.9629-1-bhanusreemahesh@gmail.com> <20190223081941.9629-3-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1902231506310.2551@hadrien> <CAB0Mk-Nr3GrXEnVE4pdQG6snUpXq3pOqx=19nNpZYCDLEtcF4Q@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Feb 2019, Bhanusree Mahesh wrote:

> On Sat, 23 Feb 2019 at 19:37, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Sat, 23 Feb 2019, Bhanusree Pola wrote:
> >
> > > Fixes checkpatch.pl warning:
> > > WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
> >
> > Log messages are supposed to be in the imperative.  So here it should be
> > "Fix ...".  But it would be even better to come up with a description that
> > says something other than Fix.  Explain what you have done and why.
> >
> should i change the log message and resend it ?

Yes please.

julia

>
> > julia
> >
> > >
> > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > ---
> > >  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > > index 54bf89e2f629..fa7631cfbb78 100644
> > > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > > @@ -191,7 +191,7 @@ static inline u32 mtk_hsdma_read(struct mtk_hsdam_engine *hsdma, u32 reg)
> > >  }
> > >
> > >  static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
> > > -                                unsigned reg, u32 val)
> > > +                                unsigned int reg, u32 val)
> > >  {
> > >       writel(val, hsdma->base + reg);
> > >  }
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223081941.9629-3-bhanusreemahesh%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1902231506310.2551%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB0Mk-Nr3GrXEnVE4pdQG6snUpXq3pOqx%3D19nNpZYCDLEtcF4Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

