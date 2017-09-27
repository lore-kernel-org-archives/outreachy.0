X-GM-THRID: 6470342242879930368
X-Received: by 10.46.43.93 with SMTP id q90mr35766lje.3.1506495308702;
        Tue, 26 Sep 2017 23:55:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.87 with SMTP id y23ls157907ljd.11.gmail; Tue, 26 Sep
 2017 23:55:07 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA4qGGjkm34U9l7eaNslpfVl3UdsnlwWSiD8mM5STMOsxOJnt6h0PE5a/azD12bB5GBwOse
X-Received: by 10.25.205.75 with SMTP id d72mr40742lfg.19.1506495307203;
        Tue, 26 Sep 2017 23:55:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506495307; cv=none;
        d=google.com; s=arc-20160816;
        b=xsh4Ia6VBKNHW7k4YzkHB2R+maEavpxfTXnOFc9BUCzR32BBhaOdMBgmsKrluTp1rd
         Z4mqjDXZI2pApwYyeXywf6E9Cu++4g50EazfCLZ65VcSNpgR1fZMB2L9LY2uUdckvl5W
         /kLTLkCQ0+MtVAGn/wroEkPWetQHVk2lALx55pj3uZclWeyRajUeTyBlsTAEu/OiFxfr
         taEOAyjh/rnpHsdkbjxl+Gl4C3utLYeuZoOBlzOVFcYifpXX7GlzUmxX4fRXp9VGNEmf
         ZBUR6IdosoL1CMn0As3SsdxXajlG4iIe+4dhYX5tnTR3D8Pq8bu56GY+J/kW3ufMTvbI
         rQ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=XxOuxarSsCbeZ2MeMRAXLAGin9a9h9k5B618A00sI10=;
        b=UD8oLAalwRq2A4TV7dV7QG2OI8MPSawG4/S/As5HN1DWmfWFTbwzljMxFHWzOO2ORv
         88+dK10Jp8g/revzOJrPFE2c5cwKzAb4mr90pMYPPfp9/3Xe7mTCf175gFd+bkn0bBc9
         L0twgr/zh/KpQ1iE2kuDtPoJnIW7zPmNqjb7Gpql0Zobw8ViYrfBIPWyACxfG+LPR/Lr
         KwshrVj67noEENqgajymXplxQbugKn30G2C4P6RyIl/8bpuGWnlwJhRlVPqtN0eHOq7q
         +fTgE8Jv3tkvaFmYNHuWJUpGIHJhqLtCEGw0wOe7IOi3tLS1ZTXNrXvuWHp4ynLwxbSf
         1kTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t142si1026715wmt.2.2017.09.26.23.55.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 23:55:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,443,1500933600"; 
   d="scan'208";a="292892710"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Sep 2017 08:55:06 +0200
Date: Wed, 27 Sep 2017 08:55:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, hennerich@blackfin.uclinux.org, 
    jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v4] staging: iio: adc: ad7192: use
 driver private lock to protect hardware state changes
In-Reply-To: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709270854410.3186@hadrien>
References: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Sep 2017, Aastha Gupta wrote:

> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a driver private lock.
>
> Also, as there are state changes in the ad7192_ write_raw function, a lock
> is added to prevent the concurrent state changes.

Why was it not needed before?

julia

>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> changes in v4:
> 	- added comment for mutex
> 	- improved commit message
>  drivers/staging/iio/adc/ad7192.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index d11c6de..c1343ec 100644
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506493919-3189-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

