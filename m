Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E9A7B
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 02:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678330397; x=1709866397;
  h=date:from:to:subject:message-id:mime-version;
  bh=TJfh4j4nDUlXCufRK/arnO0PS1N/O8CQmmM5IJ+zd4Q=;
  b=DKLResz4l5GnKs36DJDDPdvtMsE0pVnMfIFP4yXwRkt6h7O8oLC8gSaj
   11XeM3vnczeLuHj8uxmQXVQgh+9x7s1bqYz6DCLW4sa73eOdmUJYux6qe
   nEgtvIICJ2i9Xkz1BfVq/iyRCcVGQiHsno1bbwg5uMkyrWntf49ojH31/
   L79dvUDipQNz7ZOlDa42yQNvd2QBsopszyihhAcjpQxwls4zyUFCeUfHK
   CV70aiMcqM+ANkWmyXW2Keq45GD3GiwDJLNunEIWN0zIXb9M9ijmbHqDn
   U9E8uUswi5uGqfD9J1Y/3MjOhl+PpZjRcOPmd0OePG2vSGA/+6ODeu493
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="337864831"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; 
   d="scan'208";a="337864831"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 18:53:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="851360948"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; 
   d="scan'208";a="851360948"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.215.12])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 18:53:16 -0800
Date: Wed, 8 Mar 2023 18:53:15 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Finding cleanups in staging
Message-ID: <ZAlKG1mN0m4NXEyU@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Finding drivers/staging clean-ups:::

In Linux Kernel Community we know that it takes a bit of time
and effort to get traction on the cleanup patches.

Please ask for support on this list or irc.

Here are some notes thoughts to get you started. Please chime in
with your current experiences. It helps other applicants and helps
us improve the program.

Finding the first patch:
------------------------
It's fine to submit patches for checkpatch "CHECK" reports.
Get these by using the --strict option to checkpatch.

Here's what works for me:

$ rm -r drivers/staging/media 		# do not work in staging/media

$ git ls-files drivers/staging/*.[ch] | xargs ./scripts/checkpatch.pl --strict --codespellfile=/usr/bin/codespell -f

There seem to be plenty of checkpatch cleanups in staging/drivers,
and TODO files w beginner level suggestions.

Another method for finding cleanups is *this* list. Scroll
the list of PATCH Subject lines, some will catch your eye as
not looking like a checkpatch patch. Look at it. See what they
did, how they found it.

Confidence to send the patch:
-----------------------------
Go ahead and search on this mailing list for the checkpatch
string. You should find many examples of patches that went
well, and patches that needed rework, that match what you
are about to do.

If you have a patch AND a question, you can send the patch
and put your question below the scissors line. For example,
you might see multiple instance of something but are not sure
the patch will be well-received. Fix one instance - and below
the scissor line ask you question: "There are 10 more of these
in this file, just want to sanity check that my approach here
is wanted."

Snowballing:
------------
I can see on this list that a few folks already have patches
accepted that are 'snowballing'. This is when a reviewer says
'Thanks - and how about fixing this [other thing] too?!' This
is great. One patch, spawns more improvements.

For perspective, try this on this list:
------------------------------------
Search for v2, then search for v14. (You can search all the
way in-between also). Point is, we revision patches a lot!
And, it's not unique to the Outreachy list. Go to any kernel.org
list if you are feeling glum about getting to v5, 6, or 7.


Reach out if you get stuck or need some camaraderie,
Alison
