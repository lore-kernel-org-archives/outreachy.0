Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B5023BD
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 04:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649823239; x=1681359239;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=uXG77AIfzT1Jj5zgXx6DmT/JshVhxw0Iw8x/2bPRA50=;
  b=YJS1LEgB+FxSUtlenzgS8IwuZK1hqcS23OCo6IULBF1ATT/X2kOrst9k
   m5AWnHXGpo13UM2E+TgSKxSnU2usbEqqZ60i9m5HkZkbgEy1DUegAICLV
   uiYhSPzu6GJa9gf1O2fFP5RuCjB0zmqxZsIOCGs/+DYxTCAScrFVKyBA4
   dLXJ+OK4WFzxrdlsdy+/Tk2gdz+0ZjOhgk50YxUgFX8NKURrNR5D0x4Y1
   +ZZpa4VwHUnqXZ8cx2nX6YYcOE7E0EGDTDcCnp2emoMfTnyZq51gKyqR9
   Zee+ABecRShYX8orFF1cyfIFXn/IzWslj9nQrTM46dZL+XaV/HWAWvcVo
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="325473336"
X-IronPort-AV: E=Sophos;i="5.90,255,1643702400"; 
   d="scan'208";a="325473336"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2022 21:13:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,255,1643702400"; 
   d="scan'208";a="559600895"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2022 21:13:58 -0700
Date: Tue, 12 Apr 2022 21:15:53 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy linux kernel <outreachy@lists.linux.dev>
Subject: Re: Should we Cc this list when submitting patches for subsystems
 other than "staging"?
Message-ID: <20220413041553.GA1239114@alison-desk>
References: <1859502.6tgchFWduM@leap>
 <20220412223603.GA1237891@alison-desk>
 <CAMWRUK6W4-3Fwh7BAQ_aSWYG4Dh=oSX-ZKgHuiO0QhKUwyCEOA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMWRUK6W4-3Fwh7BAQ_aSWYG4Dh=oSX-ZKgHuiO0QhKUwyCEOA@mail.gmail.com>

On Tue, Apr 12, 2022 at 08:00:24PM -0700, Sevinj Aghayeva wrote:
>    On Tue, Apr 12, 2022 at 6:34 PM Alison Schofield
>    <alison.schofield@intel.com> wrote:
> 
>      On Tue, Apr 12, 2022 at 10:21:31PM +0200, Fabio M. De Francesco wrote:
>      > Hello,
>      >
>      > During the current month I have submitted some patches for subsystems
>      other
>      > than drivers/staging. When I sent them I thought that those shouldn't
>      be
>      > Cc'ed also to this list. Now I'm not anymore sure if I did it
>      correctly.
>      >
>      > My question is if all patches sent by the Outreachy's applicants until
>      > April 22nd should also be sent to this list, even when they are for
>      > subsystems other than drivers/staging.
>      >
>      > Furthermore, one of the above-mentioned patches is strictly related to
>      one
>      > of the three Linux projects, being it a reworking and extension of a
>      large
>      > section of the documentation of HIGHMEM. Is it sufficient to add that
>      patch
>      > to the page where we register our contributions in the Outreachy's
>      website?
>      >
>      > I'm also asking because during these days I'm preparing further
>      patches to
>      > other subsystems and I'm going to submit them well before April 22nd.
> 
>      Thanks for asking Fabio,
> 
>      Yes, all contributions that an applicant considers to be part of their
>      application should be shared on this list.
> 
>      There's always an exception! Perhaps if a mentor gives out a small
>      task for which a posting to this list would spoil the task for others,
>      only gets sent to the mentor(s). I expect project mentors would tell
>      you that case explicitly.
> 
>      We like to see everything you all are doing and we want the list archive
>      to accurately reflect all contributions and communications.
> 
>    Oh, that's good to know. I did a few small patches already, but didn't Cc
>    the list; will do so from now on.
>     

FYI - We have patch reviewers for Outreachy on this list that won't 
see your patch if you omit the list. These reviewers volunteer their
time during the Outreachy contribution period and are familiar with
the Outreachy program.

> 
>      Alison
> 
>      >
>      > Thanks,
>      >
>      > Fabio M. De Francesco
>      >
>      >
>      >
> 
>    --
>    Sevinj.Aghayeva
