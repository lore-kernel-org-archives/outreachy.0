X-GM-THRID: 6202672545102036992
X-Received: by 10.182.18.66 with SMTP id u2mr27102922obd.1.1444730759971;
        Tue, 13 Oct 2015 03:05:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.199 with SMTP id 190ls1633046ioe.16.gmail; Tue, 13 Oct
 2015 03:05:59 -0700 (PDT)
X-Received: by 10.66.158.229 with SMTP id wx5mr28738803pab.3.1444730759415;
        Tue, 13 Oct 2015 03:05:59 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x233.google.com (mail-yk0-x233.google.com. [2607:f8b0:4002:c07::233])
        by gmr-mx.google.com with ESMTPS id o73si119778ywd.6.2015.10.13.03.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 03:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) client-ip=2607:f8b0:4002:c07::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x233.google.com with SMTP id y125so10927264yke.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 03:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=1HA2mNuRVNwvPECHxXIzP4gGqaeKY4GvqZyn0Ee7Y9g=;
        b=am2YC+OGk4br701kRtzJUZNSe2aBL9YcYvtRNPGt25v2u8byZus4FzbDovqX43YngL
         Ei0zPJtoKNtNlVMY3RsUmUdmiB00D53mOhO6036l4ARkZeLfRTZ7q0/lDt26PgQr1N3O
         5oIccuK7kASlr9Mc5b2srtHDrhQe3YF9pkXpmOLCBiKPXT468bUO7DeUyGmD8QPhudY/
         B3ZQtsy/gqA+Ro7NrbuckyUy7XYN6ojxKMeK55u45G7fYd70Eg4c/kYqiDJUlFpeBuGC
         LNmGyw0E2WbC65JzHaW5CXU+K8R0/zOa3TblqgEgcnE74WXsOTCf4G0Z5D017ku89zUj
         GOYQ==
MIME-Version: 1.0
X-Received: by 10.13.208.134 with SMTP id s128mr23423185ywd.163.1444730759005;
 Tue, 13 Oct 2015 03:05:59 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Tue, 13 Oct 2015 03:05:58 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510131155580.2391@hadrien>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com>
	<CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com>
	<CAHWJYFn-cd5tCRRjU-vV72-x5HM+=u5uojF6cYFT3XjqyjKE8g@mail.gmail.com>
	<alpine.DEB.2.10.1510131155580.2391@hadrien>
Date: Tue, 13 Oct 2015 13:05:58 +0300
Message-ID: <CAHWJYFnB=o_UYGcT=B4LYZ+jwcERBsHDSc1_dJ=n+kaTBkgSiw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/9] staging: iio: adc: properly
 indent to match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Daniel Baluta <daniel.baluta@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 12:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 13 Oct 2015, Ioana Ciornei wrote:
>
>> On Mon, Oct 12, 2015 at 6:14 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
>> >
>> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
>> > > Indent parameters and arguments passed to function calls to match
>> > > open paranthesis
>> > >
>> > > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> > > ---
>> > > Changes in v2:
>> > >     - nothing
>> > > Changes in v3:
>> > >     - rework changes in order to avoid introducing new checkpatch warnings
>> > >
>> >
>> > <snip>
>> >
>> > > @@ -565,10 +565,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
>> > >                         st->iio_attr[cnt].dev_attr.store =
>> > >                                 ad7280_store_balance_sw;
>> > >                         st->iio_attr[cnt].dev_attr.attr.name =
>> > > -                               kasprintf(GFP_KERNEL,
>> >
>> > This line looks good to me as it is. Is there any particular reason
>> > for which you we want GFP_KERNEL to be moved on the next line?
>> >
>>
>> I chose to move kasprintf on the next line and all the others
>> arguments also in order to improve readability.
>> I had to choose between leaving the kasprintf where it was and
>> properly align the arguments to match the open bracket but
>> cross the 80 char limit or moving the kasprintf call on the next line
>> so the arguments are somewhat distinguishable.
>>
>> Was this a bad call?
>
> It's not really normal to see the first argument on a different line.
> Do the other arguments not fit if they are lines up with the right side of
> the (?  Perhaps it is possible to break up the longer arguments more so
> that they fit better?
>

The first argument fits, the problem is with the other ones.
Well, now that I think of... yes there is a solution to this.
If use a variable instead of 'dev * AD7280A_CELLS_PER_DEV + ch' all
the problems would be solved.

Is this a proper way to handle it?

Thanks,

Ioana


>
>>
>> >
>> > > +                               kasprintf(
>> > > +                                       GFP_KERNEL,
>> > >                                         "in%d-in%d_balance_switch_en",
>> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
>> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
>> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch,
>> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);
>> >
>> > This lines should be properly aligned.
>>
>> Answered above.
>>
>> >
>> > >                         ad7280_attributes[cnt] =
>> > >                                 &st->iio_attr[cnt].dev_attr.attr;
>> > >                         cnt++;
>> > > @@ -582,9 +583,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
>> > >                         st->iio_attr[cnt].dev_attr.store =
>> > >                                 ad7280_store_balance_timer;
>> > >                         st->iio_attr[cnt].dev_attr.attr.name =
>> > > -                               kasprintf(GFP_KERNEL, "in%d-in%d_balance_timer",
>> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
>> > > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
>> > > +                               kasprintf(
>> > > +                                       GFP_KERNEL,
>> >
>> > The same here.
>>
>>
>> >
>> > > +                                       "in%d-in%d_balance_timer",
>> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch,
>> > > +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);
>> > >                         ad7280_attributes[cnt] =
>> > >                                 &st->iio_attr[cnt].dev_attr.attr;
>> > >                 }
>> > > @@ -595,8 +598,8 @@ static int ad7280_attr_init(struct ad7280_state *st)
>> > >  }
>> > >
>> > >  static ssize_t ad7280_read_channel_config(struct device *dev,
>> > > -                                       struct device_attribute *attr,
>> > > -                                       char *buf)
>> > > +                                         struct device_attribute *attr,
>> > > +                                         char *buf)
>> > >  {
>> > >         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> > >         struct ad7280_state *st = iio_priv(indio_dev);
>> > > @@ -624,9 +627,9 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
>> > >  }
>> > >
>> > >  static ssize_t ad7280_write_channel_config(struct device *dev,
>> > > -                                        struct device_attribute *attr,
>> > > -                                        const char *buf,
>> > > -                                        size_t len)
>> > > +                                          struct device_attribute *attr,
>> > > +                                          const char *buf,
>> > > +                                          size_t len)
>> > >  {
>> > >         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> > >         struct ad7280_state *st = iio_priv(indio_dev);
>> > > @@ -698,39 +701,43 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
>> > >                         if (((channels[i] >> 11) & 0xFFF) >=
>> > >                                 st->cell_threshhigh)
>> > >                                 iio_push_event(indio_dev,
>> > > -                                       IIO_EVENT_CODE(IIO_VOLTAGE,
>> > > -                                                      1,
>> > > -                                                      0,
>> > > -                                                      IIO_EV_DIR_RISING,
>> > > -                                                      IIO_EV_TYPE_THRESH,
>> > > -                                                      0, 0, 0),
>> > > -                                       iio_get_time_ns());
>> > > +                                              IIO_EVENT_CODE(
>> > > +                                                       IIO_VOLTAGE,
>> > The same here, I think IIO_VOLTAGE should not be moved.
>>
>> >
>> > > +                                                       1,
>> > > +                                                       0,
>> >
>> > The rest of the patch looks good.
>>
>>
>> Thanks,
>>
>> Ioana
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHWJYFn-cd5tCRRjU-vV72-x5HM%2B%3Du5uojF6cYFT3XjqyjKE8g%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Ioana Ciornei
Facultatea de Automatica si Calculatoare, UPB
Tel. 0753 861 668

