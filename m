Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B117B
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 15:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666710836; bh=RjzA9An4IMgNS9Va+g2fiF+tjePXFfCXXkrECN6NQR4=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=QyZN0KnmyR5DZa9N8aIRDsMAp2Tz9nPral2y7GiC3apeQpJjjwv0GpInVjjbuLG3Z
	 P1DtlVBokejOzV2Ryl7T9mYFuywnpiHjaLXg757mqKQpg7CPK6GFl4tC487rT7td/t
	 3t9YQ/qbXNkACK8+ze5xIiuVKU9CXKw4IZTGocLI=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Tue, 25 Oct 2022 17:13:55 +0200 (CEST)
X-EA-Auth: ALg9s2CoduhtkzUoQXCZ3+v9vVqxaMTSJgcTc65CCwdGLW84GxqJuiGzG4H7msWyC+FVjZq3RWtCvJwPUrs7eZ7bZqF7EDEu
Date: Tue, 25 Oct 2022 04:05:36 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Saurabh Singh Sengar <ssengar@linux.microsoft.com>,
	Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <Y1cTOKRcFuLerpt+@debian-BULLSEYE-live-builder-AMD64>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
 <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
 <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <Y1cQ2WUOZ0m7QKSA@debian-BULLSEYE-live-builder-AMD64>
 <673dae52-f013-90d3-362d-1fa9c05832fe@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <673dae52-f013-90d3-362d-1fa9c05832fe@inria.fr>

On Tue, Oct 25, 2022 at 05:08:36PM +0200, Julia Lawall wrote:
>
>
> On Tue, 25 Oct 2022, Deepak R Varma wrote:
>
> > On Mon, Oct 24, 2022 at 11:56:51AM -0700, Saurabh Singh Sengar wrote:
> > > On Sat, Oct 22, 2022 at 11:03:53AM +0530, Deepak R Varma wrote:
> > > > On Fri, Oct 21, 2022 at 10:13:48PM +0530, Deepak R Varma wrote:
> > > > > On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> > > > > > Hi Deeva,
> > > > > >
> > > > > > I saw your Outreachy Dashboard update that noted your past contributions:
> > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
> > > > > >
> > > > > > You have plenty of cleanup patches in total and it would be great if you
> > > > > > could move on to try out some small tasks for the Coccinelle project.
> > > > >
> > > > > Hello Alison,
> > > > > First, sorry for the delay in responding. I was travelling most part of the day
> > > > > today and just checking my emails now.
> > > > >
> > > > > Thank you for looking at my first-patch contribution record. Your message is
> > > > > encouraging. I will starting working on the Coccinelle project tasks outlined
> > > > > in the project description.
> > > >
> > > > Hello,
> > > > I am reading through the Coccinelle.org link mentioned on the project
> > > > description page and following through. Is that the right approach to accomplish
> > > > the project tasks? Any additional guidance will be helpful.
> > >
> > > Hi Deepak,
> > >
> > > Yes you are on right track, look for how to use coccinelle/coccicheck and try to
> > > find some issues in staging directory. Please feel free to reach out to me and
> > > Praveen if you face any difficulty in accomplishing it.
> >
> > Hello,
> > I need help with installing and using Coccinelle / coccicheck. The following URL for
> > source code is not working.
> >
> > https://coccinelle.gitlabpages.inria.fr/website/distrib/coccinelle-1.1.1.tar.gz
> >
> > Also the packages for Debian are marked as Error.
> >
> > Can you please share links to documentation about how to install/configure and use
> > Coccinelle?
>
> You can get the Coccinelle sources from github.

I got it. Thank you Julia. Not sure why this link never popped up before.

One quick note: following link also did not work for me. It might need an
update???
https://coccinelle.gitlabpages.inria.fr/website/distrib/coccicheck-0.2.4.tgz

./drv

>
> julia
>
>
> >
> > Thank you,
> > ./drv
> >
> > >
> > > Regards,
> > > Saurabh
> > >
> > > >
> > > > Thank you,
> > > > ./drv
> > > >
> > > > >
> > > > > >
> > > > > > There are notes on how to get started in the project description, including
> > > > > > how to contact the mentors.
> > > > > >
> > > > > > Please try to keep your applicant/mentor communications CC'd to this
> > > > > > list.
> > > > >
> > > > > Sounds good. Will follow your guidance.
> > > > >
> > > > > Thanks again!
> > > > > ./drv
> > > > >
> > > > > >
> > > > > > Thanks,
> > > > > > Alison
> > > > > >
> > > >
> > >
> >
> >
> >
> >


