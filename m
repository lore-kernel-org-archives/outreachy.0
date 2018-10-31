X-GM-THRID: 6617780359505379328
X-Received: by 2002:a2e:42ce:: with SMTP id h75-v6mr468903ljf.27.1541019649319;
        Wed, 31 Oct 2018 14:00:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:1259:: with SMTP id t86-v6ls286680lje.13.gmail; Wed, 31
 Oct 2018 14:00:47 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eUYvRQOkb1yFgMMwSvoUSXK8tLH6MU2xDfMZW7Uuy/iEaxaLt+It+g2t5oanKi2KrS5Fj0
X-Received: by 2002:a2e:854e:: with SMTP id u14-v6mr486598ljj.0.1541019647466;
        Wed, 31 Oct 2018 14:00:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541019647; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ns9sY1iYuQSXQDSDI16hnHoHJHGfl+pQAUBNKqic3YERXIxEiFEFk26ulYa1RSD2cO
         0wV5t5SuMXQ1fKu3C6vtUC1KzslGAjKozfVCAydu+Kspw60CE9Xiqky2cBcGMbpVTkUj
         LyO7Z6uo/cGQgxqa8OPRCpraCDqtqL7cC/Ih3dlMeiXatSp7mVLZb89JcGklLPdA1fQ+
         bXeltUixIGAj4zVGRuSG3x0wykmye/dAGFwzXMO9rPDnXgFz++CgN7/YAYNZPHzde+8b
         ld4U39FCeKRhUaWYn13WTQTbwZeDCK9Up+oUlmtbB8xBNrzGTUfSNi0NcVZL91gjJRSV
         hS9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/002tAAsRS4HPCOfDgfR2rj4AsBt8DbBxK0FvGNcP/E=;
        b=moeYkzaCNAeKqnKSqkwENbo2s21e/4RufIYOx7ks490SouQS+j+HdYSGSU15KgAhbj
         bnrN8D+wchDYUl4QOTmqBE5kfa54OuEesbnBVHPRf0XlAyK8SQVdTu3G03jc2rK9EoDA
         Kd8fBj/y/UACnzEE0SK/wrt/IlIyJAmq/scf0RHOGzmDMjpwYBJDOUAp1gCnufMkhMZw
         9worH1YmGMapw+45mkWRCO/hrAHVxArQIqu6gctkcWGUXkQsNKEwzfDj1FxFq3z9ln5u
         GdpZbjtAsgoIFguiEd4TiDW/44HyDYWm1ohCGqz9XnfwkvfS1sCfaM4yeCR3kQ3d1EVJ
         EdVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gitbrLFM;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y12-v6si170634lfh.4.2018.10.31.14.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gitbrLFM;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541019639; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=LNBDPubHr4qZZY5qp/kq1IqZJoMyKjWmR5at6bZF6+aH2tdMcGFLHIYkBheixOam5jxSA3a3yUwpvnDcunDER6mComBPXcVhp3Ddapx7JISQ2V/v5sCoKvt2hI1ybLVrTDNEwR955q7RgpRKa/9QSZcBev4TZEWFWTCDT4Se61U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541019639; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=/002tAAsRS4HPCOfDgfR2rj4AsBt8DbBxK0FvGNcP/E=; 
	b=GVFQ9tpSoCdT6bys74/atxku8q/Pti6hi5ddTpQTCmekgJ5VEO0vHrSes7PiJ2QKHkPxmO5nFSk4vcGY5mWjMB7+W9OBT9NVl2xZqQJlWcoYGBEnqZA7bq4kjDfUj5UAcnl9C9sK1tWmHiaXC6qIvjfaMPlLbiskVEIFKx161mI=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541019639;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3699; bh=/002tAAsRS4HPCOfDgfR2rj4AsBt8DbBxK0FvGNcP/E=;
	b=gitbrLFMKIjWLVQD6BTxbenEY3OA8aU6Wpl0lCpqWpHzEtVY5d1zSWy8IqdWrruo
	bKa0Lod7j78LlRCkr8W+SOhutV8Hl1cTubI1YlpCTUhODJW7pUox54eqKgXAk/V/4hJ
	OM7+JJnLwgVXupzKncC7d2sjQQPg9fmqXPJMEMI0=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541019636825400.35035266485625; Wed, 31 Oct 2018 22:00:36 +0100 (CET)
Date: Wed, 31 Oct 2018 21:00:35 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sasha Levin <sashal@kernel.org>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gasket Create a memory
 allocation path
Message-ID: <20181031210035.GA13539@kvasir.local>
References: <20181031164753.GA14140@kvasir.local>
 <20181031165439.GU194472@sasha-vm>
 <20181031205048.GA29504@kvasir.local>
 <alpine.DEB.2.21.1810312155300.2391@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810312155300.2391@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 31, 2018 at 09:57:58PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> 
> > On Wed, Oct 31, 2018 at 12:54:39PM -0400, Sasha Levin wrote:
> > > On Wed, Oct 31, 2018 at 04:47:54PM +0000, Ioannis Valasakis wrote:
> > > > Fix multiple error allocation path by using re-direction.
> > > >
> > > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > > ---
> > > > Changes in v2:
> > > > 	- Specific tags for memory allocation
> > > > 	- Free the memory in the right way as for kfre
> > > >
> > > > drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
> > > > 1 file changed, 8 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> > > > index cdfb72af1c52..23232ea8f4d9 100644
> > > > --- a/drivers/staging/gasket/gasket_interrupt.c
> > > > +++ b/drivers/staging/gasket/gasket_interrupt.c
> > > > @@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > > > 					       sizeof(struct msix_entry),
> > > > 					       GFP_KERNEL);
> > > > 	if (!interrupt_data->msix_entries) {
> > > > -		goto err_alloc;
> > > > +		goto err_free_msix;
> > > > 	}
> > > >
> > > > 	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
> > > > 					       sizeof(struct eventfd_ctx *),
> > > > 					       GFP_KERNEL);
> > > > 	if (!interrupt_data->eventfd_ctxs) {
> > > > -		goto err_alloc;
> > > > +		goto err_free_eventfd;
> > > > 	}
> > > >
> > > > 	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
> > > > 						   sizeof(ulong),
> > > > 						   GFP_KERNEL);
> > > > 	if (!interrupt_data->interrupt_counts) {
> > > > -		goto err_alloc;
> > > > +		goto err_free_data;
> > > > 	}
> > > >
> > > > 	switch (interrupt_data->type) {
> > > > @@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > > >
> > > > 	return 0;
> > > >
> > > > -err_alloc:
> > > > -	kfree(interrupt_data);
> > > > -	kfree(interrupt_data->msix_entries);
> > > > +err_free_msix:
> > > > 	kfree(interrupt_data->eventfd_ctxs);
> > > > +err_free_eventfd:
> > > > +	kfree(interrupt_data->msix_entries);
> > > > +err_free_data:
> > > > +	kfree(interrupt_data);
> > > > 	return -ENOMEM;
> > > > }
> > >
> > > With this code, what will happen if, for example, the last
> > > allocation (interrupt_data->interrupt_counts) fails?
> > It took my some time but I think I saw it; the mistake is that
> > if interrupt_data->interrupt_counts fails it should 'goto
> > err_free_msix'.
> >
> > Same if interrupt_data->msix_entries fails it should 'goto
> > err_free_data'.
> >
> > Is that right?
> >
> > (I got very ambitious with the labels and I mixed it up ;) Any way to
> > make the goto labels make sense?)
> 
> I don't think that the choice of labels is a problem.  Basically, you
> should normally release things in the opposite order of the one in which
> they were allocated.  At the beginning of your function, you can just do a
> return, because nothing has been allocated yet.  Then when you have
> successfully allocated something, if you fail afterwards you should go to
> the very end of the function, because you have only one thing to free.
> When you have successfully allocated something else, if you fail
> afterwards, you should jump not quite to the end, so that you free both
> things that have been allocated, etc.
Indeed that is what I meant. Badly phrased but I released things the
wrong way around. I send a v3 of the patch (although as I just noticed
your latest comment, if that makes sense I am going to rebase against
greg's staging and resend it).

Thank you 

Ioannis

> 
> julia


