X-GM-THRID: 6396598979256123392
X-Received: by 10.107.191.68 with SMTP id p65mr9092234iof.102.1489408312811;
        Mon, 13 Mar 2017 05:31:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls14362358otd.49.gmail; Mon, 13 Mar
 2017 05:31:52 -0700 (PDT)
X-Received: by 10.237.53.146 with SMTP id c18mr4811645qte.64.1489408312326;
        Mon, 13 Mar 2017 05:31:52 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id f187si2316502ywc.0.2017.03.13.05.31.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 05:31:52 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOjh-0000fc-8u; Mon, 13 Mar 2017 13:06:01 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOjg-0007w9-VG; Mon, 13 Mar 2017 13:06:01 +0100
Subject: Re: [PATCH] staging: adis16060_core: Use private driver lock instead
 of mlock
To: simran singhal <singhalsimran0@gmail.com>
References: <20170312131052.GA21816@singhal-Inspiron-5558>
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <14f72fd1-e1e8-133b-0ff8-a1096f0583d9@metafoo.de>
Date: Mon, 13 Mar 2017 13:05:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170312131052.GA21816@singhal-Inspiron-5558>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23199/Mon Mar 13 05:12:29 2017)

On 03/12/2017 02:10 PM, simran singhal wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/iio/gyro/adis16060_core.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> index c9d46e7..90a3a18 100644
> --- a/drivers/staging/iio/gyro/adis16060_core.c
> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> @@ -29,11 +29,13 @@
>   * @us_r:		actual spi_device to read back data
>   * @buf:		transmit or receive buffer
>   * @buf_lock:		mutex to protect tx and rx
> + * @lock:		protect sensor state
>   **/
>  struct adis16060_state {
>  	struct spi_device		*us_w;
>  	struct spi_device		*us_r;
>  	struct mutex			buf_lock;
> +	struct mutex			lock;	 /* protect sensor state */

There should be no need to have two locks here. One should be enough. The
buf_lock protects both the adis16060_spi_write() and adis16060_spi_read()
functions. But both are always called in a pair. First write, then read. You
can refactor the code to have one single function
adis16060_spi_write_than_read() which is protected by the existing buf_lock.


>  
>  	u8 buf[3] ____cacheline_aligned;
>  };
> @@ -87,7 +89,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
>  		/* Take the iio_dev status lock */
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->lock);
>  		ret = adis16060_spi_write(indio_dev, chan->address);
>  		if (ret < 0)
>  			goto out_unlock;
> @@ -96,7 +98,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  		if (ret < 0)
>  			goto out_unlock;
>  
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->lock);
>  		*val = tval;
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_OFFSET:
> @@ -112,7 +114,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  	return -EINVAL;
>  
>  out_unlock:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  	return ret;
>  }
>  
> 


