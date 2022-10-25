Received: from mail3-smtp-sop.national.inria.fr (mail3-smtp-sop.national.inria.fr [192.134.164.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B72F7479
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 16:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=TXwMsyTPFSNnELf5sKl/6xgZFbnQu1LuGGXGbFU9/AE=;
  b=lESJCpqXwqQvzmGIdI2EM8qn4sJZzvIPP2KH7n4Agvh3YN4BenKJdVlv
   L8+LcXYvxaUa4oWQ41Z2K6pzIK1igxGemLMsZQ6ERWvwtdc8Qj7ylQshE
   ZmEIefueqvPyGZewuS4wo1fjx1yWJxrDjig+dvDXk5iyC1FmbrhDcGxFm
   w=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,212,1661810400"; 
   d="scan'208";a="35502824"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2022 18:58:06 +0200
Date: Tue, 25 Oct 2022 18:58:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Deepak R Varma <drv@mailo.com>
cc: Saurabh Singh Sengar <ssengar@linux.microsoft.com>, 
    Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com, 
    Outreachy Linux Kernel <outreachy@lists.linux.dev>, 
    Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
In-Reply-To: <Y1cqBRdiA+a2NjRD@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <22ed3b9c-0ca-73e3-834-cb7dbd281886@inria.fr>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2> <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64> <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64> <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <Y1cQ2WUOZ0m7QKSA@debian-BULLSEYE-live-builder-AMD64> <673dae52-f013-90d3-362d-1fa9c05832fe@inria.fr> <Y1cTOKRcFuLerpt+@debian-BULLSEYE-live-builder-AMD64> <c13189ca-ed53-8127-1712-57f3c71b881b@inria.fr>
 <Y1cqBRdiA+a2NjRD@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 25 Oct 2022, Deepak R Varma wrote:

> On Tue, Oct 25, 2022 at 05:19:53PM +0200, Julia Lawall wrote:
> >
> >
> > > >
> > > > You can get the Coccinelle sources from github.
> > >
> > > I got it. Thank you Julia. Not sure why this link never popped up before.
> > >
> > > One quick note: following link also did not work for me. It might need an
> > > update???
> > > https://coccinelle.gitlabpages.inria.fr/website/distrib/coccicheck-0.2.4.tgz
> >
> > Sorry, maybe it needs an update, but it''s also not relevant to you if you
> > want to use Coccinelle on kernel code.  Coccicheck is a standalone tool
> > for running Coccinelle on other software.  In the kernel, coccicheck is
> > integrated with the kernel makefile.  You can read about it in the kernel
> > documentation.
>
> Just to confirm, I still need to download and build Coccinelle in my Kernel git
> repo, correct? Because, if I directly attempt to build the coccicheck target I
> get the following error:
>
> spatch is part of the Coccinelle project and is available at http://coccinelle.lip6.fr/
> make: *** [Makefile:2076: coccicheck] Error 1
>
> Can you please confirm if I am understanding it right?

Yes, you wll need to build it yourself.

On the upside, you will get the latest version.

julia

>
> >
> > julia
> >
> > >
> > > ./drv
> > >
> > > >
> > > > julia
> > > >
>
>
>
