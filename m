Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD7F7E
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 14:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666190915; bh=b+Uj5OMtBFDAtupj1t6TwDEGI7EvKTmx1HGQDuqTW/E=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=GvtLBpYNKmZnk4xQ9AbhP/evYPeb/Qt/+tlL2VaS/wyUcwO8m0QYIR5HQ24fOxJNU
	 wOQmTJJSezeUFKguw0DqfFnps81PW469n+2JGHoa0drekBkCR+vrbdiXyjhS6hPY3f
	 En76ACbMgJi+VGg/RO9l06p+4F4QciIXFa5d851E=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
	via [213.182.55.206]
	Wed, 19 Oct 2022 16:48:34 +0200 (CEST)
X-EA-Auth: wSlv++yEViHsP+oEQ1e4J5tMguTu4HsMBJXVrfwI3kARWd1X4OqDuy0s5UdmozLmytcxfjZ47WuNZ8yEJyPbImK7qBsJlZLZ
Date: Wed, 19 Oct 2022 20:17:16 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Patch set versioning
Message-ID: <Y1AN9LugEoaqMPov@debian-BULLSEYE-live-builder-AMD64>
References: <Y07iMwCa9zHCcs1J@debian-BULLSEYE-live-builder-AMD64>
 <Y07ujhlBBVM6Yd+t@aschofie-mobl2>
 <Y075EMTWW/4Km7NE@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y075EMTWW/4Km7NE@debian-BULLSEYE-live-builder-AMD64>

On Wed, Oct 19, 2022 at 12:35:52AM +0530, Deepak R Varma wrote:
> On Tue, Oct 18, 2022 at 11:21:02AM -0700, Alison Schofield wrote:
> > On Tue, Oct 18, 2022 at 10:58:19PM +0530, Deepak R Varma wrote:
> > > Hello,
> > > If I have a patch set with 5 patches included and only one of the patch needs to
> > > undergo revision. In this situation, when I resubmit the patch set, do I mark
> > > all patches as v2 along with the cover letter or should I just raise the
> > > individual patch version and resubmit the patch set with all patches included?
> >
> > All patches in the set get the udpated version number, even if they
> > have not changed individually. That is practice across the kernel community.
> >
> > How it is noted in the changelog, may have varying styles.
> > I typically state what is unchanged to save my reviewers time.
> > Something like:
> >
> > Changed v3 -> v4
> > - Replace blah with blah in Patch 1. (*name)
> > - Patches 2-4 are unchanged.
> >
> > I typically give name of reviewer who suggested rework if applicable.
> > It's partly giving 'credit', but it also makes it easier for
> > reviewers to jog their memory of what they asked for and should
> > look for in the new set.
>
> This is very helpful. Thank you so much Alison for the detailed reply.

Another related query hence extending this thread.

Is it okay to include additional patches in an already submitted patch set's new
version? Some of these patches are based on the feedback received on the current
patch set and few patches are continued code clean up work while waiting for the
patch set review/feedback.

Thank you,
./drv


>
> >
> > >
> > > Thank you,
> > > ./drv
> > >
> > >
> > >
>
>
>


