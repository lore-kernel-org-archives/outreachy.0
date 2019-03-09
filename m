X-GM-THRID: 6666132758820028416
X-Received: by 2002:a1c:a741:: with SMTP id q62mr1779578wme.7.1552138745785;
        Sat, 09 Mar 2019 05:39:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e005:: with SMTP id x5ls19358wmg.2.canary-gmail; Sat, 09
 Mar 2019 05:39:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqz9NXuG4r0gf+anIVTNr0VxTz94OKQ+rBidjcI+6sy8qC0DdbyMttPyca+IUxaSJwUsYcOQ
X-Received: by 2002:a1c:a741:: with SMTP id q62mr1779573wme.7.1552138745004;
        Sat, 09 Mar 2019 05:39:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552138745; cv=none;
        d=google.com; s=arc-20160816;
        b=iFc5U6E/xve+JOGu6cZ7GUwNb1UN0/XSeruSJj7ziju+8GzkqoMZlOiu81kh/sqhB2
         0B2vgIp1JnASoU+iGcJ+s5cPNsATyOFtLDSoOnEjmWFV2JxmdxdBesb393PH6C3gULgz
         AJVhlEf7e8hqKID+Kj1DwJyJHo6ZHoNgh6vc02tNwhyztjChneCc1uHiLwsz1Z4YJIkH
         w27hm8Mz0CNn2o+jCf3fwCVfqj1jjaieJOZ3Esf1f6sZQ3vsZnRbVBqujxGQUOozrBNy
         kZTZissT45zqTe89h9b523LbZUaXYFJNNa6qCezktpbFQ9WAgzKsv5I7amfQUVY6BgXd
         pdkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jEaZSwtE61hExhhCk14+KVm59eo2P1MZKKZF964F7KI=;
        b=t+Z0275Y6kJCiPSp9TuB9w5rF6RQb4hFPHQTJ9/A007M/1HVlGFsTeQbwZkJtGr6aD
         e22drrygBEWOIn/QdQwTNBHDo8hNUmcTQ/ENJYMrYMhhg/8Bv1SIoh4wsC0BAd6pmssg
         rzGuff7tDDYDcYzI9Lmtr3PekgScFTsJQuw7nC3Fpu6tu7hteFHicYqo1cFaHpoPGf1T
         XG2jr0fi8+qf12qxxd17w9iuSUqaW3+VyNouvnis48oh7OqS4wnx+AEqURwRkOhjkpOa
         U5/Ij2I2t+fMfP76yi3VqkS5C24EN2nNJi3OqNaeW+YJVys2So90GDnPUjp5HEZ8Zjym
         Wg1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o184si415374wma.0.2019.03.09.05.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 05:39:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="298656620"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 14:39:04 +0100
Date: Sat, 9 Mar 2019 14:39:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Coccinelle project
In-Reply-To: <CACw+u4EekHTLGwhBmUL49A0w1MTMAA-ogHiT_0xt9zryB_+4cg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903091438491.2452@hadrien>
References: <alpine.DEB.2.21.1903082215570.2518@hadrien> <af41fd98-fc3e-4651-9fd5-fb1ec47a886d@googlegroups.com> <alpine.DEB.2.21.1903090833460.2558@hadrien> <CACw+u4EekHTLGwhBmUL49A0w1MTMAA-ogHiT_0xt9zryB_+4cg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-615676625-1552138744=:2452"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-615676625-1552138744=:2452
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 9 Mar 2019, Debleena Sen wrote:

> On Sat, Mar 9, 2019 at 1:04 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Fri, 8 Mar 2019, idebleenasen@gmail.com wrote:
>
>       > On Saturday, March 9, 2019 at 2:49:40 AM UTC+5:30, Julia Lawall wrote:
>       >       Hello,
>       >
>       >       If you are interested in working on the Coccinelle project,
>       >       please check
>       >       my kernelnewbies page:
>       >
>       >       https://kernelnewbies.org/JuliaLawall
>       >
>       >       That should have everything you need to get started: a link to a
>       >       tutorial,
>       >       links to some examples, and some exercises to do.  All of the
>       >       exercises
>       >       currently are relevant to staging drivers, although I note that
>       >       some of
>       >       them are currently relevant at only a few places in the code.
>       >
>       >       Please feel free to try Coccinelle once you have some accepted
>       >       patches.
>       >
>       >       Let me know if you have any questions or run into any
>       >       difficulties.
>       >
>       >       julia
>       >
>       >  
>       > Can I start working on Coccinelle?
>
>       At the moment, your only patches in Greg's staging tree are about lines
>       over 80 characters.  Please get accepted some patches that affect code
>       first.
>
>       julia
>
>
> I skimmed through the coccinelle tutorial and I believe I can work on it. I'll surely send in more patches that affect code but can I please start working on Coccinelle on the side? 

You can certainly work on the tutorial :)

julia

>
> Thank you 
> Debleena
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CACw%2Bu4EekHTLGwhBmUL49A0w1MTMAA-ogHiT_0xt9zryB_%2B4cg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-615676625-1552138744=:2452--

