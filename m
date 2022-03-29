Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45BA257F
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 17:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648576340; x=1680112340;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PP17N6DuwTymw7oBG+kak6UIyiKEBtga970V4HMLVqw=;
  b=gNPean8oNrFngymFiVl/yq2z2NxpKSZKYheWsg3ydBmx2M2Fh9gjm6nH
   O5btfhuD+M1gsE2gctCIu/vGFsoWqpuv0F/iyI1dco6h/x3C1VpK0l6fl
   PisATnH6e07kR7C2PQwNmrGBeLHK3m8MmNmIAzhGP8QonPYzNbytPyXF+
   WiZxxomiRHoJcBqaxKWv3HuMCac/2FrWiBmnGUqWfOxvVD0Y6AbtfA/pF
   ksRb0aM0ttx21w8dDnB7r1cOcc/2OcKDW/897wPuq82PWG3O1fOu9AhRk
   wZlvr6vkCqKN01rNtkWFJMn5N0eop80LoNPD/hte2ivWek0VoyIvpetFo
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="241477967"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; 
   d="scan'208";a="241477967"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 10:52:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; 
   d="scan'208";a="519094776"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 10:52:18 -0700
Date: Tue, 29 Mar 2022 10:54:44 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: brunodout.dev@gmail.com
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Subject: Re: Information for the Kernelnewbies Outreachy Docs
Message-ID: <20220329175444.GA1170522@alison-desk>
References: <3485392358307ad16335e30e6bd41c78cc977840.camel@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3485392358307ad16335e30e6bd41c78cc977840.camel@gmail.com>

On Tue, Mar 29, 2022 at 01:24:17PM -0300, brunodout.dev@gmail.com wrote:
> Hello,
> 
> As     Roopa suggested me on IRC yesterda, I am sharing some
> info    that could be updated in the KernelNewbies Outreachy
> tutorial.  Some instructions for Arch(/Arch based) users and
> possibly    other minimalist VM setups (I run a minimal arch
> install  on a small filesystem for each kernel tree, and all
> space necessary to build the kernel I use virtiofs).
> 
> I will try to enumerate them:

These sound very useful. Can you update the wiki yourself:

From the https://kernelnewbies.org/Outreachyfirstpatch :

'To edit the wiki, create an account, and then send an email to
the outreachy@lists.linux.dev with the subject "[KERNEL NEWBIES ACCESS]
username", where username is your kernel newbies username.'

Someone on list, with edit privileges can grant you edit privilege
and then you can do it yourself. 

Thanks!
Alison

> 
> REQUIREMENTS
> 
> 1. cpio
> A    non-minimalist install will likely have cpio on it, but
> case    it doesn't you'll likely get a tricky error when the
> build   system runs kernel/gen_kheaders.sh. (sorry, I didn't
> save the output, but the error code is 127)
> Perhaps the script also needs a better error message
> 
> Cpio     requirement is also missing in the kernel compiling
> docs[1].
> 
> 2. ncurses5
> This one isn't missing but it's outdated. It says arch users
> must       build it, but actually the arch available package
> 'ncurses'     (version 6) worked for me so far (at least for
> targets like menuconfig, which I believe to be the reason of
> this requirement, right?)
> 
> 3. Possibly python3
> I    was following the tutorial for the staging kernel tree,
> and      ran `make` to build the kernel (I usually run `make
> bzImage`      followed by `make modules`, like usual in 2005
> LOL),  and  got  an  error  that  python3  wasn't  found.  I
> installed  python but then switched back to my old procedure
> and      it worked. I'm not sure if the default target isn't
> doing    something else, since re docs[1] also don't mention
> python3 as a requirement.
> 
> ARCH PACKAGE NAMES
> 
> Arch  packages  are  not  as  much  granular       as  other
> distributions, so some packages will be differently named. I
> have listed them just in case anyone feels stuck:
> 
> 1. gitk => already contained in: git
> 2. git-email => already contained in: git
> 3. esmtp => libesmtp
> 
> REFERENCES
> [1] https://docs.kernel.org/process/changes.html
> 
> 
> I        hope it becomes helpful for other applicants and to
> improve the docs.
> 
> Sincerely,
> Bruno | Pronouns: they/them/theirs
> IRC: CodeAgain
> 
