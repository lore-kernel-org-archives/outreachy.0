Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D98E7C
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 00:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650848390; x=1682384390;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5Cq1Fl9CMgifsT97lU21ZUbbD/AKhEGdsuclScV7Qss=;
  b=ATUCch/mUa+1FExnPOslaHrYZyeRK2tpW4a1ruST7tuQZxuVm/9BwPZY
   Cu1cdA2CQ42LX8lcbS/aKOv5Qowtdg3CO1gO1g7OyKvF6nuRXI2vR8GTD
   bMwpsO9rmK+IX/n5g1W7zG2nHnoTh94KD9PATtBNJLQQsQrISxWajdI1d
   LdVHuCtKEovLqIqp88VkEV62GAjuqFsGjPyyGjzm3S0gidCMWMKNSTwKz
   X3u+S8XyiRlQwLI6zQ5eVuRb3MD4dD+3X2S49wYI8uVo8gzJW6jhOhrWv
   OyD+2HRsi1k8xwQBV2xr42pJwuzk0qDNodaXh2Z8ksqrOvqurggWO/hyv
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="351553646"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; 
   d="scan'208";a="351553646"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2022 17:59:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; 
   d="scan'208";a="675966787"
Received: from hungyuan-mobl.amr.corp.intel.com (HELO localhost) ([10.212.88.155])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2022 17:59:48 -0700
Date: Sun, 24 Apr 2022 17:59:48 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org, outreachy@lists.linux.dev,
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 4/4] Documentation/vm: Rework "Temporary Virtual Mappings"
Message-ID: <YmXyhH7wAJo274WB@iweiny-desk3>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com>
 <20220421180200.16901-5-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421180200.16901-5-fmdefrancesco@gmail.com>

On Thu, Apr 21, 2022 at 08:02:00PM +0200, Fabio M. De Francesco wrote:
> Extend and rework the "Temporary Virtual Mappings" section of the highmem.rst
> documentation.
> 
> Despite the local kmaps were introduced by Thomas Gleixner in October 2020,
> documentation was still missing information about them. These additions rely
> largely on Gleixner's patches, Jonathan Corbet's LWN articles, comments by
> Ira Weiny and Matthew Wilcox, and in-code comments from
> ./include/linux/highmem.h.
> 
> 1) Add a paragraph to document kmap_local_page().
> 2) Reorder the list of functions by decreasing order of preference of
> use.
> 3) Rework part of the kmap() entry in list.
> 
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  Documentation/vm/highmem.rst | 71 ++++++++++++++++++++++++++++++------
>  1 file changed, 60 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
> index e05bf5524174..960f61e7a552 100644
> --- a/Documentation/vm/highmem.rst
> +++ b/Documentation/vm/highmem.rst
> @@ -50,26 +50,75 @@ space when they use mm context tags.
>  Temporary Virtual Mappings
>  ==========================
>  
> -The kernel contains several ways of creating temporary mappings:
> +The kernel contains several ways of creating temporary mappings. The following
> +list shows them in order of preference of use.
>  
> -* vmap().  This can be used to make a long duration mapping of multiple
> -  physical pages into a contiguous virtual space.  It needs global
> -  synchronization to unmap.
> +* kmap_local_page().  This function is used to require short term mappings.
> +  It can be invoked from any context (including interrupts) but the mappings
> +  can only be used in the context which acquired them.
> +
> +  This function should be preferred, where feasible, over all the others.
>  
> -* kmap().  This permits a short duration mapping of a single page.  It needs
> -  global synchronization, but is amortized somewhat.  It is also prone to
> -  deadlocks when using in a nested fashion, and so it is not recommended for
> -  new code.
> +  These mappings are per thread, CPU local (i.e., migration from one CPU to
> +  another is disabled - this is why they are called "local"), but they don't
> +  disable preemption. It's valid to take pagefaults in a local kmap region,
> +  unless the context in which the local mapping is acquired does not allow
> +  it for other reasons.
> +
> +  It is assumed that kmap_local_page() always returns the virtual address

kmap_local_page() does return a kernel virtual address.  Why 'assume' this?

Do you mean it returns an address in the direct map?

> +  of the mapping, therefore they won't ever fail.

I don't think that returning a virtual address has anything to do with the
assumption they will not fail.

Why do you say this?

> +
> +  If a task holding local kmaps is preempted, the maps are removed on context
> +  switch and restored when the task comes back on the CPU. As the maps are
> +  strictly CPU local, it is guaranteed that the task stays on the CPU and
> +  that the CPU cannot be unplugged until the local kmaps are released.
> +
> +  Nesting kmap_local_page() and kmap_atomic() mappings is allowed to a certain
> +  extent (up to KMAP_TYPE_NR) but their invocations have to be strictly ordered
> +  because the map implementation is stack based.

I think I would reference the kmap_local_page() for more details on the
ordering because there have been some conversions I've done which were
complicated by this.

>  
>  * kmap_atomic().  This permits a very short duration mapping of a single
>    page.  Since the mapping is restricted to the CPU that issued it, it
>    performs well, but the issuing task is therefore required to stay on that
>    CPU until it has finished, lest some other task displace its mappings.
>  
> -  kmap_atomic() may also be used by interrupt contexts, since it is does not
> -  sleep and the caller may not sleep until after kunmap_atomic() is called.
> +  kmap_atomic() may also be used by interrupt contexts, since it does not
> +  sleep and the callers too may not sleep until after kunmap_atomic() is
> +  called.
> +
> +  Each call of kmap_atomic() in the kernel creates a non-preemptible section
> +  and disable pagefaults. This could be a source of unwanted latency, so it
> +  should be only used if it is absolutely required, otherwise kmap_local_page()
> +  should be used where it is feasible.
>  
> -  It may be assumed that k[un]map_atomic() won't fail.
> +  It is assumed that k[un]map_atomic() won't fail.
> +
> +* kmap().  This should be used to make short duration mapping of a single
> +  page with no restrictions on preemption or migration. It comes with an
> +  overhead as mapping space is restricted and protected by a global lock
> +  for synchronization. When mapping is no more needed, the address that
                                         ^^^^^^^^
					 no longer

> +  the page was mapped to must be released with kunmap().
> +
> +  Mapping changes must be propagated across all the CPUs. kmap() also
> +  requires global TLB invalidation when the kmap's pool wraps and it might
> +  block when the mapping space is fully utilized until a slot becomes
> +  available. Therefore, kmap() is only callable from preemptible context.
> +
> +  All the above work is necessary if a mapping must last for a relatively
> +  long time but the bulk of high-memory mappings in the kernel are
> +  short-lived and only used in one place. This means that the cost of
> +  kmap() is mostly wasted in such cases. kmap() was not intended for long
> +  term mappings but it has morphed in that direction and its use is
> +  strongly discouraged in newer code and the set of the preceding functions
> +  should be preferred.

Nice!

Ira

> +
> +  On 64-bit systems, calls to kmap_local_page(), kmap_atomic() and kmap() have
> +  no real work to do because a 64-bit address space is more than sufficient to
> +  address all the physical memory whose pages are permanently mapped.
> +
> +* vmap().  This can be used to make a long duration mapping of multiple
> +  physical pages into a contiguous virtual space.  It needs global
> +  synchronization to unmap.
>  
>  
>  Cost of Temporary Mappings
> -- 
> 2.34.1
> 
