X-GM-THRID: 6670745270189293568
X-Received: by 2002:adf:dc8e:: with SMTP id r14mr12376667wrj.118.1553418346131;
        Sun, 24 Mar 2019 02:05:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:db08:: with SMTP id s8ls2139255wri.16.gmail; Sun, 24 Mar
 2019 02:05:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxgb+lnRF6/KdGrA5v+PpV8uWB2GGLd7bc4ODM9g3hS7dvihmLH7Ar7B1gt1dyE0EX4PV+w
X-Received: by 2002:a5d:4907:: with SMTP id x7mr12797944wrq.133.1553418345327;
        Sun, 24 Mar 2019 02:05:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553418345; cv=none;
        d=google.com; s=arc-20160816;
        b=d1Y6CV029RoHqfn/3ibei6FTcdaxya3gudZltPxwg932U9JggJudhnKRSBq3R+ttwu
         0uAMhRlEIqWAWEZ5egnYNb6KJSjyLa9YCvRbiWkQ0tgek1LJ4MejKTSMXAW94hnB47Fo
         M7sEtkrQo/hvDBPuvqdLHhK1vldzP3tRL+G4cyGWTeCCTUhGmHkchVZ6hgo2IUW/gVRS
         EtvstjM6l6XXc5Z7BOuQSHbnaJ7FkLBD2kNSP6yaOWcevsvQDUY7AQTVmTzUIPimtrii
         bo+7cqudIs6NOCKgMC48TuXolCiowEq3ZNUvCPPlC3QzeSFklgymmCZQeoGgaEbcnCBs
         bZuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=IeaRAog9DgKtGxNxnpCYW1NNEt2lr77yGj/Xdlqrlxc=;
        b=OuElcRL65jbtwzBah9otHOO5ztuxCViltq6IuwwgziQEygGeR0FrfASFAGk99ecf6n
         weFIWNxa1oxG54lRKdG8lrUfy9d7vt7O43NoBlyhEdNlcYLVqJSQT4AMwxYH0/Klds1Z
         gJEzUo4ImwBVvMUoFfI6TEYDD1i+X1wzncnzz+WYBZdkfiBDYNmj7nQ+AFwHkkPukUkJ
         ubz1UIUhPV82QrrHmskQA3FC4UJgoLf+HOYoldoosuuzalAOTnMc31ut9yAKymzEjmk6
         EzU2QqPPBW/CrRhiO91uxlIHM3QgskN5+D0HIpR+y6ZQSZ5xHcHkMb2LXPWcg65GvKGx
         NPzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si766194wrj.0.2019.03.24.02.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:05:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300516082"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 10:05:44 +0100
Date: Sun, 24 Mar 2019 10:05:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Sanjana Sanikommu <sanjana99reddy99@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: greybus: svc_watchdog:
 Modify char* array declaration.
In-Reply-To: <20190324085923.GA32103@kroah.com>
Message-ID: <alpine.DEB.2.21.1903241004560.2526@hadrien>
References: <20190323112807.9804-1-sanjana99reddy99@gmail.com> <20190324085923.GA32103@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Mar 2019, Greg KH wrote:

> On Sat, Mar 23, 2019 at 04:58:07PM +0530, Sanjana Sanikommu wrote:
> > Modify "static char* array" to "static char* const array".
> > Issue found using checkpatch.pl
> >
> > WARNING:char* array declaration might be better as static constant
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> > Changes in v2:
> > Test build the patch
>
> No you did not :(
>
> It blows up the build into tiny pieces.  Please properly test build your
> patches before sending them in.

Sarjana,

Try make allyesconfig to make it more likely to have a configuration that
will actually cause compiling the driver.

julia

>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

