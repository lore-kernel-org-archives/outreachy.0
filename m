Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E243C14
	for <outreachy@lists.linux.dev>; Tue, 11 Oct 2022 15:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665502329; x=1697038329;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=hhkv0ubEmlIQpQEb3vTv49eE3tWG/W7aPV74ZwnipMw=;
  b=h8WemGjWNtBPiSNCNMS9eozBQxpoP/gnpK7x4H64A5hSI7ubDHQZCG7i
   64eOYyujdl/RHR71BHAuDjfM6KYRAaAvX926nPhSOv0slqVPEjH2TwsF0
   7vHbm/9rBi+8NjNz0tNXHKjmCyeZ77c7CfRI6ag1jIt/K0WZlkAgpfDYD
   iMtQ5X4HL0+QAWoHx7caHPcLRBEl40lt77KvEciodfU6z4IMLdd80VRcs
   XvlQ+Ked3FFzWs4VWmtsGvIM2r1Gg/wzShhNRRgOufLMM0MNT/qvagBT0
   bSlp8Qg8tM/mE28WzoPFgnewJZYAA2bUut1VBWVMos67sx36M4E5qTyiE
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="366526937"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; 
   d="scan'208";a="366526937"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2022 08:32:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="801491290"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; 
   d="scan'208";a="801491290"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.98.149])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2022 08:32:08 -0700
Date: Tue, 11 Oct 2022 08:32:07 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: greybus: Fixed whitespace style issues
Message-ID: <Y0WMd211TqBPQN4G@aschofie-mobl2>
References: <20221010155736.117492-1-hunter.chasens18@ncf.edu>
 <6a157246-b4af-273b-8f6a-352c82aa5a2c@inria.fr>
 <CAFJe6O0ADLWOcem3-=EHdKKUHozVP-M1M7VQVY1PCkHr=nMMWg@mail.gmail.com>
 <cb9ed48e-3b83-8a4-773a-39e25483bfb5@inria.fr>
 <Y0ROSX0ZxGQwmMLT@aschofie-mobl2>
 <Y0RoTagEGMQhoXFM@zeda>
 <Y0SCkStgeGN3z282@aschofie-mobl2>
 <Y0SXQTthB30lOAUV@zeda>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0SXQTthB30lOAUV@zeda>

On Mon, Oct 10, 2022 at 06:05:53PM -0400, Hunter Chasens wrote:
> I've been independently following the instruction posted at https://kernelnewbies.org/. Two days ago the website was updated and the Outreachfirstpatch was listed as the first link. I can't seem to navigate to a lot of the old content. I started reading the page about outreachy[1]. It seemed to cover much of the same material the old pages did. I figured it was an upgrade to the old documentation. Maybe a rebranding of the site. I can't seem to get my email address registered with the old Kernel Newbies mailing list and the IRC seems pretty dead so I thought this was an initiative by KernelNewbies to repark the community. The instructions on the Outreachy page told me to subscribe to your list and email my patches to you guys for review. 
> 
> At the bottom of the page, there's some information about being an intern. While I have an interest in that I just wanted to find a community to get feedback on my prospective patches. I have an interest in contributing to the kernel but I've been pursuing it on my own. 
> 
> I'm sorry if I've joined a private mailing list or if it's exclusive to those who want to apply. I've just been following the documentation I can find. I was very excited to see the documentation updated since a lot of the KernelNewbies site is outdated. :(

Hi Hunter,

It's your choice to send patches to Outreachy list. If you choose to 
'CC patches to Outreachy list, we're going to ask you to follow
the Outreachy guidelines, and you'll get some extra support in the
next month. (We only have the list open during the contribution
periods.)

This tutorial you found...
> 
> [1] https://kernelnewbies.org/Outreachyfirstpatch

does point to the mailing list. Please join the mailing list, review
what you've missed, and follow along there. Some things won't apply
to you because you are not an actual applicant, but most will.

Alison

