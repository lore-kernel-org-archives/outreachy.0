Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6073D748E
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 17:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=RkNyTAuPUAIuBWgXOg1jn3LkEbkZPs3ElUUQu0B8ID0=;
  b=ezqhkTdSgmmlDgFwGHAF/KbuC1kaCsnlHyGJHcBDYrIwP/9OlYkBlHze
   KcwOgGAjELU27cVM4BSdncbzDwsXw/k5hClyRnLnxGjtYLllrgWHB3ViB
   d4rBG+PLTlHiIBVRwtI+3JfbjtTIs//OmIqVgQKpwVwloa3EM5co7PEun
   4=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,212,1661810400"; 
   d="scan'208";a="71464500"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2022 19:44:35 +0200
Date: Tue, 25 Oct 2022 19:44:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Deepak R Varma <drv@mailo.com>
cc: ssengar@linux.microsoft.com, kumarpraveen@linux.microsoft.com, 
    alison.schofield@intel.com, outreachy@lists.linux.dev
Subject: Re: Coccinelle make error
In-Reply-To: <Y1cz1Vqe+hpAssz7@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <29c7fa5-3036-1a6-1bde-4a7ecb6b83ce@inria.fr>
References: <Y1cz1Vqe+hpAssz7@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 25 Oct 2022, Deepak R Varma wrote:

> Hello,
> I received following error while running make step on the Coccinelle repo. Looks
> like there may be some version mismatch with the compiler??? Do you know how to
> resolve it?
>
>         make -C bundles/pyml all
>         make[1]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
>         make depend-rec
>         make[2]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
>         cd pyml-current && LD_LIBRARY_PATH=/home/drv/git/kernels/coccinelle/bundles/stdcompat: ./generate
>         Fatal error: unknown C primitive `caml_sys_mkdir'
>         Aborted
>         make[2]: *** [Makefile:61: pyml-current/pywrappers.ml] Error 134
>         make[2]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
>         make[1]: *** [../Makefile.bundles:100: .depend] Error 2
>         make[1]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
>         make: *** [Makefile:489: /home/drv/git/kernels/coccinelle/bundles/pyml/pyml.cmxa] Error 2

I tried compiling the latest version from scratch and all was fine, but it
may depend on your configuration.  Could you send your configuration file?

julia
