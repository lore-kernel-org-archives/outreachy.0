Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FD615AE
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 01:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678756131; x=1710292131;
  h=date:from:to:subject:message-id:mime-version;
  bh=/Ci4GV45+jmjRD5CiERnp4VDhzfbeAJ8ZOqAUXog2lQ=;
  b=RWQYJ/p/e/YlXtsAyfb5jDoTSB5+rRjhPHO/j0tK4R0dwsYQVMU4MACI
   CEPXsWnISCrk/7T6mD29xI9/waP0KJoyw8TbkKSOEuiOFOI3EZoenSess
   YfGMDPGnLLB2Y6UVO4kjcnyeGClk5iAaRQ3ASGtdDwuK/eJxXKBNLp2nl
   lURRr4i1yt6CGFyjoDbQJSc586K2aknBXEl16+NhHKxmwpQh+IUmMP1EX
   1kcQ/5yMh1p6IOa0suSgs0Lrofsge1kbswgqpwstFY8ZUzk+BbB9hEzw0
   y0v8yNzs7C+rGllD2rKzk990ND5n4k6SejFim87r4BATkffrwzgLcTIyd
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325664109"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; 
   d="scan'208";a="325664109"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2023 18:08:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="747810678"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; 
   d="scan'208";a="747810678"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.44.112])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2023 18:08:40 -0700
Date: Mon, 13 Mar 2023 18:08:38 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Watch staging/testing
Message-ID: <ZA/JFpMXzZvkiwQf@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In case you are wondering the status of your patches -

When GregKH accepts your patch you get an acknowledgment email directly.
If he specifically rejects it, you also get feedback from him on what
to improve. He won't accept a patch where another reviewer has already
requested an update. So, once you get any feedback, revise and send the
new version.

You can follow the staging-testing tree [1] and see if Greg has 
merged patches since your submittal. Those *are* accepted patches
and should be recorded as contributions in your Outreachy dashboard.

Occasionally a patch gets missed in a flurry of patches. That might
make you think about RESENDing. See the tutorial directions about
resending.

Hope that's useful,
Alison

[1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

