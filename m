X-GM-THRID: 6803014756528553984
X-Received: by 2002:a50:d552:: with SMTP id f18mr5006903edj.341.1584654617937;
        Thu, 19 Mar 2020 14:50:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1d99:: with SMTP id dk25ls1998167edb.3.gmail; Thu,
 19 Mar 2020 14:50:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuZucgcHoT/3SKR1MolM2uU5qZi8uPraS/Hsw0H224qitETPyinerVtf2qEWUYYC/eTh0A1
X-Received: by 2002:a05:6402:29a:: with SMTP id l26mr5078105edv.45.1584654616693;
        Thu, 19 Mar 2020 14:50:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584654616; cv=none;
        d=google.com; s=arc-20160816;
        b=kcBBnAlgyrcJ1MmBA+2LN3dmMA2qt8PM44pGorV++vScrkAvM2P8w6LZTNo/4cFEpS
         73lkiqGiLGWpGIGL/3dcfANPgCKB0SWTVtT5wgwYpsmv/f105qhe8uQA1niUNFgDgaHi
         WZ0ldADSSJ9SKC6FV6NvaI8zwRVkzuKE7wbT6OBywBdcUsJRxgmzjU4QAZ7bdPTFS8z9
         tr1bYfcBhB65uWaWeovruUhlqrs50SdhIwlsVU/bzOwUIl4+djYC6TG8ZLB0IKrk9FC+
         jJvm49680rrWPmaMUYEXzwLioox/ILBw4+018kO0wlTe+WGHG8yQrfQ7FdFWgYPtpjGr
         jmnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rY15STHq6Br95d1bp0CkfADedpA0Mj5Y0gdt97MnVFs=;
        b=G8Npeb797HsnyN9J+D80aPUzSCkHW9bmaPS6HHnLgTwTbKylpOI2Et3Ev9XzhezLtO
         L/7gKsKPz0c25nR/F2k/81bYlje+BvcRtq3zS4Dtihca8SVfs9h5LChyRvYRtKhXFxUU
         5JNK1EE3WTHXL1dpWOJgLHkLW90nfRytuTuodZM6dcmEVRqqLnAXWPbPI324BmxrdNJ2
         jcYULwtNzTmCBdQiIkKvRsUYFlIGx1/3bF6gW9KZLAArDxK2jh7SD6ryHyZiAvHq+TcO
         u6LIxLY33TPC1lK0ppK6voacVZ7v2B9hMU3+hPHh193GBZRqC/m6WIPVchwOJuKHdCxo
         9iHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x7si191312ejw.0.2020.03.19.14.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 14:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,573,1574118000"; 
   d="scan'208";a="342999538"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 22:50:16 +0100
Date: Thu, 19 Mar 2020 22:50:15 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
In-Reply-To: <20200319214757.GC10911@supernova>
Message-ID: <alpine.DEB.2.21.2003192249420.9011@hadrien>
References: <alpine.DEB.2.21.2003161527020.5216@hadrien> <20200316153629.0fde04f8@elisabeth> <alpine.DEB.2.21.2003161543170.5216@hadrien> <20200316162343.36bacaa7@elisabeth> <alpine.DEB.2.21.2003161631270.5216@hadrien> <20200316164440.54fe16a8@elisabeth>
 <20200319201553.GA10911@supernova> <20200319214321.2060a5ef@elisabeth> <20200319213047.GB10911@supernova> <alpine.DEB.2.21.2003192236110.9011@hadrien> <20200319214757.GC10911@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:

> On Thu, Mar 19, 2020 at 10:38:59PM +0100, Julia Lawall wrote:
> >
> >
> > On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:
> >
> > > On Thu, Mar 19, 2020 at 09:43:21PM +0100, Stefano Brivio wrote:
> > > > On Thu, 19 Mar 2020 21:15:53 +0100
> > > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > > >
> > > > Can you just run this spatch command:
> > > >
> > > > > Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> > > > > --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> > > > > --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> > > > > -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> > > > > -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> > > > > -I ./include/uapi -I ./include/generated/uapi
> > > > > --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> > > > > coccicheck failed
> > > > > Makefile:1740: recipe for target 'coccicheck' failed
> > > > > make: *** [coccicheck] Error 255
> > > >
> > > > alone, from the same directory? The issue (okay, I'll send a patch) is
> > > > that the coccicheck script suppresses stderr for it.
> > > >
> > > > --
> > > > Stefano
> > > >
> > >
> > > It says "274 files match" and if I suppress the "--very-quiet" part of
> > > the command, it outputs many files preceded with the word "HANDLING:".
> > >
> > > After that, If I try, by example, this command:
> > >
> > > /usr/local/bin/spatch -D patch
> > > --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci
> > > --no-includes --include-headers -I ./arch/x86/include
> > > -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
> > > -I ./arch/x86/include/generated/uapi -I ./include/uapi
> > > -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
> > > --chunksize 1 drivers/staging/qlge/qlge_mpi.c
> > >
> > > It says:
> > >
> > > HANDLING: drivers/staging/qlge/qlge_mpi.c
> > >
> > > But nothing more.
> > >
> > > The command Julia suggest has similar results.
> > >
> > > Is this correct? I thought it outputs reports or patches.
> >
> > Yes, that is correct.  Maybe it has nothing to do on that file.
> >
> > Could you try the following file:
> >
> > drivers/net/ethernet/qlogic/qed/qed_roce.c
> >
> > with the semantic patch
> >
> > scripts/coccinelle/api/alloc/alloc_cast.cocci
> >
> > julia
>
> Yes, now it worked! :)

Um, now what worked?  I guess you got a message for this file, but is make
coccicheck now working too?

julia

