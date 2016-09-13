X-GM-THRID: 6329524753040146432
X-Received: by 10.194.104.230 with SMTP id gh6mr3462233wjb.7.1473760767959;
        Tue, 13 Sep 2016 02:59:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.136 with SMTP id v130ls1761753wmf.14.canary; Tue, 13
 Sep 2016 02:59:23 -0700 (PDT)
X-Received: by 10.28.206.68 with SMTP id e65mr33160wmg.3.1473760763507;
        Tue, 13 Sep 2016 02:59:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si336877wmr.2.2016.09.13.02.59.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:59:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="192959646"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 11:59:23 +0200
Date: Tue, 13 Sep 2016 11:59:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove unused function
 vnt_key_init_table
In-Reply-To: <CAOH+1jEzPD5tGuKsFFqGBiVTWJ=Qt+Vtf=_zm2SBnH5A4w4Ucw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609131157530.3355@hadrien>
References: <1473707299-29700-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609122318060.3549@hadrien> <CAOH+1jEzPD5tGuKsFFqGBiVTWJ=Qt+Vtf=_zm2SBnH5A4w4Ucw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Bhumika Goyal wrote:

> On Tue, Sep 13, 2016 at 2:48 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Tue, 13 Sep 2016, Bhumika Goyal wrote:
> >
> >> The function vnt_key_init_table is not used anywhere in the kernel.
> >> Therefore, remove the function definition and prototype.
> >> Grepped to find occurences.
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >>  drivers/staging/vt6655/key.c | 10 ----------
> >>  drivers/staging/vt6655/key.h |  2 --
> >>  2 files changed, 12 deletions(-)
> >>
> >> diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
> >> index ffcaf25..e161d5d 100644
> >> --- a/drivers/staging/vt6655/key.c
> >> +++ b/drivers/staging/vt6655/key.c
> >> @@ -31,16 +31,6 @@
> >>  #include "key.h"
> >>  #include "mac.h"
> >>
> >> -int vnt_key_init_table(struct vnt_private *priv)
> >> -{
> >> -     u32 i;
> >> -
> >> -     for (i = 0; i < MAX_KEY_TABLE; i++)
> >> -             MACvDisableKeyEntry(priv, i);
> >
> > Nice to see things go.  Did you check whether there are other uses of
> > MAX_KEY_TABLE and MACvDisableKeyEntry?
> >
>
> Yes, both are getting used a couple of times. I will look for other unused ones.

OK.  The case of static functions can be done easily with Coccinelle,
because Coccinelle works on one file at a time, and static functions can
only be used in the same file.  You should still check with grep, and then
with a kernel compile, because sometimes static fuctions can be used in
unexpected ways, due to strange #includes or macro calls.

julia

