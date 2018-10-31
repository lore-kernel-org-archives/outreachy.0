X-GM-THRID: 6617780359505379328
X-Received: by 2002:a2e:854e:: with SMTP id u14-v6mr484676ljj.0.1541019480304;
        Wed, 31 Oct 2018 13:58:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5988:: with SMTP id g8-v6ls123750ljf.10.gmail; Wed, 31
 Oct 2018 13:57:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dn0Ht6u4V1pI2ILKF8qtJ16c4txnTc9/JGlSHlnrV41fS1Rq2qYJELlWbX8w34vcQAb4jk
X-Received: by 2002:a2e:9857:: with SMTP id e23-v6mr467117ljj.3.1541019479496;
        Wed, 31 Oct 2018 13:57:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541019479; cv=none;
        d=google.com; s=arc-20160816;
        b=ADRf2puzqMrfEd5hYdnUT5RP8y/lQR6R6Wut1ghsVPiOyUhHA+O/13FEF1NzmYkgGl
         tQiS39ZmO7IHrORBc4esLDC4b89NmalxmO1MP+DArzUbNd3hD8ht2JEQlfzPQUy4zZZS
         gRnylFvsEXJi887wFBeEwvZ8ofEDwU1QwC57XOESSOyJIv3BfRKnORCjdxDE549FIbSv
         b51Oy/V3BHz/4wHyYVDyMausMRCZv6lwvRNX/Q6gzfPOzRs5xGtDdNmsxhlL5qAc2SS0
         8OkXFXeq4HwEdUiXhLwGJwHjHWMlde35Y4sIQFbbJweOQDVny95uf9Apz/A+WXKCW5Mr
         T+GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4Tp6eVLE+bkYIXdNZ8Xnjn0dLumW9U+edFSOL/GgHJM=;
        b=h7mOF7TY13GViw21UU6wOpxvtHmhc8J9ZxDOFC/MqU9tNn2LhV6fJiXDHn+VwKLVqI
         vLJmAfMjpLcBoTyVHEQwv2ezBBO194IBiklhO/HjnY23amUm25URojYP6dPFy1MqA5Vl
         Q2Ls/d+LCP73FNtcD5JsXpmhfwTUcGCELbxEHX1ZPB/MSS47xNbrOlfbN5Fk2JkYWpv1
         tIW7xWe3ARAt/l/ZlzJvK8tsf4EF9UEmpK0H13oYzwgnz6hzHtoqB3coQr5HLGAAld+A
         TsdHlq/QITAGWPm7OMwlwILOpVixGriXmk1+Ud2yzn+CS+Tw2QxoSEI/zAd9DxRm5sKI
         rtOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r79-v6si1067706ljr.3.2018.10.31.13.57.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 13:57:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="353685071"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 21:57:58 +0100
Date: Wed, 31 Oct 2018 21:57:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: Sasha Levin <sashal@kernel.org>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gasket Create a memory
 allocation path
In-Reply-To: <20181031205048.GA29504@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810312155300.2391@hadrien>
References: <20181031164753.GA14140@kvasir.local> <20181031165439.GU194472@sasha-vm> <20181031205048.GA29504@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Ioannis Valasakis wrote:

> On Wed, Oct 31, 2018 at 12:54:39PM -0400, Sasha Levin wrote:
> > On Wed, Oct 31, 2018 at 04:47:54PM +0000, Ioannis Valasakis wrote:
> > > Fix multiple error allocation path by using re-direction.
> > >
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > ---
> > > Changes in v2:
> > > 	- Specific tags for memory allocation
> > > 	- Free the memory in the right way as for kfre
> > >
> > > drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
> > > 1 file changed, 8 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> > > index cdfb72af1c52..23232ea8f4d9 100644
> > > --- a/drivers/staging/gasket/gasket_interrupt.c
> > > +++ b/drivers/staging/gasket/gasket_interrupt.c
> > > @@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > > 					       sizeof(struct msix_entry),
> > > 					       GFP_KERNEL);
> > > 	if (!interrupt_data->msix_entries) {
> > > -		goto err_alloc;
> > > +		goto err_free_msix;
> > > 	}
> > >
> > > 	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
> > > 					       sizeof(struct eventfd_ctx *),
> > > 					       GFP_KERNEL);
> > > 	if (!interrupt_data->eventfd_ctxs) {
> > > -		goto err_alloc;
> > > +		goto err_free_eventfd;
> > > 	}
> > >
> > > 	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
> > > 						   sizeof(ulong),
> > > 						   GFP_KERNEL);
> > > 	if (!interrupt_data->interrupt_counts) {
> > > -		goto err_alloc;
> > > +		goto err_free_data;
> > > 	}
> > >
> > > 	switch (interrupt_data->type) {
> > > @@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > >
> > > 	return 0;
> > >
> > > -err_alloc:
> > > -	kfree(interrupt_data);
> > > -	kfree(interrupt_data->msix_entries);
> > > +err_free_msix:
> > > 	kfree(interrupt_data->eventfd_ctxs);
> > > +err_free_eventfd:
> > > +	kfree(interrupt_data->msix_entries);
> > > +err_free_data:
> > > +	kfree(interrupt_data);
> > > 	return -ENOMEM;
> > > }
> >
> > With this code, what will happen if, for example, the last
> > allocation (interrupt_data->interrupt_counts) fails?
> It took my some time but I think I saw it; the mistake is that
> if interrupt_data->interrupt_counts fails it should 'goto
> err_free_msix'.
>
> Same if interrupt_data->msix_entries fails it should 'goto
> err_free_data'.
>
> Is that right?
>
> (I got very ambitious with the labels and I mixed it up ;) Any way to
> make the goto labels make sense?)

I don't think that the choice of labels is a problem.  Basically, you
should normally release things in the opposite order of the one in which
they were allocated.  At the beginning of your function, you can just do a
return, because nothing has been allocated yet.  Then when you have
successfully allocated something, if you fail afterwards you should go to
the very end of the function, because you have only one thing to free.
When you have successfully allocated something else, if you fail
afterwards, you should jump not quite to the end, so that you free both
things that have been allocated, etc.

julia

