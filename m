Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D76563D3
	for <outreachy@lists.linux.dev>; Thu,  3 Nov 2022 20:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667506410; x=1699042410;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=k1ylmtSFpCKHqOHSOkSC2Q9esBtNq5hKust+bwD5VTg=;
  b=UpnAfh+Ngi3oMH8eezNKlUrdpIUO14LYJhI230cUKylwJr1mITf8dEDW
   W3aEW/TArvhs8JcqP5lkIAOfqQBPThcnYYtA0NzNSaS4xxTQtxPNQ6VkP
   peEY3oMxQFAWgwSU7fpe7Jh4by5QsvCm8rVm44NgdbRVonFPA4mhpdIZr
   t5/+GJjhAl7ZVXZ8TVuSXgKXTiUbsMt4M42i385CHMkCbMYYFeFPrIGkE
   DwBi137XREw7j+i6/R0p0hB1NY8hHy3/1SaXFxOUOxX4qEgNQRqVKSWo4
   1vhzcDLTM7es9Z2nyCIfpd87B5keD0lVQKBVdL9XLff1T9yxkzcbuGRTJ
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="308509013"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; 
   d="scan'208";a="308509013"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2022 13:13:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="629472715"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; 
   d="scan'208";a="629472715"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.164.233])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2022 13:13:17 -0700
Date: Thu, 3 Nov 2022 13:13:16 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Cc: Saurabh Singh Sengar <ssengar@linux.microsoft.com>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: Outreachy Info: Final application questions
Message-ID: <Y2Qg3NuDvygS6Abr@aschofie-mobl2>
References: <Y2Qd4Ez42Hm9DYSw@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2Qd4Ez42Hm9DYSw@aschofie-mobl2>

On Thu, Nov 03, 2022 at 01:00:32PM -0700, Alison Schofield wrote:
> Hi Applicants,
> 
> As you complete your final application, here are a couple of aread
> that you may have questions about.
> 
> Community-specific questions:
> The Linux Kernel Community does not have any additional questions.
> (You can write that in the box, or leave it blank.)
> 
> Internship project timeline:
> The internship will be mapped out between mentors and interns during
> the first week of the internship. It is customized to each intern.
> (You can write that in the box too.)
> 
> Thanks & any questions, please ask. Deadline Nov 4 4pm UTC
> 
> Alison
 
Another thing you may not be aware of:

Neither the mentors, nor I, see your original application to Outreachy,
so be sure to answer the first 3 question on the final app fully:

- Past experience with this free software community
- Past experience with other free software communities
- Relevant personal or class projects

Alison


