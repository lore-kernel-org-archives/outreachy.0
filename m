X-GM-THRID: 6618634579794198528
X-Received: by 2002:a5d:6112:: with SMTP id v18-v6mr644839wrt.30.1541053649762;
        Wed, 31 Oct 2018 23:27:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:858f:: with SMTP id h137-v6ls59664wmd.22.gmail; Wed, 31
 Oct 2018 23:27:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d23rlB0WTOU6O3wHQfR+pzrPaFWJbdltMPhbAPfu9yUGfVJWYYZjoTKHazIqUojm+tVucb
X-Received: by 2002:a1c:1592:: with SMTP id 140-v6mr644658wmv.25.1541053648766;
        Wed, 31 Oct 2018 23:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541053648; cv=none;
        d=google.com; s=arc-20160816;
        b=ppeJVn3dPO25/ZV1MSQB+IZE+0lX5x5COjdUcT6DP4LnwItRHMgk6P/4GrD3CjmJK5
         A1fBS/sEE3mFUHbM7l8WS7ViNYxwWPVCpMMSgjt8ux2BqkaAZEiQVMfphJPUCZOjX71v
         U5mSAsTgMFurT1DMcGAu4GA3/eqpqf+b28tMdnUs5K83JJ96HQmcl+azQeklYYzFOI0j
         PoJ9+P1GCXTCPQRE0KZ93s/pQfmGrT/8cSij79ptL/uIHtTjo+L87esjd7zDgPRVHNpq
         3gm1y2oxVYcnjR7HIrD+ot1NNeO19tPjs45ju1WnPXhTNvT/Qcg9WwKPZBygLDifzFe4
         d2Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fR0+vFCVVP5AuTg0efGr09jx6WDXwqwmn4mIapZodxE=;
        b=V60ghb1ayCa1MJfOJUREzfA/cxwWH9bqN6xrFoSNxsb9Nw6otuoBPMhavDyFl6PW3b
         D3YIQL7OU++xbQP3zWxrH3xmSyasydDCYBiPDsMJE0hOADtria42sL4C5LYg/YRyXx1J
         /oLPucnYyAwKpjUH94GvBZtGf6cQVOmHsArKALcCCzYhaEMb3M7h7+obMYKXQoNEOIck
         LW2sf6BNV6kFfVZq87r3atqrQg6DsTxjNEUO26V7q5TDYWg+sTxI8Px3BYB2QapkzDnk
         jDALhLyTiAJaT73Ahlv8bs7TO3xl999CJfkS3K3UAU5P20/jnB8R8WUu2PR4Adu/1x7c
         64vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l15-v6si24734wmc.4.2018.10.31.23.27.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 23:27:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,451,1534802400"; 
   d="scan'208";a="353738368"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2018 07:27:28 +0100
Date: Thu, 1 Nov 2018 07:27:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v5] staging: gasket: Create a free
 memory error path
In-Reply-To: <20181031220243.GA21269@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811010719200.2790@hadrien>
References: <20181031213742.GA18868@kvasir.local> <alpine.DEB.2.21.1810312244040.5416@hadrien> <20181031220243.GA21269@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Ioannis Valasakis wrote:

> On Wed, Oct 31, 2018 at 10:45:33PM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> >
> > > Create an error handling path for memory allocation. It avoids repeating
> > > the same assignments and returns the respective ENOMEM.
> > >
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > ---
> > > Changes in v5:
> > > 	- Typo on the error handling label
> >
> > Compilation should have found this error.
> It would indeed but it still's going on since an hour now so I wanted to
> get your feedback meanwhile and understand my mistakes! Me rushing isn't
> good but after it compiles with all the new changes I should have a very
> fast turnaround :)

You can often compile just the file you are working on by saying make
foo.o.  You can reread the Compiling only part of the kernel section of
the tutorial.

> > > drivers/staging/gasket/gasket_interrupt.c | 13 ++++++++-----
> > >  1 file changed, 8 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> > > index 49d47afad64f..1a3e8b17e714 100644
> > > --- a/drivers/staging/gasket/gasket_interrupt.c
> > > +++ b/drivers/staging/gasket/gasket_interrupt.c
> > > @@ -340,17 +340,14 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
> > >  					       sizeof(struct eventfd_ctx *),
> > >  					       GFP_KERNEL);
> > >  	if (!interrupt_data->eventfd_ctxs) {
> > > -		kfree(interrupt_data);
> > > -		return -ENOMEM;
> > > +		goto err_free_ctxs;
> >
> > Your labels describe where you are coming from.  Dan suggests to make the
> > labels descibe what will happen when you get there.  Here you aren't going
> > to be freeing ctxs.  That is the allocation that failed.
> >
> In that case is err_free_eventfd and err_free_data a good naming scheme?

Maybe err_free_ctxs.

julia

>
> ta
> Ioannis
>
> > julia
> >
> > >  	}
> > >
> > >  	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
> > >  						   sizeof(ulong),
> > >  						   GFP_KERNEL);
> > >  	if (!interrupt_data->interrupt_counts) {
> > > -		kfree(interrupt_data->eventfd_ctxs);
> > > -		kfree(interrupt_data);
> > > -		return -ENOMEM;
> > > +		goto err_free_counts;
> > >  	}
> > >
> > >  	switch (interrupt_data->type) {
> > > @@ -379,6 +376,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
> > >  				    interrupt_sysfs_attrs);
> > >
> > >  	return 0;
> > > +
> > > +err_free_counts:
> > > +	kfree(interrupt_data->eventfd_ctxs);
> > > +err_free_ctxs:
> > > +	kfree(interrupt_data);
> > > +	return -ENOMEM;
> > >  }
> > >
> > >  static void
> > > --
> > > 2.19.1
> > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031213742.GA18868%40kvasir.local.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
>

