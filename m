X-GM-THRID: 6396883163908407296
X-Received: by 10.99.112.77 with SMTP id a13mr15807058pgn.168.1489406100013;
        Mon, 13 Mar 2017 04:55:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.76 with SMTP id e73ls4089586ioe.46.gmail; Mon, 13 Mar
 2017 04:54:58 -0700 (PDT)
X-Received: by 10.99.241.69 with SMTP id o5mr14687267pgk.167.1489406098868;
        Mon, 13 Mar 2017 04:54:58 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id d67si1969329ywb.3.2017.03.13.04.54.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 04:54:58 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOYz-0008Si-OG; Mon, 13 Mar 2017 12:54:57 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOYz-0005jz-GG; Mon, 13 Mar 2017 12:54:57 +0100
Subject: Re: [PATCH v3 1/2] staging: iio: ad9834: Use private driver lock
 instead of mlock
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <cover.1489389769.git.karniksayli1995@gmail.com>
 <24fc8a025e0c56abfa57e38acef17a32a1e54934.1489389769.git.karniksayli1995@gmail.com>
Cc: linux-iio@vger.kernel.org,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <742f81fc-c8e3-d76e-5624-14cfe5803534@metafoo.de>
Date: Mon, 13 Mar 2017 12:54:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <24fc8a025e0c56abfa57e38acef17a32a1e54934.1489389769.git.karniksayli1995@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23199/Mon Mar 13 05:12:29 2017)

On 03/13/2017 08:35 AM, sayli karnik wrote:
> iio_dev->mlock should be used by the IIO core only for protecting
> device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
> INDIO_BUFFER_* modes.
> Replace mlock with a lock in the device's global data to protect
> hardware state changes.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

This looks OK, but there is one issue with this patch(and all the other lock
changes). The lock needs to be initialized before it can be used. You need
to call mutex_init() inside the probe function before the lock is used the
first time.

> ---
> v2:
> Fixed mistake by changing mutex_lock() to mutex_unlock()
> 
>  drivers/staging/iio/frequency/ad9834.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index f92ff7f..60461a6 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -63,6 +63,7 @@
>   * @msg:		default spi message
>   * @freq_xfer:		tuning word spi transfer
>   * @freq_msg:		tuning word spi message
> + * @lock:		protect sensor state
>   * @data:		spi transmit buffer
>   * @freq_data:		tuning word spi transmit buffer
>   */
> @@ -77,6 +78,7 @@ struct ad9834_state {
>  	struct spi_message		msg;
>  	struct spi_transfer		freq_xfer[2];
>  	struct spi_message		freq_msg;
> +	struct mutex                    lock;   /* protect sensor state */
>  
>  	/*
>  	 * DMA (thus cache coherency maintenance) requires the
> @@ -149,7 +151,7 @@ static ssize_t ad9834_write(struct device *dev,
>  	if (ret)
>  		goto error_ret;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  	switch ((u32)this_attr->address) {
>  	case AD9834_REG_FREQ0:
>  	case AD9834_REG_FREQ1:
> @@ -207,7 +209,7 @@ static ssize_t ad9834_write(struct device *dev,
>  	default:
>  		ret = -ENODEV;
>  	}
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  error_ret:
>  	return ret ? ret : len;
> @@ -224,7 +226,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>  	int ret = 0;
>  	bool is_ad9833_7 = (st->devid == ID_AD9833) || (st->devid == ID_AD9837);
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  
>  	switch ((u32)this_attr->address) {
>  	case 0:
> @@ -267,7 +269,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>  		st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
>  		ret = spi_sync(st->spi, &st->msg);
>  	}
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  	return ret ? ret : len;
>  }
> 


