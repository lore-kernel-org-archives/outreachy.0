Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938B77C
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 01:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679102003; x=1710638003;
  h=date:from:to:subject:message-id:mime-version;
  bh=jPfgWqxet+kJCVNtG4++Z3SQ+O3+FNKfnmv4QNJ8n8s=;
  b=RpPLgLN/ZkKtB8xOApwo9n5BRw3fJofSMW0dENZQULzVk45Wmhumpph+
   7gevUP2H6vNcPINWG2iSBJaBWnrKw+5lj28rdfBrZx9r354DlhroT0aSH
   Cldc5bmpz03dJReuRoAvzj1lgUC0tDBBxUwHPmxWcjn9Vqi+Man58Cvyc
   p1eP6TQF3rYNn023k1UM9e0b5UMmN1iVFJtKDO4nEPYK37yeOdfK6WFof
   GoTFMRVHOyA51HRlYRqCHXeYncTaVhC9SlMmX5PHexIB+ClD7pSlhD/DZ
   AJ27WXI1Xi0n6bleJ2+tgw1vT+aOMqMSW7trs1n0jRMGXAr6k0fK+NRHo
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="340750351"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; 
   d="scan'208";a="340750351"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 18:13:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="712952742"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; 
   d="scan'208";a="712952742"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.105.44])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 18:13:23 -0700
Date: Fri, 17 Mar 2023 18:13:21 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Updating the Tutorial
Message-ID: <ZBUQMT3q/LDoRLfR@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The tutorial [1] includes directions for how to request edit access
to the tutorial.

Please follow those steps to request access.

[1] https://kernelnewbies.org/Outreachyfirstpatch#:~:text=Updating%20the%20Firstpatch%20Tutorial


