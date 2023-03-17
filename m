Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4370979D6
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 21:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=WO2fVBURyDvumC+7sx4j+K3YuvlamSbbd1JXcC5BBbc=;
  b=FPW5QDOLAQGysbZwpu4OGeCZAP8DWEf5ty41vsggjbsbZXmNK/+5LOS+
   InTnJVI4PcAK8zmumJGaV4LIsIaQlD3dV4yWLysefXDSCp/VozebV5Pny
   A2qI7d0AEKF4uO10/sfX7QUB+oCuMJAggydDFQ3KbIxtx2UaL/PX6D25f
   Q=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,270,1673910000"; 
   d="scan'208";a="97839731"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 22:55:35 +0100
Date: Fri, 17 Mar 2023 22:55:34 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mark Heim <questioneight@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Patching spelling errors
In-Reply-To: <20230317215000.GA86759@pikachu-Z97-D3H>
Message-ID: <alpine.DEB.2.22.394.2303172251380.4097@hadrien>
References: <20230317191154.GA57413@pikachu-Z97-D3H> <alpine.DEB.2.22.394.2303172116300.4097@hadrien> <20230317205743.GA78907@pikachu-Z97-D3H> <alpine.DEB.2.22.394.2303172201370.4097@hadrien> <20230317215000.GA86759@pikachu-Z97-D3H>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Mar 2023, Mark Heim wrote:

> On Fri, Mar 17, 2023 at 10:07:05PM +0100, Julia Lawall wrote:
> > > There is a quirk with how my directories are set up due to the commands
> > > I used to check out.
> >
> > It's not at all clear to me what you mean by this.  The one and only
> > proper way to get the code is to clone the complete repository.  YOu can
> > use
> >
> > git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git
> >
>
> Consider the greybus directory that I attempted to commit my patch. On my machine, the path is:
>
> ~/git/kernels/staging/drivers/staging/greybus
>
> I'm getting confused because I did a checkout of the repository inside a
> folder named staging, correct?

OK, you can name the top level folder as whatever you want, but staging is
fine.  But I was referring to the drivers/staging that comes after that.

> I wrote a script to find instances of a misspelled word in the directory
> that would fix a word. In the Outreachyfirstpatch tutorial, under the
> "Potential cleanup patch tasks," spelling mistakes are number 5.

Fixing mistakes in the tutorial is also a contribution. Ask Alison for the
necessary access.

> I really appreciate your help, Julia. Even if I didn't make it as an
> intern this summer, my productivity and confidence have obtained a big
> boost!

An important part of kernel development is communicating in a way that is
quickly and accurately understandable by others (or by yourself 6 months
later :).  That is a useful skill in lots of other areas.

julia
