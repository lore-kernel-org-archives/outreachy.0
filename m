X-GM-THRID: 6398911459091283968
X-Received: by 10.99.156.18 with SMTP id f18mr12705252pge.41.1489958116019;
        Sun, 19 Mar 2017 14:15:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls4253025otg.18.gmail; Sun, 19 Mar
 2017 14:15:15 -0700 (PDT)
X-Received: by 10.157.9.238 with SMTP id 43mr12044341otz.140.1489958115535;
        Sun, 19 Mar 2017 14:15:15 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id s142si1048657vkf.5.2017.03.19.14.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 14:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id y16so9081442uay.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 14:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Xmfm/wRE6WqrgjFURAiYeD7rQkpG2+MARSObtSJ7Kg8=;
        b=Mwi+CFfHQNpJ5fSomR2fRHQy6UA4Wt+3LK3VLjYmkKR2N5BvYp3ogReDNnQrIW1Ang
         OLJGh0N/ebsXrwB0f+NEsXmZ99DnHOLq6PWiAco0YJ2xlsEjiWaFxhaL+az/Q7TckX78
         vuLV4lvDhbjEdyGc/yypTTZ0gk81J354NQncJlDQHwi1FMrgXj3DxcVj1Uk6/lg3V63h
         klJl05WYn1MtHxvLT37+h3QqEAbPZTV9M3/SkA4bGn533lzG1vvRqNYyBijXjO7lk0Uo
         mkNvWL1OD6QvlLGBFn7k0x0Y8Ir0GuwosZsZEHIYV4AyiVKxUbhrTUXA2DRSiz2Bydsd
         LF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Xmfm/wRE6WqrgjFURAiYeD7rQkpG2+MARSObtSJ7Kg8=;
        b=lyZOLZ4Uu3GbxZ4LikIPwCP9gmDeAj6BU+ZWY67GGaZdvp7UGMRLeHpLIJl6/riyYi
         Z8X1Ma19DW6Vb5ltFP8p+wflrO526MhcGkqYHpq3uZxKOzTo57ReII3tWQ/Xjt6mQy2H
         X9Tb8eHwET2ziF76YKqvs5X5ramNBeCkAgKvvGvLchvcVLdBYLg0UT+42prx465oLdCQ
         dT6vCA57TwzYG/EHk1Fgkc48SQ0NrdzQ+sIxD8kWBsxVQ4560dDYQapq6g1ZKdhviKJA
         nP7Lfp9s8KJYg3MSBHWNsU0yyG2j+FCMsZe59iELlc0b6gmTGTk/otEWbEXeze45tEgK
         NJrw==
X-Gm-Message-State: AFeK/H1FXYDvPzVTMgj/daTdlm5vl3f+85QA8mdYFcgzbENMkCLuMoqOz4WA1AcPwUfZOS1FgTU9j05tH3+exw==
X-Received: by 10.176.90.132 with SMTP id w4mr4768691uae.106.1489958115223;
 Sun, 19 Mar 2017 14:15:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.75.7 with HTTP; Sun, 19 Mar 2017 14:15:14 -0700 (PDT)
In-Reply-To: <9089c598-7909-1c53-db70-8984edab988c@kernel.org>
References: <20170319125039.GA23385@singhal-Inspiron-5558> <CAOCi2DF4T6MOVy5=UJ=K3mcpUt7pA_8KRO0JM=ejqfxvMY0MXw@mail.gmail.com>
 <9089c598-7909-1c53-db70-8984edab988c@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Mon, 20 Mar 2017 02:45:14 +0530
Message-ID: <CALrZqyN=zbCNkCPzQicoPVj9QQiLw8OVAjP0+wubqOVMmk=Jew@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: Use buf_lock instead of
 mlock and Refactor code
To: Jonathan Cameron <jic23@kernel.org>
Cc: Gargi Sharma <gs051095@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 20, 2017 at 2:13 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 19/03/17 17:14, Gargi Sharma wrote:
>> On Sun, Mar 19, 2017 at 6:20 PM, simran singhal
>> <singhalsimran0@gmail.com> wrote:
>>> The IIO subsystem is redefining iio_dev->mlock to be used by
>>> the IIO core only for protecting device operating mode changes.
>>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>>
>>> In this driver, mlock was being used to protect hardware state
>>> changes. Replace it with buf_lock in the devices global data.
>>>
>>> As buf_lock protects both the adis16060_spi_write() and
>>> adis16060_spi_read() functions and both are always called in
>>> pair. First write, then read. Thus, refactor the code to have
>>> one single function adis16060_spi_write_than_read() which is
>>> protected by the existing buf_lock.
>>>
>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>> ---
>>>
>>>  v5:
>>>    -Rename val in adis16060_spi_write_than_read() to conf.
>>>    -Rename val2 in adis16060_spi_write_than_read() to val.
>>>    -Corrected Checkpatch issues.
>>>    -Removed goto from adis16060_read_raw().
>>>
>>>
>>>  drivers/staging/iio/gyro/adis16060_core.c | 42 ++++++++++++-------------------
>>>  1 file changed, 16 insertions(+), 26 deletions(-)
>>>
>>> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
>>> index c9d46e7..0f12492 100644
>>> --- a/drivers/staging/iio/gyro/adis16060_core.c
>>> +++ b/drivers/staging/iio/gyro/adis16060_core.c
>>> @@ -40,25 +40,20 @@ struct adis16060_state {
>>>
>>>  static struct iio_dev *adis16060_iio_dev;
>>>
>>> -static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
>>> +static int adis16060_spi_write_than_read(struct iio_dev *indio_dev,
>>> +                                        u8 conf, u16 *val)
>>>  {
>>>         int ret;
>>>         struct adis16060_state *st = iio_priv(indio_dev);
>>>
>>>         mutex_lock(&st->buf_lock);
>>> -       st->buf[2] = val; /* The last 8 bits clocked in are latched */
>>> +       st->buf[2] = conf; /* The last 8 bits clocked in are latched */
>>>         ret = spi_write(st->us_w, st->buf, 3);
>>> -       mutex_unlock(&st->buf_lock);
>>>
>>> -       return ret;
>>> -}
>>> -
>>> -static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
>>> -{
>>> -       int ret;
>>> -       struct adis16060_state *st = iio_priv(indio_dev);
>>> -
>>> -       mutex_lock(&st->buf_lock);
>>> +       if (ret < 0) {
>>> +               mutex_unlock(&st->buf_lock);
>>> +               return ret;
>>> +       }
>>>
>>>         ret = spi_read(st->us_r, st->buf, 3);
>>>
>>> @@ -69,8 +64,8 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
>>>          */
>>>         if (!ret)
>>>                 *val = ((st->buf[0] & 0x3) << 12) |
>>> -                       (st->buf[1] << 4) |
>>> -                       ((st->buf[2] >> 4) & 0xF);
>>> +                        (st->buf[1] << 4) |
>>> +                        ((st->buf[2] >> 4) & 0xF);
>>>         mutex_unlock(&st->buf_lock);
>>>
>>>         return ret;
>>> @@ -83,20 +78,19 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>>  {
>>>         u16 tval = 0;
>>>         int ret;
>>> +       struct adis16060_state *st = iio_priv(indio_dev);
>>>
>>>         switch (mask) {
>>>         case IIO_CHAN_INFO_RAW:
>>>                 /* Take the iio_dev status lock */
>>> -               mutex_lock(&indio_dev->mlock);
>>> -               ret = adis16060_spi_write(indio_dev, chan->address);
>>> +               mutex_lock(&st->buf_lock);
>>> +               ret = adis16060_spi_write_than_read(indio_dev,
>>> +                                                   chan->address, &tval);
>>>                 if (ret < 0)
>>> -                       goto out_unlock;
>>> +                       mutex_unlock(&st->buf_lock);
>>> +                       return ret;
>>>
>>> -               ret = adis16060_spi_read(indio_dev, &tval);
>>> -               if (ret < 0)
>>> -                       goto out_unlock;
>>> -
>>> -               mutex_unlock(&indio_dev->mlock);
>>> +               mutex_unlock(&st->buf_lock);
>>>                 *val = tval;
>>>                 return IIO_VAL_INT;
>>>         case IIO_CHAN_INFO_OFFSET:
>>> @@ -110,10 +104,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>>         }
>>>
>>>         return -EINVAL;
>>> -
>>> -out_unlock:
>>> -       mutex_unlock(&indio_dev->mlock);
>>> -       return ret;
>>>  }
>>>
>>
>> Hey Simran,
>>
>> I'm another Outreachy aspirant and I'm trying to work through a
>> similar patch in another driver. Can you please explain to me how you
>> are avoiding nested locks here? From what I understand, the function
>> adis16060_read_raw call a lock on &st->buf_lock and then you call the
>> function adis16060_spi_write_than_read which again tries to get hold
>> of the same lock. Isn't this a deadlock situation? Please let me know
>> if my understanding is incorrect.
> Well spotted. That is indeed the case.  Just goes to show how more
> eyes on code is always a good thing!
>

Jonathan, I have already sent the version 6 of this patch in which I
have dropped the
locks in the function adis16060_spi_write_than_read and keep the locks
of function
read_raw as it is.

> The locks in read_raw itself should be dropped as we now have a single
> safe function with the locks inside it being called.

I keep the locks inside read_raw as it is because it will be more
safe, if we see in terms of
security. If I am wrong here, please correct me.

>
> Jonathan
>>
>> Thank you!
>> Gargi
>>
>>>  static const struct iio_info adis16060_info = {
>>> --
>>> 2.7.4
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319125039.GA23385%40singhal-Inspiron-5558.
>>> For more options, visit https://groups.google.com/d/optout.
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>
>

