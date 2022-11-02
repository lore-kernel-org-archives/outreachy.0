Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23512633
	for <outreachy@lists.linux.dev>; Wed,  2 Nov 2022 03:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667360156; x=1698896156;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=EdOwVtrpLuN0ouey1gbyLUcm464RJXeiDL5Or6fg658=;
  b=RYyu/xo/Ybs8pIdILV3eP2PpiAksTLvQv1UpbBFnQA7cRrgP9W6L3zK+
   BI8Skw5r1DleFUwbqcf/QhzRIJEd9EfNw5ZW9LpSe9VUfmvH92Mhk27nX
   /PybXf+Tnos9U9+NrShhNr/suWF8oxTa5vbHrR5/tRUrKZWaDYxS7gQHb
   TdJ23GF13q+/DEppmiYEwylipthHwH+IOP1b42mi5n7o06SsZOUaWh/pg
   Ggbckz94ce6IoJ3O/LDcTCt6iTskOcBJptQ/368WYI13mxG0uK7xVQyUO
   iNYBvvwnkhSqdKISK2TiQQN4IVde1ThxEKcowm6Mx6wOW+7hmxCvaEBCd
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="373526958"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; 
   d="scan'208";a="373526958"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2022 20:35:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="667427972"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; 
   d="scan'208";a="667427972"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.175.199])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2022 20:35:55 -0700
Date: Tue, 1 Nov 2022 20:35:53 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Julia Lawall <julia.lawall@inria.fr>,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y2HlmavT2f+My1bd@aschofie-mobl2>
References: <Y1b/zhLlbI/NmdFR@aschofie-mobl2>
 <Y1hjnQE8pF2rwPHV@debian-BULLSEYE-live-builder-AMD64>
 <Y1sAz3YdtAK+88VS@ubunlion>
 <Y1s/b8LMPP6qL4Zj@aschofie-mobl2>
 <Y1wmm+FmD+cn6BPe@ubunlion>
 <Y1w8aWlfpJx3fI4m@aschofie-mobl2>
 <Y2A6/fuXwSAZtKkx@ubunlion>
 <alpine.DEB.2.22.394.2210312224230.3960@hadrien>
 <Y2B4y2mJiOgGU81t@aschofie-mobl2>
 <Y2CoQbzfPLInvqQC@ubunlion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2CoQbzfPLInvqQC@ubunlion>

On Tue, Nov 01, 2022 at 10:31:53AM +0530, Deepak R Varma wrote:
> On Mon, Oct 31, 2022 at 06:39:23PM -0700, Alison Schofield wrote:
> > On Mon, Oct 31, 2022 at 10:33:10PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Tue, 1 Nov 2022, Deepak R Varma wrote:
> > >
> > > > On Fri, Oct 28, 2022 at 01:32:41PM -0700, Alison Schofield wrote:
> > > > > On Sat, Oct 29, 2022 at 12:29:39AM +0530, Deepak R Varma wrote:
> > > >
> > > > Hello Alison,
> > > > I have attempted to introduce a new section and supporting information to
> > > > accomplish guidelines on following driver style for patch work. Could you please
> > > > and suggest if any edits are required.
> > > >
> > > > New section: "Following the Driver commit style"
> > >
> > > reduces confusion/errors and easy on eyes. ->
> > > reduces confusion/errors and is easy on eyes.
> > >
> > > Use `git log <<file.c>>` command to review ->
> > > Use the `git log <<file.c>>` command to review
> > >
> > > patch log message -> the patch log message
> > >
> > > Later in the same sentence, I odn't know what you ean by credentials.
> > >
> > > Additionally, following git command provides ->
> > > Additionally, the following git command provides
> > >
> > > The output for:
> > >
> > > git log --pretty=oneline --abbrev-commit
> > >
> > > looks the same as
> > >
> > > git log --oneline
> > >
> > > The latter should already be suggested somewhere in the documentation.
> > > Maybe this place is better, and it should be removed from wher it was
> > > before?
> > >
> > > "Since this is one of the most frequently used git commands, you should
> > > add this command to your shell profile using the following bashrc alias:"
> > > "you should" seems excessive.  git log --oneline is pretty easy to type
> > > already.
> >
> > Deeva,
> > I picked this up "git log --pretty=oneline --abbrev-commit" from
> > Outreachy in 2016 and have been using it as my 'gitpretty' ever
> > since :)
> >
> > You'll find it in the section 'Exploring the kernel tree'.
> > Change that to be the simpler "git log --oneline"
> >
> > That's why we need fresh eyes to update the tutorial!!!
> >
> > >
> > > Use consistent patch prefix as available from the history ->
> > > Use a consistent patch prefix as available from the history
> > >
> >
> > I may have missed this...
> >
> > Use git log --oneline, in an 80 column view, to confirm the commit message
> > does not wrap the line.
> >
> > > small case -> lower case
> > >
> > > capitalized case -> upper case
> > >
> > > Put best effort to keep -> Try to keep
> > >
> > > The example of inconsistent commits is clearly not great, but one can end
> > > up with inconsistent commits when some patches cover only one file and
> > > some patches cover multiple files.
> > >
> > > julia
> 
> Thank you very much Julia and Alison for the review and feedback. I have updated
> the page accordingly and can be reviewed. Let me know if you have any further
> comments.

Thanks Deeva! I looked it over and it looks very thorough and useful.
Alison

> 
> > >
> >
> 
> 
> 
