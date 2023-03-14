Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A1315AE
	for <Outreachy@lists.linux.dev>; Tue, 14 Mar 2023 01:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678756754; x=1710292754;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=c8upvc5a5bDPLCDWAy+P3Y5GRnchzryYxP11o9DLKww=;
  b=DWclb9YyY4QhJoHA15cF9EDTEbhWSKXuOt4cMvLzHAqFSN2DpXJDA7qc
   8Hl2UBfsYoBvwGe3LzHjtm10UmZt+WB5FsM3X88bOT7h2gwwv9Pi2PeC4
   cMmktTaFv0wh+g+Uo+eBRKYMkjOcDElqSrsPYazv9gO774CvMEuVr+Zsn
   UxyG1mIFudQKx6LT/e24MsD4kvnDw0asfcYCIJD2tkVAuIABH6+SyA4SR
   I95FaqTpxJ4i56sBUYbUUJGBBhHHiTlSIVv5G/N8OldXJUO6RIHygsXez
   wRDJVbmvLyZrZMxs+YUNQHBAITmu2m0NKXetaO6ty70i0PPxy3ZGHiVb1
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="317686426"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; 
   d="scan'208";a="317686426"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2023 18:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="711321580"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; 
   d="scan'208";a="711321580"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.44.112])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2023 18:19:13 -0700
Date: Mon, 13 Mar 2023 18:19:12 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: Outreachy@lists.linux.dev
Subject: Re: Record Contributions for Outreachy
Message-ID: <ZA/LkFq1w6jf6YAR@aschofie-mobl2>
References: <ZA+JZ7TTMmm3K0Y5@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZA+JZ7TTMmm3K0Y5@khadija-virtual-machine>

On Tue, Mar 14, 2023 at 01:36:55AM +0500, Khadija Kamran wrote:
> Hi everyone!
> 
> I am an Outreachy applicant and I have so far been part of this
> contribution journey under the guidance of mentors. 
> As you all know that we are done with the first week of contribution
> period, should I start recording my contributions to the Outreachy
> website, or is it too early for that?
> If I should, then kindly help me with the following questions: 
>  - what urls should I use in order to record the contribution?
>  - should I only record the merged contributions?

Hi Khadija,

When a patch has been accepted into staging/testing it will be visible
here: 
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

Once you see a patch in staging/testing, then add it to your dashboard,
with a link to the patch. Mentors will be able to click through and
see the patch, but may not have followed its entire journey to getting
merged. So, take a moment, and share a note in your dashboard explaining
what you learned from that patch. 

We expect learnings at this point to be about patch mechanics like
'I learned what imperative mode is', 'I learned how to revise and
resend a patchset', 'I learned how to keep my staging/testing branch up
to date so I don't send patches for things already fixed'. 

First Patch Tutorial updates are also contributions. Please record
those on the dashboard also. For those, you can send a link to the
email on this list where you proposed your update.

Thanks,
Alison

> 
> Thank you! :)
> 
> Regards,
> Khadija
> 
> 
