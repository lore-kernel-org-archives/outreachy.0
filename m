X-GM-THRID: 6336365196847611904
X-Received: by 10.157.45.161 with SMTP id g30mr14402otb.116.1476130559319;
        Mon, 10 Oct 2016 13:15:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.208 with SMTP id e16ls19001otd.6.gmail; Mon, 10 Oct
 2016 13:15:58 -0700 (PDT)
X-Received: by 10.237.37.154 with SMTP id x26mr9459qtc.17.1476130558598;
        Mon, 10 Oct 2016 13:15:58 -0700 (PDT)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id p70si1353720vkd.0.2016.10.10.13.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 13:15:58 -0700 (PDT)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 24B10405EB;
	Mon, 10 Oct 2016 21:15:56 +0100 (BST)
Subject: Re: [PATCH v5] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20161010153917.GA20079@sayli-HP-15-Notebook-PC>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <9fa74050-5f6d-ce09-9356-e3f81cf4d175@kernel.org>
Date: Mon, 10 Oct 2016 21:15:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161010153917.GA20079@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/10/16 16:39, sayli karnik wrote:
> Attributes that were once privately defined become standard with time
> and hence a special global define is used. Hence update driver ad7152 to use
> IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
> IIO_DEV_ATTR_SAMP_FREQ.
> Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
> IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
> Modify ad7152_read_raw() and ad7152_write_raw() to allow reading and
> writing the element as well. Also add a lock in the driver's private
> data.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
V3 replaced with this one in the togreg branch of iio.git and pushed
out as testing for the autobuilders to play with it.

Thanks,

Jonathan
> ---
> Changes in v5:
> Replaced 'data' with unused variable 'val' in ad7152_write_raw_samp_freq()
> Removed the v4 changes
> 
> Changes in v4:
> Replaced mlock with a local lock since mlock is intended to protect 'only'
> switches between modes. Given this driver doesn't support more than one mode
> (sysfs polled reads only)
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
> 
>  drivers/staging/iio/cdc/ad7152.c | 115 ++++++++++++++++++++++-----------------
>  1 file changed, 64 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index 485d0a5..a1ea897 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -165,63 +165,12 @@ static const unsigned char ad7152_filter_rate_table[][2] = {
>  	{200, 5 + 1}, {50, 20 + 1}, {20, 50 + 1}, {17, 60 + 1},
>  };
>  
> -static ssize_t ad7152_show_filter_rate_setup(struct device *dev,
> -		struct device_attribute *attr,
> -		char *buf)
> -{
> -	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> -	struct ad7152_chip_info *chip = iio_priv(indio_dev);
> -
> -	return sprintf(buf, "%d\n",
> -		       ad7152_filter_rate_table[chip->filter_rate_setup][0]);
> -}
> -
> -static ssize_t ad7152_store_filter_rate_setup(struct device *dev,
> -		struct device_attribute *attr,
> -		const char *buf,
> -		size_t len)
> -{
> -	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> -	struct ad7152_chip_info *chip = iio_priv(indio_dev);
> -	u8 data;
> -	int ret, i;
> -
> -	ret = kstrtou8(buf, 10, &data);
> -	if (ret < 0)
> -		return ret;
> -
> -	for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
> -		if (data >= ad7152_filter_rate_table[i][0])
> -			break;
> -
> -	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
> -		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
> -
> -	mutex_lock(&indio_dev->mlock);
> -	ret = i2c_smbus_write_byte_data(chip->client,
> -			AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
> -	if (ret < 0) {
> -		mutex_unlock(&indio_dev->mlock);
> -		return ret;
> -	}
> -
> -	chip->filter_rate_setup = i;
> -	mutex_unlock(&indio_dev->mlock);
> -
> -	return len;
> -}
> -
> -static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR,
> -		ad7152_show_filter_rate_setup,
> -		ad7152_store_filter_rate_setup);
> -
>  static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("200 50 20 17");
>  
>  static IIO_CONST_ATTR(in_capacitance_scale_available,
>  		      "0.000061050 0.000030525 0.000015263 0.000007631");
>  
>  static struct attribute *ad7152_attributes[] = {
> -	&iio_dev_attr_sampling_frequency.dev_attr.attr,
>  	&iio_dev_attr_in_capacitance0_calibbias_calibration.dev_attr.attr,
>  	&iio_dev_attr_in_capacitance1_calibbias_calibration.dev_attr.attr,
>  	&iio_dev_attr_in_capacitance0_calibscale_calibration.dev_attr.attr,
> @@ -247,6 +196,49 @@ static const int ad7152_scale_table[] = {
>  	30525, 7631, 15263, 61050
>  };
>  
> +/**
> + * read_raw handler for IIO_CHAN_INFO_SAMP_FREQ
> + *
> + * lock must be held
> + **/
> +static int ad7152_read_raw_samp_freq(struct device *dev, int *val)
> +{
> +	struct ad7152_chip_info *chip = iio_priv(dev_to_iio_dev(dev));
> +
> +	*val = ad7152_filter_rate_table[chip->filter_rate_setup][0];
> +
> +	return 0;
> +}
> +
> +/**
> + * write_raw handler for IIO_CHAN_INFO_SAMP_FREQ
> + *
> + * lock must be held
> + **/
> +static int ad7152_write_raw_samp_freq(struct device *dev, int val)
> +{
> +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> +	struct ad7152_chip_info *chip = iio_priv(indio_dev);
> +	int ret, i;
> +
> +	for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
> +		if (val >= ad7152_filter_rate_table[i][0])
> +			break;
> +
> +	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
> +		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
> +
> +	mutex_lock(&indio_dev->mlock);
> +	ret = i2c_smbus_write_byte_data(chip->client,
> +					AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
> +	if (ret < 0)
> +		return ret;
> +
> +	chip->filter_rate_setup = i;
> +	mutex_unlock(&indio_dev->mlock);
> +
> +	return ret;
> +}
>  static int ad7152_write_raw(struct iio_dev *indio_dev,
>  			    struct iio_chan_spec const *chan,
>  			    int val,
> @@ -309,6 +301,16 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
>  
>  		ret = 0;
>  		break;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		if (val2)
> +			return -EINVAL;
> +
> +		ret = ad7152_write_raw_samp_freq(&indio_dev->dev, val);
> +		if (ret < 0)
> +			goto out;
> +
> +		ret = 0;
> +		break;
>  	default:
>  		ret = -EINVAL;
>  	}
> @@ -403,6 +405,13 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
>  
>  		ret = IIO_VAL_INT_PLUS_NANO;
>  		break;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		ret = ad7152_read_raw_samp_freq(&indio_dev->dev, val);
> +		if (ret < 0)
> +			goto out;
> +
> +		ret = IIO_VAL_INT;
> +		break;
>  	default:
>  		ret = -EINVAL;
>  	}
> @@ -440,6 +449,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>  		BIT(IIO_CHAN_INFO_CALIBSCALE) |
>  		BIT(IIO_CHAN_INFO_CALIBBIAS) |
>  		BIT(IIO_CHAN_INFO_SCALE),
> +		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>  	}, {
>  		.type = IIO_CAPACITANCE,
>  		.differential = 1,
> @@ -450,6 +460,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>  		BIT(IIO_CHAN_INFO_CALIBSCALE) |
>  		BIT(IIO_CHAN_INFO_CALIBBIAS) |
>  		BIT(IIO_CHAN_INFO_SCALE),
> +		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>  	}, {
>  		.type = IIO_CAPACITANCE,
>  		.indexed = 1,
> @@ -458,6 +469,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>  		BIT(IIO_CHAN_INFO_CALIBSCALE) |
>  		BIT(IIO_CHAN_INFO_CALIBBIAS) |
>  		BIT(IIO_CHAN_INFO_SCALE),
> +		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>  	}, {
>  		.type = IIO_CAPACITANCE,
>  		.differential = 1,
> @@ -468,6 +480,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>  		BIT(IIO_CHAN_INFO_CALIBSCALE) |
>  		BIT(IIO_CHAN_INFO_CALIBBIAS) |
>  		BIT(IIO_CHAN_INFO_SCALE),
> +		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
>  	}
>  };
>  /*
> 


