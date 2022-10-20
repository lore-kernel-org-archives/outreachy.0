Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75375C96
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 17:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666286829; x=1697822829;
  h=date:from:to:subject:message-id:mime-version;
  bh=46u4QZ1bT1g3HXeKU6+AgyUtr//z4xnXVKDfgaC9GHI=;
  b=iX6Qb6Vsf3sRwiTYFdB0wgx2j84IVfSU9nmq3VYDVp1oThcmgosvn97X
   LJtQGTcel3868Y0FPEZ1u9YwfRNL00jm4pqdqvluHm5pHHyuMw8CaHpKn
   6mg9Dly/db5EjKfc4q+rzq79lEx1fYCWjOOsIrm64rtO1DAjRPEreBJBO
   X9XJannoxHVljAIkaSKPRxAAsdp/k2Qw3DASl7c6zL4AitPV3VNKCVK86
   1RRx5tLnnyKKPVkiFcT4ajWU2pJkGnMBS9zp0Sryyn+/wmOGewGw+TlmP
   ErCuE6eWW50pMSJZuEVj85V+lRMPxiiRk2HIPtZh3Wttz8k9yOBFlCiC+
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="304396734"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="304396734"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 10:27:07 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="632387036"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="632387036"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.41.40])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 10:27:07 -0700
Date: Thu, 20 Oct 2022 10:27:04 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Track patches in staging tree
Message-ID: <Y1GE6ImSoBuYCTjT@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


In case you are wondering the status of your patches -

When GregKH accepts your patch you get an acknowledgment email directly.
If he specifically rejects it, you also get feedback from him on what
to improve. He won't accept a patch where another reviewer has already
requested an update. So, once you get any feedback, revise and send the
new version.

You can follow the staging-testing tree [1] and see if Greg has 
merged patches since your submittal. Those *are* accepted patches
and should be recorded as contributions in your Outreachy dashboard.

Occasionally a patch gets missed in a flurry of patches. That might
make you think about RESENDing. See the tutorial directions about
resending.

For example, at this moment I can see that Tanjuate, Deepak, and
Emily (sorry if I'm not recognizing another name yet) had patches
accepted in the last couple of hours.

Hope that's useful,
Alison

[1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

