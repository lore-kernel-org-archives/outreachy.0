X-GM-THRID: 6399601653123645440
X-Received: by 10.129.152.151 with SMTP id p145mr16243099ywg.119.1490028129028;
        Mon, 20 Mar 2017 09:42:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.98 with SMTP id 89ls11179848otb.22.gmail; Mon, 20 Mar
 2017 09:42:08 -0700 (PDT)
X-Received: by 10.157.31.42 with SMTP id x39mr14070660otd.111.1490028128285;
        Mon, 20 Mar 2017 09:42:08 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id n63si2376479ywb.7.2017.03.20.09.42.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 09:42:08 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cq0Nb-00055u-Cn; Mon, 20 Mar 2017 17:41:59 +0100
Received: from [2003:86:2c12:f000:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cq0Nb-0004X8-65; Mon, 20 Mar 2017 17:41:59 +0100
Subject: Re: [RESEND PATCH] staging: ad7606: Replace mlock with driver private
 lock
To: Arushi Singhal <arushisinghal19971997@gmail.com>
References: <20170320152247.GA6760@arushi-HP-Pavilion-Notebook>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <6d979fef-d5ec-d84d-f6c6-c8fc2d120693@metafoo.de>
Date: Mon, 20 Mar 2017 17:41:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170320152247.GA6760@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23221/Mon Mar 20 13:24:47 2017)

On 03/20/2017 04:22 PM, Arushi Singhal wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Hi,

Looks good, but mutex_init() is missing.

- Lars

> ---
>  drivers/staging/iio/adc/ad7606.c | 8 ++++----
>  drivers/staging/iio/adc/ad7606.h | 2 ++
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7606.c b/drivers/staging/iio/adc/ad7606.c
> index 9dbfa64b1e53..9f529b34e018 100644
> --- a/drivers/staging/iio/adc/ad7606.c
> +++ b/drivers/staging/iio/adc/ad7606.c
> @@ -208,7 +208,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  	switch (mask) {
>  	case IIO_CHAN_INFO_SCALE:
>  		ret = -EINVAL;
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->lock);
>  		for (i = 0; i < ARRAY_SIZE(scale_avail); i++)
>  			if (val2 == scale_avail[i][1]) {
>  				gpiod_set_value(st->gpio_range, i);
> @@ -217,7 +217,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  				ret = 0;
>  				break;
>  			}
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->lock);
>  
>  		return ret;
>  	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
> @@ -231,11 +231,11 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  		values[1] = (ret >> 1) & 1;
>  		values[2] = (ret >> 2) & 1;
>  
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->lock);
>  		gpiod_set_array_value(ARRAY_SIZE(values), st->gpio_os->desc,
>  				      values);
>  		st->oversampling = val;
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->lock);
>  
>  		return 0;
>  	default:
> diff --git a/drivers/staging/iio/adc/ad7606.h b/drivers/staging/iio/adc/ad7606.h
> index 746f9553d2ba..5d59bdd78727 100644
> --- a/drivers/staging/iio/adc/ad7606.h
> +++ b/drivers/staging/iio/adc/ad7606.h
> @@ -14,6 +14,7 @@
>   * @name:		identification string for chip
>   * @channels:		channel specification
>   * @num_channels:	number of channels
> + * @lock		protect sensor state
>   */
>  
>  struct ad7606_chip_info {
> @@ -37,6 +38,7 @@ struct ad7606_state {
>  	bool				done;
>  	void __iomem			*base_address;
>  
> +	struct mutex			lock; /* protect sensor state */
>  	struct gpio_desc		*gpio_convst;
>  	struct gpio_desc		*gpio_reset;
>  	struct gpio_desc		*gpio_range;
> 


