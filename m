Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D06C97D
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 16:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679416106; x=1710952106;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Hr322DxSeC3lPm1zZU/EnPvzCUYoZyrRiYM+rG/RZBA=;
  b=ggv7B6L9IdRy41GBxYHgc6xl7tEDlPYUS9hejNOukW7uRX6Yy6pdWkGD
   AZ5YPSmg923tNOkCMT0M98hkSBEn9BF3stQRraa32xKenFN6FC4rRAOue
   qX4lxWfiZTOvNexJo7m2S7taDvcuXiYk+z6pCamV9qVn5Jf9I7dJGc8lM
   ce2YvoO0NyNeOKtcbMFt757aWTAwklT5f4l3DpIQgYwOT9tD2QWIco/ex
   O3l+dTOEkqSqTlAQOZYNmnbQKjq42dqbDPJzgiQgOTQsnV+gTpIl+NU4a
   RjIRUf95zF0eQyGwaQZzCQuTZdhpUUTsTP+Z5fJAWjcPqqIEhAHOGiSdg
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="425275003"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; 
   d="scan'208";a="425275003"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2023 09:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="711855647"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; 
   d="scan'208";a="711855647"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.21.85])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2023 09:28:25 -0700
Date: Tue, 21 Mar 2023 09:28:23 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Bru Moreira-Guedes <codeagain@codeagain.dev>
Cc: Kloudifold <cloudifold.3125@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Questions on legal name/pseudyonym
Message-ID: <ZBnbJ+bj0vZbNTFu@aschofie-mobl2>
References: <ZAmUcfHfMUqxu67D@CloudiRingWorld>
 <ZAoMxSPKNLoLg7Wl@aschofie-mobl2>
 <20230321142919.igug3wlouaxuwrwv@guidai>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230321142919.igug3wlouaxuwrwv@guidai>

On Tue, Mar 21, 2023 at 11:29:19AM -0300, Bru Moreira-Guedes wrote:
> Hello Alison,
> 
> I'm glad I caught this discussion.
> 
> On Thu, Mar 09, 2023 at 08:43:49AM -0800, Alison Schofield wrote:
> > On Thu, Mar 09, 2023 at 04:10:25PM +0800, Kloudifold wrote:
> > > My legal name may change in the next few years, and the Outreachy Community Member Information page said
> > > "You may use a pseudonym or abbreviate your given or family names if you have concerns about privacy.",
> > > so I use "Kloudifold" as my Outreachy name and intend to use it as signed-off name when making kernel contributions.
> > > 
> > > I would now like to ask if my contribution will be considered by Outreachy if I use a pseudonym?
> > > If not, I will use my legal name instead.
> > > If it is OK, I intend to keep contributing under the name "Kloudifold".
> > 
> > Hi Kloudifold,
> > 
> > I'm glad this came up because I needed to learn the latest on this
> > topic. My prior knowledge was 'no pseudonyms', but I see the kernel
> > has recently changed that:
> > 
> > d4563201f33a0 Documentation/process/submitting-patches.rst (Linus Torvalds        2023-02-26 11:25:04 -0800 410) using a known identity (sorry, no anonymous contributions.)
> > 
> > diff --git a/Documentation/process/submitting-patches.rst b/Documentation/process/submitting-patches.rst
> > index 7dc94555417d..fab44ae732e3 100644
> > --- a/Documentation/process/submitting-patches.rst
> > +++ b/Documentation/process/submitting-patches.rst
> > @@ -407,7 +407,7 @@ then you just add a line saying::
> > 
> >         Signed-off-by: Random J Developer <random@developer.example.org>
> > 
> > -using your real name (sorry, no pseudonyms or anonymous contributions.)
> > +using a known identity (sorry, no anonymous contributions.)
> >  This will be done for you automatically if you use ``git commit -s``.
> >  Reverts should also include "Signed-off-by". ``git revert -s`` does that
> >  for you.
> 
> Do you think it could also be applied to social names? I'm not sure this
> is a known term in english-speaking culture, but in my country a social
> name is a name differing from the legal one to which trans people (like
> me) are entitled to be referred to. At least for public and some private
> services.
> 
> I have recently decided to use 'Bru' rather than my gender-marked legal
> name 'Bruno', and I am in doubt on whether this fits into the concept of
> 'known identity' (since, well, this had been a very recent change and
> it's not exactly 'known').
> 
> I have been thinking about that a couple of weeks ago.

Hi Bru,

You can read the full text of the DCO guideline and the kernel patch:

https://github.com/cncf/foundation/blob/659fd32c86dc/dco-guidelines.md

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d4563201f33a022fc0353033d9dfeb1606a88330

It sounds like your name change situation is within the guidelines.
(But I'm not a lawyer and I don't play one on TV ;))

Alison

> 
> Best,
> Bru Moreira-Guedes
> Autistic & Proud
> They/them


