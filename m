X-GM-THRID: 6339598163243958272
X-Received: by 10.107.146.9 with SMTP id u9mr227161iod.66.1476131260451;
        Mon, 10 Oct 2016 13:27:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.174 with SMTP id d43ls39563otd.11.gmail; Mon, 10 Oct
 2016 13:27:40 -0700 (PDT)
X-Received: by 10.13.218.197 with SMTP id c188mr25919ywe.144.1476131260120;
        Mon, 10 Oct 2016 13:27:40 -0700 (PDT)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id p70si1359024vkd.0.2016.10.10.13.27.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 13:27:40 -0700 (PDT)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 98A6240635;
	Mon, 10 Oct 2016 21:27:38 +0100 (BST)
Subject: Re: [PATCH v2] staging: iio: cdc: ad7152: Replace mlock with a local
 mutex lock
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20161010062048.GA14750@sayli-HP-15-Notebook-PC>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 21cnbao@gmail.com, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <d863a9e3-ed4f-0308-f436-21cfc64d12ca@kernel.org>
Date: Mon, 10 Oct 2016 21:27:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161010062048.GA14750@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/10/16 07:20, sayli karnik wrote:
> mlock is intended to protect only switches between modes.
> Given this driver doesn't support more than one mode (sysfs polled reads
> only), replace mlock with a local mutex lock.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
Great.

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to try and break it.

Thanks,

Jonathan

p.s. Both this and the previous patches had some 'fuzz' (e.g.
the lines in question had been moved slightly by a white space
adding patch I'd applied before).

Please sanity check the testing branch of iio.git i.e.
https://git.kernel.org/cgit/linux/kernel/git/jic23/iio.git/log/?h=testing

to make sure nothing 'odd' happened as sometimes this stuff can go
wrong.

> ---
> v2:
> Made changes on top of previous commit i.e, implement IIO_CHAN_INFO_SAMP_FREQ
> 
>  drivers/staging/iio/cdc/ad7152.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index b3cc629..24d355d 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -89,6 +89,7 @@ struct ad7152_chip_info {
>  	 */
>  	u8	filter_rate_setup;
>  	u8	setup[2];
> +	struct mutex state_lock;	/* protect hardware state */
>  };
>  
>  static inline ssize_t ad7152_start_calib(struct device *dev,
> @@ -115,10 +116,10 @@ static inline ssize_t ad7152_start_calib(struct device *dev,
>  	else
>  		regval |= AD7152_CONF_CH2EN;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&chip->state_lock);
>  	ret = i2c_smbus_write_byte_data(chip->client, AD7152_REG_CFG, regval);
>  	if (ret < 0) {
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&chip->state_lock);
>  		return ret;
>  	}
>  
> @@ -126,12 +127,12 @@ static inline ssize_t ad7152_start_calib(struct device *dev,
>  		mdelay(20);
>  		ret = i2c_smbus_read_byte_data(chip->client, AD7152_REG_CFG);
>  		if (ret < 0) {
> -			mutex_unlock(&indio_dev->mlock);
> +			mutex_unlock(&chip->state_lock);
>  			return ret;
>  		}
>  	} while ((ret == regval) && timeout--);
>  
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&chip->state_lock);
>  	return len;
>  }
>  static ssize_t ad7152_start_offset_calib(struct device *dev,
> @@ -229,14 +230,14 @@ static int ad7152_write_raw_samp_freq(struct device *dev, int val)
>  	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
>  		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&chip->state_lock);
>  	ret = i2c_smbus_write_byte_data(chip->client,
>  					AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
>  	if (ret < 0)
>  		return ret;
>  
>  	chip->filter_rate_setup = i;
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&chip->state_lock);
>  
>  	return ret;
>  }
> @@ -249,7 +250,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
>  	struct ad7152_chip_info *chip = iio_priv(indio_dev);
>  	int ret, i;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&chip->state_lock);
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_CALIBSCALE:
> @@ -317,7 +318,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
>  	}
>  
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&chip->state_lock);
>  	return ret;
>  }
>  static int ad7152_read_raw(struct iio_dev *indio_dev,
> @@ -329,7 +330,7 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
>  	int ret;
>  	u8 regval = 0;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&chip->state_lock);
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
> @@ -417,7 +418,7 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
>  		ret = -EINVAL;
>  	}
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&chip->state_lock);
>  	return ret;
>  }
>  
> @@ -503,6 +504,7 @@ static int ad7152_probe(struct i2c_client *client,
>  	i2c_set_clientdata(client, indio_dev);
>  
>  	chip->client = client;
> +	mutex_init(&chip->state_lock);
>  
>  	/* Establish that the iio_dev is a child of the i2c device */
>  	indio_dev->name = id->name;
> 


