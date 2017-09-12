X-GM-THRID: 6464655213388103680
X-Received: by 10.28.236.83 with SMTP id k80mr29384wmh.29.1505202946830;
        Tue, 12 Sep 2017 00:55:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.201.199 with SMTP id z190ls9382lff.11.gmail; Tue, 12 Sep
 2017 00:55:45 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA2f/NiLZ35AOr7vbZq5YTBzGYEZp9FquDfLDgRV+o8DLQPW0bf69VqtLCZlLoXAHZyW5n+
X-Received: by 10.25.18.223 with SMTP id 92mr1109125lfs.11.1505202945942;
        Tue, 12 Sep 2017 00:55:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505202945; cv=none;
        d=google.com; s=arc-20160816;
        b=syF2Uwmgf97jgsOnQo41qq78tzYbP658kTskdbFoWx44QEmvb5z3ZngThowWJFaAh9
         vCdBJsVL+TmseIhPa+1S02EXnmIsMySPRuiLRxTXkrRE+smmHexiYTTdJmao4Aoo/ScU
         LVCGTzp+YsSr2eT7Xx4kLZuAl+1pkaPI8GDP+3He3sbUOMGvEibpViK2AVsJCeWFSKWR
         Hun3Ylso0ujx5CovxZouVIe/M/3AJb+J66Bb90iDaJpl2hfMzNVspySAUSeQvc2ShuVU
         RskTNGZ5n0Nh1bk6+aZTiMHRUpYWkgKtHdbpg3dsgosKHDMTt5v27OKrgJWoD8IbvThU
         L1lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=3VCxtE+npx6tXX8jzmEq80lbX31ZWR5iIr+CQQFMTd8=;
        b=yc6OLDAs2/ZpBs5iaJApV6A7YvMd2ULSjFYTJ54QGlAp61TzuckiYjDfozETkf10JB
         qBOyPqPrMF+HLOG0KnXeEaIEjkMC7GjACzOC5d/KCTvaSXFwbIAWdyYbThEvp0AVdU5t
         PKUmQzBZv7PQQhjXc+goAi5xlnqVSRkxTP+gvAjJSHYdfCjbifhL9NwEh/+hYxnPFH3K
         6R0nYqh8Lk2xqWcpAdPeCwwsik49Vis7Ab7MtCRNAsfrkL3rlbOrn1dDOxYOV6XfoPWe
         CbLuHNAHdkqgFCgsxzOo3kflGqGYZ4RWqUP52U4nI58pf36/gAY5bNlvBHV6RY7CqoIh
         5ZMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si725392wmb.3.2017.09.12.00.55.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 00:55:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,382,1500933600"; 
   d="scan'208";a="290623748"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Sep 2017 09:55:45 +0200
Date: Tue, 12 Sep 2017 09:55:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Himanshi Jain <himshijain.hj@gmail.com>, 
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
In-Reply-To: <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709120954590.4575@hadrien>
References: <20170911224348.GA13259@himanshi-Inspiron-5558> <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Sep 2017, Daniel Baluta wrote:

> Hi Himanshi,
>
> On Tue, Sep 12, 2017 at 1:43 AM, Himanshi Jain <himshijain.hj@gmail.com> wrote:
> > Fixed IIO_DEVICE_ATTR_NAMED API to take name as a
> > string instead of implicit conversion to string using
> > preprocessors. Added double quotes around names in
> > existing usage of IIO_DEVICE_ATTR_NAMED.
>
> Always use imperative mood in commit subject (Fix instead of Fixed).

I haven't had a chance to look at the patch in detail, but try also for
something more descriptive than "fix".  Rewrite could be good in this
case.

julia

>
> The subject should contain a tag, which describes the subsytem/files affected.
>
> I would split this patch into:
>
> 1) sysfs: iio: Introduce *_ATTR_NAMED
>
> and explain here why do we need  __ATTR_NAMED and IIO_ATTR_NAMED
>
> 2) iio: Use new IIO_DEVICE_ATTR_NAMED API
>
> But of course, lets wait to see Lars and Jonathan's opinions.
> thanks,
> Daniel.
>
> >
> > Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> > ---
> >  drivers/iio/adc/ad7793.c          | 2 +-
> >  drivers/staging/iio/adc/ad7192.c  | 2 +-
> >  drivers/staging/iio/adc/ad7280a.c | 4 ++--
> >  include/linux/iio/sysfs.h         | 6 +++++-
> >  include/linux/sysfs.h             | 7 +++++++
> >  5 files changed, 16 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/iio/adc/ad7793.c b/drivers/iio/adc/ad7793.c
> > index e6706a0..d74e324 100644
> > --- a/drivers/iio/adc/ad7793.c
> > +++ b/drivers/iio/adc/ad7793.c
> > @@ -420,7 +420,7 @@ static ssize_t ad7793_show_scale_available(struct device *dev,
> >  }
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_m_in_scale_available,
> > -               in_voltage-voltage_scale_available, S_IRUGO,
> > +               "in_voltage-voltage_scale_available", S_IRUGO,
> >                 ad7793_show_scale_available, NULL, 0);
> >
> >  static struct attribute *ad7793_attributes[] = {
> > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > index d11c6de..daff38c 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
> >  }
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> > -                            in_voltage-voltage_scale_available,
> > +                            "in_voltage-voltage_scale_available",
> >                              0444, ad7192_show_scale_available, NULL, 0);
> >
> >  static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
> > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > index f85dde9..fd32e9a 100644
> > --- a/drivers/staging/iio/adc/ad7280a.c
> > +++ b/drivers/staging/iio/adc/ad7280a.c
> > @@ -750,14 +750,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> >  }
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > -               in_voltage-voltage_thresh_low_value,
> > +               "in_voltage-voltage_thresh_low_value",
> >                 0644,
> >                 ad7280_read_channel_config,
> >                 ad7280_write_channel_config,
> >                 AD7280A_CELL_UNDERVOLTAGE);
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > -               in_voltage-voltage_thresh_high_value,
> > +               "in_voltage-voltage_thresh_high_value",
> >                 0644,
> >                 ad7280_read_channel_config,
> >                 ad7280_write_channel_config,
> > diff --git a/include/linux/iio/sysfs.h b/include/linux/iio/sysfs.h
> > index ce9426c..49c81a4 100644
> > --- a/include/linux/iio/sysfs.h
> > +++ b/include/linux/iio/sysfs.h
> > @@ -55,6 +55,10 @@ struct iio_const_attr {
> >         { .dev_attr = __ATTR(_name, _mode, _show, _store),      \
> >           .address = _addr }
> >
> > +#define IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)             \
> > +       { .dev_attr = __ATTR_NAMED(_name, _mode, _show, _store),        \
> > +         .address = _addr }
> > +
> >  #define IIO_ATTR_RO(_name, _addr)       \
> >         { .dev_attr = __ATTR_RO(_name), \
> >           .address = _addr }
> > @@ -85,7 +89,7 @@ struct iio_const_attr {
> >
> >  #define IIO_DEVICE_ATTR_NAMED(_vname, _name, _mode, _show, _store, _addr) \
> >         struct iio_dev_attr iio_dev_attr_##_vname                       \
> > -       = IIO_ATTR(_name, _mode, _show, _store, _addr)
> > +       = IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)
> >
> >  #define IIO_CONST_ATTR(_name, _string)                                 \
> >         struct iio_const_attr iio_const_attr_##_name                    \
> > diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> > index aa02c32..20321cf 100644
> > --- a/include/linux/sysfs.h
> > +++ b/include/linux/sysfs.h
> > @@ -104,6 +104,13 @@ struct attribute_group {
> >         .store  = _store,                                               \
> >  }
> >
> > +#define __ATTR_NAMED(_name, _mode, _show, _store) {                    \
> > +       .attr = {.name = _name,                                         \
> > +                .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },             \
> > +       .show = _show,                                                  \
> > +       .store = _store,                                                \
> > +}
> > +
> >  #define __ATTR_PREALLOC(_name, _mode, _show, _store) {                 \
> >         .attr = {.name = __stringify(_name),                            \
> >                  .mode = SYSFS_PREALLOC | VERIFY_OCTAL_PERMISSIONS(_mode) },\
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170911224348.GA13259%40himanshi-Inspiron-5558.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

