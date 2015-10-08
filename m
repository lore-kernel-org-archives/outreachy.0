X-GM-THRID: 6202759012965941248
X-Received: by 10.112.202.165 with SMTP id kj5mr1015036lbc.5.1444287272283;
        Wed, 07 Oct 2015 23:54:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.195 with SMTP id r3ls68582wik.47.gmail; Wed, 07 Oct
 2015 23:54:31 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr1022330wja.7.1444287271946;
        Wed, 07 Oct 2015 23:54:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si91482wiz.0.2015.10.07.23.54.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 23:54:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,653,1437429600"; 
   d="scan'208";a="181676083"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2015 08:54:29 +0200
Date: Thu, 8 Oct 2015 07:54:23 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Deepa Dinamani <deepa.kernel@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: skein: remove extra
 indentation
In-Reply-To: <20151008012611.GA20044@deepa-ubuntu>
Message-ID: <alpine.DEB.2.10.1510080753010.2559@hadrien>
References: <20151007170600.GA24764@deepa-ubuntu> <alpine.DEB.2.10.1510072020130.2482@hadrien> <20151008012611.GA20044@deepa-ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 7 Oct 2015, Deepa Dinamani wrote:

> On Wed, Oct 07, 2015 at 08:20:38PM +0100, Julia Lawall wrote:
> > On Wed, 7 Oct 2015, Deepa Dinamani wrote:
> >
> > > Remove second leading indent of code in do/while macro blocks.
> > >
> > > This patch fixes the checkpatch.pl warning:
> > >
> > > WARNING: suspect code indent for conditional statements
> > >
> > > Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> > > ---
> > >  drivers/staging/skein/skein_block.c | 40 ++++++++++++++++++-------------------
> > >  1 file changed, 20 insertions(+), 20 deletions(-)
> > >
> > > diff --git a/drivers/staging/skein/skein_block.c b/drivers/staging/skein/skein_block.c
> > > index b0cd935..09d37d5 100644
> > > --- a/drivers/staging/skein/skein_block.c
> > > +++ b/drivers/staging/skein/skein_block.c
> > > @@ -96,16 +96,16 @@ do { \
> > >  #endif
> > >  #define R256_8_ROUNDS(R)                                 \
> > >  do {                                                     \
> >
> > Could it be nicer to indent the do instead?
> >
> > julia
>
> Is reducing the size of the diff a primary goal, or is it a coding
> style preference? Both approaches are used by other macros in this
> same source file. Should they all be changed for consistency?

When something is subordinate to something else, I would personnaly
prefer to see the thing indented.  With the do out in the leftmost column,
it looks like it is on its own, floating in space.  So I think that
indenting the definition of a macro everywhere would be better.

julia

>
> deepa
>
> > > -		R256(0, 1, 2, 3, R_256_0, 8 * (R) + 1);  \
> > > -		R256(0, 3, 2, 1, R_256_1, 8 * (R) + 2);  \
> > > -		R256(0, 1, 2, 3, R_256_2, 8 * (R) + 3);  \
> > > -		R256(0, 3, 2, 1, R_256_3, 8 * (R) + 4);  \
> > > -		I256(2 * (R));                           \
> > > -		R256(0, 1, 2, 3, R_256_4, 8 * (R) + 5);  \
> > > -		R256(0, 3, 2, 1, R_256_5, 8 * (R) + 6);  \
> > > -		R256(0, 1, 2, 3, R_256_6, 8 * (R) + 7);  \
> > > -		R256(0, 3, 2, 1, R_256_7, 8 * (R) + 8);  \
> > > -		I256(2 * (R) + 1);                       \
> > > +	R256(0, 1, 2, 3, R_256_0, 8 * (R) + 1);  \
> > > +	R256(0, 3, 2, 1, R_256_1, 8 * (R) + 2);  \
> > > +	R256(0, 1, 2, 3, R_256_2, 8 * (R) + 3);  \
> > > +	R256(0, 3, 2, 1, R_256_3, 8 * (R) + 4);  \
> > > +	I256(2 * (R));                           \
> > > +	R256(0, 1, 2, 3, R_256_4, 8 * (R) + 5);  \
> > > +	R256(0, 3, 2, 1, R_256_5, 8 * (R) + 6);  \
> > > +	R256(0, 1, 2, 3, R_256_6, 8 * (R) + 7);  \
> > > +	R256(0, 3, 2, 1, R_256_7, 8 * (R) + 8);  \
> > > +	I256(2 * (R) + 1);                       \
> > >  } while (0)
> > >
> > >  #define R256_UNROLL_R(NN)                     \
> > > @@ -187,16 +187,16 @@ do {                                                                      \
> > >  #endif /* end of looped code definitions */
> > >  #define R512_8_ROUNDS(R)  /* do 8 full rounds */                      \
> > >  do {                                                                  \
> > > -		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_0, 8 * (R) + 1);   \
> > > -		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_1, 8 * (R) + 2);   \
> > > -		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_2, 8 * (R) + 3);   \
> > > -		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_3, 8 * (R) + 4);   \
> > > -		I512(2 * (R));                              \
> > > -		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_4, 8 * (R) + 5);   \
> > > -		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_5, 8 * (R) + 6);   \
> > > -		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_6, 8 * (R) + 7);   \
> > > -		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_7, 8 * (R) + 8);   \
> > > -		I512(2 * (R) + 1);        /* and key injection */     \
> > > +	R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_0, 8 * (R) + 1);   \
> > > +	R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_1, 8 * (R) + 2);   \
> > > +	R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_2, 8 * (R) + 3);   \
> > > +	R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_3, 8 * (R) + 4);   \
> > > +	I512(2 * (R));                              \
> > > +	R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_4, 8 * (R) + 5);   \
> > > +	R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_5, 8 * (R) + 6);   \
> > > +	R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_6, 8 * (R) + 7);   \
> > > +	R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_7, 8 * (R) + 8);   \
> > > +	I512(2 * (R) + 1);        /* and key injection */     \
> > >  } while (0)
> > >  #define R512_UNROLL_R(NN)                             \
> > >  		((SKEIN_UNROLL_512 == 0 &&            \
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151007170600.GA24764%40deepa-ubuntu.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151008012611.GA20044%40deepa-ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

