X-GM-THRID: 6617780359505379328
X-Received: by 2002:a19:7510:: with SMTP id y16mr427113lfe.9.1541019521727;
        Wed, 31 Oct 2018 13:58:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d75e:: with SMTP id o91-v6ls1175495lfg.26.gmail; Wed, 31
 Oct 2018 13:58:40 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dPCBUwyvg9bEq7aECuMmfkT3PmqV3n3Q2TB+Qcaju3sMCWJC68EzL4HyjIMi+Fy38LIQ2L
X-Received: by 2002:a19:7b18:: with SMTP id w24-v6mr423748lfc.15.1541019520706;
        Wed, 31 Oct 2018 13:58:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541019520; cv=pass;
        d=google.com; s=arc-20160816;
        b=DjkyhURPjXGCQ7RBZF2u85fht8oVf1Wrtm2xnr9cPS/SHx7Y3MDUDDO8C4FOTC2Reh
         AqcIHjjAXDK4eV0+rJtktw7NzUXOoyn0mHomtOmvlz89jXUmD1IjcF/FLwZ0CaPycZ7V
         OHhkXWwJbpoylZw1VSUi2+u3Ktlsu80SagiUN2NVqOPHmdmh1ibI87rkewms1LZ3Yzw3
         iXWuUXpsV8oBxu2o0++q7t805YUM1t7LhMxptBKtNXVU2bkvuqjuPeeubTFTwN9g31J1
         Alo2mvb/sQEwEiv6cXkPEHw2FOXTXLhntfjNDTfhE+RdWjbSicWHR+PskQnVOOWY+tJN
         /qbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4oevw3DSJJ/n1kiGyl3hYgZD1DzcWWuiYtLa0RU5iHw=;
        b=c+I3+2gpybR62zvPBuhYvm8EuMUubMiraQsN8zp/v7e7qcpNXUzicWSLk2vWBTRL0e
         f9f4a/Rpj0gbIhAtY2ulsmiG4DWwhQIgxPi80SnrHIsVR8ZLPgWYP7a+oQs5ROcHaklY
         egdro0fgHZqz+2MTn8kJUs/xi66X38RWMrMW6SrgwyYrQckTYLv7eE9+87bcYsutztzp
         YG3FiF/UEpkZWR/wGczuAjAq2rYg51w/bj9agUf4tdZetjW19GN9cpSpEH8oIe0q0sn4
         f+4x/2hI0xqa2EGvlQodTTFYtVLWAva2sgFQnOB8sPJguyKgeCaUOEVgOyVOHpadSfzv
         kmpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=IXYJ5EUQ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z13-v6si794584ljb.4.2018.10.31.13.58.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 13:58:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=IXYJ5EUQ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541019514; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=iJoPMVxGqBnFTP0/WIAA4up3ymWYCUpgpeNZwobChTntWrcbL9oE1AyBSf/CU5D8+ahvRwtbSS1fhPUaVhwauHU4qcOft0faWmtTQ12QrqZhPLPD7IHEOaJ6+KiwcdnchJMy7ckboYqPWYwaMR7sYv0aVdFASV1jCQcHlExipVE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541019514; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=4oevw3DSJJ/n1kiGyl3hYgZD1DzcWWuiYtLa0RU5iHw=; 
	b=PkohTHinLV/DVTqR3my4Ci+XOR18+vSNjieJWcvW0KCCDnMvMJizs621kz3+I676VVszKgpzesC5/OfoeyDROJyJFB2Exw+QmHShABgjq7W9JZq2FrBBiQMKhfo/5HOXvfu7eWLsUdP1slgxL+GgddaFtjxpjvCklr/sS6h9NCo=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541019514;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3144; bh=4oevw3DSJJ/n1kiGyl3hYgZD1DzcWWuiYtLa0RU5iHw=;
	b=IXYJ5EUQxMdoUIfhuTc/d6H5B++lcko5h1WIcNxCncmIwIXPNJulFEQfcZ/cetmd
	/qr8s3IDPJSr0XT3w7U/pNAOM78q24MlPHjkXE5BwTVPUCGrLrlDeLCI+K4x58awSF8
	hiIxqkQYTw1H0khqGSIHQXNLPkYrmepfuimSldWg=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541019512897683.2494778601484; Wed, 31 Oct 2018 21:58:32 +0100 (CET)
Date: Wed, 31 Oct 2018 20:58:31 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gasket Create a memory
 allocation path
Message-ID: <20181031205831.GA30408@kvasir.local>
References: <20181031164753.GA14140@kvasir.local>
 <alpine.DEB.2.21.1810312137320.2391@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810312137320.2391@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 31, 2018 at 09:40:47PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> 
> > Fix multiple error allocation path by using re-direction.
> 
> Beside the semantic problem that has already been pointed out, I find the
> word "re-direction" a bit strange, or a bit vague.  What is redirected?
> Could it be something like "Collect the common error handling code at the
> end of the function"?
> 
> I also have the impression that this patch is on top of your previous
> incorrect patch, instead of the original code.  You should always work
> against the code in Greg's tree.
Thanks Julia. I am going to rebase on greg's staging and resend the
patch (ah fourth one!). Sorry that I am bothering all of you but in
every step I am learning something new. Thanks for being patient and
helpful!
> 
> julia
> 
> >
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> > Changes in v2:
> > 	- Specific tags for memory allocation
> > 	- Free the memory in the right way as for kfre
> >
> > drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> > index cdfb72af1c52..23232ea8f4d9 100644
> > --- a/drivers/staging/gasket/gasket_interrupt.c
> > +++ b/drivers/staging/gasket/gasket_interrupt.c
> > @@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> >  					       sizeof(struct msix_entry),
> >  					       GFP_KERNEL);
> >  	if (!interrupt_data->msix_entries) {
> > -		goto err_alloc;
> > +		goto err_free_msix;
> >  	}
> >
> >  	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
> >  					       sizeof(struct eventfd_ctx *),
> >  					       GFP_KERNEL);
> >  	if (!interrupt_data->eventfd_ctxs) {
> > -		goto err_alloc;
> > +		goto err_free_eventfd;
> >  	}
> >
> >  	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
> >  						   sizeof(ulong),
> >  						   GFP_KERNEL);
> >  	if (!interrupt_data->interrupt_counts) {
> > -		goto err_alloc;
> > +		goto err_free_data;
> >  	}
> >
> >  	switch (interrupt_data->type) {
> > @@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> >
> >  	return 0;
> >
> > -err_alloc:
> > -	kfree(interrupt_data);
> > -	kfree(interrupt_data->msix_entries);
> > +err_free_msix:
> >  	kfree(interrupt_data->eventfd_ctxs);
> > +err_free_eventfd:
> > +	kfree(interrupt_data->msix_entries);
> > +err_free_data:
> > +	kfree(interrupt_data);
> >  	return -ENOMEM;
> >  }
> >
> > --
> > 2.19.1
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031164753.GA14140%40kvasir.local.
> > For more options, visit https://groups.google.com/d/optout.
> >


