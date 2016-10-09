X-GM-THRID: 6336365196847611904
X-Received: by 10.176.16.12 with SMTP id f12mr7451557uab.36.1476028208739;
        Sun, 09 Oct 2016 08:50:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls8623371ote.9.gmail; Sun, 09 Oct 2016
 08:50:08 -0700 (PDT)
X-Received: by 10.129.106.213 with SMTP id f204mr7865235ywc.56.1476028208104;
        Sun, 09 Oct 2016 08:50:08 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id g8si602604ywe.2.2016.10.09.08.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 08:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id t193so3989161ywc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 08:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xI5r2U+FL7B6ULZ8IuK7Ir+MUHv20S1b7DBrdUhoDS4=;
        b=h/T2WOaMJC+Q91yu7xaHjFvbhbH1pr6L4uM9R7HP5PlwnyQqCCFxuu6QySUGdnOUsh
         GcH6VtjIg9Ym3zF9QfgSRmbQ30nPYknk8iesnqwBnAum/qmdW5Hx/mHfwPnZ7XG567Rk
         mdW8qYR57ObjQnHfltVws1C1eeaycYIXN+touAL0AHOvAwqUAtHi5GiuLg0loYpkxwlj
         5zQq/cqGz0mDL6X/eDJgPRLdRlOoERS3Y1bRl+SMBdSNZ5EHLfPa3nhc7u8eimEqNK69
         QAqpbm3XHXdlOWBA6b43YxBn3lpdA/wq9W3uO/KzrqCP72Ygdmh20kC1nU1lf77MmmPv
         zpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xI5r2U+FL7B6ULZ8IuK7Ir+MUHv20S1b7DBrdUhoDS4=;
        b=Q9xzVHH7mEsQnjqKptgTwKzNpiJln3E1AzYTO/dMZJiBlREkc1BF3ZKXbiGZsNuMXu
         QXoMjJIY+TI4r7FlAZj88lkkPP3oqF1JuhO/SChD6qv0/kGgQQGIMEJDYVWnffebbSiY
         MwebWiPiJCZtStHIVZJZqykBtNQcq8pTYrpmwjOUtyYW1oGs75cq+ylFOTOq+/ph5Tjs
         2U3uqR6jxFggAwkaxeDshOlqQ2NURh/uUSW1FZTGnzQbyDatxuy6tXwaU/WtZnXAgWbf
         fvn3wiL9TNerKkMIM4+dM7R/8f6pKwTivP5EriKNNxsOGGPaeWeNd9Odr6yDjowiGS/8
         0+tA==
X-Gm-Message-State: AA6/9RnjzHaqsRUw5QSNlp/+EbtYnHWJoIdmC0Dm4oCfv6SZmDup4wK4K9Hm3MpBHL8cAfrrwDKl9sro8IQ7Jg==
X-Received: by 10.129.71.11 with SMTP id u11mr25227647ywa.115.1476028207837;
 Sun, 09 Oct 2016 08:50:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Sun, 9 Oct 2016 08:49:27 -0700 (PDT)
In-Reply-To: <5442b613-5e41-8598-e76d-a066efe9d005@kernel.org>
References: <20161004174813.GA28568@sayli-HP-15-Notebook-PC> <5442b613-5e41-8598-e76d-a066efe9d005@kernel.org>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 9 Oct 2016 21:19:27 +0530
Message-ID: <CAKG5xWjJZ0-QWNz3cfQx5GwfJY9d=kew763bNady9VJmTQkJ_w@mail.gmail.com>
Subject: Re: [PATCH v3] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
To: Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Barry Song <21cnbao@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 9, 2016 at 1:39 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 04/10/16 18:48, sayli karnik wrote:
>> Attributes that were once privately defined become standard with time and
>> hence a special global define is used. Hence update driver ad7152 to use
>> IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
>> IIO_DEV_ATTR_SAMP_FREQ.
>> Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
>> IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
>> Modify ad7152_read_raw() and ad7152_write_raw() to allow reading and
>> writing the element as well.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> Very nice.  A suggestion for a follow up patch inline if you want
> to carry on working on this driver.
>
> Applied to the togreg branch of iio.git - initially pushed out
> as testing for the autobuilders to play with it.
>
> As it crossed with a white space adding patch, I had to do
> a bit of fiddling to get it to apply.  Please take a very quick
> look to check nothing went wrong (given it was just line shifts
> I doubt it, but it's good practice to check!)
>
> Definitely getting some good more in depth patches as part of the
> outreachy initial phase this year!
>
> Jonathan
>> ---
>>
>> Changes in v3:
>> Drop the unlock in ad7152_write_raw_samp_freq() and use the one at the exit point
>> instead
>> Return ret immediately instead of using a goto statement in ad7152_write_raw_samp_freq()
>>
>> Changes in v2:
>> Give a more detailed explanation
>> Remove null check for val in ad7152_write_raw_samp_freq()
>> Merged two stucture variable initialisations into one statement in ad7152_read_raw_samp_freq()
>> Set ret to IIO_VAL_INT in ad7152_read_raw() when mask equals IIO_CHAN_INFO_SAMP_FREQ and ret>=0
>>
>>  drivers/staging/iio/cdc/ad7152.c | 116 ++++++++++++++++++++++-----------------
>>  1 file changed, 65 insertions(+), 51 deletions(-)
>>
>> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
>> index 485d0a5..b3cc629 100644
>> --- a/drivers/staging/iio/cdc/ad7152.c
>> +++ b/drivers/staging/iio/cdc/ad7152.c
>> @@ -165,63 +165,12 @@ static const unsigned char ad7152_filter_rate_table[][2] = {
>>       {200, 5 + 1}, {50, 20 + 1}, {20, 50 + 1}, {17, 60 + 1},
>>  };
>>
>> -static ssize_t ad7152_show_filter_rate_setup(struct device *dev,
>> -             struct device_attribute *attr,
>> -             char *buf)
>> -{
>> -     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> -     struct ad7152_chip_info *chip = iio_priv(indio_dev);
>> -
>> -     return sprintf(buf, "%d\n",
>> -                    ad7152_filter_rate_table[chip->filter_rate_setup][0]);
>> -}
>> -
>> -static ssize_t ad7152_store_filter_rate_setup(struct device *dev,
>> -             struct device_attribute *attr,
>> -             const char *buf,
>> -             size_t len)
>> -{
>> -     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> -     struct ad7152_chip_info *chip = iio_priv(indio_dev);
>> -     u8 data;
>> -     int ret, i;
>> -
>> -     ret = kstrtou8(buf, 10, &data);
>> -     if (ret < 0)
>> -             return ret;
>> -
>> -     for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
>> -             if (data >= ad7152_filter_rate_table[i][0])
>> -                     break;
>> -
>> -     if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
>> -             i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
>> -
>> -     mutex_lock(&indio_dev->mlock);
>> -     ret = i2c_smbus_write_byte_data(chip->client,
>> -                     AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
>> -     if (ret < 0) {
>> -             mutex_unlock(&indio_dev->mlock);
>> -             return ret;
>> -     }
>> -
>> -     chip->filter_rate_setup = i;
>> -     mutex_unlock(&indio_dev->mlock);
>> -
>> -     return len;
>> -}
>> -
>> -static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR,
>> -             ad7152_show_filter_rate_setup,
>> -             ad7152_store_filter_rate_setup);
>> -
>>  static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("200 50 20 17");
>>
>>  static IIO_CONST_ATTR(in_capacitance_scale_available,
>>                     "0.000061050 0.000030525 0.000015263 0.000007631");
>>
>>  static struct attribute *ad7152_attributes[] = {
>> -     &iio_dev_attr_sampling_frequency.dev_attr.attr,
>>       &iio_dev_attr_in_capacitance0_calibbias_calibration.dev_attr.attr,
>>       &iio_dev_attr_in_capacitance1_calibbias_calibration.dev_attr.attr,
>>       &iio_dev_attr_in_capacitance0_calibscale_calibration.dev_attr.attr,
>> @@ -247,6 +196,50 @@ static const int ad7152_scale_table[] = {
>>       30525, 7631, 15263, 61050
>>  };
>>
>> +/**
>> + * read_raw handler for IIO_CHAN_INFO_SAMP_FREQ
>> + *
>> + * lock must be held
>> + **/
>> +static int ad7152_read_raw_samp_freq(struct device *dev, int *val)
>> +{
>> +     struct ad7152_chip_info *chip = iio_priv(dev_to_iio_dev(dev));
>> +
>> +     *val = ad7152_filter_rate_table[chip->filter_rate_setup][0];
>> +
>> +     return 0;
>> +}
>> +
>> +/**
>> + * write_raw handler for IIO_CHAN_INFO_SAMP_FREQ
>> + *
>> + * lock must be held
>> + **/
>> +static int ad7152_write_raw_samp_freq(struct device *dev, int val)
>> +{
>> +     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> +     struct ad7152_chip_info *chip = iio_priv(indio_dev);
>> +     u8 data;
>> +     int ret, i;
>> +
>> +     for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
>> +             if (data >= ad7152_filter_rate_table[i][0])
>> +                     break;
>> +
>> +     if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
>> +             i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
>> +
>> +     mutex_lock(&indio_dev->mlock);
> Hmm - was previously here of course, but that's not right.
> mlock is intended to protect 'only' switches between modes.
> Given this driver doesn't support more than one mode (sysfs polled reads
> only) it should not be touching it!
>
> Should be a local lock in the driver.
>
The driver uses mlock everywhere. There isn't a local lock that I can find.
Any ideas?

thanks,
sayli
> Perhaps a follow up patch to sort that out?
>
> Jonathan
>
> p.s I'm loving this opportunity to moan about random corners of
> drivers then people fix them for me ;)
>> +     ret = i2c_smbus_write_byte_data(chip->client,
>> +                                     AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
>> +     if (ret < 0)
>> +             return ret;
>> +
>> +     chip->filter_rate_setup = i;
>> +     mutex_unlock(&indio_dev->mlock);
>> +
>> +     return ret;
>> +}
>>  static int ad7152_write_raw(struct iio_dev *indio_dev,
>>                           struct iio_chan_spec const *chan,
>>                           int val,
>> @@ -309,6 +302,16 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
>>
>>               ret = 0;
>>               break;
>> +     case IIO_CHAN_INFO_SAMP_FREQ:
>> +             if (val2)
>> +                     return -EINVAL;
>> +
>> +             ret = ad7152_write_raw_samp_freq(&indio_dev->dev, val);
>> +             if (ret < 0)
>> +                     goto out;
>> +
>> +             ret = 0;
>> +             break;
>>       default:
>>               ret = -EINVAL;
>>       }
>> @@ -403,6 +406,13 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
>>
>>               ret = IIO_VAL_INT_PLUS_NANO;
>>               break;
>> +     case IIO_CHAN_INFO_SAMP_FREQ:
>> +             ret = ad7152_read_raw_samp_freq(&indio_dev->dev, val);
>> +             if (ret < 0)
>> +                     goto out;
>> +
>> +             ret = IIO_VAL_INT;
>> +             break;
>>       default:
>>               ret = -EINVAL;
>>       }
>> @@ -440,6 +450,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }, {
>>               .type = IIO_CAPACITANCE,
>>               .differential = 1,
>> @@ -450,6 +461,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }, {
>>               .type = IIO_CAPACITANCE,
>>               .indexed = 1,
>> @@ -458,6 +470,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }, {
>>               .type = IIO_CAPACITANCE,
>>               .differential = 1,
>> @@ -468,6 +481,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }
>>  };
>>  /*
>>
>

