Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E897B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 16:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648829203; x=1680365203;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=1pjlfbgNJKotl63LQiH4d3ZLE9A1i6QRRCWD5/8ZL/8=;
  b=eK1ycQZk257HtQDqjHlNtixwM79hdkxtCIE+xedk6aIadzIlxboPEXnK
   YENjk5vyFLPotHTkEnNfKOxUI1cZL5ztPSUDkgS2yxdedVNoB8MG+zNe7
   IOYjtg2Hs2IstuwcKchgk1c9X3LR56WRZ4IpQiHQNahnvSA+alXDGeNCw
   lIL7LPIWgj8KuujuTK1y2IgR1Xcc2+tbxAXNBx49p76syLxS2BVgPCkvn
   qevYLdovIBTy0TVpvk0/0sI4RH4KUzAZ+ngdNbf6tbSl/LMOAGHtNdZrH
   AaUN+MWL4jBg829EwbUzsEy4/obP5KCbYsJeXIWp6BuWvfzI3qYYev8Lm
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="257749534"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; 
   d="scan'208";a="257749534"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 09:06:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; 
   d="scan'208";a="720928735"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 09:06:41 -0700
Date: Fri, 1 Apr 2022 09:09:01 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy@lists.linux.dev
Subject: Re: Compilation errors
Message-ID: <20220401160901.GA1186855@alison-desk>
References: <3603561.MHq7AAxBmi@leap>
 <3410190.V25eIC5XRa@leap>
 <20220401145714.5a0d826f@elisabeth>
 <1943335.PIDvDuAF1L@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1943335.PIDvDuAF1L@leap>

On Fri, Apr 01, 2022 at 03:07:24PM +0200, Fabio M. De Francesco wrote:
> On venerdì 1 aprile 2022 14:57:14 CEST Stefano Brivio wrote:
> > 
> > Okay, then that's really an error.
> > 
> > It might simply be that the you're building some drivers on your
> > staging tree that you're not building on the mainline tree.
> 
> Yes, this is why I've decided to use the .config that I have in Torvald's 
> tree. They should only differ for the drivers/staging part and the suffix 
> for vmlinuz.
> 
> Now it builds correctly with gcc11 :)
> 
> I must look carefully at the diff between the two files and figure out
> what doesn't work.
> 
> However what really counts is that now I can go back to work with "staging".
> 
> Thanks for your time,
> 
> Fabio 

Sounds like you all got things moving along wrt the compile issue.
I do want to follow up on a couple of things buried in this thread.

It's good that compile issue is getting fixed because you can't get
too far without hitting requirements to build w ALLYESCONFIG or
ALLMODCONFIG, or the like, while doing kernel development.

The thought of not compiling before sending is blasphemy ;)
We see patches come through this list on occasion that don't compile
and usually it's a cockpit error, not an intentional error. ie. The
applicant did compile the module, loaded/unloaded it, but then some
process thing went wrong and they created the patch from a different
branch. There are all sorts of ways to mangle a patch, but intentionally
not compiling it is just plain bad. That's another reason to create patches,
send them to yourself, apply to a clean tree, in the beginning to build
confidence in your processes.

wrt the 10 patch cleanup requirement. We often have applicants work
multiple contribution periods for a multitude of reasons. For applicants
who already have patches accepted in drivers/staging, we ask that they
submit a few, to show they are current (if needed). Again, if your 'old'
patches were from last month, no need to prove currency.

So, Fabio, this means for you personally, go ahead and link to prior
patches when you record your contribution in the Outreachy application.

Anyone else in this situation, please ask. 

Thanks,
Alison


> 
> 
> 
