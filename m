X-GM-THRID: 6396911560369897472
X-Received: by 10.157.1.33 with SMTP id 30mr15145965otu.101.1489405636641;
        Mon, 13 Mar 2017 04:47:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.197.1 with SMTP id v1ls3993382iof.13.gmail; Mon, 13 Mar
 2017 04:47:15 -0700 (PDT)
X-Received: by 10.99.37.5 with SMTP id l5mr16488986pgl.165.1489405635590;
        Mon, 13 Mar 2017 04:47:15 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id n63si2240121ywb.7.2017.03.13.04.47.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 04:47:15 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnORR-0007yR-VG; Mon, 13 Mar 2017 12:47:10 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnORR-0006JE-OI; Mon, 13 Mar 2017 12:47:09 +0100
Subject: Re: [PATCH 1/2] staging: iio: adis16240: Replace mlock with driver
 private lock.
To: Varsha Rao <rvarsha016@gmail.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, linux-iio@vger.kernel.org
References: <cover.1489395260.git.rvarsha016@gmail.com>
 <58c6652a.467d630a.1c92b.3bea@mx.google.com>
Cc: outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <45f0ef85-3753-946f-4956-6cba4e8a6859@metafoo.de>
Date: Mon, 13 Mar 2017 12:47:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <58c6652a.467d630a.1c92b.3bea@mx.google.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23199/Mon Mar 13 05:12:29 2017)

On 03/13/2017 10:23 AM, Varsha Rao wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by the IIO
> core only for protecting device operating mode changes. ie. Changes
> between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state changes.
> Replace it with a lock in the devices global data. Also declare and
> initialize variable st which is pointer to struct adis, to access
> txrx_lock.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16240.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index 27d7f6a..c182b2d 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -229,11 +229,12 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
>  {
>  	ssize_t ret;
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> +	struct adis *st = iio_priv(indio_dev);
>  
>  	/* Take the iio_dev status lock */
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->txrx_lock);

This unfortunately wont work. The adis_read_reg()/adis_write_reg() functions
take the txrx_lock. So this change causes a deadlock, trying to take a lock
that is already locked.

But this lock can probably be removed. It should be safe to run the function
multiple times in parallel.

Same for the other changes in this patch.

>  	ret =  adis16240_spi_read_signed(dev, attr, buf, 12);
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->txrx_lock);
>  
>  	return ret;
>  }
> @@ -295,31 +296,31 @@ static int adis16240_read_raw(struct iio_dev *indio_dev,
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_CALIBBIAS:
>  		bits = 10;
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->txrx_lock);
>  		addr = adis16240_addresses[chan->scan_index][0];
>  		ret = adis_read_reg_16(st, addr, &val16);
>  		if (ret) {
> -			mutex_unlock(&indio_dev->mlock);
> +			mutex_unlock(&st->txrx_lock);
>  			return ret;
>  		}
>  		val16 &= (1 << bits) - 1;
>  		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
>  		*val = val16;
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->txrx_lock);
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_PEAK:
>  		bits = 10;
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->txrx_lock);
>  		addr = adis16240_addresses[chan->scan_index][1];
>  		ret = adis_read_reg_16(st, addr, &val16);
>  		if (ret) {
> -			mutex_unlock(&indio_dev->mlock);
> +			mutex_unlock(&st->txrx_lock);
>  			return ret;
>  		}
>  		val16 &= (1 << bits) - 1;
>  		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
>  		*val = val16;
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->txrx_lock);
>  		return IIO_VAL_INT;
>  	}
>  	return -EINVAL;
> 


