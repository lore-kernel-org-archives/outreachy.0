X-GM-THRID: 6202672545102036992
X-Received: by 10.180.189.49 with SMTP id gf17mr3993629wic.6.1444730221572;
        Tue, 13 Oct 2015 02:57:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.199 with SMTP id o190ls686065lfe.60.gmail; Tue, 13 Oct
 2015 02:57:01 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr6851636lbb.13.1444730221034;
        Tue, 13 Oct 2015 02:57:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si713931wib.1.2015.10.13.02.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 02:57:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,677,1437429600"; 
   d="scan'208";a="182519956"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2015 11:57:00 +0200
Date: Tue, 13 Oct 2015 11:56:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: Daniel Baluta <daniel.baluta@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/9] staging: iio: adc: properly
 indent to match open paranthesis
In-Reply-To: <CAHWJYFn-cd5tCRRjU-vV72-x5HM+=u5uojF6cYFT3XjqyjKE8g@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510131155580.2391@hadrien>
References: <cover.1444419393.git.ciorneiioana@gmail.com> <9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com> <CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com>
 <CAHWJYFn-cd5tCRRjU-vV72-x5HM+=u5uojF6cYFT3XjqyjKE8g@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Oct 2015, Ioana Ciornei wrote:

> On Mon, Oct 12, 2015 at 6:14 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> >
> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> > > Indent parameters and arguments passed to function calls to match
> > > open paranthesis
> > >
> > > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > > ---
> > > Changes in v2:
> > >     - nothing
> > > Changes in v3:
> > >     - rework changes in order to avoid introducing new checkpatch warnings
> > >
> >
> > <snip>
> >
> > > @@ -565,10 +565,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
> > >                         st->iio_attr[cnt].dev_attr.store =
> > >                                 ad7280_store_balance_sw;
> > >                         st->iio_attr[cnt].dev_attr.attr.name =
> > > -                               kasprintf(GFP_KERNEL,
> >
> > This line looks good to me as it is. Is there any particular reason
> > for which you we want GFP_KERNEL to be moved on the next line?
> >
>
> I chose to move kasprintf on the next line and all the others
> arguments also in order to improve readability.
> I had to choose between leaving the kasprintf where it was and
> properly align the arguments to match the open bracket but
> cross the 80 char limit or moving the kasprintf call on the next line
> so the arguments are somewhat distinguishable.
>
> Was this a bad call?

It's not really normal to see the first argument on a different line.
Do the other arguments not fit if they are lines up with the right side of
the (?  Perhaps it is possible to break up the longer arguments more so
that they fit better?

julia

>
> >
> > > +                               kasprintf(
> > > +                                       GFP_KERNEL,
> > >                                         "in%d-in%d_balance_switch_en",
> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch,
> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);
> >
> > This lines should be properly aligned.
>
> Answered above.
>
> >
> > >                         ad7280_attributes[cnt] =
> > >                                 &st->iio_attr[cnt].dev_attr.attr;
> > >                         cnt++;
> > > @@ -582,9 +583,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
> > >                         st->iio_attr[cnt].dev_attr.store =
> > >                                 ad7280_store_balance_timer;
> > >                         st->iio_attr[cnt].dev_attr.attr.name =
> > > -                               kasprintf(GFP_KERNEL, "in%d-in%d_balance_timer",
> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
> > > +                               kasprintf(
> > > +                                       GFP_KERNEL,
> >
> > The same here.
>
>
> >
> > > +                                       "in%d-in%d_balance_timer",
> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch,
> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);
> > >                         ad7280_attributes[cnt] =
> > >                                 &st->iio_attr[cnt].dev_attr.attr;
> > >                 }
> > > @@ -595,8 +598,8 @@ static int ad7280_attr_init(struct ad7280_state *st)
> > >  }
> > >
> > >  static ssize_t ad7280_read_channel_config(struct device *dev,
> > > -                                       struct device_attribute *attr,
> > > -                                       char *buf)
> > > +                                         struct device_attribute *attr,
> > > +                                         char *buf)
> > >  {
> > >         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > >         struct ad7280_state *st = iio_priv(indio_dev);
> > > @@ -624,9 +627,9 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
> > >  }
> > >
> > >  static ssize_t ad7280_write_channel_config(struct device *dev,
> > > -                                        struct device_attribute *attr,
> > > -                                        const char *buf,
> > > -                                        size_t len)
> > > +                                          struct device_attribute *attr,
> > > +                                          const char *buf,
> > > +                                          size_t len)
> > >  {
> > >         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > >         struct ad7280_state *st = iio_priv(indio_dev);
> > > @@ -698,39 +701,43 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> > >                         if (((channels[i] >> 11) & 0xFFF) >=
> > >                                 st->cell_threshhigh)
> > >                                 iio_push_event(indio_dev,
> > > -                                       IIO_EVENT_CODE(IIO_VOLTAGE,
> > > -                                                      1,
> > > -                                                      0,
> > > -                                                      IIO_EV_DIR_RISING,
> > > -                                                      IIO_EV_TYPE_THRESH,
> > > -                                                      0, 0, 0),
> > > -                                       iio_get_time_ns());
> > > +                                              IIO_EVENT_CODE(
> > > +                                                       IIO_VOLTAGE,
> > The same here, I think IIO_VOLTAGE should not be moved.
>
> >
> > > +                                                       1,
> > > +                                                       0,
> >
> > The rest of the patch looks good.
>
>
> Thanks,
>
> Ioana
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHWJYFn-cd5tCRRjU-vV72-x5HM%2B%3Du5uojF6cYFT3XjqyjKE8g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

