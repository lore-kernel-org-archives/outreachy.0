X-GM-THRID: 6470101655297720320
X-Received: by 10.223.160.75 with SMTP id l11mr553832wrl.28.1506439000728;
        Tue, 26 Sep 2017 08:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.135 with SMTP id y129ls1191285lfc.9.gmail; Tue, 26 Sep
 2017 08:16:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB2ZepJNMuSXOC/sUmyjJays51Iip+p0awnRr1V/+vLdXx9nQTOv1Y+mKMo/S/PI0s4gafr
X-Received: by 10.25.202.17 with SMTP id a17mr951906lfg.6.1506438999213;
        Tue, 26 Sep 2017 08:16:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506438998; cv=none;
        d=google.com; s=arc-20160816;
        b=PR/eq7RT0W7kzTEd3BVVhtfzyk4wY2ddQb0jx1jCDqbVCPT+yUe2otNE9OZ2kLoSQJ
         kLCFd8mrZgIeNnz9oTQfhzmDpuQFH4dEC/MNYsTS8Gvd/yC1Sl5DKVvr4HB4aKmQioDn
         MXRZV/jyk6s8nTuLJO/u1QJQdY3lbR3u4T913evAv+N7nPofLrwslDyxNzv84UzEDdll
         PJk0m8BXIgUJT/bp4wgZyqwPXBQMefzAXC9o5utyR/WAO/ipYPVNOKqKmiPXEjEtZgZb
         vYN7BGXcMBeSED2rSLCASxcoHH826tvijjzenNdLBsM+s+ue+FnUXe73x1kg88PqKNle
         ngRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=MxZ+3sJTqlzojZz2cEfSOXzc0v7ojEvNVlKSF2Gs9DM=;
        b=xmnpI6QZ0XMo2gGxXfFtFURrxFoQQzu8ikb2QNdcisJt1/0uEr7pHRBEbZmFnQjVSn
         FoEgj+/NUdCSZ7Y8T0JhIceNFI0ux7ToAgSAWCvGQxqipTmFNl8YCNebplbYeFRdrRoP
         VS4bNyMbO3OqqU92DDkw3wA7rtyPBWyNEMK8YvNb/YchsVbdYuPKb3K2wVZyeOxK61aE
         CYy3nXhbZDfd7i+Zi+s4jj9I0NT6rzXFHjYZLor6wU8HBbQ9+L8cw4dTG25af6ndi+lD
         4QG6qGxookn6oiEol6lR1LpIbetqbLKkTCbLDutlDjH9dm9+4f5C7IZ5HgNnien+n72p
         k2Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b62si141785wmd.3.2017.09.26.08.16.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:16:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,441,1500933600"; 
   d="scan'208";a="238791740"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 17:16:37 +0200
Date: Tue, 26 Sep 2017 17:16:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, hennerich@blackfin.uclinux.org, 
    jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192: Replace
 mlock with driver private lock
In-Reply-To: <1506437917-7219-2-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709261714430.2866@hadrien>
References: <1506437917-7219-1-git-send-email-aastha.gupta4104@gmail.com> <1506437917-7219-2-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Aastha Gupta wrote:

> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.

At least from the point of view of someone who doesn't know this code, I
think that the commit message could be clearer.  For example, what is
mlock?  Is a special locking function?  A global variable?  It seems that
actually a field in some structre.  Why is the lock of that structure less
appropriate than the lock of the structure that you have chosen?

julia


>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index d11c6de..096d29d 100644
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
> @@ -634,6 +635,8 @@ static int ad7192_probe(struct spi_device *spi)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506437917-7219-2-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

