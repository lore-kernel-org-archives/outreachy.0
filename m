Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667AB125A3
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 12:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="JlB5hU/0"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696510297; x=1728046297;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=x0v7VoFLP43hFWZghiTdmAOafVFquUWh+bDyAn55n80=;
  b=JlB5hU/01hHRJnSMIsMLzCiLqwy2Uv8kaFdOI+sU5Lxqg2JIkJxShYwF
   o3DHZ1xeyRC+rsOBOXUeaiGXZv3BQ6qkDbaFAKqo0gPBa8n/YA5awOj17
   KFxh/uy9mwcI2P0eP9EiH1iUDqQduIgv3OciXDs6t2VWOVw2k8/fnVPz+
   MpC904Jbz3WuymyUTU/akxfraIbJ9mGgpLkieJ/n0pGRCcIZES5zO/Iwv
   GBC594rvilky4GIwqR/lsPnpoEAVq2qYL0M4bDxTkQC9yEehvZKfJU0FN
   uEMDhjRl/NDDChtXzqrzhuQ4z7Pk4vBHy1LFDIYB6H6Y9bdxH6lym4q1A
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386316355"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="386316355"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 05:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="786958041"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="786958041"
Received: from yklum-mobl.gar.corp.intel.com (HELO intel.com) ([10.215.244.7])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 05:51:22 -0700
Date: Thu, 5 Oct 2023 14:51:16 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
Message-ID: <ZR6xRGp4uD+jbzJ/@ashyti-mobl2.lan>
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
 <ZR0NRvHkjcWIv9+f@ashyti-mobl2.lan>
 <CAKrXSsafYQSb2YH128da-+CcnxejZ4V=n-xO5UDmTJLUk_zG8A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKrXSsafYQSb2YH128da-+CcnxejZ4V=n-xO5UDmTJLUk_zG8A@mail.gmail.com>

Hi Gilbert,

> How do I check to see if my system meets the system requirements?

If you run lspci, you should check that your VGA controller is
Intel.

E.g., in my current laptop is:

$ lspci
...
00:02.0 VGA compatible controller: Intel Corporation TigerLake-LP GT2 [Iris Xe Graphics] (rev 01)
...

Another way is to check the modules running in your PC with
lsmod. The module (i.e. the driver) is called i915. In my laptop:

$ lsmod
...
i915                 3756032  19
...

Besides, i915 will be the piece of software this project is based
on.

Let me know,
Andi
