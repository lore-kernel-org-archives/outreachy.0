Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F741364
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 14:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650379945; x=1681915945;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=Hrs0xD2jX10H7QRs6Pu6i33/iA3hmmlURHnOfKEEZHc=;
  b=BO2jsH4MMIPu1SoZnI3O+pbhd17McFGUg3FoVIW0gkO/mlDzAe43S2Dy
   5nJvRPrpdLaddAE5niMOLeS5OPm8h1/6l9nzo0WP4khQu+m3JpQvgEV4c
   cF1870t6Fcrn33cHdNrlzo4MToLqJzg6ux1G40XPByhfVh/snppejmZqY
   e6TcM++/jRQU3YN5gdvhex8zeV77YcQKVL6a9Fs6+OJPktRP0WzCGK8hY
   fRmu4d9BJyhyWLz9O+Y+66foMHbR/HdKh1iTiV7XyTXDMUz7lEy+VFfQ9
   KOqGSmROr+Prx4ZXTCYs4GELjVao7o8r17k1nhVKLm/1pBjr+0zIvLLkJ
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="243715254"
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; 
   d="scan'208";a="243715254"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2022 07:52:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; 
   d="scan'208";a="530337191"
Received: from ajacosta-mobl1.amr.corp.intel.com (HELO localhost) ([10.212.11.4])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2022 07:52:23 -0700
Date: Tue, 19 Apr 2022 07:52:22 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Mike Rapoport <rppt@linux.ibm.com>, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mm/highmem: Fix kernel-doc warnings in highmem*.h
Message-ID: <Yl7MpmsXtzOfztHu@iweiny-desk3>
References: <20220418175638.30018-1-fmdefrancesco@gmail.com>
 <Yl6unkluUEeRZBbB@casper.infradead.org>
 <4058661.1IzOArtZ34@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4058661.1IzOArtZ34@leap>

On Tue, Apr 19, 2022 at 03:25:16PM +0200, Fabio M. De Francesco wrote:
> On martedì 19 aprile 2022 14:44:14 CEST Matthew Wilcox wrote:
> > On Mon, Apr 18, 2022 at 07:56:38PM +0200, Fabio M. De Francesco wrote:
> > > +/**
> > > + * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic()
> > > + * @__addr:       Virtual address to be unmapped
> > > + *
> > > + * Counterpart to kmap_atomic().
> > 
> > I don't think this is a terribly useful paragraph?
> 
> I agree but let me remind you that this patch is _only_ about fixing 
> kernel-doc warnings. This warning was simply fixed by moving kdoc comment 
> from highmem.h to highmem-internal.h (which is the file where the 
> definition of kunmap_atomic() resides) and merging the text with few lines 
> that already were in highmem-internal.h.
> 
> Furthermore, I've already had an "Acked-by:" tag from Mike Rapoport. I 
> suppose that if I changed the paragraph here I could not forward his ack to 
> the next version.

No drop the ack for now.

> 
> > > + * Effectively a wrapper around kunmap_local() which additionally 
> undoes
> > > + * the side effects of kmap_atomic(), i.e. reenabling pagefaults and
> > > + * preemption. Prevent people trying to call kunmap_atomic() as if it
> > > + * were kunmap() because kunmap_atomic() should get the return value 
> of
> > > + * kmap_atomic(), not its argument which is a pointer to struct page.
> > 
> > I'd rather this were useful advice to the caller than documentation of
> > how it works.  How about:
> > 
> >  * Unmap an address previously mapped by kmap_atomic().  Mappings
> >  * should be unmapped in the reverse order that they were mapped.
> >  * See kmap_local_page() for details.  @__addr can be any address within
> >  * the mapped page, so there is no need to subtract any offset that has
> >  * been added.  In contrast to kunmap(), this function takes the address
> >  * returned from kmap_atomic(), not the page passed to kmap_atomic().
> >  * The compiler will warn you if you pass the page.
> 
> A change like this should go to a separate patch and indeed I'll send it 
> ASAP. Probably, when I'll rework this text in a separate patch, I'll also 
> copy-paste the paragraph you wrote as-is (too easy!).
> 
> However, since the rework of the text in paragraph can only be applied on 
> top of this patch, I'm not sure if I should either (1) make a series with 
> two patches or (2) make a separate patch with a warning to Maintainers that 
> the changes in the new patch can only be applied on top of this patch.
> 
> Actually, I don't yet know how the Community wants tasks like these to be 
> carried out. Any suggestion?
> 
> Thanks for your review and for suggesting a better suited text for the next 
> patch.

I think you should gather all these patches together into a series and submit.
If I am following correctly there are at least 4 patches now?  But I'm unsure
of which ones are stand alone.

It would be easier to see what changes are being made along the way as well as
the final result of the fixes.

Ira

> 
> Fabio M. De Francesco
> 
> 
