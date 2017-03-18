X-GM-THRID: 6398485501253255168
X-Received: by 10.129.178.4 with SMTP id q4mr10501052ywh.122.1489858762492;
        Sat, 18 Mar 2017 10:39:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls10755143otb.38.gmail; Sat, 18 Mar
 2017 10:39:22 -0700 (PDT)
X-Received: by 10.129.106.70 with SMTP id f67mr10754957ywc.108.1489858762099;
        Sat, 18 Mar 2017 10:39:22 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id p186si60684itc.2.2017.03.18.10.39.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 10:39:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id y18so9758120itc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 10:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=uflOOHFgG2hIbdpwuwDiRNhxseLdcMp+rc+epmgXMyI=;
        b=F20xiPw1li8YVwczOJqaW94mfOyMkRzbXKIMHVB/MNckzsffFP7pgxJwcHh+OHdgZr
         CKFqVeHbnXG33UXQTidj3RqCCIApCFuUxyClISgVjtR6DsZa38AjXoPtZzZHW7j2Ndqr
         KUnkvQHbzHsoDu3bUX8EuNY2SSxbxzOKBYO2heSlo5pMMzV2yhHNYg+Vh62xO7afHdvx
         BSW8l+rZciQDov6e0ItedfZE0iwdQEXNfIEt4aUJ6ax/2HHdq68bh7vcGqSf9fOknPAn
         GkibLni9x9KxlGwOSaAum9NjG4PlFqUwrTiYHho4ChCjfIHFKwHhFhTUIu0KYQVwvsMS
         SHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uflOOHFgG2hIbdpwuwDiRNhxseLdcMp+rc+epmgXMyI=;
        b=QYMbRdIMlmCRpPtWUUC/B8YsQ2Zkz2abbAFpagHG2Yndo2pI/wuk2ozjPKsROI1VNX
         vBxOCo74O26xW4RCF80PcU/r/OMb6OXiUf+yYJ2sypnYWUMlVCpp6pfn/ONVg5jxvYPP
         COq+FVMs70FC+JKK2qOu+1LPQjSoM3DNVVLyqrRltbKX2UgMMW+CWGNGyTwfQstSpN6K
         08F5trFCC5hYrIo9BRVgYUgVftcULaaV3hHQAY51jrLOLAa7DZlW6UNB91x3Fzvk83P+
         j4WaR31c1zYxJmENu2KKZ4SIDXocCvSYQIIHeY1o66zVPlQL6kV0tBbQLeSPl1rotXJI
         123w==
X-Gm-Message-State: AFeK/H0LOGWCHuzrJadmZCP8JC0kffqwBq4ZsRMirrn63tRlC+RSyEODgHNGmn62PiL+2howQ+1dNMEr4LnJAg==
X-Received: by 10.36.64.198 with SMTP id n189mr3719043ita.6.1489858761795;
 Sat, 18 Mar 2017 10:39:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 18 Mar 2017 10:38:51 -0700 (PDT)
In-Reply-To: <20170317171136.GA19487@d830.WORKGROUP>
References: <20170317151110.GA26848@sayli-HP-15-Notebook-PC> <20170317171136.GA19487@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 18 Mar 2017 23:08:51 +0530
Message-ID: <CAOCi2DEtSEHxRD9ZW7exOEP9bkQoj7yqCE3z+HT3E2noX7iBrA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: ade7758_core:
 Replace mlock with driver's private lock
To: Alison Schofield <amsfield22@gmail.com>
Cc: sayli karnik <karniksayli1995@gmail.com>, outreachy-kernel@googlegroups.com, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 17, 2017 at 10:41 PM, Alison Schofield <amsfield22@gmail.com> wrote:
>
> On Fri, Mar 17, 2017 at 08:41:11PM +0530, sayli karnik wrote:
> > iio_dev->mlock should be used by the IIO core only for protecting
> > device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
> > INDIO_BUFFER_* modes.
> > Replace mlock with a lock in the device's global data to protect
> > hardware state changes.
>
> Hi Sayli,
>
> There are nested locks here, hence deadlock.  I'm wondering if we can grab
> the lock once at the top layers (read/write_raw functions) and hold it.
> Seems like that's a pattern in IIO drivers.  Let's see what the reviewers
> suggest on this one.
>

Hey Alison,

I was trying to work through a similar patch. I'm having trouble
understanding how a deadlock will be created? Also, Lars suggested in
this{https://groups.google.com/forum/#!msg/outreachy-kernel/GapBLSp5WCo/cju_A8B-AwAJ}
thread that writing a variant of
<driver_name>_spi_{read,write}_reg_16() that does not take a lock and
instead uses read-modify-write cycle in a protected section is the way
to go. Is there any example I can look to for inspiration :). Also, in
similar vain there are other(8 bit) variants for read/write functions
as well. Should they be modified as well?

Thanks!
Gargi

> alisons
>
> >
> > Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> > ---
> >  drivers/staging/iio/meter/ade7758_core.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> > index 99c89e6..1723eb8 100644
> > --- a/drivers/staging/iio/meter/ade7758_core.c
> > +++ b/drivers/staging/iio/meter/ade7758_core.c
> > @@ -522,13 +522,14 @@ static int ade7758_read_raw(struct iio_dev *indio_dev,
> >                           int *val2,
> >                           long mask)
> >  {
> > +     struct ade7758_state *st = iio_priv(indio_dev);
> >       int ret;
> >
> >       switch (mask) {
> >       case IIO_CHAN_INFO_SAMP_FREQ:
> > -             mutex_lock(&indio_dev->mlock);
> > +             mutex_lock(&st->buf_lock);
> >               ret = ade7758_read_samp_freq(&indio_dev->dev, val);
> > -             mutex_unlock(&indio_dev->mlock);
> > +             mutex_unlock(&st->buf_lock);
> >               return ret;
> >       default:
> >               return -EINVAL;
> > @@ -541,15 +542,16 @@ static int ade7758_write_raw(struct iio_dev *indio_dev,
> >                            struct iio_chan_spec const *chan,
> >                            int val, int val2, long mask)
> >  {
> > +     struct ade7758_state *st = iio_priv(indio_dev);
> >       int ret;
> >
> >       switch (mask) {
> >       case IIO_CHAN_INFO_SAMP_FREQ:
> >               if (val2)
> >                       return -EINVAL;
> > -             mutex_lock(&indio_dev->mlock);
> > +             mutex_lock(&st->buf_lock);
> >               ret = ade7758_write_samp_freq(&indio_dev->dev, val);
> > -             mutex_unlock(&indio_dev->mlock);
> > +             mutex_unlock(&st->buf_lock);
> >               return ret;
> >       default:
> >               return -EINVAL;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170317151110.GA26848%40sayli-HP-15-Notebook-PC.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170317171136.GA19487%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

