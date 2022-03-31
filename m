Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BDC7C
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 18:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648751745; x=1680287745;
  h=date:from:to:subject:message-id:mime-version;
  bh=eDHGUVcrKCo4Lnc8duIHJ/aac/LG4lyquZx8OnxeoTM=;
  b=dT7uwXmAtaybXwc5jUyPJ3Oz+73nClxLLk76++Nxuoqq6kZNa+pb5ds2
   5Da7FXO3KycTQAKYAhJgiDJ+yECCGapEAybHZ4FOLR77G+Cl1mdSj+/2o
   itW8sbfZ9COAED7glN6XSCz5BfTIyUT9a53hbUREDo0pRl8+kxCG5OShA
   Q+yTISz9KpDkiqtyXw2Ssp9hrzoUZGMoU2UsTSHhfEcMPi1RmCEDoV8un
   F0OxHLGdp8PehX+W6Mr8DXjMBHoOy8GGlEW0ARW3a1l6njyIZgzsH3QrI
   VZ9kxmVMg9bUPWkvM5rPIwQHuyHewOugYeBtRSCssJA8PXIYC0kJSYgZL
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="346362795"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="346362795"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 11:35:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="586543924"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 11:35:44 -0700
Date: Thu, 31 Mar 2022 11:38:05 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Finding Clean-up Tasks
Message-ID: <20220331183805.GA1182645@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In Linux Kernel Community we know that it takes a bit of time
and effort to get traction on the cleanup patches.

Please ask for support on this list or irc.

Here are some notes from me. Please chime in with your current
experiences. It helps other applicants and helps us improve
the program.

Snowballing:
------------
I can see on this list that a few folks already have patches
accepted that are 'snowballing'. This is when a reviewer says
'Thanks - and how about fixing this <insert other thing> too?!'
This is great. One patch, spawns more improvements.

Finding the first patch:
------------------------
It's fine to submit patches for checkpatch "CHECK" reports.
Get these by using the --strict option to checkpatch.

There seem to be plenty of checkpatch cleanups in staging/drivers,
and TODO files w beginner level suggestions. I personaly haven't
run sparse, smatch, or coccicheck. 

Another method for finding cleanups is *this* list. Scroll
the list of PATCH Subject lines, some will catch your eye as
not looking like a checkpatch patch. Look at it. See what they
did, how they found it. Sometimes a cocci script is included
in the patch body, so you can just grab that and run.

Confidence to send the patch:
-----------------------------
Go ahead and search on this mailing list for the checkpatch
string. You should find many examples that match what you
are about to do. See what worked well, what needed rework.

If you have a patch AND a question, you can send the patch
and put your question below the scissors line. For example,
you might see multiple instances of something but are not sure
the patch will be well-received. Fix one instance - and below
the scissor line ask you question: "There are 10 more of these
in this file, just want to sanity check that my approach here
is wanted."  (If I were doing cleanup today, I'd use this tactic
for drivers/staging/iio checkpatch ERROR about octals.)

Just for fun, try this on this list:
------------------------------------
- Search for v2, then search for v14. (You can search all the
way in-between them also). Point is, we revision patches a lot!
And, it's not unique to the Outreachy list. Go to any kernel.org
list if you are feeling glum about getting to v5,6,or 7.

Here's the first patch I ever posted to this list:
--------------------------------------------------
https://lore.kernel.org/outreachy/20151005183935.GA3350@Ubuntu-D830/#t 

Reach out if you get stuck or need some camaraderie,
Alison
