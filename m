Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91247EAC6
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742295050; cv=none; b=BANWuu7cSWx/dWOdzgPY054AlNu8I78iIZNLVsoHg3xiROfu3qPWb99t0RAYdm3wuTfrhRWHNjxL2AG84Ki/Sz4inLipAls/DB/hbI7hAICjdRZEIDrMv8q9PJcnD73F6UdPJe5+e9zO106Bcelza0LXo1mdFM/8ZvI4ZNi96Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742295050; c=relaxed/simple;
	bh=0EkmSw+9Nc/DWguBtq6Ws/twavAbCcCTCZtDEMqdob8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=isTZJBFhEA12Rp8WDaSMVIyZPnG2z1ck6rrXEr2gNnptS3G8eHzAFGXlhpQ6JYce0ELo8hAGET6GUykGxxS7bK2LluQ1nhT8BH0bw66dmre9jTSN0Qb8/ZG4XPeXhvALc2gpEGY81fHcrGxM/ZF9QROT6Fglicz2L3US7CapjdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=G+hOI9fZ; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="G+hOI9fZ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=alkB9GZaUMNLf8b4liCmYtRMw5W0SQq6wOwCfW4dKQU=;
  b=G+hOI9fZph+uNQQ3psqCP2zF0Ly8tC9U9pMTQVvKGJ4rsaflfHRIggDb
   r0fah5eVvvzrXsu+f+4rzfpjU2TKQjuzgy09UdCgogxbpC01NZdcpBWr4
   8H61mXsCun3HHz8ki8/91o5VSGQQX/dM0xD8Ewt3xxEbQnVmJcSgQp7A0
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,256,1736809200"; 
   d="scan'208";a="111888792"
Received: from pd9ef1166.dip0.t-ipconnect.de (HELO hadrien) ([217.239.17.102])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2025 11:49:37 +0100
Date: Tue, 18 Mar 2025 11:49:35 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: Welcome to outreachy 2025
Message-ID: <cf324d24-faa2-faf8-bcbb-3f22a7b7ba8d@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Welcome Applicants,

Thank you for your interest in the Linux Kernel Community!

The 'Contribution Period' for the Summer 2024 Cohort runs March 17
through April 15.

Our contribution period process works entirely via this mailing list. Make
sure that you read over the emails on this list daily.  I will be posting
updates here. Most importantly, it is where you will learn from each other,
by following the questions asked/answered, the patches submitted, and the
reviewer feedback offered.

You found this email, now make sure you are personally subscribed
to this list:
Subscribe: outreachy+subscribe@lists.linux.dev
More subscriber options: https://subspace.kernel.org/lists.linux.dev.html
View the archive: https://lore.kernel.org/outreachy/

Please feel free to introduce yourself on the mailing list.

Ask your questions on the mailing list. If your question is directed at
an individual, then 'CC the mailing list. This way you'll be able get
quick responses to the issues you're facing. Please help other applicants
who face issues that you've addressed.

Support may also be found on IRC. Join the #outreachy IRC channel on
irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.

Your first task is to walk through our First Patch Tutorial:
http://kernelnewbies.org/Outreachyfirstpatch

The tutorial leads you through submitting your first patch. Please
do not submit your second patch until your first patch is accepted.
A key point is that it is really helpful and efficient (for both you
and patch reviewers) to refine your patch-sending skills one patch
at a time, rather than having multiple patches in flight that require
similar rework.

You must 'CC all patches to this Outreachy Mailing List and to the
appropriate mailing lists and maintainers in get_maintainer.pl. The
tutorial walks you through how to use get_maintainer.pl.

Once that first patch is accepted, please record that contribution
on the Outreachy website. It will serve to check your eligibility.
Only eligible applicants will be able to log contributions on the
Outreachy website.

Congratulations on getting your first patch accepted into the Linux
Kernel! Celebrate, then do more!

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
