X-GM-THRID: 6208399403783290880
X-Received: by 10.112.145.201 with SMTP id sw9mr2188390lbb.13.1445515151366;
        Thu, 22 Oct 2015 04:59:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.180 with SMTP id fl20ls328627wic.11.canary; Thu, 22
 Oct 2015 04:59:10 -0700 (PDT)
X-Received: by 10.194.192.71 with SMTP id he7mr3593417wjc.2.1445515150943;
        Thu, 22 Oct 2015 04:59:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si99554wiz.0.2015.10.22.04.59.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 04:59:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,181,1444687200"; 
   d="scan'208";a="184006548"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Oct 2015 13:58:53 +0200
Date: Thu, 22 Oct 2015 13:58:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: lustre: Remove unused
 functions
In-Reply-To: <alpine.DEB.2.11.1510221717070.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
Message-ID: <alpine.DEB.2.10.1510221356250.2607@hadrien>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com> <5359017.vBRWqNddLo@wuerfel> <alpine.DEB.2.11.1510221514420.31987@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <3775464.sOJsegMime@wuerfel> <alpine.DEB.2.11.1510221655060.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
 <alpine.DEB.2.11.1510221717070.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 22 Oct 2015, Shraddha Barke wrote:

>
>
> On Thu, 22 Oct 2015, Shraddha Barke wrote:
>
> >
> >
> > On Thu, 22 Oct 2015, Arnd Bergmann wrote:
> >
> > > On Thursday 22 October 2015 15:16:39 Shraddha Barke wrote:
> > > > On Thu, 22 Oct 2015, Arnd Bergmann wrote:
> > > >
> > > > > On Thursday 22 October 2015 14:50:18 Shraddha Barke wrote:
> > > > > > These patches remove the definitions of functions which are not
> > > > > > used.
> > > > > >
> > > > > > Shraddha Barke (2):
> > > > > >   Staging: lustre: ptlrpc: Remove unused functions
> > > > > >   Staging: lustre: obdclass: Remove unused functions
> > > > > >
> > > > > >  .../lustre/lustre/obdclass/lprocfs_status.c        | 139
> > > > > > ---------------------
> > > > > >  .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    |  63 ----------
> > > > > >  2 files changed, 202 deletions(-)
> > > > > >
> > > > > >
> > > > >
> > > > > How did you check that they are indeed unused? I suspect these two
> > > > > patches
> > > > > are wrong.
> > > >
> > > > I grepped for the uses of these functions. When I did make
> > > > M=drivers/staging/lustre, I didn't get errors. What am I missing here?
> > >
> > > I see now that you did not remove the declarations from the header files.
> > > Please remove those and try again. Alternatively, you should see link-time
> > > errors when you try to do 'make' without the listing directory.
> >
> > Yes, you are right. This patchset is incorrect. However I still don't
> > understand why I get these errors when it seems like these functions are not
> > used anywhere. confused

I didn't keep the previous messages, so I don't have the names of the
functions handly, but one thing to look out for is that macros can be used
to construct names with the ## operator.  Another issue could be,
depending on how you did the grep, that the function name is used as a
variable, eg stored in some function pointer typed structure field, rather
than being called directly.

julia

