Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250C68F42
	for <outreachy@lists.linux.dev>; Fri,  3 Mar 2023 19:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677870590; x=1709406590;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=lTsyhKuJqhj4bHpaGHZijuM1auAlIq0d2D874HOIj6o=;
  b=hCV/X5Qmz1K6yFBNABFqC+ELM90mVh7WaBx2/AGUqbegWhAc8z8cMPny
   YmUEQ2zs/ggDyuu/iScbk7++AWhNL3SbIK85ez6zvnU5B0J7uN7O60tPY
   /FO6Onk6LeE7dms+IzzxnwSJB4tosM5eMG/ky9c/qIiKTjR10I8sb7p7z
   5uTGJqAusFm8aznCpln0f9ZDlttX5qA/f9n4FBHkXAW7x9Y9xNbKQFLzp
   h0q6SBRyRwu40ckGmQJ/rnDL3CppNcVLshO/hNBNCBSAMGU/oT6F/mt8I
   MHJG18/GwwAA5gUTT1aLIUIH2FFZMx1q8jgQQhrfNiF82ffbVb8B3PwYh
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="335157835"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; 
   d="scan'208";a="335157835"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 11:09:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="675462907"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; 
   d="scan'208";a="675462907"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.155.56])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 11:09:25 -0800
Date: Fri, 3 Mar 2023 11:09:24 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: gregkh@linuxfoundation.org
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>, hverkuil@xs4all.nl
Subject: [Outreachy Info] staging/ patch restrictions
Message-ID: <ZAJF5E+1HVkN294U@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Greg,

We are about to kick off the next contribution period for Outreachy Interns.
(March 6 - April 3)

We'll run with this restriction: No patches to drivers/staging/media.

Is there anything else you'd like us to avoid, or perhaps focus on?

Thanks for your support, 
Alison
