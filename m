Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C9E8F69
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 16:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678810540; x=1710346540;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ytXgvxh+vLqfyiV587d65fSwkExIf0+YV1ERhaeAWR4=;
  b=aJ+nZOW5Py+zMrVdMZin3t4UYmJmV/0oKvMadi8hoRcMgeYUYflbZmUd
   IKiwqA/1nPKSlfKq9SdIZv02TneUDG2YwjgYB7RVb0Vqo+a+edW6nMRff
   LfWGiNLfyfaXwaCvvG59xaFXKD6+ijGi51J2IutzEYdRwZZLaZqkbSbUq
   crg3BodllgZ/nDHj6+4BL/VL4/Hh9maK+FkFaLsXIy2SMZlsQXoxzAg/a
   II92HwIO5RPLfWM6YuHJPTOVopZU919iGkJ9QQoxsPL1RsbJxhvxXT4fv
   LLY6arnOdLRJqcIDpB7FRRG5ugmauI6Hhhf3ijaH3uQMix1LIp3fOsGSy
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="400057636"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; 
   d="scan'208";a="400057636"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 09:15:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="681488833"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; 
   d="scan'208";a="681488833"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.140.184])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 09:15:10 -0700
Date: Tue, 14 Mar 2023 09:15:08 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Kloudifold <cloudifold.3125@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Help in patch message
Message-ID: <ZBCdjKrfu/qe71bK@aschofie-mobl2>
References: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>

On Tue, Mar 14, 2023 at 09:53:46AM +0800, Kloudifold wrote:
> Dear Outreachy Mentors,
> 
> I hope this email finds you well. As an Outreachy applicant,
> I have been working on submitting patches to the kernel, but
> I seem to be having trouble getting them accepted. I have
> read the Outreachy tutorials and tried to follow the best practices,
> but my patch messages keep getting rejected.
> 
> I really wonder if I have some kind of language problem, I don't
> actually know how to say something?
> 
> Recently, I submitted a patch that has been rejected, and I am not
> sure whether to go ahead and fix it or create a new one.
> I would greatly appreciate your guidance on how to proceed
> 
> Thank you for your help and guidance throughout this process.
> I look forward to your response.

Hi Kloudifold,

I echo the other responses here. 
Before you press 'send' on v3, walk thru the tutorial again. There will
be parts that make more sense now that you are doing revisions and 
that you have comments.

It looks like you will be preparing and sending v3 of your camelcase patch.

The biggest thing I see recently is compile errors on your patch, and
others patches. Sometimes lkp finds compile errors in build environments
that are less common, and that is less of a concern. They need to be fixed,
but I don't expect you all to run all build environments. That is what lkp does.

That said, be sure to check for new .o's each time you think you are 
compiling the driver.

Kudos to you for driving one patch to completion before sending out
another!

Keep at it!
Alison

> 
> Best regards,
> 
> Kloudifold
> 
> 
