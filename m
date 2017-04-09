X-GM-THRID: 6400749553719443456
X-Received: by 10.99.171.15 with SMTP id p15mr17969933pgf.54.1491732441961;
        Sun, 09 Apr 2017 03:07:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.209 with SMTP id 75ls9800672oth.27.gmail; Sun, 09 Apr
 2017 03:07:21 -0700 (PDT)
X-Received: by 10.129.160.12 with SMTP id x12mr2184227ywg.90.1491732441255;
        Sun, 09 Apr 2017 03:07:21 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id n22si305953itg.2.2017.04.09.03.07.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Apr 2017 03:07:21 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cx9kZ-00017i-Bi; Sun, 09 Apr 2017 12:07:15 +0200
Received: from [93.104.166.200] (helo=[192.168.178.41])
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cx9kZ-0001zJ-31; Sun, 09 Apr 2017 12:07:15 +0200
Subject: Re: [PATCH] staging: iio: ad5933: Protect DIRECT mode using
 claim/release helpers
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>,
 Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org
References: <1490290603-9115-1-git-send-email-narcisaanamaria12@gmail.com>
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <cb6f9e84-7b2b-2bb1-4e0a-742a0cc12ab0@metafoo.de>
Date: Sun, 9 Apr 2017 12:07:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <1490290603-9115-1-git-send-email-narcisaanamaria12@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23280/Sun Apr  9 06:43:07 2017)

On 03/23/2017 06:36 PM, Narcisa Ana Maria Vasile wrote:
[...]
> @@ -415,7 +420,10 @@ static ssize_t ad5933_store(struct device *dev,
>  			return ret;
>  	}
>  
> -	mutex_lock(&indio_dev->mlock);
> +	ret = iio_device_claim_direct_mode(indio_dev);
> +	if (ret)
> +		return ret;

This is a change in semantics. Previously it was possible to change the
attributes while in buffered mode, but now it no longer is. This is probably
OK, but should certainly be noted in the commit message.

> +	mutex_lock(&st->lock);
>  	switch ((u32)this_attr->address) {
>  	case AD5933_OUT_RANGE:
>  		ret = -EINVAL;
> @@ -465,7 +473,8 @@ static ssize_t ad5933_store(struct device *dev,
>  		ret = -EINVAL;
>  	}
>  
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
> +	iio_device_release_direct_mode(indio_dev);
>  	return ret ? ret : len;
>  }
>  
> @@ -532,11 +541,9 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
>  
>  	switch (m) {
>  	case IIO_CHAN_INFO_RAW:
> -		mutex_lock(&indio_dev->mlock);
> -		if (iio_buffer_enabled(indio_dev)) {
> -			ret = -EBUSY;
> -			goto out;
> -		}
> +		ret = iio_device_claim_direct_mode(indio_dev);
> +		if (ret)
> +			return ret;
>  		ret = ad5933_cmd(st, AD5933_CTRL_MEASURE_TEMP);
>  		if (ret < 0)
>  			goto out;
> @@ -549,7 +556,7 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
>  				      2, (u8 *)&dat);
>  		if (ret < 0)
>  			goto out;
> -		mutex_unlock(&indio_dev->mlock);
> +		iio_device_release_direct_mode(indio_dev);
>  		*val = sign_extend32(be16_to_cpu(dat), 13);
>  
>  		return IIO_VAL_INT;
> @@ -561,7 +568,7 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
>  
>  	return -EINVAL;
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	iio_device_release_direct_mode(indio_dev);
>  	return ret;
>  }
>  


