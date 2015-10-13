X-GM-THRID: 6202672545102036992
X-Received: by 10.68.138.132 with SMTP id qq4mr27955598pbb.11.1444729978457;
        Tue, 13 Oct 2015 02:52:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.201 with SMTP id gg9ls1520826obb.27.gmail; Tue, 13 Oct
 2015 02:52:56 -0700 (PDT)
X-Received: by 10.182.246.98 with SMTP id xv2mr29728501obc.3.1444729976936;
        Tue, 13 Oct 2015 02:52:56 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x229.google.com (mail-yk0-x229.google.com. [2607:f8b0:4002:c07::229])
        by gmr-mx.google.com with ESMTPS id u67si123401ywf.5.2015.10.13.02.52.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 02:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) client-ip=2607:f8b0:4002:c07::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x229.google.com with SMTP id c126so11100074yke.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 02:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=iEWxRBft0Xwu1C0P1j8/3Mr8Se+AfM0gHrrxkcTBpQc=;
        b=ET41nY0gVRDI5lxn/5v0CwvE5LIh+Rd7uGHHtdT0+AJe2d7co3e905+xZrlIAtqTRz
         0eInlmmT9E+FLOkeXGTf501BrI86DLcSJu0xSs3WGiaFLgaDHnQWaEYNh5K8e4xXNpTE
         p4ttOY1pAvBEDW7I4b9nmZeKKu2fREce9jDSHJHG3qIQu7vRLljbzPqTZ92RHCxIYaPt
         0aP5Zfe40shbJgXLSV6V0S5axsXm0zen5dzzXFg9RpBY38YexYUn/bguoWb5MAxIIoY1
         VBw4a0h1Z8gLEr+YxBog2+3NvDaJ6aYjUwOqxpRqaG+8KuLG3r5G/zlGYJ/x5n8LMbJd
         dg7w==
MIME-Version: 1.0
X-Received: by 10.13.216.212 with SMTP id a203mr5273475ywe.112.1444729976779;
 Tue, 13 Oct 2015 02:52:56 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Tue, 13 Oct 2015 02:52:56 -0700 (PDT)
In-Reply-To: <CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com>
	<CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com>
Date: Tue, 13 Oct 2015 12:52:56 +0300
Message-ID: <CAHWJYFn-cd5tCRRjU-vV72-x5HM+=u5uojF6cYFT3XjqyjKE8g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/9] staging: iio: adc: properly
 indent to match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 6:14 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
> On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> > Indent parameters and arguments passed to function calls to match
> > open paranthesis
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> > Changes in v2:
> >     - nothing
> > Changes in v3:
> >     - rework changes in order to avoid introducing new checkpatch warnings
> >
>
> <snip>
>
> > @@ -565,10 +565,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
> >                         st->iio_attr[cnt].dev_attr.store =
> >                                 ad7280_store_balance_sw;
> >                         st->iio_attr[cnt].dev_attr.attr.name =
> > -                               kasprintf(GFP_KERNEL,
>
> This line looks good to me as it is. Is there any particular reason
> for which you we want GFP_KERNEL to be moved on the next line?
>

I chose to move kasprintf on the next line and all the others
arguments also in order to improve readability.
I had to choose between leaving the kasprintf where it was and
properly align the arguments to match the open bracket but
cross the 80 char limit or moving the kasprintf call on the next line
so the arguments are somewhat distinguishable.

Was this a bad call?

>
> > +                               kasprintf(
> > +                                       GFP_KERNEL,
> >                                         "in%d-in%d_balance_switch_en",
> > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
> > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
> > +                                       dev * AD7280A_CELLS_PER_DEV + ch,
> > +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);
>
> This lines should be properly aligned.

Answered above.

>
> >                         ad7280_attributes[cnt] =
> >                                 &st->iio_attr[cnt].dev_attr.attr;
> >                         cnt++;
> > @@ -582,9 +583,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
> >                         st->iio_attr[cnt].dev_attr.store =
> >                                 ad7280_store_balance_timer;
> >                         st->iio_attr[cnt].dev_attr.attr.name =
> > -                               kasprintf(GFP_KERNEL, "in%d-in%d_balance_timer",
> > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
> > -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
> > +                               kasprintf(
> > +                                       GFP_KERNEL,
>
> The same here.


>
> > +                                       "in%d-in%d_balance_timer",
> > +                                       dev * AD7280A_CELLS_PER_DEV + ch,
> > +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);
> >                         ad7280_attributes[cnt] =
> >                                 &st->iio_attr[cnt].dev_attr.attr;
> >                 }
> > @@ -595,8 +598,8 @@ static int ad7280_attr_init(struct ad7280_state *st)
> >  }
> >
> >  static ssize_t ad7280_read_channel_config(struct device *dev,
> > -                                       struct device_attribute *attr,
> > -                                       char *buf)
> > +                                         struct device_attribute *attr,
> > +                                         char *buf)
> >  {
> >         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >         struct ad7280_state *st = iio_priv(indio_dev);
> > @@ -624,9 +627,9 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
> >  }
> >
> >  static ssize_t ad7280_write_channel_config(struct device *dev,
> > -                                        struct device_attribute *attr,
> > -                                        const char *buf,
> > -                                        size_t len)
> > +                                          struct device_attribute *attr,
> > +                                          const char *buf,
> > +                                          size_t len)
> >  {
> >         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >         struct ad7280_state *st = iio_priv(indio_dev);
> > @@ -698,39 +701,43 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> >                         if (((channels[i] >> 11) & 0xFFF) >=
> >                                 st->cell_threshhigh)
> >                                 iio_push_event(indio_dev,
> > -                                       IIO_EVENT_CODE(IIO_VOLTAGE,
> > -                                                      1,
> > -                                                      0,
> > -                                                      IIO_EV_DIR_RISING,
> > -                                                      IIO_EV_TYPE_THRESH,
> > -                                                      0, 0, 0),
> > -                                       iio_get_time_ns());
> > +                                              IIO_EVENT_CODE(
> > +                                                       IIO_VOLTAGE,
> The same here, I think IIO_VOLTAGE should not be moved.

>
> > +                                                       1,
> > +                                                       0,
>
> The rest of the patch looks good.


Thanks,

Ioana

