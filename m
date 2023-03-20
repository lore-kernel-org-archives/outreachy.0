Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AF87C
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 17:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679333100; x=1710869100;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=NqUXyrEhZlGPRufEtVy9SG4MV9hifJ/mpICHizfk9e4=;
  b=DBzMxFSDVP+iRfUYzd+7huUByzJbFsgtB6JglJVviBzdLX5ab3rYrAAK
   Rq6kaTJWuOrDzICFv610fs0+LJTHMNVmainaM4gIHS4kdAcNAavwd992j
   +J3S+DwlVpyzYJSP8ulu1bEbQnmfoGHjD6VK6cOeGp6gZOThIsaiv8YJJ
   5v5EiNcfOAZaG/HFNqJZEhwZ5sLpNfVlp6jAAPPl4+U0FHPDuavkg6tkA
   xhod8gse3zi4tvxbiM2g7hA0FKQp29fvjMvB5p6VnUlOlskXitazJhT9s
   fnoW7UmESnOJ1TN+6Tna380PNPoYR85n2exqFxdUcbYyvxqzrKgUPAMZH
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="340273548"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; 
   d="scan'208";a="340273548"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 10:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="658432586"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; 
   d="scan'208";a="658432586"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.60.228])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 10:24:59 -0700
Date: Mon, 20 Mar 2023 10:24:57 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Cc: Ira Weiny <ira.weiny@intel.com>, Deepak R Varma <drv@mailo.com>,
	Fabio <fmdefrancesco@gmail.com>, Paul Moore <paul@paul-moore.com>,
	Anna Trikalinou <atrikalinou@microsoft.com>,
	Zahra Tarkhani <ztarkhani@microsoft.com>,
	=?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	James Morris <JAMORRIS@microsoft.com>
Subject: [Outreachy Info] Mid-point Check-in
Message-ID: <ZBiW6b78Zb8VlTJl@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Applicants & Mentors,

We are near the half-way point in this contribution period, and I
want to sync up on what that means:

- Applicants with a patch accepted into staging/testing and who have
  recorded it in their personal Outreachy Dashboard, are expected to
  move on to explore projects offering internships.

- Applicants who are working on cleanup tasks - keep them coming.

- We are ready to welcome and support new applicants through the last
  day of the contribution period, April 3rd.

Thanks for all your hard work!
Alison
