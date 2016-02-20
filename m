X-GM-THRID: 6253387026836488192
X-Received: by 10.194.216.3 with SMTP id om3mr2455766wjc.7.1455981291700;
        Sat, 20 Feb 2016 07:14:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.158.12 with SMTP id h12ls172366lfe.0.gmail; Sat, 20 Feb
 2016 07:14:50 -0800 (PST)
X-Received: by 10.25.22.154 with SMTP id 26mr2458009lfw.3.1455981290870;
        Sat, 20 Feb 2016 07:14:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si567175wmw.3.2016.02.20.07.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 07:14:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,476,1449529200"; 
   d="scan'208";a="165384633"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 16:14:49 +0100
Date: Sat, 20 Feb 2016 10:14:48 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: light: Remove __func__
 from dev_err
In-Reply-To: <1455980111-15231-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602201014150.2706@hadrien>
References: <1455980111-15231-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 20 Feb 2016, Bhumika Goyal wrote:

> This patch removes __func__ argument from dev_err as dev_err includes
> the function name in the log printout, so there is no need to
> include it manually.

No, it doesn't.  The function name should be left there if it is useful.

julia

> Found using coccinelle:
>
> @a@
> expression E;
> expression  msg;
> @@
>
> dev_err(E, msg, __func__);
>
> @script:python b@
> e << a.msg;
> y;
> @@
>
> if(e.find("%s: ") == True):
>         m = e.replace("%s: ", "");
>         coccinelle.y = m;
> elif(e.find("%s ") == True):
>         m = e.replace("%s ", "");
>         coccinelle.y = m;
> else:
>         m = e.replace("%s", "");
>
> @c@
> expression a.E, a.msg;
> identifier  b.y;
> @@
>
> - dev_err(E, msg, __func__);
> + dev_err(E, y);
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/iio/light/tsl2x7x_core.c | 38 +++++++++++---------------------
>  1 file changed, 13 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
> index 2a62718..348c9c2 100644
> --- a/drivers/staging/iio/light/tsl2x7x_core.c
> +++ b/drivers/staging/iio/light/tsl2x7x_core.c
> @@ -348,8 +348,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>
>  	if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
>  		/* device is not enabled */
> -		dev_err(&chip->client->dev, "%s: device is not enabled\n",
> -				__func__);
> +		dev_err(&chip->client->dev, "device is not enabled\n");
>  		ret = -EBUSY;
>  		goto out_unlock;
>  	}
> @@ -357,14 +356,12 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>  	ret = tsl2x7x_i2c_read(chip->client,
>  		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
>  	if (ret < 0) {
> -		dev_err(&chip->client->dev,
> -			"%s: Failed to read STATUS Reg\n", __func__);
> +		dev_err(&chip->client->dev, "Failed to read STATUS Reg\n");
>  		goto out_unlock;
>  	}
>  	/* is data new & valid */
>  	if (!(buf[0] & TSL2X7X_STA_ADC_VALID)) {
> -		dev_err(&chip->client->dev,
> -			"%s: data not valid yet\n", __func__);
> +		dev_err(&chip->client->dev, "data not valid yet\n");
>  		ret = chip->als_cur_info.lux; /* return LAST VALUE */
>  		goto out_unlock;
>  	}
> @@ -482,8 +479,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
>  	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
>
>  	if (mutex_trylock(&chip->prox_mutex) == 0) {
> -		dev_err(&chip->client->dev,
> -			"%s: Can't get prox mutex\n", __func__);
> +		dev_err(&chip->client->dev, "Can't get prox mutex\n");
>  		return -EBUSY;
>  	}
>
> @@ -586,8 +582,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>  	reg_val = i2c_smbus_read_byte(chip->client);
>  	if ((reg_val & (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON))
>  		!= (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON)) {
> -		dev_err(&chip->client->dev,
> -			"%s: failed: ADC not enabled\n", __func__);
> +		dev_err(&chip->client->dev, "failed: ADC not enabled\n");
>  		return -1;
>  	}
>
> @@ -602,14 +597,13 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>  	reg_val = i2c_smbus_read_byte(chip->client);
>  	if ((reg_val & TSL2X7X_STA_ADC_VALID) != TSL2X7X_STA_ADC_VALID) {
>  		dev_err(&chip->client->dev,
> -			"%s: failed: STATUS - ADC not valid.\n", __func__);
> +			"failed: STATUS - ADC not valid.\n");
>  		return -ENODATA;
>  	}
>
>  	lux_val = tsl2x7x_get_lux(indio_dev);
>  	if (lux_val < 0) {
> -		dev_err(&chip->client->dev,
> -		"%s: failed to get lux\n", __func__);
> +		dev_err(&chip->client->dev, "failed to get lux\n");
>  		return lux_val;
>  	}
>
> @@ -701,8 +695,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>  	ret = i2c_smbus_write_byte_data(chip->client,
>  		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>  	if (ret < 0) {
> -		dev_err(&chip->client->dev,
> -			"%s: failed on CNTRL reg.\n", __func__);
> +		dev_err(&chip->client->dev, "failed on CNTRL reg.\n");
>  		return ret;
>  	}
>
> @@ -729,8 +722,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>  	ret = i2c_smbus_write_byte_data(chip->client,
>  			TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>  	if (ret < 0) {
> -		dev_err(&chip->client->dev,
> -			"%s: failed on 2nd CTRL reg.\n", __func__);
> +		dev_err(&chip->client->dev, "failed on 2nd CTRL reg.\n");
>  		return ret;
>  	}
>
> @@ -749,8 +741,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>  			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL), reg_val);
>  		if (ret < 0)
>  			dev_err(&chip->client->dev,
> -				"%s: failed in tsl2x7x_IOCTL_INT_SET.\n",
> -				__func__);
> +				"failed in tsl2x7x_IOCTL_INT_SET.\n");
>
>  		/* Clear out any initial interrupts  */
>  		ret = i2c_smbus_write_byte(chip->client,
> @@ -758,8 +749,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>  			TSL2X7X_CMD_PROXALS_INT_CLR);
>  		if (ret < 0) {
>  			dev_err(&chip->client->dev,
> -				"%s: Failed to clear Int status\n",
> -				__func__);
> +				"Failed to clear Int status\n");
>  		return ret;
>  		}
>  	}
> @@ -1919,8 +1909,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
>  						"TSL2X7X_event",
>  						indio_dev);
>  		if (ret) {
> -			dev_err(&clientp->dev,
> -				"%s: irq request failed", __func__);
> +			dev_err(&clientp->dev, "irq request failed");
>  			return ret;
>  		}
>  	}
> @@ -1932,8 +1921,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
>
>  	ret = iio_device_register(indio_dev);
>  	if (ret) {
> -		dev_err(&clientp->dev,
> -			"%s: iio registration failed\n", __func__);
> +		dev_err(&clientp->dev, "iio registration failed\n");
>  		return ret;
>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455980111-15231-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

