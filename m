Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D20B7B
	for <outreachy@lists.linux.dev>; Thu, 27 Oct 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666908370; bh=c8QaiV75pMR3vYy4gE46oMmf9t0T4b4SD19bmLy0GIk=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=UDQCFtCD2uJCJ3qTDfrZhWM3xsYadqKiMskHz+asqGkaNj8gjlTK/yueqtA1UhxUC
	 noKf2rqHHIEYERKN3x0kXjTTqklxkLe6vf42GZqrYSHzEqjjViD/iCEFD77UUXkDUd
	 noGr2NlT4Tk2dpC3XiUP2rC2UeMrvBAVdlE/PjfM=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Fri, 28 Oct 2022 00:06:10 +0200 (CEST)
X-EA-Auth: LSwCIH8WYYhpZxsjxtVjkCMWONbSKC5ISLudmAjz4aplEWjiFmCnzGgnHutTODf+Vcw3leWfc3HCnYLQxg4a3QrvaWT8PBE2
Date: Fri, 28 Oct 2022 03:36:07 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y1sAz3YdtAK+88VS@ubunlion>
References: <Y1XvjytS2GaafmyJ@aschofie-mobl2>
 <Y1N/wsr+Wd6sEaDf@debian-BULLSEYE-live-builder-AMD64>
 <Y1b/zhLlbI/NmdFR@aschofie-mobl2>
 <Y1hjnQE8pF2rwPHV@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1hjnQE8pF2rwPHV@debian-BULLSEYE-live-builder-AMD64>

On Wed, Oct 26, 2022 at 04:00:58AM +0530, Deepak Varma wrote:
> On Mon, Oct 24, 2022 at 02:12:46PM -0700, Alison Schofield wrote:
> > On Sat, Oct 22, 2022 at 10:59:38AM +0530, Deepak R Varma wrote:
> > > On Sun, Oct 23, 2022 at 06:51:11PM -0700, Alison Schofield wrote:
> > > > Greg KH has mentioned this a couple of times lately -
> > > >
> > > > >> Any reason you do not have "staging: vt6655:" as the prefix for
> > > > >> this 0/X email subject line?
> > > > >>
> > > > >> thanks,
> > > > >>
> > > > >> greg k-h
> > > >
> > > > A quick peek in the tutorial tells me it could be made clearer.
> > > > It needs to explicitly say the prefix is required, and then
> > > > make sure any examples do it.
> > >
> > > Hello Alison,
> > > There already is a section named "Patch Subject formatting" on this link [1]
> > > with enough description to determine the patch subject prefix. Can you please
> > > review and confirm where we should improve further to make it clearer??
> > >
> > > 	[1] https://kernelnewbies.org/PatchPhilosophy
> > >
> > > Thank you,
> > > ./drv
> >
> >
> > In https://kernelnewbies.org/Outreachyfirstpatch
> >
> > The example cover letter in 'Submitting a Patchset' has the
> > subject "[RFC 0/7] Update REPORTING-BUGS", with no subsys.
> > It is also confusing because the cover letter is an RFC and
> > the patches are a mix of RFC and PATCH. Very atypical.
> >
> > Let's replace this example with one that was actually submitted
> > and accepted by an Outreachy Intern.  No slight intended to the
> > existing set as it contains an interesting set of changes. However,
> > an example for newbies might better come from newbies.
> >
> > How about a patchset off this list?
> >
> > Would you mind using this one of yours:
> > [PATCH v4 00/11] staging: r8188eu: trivial code cleanup patches
> > but trim it to 3-4 patches plus the cover.
> >
> > It's not a trivial edit, because you need to replace all the
> > example steps with the new patchset content.
>
> Hello Alison,
> I made the changes as suggested and saved those. Looks like they might have
> already gone to production. Sorry about that. I was thinking they will be
> submitted to a moderator for review before releasing,
>
> Could you please review and let me know if any edits are required.

Hello Alison,
Did you get a chance to review the edits I made? Please share your feedback so
that I can proceed with the next changes to the tutorial page.

Thank you,
./drv

>
> Thank you,
> ./drv
>
> >
> > Thanks,
> > Alison
> >
> > >
> > > >
> > > > Thanks,
> > > > Alison
> > > >
> > >
> > >


