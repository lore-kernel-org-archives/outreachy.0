X-GM-THRID: 6396932116719861760
X-Received: by 10.107.3.224 with SMTP id e93mr8993723ioi.59.1489405960506;
        Mon, 13 Mar 2017 04:52:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls2385246otr.34.gmail; Mon, 13 Mar
 2017 04:52:39 -0700 (PDT)
X-Received: by 10.157.2.69 with SMTP id 63mr14378147otb.4.1489405959914;
        Mon, 13 Mar 2017 04:52:39 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id f187si2301898ywc.0.2017.03.13.04.52.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 04:52:39 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOWk-000873-Hl; Mon, 13 Mar 2017 12:52:38 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnOWk-0003yj-9d; Mon, 13 Mar 2017 12:52:38 +0100
Subject: Re: [PATCH] staging: iio: ad7192: Replace mlock with private driver
 lock
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20170313104307.GA12480@sayli-HP-15-Notebook-PC>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <a81ede74-f294-7ccc-5e0d-431eae058128@metafoo.de>
Date: Mon, 13 Mar 2017 12:52:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170313104307.GA12480@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23199/Mon Mar 13 05:12:29 2017)

On 03/13/2017 11:43 AM, sayli karnik wrote:
> indio_dev->mlock should be used by the IIO core only for protecting
> device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
> INDIO_BUFFER_* modes.
> Replace mlock with a lock in the device's global data to protect
> hardware state changes.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 4fc8588..bed48e7 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -162,6 +162,7 @@ struct ad7192_state {
>  	u32				scale_avail[8][2];
>  	u8				gpocon;
>  	u8				devid;
> +	struct mutex			lock;	/* protect sensor state */
>  
>  	struct ad_sigma_delta		sd;
>  };
> @@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
>  	case IIO_CHAN_INFO_SCALE:
>  		switch (chan->type) {
>  		case IIO_VOLTAGE:
> -			mutex_lock(&indio_dev->mlock);
> +			mutex_lock(&st->lock);
>  			*val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
>  			*val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
> -			mutex_unlock(&indio_dev->mlock);
> +			mutex_unlock(&st->lock);

Sorry, but this does not make too much sense. If this is the only place
where the lock is used there isn't really any mutual exclusion going on
since it doesn't prevent any other code from running concurrently.

The purpose of taking the lock here is that st->conf is in a consistent
state and is not in the process of being changed.

>  			return IIO_VAL_INT_PLUS_NANO;
>  		case IIO_TEMP:
>  			*val = 0;
> 


