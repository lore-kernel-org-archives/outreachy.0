Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7907617D7
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 05:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Wx9Wa7JcQb0YNuKHL5Uo9VBclP4BG/4merJj/VFSjSQ=;
  b=JzZCMWd7e0gVMTv7zLyOioMDncFLJZoaQgqSfj//6klC4YeshBdn50j5
   1PfNx7BtwuDd4ppLf4BMjrQLmSn/BFsmPVlXYGcKSDKp7rBOE9VhCgEdQ
   7J/krvs41Z9QpaDKOS0P5tF2m69ZS2nBdsUx+EiBRz+gxGsi1va9lbSM5
   I=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,200,1661810400"; 
   d="scan'208";a="32038175"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 07:05:16 +0200
Date: Fri, 21 Oct 2022 07:05:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: Alison Schofield <alison.schofield@intel.com>, outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] deepakrvarma
In-Reply-To: <Y1HDtZJf/2JV5vTu@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <alpine.DEB.2.22.394.2210210703490.2816@hadrien>
References: <Y1BJrtzi5gk2lzXn@debian-BULLSEYE-live-builder-AMD64> <Y1BLWeccWuqI4u3h@debian-BULLSEYE-live-builder-AMD64> <Y1BhSXT+4rOcL89O@aschofie-mobl2> <Y1HDtZJf/2JV5vTu@debian-BULLSEYE-live-builder-AMD64>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 21 Oct 2022, Deepak R Varma wrote:

> On Wed, Oct 19, 2022 at 01:42:49PM -0700, Alison Schofield wrote:
> > On Thu, Oct 20, 2022 at 12:39:13AM +0530, Deepak R Varma wrote:
> > > On Thu, Oct 20, 2022 at 12:32:06AM +0530, Deepak R Varma wrote:
> > > > Hello,
> > > > I intend to contribute to the kernelnewbies wiki. Kindly allow me access to the
> > > > wiki edit capability.
> > >
> > > Added user name in the subject line instead of email.
> >
> > Added deepakrvarma to Editors list.
>
> Thank you. How do you suggest I start? Are there previous contributions that I
> can review or documentation / tutorial to follow? It will be helpful to know how
> to make the changes and submit those for review / deployment.

I don't know how to see individual past contributions in the wiki.

If you have found some part of the instructions to be unclear, you can
propose to change them.  It could be good to propose your change on the
mailing list first, to get feedback from others.

julia

>
> ./drv
>
> >
> > Thanks for the help maintaining the wiki!
> > Alison
> >
> > >
> > > >
> > > > Thank you,
> > > > ./drv
> > > >
> > > >
> > > >
> > >
> > >
> > >
> >
>
>
>
>
