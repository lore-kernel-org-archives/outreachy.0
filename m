Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E0C290F
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 16:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650645469; x=1682181469;
  h=date:from:to:subject:message-id:mime-version;
  bh=era8CNa4aLMnwjSUYpGgBJsPkMnR22Hi5f9XVVd1NyU=;
  b=jmng17WwWWt5Xis5WEINbnnCBSTtvFkQlaP9+kyIND5fXbNpRUqs45Of
   da1KQvNTfLKCH6XHnFmnFm7NC+53Z1jn5ONe/YPltmzyBofU+S2Waie+q
   oe2TxRV/DetlHsUN0jRgA8UNO1TyNKaDPUC2A+K4TXZaLpJPN7+a0Rpus
   zs7grSl5J69Vjm8gHrSWXjWQig7yLS11rm7VdodR5Pp3z7qu4cSm9uQoj
   MOnXhvBhERJFhQvfQnh7pBzUAkzsgAZkEymoeE3uGd0FvThsSSil8Is0y
   NoM0TZbIfmX6iX+KgqY5DQBQAWLpDNFNqSUuPht5pQuOYmLgA4uNVWfhG
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="245296372"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; 
   d="scan'208";a="245296372"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2022 09:37:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; 
   d="scan'208";a="728588945"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2022 09:37:48 -0700
Date: Fri, 22 Apr 2022 09:39:25 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [ANNOUNCE] Contribution Period is Closed
Message-ID: <20220422163925.GA1288002@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Thank-you to applicants, mentors, and reviewers for participating
in this contribution period. It is now closed.

The intern selections will be announced on the alums page [1] on
May 20 at 4pm UTC.

Our community was fortunate to have a talented, passionate, and
active group of applicants! Applicants who are not offered an
internship are encouraged to continue their participation in the
community and to consider participating in a future round.

If you have patches in flight, go ahead and continue to copy this
list until you get closure on them.

If you have new patches to send, use your get_maintainers script only.
Do not copy the outreachy mailing list on new work.

This list will not be monitored until the next contribution period opens
in October of 2022.

All the best,
Alison

[1] https://www.outreachy.org/alums/
