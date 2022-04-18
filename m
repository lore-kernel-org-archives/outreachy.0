Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047893D61
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 23:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650324699; x=1681860699;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=Zs6YGrkflRG9Mbz0XoH+y537+hSe9P0Mz4zBad4d5mc=;
  b=alZ0mpDSmd02JDd3htcVMUCQ4jGHVAyV/FXq/cmNJYT+FU8lfAkqcqbe
   YwJf0ED094Gc2UGk7GLS4oKfTg+zMpM5Kjpw7QeAfbN4PPOuBKTp919gw
   xMfTUjHvaClUHBNkdtFG4EXDznG0E9ENIhwJp7xhUL79MjwuEicLhbNll
   /Q0NkA8+puMpmV736PJu/6wXzT27cg4nC1aB0LUaJL19LZOqhd44f/CrA
   zx0iy4hp9wLsYJSqdcPUbsZgi/F1m8E+xxhe7S+AUMKWYOW8XRpo1ynYu
   WQhRxdEhNoayBbeWU43yqjQipl4Ya9c76Nk7Lq2CoXRa4KOB1Rbddc0a8
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="326533032"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; 
   d="scan'208";a="326533032"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 16:31:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; 
   d="scan'208";a="575802814"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 16:31:38 -0700
Date: Mon, 18 Apr 2022 16:33:22 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: aliyarahmani786@gmail.com
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: staging/media patches
Message-ID: <20220418233322.GA1266085@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi Aliya,

I just realized you've drifted into the staging/media drivers.
GregKH won't take those patches. See [1] and [2]

Don't abandon though! For the ones you have in flight, follow-up on
any suggested revisions, and then wait and see. The media maintainers
may pick them up. 

Go ahead and record them as contributions, noting their special status.

Please don't submit any new ones to staging/media.

Thanks,
Alison

[1] https://lore.kernel.org/outreachy/20220329201407.GA1171146@alison-desk/
[2] https://kernelnewbies.org/Outreachyfirstpatch  "Contribution
Instructions"
