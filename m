Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4036A28
	for <outreachy@lists.linux.dev>; Sat,  8 Oct 2022 04:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665203833; x=1696739833;
  h=date:from:to:subject:message-id:mime-version;
  bh=bIotgH3GEPQiEwsCWCia4cDOb0cPPICfg2FBq161wqY=;
  b=XUVtUkXiWSTOS79ScWIf1GeDQCOPJjRtUv8kwP51V/TzRSCxmGFfG37O
   i9Q+wzItGq5vLMO9pOxyxjKrWlgh9BL2Xcbc+vx9NKLz+5vPvkmJ9jW6s
   cxUn4TIUmz0PifNGAQdCo55absv7N0Mos6aQm/NUX/xuU8TeH0+GF3n4A
   CvmCm2ozPdJqTM4QkMRk6B8cD6ulqX/TPP2ZDkKWYO4/OJAQV8va/AOe8
   TcornhMGn2CEyFfcz0x274+L96sJ3LGptd/Stn2kS3HtSyicsOpF2FhjW
   ft6TiqjUVA6Uci4vAgHs9tGqpyHx6CgGgIhd7+OGIKobn1Gcyb++cEdmg
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="305480809"
X-IronPort-AV: E=Sophos;i="5.95,168,1661842800"; 
   d="scan'208";a="305480809"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2022 21:37:13 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="620474055"
X-IronPort-AV: E=Sophos;i="5.95,168,1661842800"; 
   d="scan'208";a="620474055"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.64.97])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2022 21:37:13 -0700
Date: Fri, 7 Oct 2022 21:37:11 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [ANNOUNCE] Contribution Period is Open!
Message-ID: <Y0D+dzbjRtuc0KT4@aschofie-mobl2>
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

The 'Contribution Period' for the December 2022 Cohort runs 
October 8 through November 4.

Our contribution period process works entirely via this mailing
list. Make sure that you read over the emails on this list daily.
Mentors and I will be posting updates here. Most importantly, it
is where you will learn from each other, by following the questions
asked/answered, the patches submitted and the reviewer feedback
offered.

You found this email, now make sure you are personally subscribed
to this list: 

Subscribe: outreachy+subscribe@lists.linux.dev
More subscriber options: https://subspace.kernel.org/lists.linux.dev.html
View the archive: https://lore.kernel.org/outreachy/

Ask your questions in this mailing list. That way you'll be able get
quick answers with the issues you're facing. Please help other applicants
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

You MUST send all patches to this mailing list AND to the appropriate
mailing lists and maintainers in get_maintainer.pl. The tutorial walks
you through how to use get_maintainer.pl.

Once that first patch is accepted, please record that contribution
on the Outreachy website. This will close the loop on that first patch!
It will also force you to double check your eligibility. Only eligible
applicants will be able to log contributions on the Outreachy web site.

Congratulations on getting your first patch accepted into the Linux
Kernel! Celebrate, then do more!

Once you have ~10 cleanup patches accepted into drivers/staging by
GregKH, we encourage applicants to move on to complete some small tasks
outlined by the mentors here:
https://www.outreachy.org/apply/project-selection/#linux-kernel


All the best and thank-you for contribution to the Linux Kernel,
Alison Schofield
Kernel Community Coordinator
