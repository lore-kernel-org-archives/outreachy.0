Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E34BA935
	for <outreachy@lists.linux.dev>; Mon,  3 Apr 2023 21:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680558127; x=1712094127;
  h=date:from:to:subject:message-id:mime-version;
  bh=X7rsbjraPHoW3pLXvv+UEqbCfwPvPwQkRjdA0BzUToI=;
  b=b7NgyCAaX2mle4LNj6xlr+ASgBZxbKZyyCVSFpUEjcZRtBe/YMDIC0f8
   Q+OMkEW/7guk4PI43D046092Y6C1fIP30sYB6sEULwVXHn52hxLPS09v+
   eE6u1exZbFQ3zmQZkDzzCHS5NJf8/ngzDGNpcwPehoQRctqbjGcjklKwy
   Wlt01GOiFoqRe8hhTd+7xqbZEEaS1vao3ZmahJvOs325vTC3Qap3hzbkz
   GUzGJG88omwxHFotV+sD4qSWsq2zkV7lYtMMN5SDHwlG2jv5rqnEzE5Y7
   ctNrwQ6jQkwTBexBKGX62BCPBk2hRkU/oeNxFRr+LNrE51JMMlV6hv+ug
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="343716823"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; 
   d="scan'208";a="343716823"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2023 14:42:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="686129805"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; 
   d="scan'208";a="686129805"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.63.184])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2023 14:42:06 -0700
Date: Mon, 3 Apr 2023 14:42:04 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Announce] Contribution Period Closed
Message-ID: <ZCtILKWQ7iklWgwn@aschofie-mobl2>
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

On May 4th at 4pm UTC, intern selections will be announced on the
alums page for the interships running May 29 - Aug 25. [1]

Our community was fortunate to have a talented, passionate, and
active group of applicants! Applicants who are not offered an
internship are encouraged to continue their participation in the
community and to consider participating in a future round. Dates
will be announced here: [2]

This list will not be monitored until the next contribution period
opens in Fall of 2023. If you have patches in flight, go ahead and
continue to copy this list until you get closure on them. (As you've
learned, we never drop folks from an ongoing mail thread.) If you have
new patches to send, use your get_maintainers script only, omitting the
Outreachy list.

All the best,
Alison

[1] https://www.outreachy.org/alums/
[2] https://www.outreachy.org/
