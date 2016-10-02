X-GM-THRID: 6336889298052186112
X-Received: by 10.28.38.194 with SMTP id m185mr306119wmm.5.1475423336566;
        Sun, 02 Oct 2016 08:48:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.42 with SMTP id 42ls746972ljb.21.gmail; Sun, 02 Oct 2016
 08:48:55 -0700 (PDT)
X-Received: by 10.46.32.17 with SMTP id g17mr217487ljg.3.1475423335887;
        Sun, 02 Oct 2016 08:48:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si901288wmr.2.2016.10.02.08.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:48:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,285,1473112800"; 
   d="scan'208";a="195348474"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 17:48:54 +0200
Date: Sun, 2 Oct 2016 17:48:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Jonathan Cameron <jic23@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: iio: cdc: ad7152:
 Add blank line after
In-Reply-To: <CAAbeOStiOFD5gOQ_m6Fb7ZabMT6Sh-6YAsOp2jbrFOw-ReLTww@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1610021748110.3327@hadrien>
References: <20161002152635.GA4163@life-desktop> <alpine.DEB.2.10.1610021729380.3327@hadrien> <CAAbeOStiOFD5gOQ_m6Fb7ZabMT6Sh-6YAsOp2jbrFOw-ReLTww@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1198736982-1475423335=:3327"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1198736982-1475423335=:3327
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 2 Oct 2016, Anchal Jain wrote:

> yes,
>
> I used the get_maintainer command but In CC I need to add maintainers only
> or everyone which listed there?

The command that is shown in the Submit a patch section only gives
maintainers.  If you run get_maintainer in some other way, you will indeed
get people who are not maintainers.

julia

>
> On Sun, Oct 2, 2016 at 9:02 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sun, 2 Oct 2016, Anchal Jain wrote:
>
>       > declarations to increase readability
>       > Reply-To:
>       >
>       > Add a blank line after a function declaration because local
>       variable
>       > declarations should be seprated from the function's statments
>       by a blank line
>       > to increase the readability of a code.
>
>       The log message is not formatted properly.  It looks like a
>       newline ended
>       up in the subject line, and the Reply-to is not needed.
>
>       There are people who should be on the CC list who are not.  Are
>       you using
>       the get_maintainer command shown in the Submit a patch section
>       of the
>       tutorial?
>
>       julia
>
>       >
>       > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>       > ---
>       >  drivers/staging/iio/cdc/ad7152.c | 4 ++++
>       >  1 file changed, 4 insertions(+)
>       >
>       > diff --git a/drivers/staging/iio/cdc/ad7152.c
>       b/drivers/staging/iio/cdc/ad7152.c
>       > index 1962052..f9767e9 100644
>       > --- a/drivers/staging/iio/cdc/ad7152.c
>       > +++ b/drivers/staging/iio/cdc/ad7152.c
>       > @@ -134,6 +134,7 @@ static inline ssize_t
>       ad7152_start_calib(struct device *dev,
>       >       mutex_unlock(&indio_dev->mlock);
>       >       return len;
>       >  }
>       > +
>       >  static ssize_t ad7152_start_offset_calib(struct device *dev,
>       >                                        struct
>       device_attribute *attr,
>       >                                        const char *buf,
>       > @@ -142,6 +143,7 @@ static ssize_t
>       ad7152_start_offset_calib(struct device *dev,
>       >       return ad7152_start_calib(dev, attr, buf, len,
>       >                                 AD7152_CONF_MODE_OFFS_CAL);
>       >  }
>       > +
>       >  static ssize_t ad7152_start_gain_calib(struct device *dev,
>       >                                      struct device_attribute
>       *attr,
>       >                                      const char *buf,
>       > @@ -317,6 +319,7 @@ out:
>       >       mutex_unlock(&indio_dev->mlock);
>       >       return ret;
>       >  }
>       > +
>       >  static int ad7152_read_raw(struct iio_dev *indio_dev,
>       >                          struct iio_chan_spec const *chan,
>       >                          int *val, int *val2,
>       > @@ -470,6 +473,7 @@ static const struct iio_chan_spec
>       ad7152_channels[] = {
>       >               BIT(IIO_CHAN_INFO_SCALE),
>       >       }
>       >  };
>       > +
>       >  /*
>       >   * device probe and remove
>       >   */
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
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20161002152635.GA4163%4
> 0life-desktop.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-1198736982-1475423335=:3327--

