Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CD715A4
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 04:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648354901; x=1679890901;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=nSqbs680vrqBB0tXtf7W2KanzD+dzot5mVs8gL8PkY8=;
  b=O7Vrd4QR9Knu6zHrRpfxW0E375Gfl4k7YEKaoG7trFnB229np99QX/r9
   7EjylEz5FP3XiV6okoTIXefZa5DHlhH5pSwnnTsRp/3EM1/Dx5LNzkH4m
   Pz+CDrhYe8u7Pjl3UrCuih48jbNuPhzRG2w1GKEVNDRBbRu3FuE7Gpijf
   irYRFa2hOTkdSJ3SqlkrVyjjcRFBW6XGgCnyyHWA97pUT6c2R9e2XyTT9
   YGA8p1ez1hsL+rd/VfVpRBs5r1+Aq/cAlDmH1HkQ3CjAVwYXKfMxNwLhw
   257QbWjQhTQZO2aw2PATzQSNDHBwToQRCY/jBHshYqmG+JdQD16PTVtZE
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10298"; a="240977177"
X-IronPort-AV: E=Sophos;i="5.90,214,1643702400"; 
   d="scan'208";a="240977177"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2022 21:21:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,214,1643702400"; 
   d="scan'208";a="520614739"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2022 21:21:41 -0700
Date: Sat, 26 Mar 2022 21:24:12 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Formasit Fokunang <formasitf@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: #Outreachy-Contribution
Message-ID: <20220327042412.GA1158431@alison-desk>
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
> 
> Thank you,
> --
> Formasit Chijoh
>
Welcome to the Outreachy Linux Kernel Community!
Alison
