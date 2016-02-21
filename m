X-GM-THRID: 6253707231891554304
X-Received: by 10.25.170.7 with SMTP id t7mr2819835lfe.2.1456062900716;
        Sun, 21 Feb 2016 05:55:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.83.13 with SMTP id h13ls250762lfb.51.gmail; Sun, 21 Feb
 2016 05:54:59 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr2820525lbb.23.1456062899951;
        Sun, 21 Feb 2016 05:54:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si764732wme.2.2016.02.21.05.54.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 05:54:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="165445161"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 14:54:58 +0100
Date: Sun, 21 Feb 2016 08:54:56 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Prefer using
 kmalloc_array
In-Reply-To: <CAFNHFT9kXBxJbFKapk+-mQNx2-pgnYqwfokM0-00Lqw0pk6Low@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602210852300.4210@hadrien>
References: <20160221113832.GA28242@Karyakshetra> <alpine.DEB.2.10.1602210722520.2782@hadrien> <CAFNHFT9kXBxJbFKapk+-mQNx2-pgnYqwfokM0-00Lqw0pk6Low@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1364832899-1456062899=:4210"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1364832899-1456062899=:4210
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:

> Hello Julia,
>
> Thank you for your feedback.  I'll send a v2 for this patch.
> Do you recommend going for the following semantic patch?
>
>  It is preserving the format of the original file and is not introducing
> any  80 character violations.
>
>
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(
> + kmalloc_array(
> e1
> - *
> + ,
> sizeof(e1), C)

I think you mean e2 here?

In general, the thing that you want to avoid transforming is the case
where the non-sizeof expression is a constant.  So you can make a separate
element of the disjunction, and put it at the beginning with no
transformation annotation.  Coccinelle takes the elements of a
disjunction in order, so if you have a pattern that comes early with no
transformation on it, then no transformation will happen in that case.

julia

> |
> - kmalloc(
> + kmalloc_array(
> e2
> - *
> + ,
> sizeof(t), C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(e1)
> - *
> e2
> + ,
> + sizeof(e1)
> , C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(e1)
> - *
> e2
> + ,
> + sizeof(t)
> , C)
> )
>
> On Sun, Feb 21, 2016 at 5:53 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>       On Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:
>
>       > Use kmalloc_array instead of kmalloc for arrays to prevent
>       integer
>       > overflows.
>       > This was done using Coccinelle:
>       > @@
>       > expression e1, e2;
>       > constant C;
>       > type t;
>       > @@
>       > (
>       > - kmalloc(sizeof(e1)*e2, C)
>       > + kmalloc_array(e2, sizeof(e1), C)
>       > |
>       > - kmalloc(e2*sizeof(e1), C)
>       > + kmalloc_array(e2, sizeof(e1), C)
>       > |
>       > - kmalloc(e2*sizeof(t), C)
>       > + kmalloc_array(e2, sizeof(t), C)
>       > |
>       > - kmalloc(sizeof(t)*e2, C)
>       > + kmalloc_array(e2, sizeof(t), C)
>       > )
>       >
>       > Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>       > ---
>       >  drivers/staging/fbtft/fb_agm1264k-fl.c | 5 +++--
>       >  1 file changed, 3 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
>       b/drivers/staging/fbtft/fb_agm1264k-fl.c
>       > index 2a50cf9..5fbfd50 100644
>       > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
>       > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
>       > @@ -272,8 +272,9 @@ static int write_vmem(struct fbtft_par
>       *par, size_t offset, size_t len)
>       >       int ret = 0;
>       >
>       >       /* buffer to convert RGB565 -> grayscale16 -> Dithered
>       image 1bpp */
>       > -     signed short *convert_buf = kmalloc(par->info->var.xres
>       *
>       > -             par->info->var.yres * sizeof(signed short),
>       GFP_NOIO);
>       > +     signed short *convert_buf =
>       kmalloc_array(par->info->var.xres * par->info->var.yres,
>       > +                                               sizeof(signed
>       short),
>       > +                                               GFP_NOIO);
>
>       You should adjust the output of Coccinelle so as to not
>       introduce 80
>       character violations.
>
>       julia
>
>       >
>       >       if (!convert_buf)
>       >               return -ENOMEM;
>       > --
>       > 2.1.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160221113832.GA28242%4
>       0Karyakshetra.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFNHFT9kXBxJbFKapk%2B-m
> QNx2-pgnYqwfokM0-00Lqw0pk6Low%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1364832899-1456062899=:4210--

