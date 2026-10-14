Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9771D2E2EEE
	for <outreachy@lists.linux.dev>; Wed, 14 Oct 2026 01:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791940152; cv=none; b=O3dUyi+PA6XxDRLX36Kr5TSaX+0G8JfOR/ZKjRxx5MwXRSvAVBHYI8K57NcL90viQgUbaJ4YVD+1lhd1U2S5P7qs3L1jR5olMlzKk2RNZhMdNrLDaMS5HJAqeHqVHRcGG0Q83XSA8SHltUrdpi6FaCxHfDSmlJdPG6BVNRSaKVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791940152; c=relaxed/simple;
	bh=ADIrLpze55o2UrrBwgkb0VQoOOlfAzbby607TX5PAEg=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=ZTg1N4M74t8Gd3z9hSCYHJrtOZ0/LMJssJqBEeuEwKtglQlnVyhJLYh616l6vWjzXhGLCzCTWRdVhgTVQ4bdLogdxzSjNTW9pCuwqNQ63vA9AkZ14CpTjBXe6O5FgshLAnMQIOg5eam5lyL7YH8ELqwwyEoAh6TnpmSnoqvi0qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=W8hsf+eK; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="W8hsf+eK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=6cdOzAXf2UcFharDYOs8qN/eGI8mgq460SdqI7vblhw=;
  b=W8hsf+eKyHtzRlqiQ01qo0WYRzJVhUlW04nRn66ngRdg2O/FTftwoQV+
   A8NCKTgdBLTnCFuU+rZioOCja/QfBQ1kgvyPheaFFvtK31EcUyLhEerGT
   cigfphlrEn88696iWQqrCOpOTXbheAGxrBadxHWyVxYf0IxVqxZPfHCrM
   8=;
X-CSE-ConnectionGUID: AYrgdwymSS2+be20mXQQVg==
X-CSE-MsgGUID: Lr5fMZ91Rty6O9TZMFpbwg==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,156,1787004000"; 
   d="scan'208";a="159743648"
Received: from static.host-68-71-1-178.nrbn.ca (HELO hadrien) ([68.71.18.178])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2026 03:08:59 +0200
Date: Tue, 13 Oct 2026 21:08:58 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Temitope Obabi <obabitemitope765@gmail.com>
cc: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>, 
    outreachy@lists.linux.dev
Subject: Re: Welcome 2026 applicants
In-Reply-To: <CALUk5xbTX0g_Nu0mfZMbU=0CMMNLFdkUdTj5ZDypdcwT7PbmXw@mail.gmail.com>
Message-ID: <13969d8e-e1c-5a34-5285-a09c4df81a31@inria.fr>
References: <e493c213-c325-fa1f-ec14-aaea11f6611d@inria.fr> <as5TXewJ7Slm5KkR@user> <e2fda012-24ce-f5eb-971-ffd6f8f7abc3@inria.fr> <CALUk5xbTX0g_Nu0mfZMbU=0CMMNLFdkUdTj5ZDypdcwT7PbmXw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-747634046-1791940140=:3358"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-747634046-1791940140=:3358
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 14 Oct 2026, Temitope Obabi wrote:

> Hi everyone  please how do I submit my patch 

Please read the first patch tutorial.  All the information should be
there.

julia

>
> On Tue, 13 Oct 2026, 10:49 pm Julia Lawall, <julia.lawall@inria.fr> wrote:
>
>
>       On Tue, 13 Oct 2026, Yalagada Pavan Kumar wrote:
>
>       > On Mon, Oct 05, 2026 at 07:44:06AM +0200, Julia Lawall wrote:
>       > > Welcome Applicants,
>       > >
>       > > Thank you for your interest in the Linux Kernel Community!
>       > >
>       > > The 'Contribution Period' for the December 2026 Cohort runs until November
>       > > 2.
>       > >
>       > > Our contribution period process works entirely via this mailing list. Make
>       > > sure that you read over the emails on this list daily.  I will be posting
>       > > updates here. Most importantly, it is where you will learn from each other,
>       > > by following the questions asked/answered, the patches submitted, and the
>       > > reviewer feedback offered.
>       > >
>       > > You found this email, now make sure you are personally subscribed
>       > > to this list:
>       > > Subscribe: outreachy+subscribe@lists.linux.dev
>       > > View the archive: https://lore.kernel.org/outreachy/
>       > >
>       > > Please feel free to introduce yourself on the mailing list.
>       > >
>       > > Ask your questions on the mailing list. If your question is directed at
>       > > an individual, then CC the mailing list. This way you'll be able get
>       > > quick responses to the issues you're facing. Please help other applicants
>       > > who face issues that you've addressed.
>       > >
>       > > Your first task is to walk through our First Patch Tutorial:
>       > > http://kernelnewbies.org/Outreachyfirstpatch
>       > >
>       > > The tutorial leads you through submitting your first patch. Please
>       > > do not submit your second patch until your first patch is accepted.
>       >
>       > Hi Julia,
>       >
>       > My first patch has been added to staging-testing branch by Greg.
>       >
>       > I have few doubts:
>       >
>       >    1. Does my patch need to reach staging-next or Linus's mainline tree to be
>       >       considered accepted, or is staging-testing enough?
>
>       Accepted by Greg is sufficient.  You can add it to your application.
>
>       >
>       >    2. Can i submit my second patch now or should i wait?
>       >
>
>       You can sunmit another patch.  Now that you have submitted a patch
>       successfully, you can submit patches as you like.  But it can be good to
>       avoid modifying the same file before your previous patch on the file is
>       accepted.  Also if you have doubts about your solution to some problem,
>       you should wait for feedback before sending other patches on that problem.
>
>       >    3. Should i mention the date my patch was accepted or the date it was
>       >       merged.
>
>       Whatever is convenient.  What is important is to put the link to where
>       your patch can be found.
>
>       julia
>
>       >
>       > Thanks,
>       > Pavan
>       >
>       > > Only eligible applicants will be able to log contributions on the
>       > > Outreachy website.
>       > >
>       > > Congratulations on getting your first patch accepted into the Linux
>       > > Kernel! Celebrate, then do more!
>       > >
>       > > Please note the following:
>       > >
>       > > * All patches should be on drivers/staging, but not on drivers/staging/media
>       > >
>       > > * You can use the check the scripts/checkpatch.pl -f to find simple style
>       > >   problems in some files.  Use your judgment about whether a suggestion of
>       > >   checkpatch is a good idea for a change.  Check the mailing list archives
>       > >   for some changes that are regularly suggested by checkpatch but that are
>       > >   rejected in practice.
>       > >
>       > > * There are not very many checkpatch reports on the current
>       > >   drivers/staging.  Some other potential fixes to consider include memory
>       > >   leaks, introducing new kernel features such as guard, scoped_guard, _obj
>       > >   allocation functions, etc., finding unused functions or variables, etc.
>       > >
>       > > Once you have several cleanup patches accepted into drivers/staging by
>       > > GregKH, we encourage applicants to move on to complete project Starter Tasks
>       > > that will be outlined:
>       > > https://www.outreachy.org/apply/project-selection/#linux-kernel
>       > >
>       > > Ping me individually if you think you are done, or close to done, with
>       > > cleanups. Also, folks who already have cleanup patches from prior work,
>       > > please get a few cleanup patches accepted, to refresh your memory about
>       > > submitting kernel patches, and then email me about that too and let's see
>       > > if we can move you on to project tasks.
>       > >
>       > > All the best and thank you for contributing to the Linux Kernel,
>       > >
>       > > Julia Lawall
>       > > Kernel Community Coordinator
>       >
>
>
>
--8323329-747634046-1791940140=:3358--
