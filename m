Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEC21229F
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 20:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666989164; x=1698525164;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4nvBO9idJcDndSxoejssp5vSKpAPQCFniXU+Re++fbQ=;
  b=Q6o/lubpMXS4qHBrZSfWc13+V0efI7iYjnYqHx5N334EPSWTxboZOzlU
   r/ZV+0YskVZ8b4NIKOitqc+5rCu0exGsDIbuw9GJ4NPaqYkxg6WD1gJai
   eUXh4kus/ClR7tvq6OMMVZP0aqPfl5DnH0ADjrHvz/ymlGFPWaNwa7oqa
   iTLKLZ0omQnLFZfUU6rfvr7okzu0PN6NehC+KTgH4CqSOI1I0K+rODM6Q
   kD/0r9TNB3Tw+MIp9cuiND3DeusoahJIzBrIGrjqeH8pnmcMdrNZiUUW4
   IhSyvXcRgAXV2FWkYUWQaiew/su2UWKNW6VqLuEhBu99igfB9Gaqjjtv+
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="310283143"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; 
   d="scan'208";a="310283143"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 13:32:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="584051574"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; 
   d="scan'208";a="584051574"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.175.207])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 13:32:43 -0700
Date: Fri, 28 Oct 2022 13:32:41 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y1w8aWlfpJx3fI4m@aschofie-mobl2>
References: <Y1XvjytS2GaafmyJ@aschofie-mobl2>
 <Y1N/wsr+Wd6sEaDf@debian-BULLSEYE-live-builder-AMD64>
 <Y1b/zhLlbI/NmdFR@aschofie-mobl2>
 <Y1hjnQE8pF2rwPHV@debian-BULLSEYE-live-builder-AMD64>
 <Y1sAz3YdtAK+88VS@ubunlion>
 <Y1s/b8LMPP6qL4Zj@aschofie-mobl2>
 <Y1wmm+FmD+cn6BPe@ubunlion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1wmm+FmD+cn6BPe@ubunlion>

On Sat, Oct 29, 2022 at 12:29:39AM +0530, Deepak R Varma wrote:
> On Thu, Oct 27, 2022 at 07:33:19PM -0700, Alison Schofield wrote:
> > On Fri, Oct 28, 2022 at 03:36:07AM +0530, Deepak R Varma wrote:
> > > On Wed, Oct 26, 2022 at 04:00:58AM +0530, Deepak Varma wrote:
> > > > On Mon, Oct 24, 2022 at 02:12:46PM -0700, Alison Schofield wrote:
> > > > > In https://kernelnewbies.org/Outreachyfirstpatch
> > > > >
> > > > > The example cover letter in 'Submitting a Patchset' has the
> > > > > subject "[RFC 0/7] Update REPORTING-BUGS", with no subsys.
> > > > > It is also confusing because the cover letter is an RFC and
> > > > > the patches are a mix of RFC and PATCH. Very atypical.
> > > > >
> > > > > Let's replace this example with one that was actually submitted
> > > > > and accepted by an Outreachy Intern.  No slight intended to the
> > > > > existing set as it contains an interesting set of changes. However,
> > > > > an example for newbies might better come from newbies.
> > > > >
> > > > > How about a patchset off this list?
> > > > >
> > > > > Would you mind using this one of yours:
> > > > > [PATCH v4 00/11] staging: r8188eu: trivial code cleanup patches
> > > > > but trim it to 3-4 patches plus the cover.
> > > > >
> > > > > It's not a trivial edit, because you need to replace all the
> > > > > example steps with the new patchset content.
> > > >
> > > > Hello Alison,
> > > > I made the changes as suggested and saved those. Looks like they might have
> > > > already gone to production. Sorry about that. I was thinking they will be
> > > > submitted to a moderator for review before releasing,
> > > >
> > > > Could you please review and let me know if any edits are required.
> > >
> > > Hello Alison,
> > > Did you get a chance to review the edits I made? Please share your feedback so
> > > that I can proceed with the next changes to the tutorial page.
> > >
> > > Thank you,
> > > ./drv
> >
> > Thanks for doing that! I see you were very thorough :)
> >
> > A couple of thoughts and then a long suggestion:
> >
> > - Can you trim it to a smaller patchset?
> > It's OK if you just edit it. It does not need to reflect reality.
> > The reason I ask is because a ten patch set is not the example we
> > want to set for newbies. It's the stretch goal, not the norm.
> 
> Agreed. I made the modifications and they are ready for your review.
Thanks
> >
> > - Your commit messages would be better if they were consistent,
> > either starting with upper or lower case, but not mixed.
> > Usually there is a pattern set in the files, but alas, when I
> > look at the pretty oneline of rtw_br_ext.c, there is no pattern.
> > (and it's messy)
> 
> My apologies for the mixed case commits. I will be careful with the styles going
> forward. Thank you for catching that.
> For the purpose of proposed edits, I have edited the example per your observations.
> 
Thanks
> >
> > Seque to another tutorial improvement - explaining the point
> > of pretty oneline, and examples would help.
> >
> > The point, is to make it easy on the eyes of the developer.
> > When developers scan through the history of work on a file,
> > it is easier to do when the appearance is consistent.
> >
> > It may not seem important to the task at hand for a newbie,
> > but the consistency pays off when you are staring at these
> > patches day in and day out.
> >
> > You'll want to alias it because you'll use it often:
> > alias gitpretty='git log --pretty=oneline --abbrev-commit'
> >
> > In 'Viewing your commit' it says 'You'll also want to make sure
> > your commit looks fine when you run these two commands:"
> >
> > Let's put some more detail around 'looks fine':
> > - prefix is correct
> > - line does not wrap on 80 Column screen
> > - styling matches other commits in that file with respect to use
> >   of punctuation, upper/lower case. Subsystems and files have
> >   different styles (see examples below). The point it to respect
> >   the style.
> >
> > This is fine:
> > drivers/staging/iio/adc$ gitpretty ad7816.c  (edited for fineness)
> >
> > f1b753a0f866 staging: iio: ad7816: Drop unnecessary initialization of variables
> > c24a4173f6bb staging: iio: ad7816: Add device tree table
> > 72e3a5248da9 staging: iio: ad7816: Set RD/WR pin and CONVST pin as outputs
> > 06c77f564ddb staging: iio: ad7816: Do not use busy_pin in case of AD7818
> > 073a391ca035 staging: iio: ad7816: Switch to the gpio descriptor interface
> >
> > This is *not* fine:
> > (line wrap, prefixes and upper/lower case are inconsistent
> > /staging/most/video$ gitpretty video.c  (trimmed to illustrate)
> >
> > d6ef48e59582 staging: most: video: Make use of the helper macro LIST_HEAD()
> > fa8db3989362 staging/most: Remove all strcpy() uses in favor of strscpy()
> > 6367dee9e3db staging: most: Switch from strlcpy to strscpy
> > b27652753918 staging: most: move core files out of the staging area
> > e653614ee183 media: staging/most: rename VFL_TYPE_GRABBER to _VIDEO
> > 08283d307444 staging: most: block module removal while having active configfs items
> > a20eefaee646 staging: most: Use DEFINE_SPINLOCK() instead of struct spinlock
> > 338d9637361c staging/most/video: set device_caps in struct video_device
> >
> > This info is not focused patchsets. Every patch that comes across this
> > list should make best effort to be 'gitpretty'.
> >
> > If you are out of time Deeva, perhaps percolate this up on the
> > list for someone else to pick up.
> 
> I get your point and can relate to your suggestion based on how often I need to
> use the pretty command. Following suggestion will definitely make things better
> visually for the developers.
> 
> I am thinking we should add a new sections, may be "Perform the gitpretty checks"
> somewhere before "submit patch" section and include the verbiage and examples
> (both the good and the bad example) for better understanding.
> Does that sound good to you?

Yes. Deserves it's only section!

We (esp me) in Outreachy are picky about this because newbies are
hopping all over staging, and by doing so, they are touching the code
of numerous subsystems, with different maintainers, and different
styles. We want to adhere to the style of the subsystem we are visiting.

Thanks!

> > ./drv > 
> >
> > Thanks,
> > Alison
> > >
> > > >
> > > > Thank you,
> > > > ./drv
> > > >
> > > > >
> > > > > Thanks,
> > > > > Alison
> > > > >
> > > > > >
> > > > > > >
> > > > > > > Thanks,
> > > > > > > Alison
> > > > > > >
> > > > > >
> > > > > >
> > >
> > >
> >
> 
> 
