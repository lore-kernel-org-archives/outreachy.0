X-GM-THRID: 6464655213388103680
X-Received: by 10.223.142.172 with SMTP id q41mr913003wrb.25.1505239609184;
        Tue, 12 Sep 2017 11:06:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.21.66 with SMTP id 63ls499268wmv.12.gmail; Tue, 12 Sep 2017
 11:06:47 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDE1REVLXVileAk4tWV23FCj7pKcEOn70+WBqNcNkHPmwtNLBKnLifE5pW6izPMfECHDpDH
X-Received: by 10.28.134.137 with SMTP id i131mr37603wmd.29.1505239607834;
        Tue, 12 Sep 2017 11:06:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505239607; cv=none;
        d=google.com; s=arc-20160816;
        b=mqzvm3cahwP54TvSn9ZCUawl9PAbcCvk9E1tiV5wGWvhiCqbMFxy+qOFUs3rE+a39H
         2BDqZLNgTqC0pVazkpIvtq5KhhseRb44cPqheDe+TSk/zB1LKVoNjA03lwHqEPoKQR8M
         GQQLCFnEQlvBcrBefmQbBozl96HSzU1G0U0i75UGUFBchI9BiskEI2yYkSMevGjQGKUC
         p6kOpN44ezNqL3Bs64o9Sm5N4wORjmUmHOZFbfUPaTwcMED+g7gYNn+hoJeKmKfvY06g
         LwTJXaGOjATBJB/tcpDjroW99B2I0wZY7UdYUrSDHwIkHO3VSaiibcTQ7MrrqhOmO9M8
         aPnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=WT/L0fZrmrJmUlj0piW4xAFL5VrZWPibCg3X3M0hfLs=;
        b=N8xfITXHSelIQFosjtp2gqsdfPPgEn0HdiRVb4cLAQgCOzT/rIfV98mHT2E2sphL48
         XoXUqu0hzFOk+m9t2DGB9kqc/x2MaKdxF9yuWBObcwpIU7JUdFDeWMUZa6s2xjq07k+h
         LJOOGFXMYBk1a9u27FZyXxWYUVsDeqKhB31PWHRpZeYKhAOML1NFAED9FNU/Ft6M+bLN
         g0hN/PVAaEeFJVS1EdtgAqVaoRtgOT7oI2FbUmO/MFxTloDTRC6JPgsHfaI2S8rqMH09
         v7kDcqsFqiLMYyvFBuYQ/90CNtc0UkY+f6Gs8W/FCnZYgr8vMUJlMdCc4gEIAcqwUkNC
         SQTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e135si798205wmg.6.2017.09.12.11.06.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 11:06:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,383,1500933600"; 
   d="scan'208";a="237241318"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Sep 2017 20:06:46 +0200
Date: Tue, 12 Sep 2017 20:06:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: himanshi <himshijain.hj@gmail.com>
cc: Daniel Baluta <daniel.baluta@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Lars-Peter Clausen <lars@metafoo.de>, 
    "Hennerich, Michael" <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
    driverdev <devel@driverdev.osuosl.org>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    nick.desaulniers@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] Fixed IIO_DEVICE_ATTR_NAMED API to
 take name as a string and added "" around names
In-Reply-To: <20170912180132.GB4607@himanshi-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1709122004550.3149@hadrien>
References: <20170911224348.GA13259@himanshi-Inspiron-5558> <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com> <20170912180132.GB4607@himanshi-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Sep 2017, himanshi wrote:

> Thanks for the review Daniel! I will change the imperative mood for the commit
> message once the other changes are finalised too and as suggested by Julia,
> would try to make the description specific than general.
>
> I tried to think of adding subsystem to the commit subject but could not
> conclude any because of the files involved.
> I like the idea of splitting the patch into 2 as you suggested but I
> have a doubt that adding the new MACROS to different sysfs files can be put into 1
> patch with the subsystem you mentioned but changing the existing
> IIO_DEVICE_ATTR_NAMED to use IIO_ATTR_NAMED (sysfs file again) would be included
> in the second patch if I am not wrong. So would it be fine to keep the
> subsystem as iio for the second patch?

Indeed, the kernel has to compile after every commit.  Unless you change
the name of the macro, to allow the old and new versions to co-exist, it
seems hard to break up such a patch.

julia

>
> On Tue, Sep 12, 2017 at 10:53:26AM +0300, Daniel Baluta wrote:
> > Hi Himanshi,
> >
> > On Tue, Sep 12, 2017 at 1:43 AM, Himanshi Jain <himshijain.hj@gmail.com> wrote:
> > > Fixed IIO_DEVICE_ATTR_NAMED API to take name as a
> > > string instead of implicit conversion to string using
> > > preprocessors. Added double quotes around names in
> > > existing usage of IIO_DEVICE_ATTR_NAMED.
> >
> > Always use imperative mood in commit subject (Fix instead of Fixed).
> >
> > The subject should contain a tag, which describes the subsytem/files affected.
> >
> > I would split this patch into:
> >
> > 1) sysfs: iio: Introduce *_ATTR_NAMED
> >
> > and explain here why do we need  __ATTR_NAMED and IIO_ATTR_NAMED
> >
> > 2) iio: Use new IIO_DEVICE_ATTR_NAMED API
> >
> > But of course, lets wait to see Lars and Jonathan's opinions.
> > thanks,
> > Daniel.
> >
> > >
> > > Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> > > ---
> > >  drivers/iio/adc/ad7793.c          | 2 +-
> > >  drivers/staging/iio/adc/ad7192.c  | 2 +-
> > >  drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > >  include/linux/iio/sysfs.h         | 6 +++++-
> > >  include/linux/sysfs.h             | 7 +++++++
> > >  5 files changed, 16 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/iio/adc/ad7793.c b/drivers/iio/adc/ad7793.c
> > > index e6706a0..d74e324 100644
> > > --- a/drivers/iio/adc/ad7793.c
> > > +++ b/drivers/iio/adc/ad7793.c
> > > @@ -420,7 +420,7 @@ static ssize_t ad7793_show_scale_available(struct device *dev,
> > >  }
> > >
> > >  static IIO_DEVICE_ATTR_NAMED(in_m_in_scale_available,
> > > -               in_voltage-voltage_scale_available, S_IRUGO,
> > > +               "in_voltage-voltage_scale_available", S_IRUGO,
> > >                 ad7793_show_scale_available, NULL, 0);
> > >
> > >  static struct attribute *ad7793_attributes[] = {
> > > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > > index d11c6de..daff38c 100644
> > > --- a/drivers/staging/iio/adc/ad7192.c
> > > +++ b/drivers/staging/iio/adc/ad7192.c
> > > @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
> > >  }
> > >
> > >  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> > > -                            in_voltage-voltage_scale_available,
> > > +                            "in_voltage-voltage_scale_available",
> > >                              0444, ad7192_show_scale_available, NULL, 0);
> > >
> > >  static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
> > > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > > index f85dde9..fd32e9a 100644
> > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > @@ -750,14 +750,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> > >  }
> > >
> > >  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > -               in_voltage-voltage_thresh_low_value,
> > > +               "in_voltage-voltage_thresh_low_value",
> > >                 0644,
> > >                 ad7280_read_channel_config,
> > >                 ad7280_write_channel_config,
> > >                 AD7280A_CELL_UNDERVOLTAGE);
> > >
> > >  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > -               in_voltage-voltage_thresh_high_value,
> > > +               "in_voltage-voltage_thresh_high_value",
> > >                 0644,
> > >                 ad7280_read_channel_config,
> > >                 ad7280_write_channel_config,
> > > diff --git a/include/linux/iio/sysfs.h b/include/linux/iio/sysfs.h
> > > index ce9426c..49c81a4 100644
> > > --- a/include/linux/iio/sysfs.h
> > > +++ b/include/linux/iio/sysfs.h
> > > @@ -55,6 +55,10 @@ struct iio_const_attr {
> > >         { .dev_attr = __ATTR(_name, _mode, _show, _store),      \
> > >           .address = _addr }
> > >
> > > +#define IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)             \
> > > +       { .dev_attr = __ATTR_NAMED(_name, _mode, _show, _store),        \
> > > +         .address = _addr }
> > > +
> > >  #define IIO_ATTR_RO(_name, _addr)       \
> > >         { .dev_attr = __ATTR_RO(_name), \
> > >           .address = _addr }
> > > @@ -85,7 +89,7 @@ struct iio_const_attr {
> > >
> > >  #define IIO_DEVICE_ATTR_NAMED(_vname, _name, _mode, _show, _store, _addr) \
> > >         struct iio_dev_attr iio_dev_attr_##_vname                       \
> > > -       = IIO_ATTR(_name, _mode, _show, _store, _addr)
> > > +       = IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)
> > >
> > >  #define IIO_CONST_ATTR(_name, _string)                                 \
> > >         struct iio_const_attr iio_const_attr_##_name                    \
> > > diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> > > index aa02c32..20321cf 100644
> > > --- a/include/linux/sysfs.h
> > > +++ b/include/linux/sysfs.h
> > > @@ -104,6 +104,13 @@ struct attribute_group {
> > >         .store  = _store,                                               \
> > >  }
> > >
> > > +#define __ATTR_NAMED(_name, _mode, _show, _store) {                    \
> > > +       .attr = {.name = _name,                                         \
> > > +                .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },             \
> > > +       .show = _show,                                                  \
> > > +       .store = _store,                                                \
> > > +}
> > > +
> > >  #define __ATTR_PREALLOC(_name, _mode, _show, _store) {                 \
> > >         .attr = {.name = __stringify(_name),                            \
> > >                  .mode = SYSFS_PREALLOC | VERIFY_OCTAL_PERMISSIONS(_mode) },\
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170911224348.GA13259%40himanshi-Inspiron-5558.
> > > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170912180132.GB4607%40himanshi-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

