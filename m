X-GM-THRID: 6396604644937695232
X-Received: by 10.157.24.27 with SMTP id b27mr11635047ote.36.1489946594329;
        Sun, 19 Mar 2017 11:03:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.17 with SMTP id 17ls11200149otu.16.gmail; Sun, 19 Mar
 2017 11:03:13 -0700 (PDT)
X-Received: by 10.129.152.151 with SMTP id p145mr13725727ywg.119.1489946593940;
        Sun, 19 Mar 2017 11:03:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id f73si689230ita.1.2017.03.19.11.03.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 11:03:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id 190so2508913itm.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 11:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=mNsBhA1RKgPFcXOTz2gIQRvVMZSs/gdE69rUpq3LUIQ=;
        b=NWPeuNdL00nvhF1R29EkALypyYEwbqT7YR8hlZ47mIJJ6y4IKoLjMYbqc1UkfWSo+O
         Iu7SFPVCy3xvVN4TDTbP4uJDOssKypITU+DJf/mxPL7grroKZ3VUR+50e+ZDwNQHyfWy
         YF0Wxg8gYwcYFFjMn4IShr/EFcx+2SEDBIB5nemXroqB2WxJrOkhaKFPQeHer96EqdDj
         bAE4nf/8E8ZAluDiPLUJCB/KJOkWBfiPfhF/48+1CTFWYRDZGgAHQbacOWvhYeh7M+pA
         M0Ibqe3DS0iv03U4YiXBnORtJ/7vPiH0D/0lnEXK4ZAxER6QO0jZTsS8fpja5m1GXXkR
         FLnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=mNsBhA1RKgPFcXOTz2gIQRvVMZSs/gdE69rUpq3LUIQ=;
        b=ipmR2kx8xqAifL+RdUNffs8XKhq03OeB6ya9L7s9lAIhS0Go8hmvTOlEj/rPAc3ZMN
         4ZzAMyO9Pxi7z2gRKStWQmudU5ITFDKl+fXuXf0vj/2bcKA17f4o1jcrBAoa6Aq3FBKB
         Hqy9Ec7fWBFCY1+uPTfOYvmmeeL1vKBi/Ht8qOY2UYUEIbwxKW2Qzf9cncx2kS6lYyxX
         7m6YO+IiBRHyInUiVFu85WuBjPHaaqv6Y+c009nacOvSkNUb/08OsmVmyKz9StlFZwfT
         VW12WrvO7Ppy6w8V4pGIeCAusf4sLpSzCqlKa40pzObjYgfqz3k5AQFYYuSPbyGdmV6s
         ErZQ==
X-Gm-Message-State: AFeK/H1pyVfI+MQm7EYFAqPYOXLUPXpiqVnDaJTZ31UdZY9GBrWdfrXfcmrrLDPlte0G9rikSGFVRo0xAxtGIw==
X-Received: by 10.36.51.212 with SMTP id k203mr6979829itk.6.1489946593631;
 Sun, 19 Mar 2017 11:03:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 19 Mar 2017 11:02:43 -0700 (PDT)
In-Reply-To: <6e55c61d-7587-4191-1fc5-de43e26986d7@metafoo.de>
References: <20170312133250.GA7772@singhal-Inspiron-5558> <6e55c61d-7587-4191-1fc5-de43e26986d7@metafoo.de>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 19 Mar 2017 23:32:43 +0530
Message-ID: <CAOCi2DHHUu9hyYtowpciDBTzB8EuGoWKdXxEBbV5i5NjXLRDPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: iio: ade7753: replace
 mlock with driver private lock
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: simran singhal <singhalsimran0@gmail.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Pete Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
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

The only instance I was able to find was drivers/iio/adc/vf610_adc.c
where read modify write cycles are present on the register
VF610_REG_ADC_CFG. I believe writel() & readl() is used for this
purpose.

In this case, we want to write to data to a device on the SPI bus. Can
we use writel() for this purpose?

> Looking through the driver there seem to be other places as well that do
> read-modify-write that should be protected by a lock, but currently are not.
> This might be a good task.
>
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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6e55c61d-7587-4191-1fc5-de43e26986d7%40metafoo.de.
> For more options, visit https://groups.google.com/d/optout.

