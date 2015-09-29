X-GM-THRID: 6199821821107240960
X-Received: by 10.180.107.167 with SMTP id hd7mr3851889wib.6.1443531349916;
        Tue, 29 Sep 2015 05:55:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.37 with SMTP id en5ls786558wib.52.canary; Tue, 29 Sep
 2015 05:55:49 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr1715918wja.7.1443531349531;
        Tue, 29 Sep 2015 05:55:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ch7si668670wib.2.2015.09.29.05.55.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 05:55:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,608,1437429600"; 
   d="scan'208";a="148956779"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2015 14:55:48 +0200
Date: Tue, 29 Sep 2015 14:55:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, Ioana Ciornei <ciorneiioana@gmail.com>, 
    Bhumika S Goyal <bhumikas.goyal@st.niituniversity.in>
Subject: Re: [Outreachy kernel] Error in building kernel
In-Reply-To: <3724213.SJrJs5fn4P@wuerfel>
Message-ID: <alpine.DEB.2.10.1509291455372.2615@hadrien>
References: <35465e02-616a-4c1a-b177-84f34b04700b@googlegroups.com> <CAHWJYF=PDpQPFtGtdo9Hqb8wQ8CKmB3YEnR7osPpS-vqTj4mUw@mail.gmail.com> <3724213.SJrJs5fn4P@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 29 Sep 2015, Arnd Bergmann wrote:

> On Tuesday 29 September 2015 09:35:05 Ioana Ciornei wrote:
> > On Sep 29, 2015 9:28 AM, "Bhumika S Goyal" <
> > bhumikas.goyal@st.niituniversity.in> wrote:
> > >
> > > While building the kernel I am getting an error :
> > > scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or
> > directory
> > >  #include <openssl/bio.h>
> > >                          ^
> > > compilation terminated.
> > > make[1]: *** [scripts/sign-file] Error 1
> > > make: *** [scripts] Error 2
> > >
> > > How do I fix it?
> >
> > It seems like you need to install libssl-dev on your machine.
>
> I've updated http://kernelnewbies.org/OutreachyfirstpatchSetup now to reflect
> the new requirement, this library is only needed as of linux-4.2.

Thanks!

julia

