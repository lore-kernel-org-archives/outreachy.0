X-GM-THRID: 6468588291165782016
X-Received: by 10.46.46.10 with SMTP id u10mr848215lju.15.1506444034843;
        Tue, 26 Sep 2017 09:40:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls3528915wri.12.gmail; Tue, 26 Sep
 2017 09:40:34 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD+8QVIfrekYgCvMeOoDqhs0GJ3A6TiHxlyVcfs11Kho3lhu484O5Xfg6SWX8ZU7AfQvpYD
X-Received: by 10.28.35.142 with SMTP id j136mr442287wmj.1.1506444034172;
        Tue, 26 Sep 2017 09:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506444034; cv=none;
        d=google.com; s=arc-20160816;
        b=QjXn5H9ye8J98A4CuYunYzJgp4GkacVupDCiCTwxn/zX8OtPGjYwsDjLc82C2Qgb3b
         VqpxDowhWxq6U1IGUOP8L/Rc8CHCEQXQ32qRmZ5l55rOpoJTdWRgbz60ud5Rzn+CY0d7
         wfMBEjOsqLH3T89RSiSx+Q/W+QEfgnECliIxhJ04sPFwHqwJbb3Ye3DmKNEIBtIHLAJS
         xuytbMXE/GgxEwLXP+eryXjteqL73qX6/wUFaRPaLZEnXAkZVFp5gcJo4zBaV2P8sVsU
         g5I12IJc9+kSrwj77F5LcdVEA3MOMKPYOgOwKE2sMmgslQc8Pz/SBb8JJEpP83zEgn7K
         cFpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=M8/2T8UJOOL3ccJ8MLMgO9fIjlez+mJv9g4NJheOlMI=;
        b=t37l1O4FzefTSosg48Q24Yi0hQp6QKa3adLvnPrZ/vtKydAAsv7Mmy1bJ/iMBQ8k/l
         QZ5PjMk29DfuyUzABswZfcEOKyDD6cjzvVmFGdx+vEcgU2lzEHWm1DZTNswOE1TJgZfJ
         RO2+MGwFgAp1FtfaTyT0W1RC8nc9c8gYL2HHw0DopHTrLBFUP2WlnA9BK7iBCTyGF+W9
         I4qz+wDIIuC+GXDqVOgEhCaaIfPvuHO87eO8w0/xYO81RTZDhKXPaVeP2JY6rtX5tQqr
         dxObQLR2eVfuJEs1dm4e2qFwnU/vS2raiEm5dHdCdpCOJBJ3nPGVvx1Ga/QbMlbMNJuY
         ds8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si964398wme.4.2017.09.26.09.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:40:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,441,1500933600"; 
   d="scan'208";a="238802064"
Received: from unknown (HELO hadrien.local) ([93.83.33.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 18:40:24 +0200
Date: Tue, 26 Sep 2017 18:40:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 2/2] Staging: rtl8723bs: core:
 Code clean up
In-Reply-To: <CALta04zFwGkrmWOzB+guhMfo3OE2uFJYdOT5fp38OG_2si112Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709261839310.2700@hadrien>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com> <8813107f1cbbc593f55422ef905c4d5cfb575206.1506092223.git.georgiana.chelu93@gmail.com> <20170926074138.GA26263@kroah.com> <CALta04wLzH_mJvA0Vx4U_SpvKFOkg6JMHrirVrDT6eArBEu0_Q@mail.gmail.com>
 <CALta04zFwGkrmWOzB+guhMfo3OE2uFJYdOT5fp38OG_2si112Q@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Georgiana Chelu wrote:

> On 26 September 2017 at 19:11, Georgiana Chelu
> <georgiana.chelu93@gmail.com> wrote:
> > On 26 September 2017 at 10:41, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> >> On Fri, Sep 22, 2017 at 08:04:52AM -0700, Georgiana Chelu wrote:
> >>> Clean the code to improve the coding style.
> >>>
> >>> Fix minor issues reported by checkpatch.pl:
> >>> * CHECK: Alignment should match open parenthesis
> >>> * CHECK: Logical continuations should be on the previous line
> >>> * WARNING: line over 80 characters
> >>
> >> That's a lot of different things to be doing all in one patch.  Please
> >> break this up into "one type of thing" per patch.
> >>
> >> And no, "fix all coding style issues" is not "one thing" :)
> >>
> >
> > I will resend the patchset! Thank you!
> >
> Is the << "one type of thing" per patch>> required
> > because it is easy to follow the same change in a patch?

It makes reviewing easier, and also it could be that someone will later
find that one of the kinds of changes you did is incorrect, so it is
easier to undo if it is by itself.

julia

> >
> > Have a nice day,
> > Georgiana
> >
> >> thanks,
> >>
> >> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04zFwGkrmWOzB%2BguhMfo3OE2uFJYdOT5fp38OG_2si112Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

