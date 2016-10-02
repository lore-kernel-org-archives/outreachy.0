X-GM-THRID: 6335442483781042176
X-Received: by 10.28.31.7 with SMTP id f7mr332819wmf.0.1475423613508;
        Sun, 02 Oct 2016 08:53:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.136 with SMTP id 130ls546194ljf.18.gmail; Sun, 02 Oct
 2016 08:53:32 -0700 (PDT)
X-Received: by 10.46.9.82 with SMTP id 79mr1024362ljj.0.1475423612837;
        Sun, 02 Oct 2016 08:53:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w16si790904wmd.0.2016.10.02.08.53.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:53:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,285,1473112800"; 
   d="scan'208";a="239077147"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 17:53:32 +0200
Date: Sun, 2 Oct 2016 17:53:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, Jonathan Cameron <jic23@kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 ] staging: iio: cdc: ad7150:
 add comment to mutex
In-Reply-To: <CAAbeOSuPu599ySH5Mm+VB3xx-j0UX25+Ztb2qVbqh8qnErFCKg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1610021751050.3327@hadrien>
References: <20161002153424.GA4211@life-desktop> <20161002154039.GB21118@kroah.com> <CAAbeOSuPu599ySH5Mm+VB3xx-j0UX25+Ztb2qVbqh8qnErFCKg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1740034645-1475423612=:3327"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1740034645-1475423612=:3327
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 2 Oct 2016, Anchal Jain wrote:

> >I think I need to just not take any of these types of patches, as it's
> >not exactly a good thing for someone who does not understand the driver
> >to be able to fix up.
> >
> >Just ignore these warnings for now please
>
> I am justing trying to understand your drivers. It will helpful me learn
> how it works
> So, please I am requesting to you. Let me try. If it is not correct then
> don't accept it.

If you want to submit such patches, you need to look carefully at how the
lock is used in the code.  In this case, the code between the lock and the
unlock is rather complex.  In general, it is rather difficult to
understand why a lock is needed in a certain place, which is why the
comment is suggested in the first place.  But it is more targeting the
person who originally wrote the driver than somone who is doing code
cleanups.  Then you need also to look at other drivers that already have
such a comment to see what kind of information should be provided.

julia

>
> Thank you,
> On Sun, Oct 2, 2016 at 9:10 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Sun, Oct 02, 2016 at 09:04:43PM +0530, Anchal Jain wrote:
>       > Add a comment in mutex to explain what the mutex is work
>       here.
>       >
>       > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>       > ---
>       >  drivers/staging/iio/cdc/ad7150.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/iio/cdc/ad7150.c
>       b/drivers/staging/iio/cdc/ad7150.c
>       > index f6b9a10..13709bf 100644
>       > --- a/drivers/staging/iio/cdc/ad7150.c
>       > +++ b/drivers/staging/iio/cdc/ad7150.c
>       > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
>       >       u8 mag_timeout[2][2];
>       >       int old_state;
>       >       char *conversion_mode;
>       > -     struct mutex state_lock;
>       > +     struct mutex state_lock; /* protect hardware state */
>
>       I think I need to just not take any of these types of patches,
>       as it's
>       not exactly a good thing for someone who does not understand
>       the driver
>       to be able to fix up.
>
>       Just ignore these warnings for now please.
>
>       thanks,
>
>       greg k-h
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAAbeOSuPu599ySH5Mm%2BV
> B3xx-j0UX25%2BZtb2qVbqh8qnErFCKg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1740034645-1475423612=:3327--

