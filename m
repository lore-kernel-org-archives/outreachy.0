X-GM-THRID: 6401527449864110080
X-Received: by 10.99.102.68 with SMTP id a65mr2061128pgc.68.1490865638428;
        Thu, 30 Mar 2017 02:20:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls6374993ion.18.gmail; Thu, 30 Mar 2017
 02:20:37 -0700 (PDT)
X-Received: by 10.36.17.13 with SMTP id 13mr916480itf.34.1490865637825;
        Thu, 30 Mar 2017 02:20:37 -0700 (PDT)
Received: by 10.55.156.65 with SMTP id f62msqke;
        Thu, 30 Mar 2017 01:20:09 -0700 (PDT)
X-Received: by 10.28.198.12 with SMTP id w12mr155668wmf.0.1490862009276;
        Thu, 30 Mar 2017 01:20:09 -0700 (PDT)
Return-Path: <pmeerw@pmeerw.net>
Received: from vps.pmeerw.net (ns.pmeerw.net. [84.19.176.117])
        by gmr-mx.google.com with ESMTPS id l138si155733wmg.0.2017.03.30.01.20.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 Mar 2017 01:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmeerw@pmeerw.net designates 84.19.176.117 as permitted sender) client-ip=84.19.176.117;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pmeerw.net;
       spf=pass (google.com: domain of pmeerw@pmeerw.net designates 84.19.176.117 as permitted sender) smtp.mailfrom=pmeerw@pmeerw.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=pmeerw.net
Received: by vps.pmeerw.net (Postfix, from userid 1000)
	id B11E2E058B; Thu, 30 Mar 2017 10:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=pmeerw.net; s=mail;
	t=1490862008; bh=B7foF70yhEDTCjTM/a5nRmnGTREb56pLcJyrvuDfh/Q=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=jYdCPqvTfI+QkmKT6/tsnj1PhCtybVFwfMQPzdNlcPUyHOWWrouMKa9BT/jS6cH0O
	 IdUHypYkU7/ZvjpTlavMUY4c7WqwzMltsHQ+gsHK2sVNpMN+yrRTA8AKJ7Mf7CgcIl
	 AkrGn3ASRkmUdmK7n0xPq1uUXreEWmRrNc5UNhzU=
Received: from localhost (localhost [127.0.0.1])
	by vps.pmeerw.net (Postfix) with ESMTP id 69F74E01AF;
	Thu, 30 Mar 2017 10:20:08 +0200 (CEST)
Date: Thu, 30 Mar 2017 10:20:08 +0200 (CEST)
From: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org, 
    lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org
Subject: Re: [RFC v2] staging: iio: update locking method during frequency
 writes
In-Reply-To: <1490855953-27552-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703301018510.14237@vps.pmeerw.net>
References: <1490855953-27552-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 30 Mar 2017, Gargi Sharma wrote:

> The driver needs to insure atomicity during frequency
> changes of bus and device. The iiodev->mlock as used
> was not doing that. Replace it with the drivers existing
> buffer lock and introduce an auxiliary spi_write() that does
> not hold the lock.

nitpicking below
 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v2:
>         - Added auxiliary function.
>         - Updated the buf_lock comment appropriately.
> ---
>  drivers/staging/iio/meter/ade7754.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index c8d2d4c..f371030 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -97,7 +97,7 @@
>  /**
>   * struct ade7754_state - device instance specific data
>   * @us:			actual spi_device
> - * @buf_lock:		mutex to protect tx and rx
> + * @buf_lock:		mutex to protect tx, rx and write frequency
>   * @tx:			transmit buffer
>   * @rx:			receive buffer
>   **/
> @@ -108,17 +108,29 @@ struct ade7754_state {
>  	u8			rx[ADE7754_MAX_RX];
>  };
>  
> -static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
> +/* Unlocked version of ade7754_spi_write_reg_8 function */
> +static int __ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>  {
>  	int ret;
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7754_state *st = iio_priv(indio_dev);
>  
> -	mutex_lock(&st->buf_lock);
>  	st->tx[0] = ADE7754_WRITE_REG(reg_address);
>  	st->tx[1] = val;
>  
>  	ret = spi_write(st->us, st->tx, 2);

return directly, so
return spi_write(st->us, st->tx, 2);
and no need for ret variable anymore

> +
> +	return ret;
> +}
> +
> +static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
> +{
> +	int ret;
> +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> +	struct ade7754_state *st = iio_priv(indio_dev);
> +
> +	mutex_lock(&st->buf_lock);
> +	ret = __ade7754_spi_write_reg_8(dev, reg_address, val);
>  	mutex_unlock(&st->buf_lock);
>  
>  	return ret;
> @@ -513,7 +525,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	if (!val)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->buf_lock);
>  
>  	t = 26000 / val;
>  	if (t > 0)
> @@ -531,10 +543,10 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	reg &= ~(3 << 3);
>  	reg |= t << 3;
>  
> -	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
> +	ret = __ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>  
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->buf_lock);
>  
>  	return ret ? ret : len;
>  }
> 

-- 

Peter Meerwald-Stadler
Mobile: +43 664 24 44 418

