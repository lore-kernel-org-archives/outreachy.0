Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BD57B
	for <outreachy@lists.linux.dev>; Thu, 27 Oct 2022 20:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=GYmUWi3nzjXMG4GsahAh94o6bn39ykZaOwvYpQKpFQo=;
  b=dp/dx0Vdm56ezX5uv3q5j3Ktdf7cYvh1FDjMKE9pdlacOXtMpCN5pE5j
   aiJbuieDcv16DVdMyKzST27pLVWNgCOGW1WdcptbtjqlLlciPwsf/aAva
   vvDE6uEGPOS4VYgDnsPl0KslhV9TX3yeQ9/YneD9BN7L5ZhQUvNEqPnnt
   4=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,218,1661810400"; 
   d="scan'208";a="35766269"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2022 22:34:21 +0200
Date: Thu, 27 Oct 2022 22:34:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: ssengar@linux.microsoft.com, kumarpraveen@linux.microsoft.com, 
    alison.schofield@intel.com, outreachy@lists.linux.dev
Subject: Re: Coccinelle make error
In-Reply-To: <Y1rqVoRhSCQcunXJ@ubunlion>
Message-ID: <alpine.DEB.2.22.394.2210272234070.9671@hadrien>
References: <Y1cz1Vqe+hpAssz7@debian-BULLSEYE-live-builder-AMD64> <29c7fa5-3036-1a6-1bde-4a7ecb6b83ce@inria.fr> <Y1rqVoRhSCQcunXJ@ubunlion>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 28 Oct 2022, Deepak R Varma wrote:

> On Tue, Oct 25, 2022 at 07:44:35PM +0200, Julia Lawall wrote:
> >
> >
> > On Tue, 25 Oct 2022, Deepak R Varma wrote:
> >
> > > Hello,
> > > I received following error while running make step on the Coccinelle repo. Looks
> > > like there may be some version mismatch with the compiler??? Do you know how to
> > > resolve it?
> > >
> > >         make -C bundles/pyml all
> > >         make[1]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> > >         make depend-rec
> > >         make[2]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> > >         cd pyml-current && LD_LIBRARY_PATH=/home/drv/git/kernels/coccinelle/bundles/stdcompat: ./generate
> > >         Fatal error: unknown C primitive `caml_sys_mkdir'
> > >         Aborted
> > >         make[2]: *** [Makefile:61: pyml-current/pywrappers.ml] Error 134
> > >         make[2]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> > >         make[1]: *** [../Makefile.bundles:100: .depend] Error 2
> > >         make[1]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> > >         make: *** [Makefile:489: /home/drv/git/kernels/coccinelle/bundles/pyml/pyml.cmxa] Error 2
> >
> > I tried compiling the latest version from scratch and all was fine, but it
> > may depend on your configuration.  Could you send your configuration file?
>
> Quick Update:
> I stood up a new instance of Ubuntu on my VM and was able to successfully get
> Coccinelle / coccicheck to work. It looks like there may be some
> package/versioning conflicts across dependencies for Debian packages of
> Coccinelle that prevented me from getting it to work.

OK, good news.

julia

>
> Will continue to use the new VM and catch up with the remaining tasks.
>
> Thank you Julia and all for your assistance.
>
> ./drv
>
> >
> > julia
> >
>
>
>
