X-GM-THRID: 6398911459091283968
X-Received: by 10.99.128.72 with SMTP id j69mr5952038pgd.60.1489919062154;
        Sun, 19 Mar 2017 03:24:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.194 with SMTP id 185ls3184080iof.19.gmail; Sun, 19 Mar
 2017 03:24:21 -0700 (PDT)
X-Received: by 10.99.110.139 with SMTP id j133mr13587496pgc.55.1489919061466;
        Sun, 19 Mar 2017 03:24:21 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id v62si833598vkv.0.2017.03.19.03.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 03:24:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id y16so1209807vky.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 03:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=3Tt+v720VS9s7FVaPvh8JrLwWbkslEj5X3axWxh+jvE=;
        b=gndyLX/99iyKTWRaeExLLywO1ZrTClTpl+asOsCxC4CWrSwFlvPb2sPIRqRCVJ81xM
         2/4SPLMaaI5t3cC1MIOkgxav6Fcm8UgKZKnLZOvyRfhOJCcvpyy4H+YgC2LpuET2QJmO
         67gpvPCzd9DqL48gICbQrDrHt45bYCdUD7qDywUUfMLPXmP/XujmdGmfUHIs3vqqY6eV
         Iv2HKFOBcE0omMDwRwpkmU2/++Ra7OtPjCUUPjWuyrrPR9dN4PvVXLI45s/tuu9alqjQ
         Wkucmk/puqEuICsWLF65RxF4vS0axiDo3KvuFGtx+OoCfNl1rf/MfZ1jVu0hXZfNRRJD
         RA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=3Tt+v720VS9s7FVaPvh8JrLwWbkslEj5X3axWxh+jvE=;
        b=Lnt+kioqQS85F8Da4CWyIA/wEE7SqoL2HOniCiCO6IyMcCokettfFk+hlsdeb/eo3S
         Nh4tthB9kUVzVNtGcInjm/Do/dlWrOoZmhP5r2WaH4Y/hwvxXUR58Ik0mGNyn2u4t2VI
         IPRhaqFNUJMDSf1kfrS0H6avdDqlTkn27ESWn/hHRBBweW7PoaJHnmT2MhXHuF1WIZ58
         6kNqeiek3vy1NzmM7SoT/tBZ212bTdmcSETrR1b442EUUiaWAVA76Sf9DRiwwVZQw/Wv
         C0bW0piKF/Sfa8SKcU2+T64QJqWymqHiVWzkCeyLA4Pb7BOR0sA5RZuLUq/nXTOuTLxO
         Th7w==
X-Gm-Message-State: AFeK/H26ySXxehda68DXpvm+0HzudopvnnmYyKDsXDl0rJe76WzCke+6IuaCfpDQHSggPJ8hgz3fystFiYd48w==
X-Received: by 10.31.58.146 with SMTP id h140mr7330734vka.147.1489919061137;
 Sun, 19 Mar 2017 03:24:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.171.15 with HTTP; Sun, 19 Mar 2017 03:24:20 -0700 (PDT)
In-Reply-To: <9d3c64ac-c7ae-fe6f-9afc-8cfd7931fb61@kernel.org>
References: <20170318184428.GA12858@singhal-Inspiron-5558> <9d3c64ac-c7ae-fe6f-9afc-8cfd7931fb61@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 19 Mar 2017 15:54:20 +0530
Message-ID: <CALrZqyPYPY1KR3c2-dgdh5wJZ5mfGbbbVngxW57M9e_fqKX8wQ@mail.gmail.com>
Subject: Re: [PATCH v4] staging: Use buf_lock instead of mlock and Refactor code
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 19, 2017 at 3:45 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 18/03/17 18:44, simran singhal wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes. Replace it with buf_lock in the devices global data.
>>
>> As buf_lock protects both the adis16060_spi_write() and
>> adis16060_spi_read() functions and both are always called in
>> pair. First write, then read. Thus, refactor the code to have
>> one single function adis16060_spi_write_than_read() which is
>> protected by the existing buf_lock.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Hi Simran,
>
> A couple of minor comments and opportunity to further improve
> the, now simpler, code flow.
>
> Thanks,
>
> Jonathan
>> ---
>>
>>  v4:
>>    -Refactored code
>>    -change commit subject
>>    -change commit message
>>
>>  drivers/staging/iio/gyro/adis16060_core.c | 37 ++++++++++++-------------------
>>  1 file changed, 14 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
>> index c9d46e7..39ddd55 100644
>> --- a/drivers/staging/iio/gyro/adis16060_core.c
>> +++ b/drivers/staging/iio/gyro/adis16060_core.c
>> @@ -40,7 +40,7 @@ struct adis16060_state {
>>
>>  static struct iio_dev *adis16060_iio_dev;
>>
>> -static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
>> +static int adis16060_spi_write_than_read(struct iio_dev *indio_dev, u8 val, u16 *val2)
> val and val2 often have specific meanings in IIO.  I'd prefer these to be renamed to
> val => conf (as it sets the configuration) and val2 => val.
>>  {
>>       int ret;
>>       struct adis16060_state *st = iio_priv(indio_dev);
>> @@ -48,17 +48,11 @@ static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
>>       mutex_lock(&st->buf_lock);
>>       st->buf[2] = val; /* The last 8 bits clocked in are latched */
>>       ret = spi_write(st->us_w, st->buf, 3);
>> -     mutex_unlock(&st->buf_lock);
>>
>> -     return ret;
>> -}
>> -
>> -static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
>> -{
>> -     int ret;
>> -     struct adis16060_state *st = iio_priv(indio_dev);
>> -
>> -     mutex_lock(&st->buf_lock);
>> +     if (ret < 0) {
>> +             mutex_unlock(&st->buf_lock);
>> +             return ret;
>> +     }
>>
>>       ret = spi_read(st->us_r, st->buf, 3);
>>
>> @@ -67,10 +61,10 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
>>        * starts to place data MSB first on the DOUT line at
>>        * the 6th falling edge of SCLK
>>        */
>> -     if (!ret)
>> -             *val = ((st->buf[0] & 0x3) << 12) |
>> -                     (st->buf[1] << 4) |
>> -                     ((st->buf[2] >> 4) & 0xF);
>> +        if (!ret)
> Please run checkpatch.pl over your patches.  Looks like
> you ended up with spaces instead of a tab in the line above.

OOPS! My bad should have run checkpatch.pl
over patch.

Will correct all the checkpatch.pl issues and resend.

>> +             *val2 = ((st->buf[0] & 0x3) << 12) |
>> +                      (st->buf[1] << 4) |
>> +                      ((st->buf[2] >> 4) & 0xF);
>>       mutex_unlock(&st->buf_lock);
>>
>>       return ret;
>> @@ -83,20 +77,17 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>  {
>>       u16 tval = 0;
>>       int ret;
>> +     struct adis16060_state *st = iio_priv(indio_dev);
>>
>>       switch (mask) {
>>       case IIO_CHAN_INFO_RAW:
>>               /* Take the iio_dev status lock */
>> -             mutex_lock(&indio_dev->mlock);
>> -             ret = adis16060_spi_write(indio_dev, chan->address);
>> +             mutex_lock(&st->buf_lock);
>> +             ret = adis16060_spi_write_than_read(indio_dev, chan->address, &tval);
>>               if (ret < 0)
>>                       goto out_unlock;
>>
>> -             ret = adis16060_spi_read(indio_dev, &tval);
>> -             if (ret < 0)
> This ugly goto construction arguably made sense when there were two of them.  Now
> you have only one just bring the mutex_unlock inline and return directly.

Will remove this and resend.

>> -                     goto out_unlock;
>> -
>> -             mutex_unlock(&indio_dev->mlock);
>> +             mutex_unlock(&st->buf_lock);
>>               *val = tval;
>>               return IIO_VAL_INT;
>>       case IIO_CHAN_INFO_OFFSET:
>> @@ -112,7 +103,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>       return -EINVAL;
>>
>>  out_unlock:
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->buf_lock);
>>       return ret;
>>  }
>>
>>
>

