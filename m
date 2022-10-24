Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E523D8A
	for <outreachy@lists.linux.dev>; Mon, 24 Oct 2022 16:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666629756; x=1698165756;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=+WnNB0hwgIXSEGAfG416XcujDhFilwPkvrhXdvlXxzA=;
  b=lZyH/C8YCQ9+o3Zng8lGuF8b4dyVTDXtQ5HhCMrY7S0dlRZEfmvD8Glk
   ipuMmUN04r6Iq6e1yZsYdqvMfcf5ZiUf7LXWNCJqflMUyc/f06rJBKkma
   9zBO5gt5bvUe2OxqyoF/Hj2f0nWmvwFHrSSgmPIl09nEbmBx6GVfkdYqT
   S8AIfnQlzdcSxfdlwdmDLPMK0rUpg+pdfgESQk32XreqfNSmAVKcEQzcM
   RDu9cI/9tFRDR5TdbCEuY39mubpKiE62Vf17/NhS1OeRyneD5JKV0v3kr
   LHxdAEuwmw2WDJP8ZSqruMwr4VM9QUPJw58llA6ccaAvsBSrmB/ALx3Ee
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="309155490"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; 
   d="scan'208";a="309155490"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2022 09:42:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="609259215"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; 
   d="scan'208";a="609259215"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.31.116])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2022 09:42:35 -0700
Date: Mon, 24 Oct 2022 09:42:34 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Gabriel Lima Luz <lima.gabriel.luz@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Info] No staging/media patches
Message-ID: <Y1bAenbEigs4EVqg@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Gabriel,

Welcome to Outreachy!

Media drivers are excluded from Outreachy, due to reviewer
bandwidth. See the note in the First Patch Tutorial. If it
is not clear, please update the Wiki to make it clearer.

Thanks,
Alison
