Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E28E13FE0
	for <outreachy@lists.linux.dev>; Tue,  5 Mar 2024 01:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709601587; cv=none; b=cAQXHL4hvv1L3/qJu0jbKgfV2EE+OylmoQN/V73MqpDqVM3VHxLJOx/RKVd5S2KhAx/9+iEIfWW1HidbvOV6fKQHTRI/g2toptf3mNdxkGPpjsBfrfXoNzXuKpF0h3FFGh9LqzzBcqlu/YwL4ZaunH8WovBglj81BAuEEJrkPcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709601587; c=relaxed/simple;
	bh=/63I4VKdcAVS2pxWpnmGq/BJ2zyYvI5qAjnpo97cSqw=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=LUug+1oMvh6sl4iapUQgf52Z06W80fr7MPq+F3vYYhbIBzmx+LqY6p0ifMMTNuYrxQbI9V26OlDd4Q3XrG3CNZ8Du9TmvMFr7p4FAbtxcjdQp6jbZ5edTvG8qWfjP1C9tLnxjR0Up7vnRzVxCcFVlgmzbE8evjPhlyHPDDnoCJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=KtEREwAp; arc=none smtp.client-ip=198.175.65.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="KtEREwAp"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1709601584; x=1741137584;
  h=date:from:to:subject:message-id:mime-version;
  bh=/63I4VKdcAVS2pxWpnmGq/BJ2zyYvI5qAjnpo97cSqw=;
  b=KtEREwAp9RrWw9v7on8XrO4kLON9mGpWIvhsUoLQAUTidhd4w05tDiQw
   vBORBBkyvnZELZOvaM6Y5dj/jSByWcsAf84pZQKcLtjRHXvahaO+1zGV4
   qyJoaECdakc9yHXiKcJ2kGQUUwjIfE+50j6gyJXtilzt12dMWhzP+Ge0D
   ewk6cAKbX5xV7mxKMJjTy67Gbka5Zjp3O/RvXlN6zIzTGmc5XFq4Poo8w
   R9ir42ErTZkzzivUUoXrn5REA4v65QIAL4xIkxPdmJng/5UB9VgZ5O7kI
   ip1kUE10rA9APYSJX/nJILCtE3JqSePp9ZasytCTzzN+8MNfKvnwy23gj
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7948481"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7948481"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2024 17:19:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="13844530"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.24.237])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2024 17:19:43 -0800
Date: Mon, 4 Mar 2024 17:19:41 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: outreachy@lists.linux.dev
Subject: Welcome Summer 2024 Applicants
Message-ID: <ZeZzLWtk2nZ1Pcgw@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Welcome Applicants,

Thank you for your interest in the Linux Kernel Community!

The 'Contribution Period' for the Summer 2024 Cohort runs March 4
through April 2.

Our contribution period process works entirely via this mailing
list. Make sure that you read over the emails on this list daily.
Mentors and I will be posting updates here. Most importantly, it
is where you will learn from each other, by following the questions
asked/answered, the patches submitted, and the reviewer feedback
offered.

You found this email, now make sure you are personally subscribed
to this list: 
Subscribe: outreachy+subscribe@lists.linux.dev
More subscriber options: https://subspace.kernel.org/lists.linux.dev.html
View the archive: https://lore.kernel.org/outreachy/

Ask your questions on this mailing list. If your question is directed at
an individual, then 'CC this mailing list. This way you'll be able get
quick responses to the issues you're facing. Please help other applicants
who face issues that you've addressed. 

Support may also be found on IRC. Join the #outreachy IRC channel on
irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.

Your first task is to walk through our First Patch Tutorial:
http://kernelnewbies.org/Outreachyfirstpatch

The tutorial leads you through submitting your first patch. Please
do not submit your second patch until your first patch is accepted.
Key point is that it is really helpful and efficient (for both you
and patch reviewers) to refine your patch sending skills one patch
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
GregKH, we encourage applicants to move on to complete Starter Tasks
outlined by the mentors here:
https://www.outreachy.org/apply/project-selection/#linux-kernel

Please know that you can start reading about, ramping up on our
single project - Landlock, right away. We only have the rule that
you don't contact the mentor or submit a project starter task
until after your cleanup patches are done.

Ping me individually if you think you are done, or close to done,
with cleanups. Also, folks who already have cleanup patches from
prior work, email me about that too and let's see if we can move
you on to project tasks.

All the best and thank-you for contributing to the Linux Kernel,

Alison Schofield
Kernel Community Coordinator
