X-GM-THRID: 6329698324214448128
X-Received: by 10.157.54.216 with SMTP id s24mr21427002otd.49.1473776510311;
        Tue, 13 Sep 2016 07:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.224.3 with SMTP id c3ls398482ith.7.gmail; Tue, 13 Sep 2016
 07:21:49 -0700 (PDT)
X-Received: by 10.66.84.33 with SMTP id v1mr837164pay.10.1473776509137;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
Received: by 10.55.9.211 with SMTP id 202msqkj;
        Tue, 13 Sep 2016 02:57:14 -0700 (PDT)
X-Received: by 10.28.222.4 with SMTP id v4mr41246wmg.0.1473760634255;
        Tue, 13 Sep 2016 02:57:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si1003472wmg.3.2016.09.13.02.57.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:57:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="192959292"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 11:57:13 +0200
Date: Tue, 13 Sep 2016 11:57:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, arnd@arndb.de, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, badbuddha91@gmail.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: comedi_pcmcia:
 Removes unnecessary blank line
In-Reply-To: <e2fdc076-900a-4a25-9e5a-49d693bd3c74@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609131155250.3355@hadrien>
References: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com> <2284008.DIPsHg5UWl@wuerfel> <alpine.DEB.2.10.1609131135160.3355@hadrien> <e2fdc076-900a-4a25-9e5a-49d693bd3c74@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-212980482-1473760632=:3355"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-212980482-1473760632=:3355
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 13 Sep 2016, Namrata A Shettar wrote:

> Yes I realize that this may be wrong.Thank you for your inputs!
>
>  Also,The version of the kernel I am using is : 4.8.0-rc2+

You should be using what you get by doing the following command:

git clone -b staging-testing git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

Maybe this is what you already have?

julia

>
> Thanks,
> Namrata
>
> On Tuesday, September 13, 2016 at 3:06:06 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Tue, 13 Sep 2016, Arnd Bergmann wrote:
>
>       > On Tuesday, September 13, 2016 11:51:53 AM CEST Namrata A
>       Shettar wrote:
>       > > --- a/drivers/staging/comedi/comedi_pcmcia.c
>       > > +++ b/drivers/staging/comedi/comedi_pcmcia.c
>       > > @@ -18,7 +18,6 @@
>       > >
>       > >  #include <linux/module.h>
>       > >  #include <linux/kernel.h>
>       > > -
>       > >  #include "comedi_pcmcia.h"
>       > >
>       > >  /**
>       > >
>       >
>       > I would argue that checkpatch is wrong here, it's very common
>       to have
>       > an empty line between the global and the local header files.
>
>       I forwarded this to Joe Perches, and he pointed out that
>       checkpatch
>       doesn't give a warning for this.  Namrata, what version of the
>       kernel are
>       you using?
>
>       julia
>
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e2fdc076-900a-4a25-9e5a-
> 49d693bd3c74%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-212980482-1473760632=:3355--

