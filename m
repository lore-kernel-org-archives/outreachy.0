Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2EB197
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 22:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678834715; x=1710370715;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=9717lGyRkWFS5GsjjEjKJ7OV/w4O96LSIj2o26Qzx7Q=;
  b=iFz6QAl/x91rUkjrmwgOnEKTYrgNudd56dV8a4pcPeXE8bb5fdmt9pb5
   XK3pZsHp5te4UYqcy5T9BM4TkV294iLp1zRLJthCqOb8XLPNRBzzWnngo
   DDcbYrX9z2+q+3Xg+r5ufeGl/Rt008v48qaiwIJv+Pm103MTAN9Ls8DPW
   YP7kiYXkImViYQUpY8yw3OIZZPX7/IMJY7eXPhljnxxmsb1/W+l8qNiwo
   dBGbq0IkIynvVok9lDfZd82G1XRPzNc5/uUeVsouyNF+aUFjuIDXbPKIK
   7I2iAiR53ni86XuaQoH6VV6jYdb0gQ1Lr24vmH/4ZptFYbXb2sIq2+MXZ
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="402430432"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; 
   d="scan'208";a="402430432"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 15:58:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="822559329"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; 
   d="scan'208";a="822559329"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.140.184])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 15:58:22 -0700
Date: Tue, 14 Mar 2023 15:58:21 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Outreachy - for Menna M.
Message-ID: <ZBD8Db61WVPsNVmO@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Menna,

It seems like you may be looking for some first patch material.

How about trying this one?  

Refactor arche_platform_wd_irq() to improve readability.
It has excessive indentation. A side effect will be
eliminating this checkpatch CHECK. 

drivers/staging/greybus/arche-platform.c
----------------------------------------
CHECK: line length of 101 exceeds 100 columns
#182: FILE: drivers/staging/greybus/arche-platform.c:182:

No warranties or guarantees on acceptance but I'll support you
in giving it a shot!

Alison
