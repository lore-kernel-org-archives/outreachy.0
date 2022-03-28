Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0A27C
	for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648483653; x=1680019653;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ylB/rCQh06IOSU7YldNY7Skz199d2qD+hrHYRocrvvA=;
  b=Bx/voPT6KEH49joQLj7VLG1jeHTa7L/reaobv/q5KOdIisUsvjCEYelh
   rKfojXD9q++OQM7mqBBiTsxd3tktwcacStc1GAujR1+mzpCf3/vn/3DgR
   SmGU022qUbp20ezJ2CqWt0R1jo6P2g34rOV/G04zBGcZuS27o/XMgO2tD
   ghLiqf1GQJlJtJmHa0z32oM3cKlkyvP/L6Ygv9gXCKsPXAX1LB4ov6BQL
   xLjA1y7WKtRlGjpZ8Y7dQNp9CU0ZSBGs62Rm+w5+zcQeSgj7mbUjbtKuQ
   VqENdOKDY533mpMDpPsabp1NKfWXWGQnqQXn5f5jpJ+e0nLZxs8mIsAbb
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="238972369"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
   d="scan'208";a="238972369"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 09:07:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
   d="scan'208";a="585246306"
Received: from allenzho-mobl.amr.corp.intel.com (HELO localhost) ([10.212.109.43])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 09:07:31 -0700
Date: Mon, 28 Mar 2022 09:07:30 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Formasit Fokunang <formasitf@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: #Outreachy-Contribution
Message-ID: <YkHdQkgXxS9bX7s1@iweiny-desk3>
References: <CAL1a2smMNX16+hNuCjJJ+Yq8iU0+0hvh1AyCf-K9imtBM_vHWA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL1a2smMNX16+hNuCjJJ+Yq8iU0+0hvh1AyCf-K9imtBM_vHWA@mail.gmail.com>

On Sat, Mar 26, 2022 at 09:42:59PM +0100, Formasit Fokunang wrote:
> Greetings,
>   I am Formasit Chijoh a second year student studying Computer
> Engineering and a beginner to open source contributions.I am
> participating in the Outreachy 2022 cohort.Due to my keen interest in
> operating system development especially the linux kernel, I would like
> to contribute to the Linux kernel project (Refactoring HIGHMEM
> Interface) proposed for Outreachy mid-term  session.Contributing to
> this project will go a long way to improve my knowledge about open
> source and equally improve my skills to becoming a software
> engineer.I have a general knowledge in fullstack development,
> shell(Bash) programming and am equally good in C/C++ programming.I
> will be glad to learn and apply from  @iweiny@gmail.com   and everyone
> in the community.

Welcome!

Ira
