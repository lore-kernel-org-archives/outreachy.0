X-GM-THRID: 6470276694187966464
X-Received: by 10.25.225.150 with SMTP id l22mr14713lfk.33.1506487795741;
        Tue, 26 Sep 2017 21:49:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.198 with SMTP id q64ls110323wrb.7.gmail; Tue, 26 Sep
 2017 21:49:54 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAopXiwUtTnUJrottcCzOw9Dt/H1nTE/QUYL86y2hE7cgHZa3vEtaw6IFUzzwgt6kQ7m3qV
X-Received: by 10.28.21.65 with SMTP id 62mr35996wmv.22.1506487794764;
        Tue, 26 Sep 2017 21:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506487794; cv=none;
        d=google.com; s=arc-20160816;
        b=Mr4wBXzN+SdUCltOV3j5O51OjIckvilLlm13j+WwdFs8JxFRhyY6MmqDh/+Xpw2lhL
         a7lBHAh/VolpEo+KU5SBCJ6pFwn2DA8T5JOJLSIZR8nY0wGam0ZpaMA1ngvKpqF1H8nX
         fKFYBBhLY4BflGCLFBclKIZut/2R2LDzbNfzqfr4iy3M6+1i2L7engKiA1kwpw/I9ycw
         GpFqs2ohaNIVHVrF6/FT2WNzDkFZUW8L0v2y8cb50mi88t2QSArek0ng8Bx5CSWUq+nR
         z/WlpjqLNOjmyNUTNUNXqJdYsy5CRNASXFYnMSalll25YvRc0HEFoMhecLipVUnAzN5r
         OiiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=K4DU6uwnduTG7e9gQhKXi8LoDTfRzuio1RN2EAeGYSk=;
        b=CwjKT28siRy8JDsIcXHlCkgQXeq3AypWTkiFPpOL5dCBj2leG3yb8pGn4KecugbfI6
         Y6+ktJAOwxXJjnFr37RX3uggF74Pel6OQv8ZF9keFLMqI2dKb1nP8EooZHJjKsjjt5ls
         I8pJpP2VOunCTF5q3eaeSwyBw/4QeKEFxg0oCQEAwJFZ13vi0DdE8PCjQdQtRwNYePRg
         9FLe2FK5Lqv4dqG6jnk4sXXZENxie87FS7luh1a+5jvWO38ZPd1aOj2qKLnA7X9X1Y/O
         KXSBBTtwuDU9fc1jRuhVxy2JUbC58egoi1ZxdcAfrTOEzEvjIj2bCTU70gBukZ6sN2yj
         OGkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si381940wmi.2.2017.09.26.21.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 21:49:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,443,1500933600"; 
   d="scan'208";a="292878110"
Received: from unknown (HELO hadrien.local) ([93.83.33.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Sep 2017 06:49:54 +0200
Date: Wed, 27 Sep 2017 06:49:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, hennerich@blackfin.uclinux.org, 
    jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: adc: ad7192: use
 driver private lock to protect hardware changes
In-Reply-To: <1506478672-5937-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709270645440.2790@hadrien>
References: <1506478672-5937-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Sep 2017, Aastha Gupta wrote:

> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.

Up to here, this is much easier to understand.  Although I don't think
"devices global data" is correct.  Driver-specific state seems better.

> Also, private driver lock is being used to protect hardware
> state changes as here state variables are being changed.

This I don't understand at all.  If you refer to the same thing twice, you
should use the same terminology.  It seems that "lock in the devices
global state" has become "private driver lock".It is not clear that these
are the same thing.  And in this case you are adding locking where there
was none before.  Why was it not needed before but it is needed now?

julia

> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> changes in v3:
> 	- combined patch 1 and patch 2 into one patch
>
>  drivers/staging/iio/adc/ad7192.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index d11c6de..609a649 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -162,6 +162,7 @@ struct ad7192_state {
>  	u32				scale_avail[8][2];
>  	u8				gpocon;
>  	u8				devid;
> +	struct mutex			lock;
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
>  			return IIO_VAL_INT_PLUS_NANO;
>  		case IIO_TEMP:
>  			*val = 0;
> @@ -510,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>  	switch (mask) {
>  	case IIO_CHAN_INFO_SCALE:
>  		ret = -EINVAL;
> +		mutex_lock(&st->lock);
>  		for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
>  			if (val2 == st->scale_avail[i][1]) {
>  				ret = 0;
> @@ -523,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>  				ad7192_calibrate_all(st);
>  				break;
>  			}
> +		mutex_unlock(&st->lock);
>  		break;
>  	case IIO_CHAN_INFO_SAMP_FREQ:
>  		if (!val) {
> @@ -634,6 +637,8 @@ static int ad7192_probe(struct spi_device *spi)
>
>  	st = iio_priv(indio_dev);
>
> +	mutex_init(&st->lock);
> +
>  	st->avdd = devm_regulator_get(&spi->dev, "avdd");
>  	if (IS_ERR(st->avdd))
>  		return PTR_ERR(st->avdd);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506478672-5937-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

