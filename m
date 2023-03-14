Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4BBD2F6
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 23:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678837763; x=1710373763;
  h=date:from:to:subject:message-id:mime-version;
  bh=8+aoNiunVvDmJs7wu1u25lYk84gHnVlpuVOkFTHLQ+w=;
  b=NoGP9q5y86W/nstzEABBD0FwbOfr2CPshtAkBdwhNgLyywL+PVIzCj1+
   Vf4oFSaB4vt2fuYeixy3fetE3Bv8O1mETv1gsJWpF/OeaUs2+dZ3B44ZB
   GAOpMTQK0gi/IRuirMd036843RmOqpaZiJAaAyIsAod+CZJG3EAG+iiSI
   lDyAyUOEUxOyL7giXXKXF0LT6n0rR8G08WdNMQydgdtEoWGtA4rhcTBm2
   odfQ8QtTiMriBXAwW0tKNthtArcbuR2vjDZEFuQtPiXYaIhq1KHf4ow+A
   wQ0w4ecoL3eiheEqc5GldinYAlg142Xy7iJlxxtZrqCO6+UzITWmXp0To
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="339934659"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; 
   d="scan'208";a="339934659"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 16:49:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="925123401"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; 
   d="scan'208";a="925123401"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.140.184])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 16:49:22 -0700
Date: Tue, 14 Mar 2023 16:49:20 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] Ask for help finding cleanups
Message-ID: <ZBEIAKymniRkamjr@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Applicants,

We want to support you finding cleanups. Today I spent some time
looking through staging and am working up a small todo list that
may be useful.

I posted one such cleanup to Menna because I saw them submit a
couple of attempts at a first patches.

I think that Kloudifold, Khadija, and Sumitra are busy iterating on
their first patches. Keep going! Ask for help finding your second
patch if needed.

Anyone else who wants help in finding their first patch, please reach
out. I imagine their are some folks exploring here, that I haven't
met on the list yet. 

Finally, it seems we won't be holding to the traditional 10 cleanup
patch requirement this round! Please continue your efforts and I'll
redirect you towards projects after a 'few' cleanup patches are
accepted into staging.

Thanks,
Alison


