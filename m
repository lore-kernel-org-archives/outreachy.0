Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1FE17C2
	for <outreachy@lists.linux.dev>; Wed,  9 Nov 2022 01:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667955943; x=1699491943;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8IYi8lHFtb0zJVUI+/jqxNYvjPoEIA0kHvKwtlkIXH8=;
  b=R3XyMq1WpBb43wkcYiHsj9BUGyTv/csMIUgKzGg/2RNZCrJQmZ1fDozw
   A0lOus0l8L24WDYh0UWIkedNrmhGvsJi84/dfUAIdCYoptfr6Z6q9e+2h
   YNWROYc7/l5Nlh3R70ISXpx4xCGMqECtQDXXozmKCigfThXXv6Dv8kcbr
   z5yAkzZdjxlrFiI7/w1eZxAHKZbRF+B6qxSzmFoGr9LI7Ick1yc6Vf1NH
   Y88wk6aaklDB6MoY5+Cy6+Wq5rgZyc46XgRLrWO8z9gqNvm7ZqjFfv0iK
   8BwpgvveK4B9M3MMnCLwHemmI/tsDtam6iyNVq5ybfxQWohqQtMuykiRs
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="308473503"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; 
   d="scan'208";a="308473503"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 17:05:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="587581283"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; 
   d="scan'208";a="587581283"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.11.119])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 17:05:42 -0800
Date: Tue, 8 Nov 2022 17:05:40 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] How to update the First Patch Tutorial
Message-ID: <Y2r85DJfNMshwg1R@aschofie-mobl2>
References: <Y07K+awYX+9wLq9q@aschofie-mobl2>
 <Y2YAMRWzu1CRGe7a@qemulion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2YAMRWzu1CRGe7a@qemulion>

On Sat, Nov 05, 2022 at 11:48:25AM +0530, Deepak R Varma wrote:
> On Tue, Oct 18, 2022 at 08:49:13AM -0700, Alison Schofield wrote:
> >
> > We encourage updates to the First Patch Tutorial.
> >
> > If you update the doc, please post a message to the Outreachy
> > mailing list showing the update you made. If you want your
> > potential update reviewed first, ask on this list too.
> >
> > I am a 'watcher' of the page, so I will be notified and
> > review the edits to the tutorial automatically.
> >
> > The directions for contributing to the First Patch Tutorial,
> > is a bit buried in the wiki, so I'll point it out here:
> >
> > See section: Tips for Applying to be an Outreachy Kernel intern
> > "Bonus points if you make a kernelnewbies account and correct or add
> > knowledge to this wiki. To edit the wiki, create an account, and then
> > send an email to the outreachy@lists.linux.dev with the subject
> > "[KERNEL NEWBIES ACCESS] username", where username is your kernel
> > newbies username."
> >
> > One update I would suggest is creating a sub-section about updating
> > the wiki - to make it more obvious.
> 
> Hello Alison,
> Can I add this "Updating Newbies Wiki" suggested section to the wiki pagexi
> now? If yes, who should I share my updates with?
> 
> Thank you,
> ./drv

Hi Deeva,
If you haven't already done so, go ahead and update the Wiki directly.
I will look for and review the changes in the wiki.

If you think of other changes going forward, make them and send me
an email reminder to look.

That goes for anyone updating the wiki with learnings from this round.

Thanks,
Alison


> 
> >
> > Thanks,
> > Alison
> >
> 
> 
