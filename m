X-GM-THRID: 6470342242879930368
X-Received: by 10.31.41.73 with SMTP id p70mr74900vkp.26.1507376102481;
        Sat, 07 Oct 2017 04:35:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.134.13 with SMTP id i13ls207389vkd.7.gmail; Sat, 07 Oct
 2017 04:35:01 -0700 (PDT)
X-Received: by 10.159.50.75 with SMTP id y11mr826044uad.109.1507376101579;
        Sat, 07 Oct 2017 04:35:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507376101; cv=none;
        d=google.com; s=arc-20160816;
        b=eQGGRdoakNXaWyw9SqpAnmeKdXf2uBvYwFRuyiGwIK7JkH3EDKAtodESObGEVLNAzy
         IZ8sf0eKTpIUiizKRCb1KoNKO+Gr5TeyUKwi1hH+JtVYnr9JLcm9B1y54TZA6jN+vwfc
         1ot1aee5/L475ZOEN01TUcRGEnNzQ5HbAWY2CkK9CMp9zy8wBx4FAXrOWux+tu3Y90DR
         rChMtD2IqTwNPcTurWVpf3RRClfhndUwXjrphHFXhP3/9Yd+ToyVkTU3LDvHPcxktuG2
         9LmWWPd9T6MNZdQs6Ims4CF0nx7xHrSvL67qLRQ5yMQ8j6pUQ/ELxpiBakrkqTtQvtfe
         hURA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=G7ULOYfjAg40zHXv8yKTkzWA+Wy4aFDx+H3H7gtdTXM=;
        b=COtgtIfdUxgD3ha4g77B0Ftql4/q9E3On1tNOmHFDFjJGSdzFn1Rv0RaZsK2IG6gv6
         SnGSPjdJuDuPuMjhlJHTXBr38YQVjgBfXs4KQEwBytYdLn9IzSnN1RDzz722EHKIZasC
         e7rwUSKpwULdrlKseQdmrg21Gd1bxEuVIPPWqTYsWh8oL0TwUZpHO9B+oifvsmXVgVkq
         /ZH7htUS2U1RYDjBROX7kxDxAPzGEk3eHx1snpCyez4nMAiXbrGCXUiuxyiOzpHY5VVA
         OJpwNItU8WWWJbQuLH4UgoLw6jiQSR30B7eymuKXu1BJ8nC5lTvvf8mTwKYOAlZXaefD
         K2fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TepSh8PC;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id q85si192789vkb.1.2017.10.07.04.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 04:35:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TepSh8PC;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id t203so468556vke.3
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 04:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=G7ULOYfjAg40zHXv8yKTkzWA+Wy4aFDx+H3H7gtdTXM=;
        b=TepSh8PCVjKT+9cerMC8ohghZn/PAsSXt0atDM8lsOMLDheFAje27wsmB6e3aB8gdr
         XkOJj5S7Wie6h/Tao2V/3LTD5rOOTcm1lFseEowXDs1e5UbAnFBr4Ey/V67stdPr3jf4
         4BdLdtjaWY406L2yr+saGYLThpFygD9RKp75t3+rHL27huLPXbMaRtnteeA0Q/enJQCX
         ePWO7JhLHgxJBYI6zg6KCA++Df5NUq8B6Q5ictDcjuK48mSHdTf2pqaJPJOpv/UF2k/x
         yMoWc+M+AjCGnJqp6NPECU6wW44/tzbwVQpCUg0csqH5jqJjidTpMnZmDACq8biOQhZO
         dEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=G7ULOYfjAg40zHXv8yKTkzWA+Wy4aFDx+H3H7gtdTXM=;
        b=sRWFTR4uAnDKupXsfhJyXxg4ZVOKotpp/ni6TOdVxC2+tnvAF4MGcKJEaaya260K95
         E5xB5Q+86duk784Ua/9WdAmoqU7GBEt0UHNR44XHzzyuQ4wWbyqOdA/+PGqoXg2f6+QZ
         yfh/ken2Pll9VbkSSEwNbMEcXVHHYRYsbOu8noM5Q1dif3pe34JOpRZ9pVbG7YQ0NwaG
         o5RFIpOzxjEKdrbVLJJopBXo82v6LFaXPeYcX6aAFfJ2Bf+H6fRealuYeyIwU97f0HRH
         s0YEXcRHokg+mt3MOotqTC42bFykCdBKC7Su5YmaLOoNvrJ5soJEoNL1PE9TxspobjhN
         BlaQ==
X-Gm-Message-State: AMCzsaXxgaUuPRPZ9OHOLHlps5mWmOk0+XzTPzKffjNPR7YS5I1zsb9I
	01JEYRG9AJnQ/gfV6h8cOdrt+Igioj7n21dfUE4=
X-Google-Smtp-Source: AOwi7QBLtsstzdWqpwM92z3kvgaVNfBgGo0uzOFw+LWldF5zC/zZJWNaVrYxs/uOOfxOeWvviioq3lIj5BPPpuABBI8=
X-Received: by 10.31.89.71 with SMTP id n68mr2056265vkb.87.1507376101141; Sat,
 07 Oct 2017 04:35:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sat, 7 Oct 2017 04:35:00 -0700 (PDT)
In-Reply-To: <20171007122910.581f51cf@archlinux>
References: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
 <CAHXiS59kFwR4rdmAUvz=HeSXZqqH5CC0+NgfCCcin9aHUJ=0hg@mail.gmail.com> <20171007122910.581f51cf@archlinux>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sat, 7 Oct 2017 17:05:00 +0530
Message-ID: <CAHXiS58tq9FQV=e+wZxAXxkH=gENqgeAbVRAsWF15vT2ju4rcg@mail.gmail.com>
Subject: Re: [PATCH v4] staging: iio: adc: ad7192: use driver private lock to
 protect hardware state changes
To: Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel@googlegroups.com, hennerich@blackfin.uclinux.org, 
	knaack.h@gmx.de, lars@metafoo.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 7, 2017 at 4:59 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On Fri, 6 Oct 2017 22:58:42 +0530
> Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>
>> On Wed, Sep 27, 2017 at 12:01 PM, Aastha Gupta
>> <aastha.gupta4104@gmail.com> wrote:
>> > The IIO subsystem is redefining iio_dev->mlock to be used by
>> > the IIO core only for protecting device operating mode changes.
>> > ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>> >
>> > In this driver, mlock was being used to protect hardware state
>> > changes.  Replace it with a driver private lock.
>> >
>> > Also, as there are state changes in the ad7192_ write_raw function, a lock
>> > is added to prevent the concurrent state changes.
>> >
>> > Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> > ---
>> > changes in v4:
>> >         - added comment for mutex
>> >         - improved commit message
>> >  drivers/staging/iio/adc/ad7192.c | 9 +++++++--
>> >  1 file changed, 7 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
>> > index d11c6de..c1343ec 100644
>> > --- a/drivers/staging/iio/adc/ad7192.c
>> > +++ b/drivers/staging/iio/adc/ad7192.c
>> > @@ -162,6 +162,7 @@ struct ad7192_state {
>> >         u32                             scale_avail[8][2];
>> >         u8                              gpocon;
>> >         u8                              devid;
>> > +       struct mutex                    lock;   /* protect sensor state */
>> >
>> >         struct ad_sigma_delta           sd;
>> >  };
>> > @@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
>> >         case IIO_CHAN_INFO_SCALE:
>> >                 switch (chan->type) {
>> >                 case IIO_VOLTAGE:
>> > -                       mutex_lock(&indio_dev->mlock);
>> > +                       mutex_lock(&st->lock);
>> >                         *val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
>> >                         *val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
>> > -                       mutex_unlock(&indio_dev->mlock);
>> > +                       mutex_unlock(&st->lock);
>> >                         return IIO_VAL_INT_PLUS_NANO;
>> >                 case IIO_TEMP:
>> >                         *val = 0;
>> > @@ -510,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>> >         switch (mask) {
>> >         case IIO_CHAN_INFO_SCALE:
>> >                 ret = -EINVAL;
>> > +               mutex_lock(&st->lock);
>> >                 for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
>> >                         if (val2 == st->scale_avail[i][1]) {
>> >                                 ret = 0;
>> > @@ -523,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>> >                                 ad7192_calibrate_all(st);
>> >                                 break;
>> >                         }
>> > +               mutex_unlock(&st->lock);
>> >                 break;
>> >         case IIO_CHAN_INFO_SAMP_FREQ:
>> >                 if (!val) {
>> > @@ -634,6 +637,8 @@ static int ad7192_probe(struct spi_device *spi)
>> >
>> >         st = iio_priv(indio_dev);
>> >
>> > +       mutex_init(&st->lock);
>> > +
>> >         st->avdd = devm_regulator_get(&spi->dev, "avdd");
>> >         if (IS_ERR(st->avdd))
>> >                 return PTR_ERR(st->avdd);
>> > --
>> > 2.7.4
>> >
>>
>> Any update regarding this?
>
> Patch is fine, but Julia had an outstanding question on the commit message.
>
> <snip>
>
>> In this driver, mlock was being used to protect hardware state
>> changes.  Replace it with a driver private lock.
>>
>> Also, as there are state changes in the ad7192_ write_raw function, a lock
>> is added to prevent the concurrent state changes.
>
> Why was it not needed before?
>
> julia
>
> <snip>
>
> Lazy maintainer strategy 15, don't reply to a patch once someone else has
> raised an reasonably question that hasn't been answered ;)
>
> Jonathan
>
>

This was discussed but due to some mistake not everyone was CC'd.
I have attached discussion.

'''
> On 27 Sep 2017 12:37 pm, "Julia Lawall" <julia.lawall@lip6.fr> wrote:
> >
> > On Wed, 27 Sep 2017, Aastha Gupta wrote:
> >
> > >
> > > On 27 Sep 2017 12:25 pm, "Julia Lawall" <julia.lawall@lip6.fr> wrote:
> > > >
> > > >
> > > >
> > > > On Wed, 27 Sep 2017, Aastha Gupta wrote:
> > > >
> > > > > The IIO subsystem is redefining iio_dev->mlock to be used by
> > > > > the IIO core only for protecting device operating mode changes.
> > > > > ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> > > > >
> > > > > In this driver, mlock was being used to protect hardware state
> > > > > changes.  Replace it with a driver private lock.
> > > > >
> > > > > Also, as there are state changes in the ad7192_ write_raw function, a
> > > lock
> > > > > is added to prevent the concurrent state changes.
> > > >
> > > > Why was it not needed before?
> > > >
> > > > julia
> > > >
> > >
> > > It was not there in the file but I think it should be included because these
> > > state changes are read by ad7192_read_raw function. So to avoid reading of
> > > invalid state, while writing also there should be a lock.
> >
> > I thought someone told you to merge the patches because the second one was
> > fixing a problem that the first one introduced.  Do you happen to still
> > have that mail?
> >
> > julia
> Yes, But I think that was because in the second patch I was using the same lock that I introduced in the first patch, so he told me to combine those two.

OK

'''

