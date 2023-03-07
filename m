Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9FF361
	for <outreachy@lists.linux.dev>; Tue,  7 Mar 2023 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678155873; x=1709691873;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=BBwP4yodPdL/tDLbqWZhTJisX/8cP22bvowqQ12ve5s=;
  b=fX0/gZI5sDkP6gVmojt691vQZHo57/u9g8kt8eXwQdQwePWxZFhtmfUg
   aahAhR+cBJKfisywWi25uJswadZYt/eiCwY1xyJXdqQpsuFqztza3yfcf
   2xSDhILhArHy2KcfhwOzaY3LAeHPtZcI8/7uKR76ygiTUbqlurUAUP6o3
   EFXHBDL47o2YYWgW2cP3u8GZLVr3gJf+1pFfT9luO43NAS3jAZSswq/61
   YPVxbEEjlyNlH6SqwD+Zh9xr7xp7ma+K/84J+zuj63TlWuYVoymmx3MM4
   TLwSH5cm7+ysHj2Syioa2WRvvkg1Pq7g4Wjx3n6N6741Yq8ux1ukZl5ND
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="335761880"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; 
   d="scan'208";a="335761880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2023 18:24:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="745282586"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; 
   d="scan'208";a="745282586"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.194.74])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2023 18:24:32 -0800
Date: Mon, 6 Mar 2023 18:24:30 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Khadija Kamran <kkamran.bese16seecs@seecs.edu.pk>
Cc: outreachy@lists.linux.dev
Subject: Re: Khadija Introduction Outreachy Applicant
Message-ID: <ZAagXi7BXvpiNiSy@aschofie-mobl2>
References: <ZAJV2shFMkTMdJtQ@aschofie-mobl2>
 <20230306184157.13795-1-kamrankhadijadj@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230306184157.13795-1-kamrankhadijadj@gmail.com>

On Mon, Mar 06, 2023 at 11:41:57PM +0500, Khadija Kamran wrote:
> Hi Alison! I am Khadija Kamran and I am an Outreachy applicant. I am a Software Engineer and I am currently working on my first patch. I am looking forward to working with this community. :) 
>

Hi Khadija,

Thank-you for sending the first patch to kick off this round!
Welcome to the Linux Kernel Community!

Alison
