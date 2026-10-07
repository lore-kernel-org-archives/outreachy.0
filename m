Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670864DF4BA
	for <outreachy@lists.linux.dev>; Wed,  7 Oct 2026 18:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791397407; cv=none; b=EsoRdMGxh+F4Vej/yIK0t2GhaF9UHKo/VSxCAaXFO3GRVjGnDS/7VhWbSYMrm7AmeKUMbspo+kMFrrlom9+B4n7xXb29MbuCt68sg6klUBeHLdPzMh4Ks5ZRXIu37AEko4HCqqAoXENfS1J2xWj6EfOXRWBzX8HrIX7lDL2scqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791397407; c=relaxed/simple;
	bh=c13izlUSSnPuNefwiVnzI5LDj8s2sux80zK5jCyFA/U=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=k5GMKSTgb3ZpzB7mfqTEUGLDne3IxqHIrgfJO64KHwWSVjRsjl6RixqcWgsnaiO8PV+bagio3S6XO77yfzTmTeq+hrg2UH2kwgxeD22pm7kpB60mA6EVIP+8xk3hEPRQofyHYJukszL17NkPbhZKj5jG544SnD+irjZ4V7IPYy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=hp3ihqwa; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="hp3ihqwa"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=qKSC2OmkU/gHZaDy1HKv096EzjZU+CfpA/kJ4eQJxhU=;
  b=hp3ihqwalTKbmlaJBQKpYTMxN9DogcRrV74J9WXtRprHPQBYjqLxMfz7
   Jz4sFROunrG0n2xjjHg/JZIIS54a7r/NEpQWxZumviyOd09mVMnoco88q
   GvYXZ3ffLZHFffQSW95UEqHN3vzQ0w/fM1eR23cQ1Ab4GoDU0N0eDFhqU
   U=;
X-CSE-ConnectionGUID: jBq2QFzfRmK+S/FYaxZ4Cw==
X-CSE-MsgGUID: h2NxaH+7SZC0fP1fWl/Jbw==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,144,1787004000"; 
   d="scan'208";a="299023143"
Received: from ip-78-44-132-10.bb.vodafone.cz (HELO hadrien) ([78.44.132.10])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2026 20:23:13 +0200
Date: Wed, 7 Oct 2026 20:23:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Welcome 2026 applicants
In-Reply-To: <asaNQwN2yVVxCmbV@user>
Message-ID: <88d213f2-e390-476f-f3bd-ee481d99515a@inria.fr>
References: <e493c213-c325-fa1f-ec14-aaea11f6611d@inria.fr> <asaNQwN2yVVxCmbV@user>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 7 Oct 2026, Yalagada Pavan Kumar wrote:

> On Mon, Oct 05, 2026 at 07:44:06AM +0200, Julia Lawall wrote:
> > Welcome Applicants,
> >
> > Thank you for your interest in the Linux Kernel Community!
> >
> > The 'Contribution Period' for the December 2026 Cohort runs until November
> > 2.
>
> Hi Julia,
>
> I noticed that the Outreachy contribution period start date
> has changed from October 5 to October 12.

Yes, I just noticed that this morning too.

>
> I wanted to confirm whether I should begin my Linux Kernel contribution work
> now or whether I should wait until October 12 to start the actual contribution.

You can wait until October 12.

Thanks for your interest!

julia

> Thanks,
> Pavan
>
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
> > A key point is that it is really helpful and efficient (for both you
> > and patch reviewers) to refine your patch-sending skills one patch
> > at a time, rather than having multiple patches in flight that require
> > similar rework.
> >
> > You must CC all patches to this Outreachy Mailing List and to the
> > appropriate mailing lists and maintainers in get_maintainer.pl. The
> > tutorial walks you through how to use get_maintainer.pl.
> >
> > Once that first patch is accepted, please record that contribution
> > on the Outreachy website. It will serve to check your eligibility.
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
