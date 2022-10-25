Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B646FCD
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 20:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666729629; bh=PUnhV6HSIhR1Wk/tYbFDMcW08+IaO39ktOdymQIBIsg=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=KW3581a6MrxDk44VtuFgEShUZe9hGG4E8MYV86JB3bLm+VbrhOIE2KTWLNBy3sWJM
	 No/4RP/lNBtVccX+xM54RGV/6NhusFqlexU2Ya3PjhOfVj5GXYoHoNgKtTW9TqdULY
	 blj2STYUtM/2kggk1cvoqG5lGXEbFTFsJ/PkXMSg=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
	via [213.182.55.206]
	Tue, 25 Oct 2022 22:27:09 +0200 (CEST)
X-EA-Auth: KnvV+pLF0bPnLacFvY3z2jtHGhPY4tbP7rnUEY3/cvSDYM+jnFt6HJd4vPJYe7tD8cnUdoiupRMC8j0YywvRq+OaCSoluUB0
Date: Wed, 26 Oct 2022 01:57:12 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y1hGoGm4XjuEo1BT@debian-BULLSEYE-live-builder-AMD64>
References: <Y1XvjytS2GaafmyJ@aschofie-mobl2>
 <Y1N/wsr+Wd6sEaDf@debian-BULLSEYE-live-builder-AMD64>
 <Y1b/zhLlbI/NmdFR@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1b/zhLlbI/NmdFR@aschofie-mobl2>

On Mon, Oct 24, 2022 at 02:12:46PM -0700, Alison Schofield wrote:
> On Sat, Oct 22, 2022 at 10:59:38AM +0530, Deepak R Varma wrote:
> > On Sun, Oct 23, 2022 at 06:51:11PM -0700, Alison Schofield wrote:
> > > Greg KH has mentioned this a couple of times lately -
> > >
> > > >> Any reason you do not have "staging: vt6655:" as the prefix for
> > > >> this 0/X email subject line?
> > > >>
> > > >> thanks,
> > > >>
> > > >> greg k-h
> > >
> > > A quick peek in the tutorial tells me it could be made clearer.
> > > It needs to explicitly say the prefix is required, and then
> > > make sure any examples do it.
> >
> > Hello Alison,
> > There already is a section named "Patch Subject formatting" on this link [1]
> > with enough description to determine the patch subject prefix. Can you please
> > review and confirm where we should improve further to make it clearer??
> >
> > 	[1] https://kernelnewbies.org/PatchPhilosophy
> >
> > Thank you,
> > ./drv
>
>
> In https://kernelnewbies.org/Outreachyfirstpatch
>
> The example cover letter in 'Submitting a Patchset' has the
> subject "[RFC 0/7] Update REPORTING-BUGS", with no subsys.
> It is also confusing because the cover letter is an RFC and
> the patches are a mix of RFC and PATCH. Very atypical.
>
> Let's replace this example with one that was actually submitted
> and accepted by an Outreachy Intern.  No slight intended to the
> existing set as it contains an interesting set of changes. However,
> an example for newbies might better come from newbies.
>
> How about a patchset off this list?
>
> Would you mind using this one of yours:
> [PATCH v4 00/11] staging: r8188eu: trivial code cleanup patches
> but trim it to 3-4 patches plus the cover.
>
> It's not a trivial edit, because you need to replace all the
> example steps with the new patchset content.

Sounds good. I will work on it and share my proposed changes for your review.

./drv

>
> Thanks,
> Alison
>
> >
> > >
> > > Thanks,
> > > Alison
> > >
> >
> >


