X-GM-THRID: 6337009316705337344
X-Received: by 10.25.201.198 with SMTP id z189mr1225446lff.13.1475505930174;
        Mon, 03 Oct 2016 07:45:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.102 with SMTP id 99ls881089ljb.28.gmail; Mon, 03 Oct 2016
 07:45:29 -0700 (PDT)
X-Received: by 10.25.15.152 with SMTP id 24mr340374lfp.10.1475505929646;
        Mon, 03 Oct 2016 07:45:29 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1316677wmd.1.2016.10.03.07.45.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 07:45:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,438,1473112800"; 
   d="scan'208";a="239212952"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2016 16:45:28 +0200
Date: Mon, 3 Oct 2016 16:45:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: sm750fb: make array char const
In-Reply-To: <20161003121551.GB5761@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610031644130.3509@hadrien>
References: <20161002231234.GA16439@domino-MS-16Y1> <alpine.DEB.2.10.1610030720210.3142@hadrien> <20161003121551.GB5761@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 3 Oct 2016, Muraru Mihaela wrote:

> On Mon, Oct 03, 2016 at 07:24:43AM +0200, Julia Lawall wrote:
> >
> >
> > On Mon, 3 Oct 2016, Muraru Mihaela wrote:
> >
> > > This patch fixes a chechpatch.pl warning in file sm750.c
> > > WARNING: static const char * array should probably be static
> > > const char * const,by adding a missing const.
> > >
> > > Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> > > ---
> > >  drivers/staging/sm750fb/sm750.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > > index 7d90e25..90b6c64 100644
> > > --- a/drivers/staging/sm750fb/sm750.c
> > > +++ b/drivers/staging/sm750fb/sm750.c
> > > @@ -32,7 +32,7 @@
> > >  static int g_hwcursor = 1;
> > >  static int g_noaccel;
> > >  static int g_nomtrr;
> > > -static const char *g_fbmode[] = {NULL, NULL};
> > > +static const char * const g_fbmode[] = {NULL, NULL};
> >
> > Does this compile?  It seems suspicious to have an array that contains
> > only NULL NULL that is never updated.  One would always know that both
> > entries are NULL, so there would be no need to look in the array.
> >
> > In practice, there seem to be some updates to the array elements in the
> > code.
> >
> > julia
>
>
>  Sorry my mistake,I looked through the file and it is clearly not a good
>  solving , I made a read only array, that I want to be update.

You need to be sure that you have compiled the file you change before you
send a patch.  Whether a file is compiled depends on the configuration
options.  So you need to have an actual .o file for the changed file.
And you should not ignore either warnings or errors.

julia

