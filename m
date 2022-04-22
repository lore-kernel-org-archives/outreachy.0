Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761C7290F
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 18:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650650969; x=1682186969;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bf6kesfiGQW5FTsQbo0yY/hK5dAOEbAhAQZQcC1Uv1E=;
  b=ELSX83rY3mpSmLTvFRiyMMKenSkJjpfzfdakTgrxDcav2zdpK63KS0Mi
   PuNfVROWZCt1soclSziB0ixEslXiqEtOvCXkUb5YvaZmOnVkb/r46f+Qk
   2rwdzr6sUs/lKci+lNbkvdcsNAqi7hfQqzymdEnP6Hk7Fnq80Riv1Zuvs
   3uv5i//Q+cjLgpkA5jDmHjkkHQCXEyoazEL9dzdCpQHBqAdPzrhoPD6Jy
   EZ6Vvvh94y1YsiKd0fPNXVhaBJDzSzqMRFbq8Q9fircqxx1GrYs14/JDF
   fruGiS6GQcqB18AOG1zlSsh8fFHTY+Fr2STqFuPilM4zHga+QIJV5pvGt
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="252077313"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; 
   d="scan'208";a="252077313"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2022 11:09:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; 
   d="scan'208";a="867993856"
Received: from hltravis-mobl1.amr.corp.intel.com (HELO localhost) ([10.213.166.215])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2022 11:09:28 -0700
Date: Fri, 22 Apr 2022 11:09:28 -0700
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
Subject: Re: [PATCH 2/4] Documentation/vm: Include kdocs from highmem*.h into
 highmem.rst
Message-ID: <YmLvWE7vUduaXZVY@iweiny-desk3>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com>
 <20220421180200.16901-3-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421180200.16901-3-fmdefrancesco@gmail.com>

On Thu, Apr 21, 2022 at 08:01:58PM +0200, Fabio M. De Francesco wrote:
> kernel-docs that are in include/linux/highmem.h and in
> include/linux/highmem-internal.h should be included in highmem.rst.
> 
> Use kdocs directives to include the above-mentioned comments into
> highmem.rst.
> 
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

> ---
>  Documentation/vm/highmem.rst | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
> index 0f69a9fec34d..ccff08a8211d 100644
> --- a/Documentation/vm/highmem.rst
> +++ b/Documentation/vm/highmem.rst
> @@ -145,3 +145,10 @@ The general recommendation is that you don't use more than 8GiB on a 32-bit
>  machine - although more might work for you and your workload, you're pretty
>  much on your own - don't expect kernel developers to really care much if things
>  come apart.
> +
> +
> +Functions
> +=========
> +
> +.. kernel-doc:: include/linux/highmem.h
> +.. kernel-doc:: include/linux/highmem-internal.h
> -- 
> 2.34.1
> 
