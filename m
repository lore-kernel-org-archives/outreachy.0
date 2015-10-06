X-GM-THRID: 6202235040430030848
X-Received: by 10.194.83.169 with SMTP id r9mr334364wjy.6.1444105721544;
        Mon, 05 Oct 2015 21:28:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.216 with SMTP id 85ls497161lfr.24.gmail; Mon, 05 Oct
 2015 21:28:40 -0700 (PDT)
X-Received: by 10.112.164.1 with SMTP id ym1mr5840741lbb.15.1444105720847;
        Mon, 05 Oct 2015 21:28:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h2si123207wiy.0.2015.10.05.21.28.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:28:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,641,1437429600"; 
   d="scan'208";a="181240988"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Oct 2015 06:28:40 +0200
Date: Tue, 6 Oct 2015 05:28:39 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: fix comparison test
 warnings
In-Reply-To: <20151006042723.GB4745@sudip-pc>
Message-ID: <alpine.DEB.2.10.1510060528260.2836@hadrien>
References: <20151005183935.GA3350@Ubuntu-D830> <alpine.DEB.2.10.1510052136480.2608@hadrien> <20151005213849.GA3566@Ubuntu-D830> <20151006042723.GB4745@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 6 Oct 2015, Sudip Mukherjee wrote:

> On Mon, Oct 05, 2015 at 02:38:49PM -0700, Alison Schofield wrote:
> > On Mon, Oct 05, 2015 at 09:38:28PM +0100, Julia Lawall wrote:
> > > On Mon, 5 Oct 2015, Alison Schofield wrote:
> > >
> > > > This patch fixes multiple instances of the checkpatch.pl warning:
> > > >
> > > > WARNING: Comparisons should place the constant on the right side of the
> > > > test
> > >
> > > Thanks for the patch, but try to avoid using "fix" in your commit message.
> > > Say instead what you have done to do the fix.  Here, you could say
> > > something like "Move constant to the right side of a comparison operator,
> > > as suggested by checkpatch".
> > >
> > > julia
> >
> > Thanks for the quick review and I will check that on future patches.
> > Do I need to amend and resend this one?
>
> I think no need to resend this one. But keep in mind what Julia said in
> your next patches.

Fine with me.

julia

