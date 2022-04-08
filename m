Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F6029A8
	for <outreachy@lists.linux.dev>; Fri,  8 Apr 2022 18:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649441047; x=1680977047;
  h=date:from:to:subject:message-id:mime-version;
  bh=bdU0Pj6Dg9kZOKmIgtaXuVXUYahm15nCbMbPdKKuSg0=;
  b=RweQ4aNRKqCB8BLe0oVFvBh01HSXV/WxOhWlQqQizoIDenmfd9lfyuNV
   Wv9ig8igWcHpJoUfMca8ig8NKKkTGL208vp2HRY4SSKBtFGvOr32/YZs9
   Gg21Iy4cMZqUne4cDyCYeW3oS5QOzMqBNqEqnjFgn09nKBw9XJWt2qv8X
   zoSF85QZ2dnqrYFTTiwmraqZ7pl7acn0NXahHSPopg3lf2kklR6W49Pzk
   62mzpIiaED1/9UxIyqlD9ppjo6pcD0Us26KzjmqTltA4xZ7jzWWFf9F15
   E3+OLfM9H6QHYhSGe9GjBH5BrayTzeEQKysMJP8Uz8KddXp8J0oKvXwWb
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10311"; a="261833208"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; 
   d="scan'208";a="261833208"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2022 11:03:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; 
   d="scan'208";a="589311172"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2022 11:03:10 -0700
Date: Fri, 8 Apr 2022 11:05:15 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Shortcut: Recording Contributions
Message-ID: <20220408180515.GA1218463@alison-desk>
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

Rather than adding an entry for every cleanup patch, feel free to add
one link to your patches in staging/testing:

Rebecca, for example, can do this:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Rebecca+Mckeever

You can add text to call attention to your best, most challenging,
or most interesting patches.

For WIKI updates, or contributions specific to a project, please add
separate entries for each.

Thanks,
Alison
