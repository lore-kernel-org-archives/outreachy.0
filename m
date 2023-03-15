Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559065681
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 18:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678903965; x=1710439965;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=WRw69E6sKW6stE6w3pdYWlvA2/a4am/6Y1WQ7OrQlik=;
  b=Mr3py+MSS9OKh52khbELQ97BauvX1k2oJAeE7AoSx3bijK3K0wSEfZci
   Q4/hzYDtFStlBK/XnyLyWgnrpqNcm0p8AB1bGygJSvY3R2lyfF7/VWDqx
   UZLsDdm1/Hm39+UIcl+DGwUJUvVbt8mK1P5bAk8db1QNF+nWtOjg5apml
   tX9GYXUCc1rNrxR27wnY9Beea3DLnQDeC6w1jaNKoVz+RKdMVbuWh37Oh
   Iv81SRzs90+ABXdxgxY2d8YIn6DrtmjySClhZK1V9cjiYvCCpbWqCxd7u
   oI+Vc+mp45bVdtM1lv9K3+K5KgTyl1pyNwdxnU4KZpuSMwoTprQWqZsr3
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402659189"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="402659189"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 11:12:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="672837653"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="672837653"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.59.168])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 11:12:44 -0700
Date: Wed, 15 Mar 2023 11:12:43 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Mark Heim <questioneight@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Message-ID: <ZBIKm4JB2pAvpHd9@aschofie-mobl2>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
 <20230315074410.GB224213@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230315074410.GB224213@gmail.com>

On Wed, Mar 15, 2023 at 01:44:10AM -0600, Mark Heim wrote:
> On Tue, Mar 14, 2023 at 04:49:20PM -0700, Alison Schofield wrote:
> > Hi Applicants,
> > 
> > We want to support you finding cleanups. Today I spent some time
> > looking through staging and am working up a small todo list that
> > may be useful.
> 
> I'm interested in doing the required demo for the kernel. Let
> me know what I should do next presupposing there is a list of tasks.



> 
> > 
> > I posted one such cleanup to Menna because I saw them submit a
> > couple of attempts at a first patches.
> > 
> > I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> > their first patches. Keep going! Ask for help finding your second
> > patch if needed.
> > 
> > Anyone else who wants help in finding their first patch, please reach
> > out. I imagine their are some folks exploring here, that I haven't
> > met on the list yet. 
> 
> Hello, that's me! I was originally working on the Outreachy LLVM
> project but had short term health problems, and that meant I let
> that opportunity get away. 
> 
> > 
> > Finally, it seems we won't be holding to the traditional 10 cleanup
> > patch requirement this round! Please continue your efforts and I'll
> > redirect you towards projects after a 'few' cleanup patches are
> > accepted into staging.
> > 
> 
> I have some catching up to do. I dug through a little more
> than a page of Linux mailing list messages but was able to
> glean a bunch of things that were helpful. These are things like
> patch creation best practices, posting on code style, joining
> a mailing list, and documentation.
> 
> Hope to hear from everyone later.
> 
> (here's a question: is it best practice to include 100 percent
> of the message pre-insertion of comments, or can I delete some
> of the original message?)

To snip or not to snip!  I think not-snipping here was appropriate.

This is the formal starting point:
https://www.outreachy.org/outreachy-may-2023-internship-cohort/communities/linux-kernel/

Each project starts with 'Community-Wide Requirements', so follow that
section. 

Welcome,
Alison

> 
> > Thanks,
> > Alison
> > 
> > 
> > 
> 
