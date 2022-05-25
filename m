Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74391360
	for <outreachy@lists.linux.dev>; Wed, 25 May 2022 16:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653494725; x=1685030725;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Qtq8NsRkQ5MXSb0vyxgaVhO2wTrtOk/ncJF+4DTDLd0=;
  b=D1cpNTsw+GxS5m50hzZZ3NcGU/FF1u4OgUucqIrC5DCZkoXHUIF+4gkp
   yUrK+s1WNQPsOZBOvmmsPA1+O91T8mJ6FYn8hrCCVj3kdWKThLFRacBAI
   dX3G+jKGa4dvTto5VsJ8wykRRZwaw1dRfpbzDKCFF29Yayf93tpzq/DqL
   AIfV0ZPBj8A/ZCZ9Z6RMVCMprt2bSQTYzRsXU6jjczu3XS+MmUyrh24wd
   T3ZVi3Mqr63soAz1XY4cS9b0kuoI2DRkivnf6Z8cZkFd/p+OPEjiQph+n
   koyH+UMmnHOStZILINLrVtRHiXg48H2FByTRyYSZ+O6neB4oUvQY+VCiB
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="261464712"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; 
   d="scan'208";a="261464712"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 May 2022 09:03:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; 
   d="scan'208";a="601970811"
Received: from vlpathak-mobl.amr.corp.intel.com (HELO localhost) ([10.212.116.219])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 May 2022 09:03:12 -0700
Date: Wed, 25 May 2022 09:03:12 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	outreachy@lists.linux.dev,
	"Acked-by : Mike Rapoport" <rppt@linux.ibm.com>
Subject: Re: [PATCH v2 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Message-ID: <Yo5TQOByKbMbvE8m@iweiny-desk3>
References: <20220425162400.11334-1-fmdefrancesco@gmail.com>
 <20220425162400.11334-2-fmdefrancesco@gmail.com>
 <YmeYzKT8Ikq5SfdE@linutronix.de>
 <YmwLXvtSgl2BA2mC@iweiny-desk3>
 <Yo34GGK62yVkPzZy@linutronix.de>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yo34GGK62yVkPzZy@linutronix.de>

On Wed, May 25, 2022 at 11:34:16AM +0200, Sebastian Andrzej Siewior wrote:
> On 2022-04-29 08:59:26 [-0700], Ira Weiny wrote:
> > I think some discussion needs to happen around this API.
> > 
> > Highmem has little use.  I don't think anyone disagrees with Linus there.
> > (Although I think there are still a few users out there.)
> 
> arm32 is still built and they have sometimes 1 - 2 GiB of memory.

Yep :-) I was thinking of arm when I said this.

> 
> > kmap may be a poor name for an API without the highmem functionality.  But
> > perhaps not.  One could interpret it to mean simply getting the kernel mapping
> > of the page rather than creating one.  After all that is what 64bit has done
> > all along.
> > 
> > This interpretation helps when you consider features which attempt to layer the
> > direct map with additional protections like PKS.[1]  Those protections mean
> > that a simple page_address() is insufficient to access the direct map.
> > 
> > As far as calling kmap() and kmap_atomic() deprecated I'm ok with that if the
> > community is.
> > 
> > The current kmap() call sites need work and Fabio's work on auditing them is
> > extremely helpful.  That said, if we officially deprecate kmap_atomic() then
> > those sites could be added to the list for rework.
> 
> Maybe I oversee something obvious but there is no problem with removing
> kmap_atomic*() and keeping only kmap_local*() around, is there?

No there is not.  But some kmap_atomic() sites may have to open code the
preempt_disable() while others may not.

I have not done a full audit of the kmap_atomic() sites but I suspect most
don't really need the preempt_disable() but many may need to.  I just don't
know.

Regardless marking it deprecated can stop the growth of kmap_atomic() calls.

> I never intended to deprecated kmap(), only kmap_atomic*() in favour of
> kmap_local*().

Ok.  But I do want to see kmap() use removed.  The PKS code can't work with
kmap() and in general we are seeing more and more restrictions on the direct
map which may or may not be compatible with kmap().  What I presented at LSFmm
was to turn the kmap* interfaces into a more generic 'get me a temp kernel
address' interface instead of a highmem interface.

Any user who needs a long term address will need something other than kmap().
To that end there was some discussion on making vmap() more efficient or other
alternatives.

First we need to focus on reducing the kmap() call sites.  This documentation
change, making kmap() deprecated, will help ensure the kernel does not grow
more of them.

Ira

> 
> > Ira
> 
> Sebastian
