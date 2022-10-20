Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44555C96
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 17:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666287235; x=1697823235;
  h=date:from:to:subject:message-id:mime-version;
  bh=kn0z8uiT1Xi2vwwo8HnZhd7+60FtheSC3zmmMZrowUQ=;
  b=L93iocBl9CeQxV9ufrRVoVNEectYELNF+SRlul5DV2CSXeXbkkkVn36e
   3Xlt0s420eRPt9XrN/NjflTrPaijbkdL93ODdzVglwkaQ/pDLH1B/3Gfv
   83ECCEOoN1fbGFMYod4xkcIjYsJ9qkaxVkGp+qMPLW1kMeCZuUPSxjt/y
   ANYA7BcqVGGKmI2gWyPS2T/Lv8Yfpuwt+6bp7uY9VtI0DjVqIGWWB+RnD
   PmkwV14AyBEiAom131Tej+PdQlVFeGXlBn1QSmBVDT/PxXJMcVtO7ObhS
   cXG8v/fXqSAVyyaxrlmxfdNUcyeqWHGaYRp9UtNV2SAb5XNmi1qOh9wdZ
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="306778252"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="306778252"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 10:33:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="632391420"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="632391420"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.41.40])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 10:33:32 -0700
Date: Thu, 20 Oct 2022 10:33:30 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Recording Contributions
Message-ID: <Y1GGasJ+q86FZqW2@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi Applicants,

Thanks for starting your applications and recording your contributions
in your Outreachy Dashboard.

Rather than adding an entry for every cleanup patch, you may add one
link to all your patches.

For example, Emily can do this:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Emily+Peri

That'll group your cleanup patches into one contribution.

As you have other contributions, like project specific tasks for
Coccinelle, or perhaps updates to the First Patch Tutorial, record
each as a separate contribution.

Thanks,
Alison
