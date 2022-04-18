Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43427A56
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 21:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650317818; x=1681853818;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eEJGoHVsFofaV6UR/94SRICq/E+Aa7hOKpo5pnC+TWg=;
  b=AOHE6xJXv1OHEwvvkEZWSkFWv+m/x0v8Mmb6YL7NKF7CRavJHwMJCaO9
   6V3j4mvIgsud6OVNmWE9joxKbx6VuMpbzeJYzBif1UxT2ZX4eIjxYo79m
   uMQRihpsYC6S+hyqqhQdLoTLLFGPJ1eRi4SYqowAY7LZClHWwluHJHWto
   Lh6qoWyyMiyK9QaDfnJLmL6DRMXI7obploCHMZRRpffBj02oj32cvltgA
   nNGDEw5tkOW66rhaT2j7aSRtrgm2Ulrv1k9S9xPpyOxTFsOeViDa4laA8
   071obN8vfJEEYh3orn6GgeBqskPr1kK2zwuU9Zuo2Ha37FCXspmoqTedJ
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="326516064"
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; 
   d="scan'208";a="326516064"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 14:36:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; 
   d="scan'208";a="804432221"
Received: from moseshab-mobl1.amr.corp.intel.com (HELO localhost) ([10.209.143.127])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 14:36:49 -0700
Date: Mon, 18 Apr 2022 14:36:49 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	SeongJae Park <sj@kernel.org>,
	Jiajian Ye <yejiajian2018@email.szu.edu.cn>,
	Thomas Gleixner <tglx@linutronix.de>,
	Matthew Wilcox <willy@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>, outreachy@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation/vm: Include kernel-doc from
 highmem-internal.h
Message-ID: <Yl3Z8Qll+zGo4v/D@iweiny-desk3>
References: <20220418081740.21001-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220418081740.21001-1-fmdefrancesco@gmail.com>

On Mon, Apr 18, 2022 at 10:17:40AM +0200, Fabio M. De Francesco wrote:
> In Documentation/vm/highmem.rst the kernel-doc comments are missing,
> therefore kunmap_local() and kunmap_atomic() are yet undocumented.
> 
> Add a kernel-doc directive to include the above-mentioned kernel-doc
> comments in highmem.rst.
> 
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

I thought I saw a patch fly by which changed the comment of kunmap_atomic() in
include/linux/highmem-internal.h?  Did I miss that somewhere?

This is a good inclusion for now.  However, I think I would rather see this as
part of a new series which puts the bulk of the documentation with the code as
I proposed in patch 1/2 in your other series.

For this particular change:

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

> ---
> 
> This patch must be applied and built on top of 
> "[PATCH v3 2/2] Documentation/vm: Include kernel-doc to highmem.rst"
> https://lore.kernel.org/lkml/20220415231917.25962-3-fmdefrancesco@gmail.com/
> 
>  Documentation/vm/highmem.rst | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
> index 5dcee6233cd5..1a3e6a8f5d3e 100644
> --- a/Documentation/vm/highmem.rst
> +++ b/Documentation/vm/highmem.rst
> @@ -161,3 +161,4 @@ Functions
>  =========
>  
>  .. kernel-doc:: include/linux/highmem.h
> +.. kernel-doc:: include/linux/highmem-internal.h
> -- 
> 2.34.1
> 
