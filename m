X-GM-THRID: 6400014269629333504
X-Received: by 10.99.115.3 with SMTP id o3mr1113626pgc.149.1490292754902;
        Thu, 23 Mar 2017 11:12:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls5782027otw.5.gmail; Thu, 23 Mar 2017
 11:12:34 -0700 (PDT)
X-Received: by 10.31.134.1 with SMTP id i1mr907143vkd.35.1490292754412;
        Thu, 23 Mar 2017 11:12:34 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id k191si422225vka.4.2017.03.23.11.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 11:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id j137so483739vke.0
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 11:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=kOQYHJ4MHNDor3HEQdmHbljOE0VmjX3P89F0dJ1sHzg=;
        b=cH33nDu1rbX7Zc0OVfB+a1VekgCdc1XKIMdbOef3PwPJugkxip0KepU9FkLQrTFnQ0
         urUwCL4wTwdon86d1RY+XjnH+9myCCbCYqGO2tvA7g+Rp6mK5FvR9RSoIPvrvzs5tVnk
         N0vTmJGXiMt/0bu2JGd+r6Gb6qKMAXWR4CD3xka7DPXpxvjI8rD03eXirozo5DZGtU4Y
         Dy22NBiF6V2VNCIkTmQ5E3bqQqKnJtuMREVFITd8NwPUyxc7pZ6CeZBIa2KFRoac8GSm
         dyvpWHJnV3L7H8REgTzxT+SHD5kEZ57UAMzG4IZypS4uJ/3ygCFIVfZaJ+kKQwYwd7nP
         ulwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=kOQYHJ4MHNDor3HEQdmHbljOE0VmjX3P89F0dJ1sHzg=;
        b=shEpUQFTJQDPYUy28xjK9KOzMRHfwur9ORVty2KDMHOEohVmmclBEGyyEVvC6kZrUr
         KpGuVC/EF2CxzBg4bSkVU4BVWmVDtST0Zom7pUwJD7x/Hgnygn6fLoDIxdbJUs9Xy293
         vFvyPYfBxU0P8AQaPX9465+uD0X81g6sJwlFJL78a99NdK3HMViPgbxPlEoAP325lX3G
         1oIzLx1oLHKG8g55RbHOsCKMjNj417trOHzW+lvuUS3oG0xDXAm1tY7SD1Pq0x6HdV0T
         7acc9RCOaUAg/PoR3ElSzt97jPH1Jiw9YEdQcn7Juuk3MS68jSfmsKWo8a9HF8sVDhF6
         J8Zg==
X-Gm-Message-State: AFeK/H3wVqLr5WQ1MknRw9RoQtQHJDb2wTfaryUanlw0qG0fwEzPm2L3jkqwQl5c313pIIQeik+xyWUs28swQw==
X-Received: by 10.31.207.65 with SMTP id f62mr1803888vkg.8.1490292754014; Thu,
 23 Mar 2017 11:12:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.75.7 with HTTP; Thu, 23 Mar 2017 11:12:33 -0700 (PDT)
In-Reply-To: <5d65a41d-5290-eb55-6452-7bb8bfbdd9f2@kernel.org>
References: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>
 <1490119436-20042-3-git-send-email-singhalsimran0@gmail.com> <5d65a41d-5290-eb55-6452-7bb8bfbdd9f2@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Thu, 23 Mar 2017 23:42:33 +0530
Message-ID: <CALrZqyPkBCfAwr7=nO7QLXDfyC6cATDFmxFr32aSN+3D=jr8TQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] staging: iio: ade7753: Replace mlock with driver
 private lock
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg KH <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 23, 2017 at 1:55 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 21/03/17 18:03, simran singhal wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes.  Replace it with a lock in the devices global data.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Mutex is not initialized...

Mutex is already initialized in ade7753_probe().

>> ---
>>  drivers/staging/iio/meter/ade7753.c | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>> index b71fbd3..9674e05 100644
>> --- a/drivers/staging/iio/meter/ade7753.c
>> +++ b/drivers/staging/iio/meter/ade7753.c
>> @@ -80,11 +80,13 @@
>>   * @us:         actual spi_device
>>   * @tx:         transmit buffer
>>   * @rx:         receive buffer
>> + * @lock:       protect sensor state
>>   * @buf_lock:       mutex to protect tx and rx
>>   **/
>>  struct ade7753_state {
>>       struct spi_device   *us;
>>       struct mutex        buf_lock;
>> +     struct mutex        lock;  /* protect sensor state */
>>       u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>       u8          rx[ADE7753_MAX_RX];
>>  };
>> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>       if (!val)
>>               return -EINVAL;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>
>>       t = 27900 / val;
>>       if (t > 0)
>> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>       ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>
>>  out:
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>       return ret ? ret : len;
>>  }
>>
>

