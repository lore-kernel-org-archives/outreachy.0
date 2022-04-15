Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2787A
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 21:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650059499; x=1681595499;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3uhyHTO5ftv2odcfrEJy+EXLNUnTCOF2aLkJsZFazvY=;
  b=QKRikolcsyblEWXbgulutVOKJKDm+iaJ/hmosr0WsLbCWYwzxXJgMesv
   q5OFSNAtI6to/mdVBxQIDIcgC1DJjFb0TkpqMSY/jInuUUbVwwNikOcGf
   P6DVhmK48258SOoqK/RTFtRwxIrH1I/X3K3l6qcHlMAkzDnR8udAh/a1T
   vPp4e/xuGr8B+6UajwJxCGdny5EIgjjQaOXpqWz84oW8/AXygF+KhFfCl
   rv6JRTeYyyvE79FPIZ4QtPcSRQ3m+DJ+JtWLOzAONpnJUkr/KesLSwIjQ
   V1QxWpDLzCk6aiR4KkMzRgcIYz+4P1tuFBmhNetsE0N47gejqBr+r0UV+
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="260831416"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; 
   d="scan'208";a="260831416"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2022 14:51:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; 
   d="scan'208";a="574548299"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2022 14:51:38 -0700
Date: Fri, 15 Apr 2022 14:53:28 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>,
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: [PATCH v2] mbuto: support building a minimal image for kernel
 selftests
Message-ID: <20220415215328.GA1252509@alison-desk>
References: <20220414230923.GA594872@euclid>
 <20220415171019.091e123c@elisabeth>
 <20220415170543.GA1251615@alison-desk>
 <20220415202405.53ffd848@elisabeth>
 <20220415192339.GA1252106@alison-desk>
 <20220415231853.6da3e7ad@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220415231853.6da3e7ad@elisabeth>

On Fri, Apr 15, 2022 at 02:18:53PM -0700, Stefano Brivio wrote:
> On Fri, 15 Apr 2022 12:23:39 -0700
> Alison Schofield <alison.schofield@intel.com> wrote:
> 
> > On Fri, Apr 15, 2022 at 11:24:05AM -0700, Stefano Brivio wrote:
> > > On Fri, 15 Apr 2022 10:05:43 -0700
> > > Alison Schofield <alison.schofield@intel.com> wrote:
> > >   
> > > > On Fri, Apr 15, 2022 at 05:10:19PM +0200, Stefano Brivio wrote:  
> > > > > This is really valuable work, thank you. I took the liberty of fixing
> > > > > up a few things, listed below, and pushed:    
> > > > 
> > > > What repository is this in?  
> > > 
> > > https://mbuto.sh/mbuto -- we're tracking project-specific tasks at
> > > https://board.net/p/Outreachy2022KernelNetworking and this is task #7 there.
> > > 
> > > Documentation is still a bit lacking (I'm working on it on and off), I
> > > hope it can become finally usable for other applicants (to run
> > > kselftests without semi-complicated VM installs) in a couple of days.  
> > 
> > I see, thanks!
> > 
> > So do you think "Minimal Builder Using Terse Options" will someday land
> > in the kernels scripts/ directory?
> 
> That might be an attempt/possibility, yes, but not necessarily: it has
> other use cases as well. I actually started it for a completely
> different reason, and right now the only automated user it has is yet
> another thing (tests for https://passt.top).
> 
> > Wondering why this isn't in a github repository? I think you (Stefano)
> > told me something previously about access issues that some folks have with
> > github.
> 
> First off, opinions expressed here are solely my own and do not express
> the views or opinions of my employer. :)
> 
> Three categories of reasons:
> 
> 1. GitHub is subject to US trade control laws (EAR), and access is
>    currently excluded for at least developers residing in Cuba and Syria
>    -- it looks like it's working fine for Iran-based developers, and I
>    understand there's the will from GitHub to find workarounds for
>    others:
> 	https://twitter.com/github/status/1346626296219099136?lang=en
> 
>    ...but I would still define the current situation somewhat exclusive
>    (and only partially under control of GitHub, of course).
> 
> 2. I don't like using proprietary software (especially since a. I'm
>    volunteering and b. Outreachy is involved)
> 
> 3. technical reasons: I think an email-based workflow has many
>    advantages over "trendy" things, and for example contributing to
>    mbuto can be "used" to get more familiar with the kernel changes
>    workflow as well, as it's essentially the same.
> 
>    There are also some tricks I couldn't do on GitHub, for example
>    arbitrary HTML/JavaScript in web pages:
> 	https://mbuto.sh/mbuto/tree/README.md
> 
>    ...and actually I have a ton of them, but I don't want to make this
>    email overly long. :)
> 
> > Thanks for helping me understand!
> 
> You're welcome! Out of personal curiosity, and I'm mostly interested in
> an instinctive/first-thought answer here: why did you expect it to be on
> GitHub?

I'm in U.S. and in my circles, github is the defacto location for
sharing code. 

> 
> -- 
> Stefano
> 
