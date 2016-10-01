X-GM-THRID: 6336365196847611904
X-Received: by 10.66.190.3 with SMTP id gm3mr23592pac.81.1475333979038;
        Sat, 01 Oct 2016 07:59:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls1468882ota.0.gmail; Sat, 01 Oct
 2016 07:59:38 -0700 (PDT)
X-Received: by 10.157.41.7 with SMTP id d7mr3370252otb.125.1475333978648;
        Sat, 01 Oct 2016 07:59:38 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id 63si1447220ywe.1.2016.10.01.07.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 07:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id g192so4944728ywh.0
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 07:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=R0H3BhhFxuszBK+GrcZzTYGwY3pzQTxUNv7TqwQKZi0=;
        b=QuszSCC/9zomYJeCCFgVeaSQjxEYIpUge+CwAuvijV8v7pma96LWzxS+7VjmMFCeL8
         gUEH4KlSvFtvWw8uIHfXfKjlbV3TI/s7Fk2ywEDceZ5xzLu+UF1m3tZ3RnL2ct8HpzpW
         9pXSsqQ2pEmePdr1Kcu51mG4IotXqYJvdhbHpjSXchplgqMCThZRLZFe/dVWU7AopT/P
         +BpTPCImIhrlaYuKiqu2OOJDjcCW9HAB93s5dugSTKJVpMNojg1huaq6GfFtbSzcYd5X
         cd1+ATtgUASfdIdNUnZBMxIv2u6RtJythPjgdPRqvobnz95DWrBoClw+dbJkagTlif9B
         By/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=R0H3BhhFxuszBK+GrcZzTYGwY3pzQTxUNv7TqwQKZi0=;
        b=iIj8K7eLabe6u9XncrnHYGfPdMCysR9uXTfZPw3FO1gIO+89Ba95qjFZE3ZggpW2A1
         kyiNEVuapmH+aseOwMBCu1iJbtzVoJzSFF8JnPK0TlxC1cE64TDgBOSWjJ0M0PnP8XYe
         j9LrmDWd7MXxRA8tWG7LQZc0NCEWO8WTS+0cdLeCqMecV/8L00DMoUJhWJQYqZsBhQ5Y
         Isfj3Asm+sE9C0C3/7LJXIraFgrhw9HHmGlZOpqPHEXRycUgbWUDP/19hlzGDdpkJamn
         GAS4ELYEVxYCp0m8I1r7m82npKNcyFqtYeDkKu6o4t9YK/8Xzhgf2qCQ3yEan+3AlooM
         Lvrg==
X-Gm-Message-State: AA6/9RkNVTS60W0T+HM39AawrOG7mY+1jdxMGaE10BQnmoL/vgds2bPcN+5rnTiJ+pIUKscrZwNPZrOPSPU8bQ==
X-Received: by 10.129.177.3 with SMTP id p3mr9123493ywh.318.1475333978316;
 Sat, 01 Oct 2016 07:59:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Sat, 1 Oct 2016 07:58:58 -0700 (PDT)
In-Reply-To: <c37cb541-751c-a6ab-68a7-cf9cc5aa18d0@kernel.org>
References: <20161001053247.GA14195@sayli-HP-15-Notebook-PC> <c37cb541-751c-a6ab-68a7-cf9cc5aa18d0@kernel.org>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 1 Oct 2016 20:28:58 +0530
Message-ID: <CAKG5xWjHg_EEH+bwretmy+C1yBnAjJ7TKHhLrDmC6NB8ThoBLA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
To: Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 1, 2016 at 5:21 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 01/10/16 06:32, sayli karnik wrote:
>> Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
>> IIO_CHAN_INFO_SAMP_FREQ. Modify ad7152_read_raw() and
>> ad7152_write_raw() to allow reading and writing the element.
> Hi
>
> Ideally would have had a note to give the 'why' element of what
> the change is (Lars just raised this point in a similar patch).
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> Take a look at ad7152_write_raw_get_fmt which could be extended to
> explicitly pick the value up as an integer. If not you should check
> val2 is 0 in the write function.
>
> A few bits and bobs inline + a suggestion for a follow up patch
> if you want to continue working on this driver (which is has
> been somewhat neglected for a long time! Not dropping any
> hints Lars ;))
>
> Thanks,
>
> Jonathan
>> ---
>>  drivers/staging/iio/cdc/ad7152.c | 115 ++++++++++++++++++++++-----------------
>>  1 file changed, 64 insertions(+), 51 deletions(-)
>>
>> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
>> index 485d0a5..7b0f26e 100644
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
>> @@ -247,6 +196,56 @@ static const int ad7152_scale_table[] = {
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
>> +     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> +     struct ad7152_chip_info *chip = iio_priv(indio_dev);
> Could have daisychained the above without lost of meaning. e.g
> struct ad7152_chip_info *chip = iio_priv(dev_to_iio_dev(dev));
> Clearly original code didn't do this but nice to make little
> tidy ups on the way past!
>
> Also should be a blank line here.
>
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
>> +     if (!val)
>> +             return -EINVAL;
> Why?  Admittedly a value of 0 seems unlikely to make much sense, but the
> code doesn't as such require us to prevent it with it's own check.
>
> if (val2)
>    return -EINVAL; is more useful though as we want to enforce an
>    integer value.
>
>> +
>> +     for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
>> +             if (data >= ad7152_filter_rate_table[i][0])
>> +                     break;
>> +
>> +     if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
>> +             i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
>> +
>> +     mutex_lock(&indio_dev->mlock);
>> +     ret = i2c_smbus_write_byte_data(chip->client,
>> +                                     AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
>> +     if (ret < 0) {
>> +             mutex_unlock(&indio_dev->mlock);
>> +             goto out;
>> +     }
>> +
>> +     chip->filter_rate_setup = i;
> The original code is rather inelegant in how it handles mlock.
>
> mlock is there for one purpose only, to protect mode state changes
> (moving between sysfs read modes for data and pushing out on triggers via
> the 'buffered' interface).
>
> This should really be done with a local lock in the iio_priv structure.
>
> However, different cleanup so should not be in this patch.
> (i.e. Leave it alone for this patch, but if you want to carry on cleaning
> up this driver it would be a good next step)
>> +     mutex_unlock(&indio_dev->mlock);
>> +
>> +out:
>> +     return ret;
>> +}
>>  static int ad7152_write_raw(struct iio_dev *indio_dev,
>>                           struct iio_chan_spec const *chan,
>>                           int val,
>> @@ -309,6 +308,11 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
>>
>>               ret = 0;
>>               break;
>> +     case IIO_CHAN_INFO_SAMP_FREQ:
>> +             ret = ad7152_write_raw_samp_freq(&indio_dev->dev, val);
>> +             if (ret < 0)
>> +                     goto out;
>> +             break;
>>       default:
>>               ret = -EINVAL;
>>       }
>> @@ -403,6 +407,11 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
>>
>>               ret = IIO_VAL_INT_PLUS_NANO;
>>               break;
>> +     case IIO_CHAN_INFO_SAMP_FREQ:
>> +             ret = ad7152_read_raw_samp_freq(&indio_dev->dev, val);
>> +             if (ret < 0)
>> +                     goto out;
> Look at what the return value is used for..  Needs to be set here.
>

Thanks for the feedback.
I am sending in a patch v2 making all the changes you mentioned.
'ret' here should be set to IIO_VAL_INT right?

thanks
sayli

>> +             break;
>>       default:
>>               ret = -EINVAL;
>>       }
>> @@ -440,6 +449,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }, {
>>               .type = IIO_CAPACITANCE,
>>               .differential = 1,
>> @@ -450,6 +460,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }, {
>>               .type = IIO_CAPACITANCE,
>>               .indexed = 1,
>> @@ -458,6 +469,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }, {
>>               .type = IIO_CAPACITANCE,
>>               .differential = 1,
>> @@ -468,6 +480,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>>               BIT(IIO_CHAN_INFO_CALIBSCALE) |
>>               BIT(IIO_CHAN_INFO_CALIBBIAS) |
>>               BIT(IIO_CHAN_INFO_SCALE),
>> +             .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>>       }
>>  };
>>  /*
>>
>

