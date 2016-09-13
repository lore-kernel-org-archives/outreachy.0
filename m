X-GM-THRID: 6329698324214448128
X-Received: by 10.28.27.19 with SMTP id b19mr21180wmb.2.1473759366699;
        Tue, 13 Sep 2016 02:36:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.193 with SMTP id i184ls206866wmf.7.gmail; Tue, 13 Sep
 2016 02:36:06 -0700 (PDT)
X-Received: by 10.28.206.138 with SMTP id e132mr2523079wmg.5.1473759366135;
        Tue, 13 Sep 2016 02:36:06 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w134si243249wmf.3.2016.09.13.02.36.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:36:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="192956096"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 11:36:05 +0200
Date: Tue, 13 Sep 2016 11:36:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, 
    Namrata A Shettar <namrataashettar@gmail.com>, 
    Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, badbuddha91@gmail.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: comedi_pcmcia:
 Removes unnecessary blank line
In-Reply-To: <2284008.DIPsHg5UWl@wuerfel>
Message-ID: <alpine.DEB.2.10.1609131135160.3355@hadrien>
References: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com> <2284008.DIPsHg5UWl@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Arnd Bergmann wrote:

> On Tuesday, September 13, 2016 11:51:53 AM CEST Namrata A Shettar wrote:
> > --- a/drivers/staging/comedi/comedi_pcmcia.c
> > +++ b/drivers/staging/comedi/comedi_pcmcia.c
> > @@ -18,7 +18,6 @@
> >
> >  #include <linux/module.h>
> >  #include <linux/kernel.h>
> > -
> >  #include "comedi_pcmcia.h"
> >
> >  /**
> >
>
> I would argue that checkpatch is wrong here, it's very common to have
> an empty line between the global and the local header files.

I forwarded this to Joe Perches, and he pointed out that checkpatch
doesn't give a warning for this.  Namrata, what version of the kernel are
you using?

julia


>
> 	Arnd
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2284008.DIPsHg5UWl%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.
>

