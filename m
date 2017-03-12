X-GM-THRID: 6396716918154199040
X-Received: by 10.99.100.133 with SMTP id y127mr14163857pgb.113.1489354412561;
        Sun, 12 Mar 2017 14:33:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.74 with SMTP id 68ls7717123otn.3.gmail; Sun, 12 Mar 2017
 14:33:32 -0700 (PDT)
X-Received: by 10.129.125.134 with SMTP id y128mr13391257ywc.98.1489354412229;
        Sun, 12 Mar 2017 14:33:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id g205si928576ita.2.2017.03.12.14.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:33:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id w185so4367727ita.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 14:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vIn9HTuepmmm1Kg/AshFd39jBfis54StIkIg6HE3kC0=;
        b=eH6Xgu+krQNVxp0FboDLc9mz2hH8tT4yBEkGX25RItwU2Se2GrGElbNavNTbRvN+AD
         AQdbCq7V4/KeUn4aQCiN1mm9E5vTYlAUgQliY8hVvuCcT4K3mZNpDhpMfN6ZFEBRzlzQ
         eq0Bi1dbzDqjSDAlUzQByqqoRD52C66Pc5a34WA1260qvRpKvcqEKWl96o2R9HXTh/eC
         oQfj+ZabXSn1kPHMbS+ofQ4hmCWr4nzaqGxCb6YZE1i9r0sWyas5NVMgbegnLM1N6gZd
         pWd4/cL5a0EqvMvvutMosu+qAXT3wmNaEEGJ4u38X+RIlchhgNMR6oHEU7ZD07GCCMiw
         LzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vIn9HTuepmmm1Kg/AshFd39jBfis54StIkIg6HE3kC0=;
        b=pJuW2BSm6FEzq1jYfXnUzZKQTvZm5eO+qHwmbgUfE2nLlNmtvn+ruUvBL9b5IQCXey
         F1xGZeYvIn7kwX9ZQbKCvKL1g7Y5q/QMI2HK2Z9jOIGPiUp0M+ZytcQTegvdRx4fDVI7
         pXLjCiw8xj9DqD3CwwvYI+7fTaDDsKppSEoYI+9Y5aS13EpgUxWb59ywhuaGef/gjm/S
         sg/2DbHVYHyb6VsVOA3sziT3gCG2e//e6JuyAzM5pnsZ1bO59y7vYxVDC3BAS1tDMyRE
         rzlVAKclV7lqhM5pdb1FTpEFy3L72X2y7QqfMNbjKvK8vm4ZPCK8cQRNALCkq9vszLBO
         5VWw==
X-Gm-Message-State: AFeK/H2toNaC5Zy22suwbT28S6UGzdUgCBiXBx9NVTWH/7dEkMIE+mO1xYj1q+qQvkIS/4+2RIUE3dT6pKTojg==
X-Received: by 10.36.64.198 with SMTP id n189mr8030752ita.6.1489354411887;
 Sun, 12 Mar 2017 14:33:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 12 Mar 2017 14:33:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703122154130.7649@hadrien>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703122154130.7649@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 13 Mar 2017 03:03:01 +0530
Message-ID: <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, 
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 2:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 13 Mar 2017, Gargi Sharma wrote:
>
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes.  Replace it with a lock in the devices global data.
>> This was done using Coccinelle Script.
>>
>> @r1@
>> identifier xxx_state;
>> @@
>> struct xxx_state {
>> ...
>> + struct mutex          lock; /* protect sensor state */
>> };
>>
>> @r2@
>> expression e;
>> @@
>> - mutex_lock(e);
>> + mutex_lock(&st->lock);
>>
>> @r3@
>> expression e;
>> @@
>> - mutex_unlock(e);
>> + mutex_unlock(&st->lock);
>
>
> This rule is probably hjelpful in practice, but is very unsafe.  Is there
> any way that you can characterize the kind of structure you want to add a
> new lock to?  And likewise, what lock and unlock calls you want to
> replace?  And what is st?
>
Hi!

I wanted to do the following things, but was getting a parse error with the
Coccinelle Script.

st is a structure of type xxx_state. If I inherit xxx_state from r1,
to r2 and write
the following in the cocci script, for some reason it was not parsing
the structure at all.

@r2@
expression e1,e2;
xxx_state << r1.xxx_state;
identifier i;
position p;
@@
struct xxx_state i@p = e1;        //If the script is only till this
                                                 // point and there is an * in
                                                 // the beginning, the rule
                                                 //does not detect a structure.
mutex_lock
(
- e1
+ &i->lock                              //this gives a parsing error
);


> julia
>
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> ---
>>  drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
>>  1 file changed, 11 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
>> index ee679ac..27a3ce3 100644
>> --- a/drivers/staging/iio/adc/ad7280a.c
>> +++ b/drivers/staging/iio/adc/ad7280a.c
>> @@ -136,6 +136,7 @@ struct ad7280_state {
>>       unsigned char                   cb_mask[AD7280A_MAX_CHAIN];
>>
>>       __be32                          buf[2] ____cacheline_aligned;
>> +     struct mutex                    lock;  /* protect sensor state */
>>  };
>>
>>  static void ad7280_crc8_build_table(unsigned char *crc_tab)
>> @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>>       devaddr = this_attr->address >> 8;
>>       ch = this_attr->address & 0xFF;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>       if (readin)
>>               st->cb_mask[devaddr] |= 1 << (ch + 2);
>>       else
>> @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>>
>>       ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
>>                          0, st->cb_mask[devaddr]);
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>       return ret ? ret : len;
>>  }
>> @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
>>       int ret;
>>       unsigned int msecs;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>       ret = ad7280_read(st, this_attr->address >> 8,
>>                         this_attr->address & 0xFF);
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>       if (ret < 0)
>>               return ret;
>> @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
>>       if (val > 31)
>>               return -EINVAL;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>       ret = ad7280_write(st, this_attr->address >> 8,
>>                          this_attr->address & 0xFF,
>>                          0, (val & 0x1F) << 3);
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>       return ret ? ret : len;
>>  }
>> @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>>
>>       val = clamp(val, 0L, 0xFFL);
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>       switch ((u32)this_attr->address) {
>>       case AD7280A_CELL_OVERVOLTAGE:
>>               st->cell_threshhigh = val;
>> @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>>       ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
>>                          this_attr->address, 1, val);
>>
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>       return ret ? ret : len;
>>  }
>> @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
>>
>>       switch (m) {
>>       case IIO_CHAN_INFO_RAW:
>> -             mutex_lock(&indio_dev->mlock);
>> +             mutex_lock(&st->lock);
>>               if (chan->address == AD7280A_ALL_CELLS)
>>                       ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
>>               else
>>                       ret = ad7280_read_channel(st, chan->address >> 8,
>>                                                 chan->address & 0xFF);
>> -             mutex_unlock(&indio_dev->mlock);
>> +             mutex_unlock(&st->lock);
>>
>>               if (ret < 0)
>>                       return ret;
>> --
>> 2.7.4
>>
>> --

