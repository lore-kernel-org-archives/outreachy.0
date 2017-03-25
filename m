X-GM-THRID: 6400621622284255232
X-Received: by 10.36.107.141 with SMTP id v135mr820176itc.16.1490465958443;
        Sat, 25 Mar 2017 11:19:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls3033389iod.52.gmail; Sat, 25 Mar
 2017 11:19:17 -0700 (PDT)
X-Received: by 10.98.21.19 with SMTP id 19mr3795182pfv.29.1490465957626;
        Sat, 25 Mar 2017 11:19:17 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id c124si485505vkh.2.2017.03.25.11.19.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 11:19:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id z204so2903496vkd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 11:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=H4ds12A8D9Xslto4LtjuQkjtLdCtkSDAxEk1iDb7pqI=;
        b=TxZSxm1Ruh8OWSd4ixLgYb5uvGQ2Gn7D5vP5lKpyy1JnvEVSKulyBwZJcwElzPMOuy
         VWkFyweAbFF44MGtpA3ZR68vxJ3AIBlhR9cALVD/MYZntodtiqS9QyEhhybtp2GFPFLP
         T8+woJFcaBm7AaGiwBiDzzmUd+fBD9eav/P+83zL+SvNk/xOd+Xw/eFfCeHpuO0HgnVz
         w879tryrUOcbVyFUP120l0Jhzej7E2HLWQ4nZQ21R+W9pJUnJq0YAzcuVUm6AHoUBWgl
         Y9UvBT4PzFtKkMGrRyIpRyZZULHvPYmmffuwko+gfHgBARC+iwpW38x1/yQauUM13R8Q
         tvtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=H4ds12A8D9Xslto4LtjuQkjtLdCtkSDAxEk1iDb7pqI=;
        b=Uu4YneNuDe4+VHlRCGblTrkMeD55MrhVBd7IurigtreS1UpvJFoWdwU9fdtXhBN7gM
         llE4bHROtXkvbYHmI9UYdSVXrPNdt5e/sHk63v11NlflFHD5PWc4G7i8ZOG4CRDaeiGM
         I//x3vk0fJ5gZ7FFFraAiIKp5+R0rz4mwjtb5tmMv86EY4Nr8Ztig8Mw/crTsXWlIkot
         ER6Nus4CpBPzSuVCZO2k1ffWfOVeLTHLX92rlfQJB7HJJ39WAce1r83gviZxpvepKhFe
         6NAjthHlNK/rM5wu7ogAHTm3C8NEV5c0/PmGV/HotUY8AcDWVEbEDWecHpAnLsF4iqQt
         SHeA==
X-Gm-Message-State: AFeK/H3lwwMLIykXJL4NlcnIGjpWELDG347e+tJ+9X24x/AJe8nzRoBEdCUyN/h2y4WN+tuitWrED1oxfIZ+Vw==
X-Received: by 10.31.218.195 with SMTP id r186mr5378627vkg.112.1490465957289;
 Sat, 25 Mar 2017 11:19:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Sat, 25 Mar 2017 11:19:16 -0700 (PDT)
In-Reply-To: <0a2934e9-5dca-1c2b-125d-776e9dfcfccb@kernel.org>
References: <20170323092048.GA25470@singhal-Inspiron-5558> <0a2934e9-5dca-1c2b-125d-776e9dfcfccb@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sat, 25 Mar 2017 23:49:16 +0530
Message-ID: <CALrZqyPD7287QRYMTHnvGjDcqDv1HmvTvixOUum2wxtEdCPd7Q@mail.gmail.com>
Subject: Re: [PATCH v9] staging: iio: adis16060: Remove iio_dev mlock and
 refactor code
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 25, 2017 at 11:16 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 23/03/17 09:20, simran singhal wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state changes.
>>
>> In the driver, buf_lock protects both the adis16060_spi_write() and
>> adis16060_spi_read() functions and both are always called in pair.
>> First write, then read. Refactor the code to have one single function
>> adis16060_spi_write_then_read() protected by the buf_lock. This removes
>> the need for additional locking via mlock, so this locking is removed.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Unfortunately I've now pushed out v8 as togreg which is a non rebasing tree.
> As such, could you post a separate patch, on top of that making the
> than -> then change?
>

ok, I will send the patch with than-> then change.

> Thanks,
>
> Jonathan
>> ---
>>
>>  v9:
>>    -Change the name of function from adis16060_spi_write_than_read()
>>     to adis16060_spi_write_then_read(). change "than" to "then" as
>>     its time depended.
>>    -Add mutex_unlock
> As Alison keeps mentioning, ideal is to keep all previous change logs
> here as it allows those who last looked at say v5 to know what changed
> in between without reading a lot of threads!
>>

Sorry, will not repeate this in future.

>>  drivers/staging/iio/gyro/adis16060_core.c | 35 +++++++++----------------------
>>  1 file changed, 10 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
>> index c9d46e7..9675245 100644
>> --- a/drivers/staging/iio/gyro/adis16060_core.c
>> +++ b/drivers/staging/iio/gyro/adis16060_core.c
>> @@ -40,25 +40,20 @@ struct adis16060_state {
>>
>>  static struct iio_dev *adis16060_iio_dev;
>>
>> -static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
>> +static int adis16060_spi_write_then_read(struct iio_dev *indio_dev,
>> +                                      u8 conf, u16 *val)
>>  {
>>       int ret;
>>       struct adis16060_state *st = iio_priv(indio_dev);
>>
>>       mutex_lock(&st->buf_lock);
>> -     st->buf[2] = val; /* The last 8 bits clocked in are latched */
>> +     st->buf[2] = conf; /* The last 8 bits clocked in are latched */
>>       ret = spi_write(st->us_w, st->buf, 3);
>> -     mutex_unlock(&st->buf_lock);
>> -
>> -     return ret;
>> -}
>> -
>> -static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
>> -{
>> -     int ret;
>> -     struct adis16060_state *st = iio_priv(indio_dev);
>>
>> -     mutex_lock(&st->buf_lock);
>> +     if (ret < 0) {
>> +             mutex_unlock(&st->buf_lock);
>> +             return ret;
>> +     }
>>
>>       ret = spi_read(st->us_r, st->buf, 3);
>>
>> @@ -86,17 +81,11 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>
>>       switch (mask) {
>>       case IIO_CHAN_INFO_RAW:
>> -             /* Take the iio_dev status lock */
>> -             mutex_lock(&indio_dev->mlock);
>> -             ret = adis16060_spi_write(indio_dev, chan->address);
>> +             ret = adis16060_spi_write_then_read(indio_dev,
>> +                                                 chan->address, &tval);
>>               if (ret < 0)
>> -                     goto out_unlock;
>> +                     return ret;
>>
>> -             ret = adis16060_spi_read(indio_dev, &tval);
>> -             if (ret < 0)
>> -                     goto out_unlock;
>> -
>> -             mutex_unlock(&indio_dev->mlock);
>>               *val = tval;
>>               return IIO_VAL_INT;
>>       case IIO_CHAN_INFO_OFFSET:
>> @@ -110,10 +99,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>       }
>>
>>       return -EINVAL;
>> -
>> -out_unlock:
>> -     mutex_unlock(&indio_dev->mlock);
>> -     return ret;
>>  }
>>
>>  static const struct iio_info adis16060_info = {
>>
>

