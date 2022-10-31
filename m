Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120FA179
	for <outreachy@lists.linux.dev>; Mon, 31 Oct 2022 16:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667233817; x=1698769817;
  h=date:from:to:subject:message-id:mime-version;
  bh=kgnuE8EMnADj2o28ciyFUjDQEDAp1LKnjWSJfDx9jgQ=;
  b=T5IfzWjrl4BGGrLXmyHxpBDqZrDb7wIup9kt9UU9awOoPPCPUbFOKchJ
   vd46J7HPAKpZFrSgWhYLWvk8K+SiTlV14pRxDFgLsIVhTdwNsbLKkIUj3
   8AL0uNzRHD2yi8kDIiWpHneo8z/5bMuinKUXA36KP3oGvIvMRWdrNW8pg
   HT11kl2B2ceZssOJwFVJtOE9PpUp39Osjl7srYS6gha12eC85z9YpMb/2
   WMc5QswBdot6xkqoUrg72o+R8biLD7e7L85eLPR1rzuFJgQ0WGvFz2kxy
   hJBcMc8ZI8VoiBG4gEy2YCSrjSStxHNUKHL82tlT7U5s553QnVpo4AxMy
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="289333124"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="289333124"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 09:30:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="758892702"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="758892702"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.58.216])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 09:30:16 -0700
Date: Mon, 31 Oct 2022 09:30:14 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [ANNOUNCE] Nov 4 Final App Due
Message-ID: <Y1/4Fq5MTwaswlP1@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi Outreachy Applicants,

Thank you for diving into the Linux Kernel community and for 
helping to clean up the Linux Kernel during this contribution period.

We have a few days remaining! The contribution period ends Nov 4.

Hopefully you've been recording your contributions along the way
in your Outreachy Dashboard. Now, it is time to submit a final
application to the project.

Application Deadline:  November 4 at 4pm UTC
See https://www.outreachy.org/docs/applicant/ Final Application.

Suggestion: Submit it today! You can always edit it thru the deadline.

Questions, please ask on the list, email your project mentors or me.

Thanks,
Alison
