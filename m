X-GM-THRID: 6336365196847611904
X-Received: by 10.157.58.10 with SMTP id j10mr3394299otc.138.1475997323156;
        Sun, 09 Oct 2016 00:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls2446491ith.10.canary; Sun, 09 Oct
 2016 00:15:22 -0700 (PDT)
X-Received: by 10.36.103.78 with SMTP id u75mr1827112itc.1.1475997322156;
        Sun, 09 Oct 2016 00:15:22 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x244.google.com (mail-yb0-x244.google.com. [2607:f8b0:4002:c09::244])
        by gmr-mx.google.com with ESMTPS id 80si461018ywv.5.2016.10.09.00.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 00:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) client-ip=2607:f8b0:4002:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x244.google.com with SMTP id e2so1923645ybi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 00:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sA684b3fwx9ULQEIFzSoXeRUZMfDediDvvIgjIEZze8=;
        b=l9BpvEFv1PjzvUugO5c9ZS0IooWMzd4WO/RnDwjvNowei8Hd6U0xVeOwJ3XH12aw1z
         GKV3a99x2K7u/UOFEGOMzlVcMm9+8D7LCPCs8jowuBNSKR6YUmDowb1SYodNj6kT1b67
         EeEBNmfOnkGGFklZUkpU1i+f3FFfmdPJ5656qI4Vm0zXVL6r6hrraj8HdX++/q7DJNBC
         bBPzcR7ILMcI8tr3cTtK5LT/2X2oblx7LooTzSRxuhAgxoNfR92EV0PDvRmIt6gW34WW
         06aI/jiMgLuv23tSX36sOX0kM2/C35AgW2KCNS/gr8KxHOomYCPBWT3ev6pWd2xrrQFP
         RLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sA684b3fwx9ULQEIFzSoXeRUZMfDediDvvIgjIEZze8=;
        b=YH0OZUD7Lf/rk2nzD9wYSwsh93N4qhYhka4wtfCkRehTUDAg88kITr5yv8bxei5Afo
         TvzC7WHX62IqqOR7jGlY7f0GMKa9QTiTOZyjD4dCH6+JSpAQeprRh9u2B7PVuvfB15oy
         BaFqk2Z0+36MY9FT7RgBkztHSbYGB73DeFvhkuDH/Eub/OO0szhjJrzXpAx0kcYXXu5O
         h/UAq2uYmNWfBhHCBEagby9OSN9/4mk6Yup6UtIsxsDGu2bTVXF44o8wCd4k8brcN7fr
         tXSOQNh9SJh0G/aPX2/bbOO+7aOwKJaRDfFZDcA4a07YApUOghMEQV91WSucAL33Icld
         aV4g==
X-Gm-Message-State: AA6/9RmoC2+nmoiCx7Or2Ia23jziT/qSuFbVHGcZI/ZkEVZ+lEHR2DfmfTQkrKtQZAmTdSbGxAtTXUQnAokKlQ==
X-Received: by 10.37.123.68 with SMTP id w65mr22172118ybc.116.1475997321911;
 Sun, 09 Oct 2016 00:15:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Sun, 9 Oct 2016 00:14:41 -0700 (PDT)
In-Reply-To: <20161004174813.GA28568@sayli-HP-15-Notebook-PC>
References: <20161004174813.GA28568@sayli-HP-15-Notebook-PC>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 9 Oct 2016 12:44:41 +0530
Message-ID: <CAKG5xWj95iyy64PprdMKn21FHnJ=w4wfO_MNB-N7dbQyxWL87A@mail.gmail.com>
Subject: Re: [PATCH v3] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Barry Song <21cnbao@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 4, 2016 at 11:18 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
> Attributes that were once privately defined become standard with time and
> hence a special global define is used. Hence update driver ad7152 to use
> IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
> IIO_DEV_ATTR_SAMP_FREQ.
> Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
> IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
> Modify ad7152_read_raw() and ad7152_write_raw() to allow reading and
> writing the element as well.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>
> Changes in v3:
> Drop the unlock in ad7152_write_raw_samp_freq() and use the one at the exit point
> instead
> Return ret immediately instead of using a goto statement in ad7152_write_raw_samp_freq()
>
> Changes in v2:
> Give a more detailed explanation
> Remove null check for val in ad7152_write_raw_samp_freq()
> Merged two stucture variable initialisations into one statement in ad7152_read_raw_samp_freq()
> Set ret to IIO_VAL_INT in ad7152_read_raw() when mask equals IIO_CHAN_INFO_SAMP_FREQ and ret>=0
>
>  drivers/staging/iio/cdc/ad7152.c | 116 ++++++++++++++++++++++-----------------
>  1 file changed, 65 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index 485d0a5..b3cc629 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -165,63 +165,12 @@ static const unsigned char ad7152_filter_rate_table[][2] = {
>         {200, 5 + 1}, {50, 20 + 1}, {20, 50 + 1}, {17, 60 + 1},
>  };
>
> -static ssize_t ad7152_show_filter_rate_setup(struct device *dev,
> -               struct device_attribute *attr,
> -               char *buf)
> -{
> -       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> -       struct ad7152_chip_info *chip = iio_priv(indio_dev);
> -
> -       return sprintf(buf, "%d\n",
> -                      ad7152_filter_rate_table[chip->filter_rate_setup][0]);
> -}
> -
> -static ssize_t ad7152_store_filter_rate_setup(struct device *dev,
> -               struct device_attribute *attr,
> -               const char *buf,
> -               size_t len)
> -{
> -       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> -       struct ad7152_chip_info *chip = iio_priv(indio_dev);
> -       u8 data;
> -       int ret, i;
> -
> -       ret = kstrtou8(buf, 10, &data);
> -       if (ret < 0)
> -               return ret;
> -
> -       for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
> -               if (data >= ad7152_filter_rate_table[i][0])
> -                       break;
> -
> -       if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
> -               i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
> -
> -       mutex_lock(&indio_dev->mlock);
> -       ret = i2c_smbus_write_byte_data(chip->client,
> -                       AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
> -       if (ret < 0) {
> -               mutex_unlock(&indio_dev->mlock);
> -               return ret;
> -       }
> -
> -       chip->filter_rate_setup = i;
> -       mutex_unlock(&indio_dev->mlock);
> -
> -       return len;
> -}
> -
> -static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR,
> -               ad7152_show_filter_rate_setup,
> -               ad7152_store_filter_rate_setup);
> -
>  static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("200 50 20 17");
>
>  static IIO_CONST_ATTR(in_capacitance_scale_available,
>                       "0.000061050 0.000030525 0.000015263 0.000007631");
>
>  static struct attribute *ad7152_attributes[] = {
> -       &iio_dev_attr_sampling_frequency.dev_attr.attr,
>         &iio_dev_attr_in_capacitance0_calibbias_calibration.dev_attr.attr,
>         &iio_dev_attr_in_capacitance1_calibbias_calibration.dev_attr.attr,
>         &iio_dev_attr_in_capacitance0_calibscale_calibration.dev_attr.attr,
> @@ -247,6 +196,50 @@ static const int ad7152_scale_table[] = {
>         30525, 7631, 15263, 61050
>  };
>
> +/**
> + * read_raw handler for IIO_CHAN_INFO_SAMP_FREQ
> + *
> + * lock must be held
> + **/
> +static int ad7152_read_raw_samp_freq(struct device *dev, int *val)
> +{
> +       struct ad7152_chip_info *chip = iio_priv(dev_to_iio_dev(dev));
> +
> +       *val = ad7152_filter_rate_table[chip->filter_rate_setup][0];
> +
> +       return 0;
> +}
> +
> +/**
> + * write_raw handler for IIO_CHAN_INFO_SAMP_FREQ
> + *
> + * lock must be held
> + **/
> +static int ad7152_write_raw_samp_freq(struct device *dev, int val)
> +{
> +       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> +       struct ad7152_chip_info *chip = iio_priv(indio_dev);
> +       u8 data;
> +       int ret, i;
> +
> +       for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
> +               if (data >= ad7152_filter_rate_table[i][0])
> +                       break;
> +
> +       if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
> +               i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
> +
> +       mutex_lock(&indio_dev->mlock);
> +       ret = i2c_smbus_write_byte_data(chip->client,
> +                                       AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
> +       if (ret < 0)
> +               return ret;
> +
> +       chip->filter_rate_setup = i;
> +       mutex_unlock(&indio_dev->mlock);
> +
> +       return ret;
> +}
>  static int ad7152_write_raw(struct iio_dev *indio_dev,
>                             struct iio_chan_spec const *chan,
>                             int val,
> @@ -309,6 +302,16 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
>
>                 ret = 0;
>                 break;
> +       case IIO_CHAN_INFO_SAMP_FREQ:
> +               if (val2)
> +                       return -EINVAL;
> +
> +               ret = ad7152_write_raw_samp_freq(&indio_dev->dev, val);
> +               if (ret < 0)
> +                       goto out;
> +
> +               ret = 0;
> +               break;
>         default:
>                 ret = -EINVAL;
>         }
> @@ -403,6 +406,13 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
>
>                 ret = IIO_VAL_INT_PLUS_NANO;
>                 break;
> +       case IIO_CHAN_INFO_SAMP_FREQ:
> +               ret = ad7152_read_raw_samp_freq(&indio_dev->dev, val);
> +               if (ret < 0)
> +                       goto out;
> +
> +               ret = IIO_VAL_INT;
> +               break;
>         default:
>                 ret = -EINVAL;
>         }
> @@ -440,6 +450,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>                 BIT(IIO_CHAN_INFO_CALIBSCALE) |
>                 BIT(IIO_CHAN_INFO_CALIBBIAS) |
>                 BIT(IIO_CHAN_INFO_SCALE),
> +               .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>         }, {
>                 .type = IIO_CAPACITANCE,
>                 .differential = 1,
> @@ -450,6 +461,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>                 BIT(IIO_CHAN_INFO_CALIBSCALE) |
>                 BIT(IIO_CHAN_INFO_CALIBBIAS) |
>                 BIT(IIO_CHAN_INFO_SCALE),
> +               .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>         }, {
>                 .type = IIO_CAPACITANCE,
>                 .indexed = 1,
> @@ -458,6 +470,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>                 BIT(IIO_CHAN_INFO_CALIBSCALE) |
>                 BIT(IIO_CHAN_INFO_CALIBBIAS) |
>                 BIT(IIO_CHAN_INFO_SCALE),
> +               .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>         }, {
>                 .type = IIO_CAPACITANCE,
>                 .differential = 1,
> @@ -468,6 +481,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>                 BIT(IIO_CHAN_INFO_CALIBSCALE) |
>                 BIT(IIO_CHAN_INFO_CALIBBIAS) |
>                 BIT(IIO_CHAN_INFO_SCALE),
> +               .info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>         }
>  };
>  /*
> --
> 2.7.4
>
Hello,

Any feedback on patch v3?

thanks,
sayli

