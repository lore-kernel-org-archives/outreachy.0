Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B434C8A
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 15:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666108156; x=1697644156;
  h=date:from:to:subject:message-id:mime-version;
  bh=JIqDBp91E2x0pj5SOK89SPjWOogxMFC+47cxQpMvfno=;
  b=i0Bv/z2nDTE/ATmTtU+7j26ZxX+k0R9TXOe9i3ESqt9fpPcP7ByIfbOh
   NfCZsHFk1jCRpLeU0RY3MrigVVLXttSAvRw373YLBFIUxT0J9EpijfTsS
   /Je91gwUCsRhehC1E70A/Pkx9o7ChKKFdNK+KpPhRSVWyQ1Sra2gdZ1qO
   18e8WIgh7kuRwZlruS8G7hxgS6KGEGafRQshNcTmGaJGonXPxZlSwltli
   iFd2gThQPflLdovNKGHrKZ2o1P7x6dZA01mPZXoxJzrouyOxSFPfsU0Jl
   T/QdELH16ZcXuXqCevKE5RqE8qdgWOEguub/vAXmgObKBOwhTflJMETOX
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="307230875"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="307230875"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 08:49:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="771271315"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="771271315"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.6.93])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 08:49:15 -0700
Date: Tue, 18 Oct 2022 08:49:13 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] How to update the First Patch Tutorial
Message-ID: <Y07K+awYX+9wLq9q@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


We encourage updates to the First Patch Tutorial.

If you update the doc, please post a message to the Outreachy
mailing list showing the update you made. If you want your
potential update reviewed first, ask on this list too.

I am a 'watcher' of the page, so I will be notified and 
review the edits to the tutorial automatically.

The directions for contributing to the First Patch Tutorial,
is a bit buried in the wiki, so I'll point it out here:

See section: Tips for Applying to be an Outreachy Kernel intern
"Bonus points if you make a kernelnewbies account and correct or add
knowledge to this wiki. To edit the wiki, create an account, and then
send an email to the outreachy@lists.linux.dev with the subject
"[KERNEL NEWBIES ACCESS] username", where username is your kernel
newbies username."

One update I would suggest is creating a sub-section about updating
the wiki - to make it more obvious.

Thanks,
Alison
