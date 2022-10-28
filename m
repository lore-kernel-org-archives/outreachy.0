Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B9ED50E
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 18:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666982408; x=1698518408;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=i4I7pix5kZFy5s+UgCZg9qu2kDjiYN1kDY0tgbo5AiM=;
  b=St3lJRrxbkExiFXrTT2ZeHZ+rilF8HsLkUyf884GZg8jViN0HWhusDS0
   3ZNm5zMB+6rTSgziARkk97fzxwuXqySxcO4E+aQxO+y44gaGgBLB0EqRr
   rsWqGIlPPcbESN2OJsVdYkmc1CAs/dZLNUvnDeWpBq3tCN7eUq6O037Gf
   kYlhEvh/3WI7hACAfmeKhYI2/GEohQu0atCDkGE8WGm9HBNZupI9+MH20
   AfvXsuVlp3N3tM9DeidMROPpkY7Oj1IpnOIvjQCvbn6AvkRLAO1oqmGwy
   T5jdtuRH0PFOE5alMd6sYewYcyFimSM9aHKva4vLWoc2fc7dKj/5jHUqy
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="295973792"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; 
   d="scan'208";a="295973792"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 11:40:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="722150652"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; 
   d="scan'208";a="722150652"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.175.207])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 11:40:07 -0700
Date: Fri, 28 Oct 2022 11:40:06 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Tanju Brunostar <tanjubrunostar0@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Outreachy first patch wiki modification proposal
Message-ID: <Y1wiBgPE7sFSVQTG@aschofie-mobl2>
References: <CAHJEyKWCVPLYvGB=oeDoZWz+uaBMrn2JhGgjN6pvdhjggOmAiA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHJEyKWCVPLYvGB=oeDoZWz+uaBMrn2JhGgjN6pvdhjggOmAiA@mail.gmail.com>

On Fri, Oct 28, 2022 at 07:23:47PM +0100, Tanju Brunostar wrote:
> After setting up my mutt with Gmail, I tested it by sending an email
> but it did not go through. After some research, I realized that Gmail
> no longer allows less secure apps. The way around this is to set up
> two step verification, then generate and use "App password". I would
> like to add this to the wiki, as this will save others from the
> additional work. Please let me know if I can proceed.

Helpful tips are always appreciated.
Please post the actual edit here for review.

Alison

> 
> Thanks,
> 
> Tanju
> 
