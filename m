Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6C17C
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 21:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679262348; x=1710798348;
  h=date:from:to:subject:message-id:mime-version;
  bh=SmjcJb/4dhSQ8FRmYMLgrFtgfwPzIwZ8GXhQFd7EihM=;
  b=DGsxx1eFhFd1y10zxLcrYCu3k9gIx1nLdTxOUZM35k9ArJfVFIVDFBV9
   sTh6GDpN4dUEgBTLk1UDtJBcZ7P73XTcHiRpKNicfOm9QSCB/aEP0oTUZ
   /ekkVnqm//qzP8zUJDg26yM8IYXOHgqJLBhnqSwF63wb+AKQcT/kqu2TX
   UWSdkKvGu2c7WYQUgy5Ylgyl8aDg4c2XvcJEZuPsDYWJcHwIyrD0nAh6j
   dq9mAUZhOno9NNhzBTYvoknqDBbFXtcRjVTp3O6QCUJar9KXihUrd2PIF
   74J8DFSPlId+T0g9xPKh9Okty9Roj1WORzQVJMyGPVoDxbEn7bf922tFg
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="322384223"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; 
   d="scan'208";a="322384223"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 14:45:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745147531"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; 
   d="scan'208";a="745147531"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.14.183])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 14:45:47 -0700
Date: Sun, 19 Mar 2023 14:45:45 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Cleanup simple switches
Message-ID: <ZBeCiRYXyFyhTtGP@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

drivers/staging$ git log --oneline | grep -i replace | grep switch

You'll see example patches where folks replaced simple switches with
if statements.

If a switch only has one case, or more than one case but all result
in the same action, it may be simplified to an if statement.

