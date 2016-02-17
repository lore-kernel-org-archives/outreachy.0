X-GM-THRID: 6252275562391273472
X-Received: by 10.25.210.201 with SMTP id j192mr352262lfg.6.1455721828816;
        Wed, 17 Feb 2016 07:10:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.80 with SMTP id e77ls871666lfb.16.gmail; Wed, 17 Feb
 2016 07:10:28 -0800 (PST)
X-Received: by 10.25.22.154 with SMTP id 26mr350044lfw.3.1455721828052;
        Wed, 17 Feb 2016 07:10:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si178611wmy.2.2016.02.17.07.10.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:10:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,461,1449529200"; 
   d="scan'208";a="165056331"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 16:10:26 +0100
Date: Wed, 17 Feb 2016 10:10:24 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: iio: tsl2x7x_core: adjust
 alignment to match open parenthesis
In-Reply-To: <1455721337-31883-2-git-send-email-eraretuya@gmail.com>
Message-ID: <alpine.DEB.2.10.1602171004500.4547@hadrien>
References: <1455721337-31883-1-git-send-email-eraretuya@gmail.com> <1455721337-31883-2-git-send-email-eraretuya@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 17 Feb 2016, Eva Rachel Retuya wrote:

> Properly align the parameters as pointed out by checkpatch.

Properly is not very descriptive.  Mentioning the open parenthesis would be
better.  If your message seems redundant with the checkpatch one, you could
say just "Issue detected using checkpach".  Because it is more important to
know what you did than to know what message checkpatch gave.

There are a couple places noted below where it seems like the newlines
could be added differently.

julia

>
> CHECK: Alignment should match open parenthesis
>
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/iio/light/tsl2x7x_core.c | 164 +++++++++++++++++--------------
>  1 file changed, 92 insertions(+), 72 deletions(-)
>
> diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
> index 2a62718..3cb9891 100644
> --- a/drivers/staging/iio/light/tsl2x7x_core.c
> +++ b/drivers/staging/iio/light/tsl2x7x_core.c
> @@ -349,13 +349,13 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>  	if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
>  		/* device is not enabled */
>  		dev_err(&chip->client->dev, "%s: device is not enabled\n",
> -				__func__);
> +			__func__);
>  		ret = -EBUSY;
>  		goto out_unlock;
>  	}
>
>  	ret = tsl2x7x_i2c_read(chip->client,
> -		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
> +			       (TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
>  	if (ret < 0) {
>  		dev_err(&chip->client->dev,
>  			"%s: Failed to read STATUS Reg\n", __func__);
> @@ -371,8 +371,8 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>
>  	for (i = 0; i < 4; i++) {
>  		ret = tsl2x7x_i2c_read(chip->client,
> -			(TSL2X7X_CMD_REG | (TSL2X7X_ALS_CHAN0LO + i)),
> -			&buf[i]);
> +				       (TSL2X7X_CMD_REG |
> +				       (TSL2X7X_ALS_CHAN0LO + i)), &buf[i]);

See if you could move the newline to the , rather than breaking up an
argument in this way.

>  		if (ret < 0) {
>  			dev_err(&chip->client->dev,
>  				"failed to read. err=%x\n", ret);
> @@ -382,9 +382,9 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>
>  	/* clear any existing interrupt status */
>  	ret = i2c_smbus_write_byte(chip->client,
> -		(TSL2X7X_CMD_REG |
> -				TSL2X7X_CMD_SPL_FN |
> -				TSL2X7X_CMD_ALS_INT_CLR));
> +				   (TSL2X7X_CMD_REG |
> +				   TSL2X7X_CMD_SPL_FN |
> +				   TSL2X7X_CMD_ALS_INT_CLR));
>  	if (ret < 0) {
>  		dev_err(&chip->client->dev,
>  			"i2c_write_command failed - err = %d\n", ret);
> @@ -488,7 +488,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
>  	}
>
>  	ret = tsl2x7x_i2c_read(chip->client,
> -		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &status);
> +			       (TSL2X7X_CMD_REG | TSL2X7X_STATUS), &status);
>  	if (ret < 0) {
>  		dev_err(&chip->client->dev, "i2c err=%d\n", ret);
>  		goto prox_poll_err;
> @@ -515,8 +515,8 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
>
>  	for (i = 0; i < 2; i++) {
>  		ret = tsl2x7x_i2c_read(chip->client,
> -			(TSL2X7X_CMD_REG |
> -					(TSL2X7X_PRX_LO + i)), &chdata[i]);
> +				       (TSL2X7X_CMD_REG |
> +				       (TSL2X7X_PRX_LO + i)), &chdata[i]);
>  		if (ret < 0)
>  			goto prox_poll_err;
>  	}
> @@ -542,19 +542,19 @@ static void tsl2x7x_defaults(struct tsl2X7X_chip *chip)
>  {
>  	/* If Operational settings defined elsewhere.. */
>  	if (chip->pdata && chip->pdata->platform_default_settings)
> -		memcpy(&(chip->tsl2x7x_settings),
> -			chip->pdata->platform_default_settings,
> -			sizeof(tsl2x7x_default_settings));
> +		memcpy(&chip->tsl2x7x_settings,
> +		       chip->pdata->platform_default_settings,
> +		       sizeof(tsl2x7x_default_settings));
>  	else
> -		memcpy(&(chip->tsl2x7x_settings),
> -			&tsl2x7x_default_settings,
> -			sizeof(tsl2x7x_default_settings));
> +		memcpy(&chip->tsl2x7x_settings,
> +		       &tsl2x7x_default_settings,
> +		       sizeof(tsl2x7x_default_settings));
>
>  	/* Load up the proper lux table. */
>  	if (chip->pdata && chip->pdata->platform_lux_table[0].ratio != 0)
>  		memcpy(chip->tsl2x7x_device_lux,
> -			chip->pdata->platform_lux_table,
> -			sizeof(chip->pdata->platform_lux_table));
> +		       chip->pdata->platform_lux_table,
> +		       sizeof(chip->pdata->platform_lux_table));
>  	else
>  		memcpy(chip->tsl2x7x_device_lux,
>  		(struct tsl2x7x_lux *)tsl2x7x_default_lux_table_group[chip->id],
> @@ -576,7 +576,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>  	int lux_val;
>
>  	ret = i2c_smbus_write_byte(chip->client,
> -			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
> +				   (TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
>  	if (ret < 0) {
>  		dev_err(&chip->client->dev,
>  			"failed to write CNTRL register, ret=%d\n", ret);
> @@ -592,7 +592,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>  	}
>
>  	ret = i2c_smbus_write_byte(chip->client,
> -			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
> +				   (TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
>  	if (ret < 0) {
>  		dev_err(&chip->client->dev,
>  			"failed to write ctrl reg: ret=%d\n", ret);
> @@ -609,7 +609,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>  	lux_val = tsl2x7x_get_lux(indio_dev);
>  	if (lux_val < 0) {
>  		dev_err(&chip->client->dev,
> -		"%s: failed to get lux\n", __func__);
> +			"%s: failed to get lux\n", __func__);

Maybe the newline is not needed?

>  		return lux_val;
>  	}
>
> @@ -620,7 +620,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>
>  	chip->tsl2x7x_settings.als_gain_trim = gain_trim_val;
>  	dev_info(&chip->client->dev,
> -		"%s als_calibrate completed\n", chip->client->name);
> +		 "%s als_calibrate completed\n", chip->client->name);
>
>  	return (int) gain_trim_val;
>  }
> @@ -699,7 +699,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>  	 * Power on the device 1st. */
>  	utmp = TSL2X7X_CNTL_PWR_ON;
>  	ret = i2c_smbus_write_byte_data(chip->client,
> -		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
> +					TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>  	if (ret < 0) {
>  		dev_err(&chip->client->dev,
>  			"%s: failed on CNTRL reg.\n", __func__);
> @@ -711,7 +711,8 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>  	for (i = 0, dev_reg = chip->tsl2x7x_config;
>  			i < TSL2X7X_MAX_CONFIG_REG; i++) {
>  		ret = i2c_smbus_write_byte_data(chip->client,
> -				TSL2X7X_CMD_REG + i, *dev_reg++);
> +						TSL2X7X_CMD_REG + i,
> +						*dev_reg++);

Maybe there could be one less line here.

>  		if (ret < 0) {
>  			dev_err(&chip->client->dev,
>  				"failed on write to reg %d.\n", i);
> @@ -727,7 +728,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>  			TSL2X7X_CNTL_ADC_ENBL |
>  			TSL2X7X_CNTL_PROX_DET_ENBL;
>  	ret = i2c_smbus_write_byte_data(chip->client,
> -			TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
> +					TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>  	if (ret < 0) {
>  		dev_err(&chip->client->dev,
>  			"%s: failed on 2nd CTRL reg.\n", __func__);
> @@ -741,12 +742,13 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>
>  		reg_val = TSL2X7X_CNTL_PWR_ON | TSL2X7X_CNTL_ADC_ENBL;
>  		if ((chip->tsl2x7x_settings.interrupts_en == 0x20) ||
> -			(chip->tsl2x7x_settings.interrupts_en == 0x30))
> +		    (chip->tsl2x7x_settings.interrupts_en == 0x30))
>  			reg_val |= TSL2X7X_CNTL_PROX_DET_ENBL;
>
>  		reg_val |= chip->tsl2x7x_settings.interrupts_en;
>  		ret = i2c_smbus_write_byte_data(chip->client,
> -			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL), reg_val);
> +						(TSL2X7X_CMD_REG |
> +						TSL2X7X_CNTRL), reg_val);
>  		if (ret < 0)
>  			dev_err(&chip->client->dev,
>  				"%s: failed in tsl2x7x_IOCTL_INT_SET.\n",
> @@ -754,8 +756,9 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>
>  		/* Clear out any initial interrupts  */
>  		ret = i2c_smbus_write_byte(chip->client,
> -			TSL2X7X_CMD_REG | TSL2X7X_CMD_SPL_FN |
> -			TSL2X7X_CMD_PROXALS_INT_CLR);
> +					   TSL2X7X_CMD_REG |
> +					   TSL2X7X_CMD_SPL_FN |
> +					   TSL2X7X_CMD_PROXALS_INT_CLR);
>  		if (ret < 0) {
>  			dev_err(&chip->client->dev,
>  				"%s: Failed to clear Int status\n",
> @@ -776,7 +779,7 @@ static int tsl2x7x_chip_off(struct iio_dev *indio_dev)
>  	chip->tsl2x7x_chip_status = TSL2X7X_CHIP_SUSPENDED;
>
>  	ret = i2c_smbus_write_byte_data(chip->client,
> -		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, 0x00);
> +					TSL2X7X_CMD_REG | TSL2X7X_CNTRL, 0x00);
>
>  	if (chip->pdata && chip->pdata->power_off)
>  		chip->pdata->power_off(chip->client);
> @@ -819,7 +822,7 @@ int tsl2x7x_invoke_change(struct iio_dev *indio_dev)
>
>  static
>  void tsl2x7x_prox_calculate(int *data, int length,
> -		struct tsl2x7x_prox_stat *statP)
> +			    struct tsl2x7x_prox_stat *statP)
>  {
>  	int i;
>  	int sample_sum;
> @@ -886,20 +889,21 @@ static void tsl2x7x_prox_cal(struct iio_dev *indio_dev)
>  		tsl2x7x_get_prox(indio_dev);
>  		prox_history[i] = chip->prox_data;
>  		dev_info(&chip->client->dev, "2 i=%d prox data= %d\n",
> -			i, chip->prox_data);
> +			 i, chip->prox_data);
>  	}
>
>  	tsl2x7x_chip_off(indio_dev);
>  	calP = &prox_stat_data[PROX_STAT_CAL];
>  	tsl2x7x_prox_calculate(prox_history,
> -		chip->tsl2x7x_settings.prox_max_samples_cal, calP);
> +			       chip->tsl2x7x_settings.prox_max_samples_cal,
> +			       calP);
>  	chip->tsl2x7x_settings.prox_thres_high = (calP->max << 1) - calP->mean;
>
>  	dev_info(&chip->client->dev, " cal min=%d mean=%d max=%d\n",
> -		calP->min, calP->mean, calP->max);
> +		 calP->min, calP->mean, calP->max);
>  	dev_info(&chip->client->dev,
> -		"%s proximity threshold set to %d\n",
> -		chip->client->name, chip->tsl2x7x_settings.prox_thres_high);
> +		 "%s proximity threshold set to %d\n",
> +		 chip->client->name, chip->tsl2x7x_settings.prox_thres_high);
>
>  	/* back to the way they were */
>  	chip->tsl2x7x_settings.interrupts_en = tmp_irq_settings;
> @@ -908,7 +912,8 @@ static void tsl2x7x_prox_cal(struct iio_dev *indio_dev)
>  }
>
>  static ssize_t tsl2x7x_power_state_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +					struct device_attribute *attr,
> +					char *buf)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
>
> @@ -916,7 +921,8 @@ static ssize_t tsl2x7x_power_state_show(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_power_state_store(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +					 struct device_attribute *attr,
> +					 const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	bool value;
> @@ -933,7 +939,8 @@ static ssize_t tsl2x7x_power_state_store(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_gain_available_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +					   struct device_attribute *attr,
> +					   char *buf)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
>
> @@ -950,13 +957,15 @@ static ssize_t tsl2x7x_gain_available_show(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_prox_gain_available_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +						struct device_attribute *attr,
> +						char *buf)
>  {
>  		return snprintf(buf, PAGE_SIZE, "%s\n", "1 2 4 8");
>  }
>
>  static ssize_t tsl2x7x_als_time_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +				     struct device_attribute *attr,
> +				     char *buf)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
>  	int y, z;
> @@ -970,7 +979,8 @@ static ssize_t tsl2x7x_als_time_show(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_als_time_store(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +				      struct device_attribute *attr,
> +				      const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
> @@ -986,7 +996,7 @@ static ssize_t tsl2x7x_als_time_store(struct device *dev,
>  			TSL2X7X_MAX_TIMER_CNT - (u8)result.fract;
>
>  	dev_info(&chip->client->dev, "%s: als time = %d",
> -		__func__, chip->tsl2x7x_settings.als_time);
> +		 __func__, chip->tsl2x7x_settings.als_time);
>
>  	tsl2x7x_invoke_change(indio_dev);
>
> @@ -997,7 +1007,8 @@ static IIO_CONST_ATTR(in_illuminance0_integration_time_available,
>  		".00272 - .696");
>
>  static ssize_t tsl2x7x_als_cal_target_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +					   struct device_attribute *attr,
> +					   char *buf)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
>
> @@ -1006,7 +1017,8 @@ static ssize_t tsl2x7x_als_cal_target_show(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_als_cal_target_store(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +					    struct device_attribute *attr,
> +					    const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
> @@ -1025,7 +1037,8 @@ static ssize_t tsl2x7x_als_cal_target_store(struct device *dev,
>
>  /* persistence settings */
>  static ssize_t tsl2x7x_als_persistence_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +					    struct device_attribute *attr,
> +					    char *buf)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
>  	int y, z, filter_delay;
> @@ -1041,7 +1054,8 @@ static ssize_t tsl2x7x_als_persistence_show(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +					     struct device_attribute *attr,
> +					     const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
> @@ -1063,7 +1077,7 @@ static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
>  	chip->tsl2x7x_settings.persistence |= (filter_delay & 0x0F);
>
>  	dev_info(&chip->client->dev, "%s: als persistence = %d",
> -		__func__, filter_delay);
> +		 __func__, filter_delay);
>
>  	tsl2x7x_invoke_change(indio_dev);
>
> @@ -1071,7 +1085,8 @@ static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_prox_persistence_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +					     struct device_attribute *attr,
> +					     char *buf)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
>  	int y, z, filter_delay;
> @@ -1087,7 +1102,8 @@ static ssize_t tsl2x7x_prox_persistence_show(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +					      struct device_attribute *attr,
> +					      const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
> @@ -1109,7 +1125,7 @@ static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
>  	chip->tsl2x7x_settings.persistence |= ((filter_delay << 4) & 0xF0);
>
>  	dev_info(&chip->client->dev, "%s: prox persistence = %d",
> -		__func__, filter_delay);
> +		 __func__, filter_delay);
>
>  	tsl2x7x_invoke_change(indio_dev);
>
> @@ -1117,7 +1133,8 @@ static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_do_calibrate(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +				    struct device_attribute *attr,
> +				    const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	bool value;
> @@ -1134,7 +1151,8 @@ static ssize_t tsl2x7x_do_calibrate(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_luxtable_show(struct device *dev,
> -	struct device_attribute *attr, char *buf)
> +				     struct device_attribute *attr,
> +				     char *buf)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
>  	int i = 0;
> @@ -1159,7 +1177,8 @@ static ssize_t tsl2x7x_luxtable_show(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_luxtable_store(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +				      struct device_attribute *attr,
> +				      const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
> @@ -1175,7 +1194,7 @@ static ssize_t tsl2x7x_luxtable_store(struct device *dev,
>  	 */
>  	n = value[0];
>  	if ((n % 3) || n < 6 ||
> -			n > ((ARRAY_SIZE(chip->tsl2x7x_device_lux) - 1) * 3)) {
> +	    n > ((ARRAY_SIZE(chip->tsl2x7x_device_lux) - 1) * 3)) {
>  		dev_info(dev, "LUX TABLE INPUT ERROR 1 Value[0]=%d\n", n);
>  		return -EINVAL;
>  	}
> @@ -1198,7 +1217,8 @@ static ssize_t tsl2x7x_luxtable_store(struct device *dev,
>  }
>
>  static ssize_t tsl2x7x_do_prox_calibrate(struct device *dev,
> -	struct device_attribute *attr, const char *buf, size_t len)
> +					 struct device_attribute *attr,
> +					 const char *buf, size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	bool value;
> @@ -1391,10 +1411,10 @@ static int tsl2x7x_read_raw(struct iio_dev *indio_dev,
>  }
>
>  static int tsl2x7x_write_raw(struct iio_dev *indio_dev,
> -			       struct iio_chan_spec const *chan,
> -			       int val,
> -			       int val2,
> -			       long mask)
> +			     struct iio_chan_spec const *chan,
> +			     int val,
> +			     int val2,
> +			     long mask)
>  {
>  	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
>
> @@ -1529,7 +1549,7 @@ static irqreturn_t tsl2x7x_event_handler(int irq, void *private)
>  	u8 value;
>
>  	value = i2c_smbus_read_byte_data(chip->client,
> -		TSL2X7X_CMD_REG | TSL2X7X_STATUS);
> +					 TSL2X7X_CMD_REG | TSL2X7X_STATUS);
>
>  	/* What type of interrupt do we need to process */
>  	if (value & TSL2X7X_STA_PRX_INTR) {
> @@ -1545,16 +1565,16 @@ static irqreturn_t tsl2x7x_event_handler(int irq, void *private)
>  	if (value & TSL2X7X_STA_ALS_INTR) {
>  		tsl2x7x_get_lux(indio_dev); /* freshen data for ABI */
>  		iio_push_event(indio_dev,
> -		       IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
> -					    0,
> -					    IIO_EV_TYPE_THRESH,
> -					    IIO_EV_DIR_EITHER),
> -					    timestamp);
> +			       IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
> +						    0,
> +						    IIO_EV_TYPE_THRESH,
> +						    IIO_EV_DIR_EITHER),
> +			       timestamp);
>  	}
>  	/* Clear interrupt now that we have handled it. */
>  	ret = i2c_smbus_write_byte(chip->client,
> -		TSL2X7X_CMD_REG | TSL2X7X_CMD_SPL_FN |
> -		TSL2X7X_CMD_PROXALS_INT_CLR);
> +				   TSL2X7X_CMD_REG | TSL2X7X_CMD_SPL_FN |
> +				   TSL2X7X_CMD_PROXALS_INT_CLR);
>  	if (ret < 0)
>  		dev_err(&chip->client->dev,
>  			"Failed to clear irq from event handler. err = %d\n",
> @@ -1857,7 +1877,7 @@ static const struct tsl2x7x_chip_info tsl2x7x_chip_info_tbl[] = {
>  };
>
>  static int tsl2x7x_probe(struct i2c_client *clientp,
> -	const struct i2c_device_id *id)
> +			 const struct i2c_device_id *id)
>  {
>  	int ret;
>  	unsigned char device_id;
> @@ -1873,14 +1893,14 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
>  	i2c_set_clientdata(clientp, indio_dev);
>
>  	ret = tsl2x7x_i2c_read(chip->client,
> -		TSL2X7X_CHIPID, &device_id);
> +			       TSL2X7X_CHIPID, &device_id);

Maybe the newline is not needed at all here?

>  	if (ret < 0)
>  		return ret;
>
>  	if ((!tsl2x7x_device_id(&device_id, id->driver_data)) ||
> -		(tsl2x7x_device_id(&device_id, id->driver_data) == -EINVAL)) {
> +	    (tsl2x7x_device_id(&device_id, id->driver_data) == -EINVAL)) {
>  		dev_info(&chip->client->dev,
> -				"%s: i2c device found does not match expected id\n",
> +			 "%s: i2c device found does not match expected id\n",
>  				__func__);
>  		return -EINVAL;
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455721337-31883-2-git-send-email-eraretuya%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

