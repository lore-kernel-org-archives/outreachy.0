Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3238F42
	for <outreachy@lists.linux.dev>; Fri,  3 Mar 2023 20:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677874665; x=1709410665;
  h=date:from:to:subject:message-id:mime-version;
  bh=UJ5Xl4bzHRqQe7YQ9j3yriTypI/YHsBSCEVmRdFUwXg=;
  b=LQInoRqpKXkC/K5VxsCrHSDirMtAcN/jyS5xl1vf6x84ZdUv1/inmx5c
   6WxS6vrH/7/9a0BjBvkWWRqKYo7mysYU8CrM+Dvz7DweuJNiomE0ZNGOv
   JehSIXan0RGd9NIEYR0CcTYzX2eJs8ix69Th4WTlGCxHCAaY6Iv3W5UMr
   pBIX/FmuwB/fek34+B5TgTcdyIqzbasyZVBc/45eSszaai0kDVxzm5adg
   8cx2PCVnY+0MzrXaWTNGSlrw5RO6DdowEhYYx/RgQQVoWtfkLNvFOEhDl
   m22Mjez6V5UXEuoQyArkME99qjNdvLXYSrzQ8tZC88xa7nnsmFO8zoVnU
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="399963149"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; 
   d="scan'208";a="399963149"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 12:17:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="652923943"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; 
   d="scan'208";a="652923943"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.155.56])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 12:17:32 -0800
Date: Fri, 3 Mar 2023 12:17:30 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Announce] Welcome Applicants!
Message-ID: <ZAJV2shFMkTMdJtQ@aschofie-mobl2>
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

The 'Contribution Period' for the May 2023 Cohort runs March 6
through April 3.

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

Once you have ~10 cleanup patches accepted into drivers/staging by
GregKH, we encourage applicants to move on to complete Starter Tasks
outlined by the mentors here:
https://www.outreachy.org/apply/project-selection/#linux-kernel


All the best and thank-you for contributing to the Linux Kernel,

Alison Schofield
Kernel Community Coordinator
