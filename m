Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CA7290F
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 18:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650650934; x=1682186934;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=HX/ZyQQsLl+UqtREKQBoegBeMaZnDPZSJUdaRvkzaVM=;
  b=lgnAKW4AkD1yHKvDE6QW75TJJAutbKdWqY6+c4DAqzcE2ZJFwXsBtYWh
   /tJFYVWjfhLJq9kt/5UgFRj01EnAQNDQPS0amcVOTyFz7bA5MfV8qMFwA
   m31TTh3Jk1PuIeX8LGg2jxEEslc0IozfxI6bT6TV/S6KCXwBkO+QxUBlf
   +OYt5VKrNoH8sIgLjcwLcxHaTD+Rv3I6Tx8SCOuWN5Qi7IxTx7nwGFxGL
   qxUeaOO9goQymAGWd0hSYyNn7+68WrxvB6fINrq9sbENG1jppE8JGeICr
   Vkwr89J4kySFgGqUZh/XtVSa4MFHDn09u1Enxz7RmN2U3AlwgascNpmp5
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="264238721"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; 
   d="scan'208";a="264238721"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2022 11:08:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; 
   d="scan'208";a="563138636"
Received: from hltravis-mobl1.amr.corp.intel.com (HELO localhost) ([10.213.166.215])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2022 11:08:46 -0700
Date: Fri, 22 Apr 2022 11:08:46 -0700
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
	Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Message-ID: <YmLvLvnZm0DJs0r4@iweiny-desk3>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com>
 <20220421180200.16901-2-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421180200.16901-2-fmdefrancesco@gmail.com>

On Thu, Apr 21, 2022 at 08:01:57PM +0200, Fabio M. De Francesco wrote:
> `scripts/kernel-doc -v -none include/linux/highmem*` reports the following
> warnings:
> 
> include/linux/highmem.h:160: warning: expecting prototype for kunmap_atomic(). Prototype was for nr_free_highpages() instead
> include/linux/highmem.h:204: warning: No description found for return value of 'alloc_zeroed_user_highpage_movable'
> include/linux/highmem-internal.h:256: warning: Function parameter or member '__addr' not described in 'kunmap_atomic'
> include/linux/highmem-internal.h:256: warning: Excess function parameter 'addr' description in 'kunmap_atomic'
> 
> Fix these warnings by (1) moving the kernel-doc comments from highmem.h to
> highmem-internal.h (which is the file were the kunmap_atomic() macro is
> actually defined), (2) extending and merging it with the comment which was
> already in highmem-internal.h, and (3) using correct parameter names.
> 
> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Suggested-by: Matthew Wilcox <willy@infradead.org>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  include/linux/highmem-internal.h | 14 +++++++++++---
>  include/linux/highmem.h          | 15 +++------------
>  2 files changed, 14 insertions(+), 15 deletions(-)
> 
> diff --git a/include/linux/highmem-internal.h b/include/linux/highmem-internal.h
> index a77be5630209..b099a08e29d3 100644
> --- a/include/linux/highmem-internal.h
> +++ b/include/linux/highmem-internal.h
> @@ -236,9 +236,17 @@ static inline unsigned long totalhigh_pages(void) { return 0UL; }
>  
>  #endif /* CONFIG_HIGHMEM */
>  
> -/*
> - * Prevent people trying to call kunmap_atomic() as if it were kunmap()
> - * kunmap_atomic() should get the return value of kmap_atomic, not the page.
> +/**
> + * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic()
> + * @__addr:       Virtual address to be unmapped
> + *
> + * Unmap an address previously mapped by kmap_atomic() and re-enables
> + * pagefaults and preemption. Mappings should be unmapped in the reverse
> + * order that they were mapped. See kmap_local_page() for details.
> + * @__addr can be any address within the mapped page, so there is no need
> + * to subtract any offset that has been added. In contrast to kunmap(),
> + * this function takes the address returned from kmap_atomic(), not the
> + * page passed to it. The compiler will warn you if you pass the page.
>   */
>  #define kunmap_atomic(__addr)					\
>  do {								\
> diff --git a/include/linux/highmem.h b/include/linux/highmem.h
> index 39bb9b47fa9c..c3d562b5f0c1 100644
> --- a/include/linux/highmem.h
> +++ b/include/linux/highmem.h
> @@ -37,7 +37,7 @@ static inline void *kmap(struct page *page);
>  
>  /**
>   * kunmap - Unmap the virtual address mapped by kmap()
> - * @addr:	Virtual address to be unmapped
> + * @page:	Virtual address to be unmapped
                ^^^^^^^^^^^^^^^
		Page

Not only was the name wrong but the description of an address is wrong.

Other than that LGTM:

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

>   *
>   * Counterpart to kmap(). A NOOP for CONFIG_HIGHMEM=n and for mappings of
>   * pages in the low memory area.
> @@ -145,17 +145,6 @@ static inline void *kmap_local_folio(struct folio *folio, size_t offset);
>   */
>  static inline void *kmap_atomic(struct page *page);
>  
> -/**
> - * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic()
> - * @addr:	Virtual address to be unmapped
> - *
> - * Counterpart to kmap_atomic().
> - *
> - * Effectively a wrapper around kunmap_local() which additionally undoes
> - * the side effects of kmap_atomic(), i.e. reenabling pagefaults and
> - * preemption.
> - */
> -
>  /* Highmem related interfaces for management code */
>  static inline unsigned int nr_free_highpages(void);
>  static inline unsigned long totalhigh_pages(void);
> @@ -191,6 +180,8 @@ static inline void clear_user_highpage(struct page *page, unsigned long vaddr)
>   * @vma: The VMA the page is to be allocated for
>   * @vaddr: The virtual address the page will be inserted into
>   *
> + * Returns: The allocated and zeroed HIGHMEM page
> + *
>   * This function will allocate a page for a VMA that the caller knows will
>   * be able to migrate in the future using move_pages() or reclaimed
>   *
> -- 
> 2.34.1
> 
