Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777E526E06
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 14:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="T1d6MExC"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=rb8uTwyooaBuatCjqqFHY8x7VxXTAA45b7201SuvcLg=;
  b=T1d6MExC8AVGICBUvrhNS2ZREC52DLxEHlnhDcfxnICPLuLs2ghrRju6
   p5FLK0s+94yHcSGMCNulGh2gCDZUodMeixNAi+r366W7NeXTkDXlIP0Uj
   TrcPK3WZpiPbDBzEmUiz59p+vQYzpUck81YGGoOg5hBQHngO1hpKjmFjJ
   A=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,204,1694728800"; 
   d="scan'208";a="67990781"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2023 16:33:36 +0200
Date: Fri, 6 Oct 2023 16:33:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Andi Shyti <andi.shyti@kernel.org>
cc: NAKITYO JOANITA <nakityojoanita51@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Seeking assistance with the linux kernel installation
In-Reply-To: <20231006134827.4cywz2noo34d64c6@zenone.zhora.eu>
Message-ID: <alpine.DEB.2.22.394.2310061632370.3197@hadrien>
References: <CAOJCLCs2Qc1-rRttkGUTKJNQaUfoN9hA8H_5dnYJckkteRzMQg@mail.gmail.com> <20231006134827.4cywz2noo34d64c6@zenone.zhora.eu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 6 Oct 2023, Andi Shyti wrote:

> Hi,
>
> On Fri, Oct 06, 2023 at 04:32:44PM +0300, NAKITYO JOANITA wrote:
> > Hello,
> > I hope you are doing well, I'm currently following the steps outlined
> > in the article for setup directions, I have completed the first steps
> > up to the 'installing the kernel' section.
> > However when i run the provided command, i get an error of
>
> I guess the command you are trying to run is
>
> 	sudo make modules_install install
>
> right?
>
> >   SYMLINK /lib/modules/6.6.0-rc1+/build
> > make[3]: *** No rule to make target 'modules.order', needed by
> > '/lib/modules/6.6.0-rc1+/modules.order'.  Stop.
> > make[2]: *** [Makefile:1821: modules_install] Error 2
> > make[1]: *** [/home/anita/git/kernels/staging/Makefile:359:
> > __build_one_by_one] Error 2
> > make: *** [Makefile:234: __sub-make] Error 2
>
> I believe you failed the previous steps so that not all the
> compiled files are in place.
>
> Please, try to compile again and look out for errors.

Even if it is time consuming, it can help to compile without the -j
option.  Then you will see the message at the point where it fails.  If
you have already compiled most of the files, it should get to that point
quickly.

julia
