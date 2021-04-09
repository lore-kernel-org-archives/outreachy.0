X-GM-THRID: 6949252648486830080
X-Received: by 2002:a05:651c:212a:: with SMTP id a42mr10214020ljq.505.1617999252657;
        Fri, 09 Apr 2021 13:14:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls72422lfa.0.gmail; Fri, 09 Apr
 2021 13:14:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJznJyv82VoP6vHfRnp3LwXXt+YwjpnWpVXPdw7+LamfwxT2IwF6DcWIS1RAXhsxZVk5CArk
X-Received: by 2002:ac2:54a1:: with SMTP id w1mr6538622lfk.48.1617999250820;
        Fri, 09 Apr 2021 13:14:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617999250; cv=none;
        d=google.com; s=arc-20160816;
        b=M9JCHRiKr4GVJGHifjPKqbTs9pGZYtRDQn75kOGE/Uv7XCFx6aaxYvYlo1q7ByF2z1
         xbDkpE9rhdcIliZU/YNkWl18G1KBYE6yHUKE962HGtWjYczhFFymtnG1JAHvg4zZDWvF
         2T7EZp7vkwU2M04BoxjNaeWa8asKRcPjjqxYnEizaCLviPq5qG4ckdDL7QSWSL6npORb
         PpFNFtZoU6p8VxdrB2BwPEVO9CpeSWyDjf1T9rFAS/B0Pl7noi/cnNGNWTV2uN6gQ/XV
         HZ4hL71AbWd10gH00ICbb1USoEkG8Kut1X+j66zoqPzmS4toNzGGrF21Bd/DAwNSq9LH
         7qQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=1lHxT+ESS5rlW75BIoBIC+BtBlU74zkQhjPf2sK92gk=;
        b=T94vjEivCyMEgFGarnBEuNgzEyhyEy2wUh4A3TtqIUPP0V2mYh9h3BCHAk/EFCY8+P
         zdSK1tao5RuE2kgcJjz+SK2UEKhXxIH58l/zBDMPo9DHvs5kZnpdxmBLsrvErnSyOcyG
         Iwf2D7WU4fSTW+0Ex8Z3qSAAq9cHmTZTU2WpGlklZIPKrrwtcMOn7s1GtHqhRU3kn2++
         p3Vaw0vfH53RAHwyd5cVsrUVj0l292qhif+jzHfZyPUgNZdise8DmYCQByjMgtvxsclP
         /aup7cOVsr0VxAMpt3ZBtlB3zOiNCAZNCToGisKaKusKLFtiaC329Zqn7y84tYP4dCjf
         mhog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a10si279203lfs.11.2021.04.09.13.14.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 13:14:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ABoZJmKBBLyqvPdLlHela55DYdL4zR+YMi2QD?=
 =?us-ascii?q?/UZ3VBBTb4ikh9mj9c5rtyPcpT4NVBgb6LS9EYaaR3e0z/9IyK0wGZvnYwX8om?=
 =?us-ascii?q?uvK+hZnOjf6hntATf3+OIY9aoISdkaNPTKAVJ3jdn37WCDer5KquWvy6ywgPeb?=
 =?us-ascii?q?8nEFd2FXQpt95AR0ABvzKCFLbTRBbKBVKLOsou5Opz+tYh0sAPiTNz09ftGGgc?=
 =?us-ascii?q?bKmpLgaQMHABBi0gOUjSq0gYSULySl?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="502493028"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 22:14:10 +0200
Date: Fri, 9 Apr 2021 22:14:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org
Subject: Re: Variables defined, (sometimes) assigned, and never used
In-Reply-To: <3125862.SBIft5tIRe@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104092213000.23056@hadrien>
References: <3125862.SBIft5tIRe@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Apr 2021, Fabio M. De Francesco wrote:

> When compiling with flag W=1 a lot of warnings about variables defined but
> never used show up. If one read the source sometimes it's clear that the
> original author placed them there because she/he wants to use the variable
> for doing something in a future release of the driver. I've also seen a
> comment like /* TODO */ near some unused variables.
>
> I thought to delete a couple of variables that are declared, may be also
> assigned as a result of some expression, but neither  used within a
> function or returned to the caller.
>
> What to do with those (currently) unnecessary variables? Should we remove
> them or let everything as is?

Generally, code that is not used is not wanted.  But use some common
sense.

Be sure to compile the code.  It can happen that the variable is only used
by a macro.  Not very nice, but it can happen.

julia

