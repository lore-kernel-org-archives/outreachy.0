X-GM-THRID: 6330196266384883712
X-Received: by 10.46.32.80 with SMTP id g77mr1493621ljg.9.1473943072439;
        Thu, 15 Sep 2016 05:37:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.11 with SMTP id 11ls275934ljj.2.gmail; Thu, 15 Sep 2016
 05:37:51 -0700 (PDT)
X-Received: by 10.46.9.5 with SMTP id 5mr1495425ljj.0.1473943071557;
        Thu, 15 Sep 2016 05:37:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si175124wmd.1.2016.09.15.05.37.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:37:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,339,1470693600"; 
   d="scan'208";a="236957876"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 14:37:51 +0200
Date: Thu, 15 Sep 2016 14:37:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, Ronald Rojas <ronladred@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ethernet: Fixes checkpatch
 blank lines warnings
In-Reply-To: <15778561.A1ImvO0lIj@wuerfel>
Message-ID: <alpine.DEB.2.10.1609151436370.3045@hadrien>
References: <20160915122426.GA2382@fedora> <15778561.A1ImvO0lIj@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Arnd Bergmann wrote:

> On Thursday, September 15, 2016 8:24:26 AM CEST Ronald Rojas wrote:
> > Fixes several of the checkpatch.pl warning
> > CHECK: Please don't use multiple blank lines
> >
> > Signed-off-by: Ronald Rojas <ronladred@gmail.com>
>
> In the subject line, please use "octeon" instead of "ethernet".

In general, you can't make up your own formula for creating the subject
line.  You have to see what others have done, because different subsystems
use different strategies.  To see what others have done, do:

git log --oneline filename.c

julia

>
> Did you build test this driver using a MIPS cross-compiler?
> I realize that it's just a whitespace change and it clearly
> won't break anything, but in general you should do some
> build testing before sending it out, and properly building
> this driver is a bit tricky.
>
> 	Arnd
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/15778561.A1ImvO0lIj%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.
>

