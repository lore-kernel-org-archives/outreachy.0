Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8EB10E8
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 20:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666816570; x=1698352570;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eQrjqEx/oPwAdCeN31KSFzIXlwubvMKwgC3x/4pssts=;
  b=F+qEKTCXgLI/ukonHiJFDHz2x34nR3PFxdoWw10iLuCjBTdvIB7xkqGT
   LQMNuRciOFrPRzrDkxEW9qPDn+GAMmhc4rOiwDRceZDLg+3YxrDrE+HmF
   9HGfQsb3XI3g4SGsbPuku98Z5ScpCDBfvH53J0HWvck29iUq7YNObO1RI
   c9REYGkU6GeJOSGzDAMdhwd3hyMD16pmlYIn1N6VXhk0+w4kSqqA6mnpb
   QGCXqy6FaZpo/mBui7D89UnVJi9Fnaf5y+eMHXsvuckMB35X+BRA1bxQU
   s7l3ik5kQSJAdqii3MeVgje5XmqjYI0su+L2aSfRhVyG23CmHyEfEEuNf
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="370121106"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
   d="scan'208";a="370121106"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2022 13:36:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="757452821"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
   d="scan'208";a="757452821"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.1.141])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2022 13:36:10 -0700
Date: Wed, 26 Oct 2022 13:36:08 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Emily Peri <eperi1024@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Coccicheck in drivers/staging/
Message-ID: <Y1maOFE9/JKmRyJo@aschofie-mobl2>
References: <Y1l+28m+o5IQxT/Q@aschofie-mobl2>
 <Y1mMSAT96WFdPTN2@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1mMSAT96WFdPTN2@marshmallow>

On Wed, Oct 26, 2022 at 12:36:40PM -0700, Emily Peri wrote:
> On Wed, Oct 26, 2022 at 11:39:23AM -0700, Alison Schofield wrote:
> > I took a peek at drivers/staging to see what you all may discover
> > when running Coccicheck.
> > 
> > I simply used the Fedora pkg mgr.
> > $ sudo dnf install coccinelle
> > (That got me coccinelle 1.1.1-5.fc36)
> > 
> > $ sudo dnf builddep coccinelle
> > 
> > From root of my kernel tree:
> > $  make coccicheck M=drivers/staging/ | grep -i warning
> > 
> > That showed many places to drill down further and cleanup.
> > 
> 
> Thank you for explaining this! 
> 
> Since we are getting close to the Outreachy application deadline and
> several of us have completed the First Patch Tutorial, is there any more
> description of what an internship with this project will look like? Have
> interns worked on coccinelle in the past, and what kind of impact did
> they have?

Coccinelle, and improving Coccinelle itself, has been the topic
of many past internships. Julia Lawall, who has been commenting
on you patches is the creator of Coccinelle has mentored interns
in developing new support in the Coccinelle tool - for the
Linux Kernel.

The project this round is labelled as 'Coccinelle cleanups in
the Linux Kernel' Of course, the selected intern(s) may take
it further than that and improve Coccinelle itself. Ones you
get into it, you follow the work!

I'll let this round Coccinelle mentors, Saurabh and Praveen,
fill in more about there plans

> 
> Two areas that I think could use updates are the website and
> documentation. If this is a project that will take on future Outreachy
> applicants, I think it would be very useful to create coccinelle
> instructions/tutorial for Outreachy. Are these ideas within the scope of
> the internship?

Improving the documentation along the way is always welcome. 

> Thanks so much for making this internship possible in the first, I
> understand its a lot effort on top of everything else that you do!
> 
> Emily
> 
> > 
> > 
> > 
> > 
