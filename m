Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CDD2F37
	for <outreachy@lists.linux.dev>; Wed, 22 Mar 2023 18:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679510681; x=1711046681;
  h=date:from:to:subject:message-id:mime-version;
  bh=kZTIys2hfIBVkaCNtF9g8cA5+NWe72dK4bkZ/HhYhy0=;
  b=fB1900fsksOplK48p3Ubu34FeDK7kolxnJ2Le/h9FC5mm0Qs9BvFyjYr
   O+xq0fiPDQA9IbGKgIZqa/tiy1MXTv77vdNA6JtwMnHdBxMDhR+FTR7BQ
   GphcEqRAGVq6ygFPifGZtbUAAYn2R0jGiMCJrk+DgUR2Wh+g+KSP3fNl+
   F2prVWlql7J8oPyrIID70rMOL93gEQKWndTScLbrGbPz7POLnW+HGVuWO
   pKCNquoaYLCVDSo8tfyTN1yIyNEt5Uqx1pOEn29lzKi//cKPjK2/2sLbo
   N2Lf6EUcccCNcXGO1+SBPwwvv3+sSSfGNqgG5oKRBz2Xgoa2y8DD0wAd6
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="336813594"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; 
   d="scan'208";a="336813594"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2023 11:44:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="771154466"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; 
   d="scan'208";a="771154466"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.252.131.90])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2023 11:44:40 -0700
Date: Wed, 22 Mar 2023 11:44:38 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Coccicheck - sizeof() min()
Message-ID: <ZBtMlrEZW2OMLTOD@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I took a look at drivers/staging to see what you all may discover
when running Coccicheck.

I simply used the Fedora pkg mgr.
$ sudo dnf install coccinelle
$ sudo dnf builddep coccinelle
$  make coccicheck M=drivers/staging/ | grep -i warning

Here's how you might drill down further on a couple of the reports
warning about sizeof() and suggesting min() usage.

Look up:  what the functions expect,  related merged patches, and the
lore history of those merged patches. Lore history is interesting because
you can see the questions that were asked/answered before the final patch
was merged.

Something like this:

coccicheck reports:
drivers/staging/r8188eu/hal/rtl8188e_hal_init.c:415:77-80: WARNING: Use correct pointer type argument for sizeof
drivers/staging/r8188eu/hal/rtl8188e_hal_init.c:100:77-80: WARNING: Use correct pointer type argument for sizeof

So, I do this:
$ git log --oneline | grep sizeof | grep staging

Then I go over to lore staging archive [1], and search on the subject line
of a few of the patches of interest.

[1] https://lore.kernel.org/linux-staging/

The min() warning may be a good Outreachy patch also:
drivers/staging/most/video/video.c:176:22-23: WARNING opportunity for min()
Just like with sizeof....learn from the history using 

