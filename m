Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43571C3F
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 18:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666809567; x=1698345567;
  h=date:from:to:subject:message-id:mime-version;
  bh=r/+YJhbOlWhpD6qRW5tUMShv/dOa/2KnbFHHJmJ42es=;
  b=DFNIBicq1gubLkdK+9o92Wf73ExKqozDJiPs0UbQp1b1Uk2DJXPX68Mu
   O5a2Xvi+FLNyK0MgTfHjg/hnazlPM+xexw4HgCMXcPHO1BnxzFWr1ZN3L
   ccAICS2QrrzPbCuU07UkCgTNQlF7kKhYtp42gCr9gxnDENW+7Vn0ah2Jo
   QmhLyN3phhCRQAA1QDvOTUb7m6TgrpZk38GivVZuiPoH7+vPjn7fUZPYK
   Gc6uKLnZGX1PLGaCepD7mDpFXugK1D0iLTX3sbQ3wZXaFYIdDxTceyhKG
   ladZDXnbIBEPY8NBlokzAytjWNi5s4qpfLHDggLuiu//6u7jwaAMqzWQ2
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="288428457"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
   d="scan'208";a="288428457"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2022 11:39:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="695488793"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
   d="scan'208";a="695488793"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.1.141])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2022 11:39:25 -0700
Date: Wed, 26 Oct 2022 11:39:23 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy] Coccicheck in drivers/staging/
Message-ID: <Y1l+28m+o5IQxT/Q@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I took a peek at drivers/staging to see what you all may discover
when running Coccicheck.

I simply used the Fedora pkg mgr.
$ sudo dnf install coccinelle
(That got me coccinelle 1.1.1-5.fc36)

$ sudo dnf builddep coccinelle

From root of my kernel tree:
$  make coccicheck M=drivers/staging/ | grep -i warning

That showed many places to drill down further and cleanup.





