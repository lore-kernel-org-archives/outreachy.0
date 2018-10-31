X-GM-THRID: 6618627943350403072
X-Received: by 2002:a1c:b182:: with SMTP id a124-v6mr519707wmf.24.1541023811474;
        Wed, 31 Oct 2018 15:10:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4e85:: with SMTP id e5-v6ls2531187wru.26.gmail; Wed, 31
 Oct 2018 15:10:10 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fjxr+Szp7SYAZajYScuyNPx0j8lU746i5SGgy/PrzklTxunXowrmBKFCl/4TbXHkZmbQyD
X-Received: by 2002:adf:eb85:: with SMTP id t5-v6mr524135wrn.32.1541023810619;
        Wed, 31 Oct 2018 15:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541023810; cv=pass;
        d=google.com; s=arc-20160816;
        b=d6MFLLPPFs3lgJUVgubzqixCN1dePAcIW/22bcx5sb10EXgyrj3lWWRw8s8GMAIxIF
         vQSaThK1td+N+6ME+vjLn3SC12mv6aOQbiTkB1XbM34KpeR5z79Vq9Vtsmlf+oaBhW4T
         CqoxsooJFiomdFn+lPdsonw1g30GawiqEcaGO6f9wNasRIPexvFBEDLmlubonTwShqB8
         1iliefMtY1EsUF/U1qIXhYsDtD8ShWArKmZei0aXb6YwBbjKvDSvY56qH16Dvfqc3bki
         1XW4q+l04kPG2vHa9fx1NAGs4iKWYKRLNQwqvFAwzuj6g1nqXFwVG0kZ8r5thebvOJ2u
         KS3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mXUKG6aB72Qrb2VTiZ3rweVmj5CYXKgzs1YPG0LK8No=;
        b=SnTEEdQbpjIOWxwr+DPMDKFfPGRMEUmMaj4kWASw7sxRcy6nKhlOOpm/RcIoLLj2K4
         lbjgINkKdWccDFpFpx8iFoYbm3mXPN8+5XDuMsJ4x7q6xyuGlbVNfbYgDxcNcbLPLNPQ
         o4MDy/H5xo/Tqhebcie0/GHXjke3yrDHga4BOnLlU7NEIWhbqhNzy2hkIa4FirH5uWkr
         3IaDWbg3KLXLNeemrdz5HYQsAq/bC8Zu8L6auJGDfDWGBWtwvjQL/p5+VClPceP7lcNJ
         xBhf282A/w2+PKIYj0CpVemlRn9N42i5iNMb8sZivzOxqatBMgjX2o0ig4Vzq8NoWfka
         u4Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YefYQ8Te;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o9-v6si644955wmh.2.2018.10.31.15.10.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 15:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YefYQ8Te;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541023804; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=eLVlWXcMBHcDF7IAIJAVsRUTSAFIj8aUDq4uP9tCE/YclKmTGycucA/ILlPcYYu9REJaHEFxjuQYUeSsLnOUimOxE3udFeq8wSAtInu913TEJYtTobvPnzzMT3AKBI+xJhsY446P9UyY/mPhU2+Tr62qFMsn3H17ML2T0jHp/w8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541023804; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=mXUKG6aB72Qrb2VTiZ3rweVmj5CYXKgzs1YPG0LK8No=; 
	b=U3M8y2C5XR8YR5yJj2z2uHgZVjFOyfJbrD2jUzu22A6mAPkjNcAXXi/q9W1+DwOQ6ksGPIphQY2LXjE26ZLA1w2sINXdl4BgGmJwFTurFRGB3/PmB9b1XjTarPR4j8TZ8auSNSbSBEjrtBASJ2FS0TwtAyVI8XC1Pmsi9InH7wM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541023804;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1747; bh=mXUKG6aB72Qrb2VTiZ3rweVmj5CYXKgzs1YPG0LK8No=;
	b=YefYQ8Tepjc0CXSak7LlcIttFJNU9eiHobCpZnmRHIrSzNCWS7MnNIEsE0ujCDfv
	NGYiwKkx78zbEyaRLxHcBJ/lwwFfr9maZQOLCRIYrrhv+iS0637rV9pdl3D8xmKSSks
	AEDm7MGbhz5mY031WVWASoRK8bgli1gpLYkfxcq4=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541023802966840.9128676802911; Wed, 31 Oct 2018 23:10:02 +0100 (CET)
Date: Wed, 31 Oct 2018 22:10:01 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Sasha Levin <sashal@kernel.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, sasha.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATH v3] staging: gasket: Create a memory
 allocation error handling path
Message-ID: <20181031221001.GA29132@kvasir.local>
References: <20181031205636.GA13583@kvasir.local>
 <alpine.DEB.2.21.1810312158190.2391@hadrien>
 <20181031211626.GW194472@sasha-vm>
 <20181031212451.GA10228@kvasir.local>
 <20181031220402.GX194472@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181031220402.GX194472@sasha-vm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 31, 2018 at 06:04:02PM -0400, Sasha Levin wrote:
> On Wed, Oct 31, 2018 at 09:24:51PM +0000, Ioannis Valasakis wrote:
> > On Wed, Oct 31, 2018 at 05:16:26PM -0400, Sasha Levin wrote:
> > > On Wed, Oct 31, 2018 at 09:58:58PM +0100, Julia Lawall wrote:
> > > >
> > > >
> > > > On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> > > >
> > > > > Create an error handling path for memory allocation. It avoids repeating
> > > > > the same assignments and returns the respective ENOMEM.
> > > >
> > > > I think you are again making a patch based on your previous patch.  You
> > > > need to undo everything to get back to the state of Greg's tree.
> > > 
> > > An easy way to deal with the situation you're in now is to use git's
> > > interactive rebase. Interactive rebase lets you merge ("squash") two
> > > or more commits together, so you can merge all your commits on top of
> > > Greg's tree into a single commit.
> > Thank you Sasha for your helpful comment. I tried already with git's
> > rebase option but that made it a bit complicated as apparently the
> > source tree had many changes (even one of the memory allocations was
> > totally removed!)
> > 
> > That's why I just removed my commits and did a fresh git checkout master
> > && git pull. Apparently thousands of changes can happen at very specific
> > times of the day :)
> > 
> > Is there an 'automatic way' to do often git pulls, so you are sure you
> > are working on the latest source tree?
> 
> Did you try 'git pull --rebase'? It will update the branch, but leave
> your commits on top.
> 
Oh that sounds like a great idea. I am going to add an alias for every
git pull to do actually a pull --rebase :) thanks! 
> --
> Thanks,
> Sasha


