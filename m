X-GM-THRID: 6207856013446479872
X-Received: by 10.180.87.74 with SMTP id v10mr2481806wiz.5.1445501794136;
        Thu, 22 Oct 2015 01:16:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.161 with SMTP id gb1ls71756wic.41.canary; Thu, 22 Oct
 2015 01:16:33 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr3306091wjb.1.1445501793749;
        Thu, 22 Oct 2015 01:16:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn7si645167wib.0.2015.10.22.01.16.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:16:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,181,1444687200"; 
   d="scan'208";a="183959320"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Oct 2015 10:16:33 +0200
Date: Thu, 22 Oct 2015 10:16:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Add error code
 handling
In-Reply-To: <CAGZ2q2x9iTaFL3Lefy8PUbWe4OHqSQyV1W=PyrhZ8hgeM0C5ug@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510221013530.2607@hadrien>
References: <1445463010-3525-1-git-send-email-cristina.moraru09@gmail.com> <alpine.DEB.2.02.1510220842030.2246@localhost6.localdomain6> <CAGZ2q2x9iTaFL3Lefy8PUbWe4OHqSQyV1W=PyrhZ8hgeM0C5ug@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-860007097-1445501783=:2607"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-860007097-1445501783=:2607
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 22 Oct 2015, Cristina-Gabriela Moraru wrote:

>
>
> 2015-10-22 9:43 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:
>       On Thu, 22 Oct 2015, Cristina Moraru wrote:
>
>       > Write function can return non-zero values indicating
>       > errors. This values must be caught and handled.
>
>       Why?  Sometimes it is possible to tolerate errors.  At least in
>       the first
>       case it seems possible that the developer considered the
>       possibility that
>       an error occurred and felt that this was not a problem.  Maybe
>       it is
>       correct that the errors are not tolearble, but more explanation
>       is needed.
>
>       julia
>
>
> I didn't know that there are errors that are tolerated and, analyzing the
> whole file, for me it looked like an error the fact that all functions were
> returning an error code when write function failed and this one didn't.
> Is there a way to figure out when a return value is ignored on purpose ?

I think you would have to understand the behavior of the device.

The fact that in one case there was a test on the return value and an
action in the success case suggests that the developer thought about the
failure case and decided that it isn't a problem.

The problem with a write is that the effect of the failure on the rest of
the execution is not clear from the rest of the code. If a memory
allocation fails and that is not tested for and there is a later access to
the memory, then it is clear that there is a problem.

julia


>       >
>       > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
>       > ---
>       >  drivers/staging/iio/addac/adt7316.c | 11 +++++++----
>       >  1 file changed, 7 insertions(+), 4 deletions(-)
>       >
>       > diff --git a/drivers/staging/iio/addac/adt7316.c
>       b/drivers/staging/iio/addac/adt7316.c
>       > index 3adc451..6d67edf 100644
>       > --- a/drivers/staging/iio/addac/adt7316.c
>       > +++ b/drivers/staging/iio/addac/adt7316.c
>       > @@ -1850,10 +1850,11 @@ static ssize_t
>       adt7316_set_int_mask(struct device *dev,
>       >               mask = ADT7316_INT_MASK2_VDD;   /* disable vdd
>       int */
>       >
>       >       ret = chip->bus.write(chip->bus.client,
>       ADT7316_INT_MASK2, mask);
>       > -     if (!ret) {
>       > -             chip->int_mask &= ~ADT7316_VDD_INT_MASK;
>       > -             chip->int_mask |= data & ADT7316_VDD_INT_MASK;
>       > -     }
>       > +     if (ret)
>       > +             return -EIO;
>       > +
>       > +     chip->int_mask &= ~ADT7316_VDD_INT_MASK;
>       > +     chip->int_mask |= data & ADT7316_VDD_INT_MASK;
>       >
>       >       if (data & ADT7316_TEMP_AIN_INT_MASK) {
>       >               if ((chip->id & ID_FAMILY_MASK) == ID_ADT73XX)
>       > @@ -1864,6 +1865,8 @@ static ssize_t
>       adt7316_set_int_mask(struct device *dev,
>       >                       mask = (~data) &
>       ADT7316_TEMP_AIN_INT_MASK;
>       >       }
>       >       ret = chip->bus.write(chip->bus.client,
>       ADT7316_INT_MASK1, mask);
>       > +     if (ret)
>       > +             return -EIO;
>       >
>       >       chip->int_mask = mask;
>       >
>       > --
>       > 1.9.1
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1445463010-3525-1-git-se
> nd-email-cristina.moraru09%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAGZ2q2x9iTaFL3Lefy8PUbW
> e4OHqSQyV1W%3DPyrhZ8hgeM0C5ug%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-860007097-1445501783=:2607--

