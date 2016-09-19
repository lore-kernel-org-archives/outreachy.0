X-GM-THRID: 6332017798578962432
X-Received: by 10.25.193.148 with SMTP id r142mr3090566lff.2.1474290677521;
        Mon, 19 Sep 2016 06:11:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.157.194 with SMTP id g185ls647685wme.14.canary; Mon, 19 Sep
 2016 06:11:16 -0700 (PDT)
X-Received: by 10.28.203.3 with SMTP id b3mr509681wmg.17.1474290676907;
        Mon, 19 Sep 2016 06:11:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1992838wmd.1.2016.09.19.06.11.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 06:11:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="237381713"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 15:11:16 +0200
Date: Mon, 19 Sep 2016 15:11:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: ade7758_ring:
 Match alignment with open parenthesis
In-Reply-To: <CALta04xHapK9dbAArSiMPQRfEUNhjwuAwdcu4VqQ-JedG+DT7w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609191509220.3203@hadrien>
References: <20160919122255.GA11414@fireworks> <alpine.DEB.2.10.1609191424280.3203@hadrien> <CALta04xHapK9dbAArSiMPQRfEUNhjwuAwdcu4VqQ-JedG+DT7w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-265022468-1474290674=:3203"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-265022468-1474290674=:3203
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 19 Sep 2016, Georgiana Chelu wrote:

> Hi,
>
> Thank you for your advice.
>
> I used the script get_maintainer.pl and there are several
> maintainers for this driver. It is enough to put a single
> maintainer on cc, right?

No, if you used the command as it is in the Submit a patch section, then
you should put all of the names that are listed.  There is none that is
more important than another.

If you just ran get_maintainer with no other arguments, then you get a lot
of information about people who have submitted patches on the code, but
are not actually maintainers.  You should not send the patch to all of
those people.

> Also, should I create a second version to make the
> commit message clearer?

Yes, that would be perfect, thanks.

julia

>
> Georgiana
>
> On 19 September 2016 at 15:26, Julia Lawall <julia.lawall@lip6.fr> wrote:
>       On Mon, 19 Sep 2016, Georgiana Rodica Chelu wrote:
>
>       > This patch indents the lines to match alignment with the open
>       parenthesis.
>       > Also, it organizes the parameters on a single line, in case
>       the
>       > modifications do not break the rule of 80 characters per line.
>
>       The patch looks like it improves the readability of the code. 
>       The commit
>       message could be more concise though.  Use the imperative.  It
>       is not
>       necessary to say "This patch", since it is clear what is being
>       discussed.
>       So the first sentence could be, for example, "Indent lines to
>       match..."
>
>       Also, I guess there is some maintainer for this driver.  You
>       should send
>       patches to tha maintainer too.  See the Submit a patch section
>       of the
>       tutorial to see the suggested call to get_maintainer.pl to find
>       who to
>       also send the patch to.
>
>       julia
>
>       >
>       > Signed-off-by: Georgiana Rodica Chelu
>       <georgiana.chelu93@gmail.com>
>       > ---
>       >  drivers/staging/iio/meter/ade7758_ring.c | 10 +++-------
>       >  1 file changed, 3 insertions(+), 7 deletions(-)
>       >
>       > diff --git a/drivers/staging/iio/meter/ade7758_ring.c
>       b/drivers/staging/iio/meter/ade7758_ring.c
>       > index a6b76d4..57c213d 100644
>       > --- a/drivers/staging/iio/meter/ade7758_ring.c
>       > +++ b/drivers/staging/iio/meter/ade7758_ring.c
>       > @@ -38,18 +38,14 @@ static int
>       ade7758_write_waveform_type(struct device *dev, unsigned int
>       type)
>       >       int ret;
>       >       u8 reg;
>       >
>       > -     ret = ade7758_spi_read_reg_8(dev,
>       > -                     ADE7758_WAVMODE,
>       > -                     &reg);
>       > +     ret = ade7758_spi_read_reg_8(dev, ADE7758_WAVMODE,
>       &reg);
>       >       if (ret)
>       >               goto out;
>       >
>       >       reg &= ~0x1F;
>       >       reg |= type & 0x1F;
>       >
>       > -     ret = ade7758_spi_write_reg_8(dev,
>       > -                     ADE7758_WAVMODE,
>       > -                     reg);
>       > +     ret = ade7758_spi_write_reg_8(dev, ADE7758_WAVMODE,
>       reg);
>       >  out:
>       >       return ret;
>       >  }
>       > @@ -94,7 +90,7 @@ static int ade7758_ring_preenable(struct
>       iio_dev *indio_dev)
>       >                                indio_dev->masklength);
>       >
>       >       ade7758_write_waveform_type(&indio_dev->dev,
>       > -             indio_dev->channels[channel].address);
>       > +                               
>        indio_dev->channels[channel].address);
>       >
>       >       return 0;
>       >  }
>       > --
>       > 2.7.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160919122255.GA11414%4
> 0fireworks.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-265022468-1474290674=:3203--

