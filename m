X-GM-THRID: 6263750571303370752
X-Received: by 10.112.219.68 with SMTP id pm4mr3299316lbc.18.1458489817292;
        Sun, 20 Mar 2016 09:03:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.21.21 with SMTP id 21ls481896wmv.51.gmail; Sun, 20 Mar 2016
 09:03:36 -0700 (PDT)
X-Received: by 10.28.153.70 with SMTP id b67mr915914wme.2.1458489816857;
        Sun, 20 Mar 2016 09:03:36 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c140si279367wmh.1.2016.03.20.09.03.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 09:03:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,366,1454972400"; 
   d="scan'208";a="209054715"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Mar 2016 17:03:36 +0100
Date: Sun, 20 Mar 2016 17:03:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sandhya bankar <bankarsandhya512@gmail.com>
cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rdma: Remove & from
 function name.
In-Reply-To: <CAA3ASz=qorUDcX0=T+3X4j22_rO3Snax=b90qxVi32j786vAbQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1603201701590.2597@hadrien>
References: <cover.1458367377.git.bankarsandhya512@gmail.com> <6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512@gmail.com> <alpine.DEB.2.02.1603191457270.2072@localhost6.localdomain6> <CAA3ASzk7TjnS9o6AV6B87HSyALdk6h8BWQqZ08YSvwhKAnKjJg@mail.gmail.com>
 <CA+5yK5GCGrNMq5ciLNhWf+JTKBgvVA6NhmzD04Oj5efy7qWpxA@mail.gmail.com> <CAA3ASz=qorUDcX0=T+3X4j22_rO3Snax=b90qxVi32j786vAbQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1057567686-1458489815=:2597"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1057567686-1458489815=:2597
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 20 Mar 2016, sandhya bankar wrote:

> Thanks for the suggestion Amitoj.
> I have run spatch with suggested option but i have not got  any output since
> 15-16 hours.
> Is it expected ?
>
> Julia,
>    Should i change all & from function name? however the cocci file have not
> detected these.

As Amitoj mentioned, it is because the others are not local functions.

Did you use the argument --include-headers-for-types?

You can also just looks at the names nearby and check by hand whether they
are functions.  Just say in your commit message which parts you did by
hand.

julia


>
>
>
> Thanks,
> Sandhya
>
> On Sat, Mar 19, 2016 at 8:24 PM, Amitoj Kaur Chawla <amitoj1606@gmail.com>
> wrote:
>       On Sat, Mar 19, 2016 at 7:56 PM, sandhya bankar
>       <bankarsandhya512@gmail.com> wrote:
>       > Hello,
>       > I have run the following cocci scripts,
>       >
>       > ############################################
>       > //
>       > //  Remove exceptional & on function name
>       > //
>       > // Target: Linux
>       > // Copyright:  2012 - LIP6/INRIA
>       > // License:  Licensed under ISC. See LICENSE or
>       > http://www.isc.org/software/license
>       > // Author: Julia Lawall <Julia.Lawall@lip6.fr>
>       > // URL: http://coccinelle.lip6.fr/
>       > // URL: http://coccinellery.org/
>       >
>       > @script:python@
>       > @@
>       >
>       > with_and = 0
>       > without_and = 0
>       >
>       > @r@
>       > identifier f;
>       > @@
>       >
>       > f(...) { ... }
>       >
>       > @addr1@
>       > identifier r.f;
>       > position pa;
>       > @@
>       >
>       >  &f@pa
>       >
>       > @script:python@
>       > p << addr1.pa;
>       > @@
>       >
>       > with_and = with_and + 1
>       >
>       > @r1@
>       > identifier r.f;
>       > position p;
>       > declarer name  EXPORT_SYMBOL;
>       > @@
>       >
>       > (
>       > EXPORT_SYMBOL(f@p);
>       > |
>       > module_init(f@p);
>       > |
>       > module_exit(f@p);
>       > |
>       > f@p(...)
>       > )
>       >
>       > @noaddr1@
>       > identifier r.f;
>       > position pn != r1.p;
>       > @@
>       >
>       > (
>       >   &f
>       > |
>       >  f@pn
>       > )
>       >
>       > @script:python@
>       > p << noaddr1.pn;
>       > @@
>       >
>       > without_and = without_and + 1
>       >
>       > @script:python@
>       > @@
>       >
>       > choose_without_and = False
>       > #if (with_and * 25 < without_and):
>       > #  choose_without_and = True
>       > if (with_and == 1 and without_and > 9):
>       >   choose_without_and = True
>       >
>       > choose_with_and = False
>       > #if (without_and * 25 < with_and):
>       > #  choose_with_and = True
>       > if (without_and == 1 and with_and > 9):
>       >   choose_with_and = True
>       >
>       > @script:python@
>       > p << addr1.pa;
>       > f << r.f;
>       > @@
>       >
>       > if (choose_with_and or not choose_without_and):
>       >   cocci.include_match(False)
>       >
>       > @script:python@
>       > p << noaddr1.pn;
>       > f << r.f;
>       > @@
>       >
>       > if (choose_without_and or not choose_with_and):
>       >   cocci.include_match(False)
>       >
>       > @@
>       > identifier f;
>       > position addr1.pa;
>       > position noaddr1.pn;
>       > @@
>       >
>       > (
>       > - &f@pa
>       > + f
>       > |
>       > - f@pn
>       > + &f
>       > )
>       >###########################################################################
>       ##################
>       >
>       > The cocci file reported above change only. should i remove in
>       other case
>       > also as these are function names?
>       >
> Try running this with --recursive-includes option added in your spatch
> command:
>
> // <smpl>
> @r@
> identifier f;
> @@
> f(...) { ... }
> @@
> identifier r.f;
> @@
> - &f
> + f
>
> @m@
> type T;
> identifier f;
> @@
> T f(...);
> @@
> identifier m.f;
> @@
> - &f
> + f
> // </smpl>
>
> Also, maybe try it only for staging/rdma at first since
> --recursive-includes may take quite some time.
>
> I ran into the same issue and with Julia's help, this was the solution
> I found. Hope it works for you.
>
>
> Amitoj
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAA3ASz%3DqorUDcX0%3DT%2
> B3X4j22_rO3Snax%3Db90qxVi32j786vAbQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1057567686-1458489815=:2597--

