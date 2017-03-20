X-GM-THRID: 6398485501253255168
X-Received: by 10.157.58.2 with SMTP id j2mr14355258otc.85.1490038425351;
        Mon, 20 Mar 2017 12:33:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls6444914otg.18.gmail; Mon, 20 Mar
 2017 12:33:44 -0700 (PDT)
X-Received: by 10.13.197.65 with SMTP id h62mr15805319ywd.159.1490038424735;
        Mon, 20 Mar 2017 12:33:44 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id r198si2483015ywe.4.2017.03.20.12.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 12:33:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id i203so5475441ywc.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 12:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=a0ldwVBDFZOaK1wtf1t1YErPAFPBLvR20C2ZKJg6Z1g=;
        b=T8c0Fla4SoLLPrlQ0qc15+t3dI2DXibY5AnjIbH8gmbMB/LjP/BjI2niw/AvpbxHxu
         DUkG7yyDhepqz7us5lKEPhKzLEFNH7VGwoNqbn+f7ceAilmFdNrdgktLxoQXq4zKW7xN
         REBJECG6K94pkbRIXolFg0E3SMz8CZcVVazhOYTT4BeJQqFnp8UgXd5HiTfPwYF1JKXb
         Yf1at5JSLa5gkYBSX1jNhcT5MPS8QfcXKV22dn3Gj8rdZ0V2wabhL/sMZP3veY/RGNra
         uBtQi6Cb8GPGj/J+/QfbyjwU4KP03ZK7D7Ot4E3ervCHvco7ma3ZYhuYDpCaF6acQFjF
         NM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=a0ldwVBDFZOaK1wtf1t1YErPAFPBLvR20C2ZKJg6Z1g=;
        b=DPiE5diilYA1/wiAVZv40DI6gOEjHRyoQqGkA3M7cE0wDhim5lmDJwX6c8JrCj/4Yk
         88KJjC6KKC64CG4uFbueiZhZLBxetj8TZw3xFgoupIiaiifUvXUEV7XWJ+N6B0o2PQRl
         D9sSURNqsTYREvzpycp4i3xMMGE6KigDQcgt7YrZSQq/M7aQJzldZNUy+bxyWSOH/hgx
         clDsFRrJNBswxhw8fa4v9L3f2GMRbM1bU/k4Ze+u1s02ZfpAXEGgzh728n+Fl5T+9k3A
         EJ0JrKqyG7cNhCrFn7UpN0H+EP+FJoNfp1QCtm8oxuFG8yr5qA5ji7RmW815ys87CNnu
         lRLA==
X-Gm-Message-State: AFeK/H1gWq4YTgQsqaKXBnweFNawnXxyvW+ayHWRhLu2yj54DCLo2qQE97GMLw0ChuMCwsOPM2NlR3eEy85ANQ==
X-Received: by 10.129.86.132 with SMTP id k126mr15213364ywb.273.1490038424311;
 Mon, 20 Mar 2017 12:33:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Mon, 20 Mar 2017 12:33:03 -0700 (PDT)
In-Reply-To: <CAOCi2DEtSEHxRD9ZW7exOEP9bkQoj7yqCE3z+HT3E2noX7iBrA@mail.gmail.com>
References: <20170317151110.GA26848@sayli-HP-15-Notebook-PC>
 <20170317171136.GA19487@d830.WORKGROUP> <CAOCi2DEtSEHxRD9ZW7exOEP9bkQoj7yqCE3z+HT3E2noX7iBrA@mail.gmail.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Tue, 21 Mar 2017 01:03:03 +0530
Message-ID: <CAKG5xWj5NzW-D4p9oxu9OOqPVz1Y0XxLD+ZXRJV-5e1Lu25i4A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: ade7758_core:
 Replace mlock with driver's private lock
To: Gargi Sharma <gs051095@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 18, 2017 at 11:08 PM, Gargi Sharma <gs051095@gmail.com> wrote:
> On Fri, Mar 17, 2017 at 10:41 PM, Alison Schofield <amsfield22@gmail.com> wrote:
>>
>> On Fri, Mar 17, 2017 at 08:41:11PM +0530, sayli karnik wrote:
>> > iio_dev->mlock should be used by the IIO core only for protecting
>> > device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
>> > INDIO_BUFFER_* modes.
>> > Replace mlock with a lock in the device's global data to protect
>> > hardware state changes.
>>
>> Hi Sayli,
>>
>> There are nested locks here, hence deadlock.  I'm wondering if we can grab
>> the lock once at the top layers (read/write_raw functions) and hold it.
>> Seems like that's a pattern in IIO drivers.  Let's see what the reviewers
>> suggest on this one.
>>
>

To avoid the mutex lock nesting, should I remove the locking in
ade7758_{read, write}_raw() or
ade7758_spi_{read, write}_reg_8() ?
I think removing it from the outer function i.e ade7758_{read,
write}_raw() is safer so that other places
where ade7758_spi_{read, write}_reg_8() might be used are unaffected.

thanks,
sayli

> Hey Alison,
>
> I was trying to work through a similar patch. I'm having trouble
> understanding how a deadlock will be created? Also, Lars suggested in
> this{https://groups.google.com/forum/#!msg/outreachy-kernel/GapBLSp5WCo/cju_A8B-AwAJ}
> thread that writing a variant of
> <driver_name>_spi_{read,write}_reg_16() that does not take a lock and
> instead uses read-modify-write cycle in a protected section is the way
> to go. Is there any example I can look to for inspiration :). Also, in
> similar vain there are other(8 bit) variants for read/write functions
> as well. Should they be modified as well?
>
> Thanks!
> Gargi
>
>> alisons
>>
>> >
>> > Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> > ---
>> >  drivers/staging/iio/meter/ade7758_core.c | 10 ++++++----
>> >  1 file changed, 6 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
>> > index 99c89e6..1723eb8 100644
>> > --- a/drivers/staging/iio/meter/ade7758_core.c
>> > +++ b/drivers/staging/iio/meter/ade7758_core.c
>> > @@ -522,13 +522,14 @@ static int ade7758_read_raw(struct iio_dev *indio_dev,
>> >                           int *val2,
>> >                           long mask)
>> >  {
>> > +     struct ade7758_state *st = iio_priv(indio_dev);
>> >       int ret;
>> >
>> >       switch (mask) {
>> >       case IIO_CHAN_INFO_SAMP_FREQ:
>> > -             mutex_lock(&indio_dev->mlock);
>> > +             mutex_lock(&st->buf_lock);
>> >               ret = ade7758_read_samp_freq(&indio_dev->dev, val);
>> > -             mutex_unlock(&indio_dev->mlock);
>> > +             mutex_unlock(&st->buf_lock);
>> >               return ret;
>> >       default:
>> >               return -EINVAL;
>> > @@ -541,15 +542,16 @@ static int ade7758_write_raw(struct iio_dev *indio_dev,
>> >                            struct iio_chan_spec const *chan,
>> >                            int val, int val2, long mask)
>> >  {
>> > +     struct ade7758_state *st = iio_priv(indio_dev);
>> >       int ret;
>> >
>> >       switch (mask) {
>> >       case IIO_CHAN_INFO_SAMP_FREQ:
>> >               if (val2)
>> >                       return -EINVAL;
>> > -             mutex_lock(&indio_dev->mlock);
>> > +             mutex_lock(&st->buf_lock);
>> >               ret = ade7758_write_samp_freq(&indio_dev->dev, val);
>> > -             mutex_unlock(&indio_dev->mlock);
>> > +             mutex_unlock(&st->buf_lock);
>> >               return ret;
>> >       default:
>> >               return -EINVAL;
>> > --
>> > 2.7.4
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170317151110.GA26848%40sayli-HP-15-Notebook-PC.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170317171136.GA19487%40d830.WORKGROUP.
>> For more options, visit https://groups.google.com/d/optout.

