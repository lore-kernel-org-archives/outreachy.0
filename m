Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E65521212
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 17:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791911177; cv=none; b=X34mXXU9PPXx5r6raHqLcibMZzdBeDIV7WG/vm1aTCewt5qU6zTl6YnuCEYh1thY0oNZRbtsB7PcclbSifEKiYdz5uO4ZOPgUhH1RM+CAuTP5YD7n3EJdyie0teKISVwRq5ACunlT8oWMqBOH1acWHzWIFp4nDRP4jVDQZs/DpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791911177; c=relaxed/simple;
	bh=CFiS0N0PvoM2m7GyppaiGTsmbC75q1gAK/CZtIl1SGs=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=HKhCqqFj6X4RoSLqFtQN5qD/yORv2D9IHiN1uP3nbhN6FInzIFrwVXYH1NeDJ5UqfhuNIXyRxM7yDGkyJqSwdRMp1L3szTMSS/n15Y4bMECG6EYJg2thYqfJ79XydQeT9tP6ORNKT0hpmovLlfXYOHZE5inX2pUwRQ4BGfaL7/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=i0lVuLix; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="i0lVuLix"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=03xTAuMJarKH2FDPuTy/Bdh7HP1HYMS9wLA5Z446tGk=;
  b=i0lVuLixbIAf4KOdTALISKRQl1FjmowmDXoAZgBYvx8YI3FKmIyis429
   H4tucqlzF78j8TkWhvnT7+qSJ3PigzYFe0KBuJjmdFb0cIpg1RPr6YW0G
   RXZCznBYjZeUtoPZ/ohJnPNDKlo19rMkuDPxc97KFRZt7mBJNMwoJeN/H
   k=;
X-CSE-ConnectionGUID: hdY4AQPqR0SlzhyEY9jv/w==
X-CSE-MsgGUID: +84w1nnXQ/iBtxQIlNo0rw==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,156,1787004000"; 
   d="scan'208";a="300019203"
Received: from static.host-68-71-1-178.nrbn.ca (HELO hadrien) ([68.71.18.178])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2026 19:06:11 +0200
Date: Tue, 13 Oct 2026 13:06:09 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Welcome 2026 applicants
In-Reply-To: <as5TXewJ7Slm5KkR@user>
Message-ID: <e2fda012-24ce-f5eb-971-ffd6f8f7abc3@inria.fr>
References: <e493c213-c325-fa1f-ec14-aaea11f6611d@inria.fr> <as5TXewJ7Slm5KkR@user>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Oct 2026, Yalagada Pavan Kumar wrote:

> On Mon, Oct 05, 2026 at 07:44:06AM +0200, Julia Lawall wrote:
> > Welcome Applicants,
> >
> > Thank you for your interest in the Linux Kernel Community!
> >
> > The 'Contribution Period' for the December 2026 Cohort runs until November
> > 2.
> >
> > Our contribution period process works entirely via this mailing list. Make
> > sure that you read over the emails on this list daily.  I will be posting
> > updates here. Most importantly, it is where you will learn from each other,
> > by following the questions asked/answered, the patches submitted, and the
> > reviewer feedback offered.
> >
> > You found this email, now make sure you are personally subscribed
> > to this list:
> > Subscribe: outreachy+subscribe@lists.linux.dev
> > View the archive: https://lore.kernel.org/outreachy/
> >
> > Please feel free to introduce yourself on the mailing list.
> >
> > Ask your questions on the mailing list. If your question is directed at
> > an individual, then CC the mailing list. This way you'll be able get
> > quick responses to the issues you're facing. Please help other applicants
> > who face issues that you've addressed.
> >
> > Your first task is to walk through our First Patch Tutorial:
> > http://kernelnewbies.org/Outreachyfirstpatch
> >
> > The tutorial leads you through submitting your first patch. Please
> > do not submit your second patch until your first patch is accepted.
>
> Hi Julia,
>
> My first patch has been added to staging-testing branch by Greg.
>
> I have few doubts:
>
>    1. Does my patch need to reach staging-next or Linus's mainline tree to be
>       considered accepted, or is staging-testing enough?

Accepted by Greg is sufficient.  You can add it to your application.

>
>    2. Can i submit my second patch now or should i wait?
>

You can sunmit another patch.  Now that you have submitted a patch
successfully, you can submit patches as you like.  But it can be good to
avoid modifying the same file before your previous patch on the file is
accepted.  Also if you have doubts about your solution to some problem,
you should wait for feedback before sending other patches on that problem.

>    3. Should i mention the date my patch was accepted or the date it was
>       merged.

Whatever is convenient.  What is important is to put the link to where
your patch can be found.

julia

>
> Thanks,
> Pavan
>
> > Only eligible applicants will be able to log contributions on the
> > Outreachy website.
> >
> > Congratulations on getting your first patch accepted into the Linux
> > Kernel! Celebrate, then do more!
> >
> > Please note the following:
> >
> > * All patches should be on drivers/staging, but not on drivers/staging/media
> >
> > * You can use the check the scripts/checkpatch.pl -f to find simple style
> >   problems in some files.  Use your judgment about whether a suggestion of
> >   checkpatch is a good idea for a change.  Check the mailing list archives
> >   for some changes that are regularly suggested by checkpatch but that are
> >   rejected in practice.
> >
> > * There are not very many checkpatch reports on the current
> >   drivers/staging.  Some other potential fixes to consider include memory
> >   leaks, introducing new kernel features such as guard, scoped_guard, _obj
> >   allocation functions, etc., finding unused functions or variables, etc.
> >
> > Once you have several cleanup patches accepted into drivers/staging by
> > GregKH, we encourage applicants to move on to complete project Starter Tasks
> > that will be outlined:
> > https://www.outreachy.org/apply/project-selection/#linux-kernel
> >
> > Ping me individually if you think you are done, or close to done, with
> > cleanups. Also, folks who already have cleanup patches from prior work,
> > please get a few cleanup patches accepted, to refresh your memory about
> > submitting kernel patches, and then email me about that too and let's see
> > if we can move you on to project tasks.
> >
> > All the best and thank you for contributing to the Linux Kernel,
> >
> > Julia Lawall
> > Kernel Community Coordinator
>
