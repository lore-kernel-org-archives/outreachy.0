X-GM-THRID: 6252116177284235264
X-Received: by 10.28.63.19 with SMTP id m19mr2710847wma.0.1455715249238;
        Wed, 17 Feb 2016 05:20:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.134.133 with SMTP id i127ls812590wmd.43.canary; Wed, 17 Feb
 2016 05:20:48 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr2716773wmg.6.1455715248709;
        Wed, 17 Feb 2016 05:20:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si137867wmd.1.2016.02.17.05.20.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 05:20:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,460,1449529200"; 
   d="scan'208";a="165041819"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 14:20:47 +0100
Date: Wed, 17 Feb 2016 08:20:45 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Return correct
 error codes
In-Reply-To: <3731725.Uhb0JIDMJg@wuerfel>
Message-ID: <alpine.DEB.2.10.1602170819320.2685@hadrien>
References: <20160217124204.GA30394@amitoj-Inspiron-3542> <2870007.s5VBRruket@wuerfel> <CA+5yK5GyQ_zqLEVvVLh1YDT2w9Xp6VukA=Bu_CT+conNojXvJQ@mail.gmail.com> <3731725.Uhb0JIDMJg@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 17 Feb 2016, Arnd Bergmann wrote:

> On Wednesday 17 February 2016 18:43:01 Amitoj Kaur Chawla wrote:
> > On Wed, Feb 17, 2016 at 6:27 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > I would use whatever return code that register_netdev() returns here.
> > >
> > >         Arnd
> >
> > I can change it to that although I wrote the following script after
> > your comment to find the general pattern in the kernel:
> > @@
> > @@
> >
> > if (register_netdev(...)) {
> > ...
> > * return ...;
> > }

Amitoj, you can also write another script to see how many calls propagate
the error.  You will miss them with the above, because they don't have the
register_netdev call directly in the if test.  Maybe there are far more
that propagate than that follow the above pattern.

julia

> >
> > and most of the cases, there are quite some results in drivers/net/
> > return -ENODEV in the same scenario.
> >
> > Would you still prefer to return the code that register_netdev() returns?
> >
> >
>
> Yes, I think it's better: The reason for register_netdev failing is
> almost certainly not that the device is not there, so -ENODEV is
> a bit misleading.
>
> 	Arnd
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3731725.Uhb0JIDMJg%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.
>

