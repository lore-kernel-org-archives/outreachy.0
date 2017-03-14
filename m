X-GM-THRID: 6397400318166958080
X-Received: by 10.99.126.7 with SMTP id z7mr19032213pgc.130.1489511521063;
        Tue, 14 Mar 2017 10:12:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.18 with SMTP id v18ls2432151itc.7.canary-gmail; Tue, 14
 Mar 2017 10:11:59 -0700 (PDT)
X-Received: by 10.99.110.139 with SMTP id j133mr21439307pgc.55.1489511519843;
        Tue, 14 Mar 2017 10:11:59 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id n63si2827508ywb.7.2017.03.14.10.11.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 10:11:59 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnpzE-0002Zu-LB; Tue, 14 Mar 2017 18:11:53 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnpzE-0003k1-As; Tue, 14 Mar 2017 18:11:52 +0100
Subject: Re: [PATCH] staging: iio: accel: replace mlock with driver private
 lock
To: Aishwarya Pant <aishpant@gmail.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20170313235754.GA18423@aishwarya>
Cc: outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <69d0fa64-371f-88df-8109-7d483f5fa781@metafoo.de>
Date: Tue, 14 Mar 2017 18:11:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170313235754.GA18423@aishwarya>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23203/Tue Mar 14 13:13:21 2017)

On 03/14/2017 12:58 AM, Aishwarya Pant wrote:
> IIO subsystem is redefining iio_dev mlock to be used by IIO core only
> for protecting device operating mode changes.
> 
> In the driver adis164201, a struct adis16201_state has been introduced
> to store driver state information. Wherever iio_dev->mlock was used to
> protect hardware state changes, it has been replaced by driver private
> lock.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16201.c | 34 ++++++++++++++++++++--------------
>  1 file changed, 20 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
> index d6c8658..6d84eae 100644
> --- a/drivers/staging/iio/accel/adis16201.c
> +++ b/drivers/staging/iio/accel/adis16201.c
> @@ -150,6 +150,11 @@
>  
>  #define ADIS16201_ERROR_ACTIVE          BIT(14)
>  
> +struct adis16201_state {
> +	struct adis adis; /* adis device */
> +	struct mutex lock; /* protect state changes */
> +};
> +
>  enum adis16201_scan {
>  	ADIS16201_SCAN_ACC_X,
>  	ADIS16201_SCAN_ACC_Y,
> @@ -172,7 +177,7 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
>  			      int *val, int *val2,
>  			      long mask)
>  {
> -	struct adis *st = iio_priv(indio_dev);
> +	struct adis16201_state *st = iio_priv(indio_dev);
>  	int ret;
>  	int bits;
>  	u8 addr;
> @@ -223,17 +228,17 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
>  		default:
>  			return -EINVAL;
>  		}
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->lock);

I think this lock could simply be removed completely. adis_read_reg_16() is
already atomic and there is nothing else to protect here.

>  		addr = adis16201_addresses[chan->scan_index];
> -		ret = adis_read_reg_16(st, addr, &val16);
> +		ret = adis_read_reg_16(&st->adis, addr, &val16);
>  		if (ret) {
> -			mutex_unlock(&indio_dev->mlock);
> +			mutex_unlock(&st->lock);
>  			return ret;
>  		}
>  		val16 &= (1 << bits) - 1;
>  		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
>  		*val = val16;
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->lock);
>  		return IIO_VAL_INT;
>  	}
>  	return -EINVAL;


