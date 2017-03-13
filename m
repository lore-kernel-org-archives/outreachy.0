X-GM-THRID: 6396604644937695232
X-Received: by 10.46.81.66 with SMTP id b2mr5160977lje.3.1489408400058;
        Mon, 13 Mar 2017 05:33:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.141 with SMTP id v135ls718248wmv.0.canary-gmail; Mon, 13
 Mar 2017 05:33:19 -0700 (PDT)
X-Received: by 10.28.133.10 with SMTP id h10mr176980wmd.2.1489408398895;
        Mon, 13 Mar 2017 05:33:18 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id e72si689159wma.0.2017.03.13.05.33.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 05:33:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id r36so11740485lfi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 05:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qreGfPHDJ3XLE73WVy0sI7GwTjilKfTW/6uTmquVYcQ=;
        b=bibPn7NVCQOPzVbfl+L1dySg25uXwISqZa9LvHDoOUjyu+lzZyteNKplCh4CT4/STh
         d7DcQsTzw61SSG290AjxyGgkTRkNM+0oMdcJpPbT1l0x8hJE24NJkCTl/IHwZbOvX71N
         AjV5BbEIMCgS+e5aLCQ/ulWNNKO5UjPIVqEs2m+bDc0vGmgr/Z7JRORv6c3dmOsLllIp
         OQFuhVNLXVXeVXAby2/ElrT/Za5FbwvHfB1PH9qfaJOwY6kyWt+aXjZjmzltDNmFk7EO
         y57pniQOcXlmsXt6lSQZ+mblTaz+wNXj9/YYNr0GyIzmp4Lt0Hvx2iufQKFZ/URnZu6m
         hZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qreGfPHDJ3XLE73WVy0sI7GwTjilKfTW/6uTmquVYcQ=;
        b=X4Ndd6XR8AZp+h9CJrPB6wHZY4Qn2g+D2xjzF9lD39sQMJnSY2O1htbQQlpDySXNri
         zjv/mx5K6Ey+hsald5obs40esdJIUhTlyAoYVJnHX+zJ9FCUiE3S56A/lHxUptocFpyI
         ODSz6BRJh/XjzDQD85lLffZDg0jsVAGptEcus/6UYeRoU4qEDJ5ztQEGPHSMrWcD2l8h
         EoxIoA8ClGxQjUbjLZJCfEeekJbVkWqMk5rmCctLhJ3Fha7qiBzn6SLP9Cdk/lOdhgcZ
         Qhq1r9k4aDg3wP+pFc2T6d4UtzL6AhDp6AFbBtjS3LWhZPv+sK4J+YdcAM7IqvPHxFe5
         EWzQ==
X-Gm-Message-State: AMke39lB0ufPCa09Y2j+dvTjKRx3JyWrvM+mYEikiSpLePeHxiGuoHgyt8zicmYeX8RNS2XjPUA6AJniSAqyKQ==
X-Received: by 10.25.38.83 with SMTP id m80mr8400976lfm.166.1489408398393;
 Mon, 13 Mar 2017 05:33:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 13 Mar 2017 05:33:17 -0700 (PDT)
In-Reply-To: <6e55c61d-7587-4191-1fc5-de43e26986d7@metafoo.de>
References: <20170312133250.GA7772@singhal-Inspiron-5558> <6e55c61d-7587-4191-1fc5-de43e26986d7@metafoo.de>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Mon, 13 Mar 2017 18:03:17 +0530
Message-ID: <CALrZqyMfMvXmB4xRqxOog8eqqUE0q9WFyBAC6_ZEBc1voFJLyQ@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: ade7753: replace mlock with driver private lock
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Pete Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 5:30 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 03/12/2017 02:32 PM, simran singhal wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes.  Replace it with a lock in the devices global data.
>>
>> Fix some coding style issues related to white space also.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
>>  1 file changed, 8 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>> index dfd8b71..ca99d82 100644
>> --- a/drivers/staging/iio/meter/ade7753.c
>> +++ b/drivers/staging/iio/meter/ade7753.c
>> @@ -81,12 +81,14 @@
>>   * @tx:         transmit buffer
>>   * @rx:         receive buffer
>>   * @buf_lock:       mutex to protect tx and rx
>> + * @lock:    protect sensor state
>
> It might make sense to reuse the existing lock which currently protects the
> read/write functions. You can do this by introducing a variant of
> ade7753_spi_{read,write}_reg_16() that does not take a lock and use these to
> implement the read-modify-write cycle in a protected section.
>
> Looking through the driver there seem to be other places as well that do
> read-modify-write that should be protected by a lock, but currently are not.
> This might be a good task.
>

Are you trying to say that their is no need of introducing "lock",
I can using "buf_lock" only.

Thanks!

>>   **/
>>  struct ade7753_state {
>> -         struct spi_device   *us;
>> -                 struct mutex        buf_lock;
>> -                         u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>> -                                 u8          rx[ADE7753_MAX_RX];
>> +     struct spi_device   *us;
>> +     struct mutex        buf_lock;
>> +     struct mutex        lock;       /* protect sensor state */
>> +     u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>> +     u8          rx[ADE7753_MAX_RX];
>>  };
>>
>>  static int ade7753_spi_write_reg_8(struct device *dev,
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

