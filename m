Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5598C5CA3
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 17:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666288791; x=1697824791;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xuwtOoYK8oyk14tzbl4ckLCF816pnhYfmvx58vVdjT0=;
  b=c5bxv+wDwh0pX6ExQ7eiyhQIjysvHv0MykBnrxBcCIblQGyVbVNJRtQr
   wAuH51znB9LLfZleFg/C8/+qyVQ/xV8pgGJ/S3qH7nHcLLfZXTWkAiAqa
   6MmXODCcQnnLhrx0wgGcxP3cZxzf62RObNLq9NkzMwFGsLp5J8S9CgLzO
   LvTHF4sCEbfuQgVOeDxZSHEpYM7P8TKrOQLlyI+NsWji3VcTFWNMRJmnd
   DUnrhePVSu9p2qhC5TP+ffJATfxKi1W78amsXb+jnVrJc+ebTtiwMsFda
   K+mBT5IOhhY9QDGj99dSI38H9o91nWrzAUz0sm/EZGI6DvOo3qC71/beG
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="368840115"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="368840115"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 10:59:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="693149291"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="693149291"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.41.40])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 10:59:49 -0700
Date: Thu, 20 Oct 2022 10:59:47 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Patch set versioning
Message-ID: <Y1GMk3HQ1z4g8JFl@aschofie-mobl2>
References: <Y07iMwCa9zHCcs1J@debian-BULLSEYE-live-builder-AMD64>
 <Y07ujhlBBVM6Yd+t@aschofie-mobl2>
 <Y075EMTWW/4Km7NE@debian-BULLSEYE-live-builder-AMD64>
 <Y1AN9LugEoaqMPov@debian-BULLSEYE-live-builder-AMD64>
 <Y1Da9qJBOsLeCcZ6@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1Da9qJBOsLeCcZ6@debian-BULLSEYE-live-builder-AMD64>

On Thu, Oct 20, 2022 at 10:51:58AM +0530, Deepak R Varma wrote:
> On Wed, Oct 19, 2022 at 08:17:16PM +0530, Deepak R Varma wrote:
> > On Wed, Oct 19, 2022 at 12:35:52AM +0530, Deepak R Varma wrote:
> > > On Tue, Oct 18, 2022 at 11:21:02AM -0700, Alison Schofield wrote:
> > > > On Tue, Oct 18, 2022 at 10:58:19PM +0530, Deepak R Varma wrote:
> > > > > Hello,
> > > > > If I have a patch set with 5 patches included and only one of the patch needs to
> > > > > undergo revision. In this situation, when I resubmit the patch set, do I mark
> > > > > all patches as v2 along with the cover letter or should I just raise the
> > > > > individual patch version and resubmit the patch set with all patches included?
> > > >
> > > > All patches in the set get the udpated version number, even if they
> > > > have not changed individually. That is practice across the kernel community.
> > > >
> > > > How it is noted in the changelog, may have varying styles.
> > > > I typically state what is unchanged to save my reviewers time.
> > > > Something like:
> > > >
> > > > Changed v3 -> v4
> > > > - Replace blah with blah in Patch 1. (*name)
> > > > - Patches 2-4 are unchanged.
> > > >
> > > > I typically give name of reviewer who suggested rework if applicable.
> > > > It's partly giving 'credit', but it also makes it easier for
> > > > reviewers to jog their memory of what they asked for and should
> > > > look for in the new set.
> > >
> > > This is very helpful. Thank you so much Alison for the detailed reply.
> >
> > Another related query hence extending this thread.
> >
> > Is it okay to include additional patches in an already submitted patch set's new
> > version? Some of these patches are based on the feedback received on the current
> > patch set and few patches are continued code clean up work while waiting for the
> > patch set review/feedback.
> 
> I just read feedback from Greg KH in another thread and deriving "yes" to be the
> answer to my query above. Please do let me know if there are any further
> comments for me.
> 
> Thank you,
> ./drv

Hi Deepak,
Sorry about the late reply and I think you've gone down the big patchset 
route. This is the time to explore such things and what you have done is
fine. I'm sure everyone does a large patch set that they later wish 
they had split, and vica-versa.

The mess on these cleanup patches can come when GregKH takes a couple
from the set, but not all. Then you repost the set, minus the patches
he took, keep the same patch set title, and note in the changelog, 
something like ' 2 patches were merged, so now this is only 8'.
I don't know if this is going to happen to you, but it's going to
happen somewhere on this list, this round.

Good luck w your 10 patch set,
Alison

> 
> >
> > Thank you,
> > ./drv
> >
> >
> > >
> > > >
> > > > >
> > > > > Thank you,
> > > > > ./drv
> > > > >
> > > > >
> > > > >
> > >
> > >
> > >
> >
> >
> >
> 
> 
