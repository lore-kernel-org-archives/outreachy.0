X-GM-THRID: 1469972480000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d9de63814c425282
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr93983wix.0.1424465402363;
        Fri, 20 Feb 2015 12:50:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.68 with SMTP id y4ls336798lay.12.gmail; Fri, 20 Feb 2015
 12:50:01 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr330286laj.6.1424465401803;
        Fri, 20 Feb 2015 12:50:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si183457wic.1.2015.02.20.12.50.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 12:50:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="122740569"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 21:50:00 +0100
Date: Fri, 20 Feb 2015 21:50:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: Jes Sorensen <jes.sorensen@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Replace
 <asm/string.h> with <linux/string.h>
In-Reply-To: <CAL7P5j+ucoNiBEbRfkwZFObjPxH8=i0yMQTNxsoCj8fubdbSHw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1502202147320.2054@localhost6.localdomain6>
References: <1424460720-6136-1-git-send-email-ksenija.stanojevic@gmail.com> <54E78F3E.7010704@gmail.com> <CAL7P5j+ucoNiBEbRfkwZFObjPxH8=i0yMQTNxsoCj8fubdbSHw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-208031802-1424465401=:2054"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-208031802-1424465401=:2054
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 20 Feb 2015, Ksenija Stanojević wrote:

> Ok. Should i make a separate patch or v2 of one of them?

Don't top post.  In reading this message on a small screen one has not 
idea what comment this is responding to.  See

http://kernelnewbies.org/Outreachyfirstpatch

in the section about responding to emails.

julia

> On Fri, Feb 20, 2015 at 8:47 PM, Jes Sorensen <jes.sorensen@gmail.com>
> wrote:
>       On 02/20/15 14:32, Ksenija Stanojevic wrote:
>       > This patch fixes the following checkpatch.pl warning:
>       > Use #include <linux/string.h> instead of <asm/string.h>
>       >
>       > Signed-off-by: Ksenija Stanojevic
>       <ksenija.stanojevic@gmail.com>
>       > ---
>       >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git
>       a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>       b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>       > index 5533221..80dfa07 100644
>       > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>       > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>       > @@ -15,7 +15,7 @@
>       >  #include <linux/module.h>
>       >  #include <linux/init.h>
>       >  #include <linux/slab.h>
>       > -#include <asm/string.h>
>       > +#include <linux/string.h>
>       >  #include <asm/errno.h>
>       >
>       >  #include "ieee80211.h"
>       >
> 
> I just noticed you were generating two patches for very similar
> changes
> errno.h and string.h. Since these changes are to the same file and
> basically identical changes, doing them both in one patch is
> preferred.
> 
> Cheers,
> Jes
> 
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAL7P5j%2BucoNiBEbRfkwZF
> ObjPxH8%3Di0yMQTNxsoCj8fubdbSHw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-208031802-1424465401=:2054--

