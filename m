Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C8615AC
	for <outreachy@lists.linux.dev>; Tue, 11 Oct 2022 01:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665451878; x=1696987878;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ix67c0TlkDhH3pUYcS2p2dVXeARgITO45YI7gBE5i3g=;
  b=jxtoM5anWgETNZySU+5BZbiKuriy048COS/mfUAEiMmb1c3v0faKAa6V
   dAm3SgoysJaoUaYlf7OycAfLw7lWbSuqZJCg/nGwUfeBqnGapJ45UeI8x
   VTOIEEVfe5pLMR87iPBjtxBJxVnN/fYeV1+6JNayUMuhjmahUR1DcE5kb
   nRMRfmTLL4QTw7lnVxwao0mx3jSXqSj18rnsk26iw0MWTb1gEvSZKBVvJ
   aJXfPmvghhAY7O5qsPRCTmpoGrjbrZJh/5FXCezGfSU9KBrB6+ofYe0L4
   K8aVWcgTOmwzEXtRuQM83t/MmjWWora+g6hFqQsqkkf28D0i1SUOB9rJN
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="304368419"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="304368419"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 18:31:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="871325479"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="871325479"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.228.180])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 18:31:17 -0700
Date: Mon, 10 Oct 2022 18:31:15 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 0/2] Staging: greybus: Fixed whitespace/syntax style
 issues
Message-ID: <Y0THY2LgeHYZSaVt@aschofie-mobl2>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
 <Y0R/uscIGcUENEWx@aschofie-mobl2>
 <Y0SaG/h9IoCfB3tI@zeda>
 <Y0SwhNMLk9xh4v1H@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0SwhNMLk9xh4v1H@aschofie-mobl2>


Oops...not good to comment on someone's format and include typo's
yourself ;)  See my fixup below.


On Mon, Oct 10, 2022 at 04:53:40PM -0700, Alison Schofield wrote:
> On Mon, Oct 10, 2022 at 06:18:03PM -0400, Hunter Chasens wrote:
> > My apologies. I just felt very nervous about CCing the maintainers while the formatting of the patch and comments were still in the works. I'll be sure to do so in the v3. 
> 
> above is one really one line, please break before 80.
                      ^long
> 
> > Thank you for your feedback. When running the get_maintainers script it shows the main LKML along with the mailing list for Staging. Should I also be CCing them, or just the indavidual maintainers? 
> 
> above is one really one line, please break before 80.
                      ^long
> 
> Hunter,
> 
> Understand the concern, and we try to mitigate it by working in the
> staging/drivers directory during the contribution period. GregKH and
> other maintainers with drivers in staging are expecting us :)  Also,
> you'll meet some of the clean up pros of checkpatch, sparse, smatch,
> and Coccinelle (you've already met Julia Lawall) working in this
> space.
> 
> So - at the risk of overwhelming you on Day 1 - one more thing.
> It seems you are sending plain text emails, but the text is wrapping
> beyond 80 lines. It makes it difficult to cut and comment on a 
> particular line. Although the kernel now accepts code lines that
> exceeds 80 characters, we want to keep the patch log and email
> conversations within the 80 char line limit.
> 
> Thanks,
> Alison
> 
