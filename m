Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727071385
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 19:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650395317; x=1681931317;
  h=date:from:to:subject:message-id:mime-version;
  bh=yjTXxRuIxHULOmZiZXdIY1wpDQq6dpQK2rY/7qeZVZ0=;
  b=AMiKb1rp4qY4DktwFjRzF//nMa3Iki65l2jv74RYGcDmKifmhkZ8uUUZ
   2vsMgRWyoJEnBiDTz0qAN1ZSPw4e6m2YQkVL7Mf8iYrPelVWoOirSMHxn
   AIRV8ceRFp+HEMHtYYW/bgh1dNDlXs5HJOr0xdirnJmb2GRH8MkoBnAgU
   U/kLTJx86+5YqlYW8j4jX8fpVC1voQz0MgPALBp77/iWMQ0bQo6J7r9LW
   FSGcWIyL9vVMhWrK5v2xK92wT2nRgRum10m3+Q3BStynoNkjK0BJ20HIf
   8kPwc8GJib8jeJCx6h2hr/z/UGZbsjPf8dPiEJKMvD+6yXFr66t/bkl8A
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263312977"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; 
   d="scan'208";a="263312977"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2022 12:08:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; 
   d="scan'208";a="614117467"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2022 12:08:36 -0700
Date: Tue, 19 Apr 2022 12:10:18 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [FWD:  wait for GregKH & staging-testing]
Message-ID: <20220419191018.GB1270760@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


+outreachy
Seems more folks are probably waiting on Greg.

----- Forwarded message from Alison Schofield <alison.schofield@intel.com> -----

Date: Tue, 19 Apr 2022 11:57:37 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: jhpark1013@gmail.com
Subject: wait for GregKH & staging-testing


Hi Jaehee,

I want to suggest you hold off on further revs to your latest patchset.

I can see GregKH hasn't taken any patches in 5 days. I hate to see you
rev'ing when GregKH might take some, or all, of your patches, as is.

Sometimes he takes pieces of a patchset, which leaves you with a 
smaller set to refine.

Watch for email from GregKH, and/or watch this space.
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

I think it's worth the wait. Perhaps you can focus on something project
specific while you wait.

Alison

----- End forwarded message -----
