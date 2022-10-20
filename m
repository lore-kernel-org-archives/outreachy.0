Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C015CA3
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 18:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666289372; x=1697825372;
  h=date:from:to:subject:message-id:references:mime-version:
   in-reply-to;
  bh=e3/cBLbpNsiNxOZNcr+v11R4wu+Sdc2NNAGkq0alOJI=;
  b=IiVmCPFBT9y8VSkVUnularJGEnmMiYDVjLueFZfYS2tsGNZ6c3rkf05m
   ZzJ/0iCgP/IWrNvZ0+TAfzzs2gSXAtCo8wmby68wJWOW1+aSYWTe2grqD
   sXCOv1SzZwijkEwsWMU/l2eem59wnQXwcQeGlFUxNtkJCBCUhWeVhHH74
   XKc8jAdj8Yk+GPSzChrva6FqtkwpV5CmEe724QTxBWzn8I1gM59by473a
   zwiwRrMnfIfVzVCNFF32qiJ6rFC1ZPj+knBtjokxodxzg+Xi1fTXnTQ/p
   TGB8qA1TOMSnfN5RexRnZeRe0N+/6RJR0b4JXl6ALVq9kEuTWyJikBxtx
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="371008529"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="371008529"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 11:09:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="959106473"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; 
   d="scan'208";a="959106473"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.41.40])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 11:09:30 -0700
Date: Thu, 20 Oct 2022 11:09:28 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] Track patches in staging tree
Message-ID: <Y1GO2LC5AW7S6PbW@aschofie-mobl2>
References: <Y1GE6ImSoBuYCTjT@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1GE6ImSoBuYCTjT@aschofie-mobl2>

On Thu, Oct 20, 2022 at 10:27:04AM -0700, Alison Schofield wrote:
> 
> In case you are wondering the status of your patches -
> 
> When GregKH accepts your patch you get an acknowledgment email directly.
> If he specifically rejects it, you also get feedback from him on what
> to improve. He won't accept a patch where another reviewer has already
> requested an update. So, once you get any feedback, revise and send the
> new version.
> 
> You can follow the staging-testing tree [1] and see if Greg has 
> merged patches since your submittal. Those *are* accepted patches
> and should be recorded as contributions in your Outreachy dashboard.
> 

Sometimes, GregKH is so fast ;) that he has merged your patch, and
then a reviewer comments on it - either a reviewer on this list, or
from the get_maintainers recipients. 

In that case you may just send another patch, to do what your
reviewer suggested, or if it's a log message issue, you might
say, 'Thanks, I see it, I'll do better next time, but GregKH
has already merged this patch'. And, you can always just ask
the reviewer how to handle it.

I bring this up because it happens with me on this list. I'll
comment on a commit message or log, and it is too late. That's
OK - just take my advice for next time!

> Occasionally a patch gets missed in a flurry of patches. That might
> make you think about RESENDing. See the tutorial directions about
> resending.
> 
> For example, at this moment I can see that Tanjuate, Deepak, and
> Emily (sorry if I'm not recognizing another name yet) had patches
> accepted in the last couple of hours.
> 
> Hope that's useful,
> Alison
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing
> 
> 
