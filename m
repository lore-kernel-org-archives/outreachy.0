Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D4B7E
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 16:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=uHCOx504s+UKqsL17YwVINMg9UKFSRJXoKj0NUlVo+Y=;
  b=W7oATprosfPAVZIlZR24uyLEcdSgSUo+jnEPviqzNd14kWvpNUJTt1kC
   qAjn6oXWa2OTJio331TbJ7BOxIVcFWSMk3b0rLgYZqzNSUQd4LBR1rir4
   Nk9y7vxHkaARFPvCbyuxe/RKynRE0fSf2qLjN+TxJpVMzOgOx2eyy7hKi
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,202,1661810400"; 
   d="scan'208";a="32134861"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 18:49:57 +0200
Date: Fri, 21 Oct 2022 18:49:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Emily Peri <eperi1024@gmail.com>
cc: Alison Schofield <alison.schofield@intel.com>, 
    Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] Track patches in staging tree
In-Reply-To: <Y1LLVSNEwewWntrF@marshmallow>
Message-ID: <8b1578ec-c81-5368-ce7c-7e3257620da@inria.fr>
References: <Y1GE6ImSoBuYCTjT@aschofie-mobl2> <Y1LLVSNEwewWntrF@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 21 Oct 2022, Emily Peri wrote:

> On Thu, Oct 20, 2022 at 10:27:04AM -0700, Alison Schofield wrote:
> >
> > In case you are wondering the status of your patches -
> >
> > When GregKH accepts your patch you get an acknowledgment email directly.
> > If he specifically rejects it, you also get feedback from him on what
> > to improve. He won't accept a patch where another reviewer has already
> > requested an update. So, once you get any feedback, revise and send the
> > new version.
>
> Thanks for the clarification! One lingering question I have-- I sent in
> a patchset and got feedback on one of the patches in the set, so I'm
> planning to revise it today. I noticed though that Greg accepted the
> other patches in the patchset and I got a notification that those will
> be merged. Is that how it usually works with patchsets? Can the other
> patches in the set be merged is one of them needs revision?

Maybe he merged some earlier ones in the series?  As one goes through your
series, each erly one should not depend on the later ones.

julia

>
> > You can follow the staging-testing tree [1] and see if Greg has
> > merged patches since your submittal. Those *are* accepted patches
> > and should be recorded as contributions in your Outreachy dashboard.
> >
> > Occasionally a patch gets missed in a flurry of patches. That might
> > make you think about RESENDing. See the tutorial directions about
> > resending.
> >
> > For example, at this moment I can see that Tanjuate, Deepak, and
> > Emily (sorry if I'm not recognizing another name yet) had patches
> > accepted in the last couple of hours.
> >
> > Hope that's useful,
> > Alison
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing
> >
> >
>
>
