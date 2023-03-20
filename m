Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C476F10E5
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 04:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679287304; x=1710823304;
  h=date:from:to:subject:message-id:mime-version;
  bh=EQPkusH/za2/qsCuraV4e8z/zBX79eA4IoerQdWXp64=;
  b=ecDo0B16iJS75nxXeEeZ32CNGwou863mEg+zSKs0J8czkOCwwVC0XZfr
   FQckNUWiQvPCLD0T//SrHdGfrg2vWZhFHxNsD0kYHhqxJNJyd/41308pu
   iVEpF9gjL4XW7Jslii/fos6HtDix9akHaOr6sMFu+cr+a9EJSfShlymwV
   VOTRXJBeIIBztCvmMhZyo+zsD4caEHpqlNpafwllSJu/f/p1jD1db3nOY
   wB0ILlmyk+OOsFHx6mW/rXxe/bGeOI2/c3E3fUxKnqVEYCbWSj8vuev0t
   C2NNnRLYk0BD0dZ1pPmQYa/k2I2D5o4nI8OSCDOTK+4IyJYR06FhF7W/X
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="403444617"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; 
   d="scan'208";a="403444617"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 21:41:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="824343353"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; 
   d="scan'208";a="824343353"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.14.183])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 21:41:43 -0700
Date: Sun, 19 Mar 2023 21:41:41 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Record your contributions
Message-ID: <ZBfkBa+Rn822TJ/6@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Please record contributions on your Outreachy Dashboard.

At this point, as long as you record against at least one project,
mentors will review that and invite you to explore any or all projects.

A contribution is a patch accepted [1] or a tutorial update.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

