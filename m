Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B4C277818
	for <outreachy@lists.linux.dev>; Mon,  5 Oct 2026 05:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791179061; cv=none; b=QKsxrzZS52IjtmxAQ+uGK5nshZUnD6+A5cznb6k6nW3Xi2CdziI1cKSXokqPudyLWFx9EI4oa0NGGqjPjPctRDRYm8Jou8FMHhgLZ+Q+Ck0Q8P0rQMYGmK0tKuI08GUksMo+RRxKdsemKb7fOyKqVew9+1Ez3wTZhP2cZD/IQFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791179061; c=relaxed/simple;
	bh=fONPJ5eUtZJPhmq8N5S1ReElxyLYzaOHeSBF2CpibiE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=jZEkEg+0aJEimos4uYCfjjQbZ8E67K78xaCsWuaRcJ4+6z5ufCjyEpdLTdRTc17BVYRIuhntkywXiXDEjKANJa7Ef1FVDHb6lthJNhPZULkmC64lcAEe3w4o6rTIWFZP9lEm7nA4Vnpfug+Hlq7cfBm24nnFEBC1g5FhwGkP0/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=KnmhYyHs; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="KnmhYyHs"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=TADkDBL6XeEhK117O0CaCD8rs/cHd7QuFhUMdD2e10Y=;
  b=KnmhYyHsE4tDEvfinU5eXwauCkgVssiJNaVMt0hkOhPNYlCfYCD21Mx/
   QBYZUBkXpqPgMoGTBBISGI5xGv1U5Tueei40HoiAzCfT5I1oLDGXkeW8a
   ar8p5uKrZPQa8/5P4HIryIR258BmCalRDpl5ZGRfLQ7hmMaVwIf8U/tpV
   4=;
X-CSE-ConnectionGUID: k9UsP8rpRcq/WX9aMvkuug==
X-CSE-MsgGUID: jx7XALXuQRau4iSEiCjfXQ==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,141,1787004000"; 
   d="scan'208";a="158830482"
Received: from ip-94-112-236-192.bb.vodafone.cz (HELO hadrien) ([94.112.236.192])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2026 07:44:10 +0200
Date: Mon, 5 Oct 2026 07:44:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: Welcome 2026 applicants
Message-ID: <e493c213-c325-fa1f-ec14-aaea11f6611d@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Welcome Applicants,

Thank you for your interest in the Linux Kernel Community!

The 'Contribution Period' for the December 2026 Cohort runs until November
2.

Our contribution period process works entirely via this mailing list. Make
sure that you read over the emails on this list daily.  I will be posting
updates here. Most importantly, it is where you will learn from each other,
by following the questions asked/answered, the patches submitted, and the
reviewer feedback offered.

You found this email, now make sure you are personally subscribed
to this list:
Subscribe: outreachy+subscribe@lists.linux.dev
View the archive: https://lore.kernel.org/outreachy/

Please feel free to introduce yourself on the mailing list.

Ask your questions on the mailing list. If your question is directed at
an individual, then CC the mailing list. This way you'll be able get
quick responses to the issues you're facing. Please help other applicants
who face issues that you've addressed.

Your first task is to walk through our First Patch Tutorial:
http://kernelnewbies.org/Outreachyfirstpatch

The tutorial leads you through submitting your first patch. Please
do not submit your second patch until your first patch is accepted.
A key point is that it is really helpful and efficient (for both you
and patch reviewers) to refine your patch-sending skills one patch
at a time, rather than having multiple patches in flight that require
similar rework.

You must CC all patches to this Outreachy Mailing List and to the
appropriate mailing lists and maintainers in get_maintainer.pl. The
tutorial walks you through how to use get_maintainer.pl.

Once that first patch is accepted, please record that contribution
on the Outreachy website. It will serve to check your eligibility.
Only eligible applicants will be able to log contributions on the
Outreachy website.

Congratulations on getting your first patch accepted into the Linux
Kernel! Celebrate, then do more!

Please note the following:

* All patches should be on drivers/staging, but not on drivers/staging/media

* You can use the check the scripts/checkpatch.pl -f to find simple style
  problems in some files.  Use your judgment about whether a suggestion of
  checkpatch is a good idea for a change.  Check the mailing list archives
  for some changes that are regularly suggested by checkpatch but that are
  rejected in practice.

* There are not very many checkpatch reports on the current
  drivers/staging.  Some other potential fixes to consider include memory
  leaks, introducing new kernel features such as guard, scoped_guard, _obj
  allocation functions, etc., finding unused functions or variables, etc.

Once you have several cleanup patches accepted into drivers/staging by
GregKH, we encourage applicants to move on to complete project Starter Tasks
that will be outlined:
https://www.outreachy.org/apply/project-selection/#linux-kernel

Ping me individually if you think you are done, or close to done, with
cleanups. Also, folks who already have cleanup patches from prior work,
please get a few cleanup patches accepted, to refresh your memory about
submitting kernel patches, and then email me about that too and let's see
if we can move you on to project tasks.

All the best and thank you for contributing to the Linux Kernel,

Julia Lawall
Kernel Community Coordinator
