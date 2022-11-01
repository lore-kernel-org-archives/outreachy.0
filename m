Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E80365
	for <outreachy@lists.linux.dev>; Tue,  1 Nov 2022 05:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667278916; bh=h2X6BRGN5D0+POoXU5iuO6BluGgcEioqK9Z0vlduEg4=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=iAi8Dqzn7Z4AD4uaFaD0VPMKvOoW/FYERqWnIZF/qyH/NY+a64ecSkhxyB42aK5fg
	 asUneG5kuPerVRzxWWyzirDb5ESnpVWtuu7nDQPovtvyb1lGyG3Zq7ypnPg6Lqc00q
	 MqxCbCrEUNlAB9YptKHxpYb+uedhfFGWeuVLEojw=
Received: by b-3.in.mailobj.net [192.168.90.13] with ESMTP
	via [213.182.55.206]
	Tue,  1 Nov 2022 06:01:56 +0100 (CET)
X-EA-Auth: cnsAVrpvPRPz+iHMiHoJaKRlRP0eiiUNKTv37ly3ZDVUmbJSJT7xmwReK/K5HmE33+zbQSkzOBnVCKUXVFce6BZlEJCQAQMX
Date: Tue, 1 Nov 2022 10:31:53 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Julia Lawall <julia.lawall@inria.fr>,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y2CoQbzfPLInvqQC@ubunlion>
References: <Y1N/wsr+Wd6sEaDf@debian-BULLSEYE-live-builder-AMD64>
 <Y1b/zhLlbI/NmdFR@aschofie-mobl2>
 <Y1hjnQE8pF2rwPHV@debian-BULLSEYE-live-builder-AMD64>
 <Y1sAz3YdtAK+88VS@ubunlion>
 <Y1s/b8LMPP6qL4Zj@aschofie-mobl2>
 <Y1wmm+FmD+cn6BPe@ubunlion>
 <Y1w8aWlfpJx3fI4m@aschofie-mobl2>
 <Y2A6/fuXwSAZtKkx@ubunlion>
 <alpine.DEB.2.22.394.2210312224230.3960@hadrien>
 <Y2B4y2mJiOgGU81t@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2B4y2mJiOgGU81t@aschofie-mobl2>

On Mon, Oct 31, 2022 at 06:39:23PM -0700, Alison Schofield wrote:
> On Mon, Oct 31, 2022 at 10:33:10PM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 1 Nov 2022, Deepak R Varma wrote:
> >
> > > On Fri, Oct 28, 2022 at 01:32:41PM -0700, Alison Schofield wrote:
> > > > On Sat, Oct 29, 2022 at 12:29:39AM +0530, Deepak R Varma wrote:
> > >
> > > Hello Alison,
> > > I have attempted to introduce a new section and supporting information to
> > > accomplish guidelines on following driver style for patch work. Could you please
> > > and suggest if any edits are required.
> > >
> > > New section: "Following the Driver commit style"
> >
> > reduces confusion/errors and easy on eyes. ->
> > reduces confusion/errors and is easy on eyes.
> >
> > Use `git log <<file.c>>` command to review ->
> > Use the `git log <<file.c>>` command to review
> >
> > patch log message -> the patch log message
> >
> > Later in the same sentence, I odn't know what you ean by credentials.
> >
> > Additionally, following git command provides ->
> > Additionally, the following git command provides
> >
> > The output for:
> >
> > git log --pretty=oneline --abbrev-commit
> >
> > looks the same as
> >
> > git log --oneline
> >
> > The latter should already be suggested somewhere in the documentation.
> > Maybe this place is better, and it should be removed from wher it was
> > before?
> >
> > "Since this is one of the most frequently used git commands, you should
> > add this command to your shell profile using the following bashrc alias:"
> > "you should" seems excessive.  git log --oneline is pretty easy to type
> > already.
>
> Deeva,
> I picked this up "git log --pretty=oneline --abbrev-commit" from
> Outreachy in 2016 and have been using it as my 'gitpretty' ever
> since :)
>
> You'll find it in the section 'Exploring the kernel tree'.
> Change that to be the simpler "git log --oneline"
>
> That's why we need fresh eyes to update the tutorial!!!
>
> >
> > Use consistent patch prefix as available from the history ->
> > Use a consistent patch prefix as available from the history
> >
>
> I may have missed this...
>
> Use git log --oneline, in an 80 column view, to confirm the commit message
> does not wrap the line.
>
> > small case -> lower case
> >
> > capitalized case -> upper case
> >
> > Put best effort to keep -> Try to keep
> >
> > The example of inconsistent commits is clearly not great, but one can end
> > up with inconsistent commits when some patches cover only one file and
> > some patches cover multiple files.
> >
> > julia

Thank you very much Julia and Alison for the review and feedback. I have updated
the page accordingly and can be reviewed. Let me know if you have any further
comments.

> >
>


