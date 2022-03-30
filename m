Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22BB7B
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648653248; x=1680189248;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=gbyZNkK5Z3/WE0Hf/IxuFhFFjW4/MSPB2tYnBRb6iXk=;
  b=cAarDhn/YrqhNw3bx5L2MfSnMv/Fqw4OGSzHKWQDQ3+SRNqh0bITXBi7
   8iG+coZsr69OP2XUhD+u38Ab3xBwofDzyDCGWcl6tQKQY5jbRgrbn8jYc
   JeQPYfXrGYLey6agUYBF5v8j6QzCcrSdY5t4cimAZR8ZceVqcjCxWAq3U
   xpqpXbB7UQwCiBd4fPY8N7UODnegswp+F4o94vCQ5JdeaRL2kqduckblw
   DGz08tArZXYvz9j/eNVTRxsomMehvseXm9htvDym6hSux+TP16H7y1DFd
   RhMnmzt4V9IN7kZ4kVnMLZTreGKn0w2JfShYdqZfXd6c3whz83xfbEbRm
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="257146493"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; 
   d="scan'208";a="257146493"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2022 08:14:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; 
   d="scan'208";a="618564443"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2022 08:14:08 -0700
Date: Wed, 30 Mar 2022 08:16:31 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] SevinjAghayeva
Message-ID: <20220330151631.GA1176177@alison-desk>
References: <CAMWRUK7oaT3bh7pJK5oMWYh3Sptwx6UdgNwds6d_A0CQxC24pw@mail.gmail.com>
 <20220330013408.GA1173441@alison-desk>
 <CAMWRUK4xoy3M8ob2soAwp-RHvro8TGGQdXBim9K1z5nXTTer_g@mail.gmail.com>
 <20220330025333.GA1173893@alison-desk>
 <CAMWRUK4Tq3Y3TU1BivAyYeYimPUU9QBLS8LDvA-WcB2=ns3h0A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMWRUK4Tq3Y3TU1BivAyYeYimPUU9QBLS8LDvA-WcB2=ns3h0A@mail.gmail.com>

On Wed, Mar 30, 2022 at 07:10:25AM -0400, Sevinj Aghayeva wrote:
> On Tue, Mar 29, 2022 at 10:51 PM Alison Schofield
> <alison.schofield@intel.com> wrote:
> >
> > On Tue, Mar 29, 2022 at 09:50:46PM -0400, Sevinj Aghayeva wrote:
> > > Thanks! If you think my "[PATCH v2] staging: rtl8723bs: remove
> > > redundant braces in if statements" is okay, I can replace the example
> > > in PatchPhilosophy that contains "This patch fixes...".
> > >
> > Yes, go ahead and update the wiki directly. I can look at it in place
> > once it's changed. Thanks!
> 
> Updated.

Reviewed 2 changes - setup & patchphilosophy.
Thanks!

> 
> 
> >
> >
> > > On Tue, Mar 29, 2022 at 9:31 PM Alison Schofield
> > > <alison.schofield@intel.com> wrote:
> > > >
> > > > On Tue, Mar 29, 2022 at 09:25:10PM -0400, Sevinj Aghayeva wrote:
> > > > > Please grant me edit privileges to improve the wiki pages.
> > > > >
> > > > > Thanks!
> > > > Added you to https://kernelnewbies.org/EditorsGroup
> > > > Ping me back if any issues.
> > > > Thanks for helping maintain the wiki.
> > > > >
> > > > > --
> > > > >
> > > > > Sevinj.Aghayeva
> > > > >
> > >
> > >
> > >
> > > --
> > >
> > > Sevinj.Aghayeva
> 
> 
> 
> --
> 
> Sevinj.Aghayeva
