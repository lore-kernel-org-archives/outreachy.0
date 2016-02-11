X-GM-THRID: 6250059411855769600
X-Received: by 10.25.170.7 with SMTP id t7mr4766237lfe.2.1455205555324;
        Thu, 11 Feb 2016 07:45:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.29.198 with SMTP id d189ls229128lfd.56.gmail; Thu, 11 Feb
 2016 07:45:54 -0800 (PST)
X-Received: by 10.112.77.169 with SMTP id t9mr5593782lbw.8.1455205554426;
        Thu, 11 Feb 2016 07:45:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si238334wmv.1.2016.02.11.07.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:45:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,431,1449529200"; 
   d="scan'208";a="202676299"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 16:45:54 +0100
Date: Thu, 11 Feb 2016 16:45:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Remove parentheses on
 the right hand side of assignment
In-Reply-To: <20160211204155.GA3822@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602111644580.2508@hadrien>
References: <20160211204155.GA3822@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 11 Feb 2016, Janani Ravichandran wrote:

> Remove parentheses on the right hand side of assignment as they are not
> needed. Semantic patch used:
>
> @@
> expression a, b, c, d;
> @@
>
> (
>   a = (c == d)
> |
>   a =
> - (
>   b
> - )

Just for information, not because you should do anything about it, you
could write this semantic patch with three metavariables rather than four.
The metavariables in the different branches of a disjunction don't
interfere with each other.

julia

> )
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/iio/accel/lis3l02dq_core.c | 4 ++--
>  drivers/staging/iio/cdc/ad7746.c           | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/staging/iio/accel/lis3l02dq_core.c
> index 7939ae6..7a6fed3 100644
> --- a/drivers/staging/iio/accel/lis3l02dq_core.c
> +++ b/drivers/staging/iio/accel/lis3l02dq_core.c
> @@ -567,7 +567,7 @@ static int lis3l02dq_read_event_config(struct iio_dev *indio_dev,
>  {
>  	u8 val;
>  	int ret;
> -	u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
> +	u8 mask = 1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING));
>
>  	ret = lis3l02dq_spi_read_reg_8(indio_dev,
>  				       LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
> @@ -622,7 +622,7 @@ static int lis3l02dq_write_event_config(struct iio_dev *indio_dev,
>  	u8 val, control;
>  	u8 currentlyset;
>  	bool changed = false;
> -	u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
> +	u8 mask = 1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING));
>
>  	mutex_lock(&indio_dev->mlock);
>  	/* read current control */
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 2c5d277..5771d4ee 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -529,8 +529,8 @@ static int ad7746_write_raw(struct iio_dev *indio_dev,
>
>  		val /= 338646;
>
> -		chip->capdac[chan->channel][chan->differential] = (val > 0 ?
> -			AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0);
> +		chip->capdac[chan->channel][chan->differential] = val > 0 ?
> +			AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0;
>
>  		ret = i2c_smbus_write_byte_data(chip->client,
>  			AD7746_REG_CAPDACA,
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160211204155.GA3822%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>

