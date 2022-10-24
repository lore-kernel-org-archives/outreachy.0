Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18422620
	for <outreachy@lists.linux.dev>; Mon, 24 Oct 2022 01:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666576274; x=1698112274;
  h=date:from:to:subject:message-id:mime-version;
  bh=vsKfZRnV0fNBamtJMBE3KA+Ybn1Z45UKyuWmEpUu0CM=;
  b=bux9XGttTBL7o7FWzFX9hTKJ750HL6I1dGlsJmn4+IefrqI80Jp53IRZ
   +4Nw4xs9SL+PcHKqs9eFN2exQnwGh5rDLFrcP7LonMhZZB1pC7AO6mZM8
   bLXBPO5joSpnE6yS2FoO1ZduytfWIuJmsDjcb6uFEeTb6GK9vzaQODH3U
   hMGBkd/deb7Ggn49bJzxwybg2UVLv/m/X6mstSUyJ3Jfb+0CRFR3h+tNY
   vyDh12b0EBlc95jxj/4tGPDs/83PpdsJaHUMCbJse39I5TkMargj68Oxu
   2g9s8YOj6KCoLDZeb78R8rrsadxfU+M/IH4UMZjx42kQi3d98K7l/cLrn
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="369387797"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; 
   d="scan'208";a="369387797"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Oct 2022 18:51:13 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="694389865"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; 
   d="scan'208";a="694389865"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.5.7])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Oct 2022 18:51:13 -0700
Date: Sun, 23 Oct 2022 18:51:11 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y1XvjytS2GaafmyJ@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Greg KH has mentioned this a couple of times lately -

>> Any reason you do not have "staging: vt6655:" as the prefix for
>> this 0/X email subject line?
>> 
>> thanks,
>> 
>> greg k-h

A quick peek in the tutorial tells me it could be made clearer.
It needs to explicitly say the prefix is required, and then
make sure any examples do it.

Thanks,
Alison
