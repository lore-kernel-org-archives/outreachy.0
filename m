Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DEB53AB
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 16:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678897188; x=1710433188;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=IkC1iqd9ntjnL13w1QdA9xOxbE/gtgI/zoQla2/e+XA=;
  b=hDoHYfOX8bTbF2hjBatq2rZUF32M65uA+IFfZt09ng+h5lFdPHLKeQVM
   oG2SYs8SHXVoxxoGdqGxvTzVRZbUv2HTd+S3gA0kvPwIC28zaMVgAeSnl
   metiEEHbTRkY56F4JAIVS/an48KGLalr440gQhDS0hhW4omQnI2wizgnJ
   Kt/cPC1z+XO/846wrkl6NcS7JiJB7VFrhuLgwxwwZBgMBvLeuTfHL2uXo
   LxrUd9LxPNcowam00qYQGOsozgoSeEK37aq0ObzwIfTnSt5wMSJh9TqqM
   W0YtYA0IEDmNGotNDx8OxeNWB21vxbnGasfgpTPCH9BGZ/QqWvngSOQdX
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="321591537"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="321591537"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 09:19:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="803365156"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="803365156"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.59.168])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 09:19:48 -0700
Date: Wed, 15 Mar 2023 09:19:46 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Olofu Ojoachubione <olofuchubi@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Message-ID: <ZBHwImUjB739X/1c@aschofie-mobl2>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
 <CAOHb_39SAEOwJOCNqsvND5w81MbAHLROf+sRAu0AWi911teidA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOHb_39SAEOwJOCNqsvND5w81MbAHLROf+sRAu0AWi911teidA@mail.gmail.com>

On Wed, Mar 15, 2023 at 10:15:45AM +0100, Olofu Ojoachubione wrote:
> Hello Alison,
> Please where can I text you so you could help me out with the kernel
> process so I can start making my contributions.
> 

Hi Olofu,

I'm personally not on any of the Outreachy chat rooms, but you can
try them out:

Join the #outreachy IRC channel on irc.gnome.org, and the
#kernel-outreachy channel on irc.oftc.net.

It looks like you found the mailing list, so scroll back through
that and find the Welcome message of March 7th.

You are welcome to email me, and please 'CC the outreachy list.

Welcome,
Alison


> On Wed, 15 Mar 2023 at 00:49, Alison Schofield <alison.schofield@intel.com>
> wrote:
> 
> > Hi Applicants,
> >
> > We want to support you finding cleanups. Today I spent some time
> > looking through staging and am working up a small todo list that
> > may be useful.
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
> >
> > Finally, it seems we won't be holding to the traditional 10 cleanup
> > patch requirement this round! Please continue your efforts and I'll
> > redirect you towards projects after a 'few' cleanup patches are
> > accepted into staging.
> >
> > Thanks,
> > Alison
> >
> >
> >
> >
