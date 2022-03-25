Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3027D7E
	for <outreachy@lists.linux.dev>; Fri, 25 Mar 2022 17:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648228977; x=1679764977;
  h=date:from:to:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=3+k36w9+h11jtZ2gLwTYbzYoiTr1+xVkv+heVdfQe1s=;
  b=CH7jY1I2cozFBmjLKOZjIFNVTlKsXC7/3GvadArh9AoBzI8yQvgkNmh9
   s7xBfH5xTs7HHnjqWSD6KSiVMbzuUys5tOMAcAhYbQqDNHuXpU5nq0U+A
   cLuM/PvUrnkuQ8bkUacY5Ozv2mD+/+I+OIa+dHshOc3Epdplvf1Igaku9
   oRVkT30q8lkVfEFEuFEJE23O51JbLzjAyeeK7ceBhZHOFM+xJFAKD22wd
   OZYmF1vpfYQkoQz0UgSxPXfOb9Agxx19K7TJwLcakdZEWNDjxHn9yzFWm
   Pe/P3fU+MxoKLUnwN0t11k/UBOLEsnrD8Qbm09E5/5VPGDaLx14AKDR/D
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="257506372"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; 
   d="scan'208";a="257506372"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2022 10:22:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; 
   d="scan'208";a="648329223"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2022 10:22:56 -0700
Date: Fri, 25 Mar 2022 10:25:30 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [ANNOUNCE] Contribution Period is Open!
Message-ID: <20220325172530.GA1151996@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Welcome Applicants,

Thank you for your interest in the Linux Kernel Community!

Today if the first day of the 'Contribution Period' for the next
cohort of Outreachy Interns. The contribution period runs March 25
through April 22.

Our contribution period process works entirely via this mailing
list. Make sure that you read over the emails on this list daily.
Mentors and I will post any updates here. Most importantly, it is
where you will learn from each other. Follow the questions asked
and answered, the patches submitted, and the reviewer feedback
offered.

You found this email, now make sure you are personally subscribed
to this list: 

Subscribe: outreachy+subscribe@lists.linux.dev
More subscriber options: https://subspace.kernel.org/lists.linux.dev.html
View the archive: https://lore.kernel.org/outreachy/

Your first task is to walk through our First Patch Tutorial:
http://kernelnewbies.org/Outreachyfirstpatch

Ask your questions in this mailing list. That way you'll be able get
quick answers with the issues you're facing. Please help other applicants
who face issues that you've addressed.

Support can also be found on IRC. Join the #outreachy IRC channel on
irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.

The tutorial leads you through submitting your first patch. Please
do not submit your second patch until your first patch is accepted.
It may seem like a reach to get 10 patches submitted, but the magic
is in the first patch, I assure you ;) Key point is that it is really
helpful and efficient (for both you and patch reviewers) to refine
your patch sending skills one patch at a time, rather than having
multiple patches in flight that require similar rework.

You MUST send all patches to this mailing list AND to the appropriate
mailing lists and maintainers in get_maintainer.pl. The tutorial walks
you through how to use get_maintainer.pl.

Once that first patch is accepted, you must record that contribution
on the Outreachy website. This will close the loop on that first patch!
It will also force you to double check your eligibility. Only eligible
applicants will be able to log contributions on the Outreachy web site.

Congratulations on getting your first patch accepted into the Linux
Kernel! Celebrate, then do more!

Once you have ~10 cleanup patches accepted into drivers/staging by
GregKH, we encourage applicants to move on to complete some small tasks
outlined by the mentors. It’s preferable to CC the mentor when you are
working on the task so that they don’t miss it. Small tasks for the
projects can be found in each project description here:
https://www.outreachy.org/apply/project-selection/#linux-kernel

Applicants may also join the #outreachy IRC channel on irc.gnome.org,
and the #kernel-outreachy channel on irc.oftc.net.

All the best,
Alison Schofield
Kernel Community Coordinator
