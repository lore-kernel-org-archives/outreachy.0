Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B78210E5
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 01:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679361342; x=1710897342;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kfeQPOFuQNHxcHXRi3gnjfo7KbgKnDDTwVAZIJzndhA=;
  b=S5eSlJiNz2tatBYRlAJBjcV8Wx7NsijPAhKAu5DsjJVy3UZVitVCt72L
   buMX45HXMCoMKuXKpS3x2Dt8AMh3REWyhF3U69TBAQXYYmNn/bHPHMAG6
   AofhspBuP4GTgMJ9GF/8mJC0Zk8KvAerajpQ/1fAc1Bacn3qIQo+BVw0R
   odJQbX95K2ScZpjgxb05TEpdzEUWFYu3fi9O5jyA/k0hq1MScy8REPkZU
   o3kvtWvtBah4LD9i1bnbjEP4C8oyAYR9Fxp/W2Y+byV8opaq1KBrTQBFT
   0UK+MqfJghj1Z8xYsiBQsT/KtW5YPO3jKPIcXvUAAaKlBEmVIWTnrtMXD
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318470732"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; 
   d="scan'208";a="318470732"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 18:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="805116631"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; 
   d="scan'208";a="805116631"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.60.228])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 18:15:20 -0700
Date: Mon, 20 Mar 2023 18:15:18 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Code cleanups are not always simple.
Message-ID: <ZBkFJmFirSrPSfBQ@aschofie-mobl2>
References: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>

On Mon, Mar 20, 2023 at 05:08:58PM -0700, Ira Weiny wrote:
> Cleaning up code is not always easy.  Yes there are various rules, coding
> styles and tools which can automate the process.  But we should all remember to
> think about the problem being reported and determine if a simple search/replace
> is the proper thing to do.  I think this is becoming more apparent as the
> number of things checkpatch reports on is dwindling to these more complicated
> issues.

Ira,

Thanks for putting words to what I expect applicants and mentors have
been experiencing this round.

Our approach to ramp applicants on the patch submittal process with
trivial cleanups has been challenged. Drivers/staging has few trivial
cleanups where applicants typically developed their patch submittal
skills, before stepping up to solve coding challenges.

Applicants this round are taking giant steps, where previous applicants
took baby steps.

Keep at it,
Alison

> 
> So I'd like to call attention to a couple of problems which have required a bit
> more attention.  Hopefully by highlighting these problems folks will be more
> aware when looking at future issues.
> 
> The first problem was a week or so back when Khadija was trying to fix line
> length formatting.[1]  The repeated attempts were causing circular problems
> with checkpatch failing on different checks.  The core issue was that
> checkpatch was only checking the symptoms of the issue, not the issue itself.
> Checkpatch and the kernel coding style are in place not to enforce random rules
> on how folks write code.  They are there to make the code cleaner, less buggy,
> and easier to maintain.
> 
> Today I saw a similar situation.  Julia called out the need to make macro
> definitions safer by turning them into inline functions.[2]
> 
> But Sumitra took that a bit too literally.[3]  The container_of() macro is
> useful on it's own.  The only reason to create additional helper functions is
> when the conversion is either more complicated or used so much that the bulk of
> the code becomes much much cleaner.
> 
> I'll end this with a recent example which is part of the kmap() project.
> 
> I was looking at the call to kmap_atomic() in memcpy_page_flushcache() inside
> the x86 code.  At first it looks like a simple substitute and replace from
> kmap_atmoic() to kmap_local_page().  But I took the time to understand the
> context of where memcpy_page_flushcache() was called.  Doing so made me realize
> it was not called at all!!!  The proper fix was to simply remove the call
> entirely from the kernel.
> 
> I know you are all excited to get your first patches into the kernel.  But even
> simple patches take time.  After removing these calls I needed to ensure that
> x86, powerpc, and arm all compiled without issues.  I used both 'git grep' and
> cscope to ensure I removed the header file declarations.  Even then there was
> discussion because I accidentally submitted as a series which made a bit more
> work for the maintainers.[5]
> 
> So in summary take your time.  Try to understand why checkpatch or other tools
> are flagging errors.
> 
> Most importantly, don't be afraid to take your time when submitting patches.
> 
> Ira
> 
> [1] https://lore.kernel.org/all/640e75cfd8fc_229a89294a3@iweiny-mobl.notmuch/
> [2] https://lore.kernel.org/all/124d2ef9-6f1d-2652-c88d-161f1bc06443@inria.fr/
> [3] https://lore.kernel.org/all/ZBh%2Fs5lyONaF37gs@kroah.com/
> [4] https://lore.kernel.org/all/20221230-kmap-x86-v1-0-15f1ecccab50@intel.com/
> [5] https://lore.kernel.org/all/3523ddf9-03f5-3179-9f39-cec09f79aa97@intel.com/
> 
