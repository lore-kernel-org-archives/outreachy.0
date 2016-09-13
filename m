X-GM-THRID: 6329788419736076288
X-Received: by 10.28.31.209 with SMTP id f200mr253230wmf.4.1473775461026;
        Tue, 13 Sep 2016 07:04:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.72 with SMTP id u69ls328861wmu.8.gmail; Tue, 13 Sep 2016
 07:04:20 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr206316wjm.3.1473775460389;
        Tue, 13 Sep 2016 07:04:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si1438706wmd.1.2016.09.13.07.04.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 07:04:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="192995438"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 16:04:19 +0200
Date: Tue, 13 Sep 2016 16:04:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: wilc1000: Remove struct
 typedef
In-Reply-To: <CAOH+1jExFn-UUq3xudSiwdm=Rm4PP5oa19w675Dx8dMB3+VCoQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609131603270.3355@hadrien>
References: <1473768686-2025-1-git-send-email-bhumirks@gmail.com> <CAOH+1jExFn-UUq3xudSiwdm=Rm4PP5oa19w675Dx8dMB3+VCoQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Bhumika Goyal wrote:

> On Tue, Sep 13, 2016 at 5:41 PM, Bhumika Goyal <bhumirks@gmail.com> wrote:
> > Remove typedef from structure tstrRSSI as using typedef for
> > structures is not preferred.
> > Found using coccinelle:
> >
> > @r1@
> > type T;
> > @@
> >
> > typedef struct { ... } T;
> >
> > @script:python c1@
> > T2;
> > T << r1.T;
> > @@
> > if T[-2:] =="_t":
> >   coccinelle.T2 = T[:-2];
> >   print T
> > else:
> >   coccinelle.T2=T;
> >
> > @r2@
> > type r1.T;
> > identifier c1.T2;
> > @@
> > -typedef
> > struct
> > + T2
> > { ... }
> > -T
> > ;
> >
> > @r3@
> > type r1.T;
> > identifier c1.T2;
> > @@
> > - T
> > + struct T2
> >
>
> I would like to add a note here: The above script also removes '_t'
> from typedefs if any occurrence found.
> Also, for running the script I used --all-includes for getting
> information from header files as structure definition and its object
> declaration  might be in different files.
> So this option removes typedefs from both places.

Good job.  I assume you did a grep to be double sure that the name
tstrRSSI doesn't occur anywhere else?  And a compile of course.

julia

> > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> > index 076e06a..cff1698 100644
> > --- a/drivers/staging/wilc1000/coreconfigurator.h
> > +++ b/drivers/staging/wilc1000/coreconfigurator.h
> > @@ -70,11 +70,11 @@ enum connect_status {
> >         CONNECT_STS_FORCE_16_BIT = 0xFFFF
> >  };
> >
> > -typedef struct {
> > +struct tstrRSSI {
> >         u8 u8Full;
> >         u8 u8Index;
> >         s8 as8RSSI[NUM_RSSI];
> > -} tstrRSSI;
> > +};
> >
> >  struct network_info {
> >         s8 rssi;
> > @@ -93,7 +93,7 @@ struct network_info {
> >         u8 *ies;
> >         u16 ies_len;
> >         void *join_params;
> > -       tstrRSSI str_rssi;
> > +       struct tstrRSSI str_rssi;
> >         u64 tsf_hi;
> >  };
> >
> > --
> > 1.9.1
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jExFn-UUq3xudSiwdm%3DRm4PP5oa19w675Dx8dMB3%2BVCoQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

