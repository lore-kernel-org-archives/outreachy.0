Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A766AD5
	for <outreachy@lists.linux.dev>; Mon, 24 Oct 2022 21:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666645968; x=1698181968;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=k+n5fyZagBsok9RrnWlToJQDkxbfEnSyiEJwJ0JW2vw=;
  b=Rx4WSRBK2B7M3eybbKvNadcn/TwmSySCnrANFHrMM/fbdznOVcqKv/HU
   x/VMhEiAiGwIbp7zAiuNP29JErmtZRuEZczqjFCbXgZCxCOGRPclUC7Ve
   SRfr1rcXV+oTqwaFdC4PVRw/rJgDq2f+q+jCNNOVTJHhrIQ4zKZT+UNzs
   YCyHwxBT3NniwZpLWV7z10gI+IixcQZtesQJ0XhS3uVwBiGcFyADPTIHq
   pxXyFCRjDH5Gp7ws+rtsl8thWDNv8oxyKAFoJ6ysTgneEaWDrsOSdVlsC
   I0dpg5ctF/8b/2duyvU0kUWCWU5A52tkRJkponGVu+jmGTPwF6WWXQcrh
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="369592193"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; 
   d="scan'208";a="369592193"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2022 14:12:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="756708543"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; 
   d="scan'208";a="756708543"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.31.116])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2022 14:12:48 -0700
Date: Mon, 24 Oct 2022 14:12:46 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y1b/zhLlbI/NmdFR@aschofie-mobl2>
References: <Y1XvjytS2GaafmyJ@aschofie-mobl2>
 <Y1N/wsr+Wd6sEaDf@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1N/wsr+Wd6sEaDf@debian-BULLSEYE-live-builder-AMD64>

On Sat, Oct 22, 2022 at 10:59:38AM +0530, Deepak R Varma wrote:
> On Sun, Oct 23, 2022 at 06:51:11PM -0700, Alison Schofield wrote:
> > Greg KH has mentioned this a couple of times lately -
> >
> > >> Any reason you do not have "staging: vt6655:" as the prefix for
> > >> this 0/X email subject line?
> > >>
> > >> thanks,
> > >>
> > >> greg k-h
> >
> > A quick peek in the tutorial tells me it could be made clearer.
> > It needs to explicitly say the prefix is required, and then
> > make sure any examples do it.
> 
> Hello Alison,
> There already is a section named "Patch Subject formatting" on this link [1]
> with enough description to determine the patch subject prefix. Can you please
> review and confirm where we should improve further to make it clearer??
> 
> 	[1] https://kernelnewbies.org/PatchPhilosophy
> 
> Thank you,
> ./drv


In https://kernelnewbies.org/Outreachyfirstpatch

The example cover letter in 'Submitting a Patchset' has the
subject "[RFC 0/7] Update REPORTING-BUGS", with no subsys.
It is also confusing because the cover letter is an RFC and
the patches are a mix of RFC and PATCH. Very atypical.

Let's replace this example with one that was actually submitted
and accepted by an Outreachy Intern.  No slight intended to the
existing set as it contains an interesting set of changes. However,
an example for newbies might better come from newbies.

How about a patchset off this list? 

Would you mind using this one of yours:
[PATCH v4 00/11] staging: r8188eu: trivial code cleanup patches
but trim it to 3-4 patches plus the cover.

It's not a trivial edit, because you need to replace all the
example steps with the new patchset content.

Thanks,
Alison

> 
> >
> > Thanks,
> > Alison
> >
> 
> 
