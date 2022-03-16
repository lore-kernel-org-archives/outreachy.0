Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FEE46BF
	for <outreachy@lists.linux.dev>; Wed, 16 Mar 2022 04:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647405785; x=1678941785;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=EI4xk/JLB+foOXJCh5XEh6Ey7Di/FLxBBiIFR89TIYI=;
  b=R+V67yBrXQGwXsbVT0B+skTfLAm/dw6XGytTrQbKJLtMSdXT+EHU750w
   Ki0wxy72EhyPEqwekEwrnok+FOdXXrkO3qyk0p9qo6aDsnzvZmPe0Y7Ad
   R3EKerSPqYROr5akkGd3mF157cAkOwZFXL2BYzFpM1Ixy4LDgUAp5EID3
   fJK0plHqUsTe8wjB0jwoWQ+SQ2lYZpfpaU3/ORE54IhI8r/eKGX5KTLGQ
   XsCv5RYQwVAAafoeFrlFnprQ1iWqLNABMoqiCG+Bhq6eforzA/C+2FKpu
   WyfXejVVeL1igVvGpnTwynWzGPESKaDV8oLiCR2ex2c6xV3u3UotE4FkT
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281269221"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; 
   d="scan'208";a="281269221"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 21:43:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; 
   d="scan'208";a="512880475"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 21:43:04 -0700
Date: Tue, 15 Mar 2022 21:45:58 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Cc: outreachy@lists.linux.dev
Subject: [ANNOUNCE] Outreachy Mail has Moved
Message-ID: <20220316044558.GA1108211@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The Outreachy Mailing list and archive has been moved to kernel.org.

View the archive: https://lore.kernel.org/outreachy/

Re-subscribe: outreachy+subscribe@lists.linux.dev

For more subscriber options: https://subspace.kernel.org/lists.linux.dev.html

