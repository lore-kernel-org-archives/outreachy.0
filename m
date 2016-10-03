X-GM-THRID: 6336450754880995328
X-Received: by 10.129.83.6 with SMTP id h6mr5814167ywb.89.1475501900564;
        Mon, 03 Oct 2016 06:38:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.166 with SMTP id 35ls2066786otq.35.gmail; Mon, 03 Oct
 2016 06:38:20 -0700 (PDT)
X-Received: by 10.129.89.84 with SMTP id n81mr140270ywb.23.1475501900137;
        Mon, 03 Oct 2016 06:38:20 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id y17si148394ywy.1.2016.10.03.06.38.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 06:38:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id u124so1056948ywg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 06:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=hQ7HhByylOczQlkX4sucwUuzBWmeYBeX63qfcCHJWx0=;
        b=a1/20nUUAg7ogd2CHRGSoOWOzTWAQxTa/RTMabhHs5AAjLpYoHsFz8GLsxkBziKN7M
         nYR80gnfBts8cLWM6KXDYDyu3iaQwcZJHPoOz7xlyyKii+hlDGWBuUUG5YqTtplUeG0Y
         Mos81I3RU15p7kZBMBCKCCxv34tsFZ/gB0WlfHDQO+QXgaOkPXSDUEKFWmDyfmUsvc7m
         Sc4Ab3zbGcjqSEW72WNBwJHqgGIm8WxZ2rqesAtmAJstIqms0FhgjUyK8o4wUKPHyJSp
         zSeD/pKG2S5KgS0vUtNULlDKCsWWznvPpVoo6F1MkmcAkNgoqwEr0zF0AIPYmwQt+UWU
         HMCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=hQ7HhByylOczQlkX4sucwUuzBWmeYBeX63qfcCHJWx0=;
        b=Ije3WrBR0H+v4nfHGXFsBcFNLV0YvMrmx59cosSUCz+nWCEfI+5L8XauvimttsCLnl
         ziqNY7OyUIcliSc3GHQGh2dWgXnqT5l32oOxX8zTXtGEHWab5Dm79otu7kzBYFLqdliv
         oGsbJkvW1gjQ6L4X48Iu9MSUCVY5Mx7ceGYIymnjlxJPcVEcgVb5p3fbmNKmImritJek
         u9fW+CuVgmNvtDrBtiUvtCbyVTgToJf5ocEssATeLraSCO5a5SlA1GBKsY3Tdbf7EdTB
         ESIsBiG+HB18dJc5AEJKP7NralZECXndr5chxMdelkdyLNILQKFfPwEgY1aIEDs+EsLP
         S1qg==
X-Gm-Message-State: AA6/9RmsfBR2rVqzvU9e1eBfvYWXu7rR81m8IOawq6PSvIDfiMXeF7jRGTViTBl36FH6KGxa+04IJU8D5I0XSQ==
X-Received: by 10.129.111.8 with SMTP id k8mr14650503ywc.235.1475501899912;
 Mon, 03 Oct 2016 06:38:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Mon, 3 Oct 2016 06:37:39 -0700 (PDT)
In-Reply-To: <20161002232524.GA2822@d830.WORKGROUP>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
 <20161002050032.GA14117@d830.WORKGROUP> <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
 <20161002232524.GA2822@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 3 Oct 2016 19:07:39 +0530
Message-ID: <CAKG5xWi6M5jemARfENuVgigaqUbvdJmeVbwpR3kWDM9d8LBW-w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
To: Alison Schofield <amsfield22@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, outreachy-kernel@googlegroups.com, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 3, 2016 at 4:55 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Oct 02, 2016 at 05:53:08PM +0200, Lars-Peter Clausen wrote:
>> On 10/02/2016 07:00 AM, Alison Schofield wrote:
>> [...]
>> >> ---
>> >>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
>> >>  1 file changed, 2 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> index e0251b8..5355507 100644
>> >> --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> >> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>> >>    struct iio_poll_func *pf = p;
>> >>    struct iio_dev *indio_dev = pf->indio_dev;
>> >>    struct bmi160_data *data = iio_priv(indio_dev);
>> >> -  s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
>> >> +  __le16 buf[16];
>> >> +  /* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
>> >>    int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
>> >>    __le16 sample;
>> >
>> > Wondering about this option below.  Data was read into an __le16, so that
>> > was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
>> > conversion into the buf.
>> >
>> > --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> > +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> > @@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>> >                                    &sample, sizeof(__le16));
>> >             if (ret < 0)
>> >                     goto done;
>> > -           buf[j++] = sample;
>> > +           buf[j++] = le16_to_cpu(sample);
>> >     }
>>
>> This conversion is usually skipped on purpose and delayed until it is
>> actually needed by the user. The IIO channel is accordingly marked that it
>> will produce LE data.
> Thanks Lars.  I knew that for buffers, overlooked it, now I'll know it
> better!
>
> So, Sayli, you probably got this from the analysis of the last patch.
> In buffered mode, we'll go ahead and return the data in it's 'native'
> order.  So, my suggestion to convert it here, is wrong.  Ignore ;)
>
Oh I see! So should I resend the patch with an updated
description?(cosmetic/bug fix)

thanks,
sayli

> alisons
>
>>

