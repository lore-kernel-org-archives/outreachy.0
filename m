X-GM-THRID: 6616381756005154816
X-Received: by 2002:ac2:4187:: with SMTP id z7-v6mr17089lfh.0.1540931118456;
        Tue, 30 Oct 2018 13:25:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:424d:: with SMTP id p74-v6ls54481lja.4.gmail; Tue, 30
 Oct 2018 13:25:16 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fAiYwS3XLUCMiys+dM1U1zNW8wEK2KriAb5IIwMl7Yz9Il1NTO6eXwTjxNH1+TzMnB/rlj
X-Received: by 2002:a2e:350e:: with SMTP id z14-v6mr18918ljz.14.1540931116784;
        Tue, 30 Oct 2018 13:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540931116; cv=none;
        d=google.com; s=arc-20160816;
        b=kkzIJ/4HMo9tb3NQskYimLawhApYtLLvtKxiUijpKnllMNEfgpLz8DuYKxPLe+CJS6
         XdwkpGt2IWJh+/w8PGwPaeShcMVKwkTEmLTqdijsrRHaQ0gkcy13sgtqdhzpipSFF6Xl
         vmotKl+ctGLwpmtSzL5jm7Ya6/PDmAOSKHaQye0h/kcJ3rsDe2ylxRw3B9pevRDnM6Sl
         0kWuTPuyaWvpgxgp+B+f5XAFwuRZm0IXSuDVztAtV6HkiFj1egnMJuDncFIjlErXkS90
         U1Ot0eSO7UCFJDOmBPaEH14zlFqjwhyAQtP0u++xs/g8R8ujqhIU52yD76tZfvfUDb78
         2TrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=UgJnORwgO+QuRDcafDyAztCd93xQMyEdLxV+WNkWvz4=;
        b=Pgn7QWQL0+myl+Wp6wgqXtwtEnGW3E81X6NwRkTeffj7pwcoCstrUY/kDUzc+ggSuY
         q/ctN3idq+S6eu9zZ9zX/rl0ERLGWYDQe3H9WiFW+hVAmPCJXvRpl06pq4nUxRso7xL2
         L5NGghtZOSzZj6wdaUpmHxBq/31k0pB6QK8xpbPO3Lr4+CelwUEsIvpUXdl0gVSg11AW
         Lu7bnQq6yjevSefSRabwjcmFZ9j15GjfbSgAsr1srct0CNLcu1IpMgBlhEVbotJFYNgN
         WXa1AO23H50f3lcNr2xvU6bNvioblfsieaslBenaVaaHcPbsikoMh1wJgxkRpCh6T2Qz
         qePw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z13-v6si695499ljb.4.2018.10.30.13.25.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 13:25:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,445,1534802400"; 
   d="scan'208";a="353523191"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2018 21:25:15 +0100
Date: Tue, 30 Oct 2018 21:25:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shayenne Moura <shayenneluzmoura@gmail.com>
cc: Himanshu Jha <himanshujha199640@gmail.com>, 
    Sasha Levin <sashal@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Michael Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
In-Reply-To: <20181030201816.joihhwd7htgixo5i@smtp.gmail.com>
Message-ID: <alpine.DEB.2.21.1810302122290.2949@hadrien>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com> <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com> <20181026204225.GH2015@sasha-vm> <20181028075209.GA1938@himanshu-Vostro-3559> <alpine.DEB.2.21.1810280932030.2450@hadrien>
 <20181028112011.GA5157@himanshu-Vostro-3559> <alpine.DEB.2.21.1810281243420.2433@hadrien> <20181030201816.joihhwd7htgixo5i@smtp.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 30 Oct 2018, Shayenne Moura wrote:

> Hi,
>
> > On Sun, 28 Oct 2018, Himanshu Jha wrote:
> >
> > > On Sun, Oct 28, 2018 at 09:47:15AM +0100, Julia Lawall wrote:
> > > > > The "possible alignement issues" in CHECK report is difficult to figure
> > > > > out by just doing a glance analysis. :)
> > > > >
> > > > > Linus also suggested to use bool as the base type i.e., `bool x:1` but
> > > > > again sizeof(_Bool) is implementation defined ranging from 1-4 bytes.
> > > >
> > > > If bool x:1 has the size of bool, then wouldn't int x:1 have the size of
> > > > int?  But my little experiments suggest that the size is the smallest that
> > > > fits the requested bits and alignment chosen by the compiler, regardless of
> > > > the type.
> > >
> > > Yes, correct!
> > > And we can't use sizeof on bitfields *directly*, nor reference it using a
> > > pointer.
> > >
> > > It can be applied only when these bitfields are wrapped in a structure.
> > >
> > > Testing:
> > >
> > > #include <stdio.h>
> > > #include <stdbool.h>
> > >
> > > struct S {
> > > bool a:1;
> > > bool b:1;
> > > bool c:1;
> > > bool d:1;
> > > };
> > >
> > > int main(void)
> > > {
> > >     printf("%zu\n", sizeof(struct S));
> > > }
> > >
> > > Output: 1
> > >
> > > If I change all bool to unsigned int, output is: *4*.
> > >
> > > So, conclusion is compiler doesn't squeeze the size less than
> > > native size of the datatype i.e., if we changed all members to
> > > unsigned int:1,
> > > total width = 4 bits
> > > padding = 4 bits
> > >
> > > Therefore, total size should have been = 1 byte!
> > > But since sizeof(unsigned int) == 4, it can't be squeezed to
> > > less than it.
> >
> > This conclusion does not seem to be correct, if you try the following
> > program.  I get 4 for everything, meaning that the four unsigned int bits
> > are getting squeezed into one byte when it is convenient.
> >
> > #include <stdio.h>
> > #include <stdbool.h>
> >
> > struct S1 {
> > bool a:1;
> > bool b:1;
> > bool c:1;
> > bool d:1;
> > char a1;
> > char a2;
> > char a3;
> > };
> >
> > struct S2 {
> > unsigned int a:1;
> > unsigned int b:1;
> > unsigned int c:1;
> > unsigned int d:1;
> > char a1;
> > char a2;
> > char a3;
> > };
> >
> > int main(void)
> > {
> >     printf("%zu\n", sizeof(struct S1));
> >     printf("%zu\n", sizeof(struct S2));
> >     printf("%zu\n", sizeof(unsigned int));
> > }
> >
> > > Well, int x:1 can either have 0..1 or -1..0 range due implementation
> > > defined behavior as I said in the previous reply.
> > >
> > > If you really want to consider negative values, then make it explicit
> > > using `signed int x:1` which make range guaranteed to be -1..0
> >
> > The code wants booleans, not negative values.
> >
> > julia
>
> Thank you all for the discussion!
>
> However, I think I do not understand the conclusion.
>
> It means that the best way is to use only boolean instead of use unsigned
> int with bitfield? I mean specifically in the case of my patch, where there
> are some boolean variables are mixed with other variables types.

To my recollection, your code had a bool with larger types on either side.
In that case, I think bool is fine.  The compiler it likely to align those
larger typed values such that the field with the bool type will get more
than one byte no matter what type you use.  If there are several fields
with very small types adjacent, there might be some benefit to thinking
about what the type should be.

julia

