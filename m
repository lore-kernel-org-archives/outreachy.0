X-GM-THRID: 6396911598060961792
X-Received: by 10.99.222.21 with SMTP id f21mr17829285pgg.23.1489405161072;
        Mon, 13 Mar 2017 04:39:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls2366817otb.8.gmail; Mon, 13 Mar 2017
 04:39:20 -0700 (PDT)
X-Received: by 10.157.46.92 with SMTP id c28mr14192912otd.145.1489405160421;
        Mon, 13 Mar 2017 04:39:20 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id f187si2298139ywc.0.2017.03.13.04.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 04:39:19 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOJk-0007en-Kf; Mon, 13 Mar 2017 12:39:13 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOJk-00078k-9W; Mon, 13 Mar 2017 12:39:12 +0100
Subject: Re: [PATCH 2/2] staging: iio: adis16240: Modify existing comment.
To: Varsha Rao <rvarsha016@gmail.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, linux-iio@vger.kernel.org
References: <cover.1489395260.git.rvarsha016@gmail.com>
 <58c66533.42d5620a.3e22a.3a06@mx.google.com>
Cc: outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <5a05de57-4d0d-f066-1966-f39865e126ce@metafoo.de>
Date: Mon, 13 Mar 2017 12:39:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <58c66533.42d5620a.3e22a.3a06@mx.google.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23199/Mon Mar 13 05:12:29 2017)

On 03/13/2017 10:23 AM, Varsha Rao wrote:
> Modify the existing comment to reflect the changes from mlock to
> txrx_lock.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16240.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index c182b2d..aa3030c 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -231,7 +231,7 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct adis *st = iio_priv(indio_dev);
>  
> -	/* Take the iio_dev status lock */
> +	/* Take adis txrx_lock to protect sensor state */

This should be part of the patch that changes the lock.

>  	mutex_lock(&st->txrx_lock);
>  	ret =  adis16240_spi_read_signed(dev, attr, buf, 12);
>  	mutex_unlock(&st->txrx_lock);
> 


