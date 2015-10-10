X-GM-THRID: 6203875551364513792
X-Received: by 10.180.107.167 with SMTP id hd7mr1059318wib.6.1444498273821;
        Sat, 10 Oct 2015 10:31:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.82 with SMTP id m79ls425967lfg.19.gmail; Sat, 10 Oct
 2015 10:31:13 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr3775327lbb.12.1444498273200;
        Sat, 10 Oct 2015 10:31:13 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si151675wif.2.2015.10.10.10.31.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 10:31:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,664,1437429600"; 
   d="scan'208";a="182104050"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2015 19:31:12 +0200
Date: Sat, 10 Oct 2015 19:31:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: remove unnecessary
 'out of memory' messages
In-Reply-To: <20151010171322.GA2302@Ubuntu-D830>
Message-ID: <alpine.DEB.2.10.1510101928250.2354@hadrien>
References: <20151010044521.GA27086@Ubuntu-D830> <alpine.DEB.2.02.1510100752590.2062@localhost6.localdomain6> <20151010171322.GA2302@Ubuntu-D830>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 10 Oct 2015, Alison Schofield wrote:

> On Sat, Oct 10, 2015 at 07:53:50AM +0200, Julia Lawall wrote:
> > On Fri, 9 Oct 2015, Alison Schofield wrote:
> >
> > > 'Out of memory' messages are unnecssary in the drivers as they are
> > > reported by memory management.
> > >
> > > Addresses checkpatch.pl: WARNING: Possible unnecessary 'out of memory' message
> > >
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > ---
> > >  drivers/staging/rdma/hfi1/chip.c      |  1 -
> > >  drivers/staging/rdma/hfi1/init.c      | 11 ++---------
> > >  drivers/staging/rdma/hfi1/pio.c       |  7 +------
> > >  drivers/staging/rdma/hfi1/user_sdma.c | 27 +++++++--------------------
> > >  4 files changed, 10 insertions(+), 36 deletions(-)
> > >
> > > diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
> > > index aa58e59..1152359 100644
> > > --- a/drivers/staging/rdma/hfi1/chip.c
> > > +++ b/drivers/staging/rdma/hfi1/chip.c
> > > @@ -8991,7 +8991,6 @@ static int set_up_interrupts(struct hfi1_devdata *dd)
> > >
> > >  	entries = kcalloc(total, sizeof(*entries), GFP_KERNEL);
> > >  	if (!entries) {
> > > -		dd_dev_err(dd, "cannot allocate msix table\n");
> >
> > Unrelatedly, dd_dev_err is not a standard kernel error reporting function.
> > Maybe you can replace it with a standard one (I guess dev_err) in the
> > cases where it is still used.
> >
> > julia
>
> The header file defines dd_dev_err to load params to dev_err. (It does
> this similarly for all types of  dev_* messages.)
>
> hfi1.h:
> 	#define dd_dev_err(dd, fmt, ...) \
> 		dev_err(&(dd)->pcidev->dev, "%s: " fmt, \
> 			get_unit_name((dd)->unit), ##__VA_ARGS__)
>
> Simplifies calls in *.c and improves readabilty (249 instances in hfi1)
>
> Leave it alone - right?

It would be nice if standard functions could be used, as done in the rest
of the kernel.  But perhaps it is a complicated change to make.  One has
the impression that there are a lot of nested structures, and information
that should be asily accessible is not.

julia

