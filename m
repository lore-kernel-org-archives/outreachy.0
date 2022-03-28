Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF267C
	for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 16:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648483715; x=1680019715;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=c6S/DX1lN8/J71psUubvRoHNHbeYwQoOl9UqjZLOwNc=;
  b=TQLqwQiez1YLXF8mDM/BzdNjIfhJI/NPiDFpSmUmy0bXJQWFiWMjPUXy
   BQU3B4wc8Z7R9Z53PXoAh/4XFS/88/f8e0bkkP5/uZxRNCOrZ352sYDPb
   1JvKL2/GKhqFTOY3fBqUoAyZ+xNr5tcgna5N0zddsqAdlhI+bih66Q3Zr
   uxAIT8nMy5iUzf5ljDqnX9VaWU26odxIOqGj8c2GCe/+A4UlTxkoby0IV
   7T4+MLu2afIeeuuExSQqDShcv6hZTCEHRHcn8SLTsJa78kVMbprIkVqUy
   mY5H65rNBNiG1AXNM258yA/XrRcK8+iDpW0e3dXzG39mmkyFnfvqHQ41Z
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="322227199"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
   d="scan'208";a="322227199"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 09:08:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
   d="scan'208";a="502568413"
Received: from allenzho-mobl.amr.corp.intel.com (HELO localhost) ([10.212.109.43])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 09:08:34 -0700
Date: Mon, 28 Mar 2022 09:08:33 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Outreachy Contributor
Message-ID: <YkHdgdr4UYclT9eB@iweiny-desk3>
References: <czc1Q3u3JwStzJdk-IfMTM0FJ6qL6VVwdARgZba9HUAUqTICywXm1VvrqOB4KhqeJ0n6sfrmL173Bgjyed46_BZ6u2RfuejW1SZQLcFd1jc=@protonmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <czc1Q3u3JwStzJdk-IfMTM0FJ6qL6VVwdARgZba9HUAUqTICywXm1VvrqOB4KhqeJ0n6sfrmL173Bgjyed46_BZ6u2RfuejW1SZQLcFd1jc=@protonmail.com>

On Sun, Mar 27, 2022 at 02:20:33AM +0000, Rebecca Mckeever wrote:
> Hello Everyone,
> 
> My name is Rebecca Mckeever, and I am a senior Computer Science student and an Outreachy May 2022 applicant. I am interested in contributing to one of the three Linux kernel projects, but I haven't yet decided which one. I am new to open source contributions, but I am very interested in operating system development. I am taking the Operating Systems 2 course at my school this term, so I expect to expand my knowledge during the contribution period. I have a lot of experience with C/C++, some experience with bash, and I am familiar with basic Operating Systems concepts. I am familiar with the Continuous Integration process and have used git/GitHub extensively for personal and class projects. I am looking forward to working with this community.

Welcome!

Ira
