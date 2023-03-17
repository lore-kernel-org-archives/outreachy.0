Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438D1377
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 01:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679017873; x=1710553873;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=Jj5sejVVtma4JnB6MMKFHQjCbl8wiPC7e4McbzkTe0U=;
  b=SX3eVodnYimi+3YBje8uJgv3e55g+OqUG8uJvufU+kImjXtRmL7DKE9j
   FTunbN6avw41RvrVvJeSDS6Mqc0dPTQ9WUHEOlhphPXcYuytA3jV/eJcE
   BtiEMt0XezQTJtL0N7ScFV4fAaODluxduYd+WleYyifqkT+yVLNpJfRCa
   3jQ/Z1I3NFL+qqJpNEt3/Zd6gwIlsY/EQBgocgMPM65eZDSxqhRcs89Hj
   GlVoe8owy38aUAltqifKVU6dCGKHERfuxGy7RF+Rqd3FCogbBKY6TTwDT
   dheXSJE9jig6ylMGqdF/SW0CdH6s88feVyJTS0qFok5ZSpKjAzQjKUNZe
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="322009901"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; 
   d="scan'208";a="322009901"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 18:51:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="854273456"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; 
   d="scan'208";a="854273456"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.19.33])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 18:51:12 -0700
Date: Thu, 16 Mar 2023 18:51:11 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Mark Heim <questioneight@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Message-ID: <ZBPHj9LuSE3obEF/@aschofie-mobl2>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
 <20230315074410.GB224213@gmail.com>
 <ZBIKm4JB2pAvpHd9@aschofie-mobl2>
 <CALfc2nhr7fWD33T5000kJt9stcgQ3fJM8YNTQhRgozxFYDxyYw@mail.gmail.com>
 <ZBMtYXYWkuXusbIf@aschofie-mobl2>
 <CALfc2nioOy+T7GyV==Akr5WY5gC_awadai77k4tqr-NGNhaR+A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALfc2nioOy+T7GyV==Akr5WY5gC_awadai77k4tqr-NGNhaR+A@mail.gmail.com>

+outreachy

On Thu, Mar 16, 2023 at 06:36:18PM -0600, Mark Heim wrote:
> Hello,
> 
> It looks like the two headers at the top of prism2fw.c
> are in the staging/include directory. I didn't notice
> that the makefile for the build does not compile it.
> A proper PATH variable upon compiling should fix
> that issue.

Thanks Mark!
Maybe directions to compile it belong at the top of the file.

> 
> Mark
> 
> On Thu, Mar 16, 2023 at 8:53 AM Alison Schofield <alison.schofield@intel.com>
> wrote:
> 
> > On Wed, Mar 15, 2023 at 11:54:16PM -0600, Mark Heim wrote:
> > > Hello all,
> > >
> > > I have found a refactoring opportunity that might be a good
> > > starting point for me, but it is buried in the code.
> > >
> > > It is in the prism2fw.c file under the directory tree
> > > kernels/staging/drivers/staging. I'm trying to do a procedure
> > > called extract a method (according to a book I have) that provides
> > > better modularity for the code and makes further refactorings easier.
> > >
> > > I was a little surprised that the rebasing was going through with
> > updates,
> > > but I'm probably going to be able to finish this task by tomorrow. I hope
> > > I get a shot at this one this time.
> >
> > Sounds interesting Mark!
> >
> > prism2fw.c is a 'utility for downloading prism2 images moved into
> > kernelspace'
> > so you'll just be compiling the utility itself, not the PRIMS2_USB
> > driver.
> >
> > At the moment, it doesn't compile, as is, in my environment.
> > Let me know if you encounter, and have a solution for this:
> >
> > $ cc prism2fw.c
> > prism2fw.c:51:10: fatal error: linux/ihex.h: No such file or directory
> >    51 | #include <linux/ihex.h>
> >       |          ^~~~~~~~~~~~~~
> > compilation terminated.
> >
> > Alison
> >
> > >
> > > Mark
> > >
> > > On Wed, Mar 15, 2023 at 12:12 PM Alison Schofield <
> > > alison.schofield@intel.com> wrote:
> > >
> > > > On Wed, Mar 15, 2023 at 01:44:10AM -0600, Mark Heim wrote:
> > > > > On Tue, Mar 14, 2023 at 04:49:20PM -0700, Alison Schofield wrote:
> > > > > > Hi Applicants,
> > > > > >
> > > > > > We want to support you finding cleanups. Today I spent some time
> > > > > > looking through staging and am working up a small todo list that
> > > > > > may be useful.
> > > > >
> > > > > I'm interested in doing the required demo for the kernel. Let
> > > > > me know what I should do next presupposing there is a list of tasks.
> > > >
> > > >
> > > >
> > > > >
> > > > > >
> > > > > > I posted one such cleanup to Menna because I saw them submit a
> > > > > > couple of attempts at a first patches.
> > > > > >
> > > > > > I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> > > > > > their first patches. Keep going! Ask for help finding your second
> > > > > > patch if needed.
> > > > > >
> > > > > > Anyone else who wants help in finding their first patch, please
> > reach
> > > > > > out. I imagine their are some folks exploring here, that I haven't
> > > > > > met on the list yet.
> > > > >
> > > > > Hello, that's me! I was originally working on the Outreachy LLVM
> > > > > project but had short term health problems, and that meant I let
> > > > > that opportunity get away.
> > > > >
> > > > > >
> > > > > > Finally, it seems we won't be holding to the traditional 10 cleanup
> > > > > > patch requirement this round! Please continue your efforts and I'll
> > > > > > redirect you towards projects after a 'few' cleanup patches are
> > > > > > accepted into staging.
> > > > > >
> > > > >
> > > > > I have some catching up to do. I dug through a little more
> > > > > than a page of Linux mailing list messages but was able to
> > > > > glean a bunch of things that were helpful. These are things like
> > > > > patch creation best practices, posting on code style, joining
> > > > > a mailing list, and documentation.
> > > > >
> > > > > Hope to hear from everyone later.
> > > > >
> > > > > (here's a question: is it best practice to include 100 percent
> > > > > of the message pre-insertion of comments, or can I delete some
> > > > > of the original message?)
> > > >
> > > > To snip or not to snip!  I think not-snipping here was appropriate.
> > > >
> > > > This is the formal starting point:
> > > >
> > > >
> > https://www.outreachy.org/outreachy-may-2023-internship-cohort/communities/linux-kernel/
> > > >
> > > > Each project starts with 'Community-Wide Requirements', so follow that
> > > > section.
> > > >
> > > > Welcome,
> > > > Alison
> > > >
> > > > >
> > > > > > Thanks,
> > > > > > Alison
> > > > > >
> > > > > >
> > > > > >
> > > > >
> > > >
> > > >
> >
