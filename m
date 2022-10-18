Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134A67B
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 18:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666118173; x=1697654173;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=px+Y1CxJSxf/cO8xUN/hWisT11ZxnBdRyitxqLtzBRQ=;
  b=C157O4kPuolZxDIHAX2q4tJofOxpl+uimnuDc3jyjIqhthj3XqmTqhbI
   9EYTsYnrL2zQjWfQitRULiCNC5KjdCV3U7UHnqStVwLNTvPxIo8hdBiQc
   cy1zI+qI4WeZ7QG1ESNg9TbiTxVQ0J4VaX2oUzk1g1FKcnFyOiMISk1lO
   v8lL+a9UiCAMRiopOiABHKPIsC401WifLgVBUZijwNZghhOYAkf+AM29j
   shx1TZyqUvXigTgQOKBWul3APUaulqCCfrjNuujUrYyyG8q7MUKaiaa2d
   ylA36/rcdnm7lTvxGE3Qy5frCbGx4iGya+S1Rr3HwyEhhtUWV9hL56cZx
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="289507234"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="289507234"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 11:21:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="691947453"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="691947453"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.6.93])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 11:21:04 -0700
Date: Tue, 18 Oct 2022 11:21:02 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Patch set versioning
Message-ID: <Y07ujhlBBVM6Yd+t@aschofie-mobl2>
References: <Y07iMwCa9zHCcs1J@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y07iMwCa9zHCcs1J@debian-BULLSEYE-live-builder-AMD64>

On Tue, Oct 18, 2022 at 10:58:19PM +0530, Deepak R Varma wrote:
> Hello,
> If I have a patch set with 5 patches included and only one of the patch needs to
> undergo revision. In this situation, when I resubmit the patch set, do I mark
> all patches as v2 along with the cover letter or should I just raise the
> individual patch version and resubmit the patch set with all patches included?

All patches in the set get the udpated version number, even if they
have not changed individually. That is practice across the kernel community.

How it is noted in the changelog, may have varying styles.
I typically state what is unchanged to save my reviewers time.
Something like:

Changed v3 -> v4
- Replace blah with blah in Patch 1. (*name)
- Patches 2-4 are unchanged.

I typically give name of reviewer who suggested rework if applicable.
It's partly giving 'credit', but it also makes it easier for 
reviewers to jog their memory of what they asked for and should 
look for in the new set.

> 
> Thank you,
> ./drv
> 
> 
> 
