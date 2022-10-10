Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136C56102
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 23:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665446023; x=1696982023;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1Mxu2VzzpyQRWsxgs5UjbmduXhnjyxrobas86rqLgF4=;
  b=V46CGLbEEoL4GeVyHU7NINvbReSOHov+E2fzVBAt41fiQCH174PZjpzo
   J6/7Oxce+6ADdyz4jRgCi59xnq4m0nKDEvwS4iE76EQFSOzv6oR3YL3lX
   hq120hYwgP6Liw5nnWl9KfG9HuBWqvJkY4+34Jh0hC/aC2hvDjQduXgrD
   qNdUG6VHUy5RPNMxWPly5NjuNtAGwIeXs4gvw75XrLmBNoDN2I4gZDZs5
   rkpZkVSGZQOm4ZE2t0JJq1XPUbVoiL4uQbuijEp3qfxVTARPbUuRbx8hb
   2uxh7u/sZ2IlOdrhpSfD10XfOAA7iTSOsGIlkqJSTPqJjUQrc4TMqR4Ij
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="305417224"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="305417224"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 16:53:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="871301479"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="871301479"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.228.180])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 16:53:42 -0700
Date: Mon, 10 Oct 2022 16:53:40 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 0/2] Staging: greybus: Fixed whitespace/syntax style
 issues
Message-ID: <Y0SwhNMLk9xh4v1H@aschofie-mobl2>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
 <Y0R/uscIGcUENEWx@aschofie-mobl2>
 <Y0SaG/h9IoCfB3tI@zeda>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0SaG/h9IoCfB3tI@zeda>

On Mon, Oct 10, 2022 at 06:18:03PM -0400, Hunter Chasens wrote:
> My apologies. I just felt very nervous about CCing the maintainers while the formatting of the patch and comments were still in the works. I'll be sure to do so in the v3. 

above is one really one line, please break before 80.

> Thank you for your feedback. When running the get_maintainers script it shows the main LKML along with the mailing list for Staging. Should I also be CCing them, or just the indavidual maintainers? 

above is one really one line, please break before 80.

Hunter,

Understand the concern, and we try to mitigate it by working in the
staging/drivers directory during the contribution period. GregKH and
other maintainers with drivers in staging are expecting us :)  Also,
you'll meet some of the clean up pros of checkpatch, sparse, smatch,
and Coccinelle (you've already met Julia Lawall) working in this
space.

So - at the risk of overwhelming you on Day 1 - one more thing.
It seems you are sending plain text emails, but the text is wrapping
beyond 80 lines. It makes it difficult to cut and comment on a 
particular line. Although the kernel now accepts code lines that
exceeds 80 characters, we want to keep the patch log and email
conversations within the 80 char line limit.

Thanks,
Alison
