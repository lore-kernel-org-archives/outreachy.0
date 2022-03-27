Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11907E
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 04:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648355436; x=1679891436;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=gPZ9TG3dGXr5mNtHVN1K/2eGOMu2NashuOZliPBcaqM=;
  b=krEoVIF6w1vKmeiMdh3r2+0BaYS3xboNKxGRLGjDD1Lk/GHGePv2DdvM
   VR3CYiJWKn1LRjdl7w/bABkQrWuy1N0pfNeBO5rVAs8h8qhgHyh6FljCV
   BbfOHFjtgDn+YV1hX6ugVAdSaa5O3/K5bJyl5UurhxqWRtMexQKVPq2e+
   VO8EIY/F0s4XraeC+RlED+Cm45rf3tWlrwtEXnY/aXHjXtWtKYuRrkYxr
   ffUCkxa8rsgYWqqtGMVm/RcSb7z67NVjINxov7DAza0phXQY0qDuIP5uu
   4qF1bjmcIHfPi13YNHodwfIj8lXz7CLHL8ZRKBrRvkZ+tigUHOCOUbNM7
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10298"; a="258791155"
X-IronPort-AV: E=Sophos;i="5.90,214,1643702400"; 
   d="scan'208";a="258791155"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2022 21:30:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,214,1643702400"; 
   d="scan'208";a="545531373"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2022 21:30:36 -0700
Date: Sat, 26 Mar 2022 21:33:07 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Outreachy Contributor
Message-ID: <20220327043307.GB1158431@alison-desk>
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
> 

Welcome to the Outreachy Linux Kernel Community!

BTW - Applicants are welcome to explore (and apply to) as many projects as
they wish by taking on starter tasks that the mentors define once the 
cleanup patches are completed.
