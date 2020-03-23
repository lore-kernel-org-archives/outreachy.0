X-GM-THRID: 6802515514721566720
X-Received: by 2002:a05:6512:6c7:: with SMTP id u7mr13123010lff.176.1584957960177;
        Mon, 23 Mar 2020 03:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9099:: with SMTP id l25ls558953ljg.7.gmail; Mon, 23 Mar
 2020 03:05:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvDWJPPwmOhh3aq2nNHNjeKSzYFJF4dFHOq6xy5Qz8nGj2ZyxSU5wNwwdJvbDm5fgLkw452
X-Received: by 2002:a05:651c:29c:: with SMTP id b28mr6853104ljo.201.1584957958473;
        Mon, 23 Mar 2020 03:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584957958; cv=none;
        d=google.com; s=arc-20160816;
        b=UaR2yDj1G8IGQWUyrJd7nCPVC0ss/tGuu5kMBE9IrSsGMvQuTSmgAUisi7Vux/JTQN
         LyEZ05iB4jdT7EJ91PKhNHgd2Y1Nf29B7M3muSwKC6/gCZPSO8w972SMcd/MmH3uInE6
         aOGd70tk/h/VYoJA++mU84SaqOTnHwEqlZTIS+HyI5GwTUTw8TGtsTCKAfrdXUNNv8oP
         A+8IFM4Y2r32xfAp10d3ewElpe3taigF4nn7vf/sXG9tOgTvR98Fn4njE2L0ZwRch9+3
         cLs+i/hUhQ611J/figlvylM4779SqvWkgGsiYSLit1E4bgwbxcKtaecwCo2utDpprqzD
         CjKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=QK662d6HGwQyLny0pN++r882h28CYWU85DpRk3MQ4q0=;
        b=tnyjAS2Rvce4fVbJPQ74GU+JxAwcbPHUqiF2QbMZmfHMOTd62sfQVfgVTcyf/FEGXh
         JNrBZWkQ4XDaknJ+ZFlikzXyzEgGeCm/G9MkMVVeC1Q7y29xbCVhlDAJkkTJ8IU7UO9K
         v5lrzNbMFmnV6FT3sFvwPlt1g/JLM5woJAw4SWj/ceoj4pA9gPrlKm6jBJ2Mzx9STzZW
         vXErTumRJ3yZubV8FKxJtxi+yvNWGY7XPo8Xk8beoIFcmkJ/qBo1juJBHDroeMBkNbQM
         uhQ9ArHgVGYE0JwXaa2z+SNes6G7aWI+EfkEjT+3DA34Ri66Km0mwINMBQ21VS80zjCg
         PhrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t3si506536lfq.5.2020.03.23.03.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,296,1580770800"; 
   d="scan'208";a="343261696"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 11:05:49 +0100
Date: Mon, 23 Mar 2020 11:05:48 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, John Wyatt <jbwyatt4@gmail.com>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
In-Reply-To: <dff9ed66458ea26f0b3b6b588b8fbc0f477bb43f.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003231104500.3054@hadrien>
References: <20200320141418.GA707555@kroah.com>  <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>  <20200321065134.GA849159@kroah.com> <20200321070501.GA850438@kroah.com>  <a2551dac9465998ba46fbf924a6b8f02f32f3fda.camel@gmail.com> 
 <20200321074106.GA856920@kroah.com> <dff9ed66458ea26f0b3b6b588b8fbc0f477bb43f.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 23 Mar 2020, Sam Muhammed wrote:

> On Sat, 2020-03-21 at 08:41 +0100, Greg KH wrote:
> > On Sat, Mar 21, 2020 at 12:26:34AM -0700, John Wyatt wrote:
> > >
> > > > > > I just sent my patch in ~10 hours ago.
> > > > > >
> > > > > > Do I need to rebase/resend it?
> > > > > >
> > > > > > If I do, should I make it a v2?
> > > > > >
> > > > > > Apologies if you already answered this earlier in the mailing
> > > > > > list.
> > > > >
> > > > > Julia provided comments on what you need to do to fix up your
> > > > > patch,
> > > > > please follow them and resend a v2.
> > > >
> > > > And you did just that, nevermind :)
> > >
> > > :)
> > >
> > > For future reference, if I send in a patch around 10 hours before you
> > > ask to rebase-should I rebase?
> >
> > Once I send out this "I have caught up with all patches" email, consider
> > my queue empty, so you need to fix up anything I have not applied by
> > then.
> >
>
> Newbie question, Ive sent two patches around ~12hrs ago
> both are reviewed and acked, so i guess they are accepted?
> when should i be concerned if they're lost ?

Patches are accepted when Greg takes them.

You should be concerned when Greg sends a message saying that he is caught
up, and you don't see your patch in his tree.

julia

>
> Sam
>
> > > If I do rebase, should I mark it as a v2?
> >
> > If you change something, yes.  If you change nothing, it is a "resend",
> > but say why you are resending it.  It could be as simple as "Greg missed
> > my previous patch", but the odds of that are kind of low :)
> >
> > thanks,
> >
> > greg k-h
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/dff9ed66458ea26f0b3b6b588b8fbc0f477bb43f.camel%40gmail.com.
>

