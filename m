X-GM-THRID: 6211002090683105280
X-Received: by 10.28.211.201 with SMTP id k192mr1387188wmg.3.1446129715874;
        Thu, 29 Oct 2015 07:41:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.136.143 with SMTP id k137ls367447wmd.28.canary; Thu, 29 Oct
 2015 07:41:55 -0700 (PDT)
X-Received: by 10.28.19.148 with SMTP id 142mr1394493wmt.4.1446129715436;
        Thu, 29 Oct 2015 07:41:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si127913wmb.3.2015.10.29.07.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 07:41:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,214,1444687200"; 
   d="scan'208";a="185043679"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Oct 2015 15:41:55 +0100
Date: Thu, 29 Oct 2015 15:41:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] depmod: modules in dependency cycles
In-Reply-To: <20151029094006.GA15647@Socrates-Mint>
Message-ID: <alpine.DEB.2.10.1510291541310.2505@hadrien>
References: <20151029094006.GA15647@Socrates-Mint>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Oct 2015, Eva Rachel Retuya wrote:

> Hi,
>
> After successfully finishing a few patches and rebasing my branch to
> obtain the latest updates, I have run into this problem that keeps me
> from updating my kernel and therefore won't let me test patch/es I
> intend to send.
>
> A snippet of my "failed" installation can be found here:
> http://pastebin.com/8WzV1Ayn
>
> I'd like to ask for help as to how to resolve this issue. My searches so
> far did not yield enough information for me to successfully solve this
> on my own. What I am doing lately was to boot to my stable kernel
> (3.16.0-38), copy its config to .config as directed from the tutorial. Compile the kernel and install (sudo make modules_install install). The end result are as indicated on the pastebin link. Even booting from my last-known working "latest" kernel (rc5) yields the same result.

I usually use make allyesconfig.  Maybe try that.

julia

> I reviewed the config and the lustre components were selected as
> modules. It worked without a hitch before so I'm puzzled as to why the
> said modules are in dependency cycles now. I also did "make clean" and
> recompiled from scratch, still no dice.
>
> Thank you in advance,
> Eva
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151029094006.GA15647%40Socrates-Mint.
> For more options, visit https://groups.google.com/d/optout.
>

