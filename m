Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF69122A7
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 20:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666989820; x=1698525820;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7mcBxO/fLB1tY52+4onQUXkiICeDqP3iA809wiT6/14=;
  b=f1rROFmPPeRffW6pYRwjiMFREa+MpFGDVoV9mOSMXrWr+tSEW0LQYv/c
   NReK1U5KmCHQmJYHrv8Q4yiLCbjfe4qaA2PK6CtqDgT6al5/5wYqBF8Vp
   R4twHmhARxiGwmA+uIqow7LAX3nJRGsPC5fAQdunOypxNWM1R+OlwcNh8
   IaPdOka2FDnHJ1WjF5oeIGZ7wzTfX4smuQsmO2fI2AfUHOiVVum1ifRWo
   UxY3hEDtoCBLx7NnUSDqCuZJBqj39aUFBQv2cq+hWKnWRPGP91sGhGDQB
   PZGs2t9DA6BFuXyDv7uNWFo03x32cbcMtx0lTFHOqFr4bMuFaZAUrocv4
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="288303335"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; 
   d="scan'208";a="288303335"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 13:43:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="627655636"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; 
   d="scan'208";a="627655636"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.175.207])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 13:43:39 -0700
Date: Fri, 28 Oct 2022 13:43:37 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Tanju Brunostar <tanjubrunostar0@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Outreachy first patch wiki modification proposal
Message-ID: <Y1w++T3KudppVNkK@aschofie-mobl2>
References: <CAHJEyKWCVPLYvGB=oeDoZWz+uaBMrn2JhGgjN6pvdhjggOmAiA@mail.gmail.com>
 <Y1wiBgPE7sFSVQTG@aschofie-mobl2>
 <CAHJEyKWwg-9Aca5MEpp2+R7xt1C9Je5ooodr4Ca=2xuN4_EkgA@mail.gmail.com>
 <CAHJEyKVyQUedZwhem+1XsGy=h1JOYgn0_74jk8V2YH5V7zLVaQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHJEyKVyQUedZwhem+1XsGy=h1JOYgn0_74jk8V2YH5V7zLVaQ@mail.gmail.com>

On Fri, Oct 28, 2022 at 08:25:38PM +0100, Tanju Brunostar wrote:
> On Fri, Oct 28, 2022 at 8:10 PM Tanju Brunostar
> <tanjubrunostar0@gmail.com> wrote:
> >
> > On Fri, Oct 28, 2022 at 7:40 PM Alison Schofield
> > <alison.schofield@intel.com> wrote:
> > >
> > > On Fri, Oct 28, 2022 at 07:23:47PM +0100, Tanju Brunostar wrote:
> > > > After setting up my mutt with Gmail, I tested it by sending an email
> > > > but it did not go through. After some research, I realized that Gmail
> > > > no longer allows less secure apps. The way around this is to set up
> > > > two step verification, then generate and use "App password". I would
> > > > like to add this to the wiki, as this will save others from the
> > > > additional work. Please let me know if I can proceed.
> > >
> > > Helpful tips are always appreciated.
> > > Please post the actual edit here for review.
> > >
> > > Alison
> > >
> >
> > My changes
> > original: If your gmail account uses two-step verification, then you
> > will need to generate and use App Password.
> > modified: Next make sure two-step verification is enabled on your
> > gmail account, then generate and use App Password.
> >
> > Tanju
> link to the page: https://kernelnewbies.org/Outreachyfirstpatch#preview

Sounds good. I expect you are going to go back in and delete
the 'original' line.

Thanks!
>

