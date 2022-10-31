Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8D67C
	for <outreachy@lists.linux.dev>; Mon, 31 Oct 2022 20:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667247580; x=1698783580;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=LiPR9YIbTvXyLZElh/8qV7hr8XsNON+HcnBm9X56Ahw=;
  b=LFPaoJcPPvpvi7h18bM0aYLRiHwN039/SxPNp9TIgWB7TFQ4QJO99Cz6
   NMkior8wi4WE6kcwPM4LboP5wrAa9vX8efwf94vvbpcgkI6kmiZ4FBI98
   9ldGC/FrbubTdQcEPZIBCozhEDPrZt68+MzyIsEjl+tUWieyX7Tc53m4T
   y5UWrV1gON3SDZ40eamPUqDuNOhYFJi91RLIpcd3Ux+glAKaCkvH7begx
   zIDStZolq7tmm7o3jFdG9ZMWbpUWm9boHVGjtPjDH5PwrQSpH+vTdSsk0
   /VGMv3rH8aErqAtxr/seldj2ZZjX592FdfoeR91Jc+/VgcgfBJDgqDyze
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="308990574"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="308990574"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 13:19:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="664916177"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="664916177"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.58.216])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 13:19:38 -0700
Date: Mon, 31 Oct 2022 13:19:37 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: in-progress patches
Message-ID: <Y2At2RNzdNYzPxXd@aschofie-mobl2>
References: <Y2ANlqpqCgnt4xtY@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2ANlqpqCgnt4xtY@debian-BULLSEYE-live-builder-AMD64>

On Mon, Oct 31, 2022 at 11:31:58PM +0530, Deepak R Varma wrote:
> Hello Alison,
> Thank you for the heads-up about the up coming deadline. I am still in the
> middle of closing the patches and they are being actively worked upon. Can such
> in-progress effort be included in as a contribution?

Sure. Just state where you are at with those.

Regarding in flight patches as of Nov 4th, we still hope that folks
follow thru with their in flight patches after Nov 4th. Actually,
we hope folks keep contributing to the clean up efforts in the
Linux Kernel.

I'll post more about this list quiescing on Nov 4th.

Thanks for asking,
Alison

> 
> Thank you,
> ./drv
> 
> 
> 
