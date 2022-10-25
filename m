Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603777479
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666716673; bh=qdxwmy30evJKp3bOEEHIBSEAItg6hE5zrd0cvdULjuY=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=QhKULqtof22C+7OTt9Th9OzXaAH7wMqhnVwCbeSIPYpBQqnwfAPTtv1dXPyy+/FEr
	 shTpZXVfba/FuAf6lKHBMZw6TezGlsbq7WNrWgf1J8OmP0ecn+nf34oIUX6ZM6I060
	 se6m3cSmPD9nr6PcloM5EnOZdaIdW17pWcqNBK5A=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Tue, 25 Oct 2022 18:51:13 +0200 (CEST)
X-EA-Auth: qYB2oLAAwkM+J/tXlsRiyYEi1W6nYwe8qzopHMnhVe5z5ur5m19GepwrMKPcJJNdPXTPvyHonqKbbwNBSNKXJWb+AIA46T+s
Date: Tue, 25 Oct 2022 05:42:53 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Saurabh Singh Sengar <ssengar@linux.microsoft.com>,
	Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <Y1cqBRdiA+a2NjRD@debian-BULLSEYE-live-builder-AMD64>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
 <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
 <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <Y1cQ2WUOZ0m7QKSA@debian-BULLSEYE-live-builder-AMD64>
 <673dae52-f013-90d3-362d-1fa9c05832fe@inria.fr>
 <Y1cTOKRcFuLerpt+@debian-BULLSEYE-live-builder-AMD64>
 <c13189ca-ed53-8127-1712-57f3c71b881b@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c13189ca-ed53-8127-1712-57f3c71b881b@inria.fr>

On Tue, Oct 25, 2022 at 05:19:53PM +0200, Julia Lawall wrote:
>
>
> > >
> > > You can get the Coccinelle sources from github.
> >
> > I got it. Thank you Julia. Not sure why this link never popped up before.
> >
> > One quick note: following link also did not work for me. It might need an
> > update???
> > https://coccinelle.gitlabpages.inria.fr/website/distrib/coccicheck-0.2.4.tgz
>
> Sorry, maybe it needs an update, but it''s also not relevant to you if you
> want to use Coccinelle on kernel code.  Coccicheck is a standalone tool
> for running Coccinelle on other software.  In the kernel, coccicheck is
> integrated with the kernel makefile.  You can read about it in the kernel
> documentation.

Just to confirm, I still need to download and build Coccinelle in my Kernel git
repo, correct? Because, if I directly attempt to build the coccicheck target I
get the following error:

spatch is part of the Coccinelle project and is available at http://coccinelle.lip6.fr/
make: *** [Makefile:2076: coccicheck] Error 1

Can you please confirm if I am understanding it right?

>
> julia
>
> >
> > ./drv
> >
> > >
> > > julia
> > >


