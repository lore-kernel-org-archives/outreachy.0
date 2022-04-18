Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E906A29
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 16:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650300406; x=1681836406;
  h=date:from:to:subject:message-id:mime-version;
  bh=qEM9KRPlarnmoeuWqV8YT4Z0TmxFkfDJjtcQbXeyVyo=;
  b=geHd3PyZg+u/oVilKiyrV6F6lKp3qCW1imVEHbPWaUUQniOG4c/rD8ct
   fu9JiOAvZT2Jq8LUekmbzqCL28ex01Y0sM/602bqxkGQvuA98X3+vZzVs
   TId9emAda+PokROOP5PsBKzftNOWvaW2f+05um+Bj06mUilZxL6p+AeeS
   KY3N0/BpkAI7CYb1BndhlOJ5b8i7d0f4OtyztkBvUJ4rvL9ewu8ytn5Dm
   TqwYAJqc07OdpeEz0aIdPIOH3aRuPF22OUndAUhON6ZqApzJZhQxgoyVE
   jS1ZLsB0zRwteIy6PuzuCciK360boN7fw/u+3nyP5STaKxMOUZhjJo+SJ
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="263024394"
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; 
   d="scan'208";a="263024394"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 09:46:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; 
   d="scan'208";a="665346880"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 09:46:39 -0700
Date: Mon, 18 Apr 2022 09:48:24 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [ANNOUNCE] Closed to New Applicants
Message-ID: <20220418164824.GA1264757@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


The projects in our community have all closed for new applicants.

A new applicant is someone who has *not* recorded a contribution for
a project. For those who have already recorded contributions under
one or more projects, please continue to record and update your
contributions, work with your mentors, and submit a final application.

Application Deadline:  April 22 at 4pm UTC
See https://www.outreachy.org/docs/applicant/ Final Application.
Suggestion: Submit it today! You can always edit it thru the deadline,
however if you miss the deadline, for any reason, there is no recourse. 

What about the applicants who have not recorded a contribution?

Other communities in Outreachy may still be taking new applicants.

You are welcome to continue to work on cleanup patches and use this
list through April 22nd. (I'll send a notice to quiesce the list). If
you are able to come back for the next round, your patches will count
towards your clean up set, so you will basically have a running start
for the next round! The same is true for those who submit applications
but are not offered an internship.

Questions, please ask on the list, email your project mentors or me.

Thanks,
Alison
