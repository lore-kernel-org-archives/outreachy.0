Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C707B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 23:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648857023; x=1680393023;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=N70wFIeXW1N3TRWVQg3zk5cD8uwRjHZgVIBRf+HDhhc=;
  b=H6Z7zis/lWse4kaPEtlZWxoIjSDYKghHOPSm8Cuh7ToeBAHXNTvYphYx
   RLtyIEnHBcnyqQi+TdOEwy43/LMAPD8XSeFqrViuEZbFrQVhGQ18IswuU
   Z2gqm7EBdLoV73TiZOKN3u+cirlFpI7+pyqixhJ1fBgYKbGZAs1A00uHw
   ORIr5yiRD6MDul+1AxHCRoX96SXg32pn+BEwEhtJpNrESM3l7lV3I2o+T
   H9DAlpbN5TxHitUNmLvU9dRhHT8CbYLXkLoHSZNHgbrmyFV44FP/7Ta02
   Ke7sBo7AqinGzc3qSpLlW+8VJ5gTNutZ/ygR81WFrVz6iXQolk3ig0m1q
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="247761632"
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; 
   d="scan'208";a="247761632"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 16:50:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; 
   d="scan'208";a="696056683"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 16:50:22 -0700
Date: Fri, 1 Apr 2022 16:52:40 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Bruno Moreira-Guedes <codeagain@codeagain.dev>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Subject: Re: Information for the Kernelnewbies Outreachy Docs
Message-ID: <20220401235240.GA1188928@alison-desk>
References: <3485392358307ad16335e30e6bd41c78cc977840.camel@gmail.com>
 <20220329175444.GA1170522@alison-desk>
 <3dfdcbd06a0fe14254a7874b4894261da85073e0.camel@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3dfdcbd06a0fe14254a7874b4894261da85073e0.camel@codeagain.dev>

On Fri, Apr 01, 2022 at 06:38:47PM -0300, Bruno Moreira-Guedes wrote:
> On Tue, 2022-03-29 at 10:54 -0700, Alison Schofield wrote:
> > On Tue, Mar 29, 2022 at 01:24:17PM -0300,
> > brunodout.dev@gmail.com wrote:
> NOTE: I posted my first e-mail with my gmail account, but the above
> address and the one I'm using right now are the same person.
> > > 
> > > I am sharing some info that could be updated in the KernelNewbies
> > > Outreachy tutorial.  Some instructions for Arch(/Arch based) users
> > > and possibly other minimalist VM setups
> > 
> > These sound very useful. Can you update the wiki yourself:
> > 
> > From the https://kernelnewbies.org/Outreachyfirstpatch :
> > 
> > 'To edit the wiki, create an account, and then send an email to
> > the outreachy@lists.linux.dev with the subject "[KERNEL NEWBIES
> > ACCESS]
> > username", where username is your kernel newbies username.'
> 
> Just a follow up, I already requested a couple of days ago, and I have
> updated the OutreachyfirstpatchSetup page[1] now including the
> enumerated items from the previous e-mail and some new details.

I took a look at the wiki diff. Thank you!
I guess our next ArchLinux user will test those out ;)

> 
> > 
> > Thanks!
> > Alison
> > 
> > > 
> > > REQUIREMENTS
> > > 
> > > 3. Possibly python3
> > > I was following the tutorial for the staging kernel tree,
> > > and ran `make` to build the kernel (I usually run `make
> > > bzImage` followed by `make modules`, like usual in 2005
> > > LOL), and got an error that python3 wasn't found. I installed 
> > > python but then switched back to my old procedure and it worked.
> > > I'm not sure if the default target isn't doing something else,
> > > since re docs[1] also don't mention python3 as a requirement.
> 
> I added this requirement and detailed the reason it might be needed:
> several self-test and kunit tools in the /tools tree require python.
> It likely explains why I just got the missing python error when I
> built with `make` (default target) and not when running `make bzImage
> && make modules`.
> 
> I also added perl, which wasn't missing in my list but in minimalist
> setups it might. Also added information regarding perl modules that
> might be necessary for other tools, that could be installed easily
> with `cpan`.
> 
> > > 
> > > ARCH PACKAGE NAMES
> > > 
> > > some packages will be differently named. I have listed them just
> > > in case anyone feels stuck:
> > > 
> > > 1. gitk => already contained in: git
> > > 2. git-email => already contained in: git
> 
> I detailed the above differences in packaging scheme in the wiki, but
> I didn't update the information below:
> 
> > > 3. esmtp => libesmtp
> 
> Turns out this information was wrong, libesmtp and esmtp are not the
> same package with different names as I thought, it's actually not
> provided in ArchLinux official packages (to my knowledge). I think
> users might find a build package in the AUR repo, though. However, the
> `mail` utility, from the 's-nail' package, can also be used to achieve
> the same goals. I'll go back there and write about that at some point.
> 
> > > 
> > > REFERENCES
> > > [1] https://docs.kernel.org/process/changes.html
> > > 
> Regarding kernel docs missing some points, mentioned in the original
> post, could I update kernel docs on that too? I've found the online
> docs to be based on the docs present in Documentation. Also, would it
> count towards my 10 patches requirements? (I plan on doing anyway, but
> the answer would help me to prioritize)
> > 

Updating Documents/process/changes.rst will be appreciated.
That file changes the same PATCH guidelines as any other to the Linux
Kernel tree.

And, yes, count it as a PATCH. It's a PATCH!

Also, add contributions to WIKI docs on your application as a line item.
Perhaps applicants can group WIKI docs updates into one contribution
bucket on the application.

Thanks,
Alison

> 
> REFERENCES 
> [1] https://kernelnewbies.org/OutreachyfirstpatchSetup
> 
> 
> -- 
> Sincerely,
> Bruno | Pronouns: they/them/theirs
> IRC: CodeAgain
