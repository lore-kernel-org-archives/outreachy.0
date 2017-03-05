X-GM-THRID: 6394051769917243392
X-Received: by 10.28.144.142 with SMTP id s136mr326776wmd.16.1488742314374;
        Sun, 05 Mar 2017 11:31:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.203 with SMTP id 72ls147956lfy.19.gmail; Sun, 05 Mar
 2017 11:31:53 -0800 (PST)
X-Received: by 10.46.92.131 with SMTP id q125mr1860496ljb.15.1488742313761;
        Sun, 05 Mar 2017 11:31:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si798312wmg.3.2017.03.05.11.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:31:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="263201067"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 20:31:53 +0100
Date: Sun, 5 Mar 2017 20:31:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Alison Schofield <amsfield22@gmail.com>, lars@metafoo.de, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: iio: accel: Group similar
 macros into enums
In-Reply-To: <20170305192840.GA12508@nati-X550JK>
Message-ID: <alpine.DEB.2.20.1703052031200.3052@hadrien>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com> <20170305185828.GA3380@d830.WORKGROUP> <20170305191459.GA20822@nati-X550JK> <alpine.DEB.2.20.1703052017040.3052@hadrien> <20170305192840.GA12508@nati-X550JK>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:

> On Sun, Mar 05, 2017 at 08:17:45PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:
> >
> > > On Sun, Mar 05, 2017 at 10:58:29AM -0800, Alison Schofield wrote:
> > > > On Sun, Mar 05, 2017 at 06:26:03PM +0200, Narcisa Ana Maria Vasile wrote:
> > > > > Group related macros into enums, for clarity.
> > > >
> > > > Hi Narcisa,
> > > >
> > > > Is this enum then used in a type declaration?
> > > >
> > > > BTW - I can see Jonathan is following right along and sweeping these up,
> > > > but for future reference, this patch depended on a previous patch sent hours
> > > > earlier, that was not yet in staging-testing.  When this happens, one option
> > > > is to give a note below the --- (as you would for version comments) stating the
> > > > dependency.  This way someone reviewing the patch doesn't simply reject
> > > > it as not applying to my tree.
> > > >
> > > > alisons
> > > >
> > >   Hi,
> > >
> > >   Do you mean whether there are any type declarations where I could
> > >   now replace the type with the enum type ? If so, I searched for
> > >   these type of situations, but didn't find any. If I missed one of
> > >   these cases, please let me know and I'll send a new patch.
> >
> > Typically the constant would be stored in something, compared to
> > something, etc.  Are these constants not used at all?
> >
> > julia
> >
> >
>   Yes, they are used, they are stored. I thought she was asking
>   if I encountered any situations like in adc/ad7280a.h file
>   where you could define an enum for conversion averaging
>   macros and replace the 'unsigned int' field in the
>   ad7280_platform_data with the enum type.

If they are stored in something, I guess you could change the type of that
thing?

julia

>
>   Narcisa
> > >
> > >   Thank you for the note about the patch dependencies. I was just about
> > >   to ask about this, cause I realized there might be a problem.
> > >   I'll keep in mind to make a note next time.
> > >
> > >   Narcisa
> > >
> > > > > Narcisa Ana Maria Vasile (2):
> > > > >   staging: iio: adis16209: Group similar macros into enums
> > > > >   staging: iio: adis16240: Group similar macros into enums
> > > > >
> > > > >  drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
> > > > >  drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
> > > > >  2 files changed, 18 insertions(+), 14 deletions(-)
> > > > >
> > > > > --
> > > > > 1.9.1
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488730643.git.narcisaanamaria12%40gmail.com.
> > > > > For more options, visit https://groups.google.com/d/optout.
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305191459.GA20822%40nati-X550JK.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305192840.GA12508%40nati-X550JK.
> For more options, visit https://groups.google.com/d/optout.
>

