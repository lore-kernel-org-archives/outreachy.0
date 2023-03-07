Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2680AD49
	for <outreachy@lists.linux.dev>; Tue,  7 Mar 2023 16:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678205163; x=1709741163;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+7yZkpPLnrFJpAGE4ZDu4Om6kauvZBh/RX3VPutbmAU=;
  b=GMex2icy2AsFyPezIGLfVXrqpxnWBUOBGCrN3iepevk3srgbk833juIt
   q6rFPI2zeXnvLZrAqKIsrJKsTSJ0OUrvHf2dBdCLm1k5gCJI+TUIa9E3Y
   1KkjHQ+D6Se3TqUPQFWlWXfzfvmj71k53ggtvgssVMxJ7+wqUKCsRb9IJ
   vY2QnML8UFUp46AJbyAfP4wQvXWDdsVlvg4WjqDN2STSdhRoqIjOznX0E
   xnKRRh1ZlFuFkw5Hv0Zfs7RDTa08Hv1p1nMj3f747gUxvtm6HHDYBetIn
   LDJD38xlGlf3CUaSVYDWn+tcAslXWnV2bLGrq8FXNqrGAiSc7jzmAOdJl
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="333360044"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; 
   d="scan'208";a="333360044"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2023 08:04:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="669935993"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; 
   d="scan'208";a="669935993"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.252.142.120])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2023 08:04:39 -0800
Date: Tue, 7 Mar 2023 08:04:37 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: agabaderrick18@gmail.com
Cc: outreachy@lists.linux.dev
Subject: Re: Introductory Message
Message-ID: <ZAdgleCLZ08h503b@aschofie-mobl2>
References: <ce2f4841a169f9e944184f8b58775ed28936142f.camel@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ce2f4841a169f9e944184f8b58775ed28936142f.camel@gmail.com>

On Tue, Mar 07, 2023 at 12:47:45PM +0300, agabaderrick18@gmail.com wrote:
> Hi there am  Derrick an Outreachy applicant,I'm happy to be here.Been
> reading through the archives and learning alot and right now am working
> on my first patch welcome any correction and direction as a way
> forward.
>    I. Thanks
> 
>
Hi Derrick,

Welcome to the Linux Kernel Community!

Alison
