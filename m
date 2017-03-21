X-GM-THRID: 6398911459091283968
X-Received: by 10.107.18.135 with SMTP id 7mr9510006ios.74.1490115842779;
        Tue, 21 Mar 2017 10:04:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls501682ots.19.gmail; Tue, 21 Mar
 2017 10:04:02 -0700 (PDT)
X-Received: by 10.13.254.2 with SMTP id o2mr18887495ywf.50.1490115842194;
        Tue, 21 Mar 2017 10:04:02 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id x202si74218vkx.0.2017.03.21.10.04.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 10:04:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id j64so11745030vkg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 10:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=6ptTYoftjBCycT4mQPH+mddovDvs0CNCf+WWR1cOshA=;
        b=IiTlwxjMvWxu6zZuL/DYP1WiFw9+qk5m4Qzbt8pHpkCDjkcP/0n2YEJ+0oAO/ZhcAN
         gFyzmgsXPAo2QkHW60IqRlemyU2bg6PJ3NbA2c5YKBAntCaNqTaB6wbtH4EHbpE5pw95
         IZp1GAe+Hd8/fDv0BUm8CbyuR9g9DbiXsNoX5qTb3zVshFcEZokMQDJfz/MI/slbhX13
         PGHw6+blJ++jn93SnbfqNoshK2A68dnDAdjP2QQvUeJjYhtpnl+3X+MJ76X3rEH8C4va
         OpEgOjGvmSR4UJkiwh+FWV5ZK7z2wwnDXDAUcDdIjCgYGNPwfMdo92NPV0W3JH/WZBGC
         41+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=6ptTYoftjBCycT4mQPH+mddovDvs0CNCf+WWR1cOshA=;
        b=UvQrMcCnKuGVBs6RBMOTVu5IItt3jU/j+vJFl3bX7QexVwOeCDFLybIGny7ZeRgQ9k
         gr/xsUO11Tz36NvTnZCR7QoxmtTTM1b/i3wTPJCOv1OXEF+5QH6EzTuHAZydmhUX/8xm
         x1oClX8Gy5L/RcMYGi+Wi718Oi/Uv8up4mOkEHX7dF2wlcc1BU8OcXM7GwdeuQlawAOj
         ajQySqIIcS7bp94Ae9oH84tCGssZnctfaYMGXilSR9qtZNINXr9FZ4qXPUlElIkwde46
         QF2Zbsh/2KKbxqeM4Jhxncb1oQQ6XNPj8HEwHN1n1ME/mqmrB66oGw7iadtwd3zYiPAQ
         606Q==
X-Gm-Message-State: AFeK/H3WJ7RBQpP7UI8fG2wKFjEzGno7oykGQxyZBvnoFmanVPCdy1JnDreVP2wds+zYbcsG/cYmnGsttuAl1w==
X-Received: by 10.31.218.195 with SMTP id r186mr11953184vkg.112.1490115841815;
 Tue, 21 Mar 2017 10:04:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.75.7 with HTTP; Tue, 21 Mar 2017 10:04:01 -0700 (PDT)
In-Reply-To: <20170321164812.GA2793@d830.WORKGROUP>
References: <20170319200621.GA21295@singhal-Inspiron-5558> <20170321164812.GA2793@d830.WORKGROUP>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Tue, 21 Mar 2017 22:34:01 +0530
Message-ID: <CALrZqyPp30PNGRhVVnvv1FphTb7tK58+_sd=fCeSZ40LQaP9WA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v6] staging: Use buf_lock instead of
 mlock and Refactor code
To: Alison Schofield <amsfield22@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 21, 2017 at 10:18 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Mon, Mar 20, 2017 at 01:36:21AM +0530, simran singhal wrote:
>
> Hi Simran,
>
> I going to ask for a v7 without looking at the code ;)
> Subject line needs subsystem and driver.
> Subject and log message can be improved.

Hi Alison,
I have already sent v7 with changed subject.

>
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes. Replace it with buf_lock in the devices global data.
>            ^^^^^^^^^^^ this was not done
>>
>> As buf_lock protects both the adis16060_spi_write() and
>> adis16060_spi_read() functions and both are always called in
>> pair. First write, then read. Thus, refactor the code to have
>> one single function adis16060_spi_write_than_read() which is
>> protected by the existing buf_lock.
> This was done.  So, you were able to obsolete the need for mlock
> by creating the paired function.
>
>>
>> Removed nested locks as the function adis16060_read_raw call
>> a lock on &st->buf_lock and then calls the function
>> adis16060_spi_write which again tries to get hold
>> of the same lock.
> ^^^^ this was not done.  Yes, you avoided nested locks through
> proper coding, but we don't want to give the impression in the
> log message that there was a pre-existing nested lock issue.
>
> I did checkpatch & compile it...but looked no further yet.
>
> alisons
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>
>>  v6:
>>    -Change commit message
>>    -Remove nested lock
>>
>>  drivers/staging/iio/gyro/adis16060_core.c | 40 ++++++++++---------------------
>>  1 file changed, 13 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
>> index c9d46e7..1c6de46 100644
>> --- a/drivers/staging/iio/gyro/adis16060_core.c
>> +++ b/drivers/staging/iio/gyro/adis16060_core.c
>> @@ -40,25 +40,17 @@ struct adis16060_state {
>>
>>  static struct iio_dev *adis16060_iio_dev;
>>
>> -static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
>> +static int adis16060_spi_write_than_read(struct iio_dev *indio_dev,
>> +                                      u8 conf, u16 *val)
>>  {
>>       int ret;
>>       struct adis16060_state *st = iio_priv(indio_dev);
>>
>> -     mutex_lock(&st->buf_lock);
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
>> +     if (ret < 0)
>> +             return ret;
>>
>>       ret = spi_read(st->us_r, st->buf, 3);
>>
>> @@ -69,8 +61,8 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
>>        */
>>       if (!ret)
>>               *val = ((st->buf[0] & 0x3) << 12) |
>> -                     (st->buf[1] << 4) |
>> -                     ((st->buf[2] >> 4) & 0xF);
>> +                      (st->buf[1] << 4) |
>> +                      ((st->buf[2] >> 4) & 0xF);
>>       mutex_unlock(&st->buf_lock);
>>
>>       return ret;
>> @@ -83,20 +75,18 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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
>> +             ret = adis16060_spi_write_than_read(indio_dev,
>> +                                                 chan->address, &tval);
>> +             mutex_unlock(&st->buf_lock);
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
>> @@ -110,10 +100,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319200621.GA21295%40singhal-Inspiron-5558.
>> For more options, visit https://groups.google.com/d/optout.

