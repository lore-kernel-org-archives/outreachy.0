Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB74CAD25
	for <outreachy@lists.linux.dev>; Fri,  4 Nov 2022 19:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667590476; x=1699126476;
  h=date:from:to:subject:message-id:mime-version;
  bh=dOxSlr2zELRHv8kIKcfuY5UEa4fYh7kzZPlWQvMpNyg=;
  b=ZU2r5VOEveysU5TOyXyiO3hIk9xLl8GO4RP0SR5I3dkiCi1ijLW2aMI+
   M53IFnwlTma09JsjW2HrDm4wkPapVKi6/962pzB/qsEYhuDNd7WvaHPk8
   gx5dvftkjbqigFxm9Iw1ITZeu/HAROh9EkOliGwthz3f14Prt65ciHYJc
   UZ49vZpKp3tZtpOEamK/Sr3sloY/oC4Bta8TVXoFVU36T078+lCPKpjD5
   +xoaz10pSZODTbXhnILtsPvfUeftbQVS2Q2qMsoZvP24EeggjzYoodGby
   zy3NEeYBLQA1gIvYv/r7yVWnGT2Tz/7Z2Ne2Fv8kClbLMOOUDgu9PC9oW
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="311176482"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; 
   d="scan'208";a="311176482"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2022 12:34:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="740743183"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; 
   d="scan'208";a="740743183"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.241.200])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2022 12:34:34 -0700
Date: Fri, 4 Nov 2022 12:34:33 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Announce] Outreachy Contribution Period Closed
Message-ID: <Y2VpSfUao/TcKt9p@aschofie-mobl2>
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

On November 21 at 4pm UTC, intern selections will be announced
on the alums page [1]. We (Saurabh, Praveen, and I) are not
able to let applicants know their status before then, as we need
to let the Outreachy Organizers work through their official process.

Our community was fortunate to have a talented, passionate, and
active group of applicants! Applicants who are not offered an
internship are encouraged to continue their participation in the
community and to consider participating in a future round. Dates
here [2].

This list will not be monitored until the next contribution period
opens in March of 2023. If you have patches in flight, go ahead and
continue to copy this list until you get closure on them. (As you've
learned, we never drop folks from an ongoing mail thread.) If you have
new patches to send, use your get_maintainers script only, omitting
the Outreachy list.

All the best,
Alison

[1] https://www.outreachy.org/alums/
[2] https://www.outreachy.org/
