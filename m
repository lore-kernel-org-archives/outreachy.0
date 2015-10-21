X-GM-THRID: 6207856013446479872
X-Received: by 10.112.54.197 with SMTP id l5mr1779994lbp.21.1445415807136;
        Wed, 21 Oct 2015 01:23:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.70 with SMTP id f67ls158328lfg.78.gmail; Wed, 21 Oct
 2015 01:23:26 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr1780756lbb.10.1445415806565;
        Wed, 21 Oct 2015 01:23:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w4si907664wiz.0.2015.10.21.01.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:23:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,711,1437429600"; 
   d="scan'208";a="151245312"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Oct 2015 10:23:14 +0200
Date: Wed, 21 Oct 2015 10:23:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Add error code
 handling
In-Reply-To: <CAGZ2q2zs65X6SPcDWHSO+GiyUsdtVr1FX4nbJFKRG=ttWEBZJQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510211022260.2588@hadrien>
References: <1445379022-14114-1-git-send-email-cristina.moraru09@gmail.com> <alpine.DEB.2.10.1510211003070.2588@hadrien> <CAGZ2q2zs65X6SPcDWHSO+GiyUsdtVr1FX4nbJFKRG=ttWEBZJQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-62756223-1445415785=:2588"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-62756223-1445415785=:2588
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 21 Oct 2015, Cristina-Gabriela Moraru wrote:

>
>
> 2015-10-21 11:05 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:
>       On Wed, 21 Oct 2015, Cristina Moraru wrote:
>
>       > The function adis16060_spi_read can return negative values
>       > which must be caught and handled.
>
>       The comment doesn't completely describe the changes performed in
>       the
>       patch.  That is, the patch has an impact on the call to
>       adis16060_spi_write too, but that isn't mentioned.
>
>       It is better for the label to reflect what is done at the
>       destination, so
>       something like out_unlock could work here.  Just from the code
>       shown in
>       the patch, error_ret seems a little strange, because the return
>       just above
>       it is clearly indicating an error too.
>
>       julia
>
>
> For the label name I chose another label found in file

OK, it's not a bad strategy.  But in this case, it is a bit strange to
have an error_ret label and other error returning code.

julia

> but it's true that it
> does not describe
> completely the current situation. I will change it accordingly. 
>
>
> Thanks for the feedback,
> Cristina
>
>  
>       >
>       > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
>       > ---
>       >  drivers/staging/iio/gyro/adis16060_core.c | 14 ++++++++++----
>       >  1 file changed, 10 insertions(+), 4 deletions(-)
>       >
>       > diff --git a/drivers/staging/iio/gyro/adis16060_core.c
>       b/drivers/staging/iio/gyro/adis16060_core.c
>       > index 80783e7..fb02bed 100644
>       > --- a/drivers/staging/iio/gyro/adis16060_core.c
>       > +++ b/drivers/staging/iio/gyro/adis16060_core.c
>       > @@ -89,11 +89,13 @@ static int adis16060_read_raw(struct
>       iio_dev *indio_dev,
>       >               /* Take the iio_dev status lock */
>       >               mutex_lock(&indio_dev->mlock);
>       >               ret = adis16060_spi_write(indio_dev,
>       chan->address);
>       > -             if (ret < 0) {
>       > -                     mutex_unlock(&indio_dev->mlock);
>       > -                     return ret;
>       > -             }
>       > +             if (ret < 0)
>       > +                     goto error_ret;
>       > +
>       >               ret = adis16060_spi_read(indio_dev, &tval);
>       > +             if (ret < 0)
>       > +                     goto error_ret;
>       > +
>       >               mutex_unlock(&indio_dev->mlock);
>       >               *val = tval;
>       >               return IIO_VAL_INT;
>       > @@ -108,6 +110,10 @@ static int adis16060_read_raw(struct
>       iio_dev *indio_dev,
>       >       }
>       >
>       >       return -EINVAL;
>       > +
>       > +error_ret:
>       > +     mutex_unlock(&indio_dev->mlock);
>       > +     return ret;
>       >  }
>       >
>       >  static const struct iio_info adis16060_info = {
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
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1445379022-14114-1-git-s
> end-email-cristina.moraru09%40gmail.com.
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
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAGZ2q2zs65X6SPcDWHSO%2B
> GiyUsdtVr1FX4nbJFKRG%3DttWEBZJQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-62756223-1445415785=:2588--

