Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A5A4C98
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 19:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666119956; bh=GiNGk/rf5+haD2xY++WGTvEb2SWxpV4yJKuJakkO/mU=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=F44c0esFliEr0KpX9fft4wgCg4I6zvzqTWUzrKCmIDPqIja/h4RdelzvSfp0Bt9PU
	 A1geKigN1bLSV4I6dcgF0O738mxmlsL+Hs4rLPQG0srO4DsGeFsyVYU/w1ixS+7Rrl
	 dFFXsFzz9fFNR9ekzYt1HblwRrIoqNHcoUPmWqrs=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via [213.182.55.206]
	Tue, 18 Oct 2022 21:05:56 +0200 (CEST)
X-EA-Auth: +lznUQx/tnmLYtw78ud6IZZxJBN31eagSxmgqfCKYfzyGV0n6+n8AyLIXPXab6Fv5DptxfAIuKP86Po8VLV17mIsVWegv38p
Date: Wed, 19 Oct 2022 00:35:52 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Patch set versioning
Message-ID: <Y075EMTWW/4Km7NE@debian-BULLSEYE-live-builder-AMD64>
References: <Y07iMwCa9zHCcs1J@debian-BULLSEYE-live-builder-AMD64>
 <Y07ujhlBBVM6Yd+t@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y07ujhlBBVM6Yd+t@aschofie-mobl2>

On Tue, Oct 18, 2022 at 11:21:02AM -0700, Alison Schofield wrote:
> On Tue, Oct 18, 2022 at 10:58:19PM +0530, Deepak R Varma wrote:
> > Hello,
> > If I have a patch set with 5 patches included and only one of the patch needs to
> > undergo revision. In this situation, when I resubmit the patch set, do I mark
> > all patches as v2 along with the cover letter or should I just raise the
> > individual patch version and resubmit the patch set with all patches included?
>
> All patches in the set get the udpated version number, even if they
> have not changed individually. That is practice across the kernel community.
>
> How it is noted in the changelog, may have varying styles.
> I typically state what is unchanged to save my reviewers time.
> Something like:
>
> Changed v3 -> v4
> - Replace blah with blah in Patch 1. (*name)
> - Patches 2-4 are unchanged.
>
> I typically give name of reviewer who suggested rework if applicable.
> It's partly giving 'credit', but it also makes it easier for
> reviewers to jog their memory of what they asked for and should
> look for in the new set.

This is very helpful. Thank you so much Alison for the detailed reply.

>
> >
> > Thank you,
> > ./drv
> >
> >
> >


