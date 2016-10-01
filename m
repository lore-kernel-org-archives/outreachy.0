X-GM-THRID: 6335785004002443264
X-Received: by 10.66.237.133 with SMTP id vc5mr334320pac.123.1475360959586;
        Sat, 01 Oct 2016 15:29:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.65.36 with SMTP id x36ls1544551ita.15.canary; Sat, 01 Oct
 2016 15:29:18 -0700 (PDT)
X-Received: by 10.66.7.41 with SMTP id g9mr3908909paa.127.1475360958084;
        Sat, 01 Oct 2016 15:29:18 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id c75si1248935ywh.0.2016.10.01.15.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 15:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id j129so8044487qkd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 15:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=odVyLDPlvgQmfKjBC/Z5LuB3NcPD6dpowyBud7lkRSU=;
        b=ILI26H05IWGJQ753V9rRf2oYv62cLSX/MONzLR2z+B+fR46kyPxn327Jwj5kzXfy/a
         DGgQKxjSCUzj0Xg0rKWzvSIjPF3FO4iAFU+3hyazjkwSqDQ2XgyBkO4I1++yPiZDJGix
         +DmAEI89rMmZ8Ge7KxYxtVbA431PESUSwSW5kVSyCwhdptBJInVJkTIGTz9M91KpyqbH
         S+veHD1Kt4ZSieYJLoJxlimNozqGxqRtwgZ3zc+yuRanHyoFZp/G+//tzIVciu/c8jHb
         ij91I/mNrZ5yUWne2zwRDaK0ej4l4k8g3aV7U5tLDL04NAtRLOONPvuIoN5nqwn3lz6s
         bJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=odVyLDPlvgQmfKjBC/Z5LuB3NcPD6dpowyBud7lkRSU=;
        b=ZdVBE8+J++VNKtkEMU+9SHT7sprPOUW22M76feAN1xedXCCn/vegVEiRcRZMpsCmHB
         1b2x9anWX/AdSVSdWiRv0cQXxp2fvk9cO1F6Bf7heBxjL2ARTlFf+yxADsMZdTP/HuZd
         JXDnyl7RYNV8vO8shzyTn4szR1jVfl89UZtlId7ijG/oYg14kcXJe3jZkJ+/vm/Q/NKB
         ajHDW2fHgaUz9zk5dTuRK+HxcJyFgqUUfQnay3YyQHb1jeQPnl3jWSKSFqlkAXjBVojm
         na3vQZ5YQiQBHNa3hAcFPVolEvDtz20E0Bki0NLqD8Xva3/fNyNt0Y0Rn8B0RVgZFeCQ
         e4mg==
X-Gm-Message-State: AA6/9RmxOG/PjLkTZwLOr1SPUGIG6VKhWc57ejUg4f4DaRriXslSxRNViZJToY9KQ/3JiVgb2KII2J+A1UZZnA==
X-Received: by 10.55.19.106 with SMTP id d103mr13439965qkh.258.1475360957777;
 Sat, 01 Oct 2016 15:29:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.49.231 with HTTP; Sat, 1 Oct 2016 15:29:17 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <737de70d-80e5-a9b5-4522-8b66e6cd8ca6@kernel.org>
References: <20160929160133.GA5460@localhost.localdomain> <737de70d-80e5-a9b5-4522-8b66e6cd8ca6@kernel.org>
From: sandhya bankar <bankarsandhya512@gmail.com>
Date: Sun, 2 Oct 2016 03:59:17 +0530
Message-ID: <CAA3ASznew0CCzJaPMG00MDeDpHdAVLouuae2NObD6B2KcP+ZDw@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: iio: meter: ade7753: Replace
 IIO_DEV_ATTR_SAMP_FREQ attribute with IIO_CHAN_INFO_SAMP_FREQ handlers.
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael.Hennerich@analog.com, knaack.h@gmx.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 1, 2016 at 6:45 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 29/09/16 17:01, Sandhya Bankar wrote:
>> Moved functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
>> IIO_CHAN_INFO_SAMP_FREQ handlers. Added ade7753_read_raw() and
>> ade7753_write_raw() to allow reading/writing the element as well.
>>
>> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> I'd forgotten this driver existed. There are a lot of similar
> elements in here that can be cleaned up if you want to take
> this further.
>
> Step 1. Convert all the attrs that are actually standard IIO abi.
> Step 2. Start looking at the custom ABI in here and consider what
> to do about it.  (might be a job for someone familiar with the
> hardware!)
>
> Anyhow, this doesn't actually work.
>
> Take a look at what calls the read_raw and write_raw functions
> and how the relevant sysfs attributes are instantiated.
>
> Lars, I think any major ABI work on this is going to need
> some input from Analog (or someone who actually has one of
> these!)...
>
> The energy meter drivers are somewhat of an open space when
> it comes to ABI definitions (there aren't really any yet!)

Hello,
     It doesn't work because I have not defined the attribute
IIO_CHAN_INFO* for sysfs. So, the attribute won't get exposed as a
sysfs file. Right ?
We typically use it as a channel attribute.
So, in this case, Should I create a channel, or is there another
possible way to do it ?

I am just curious to know that why the channel for this driver is not defined ?
Please suggest on same.


Thanks,
Sandhya






> Jonathan
>> ---
>> Changes in v2:
>> * Adding "Staging" keyword in subject line.
>>
>>  drivers/staging/iio/meter/ade7753.c | 155 +++++++++++++++++++++---------------
>>  1 file changed, 90 insertions(+), 65 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>> index 4b5f05f..a2b4a18 100644
>> --- a/drivers/staging/iio/meter/ade7753.c
>> +++ b/drivers/staging/iio/meter/ade7753.c
>> @@ -98,6 +98,94 @@ static int ade7753_spi_read_reg_16(struct device *dev,
>>       return 0;
>>  }
>>
>> +static int ade7753_read_raw_samp_freq(struct device *dev, int *val)
>> +{
>> +     int ret;
>> +     u16 t;
>> +
>> +     ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &t);
>> +     if (ret)
>> +             return ret;
>> +     t = (t >> 11) & 0x3;
>> +     *val = 27900 / (1 + t);
>> +
>> +     return 0;
>> +}
>> +
>> +static int ade7753_write_raw_samp_freq(struct device *dev, int val)
>> +{
>> +     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> +     struct ade7753_state *st = iio_priv(indio_dev);
>> +     int ret;
>> +     u16 reg, t;
>> +
>> +     if (!val)
>> +             return -EINVAL;
>> +
>> +     t = 27900 / val;
>> +     if (t > 0)
>> +             t--;
>> +
>> +     if (t > 1)
>> +             st->us->max_speed_hz = ADE7753_SPI_SLOW;
>> +     else
>> +             st->us->max_speed_hz = ADE7753_SPI_FAST;
>> +
>> +     ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &reg);
>> +     if (ret)
>> +             goto out;
>> +
>> +     reg &= ~(3 << 11);
>> +     reg |= t << 11;
>> +
>> +     ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>> +
>> +out:
>> +     return ret;
>> +}
>> +
>> +static int ade7753_write_raw(struct iio_dev *indio_dev,
>> +                          struct iio_chan_spec const *chan,
>> +                          int val, int val2, long mask)
>> +{
>> +     int ret;
>> +
>> +     switch (mask) {
>> +     case IIO_CHAN_INFO_SAMP_FREQ:
>> +             if (val2)
>> +                     return -EINVAL;
>> +             mutex_lock(&indio_dev->mlock);
>> +             ret = ade7753_write_raw_samp_freq(&indio_dev->dev, val);
>> +             mutex_unlock(&indio_dev->mlock);
>> +             return ret;
>> +     default:
>> +             return -EINVAL;
>> +     }
>> +
>> +     return ret;
>> +}
>> +
>> +static int ade7753_read_raw(struct iio_dev *indio_dev,
>> +                         struct iio_chan_spec const *chan,
>> +                         int *val,
>> +                         int *val2,
>> +                         long mask)
>> +{
>> +     int ret;
>> +
>> +     switch (mask) {
>> +     case IIO_CHAN_INFO_SAMP_FREQ:
>> +             mutex_lock(&indio_dev->mlock);
>> +             ret = ade7753_read_raw_samp_freq(&indio_dev->dev, val);
>> +             mutex_unlock(&indio_dev->mlock);
>> +             return ret;
>> +     default:
>> +             return -EINVAL;
>> +     }
>> +
>> +     return ret;
>> +}
>> +
>>  static int ade7753_spi_read_reg_24(struct device *dev,
>>               u8 reg_address,
>>               u32 *val)
>> @@ -383,82 +471,17 @@ err_ret:
>>       return ret;
>>  }
>>
>> -static ssize_t ade7753_read_frequency(struct device *dev,
>> -             struct device_attribute *attr,
>> -             char *buf)
>> -{
>> -     int ret;
>> -     u16 t;
>> -     int sps;
>> -
>> -     ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &t);
>> -     if (ret)
>> -             return ret;
>> -
>> -     t = (t >> 11) & 0x3;
>> -     sps = 27900 / (1 + t);
>> -
>> -     return sprintf(buf, "%d\n", sps);
>> -}
>> -
>> -static ssize_t ade7753_write_frequency(struct device *dev,
>> -             struct device_attribute *attr,
>> -             const char *buf,
>> -             size_t len)
>> -{
>> -     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> -     struct ade7753_state *st = iio_priv(indio_dev);
>> -     u16 val;
>> -     int ret;
>> -     u16 reg, t;
>> -
>> -     ret = kstrtou16(buf, 10, &val);
>> -     if (ret)
>> -             return ret;
>> -     if (!val)
>> -             return -EINVAL;
>> -
>> -     mutex_lock(&indio_dev->mlock);
>> -
>> -     t = 27900 / val;
>> -     if (t > 0)
>> -             t--;
>> -
>> -     if (t > 1)
>> -             st->us->max_speed_hz = ADE7753_SPI_SLOW;
>> -     else
>> -             st->us->max_speed_hz = ADE7753_SPI_FAST;
>> -
>> -     ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &reg);
>> -     if (ret)
>> -             goto out;
>> -
>> -     reg &= ~(3 << 11);
>> -     reg |= t << 11;
>> -
>> -     ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>> -
>> -out:
>> -     mutex_unlock(&indio_dev->mlock);
>> -
>> -     return ret ? ret : len;
>> -}
>>
>>  static IIO_DEV_ATTR_TEMP_RAW(ade7753_read_8bit);
>>  static IIO_CONST_ATTR(in_temp_offset, "-25 C");
>>  static IIO_CONST_ATTR(in_temp_scale, "0.67 C");
>>
>> -static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
>> -             ade7753_read_frequency,
>> -             ade7753_write_frequency);
>> -
>>  static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("27900 14000 7000 3500");
>>
>>  static struct attribute *ade7753_attributes[] = {
>>       &iio_dev_attr_in_temp_raw.dev_attr.attr,
>>       &iio_const_attr_in_temp_offset.dev_attr.attr,
>>       &iio_const_attr_in_temp_scale.dev_attr.attr,
>> -     &iio_dev_attr_sampling_frequency.dev_attr.attr,
>>       &iio_const_attr_sampling_frequency_available.dev_attr.attr,
>>       &iio_dev_attr_phcal.dev_attr.attr,
>>       &iio_dev_attr_cfden.dev_attr.attr,
>> @@ -496,6 +519,8 @@ static const struct attribute_group ade7753_attribute_group = {
>>
>>  static const struct iio_info ade7753_info = {
>>       .attrs = &ade7753_attribute_group,
>> +     .read_raw = &ade7753_read_raw,
>> +     .write_raw = &ade7753_write_raw,
>>       .driver_module = THIS_MODULE,
>>  };
>>
>>
>

