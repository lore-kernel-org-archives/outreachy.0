Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EB117C2
	for <outreachy@lists.linux.dev>; Wed,  9 Nov 2022 04:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667966757; bh=DWAhaoeKZI6iDTQfNK6GqZ3SCu5sg3I6sdsYEFIz4QI=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=LcGLbB56kEgEAQ+NzEKjSnLZMOFJpBn/dBbxC22XGVX1ihGR5ko/9AVFvUHuc2K/H
	 Sjb3kh+YTgD06rAgEA14gX4am7kRp9cNLsZZG7SNI6vsz0cYSID6IfAGcY4kwhpDVW
	 tSQEDQyicyyGMnKuOgN0h1nnOJ3KlhnqKweGVNVQ=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
	via ip-206.mailobj.net [213.182.55.206]
	Wed,  9 Nov 2022 05:05:57 +0100 (CET)
X-EA-Auth: pwIHQchnN6pB4d/qVhpZGfH6mnKbsrV9FqpkqXgun+DyC3PrSUyWMZMiP9RNsv8XZT/qGRNW2oIy6y99Bij50KAJaT1t4HVb
Date: Wed, 9 Nov 2022 09:35:52 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] How to update the First Patch Tutorial
Message-ID: <Y2snIKWiYerNPLGf@qemulion>
References: <Y07K+awYX+9wLq9q@aschofie-mobl2>
 <Y2YAMRWzu1CRGe7a@qemulion>
 <Y2r85DJfNMshwg1R@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2r85DJfNMshwg1R@aschofie-mobl2>

On Tue, Nov 08, 2022 at 05:05:40PM -0800, Alison Schofield wrote:
> On Sat, Nov 05, 2022 at 11:48:25AM +0530, Deepak R Varma wrote:
> > On Tue, Oct 18, 2022 at 08:49:13AM -0700, Alison Schofield wrote:
> > >
> > > We encourage updates to the First Patch Tutorial.
> > >
> > > If you update the doc, please post a message to the Outreachy
> > > mailing list showing the update you made. If you want your
> > > potential update reviewed first, ask on this list too.
> > >
> > > I am a 'watcher' of the page, so I will be notified and
> > > review the edits to the tutorial automatically.
> > >
> > > The directions for contributing to the First Patch Tutorial,
> > > is a bit buried in the wiki, so I'll point it out here:
> > >
> > > See section: Tips for Applying to be an Outreachy Kernel intern
> > > "Bonus points if you make a kernelnewbies account and correct or add
> > > knowledge to this wiki. To edit the wiki, create an account, and then
> > > send an email to the outreachy@lists.linux.dev with the subject
> > > "[KERNEL NEWBIES ACCESS] username", where username is your kernel
> > > newbies username."
> > >
> > > One update I would suggest is creating a sub-section about updating
> > > the wiki - to make it more obvious.
> >
> > Hello Alison,
> > Can I add this "Updating Newbies Wiki" suggested section to the wiki pagexi
> > now? If yes, who should I share my updates with?
> >
> > Thank you,
> > ./drv
>
> Hi Deeva,
> If you haven't already done so, go ahead and update the Wiki directly.
> I will look for and review the changes in the wiki.

Okay. I will get to it once I finish working on a patch feedback from yesterday.

>
> If you think of other changes going forward, make them and send me
> an email reminder to look.

Sounds good. Will follow the instructions.

>
> That goes for anyone updating the wiki with learnings from this round.
>
> Thanks,
> Alison
>
>
> >
> > >
> > > Thanks,
> > > Alison
> > >
> >
> >


