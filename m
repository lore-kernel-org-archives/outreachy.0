X-GM-THRID: 6955730517423554560
X-Received: by 2002:a5d:4dce:: with SMTP id f14mr8562352wru.332.1619511459155;
        Tue, 27 Apr 2021 01:17:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:64c2:: with SMTP id y185ls899245wmb.2.canary-gmail; Tue,
 27 Apr 2021 01:17:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJznPljFjFSVumKKvJuUlTl6LvA3WsmYmHEJ9zj2e2hx8cJs8D4q9/MMIA5JMt8hreENQ13M
X-Received: by 2002:a05:600c:4f56:: with SMTP id m22mr22672293wmq.19.1619511457784;
        Tue, 27 Apr 2021 01:17:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619511457; cv=none;
        d=google.com; s=arc-20160816;
        b=NvOn7p2oancZoadv5CcnxKOFXM6CvvlAlVO2knlVcvA7xStvwQbEBLK06UqJgamfTD
         cP+1xhdXj0R5lXg1JPH62bJwSVHA1bkIfaXwtoAmqaXOEPlfV/SsHVqIyCYLjeq/9+mC
         6wXEFXtpoQGPEx8notwWmDajd3HiM1Xzjm/UjzGPqe8BMGzyp4PKJKjtb3H8rJk4hKdc
         wD/GevxIea87/OoKsYTtAurwPPFo+6FWKO9kHKEk34xMn5/oqmFHHrImBOatCqVcwI12
         VVN9DUke5TUR5wAJWDhtVBoi7eUoY+ypciAcbLKMqDMskTDkNYAcTAmF9TP1+cniCEPX
         RhIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=7rv6xhKpyK+Jh9RnMtlyjwK1z8dWAI1Et8OP43nPkqo=;
        b=VjwU8bXTIzBc7M6fuuGeGVRaaGNjteWvJHDvjz/asNwrP3QzJDTlHyDIp4YEB9KcEz
         N+3A8oT0ZlanJ0Xe2oicRcv69ukmhh3Time7+piLevhh/yhLIdd1F8S02e3qnPm/ibaO
         rtviekq3lHUdwxYWXbmq7c18FeTomMP1V8/cBbSNUYwW1xtnpIbBjwr4YLFh1qNtllDe
         nLHST379kGXxK+D+ofLZosIgCY4kJHkr/HXHT4pxP2ys2xudBaCVOHRiC5c5747FoWFz
         08ISRlPho/cnMuKQmbcjkZw9+n8Bhc6snrJ20S44umFt58jyIhZYf6Fv7CZlhrXxthOd
         vIgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x16si1299093wmi.1.2021.04.27.01.17.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 01:17:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ag/4uPq0Vu3sw5CQBWDzr6QqjBFMkLtp033Aq?=
 =?us-ascii?q?2lEZdDV+dMuEm8ey2MkKzBOcskd0ZFgMkc2NUZPqfVry7phwiLN6AZ6DW03ctH?=
 =?us-ascii?q?KsPMVe6+LZogHIPw3b2qpj2bx7c654YeeAaGRSqcrh+gG3H5IB7bC8kJyAvuvV?=
 =?us-ascii?q?w3dzQQwCUcgJ0y5DBgmWCUFwTgVdbKBJd6a03NZNpDarZB0sAPiTO39tZYT+ju?=
 =?us-ascii?q?HQmImjSRALAANP0njtsRqYrI+/KRSe0xsEOgkj/Z4p+wH+/DDE2g=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,254,1613430000"; 
   d="scan'208";a="379774379"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Apr 2021 10:17:37 +0200
Date: Tue, 27 Apr 2021 10:17:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, 
    Outreachy <outreachy-kernel@googlegroups.com>, 
    Vineeth Pillai <Vineeth.Pillai@microsoft.com>
Subject: Re: [Outreachy kernel] Outreachy project looking for more
 applicants
In-Reply-To: <4286858.zKxzTp498l@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104271016330.32852@hadrien>
References: <CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com> <alpine.DEB.2.22.394.2104270910230.31629@hadrien> <4286858.zKxzTp498l@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Apr 2021, Fabio M. De Francesco wrote:

> On Tuesday, April 27, 2021 9:10:44 AM CEST Julia Lawall wrote:
> > On Tue, 27 Apr 2021, Vaishali Thakkar wrote:
> > > Hi All,
> > >
> > > I quickly wanted to mention that while most of our projects have
> > > enough applicants, the following project will still be happy to have
> > > more applicants:
> > >
> > > "Create a linux scheduler test suite to understand functionality and
> > > performance of Core Scheduling"
> > >
> > > Feel free to contact the mentor - Vineeth and apply for it if that's
> > > something you're interested in.
> >
> > This looks like a really cool project :)
> >
> > julia
> >
> It is for sure. It would have been my first choice. The only problem is that
> it is preferable to have level 4 experience with Bash and Python. I'm afraid I
> have no more than 0 and 1 levels respectively with those scripting languages.

Perhaps it is possible to learn...

julia

>
> Fabio
> > > Thanks!
> > >
> > > --
> > > Vaishali
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group. To unsubscribe from this group and stop
> receiving emails
> > > from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this
> > > discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbK2r%2B14JB-m4KuU-vy%3DDAUnv
> > > 6gmZkEnRyY7Fx_%3Dguk_Ew%40mail.gmail.com.
>
>
>
>
>

