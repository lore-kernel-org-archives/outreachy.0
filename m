X-GM-THRID: 6261077782348955648
X-Received: by 10.50.97.105 with SMTP id dz9mr5100748igb.8.1457770774705;
        Sat, 12 Mar 2016 00:19:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.102.73 with SMTP id fm9ls342365igb.44.gmail; Sat, 12 Mar
 2016 00:19:34 -0800 (PST)
X-Received: by 10.107.148.84 with SMTP id w81mr10020889iod.20.1457770774386;
        Sat, 12 Mar 2016 00:19:34 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si1899037pac.1.2016.03.12.00.19.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 00:19:34 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so8820092pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 00:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=KmdoXPP+icKDHAvgAlERC5cGinfIBk7+olTcI1Rkgt4=;
        b=jLv+yPHaLNgp7VpkZaRo5YeG78Q/3gzJ6wwYWcEBXPhcQUdySLYIeOicy/faENc5TN
         DxwmTzmfNxaAwVejcpnP6BfurHdqYFqf4ahfzHCGdSREZ9VmJLAbRYCWiExT4MDYs1En
         ir+EUDY0hBnNEGY+dmTP/ZCscXpXyH7wLFCJojI7u6u3FhGW8FQaL3Pf1S64Iog/qrq2
         ol0IFsFoz64tXGjAm8yF1y9bAtBhAaCU1TBC/OjzeG/ynvQ7YhmznkVXBkszfYRqtQcr
         DceQB8P7vyNuy9FMc2gI1D2Z3KCqId+sd2B9gH8KgYg8iPLP/7I5+DFUgEU0gP47WEhB
         IVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=KmdoXPP+icKDHAvgAlERC5cGinfIBk7+olTcI1Rkgt4=;
        b=A2KRH1X2dZ+md1wkSmNRFsQ7hg0zcUCT/fonuZEDKg7e+wtUzb4Nquumxhvm6vwMJS
         LHbZYylPrxszHsB7DCohaLiFDeGzAEoqoM1wczcU8eWl/S34UJJKwE1q4yhERzGknCNL
         DTk9HnP6OXmF/KSg/elPT4EE5s2fXlVZFmjfJopPc1gFSGj7/anJ4Jq5zuaCG1B99hn+
         mNphQTTAcm/eZZr4AT8xZBd+okeDVpcwX1JFsENvvqQxxqX2R6gXsd91M7yEe9aYfU5q
         KOBTAvYWlN0Pg1GpKbalUs+0Pw96XDKtwSl5cVQjIKJOb/6XyYBagb8X2XaZmM6LvAvN
         eASQ==
X-Gm-Message-State: AD7BkJK4JXhhBfqn2Llh0TnvgqvsJaruR91Z7UWwzK7Qb7drcazeMvzRCuZbx6tV/xV6UA==
X-Received: by 10.98.1.197 with SMTP id 188mr14324058pfb.8.1457770774195;
        Sat, 12 Mar 2016 00:19:34 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.81])
        by smtp.gmail.com with ESMTPSA id ez6sm17964533pab.12.2016.03.12.00.19.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 00:19:33 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 1/5] staging: iio: tsl2x7x_core: adjust alignment to match open parenthesis
Date: Sat, 12 Mar 2016 16:19:20 +0800
Message-Id: <1b5082d0fcb2acc09a5163266751d5b9df0cb5a4.1457769810.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>

Align the parameters to match open parenthesis. Issue detected using
checkpatch.

CHECK: Alignment should match open parenthesis

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---

Change in v2:
* make commit message more clear.

 drivers/staging/iio/light/tsl2x7x_core.c | 164 +++++++++++++++++--------------
 1 file changed, 92 insertions(+), 72 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 5f308ba..4948791 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -349,13 +349,13 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 	if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
 		/* device is not enabled */
 		dev_err(&chip->client->dev, "%s: device is not enabled\n",
-				__func__);
+			__func__);
 		ret = -EBUSY;
 		goto out_unlock;
 	}
 
 	ret = tsl2x7x_i2c_read(chip->client,
-		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
+			       (TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
 			"%s: Failed to read STATUS Reg\n", __func__);
@@ -371,8 +371,8 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 
 	for (i = 0; i < 4; i++) {
 		ret = tsl2x7x_i2c_read(chip->client,
-			(TSL2X7X_CMD_REG | (TSL2X7X_ALS_CHAN0LO + i)),
-			&buf[i]);
+				       (TSL2X7X_CMD_REG |
+				       (TSL2X7X_ALS_CHAN0LO + i)), &buf[i]);
 		if (ret < 0) {
 			dev_err(&chip->client->dev,
 				"failed to read. err=%x\n", ret);
@@ -382,9 +382,9 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 
 	/* clear any existing interrupt status */
 	ret = i2c_smbus_write_byte(chip->client,
-		(TSL2X7X_CMD_REG |
-				TSL2X7X_CMD_SPL_FN |
-				TSL2X7X_CMD_ALS_INT_CLR));
+				   (TSL2X7X_CMD_REG |
+				   TSL2X7X_CMD_SPL_FN |
+				   TSL2X7X_CMD_ALS_INT_CLR));
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
 			"i2c_write_command failed - err = %d\n", ret);
@@ -488,7 +488,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
 	}
 
 	ret = tsl2x7x_i2c_read(chip->client,
-		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &status);
+			       (TSL2X7X_CMD_REG | TSL2X7X_STATUS), &status);
 	if (ret < 0) {
 		dev_err(&chip->client->dev, "i2c err=%d\n", ret);
 		goto prox_poll_err;
@@ -515,8 +515,8 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
 
 	for (i = 0; i < 2; i++) {
 		ret = tsl2x7x_i2c_read(chip->client,
-			(TSL2X7X_CMD_REG |
-					(TSL2X7X_PRX_LO + i)), &chdata[i]);
+				       (TSL2X7X_CMD_REG |
+				       (TSL2X7X_PRX_LO + i)), &chdata[i]);
 		if (ret < 0)
 			goto prox_poll_err;
 	}
@@ -542,19 +542,19 @@ static void tsl2x7x_defaults(struct tsl2X7X_chip *chip)
 {
 	/* If Operational settings defined elsewhere.. */
 	if (chip->pdata && chip->pdata->platform_default_settings)
-		memcpy(&(chip->tsl2x7x_settings),
-			chip->pdata->platform_default_settings,
-			sizeof(tsl2x7x_default_settings));
+		memcpy(&chip->tsl2x7x_settings,
+		       chip->pdata->platform_default_settings,
+		       sizeof(tsl2x7x_default_settings));
 	else
-		memcpy(&(chip->tsl2x7x_settings),
-			&tsl2x7x_default_settings,
-			sizeof(tsl2x7x_default_settings));
+		memcpy(&chip->tsl2x7x_settings,
+		       &tsl2x7x_default_settings,
+		       sizeof(tsl2x7x_default_settings));
 
 	/* Load up the proper lux table. */
 	if (chip->pdata && chip->pdata->platform_lux_table[0].ratio != 0)
 		memcpy(chip->tsl2x7x_device_lux,
-			chip->pdata->platform_lux_table,
-			sizeof(chip->pdata->platform_lux_table));
+		       chip->pdata->platform_lux_table,
+		       sizeof(chip->pdata->platform_lux_table));
 	else
 		memcpy(chip->tsl2x7x_device_lux,
 		(struct tsl2x7x_lux *)tsl2x7x_default_lux_table_group[chip->id],
@@ -576,7 +576,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 	int lux_val;
 
 	ret = i2c_smbus_write_byte(chip->client,
-			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
+				   (TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
 			"failed to write CNTRL register, ret=%d\n", ret);
@@ -592,7 +592,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 	}
 
 	ret = i2c_smbus_write_byte(chip->client,
-			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
+				   (TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
 			"failed to write ctrl reg: ret=%d\n", ret);
@@ -609,7 +609,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 	lux_val = tsl2x7x_get_lux(indio_dev);
 	if (lux_val < 0) {
 		dev_err(&chip->client->dev,
-		"%s: failed to get lux\n", __func__);
+			"%s: failed to get lux\n", __func__);
 		return lux_val;
 	}
 
@@ -620,7 +620,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 
 	chip->tsl2x7x_settings.als_gain_trim = gain_trim_val;
 	dev_info(&chip->client->dev,
-		"%s als_calibrate completed\n", chip->client->name);
+		 "%s als_calibrate completed\n", chip->client->name);
 
 	return (int) gain_trim_val;
 }
@@ -699,7 +699,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	 * Power on the device 1st. */
 	utmp = TSL2X7X_CNTL_PWR_ON;
 	ret = i2c_smbus_write_byte_data(chip->client,
-		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
+					TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
 			"%s: failed on CNTRL reg.\n", __func__);
@@ -711,7 +711,8 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	for (i = 0, dev_reg = chip->tsl2x7x_config;
 			i < TSL2X7X_MAX_CONFIG_REG; i++) {
 		ret = i2c_smbus_write_byte_data(chip->client,
-				TSL2X7X_CMD_REG + i, *dev_reg++);
+						TSL2X7X_CMD_REG + i,
+						*dev_reg++);
 		if (ret < 0) {
 			dev_err(&chip->client->dev,
 				"failed on write to reg %d.\n", i);
@@ -727,7 +728,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 			TSL2X7X_CNTL_ADC_ENBL |
 			TSL2X7X_CNTL_PROX_DET_ENBL;
 	ret = i2c_smbus_write_byte_data(chip->client,
-			TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
+					TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
 			"%s: failed on 2nd CTRL reg.\n", __func__);
@@ -741,12 +742,13 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 
 		reg_val = TSL2X7X_CNTL_PWR_ON | TSL2X7X_CNTL_ADC_ENBL;
 		if ((chip->tsl2x7x_settings.interrupts_en == 0x20) ||
-			(chip->tsl2x7x_settings.interrupts_en == 0x30))
+		    (chip->tsl2x7x_settings.interrupts_en == 0x30))
 			reg_val |= TSL2X7X_CNTL_PROX_DET_ENBL;
 
 		reg_val |= chip->tsl2x7x_settings.interrupts_en;
 		ret = i2c_smbus_write_byte_data(chip->client,
-			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL), reg_val);
+						(TSL2X7X_CMD_REG |
+						TSL2X7X_CNTRL), reg_val);
 		if (ret < 0)
 			dev_err(&chip->client->dev,
 				"%s: failed in tsl2x7x_IOCTL_INT_SET.\n",
@@ -754,8 +756,9 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 
 		/* Clear out any initial interrupts  */
 		ret = i2c_smbus_write_byte(chip->client,
-			TSL2X7X_CMD_REG | TSL2X7X_CMD_SPL_FN |
-			TSL2X7X_CMD_PROXALS_INT_CLR);
+					   TSL2X7X_CMD_REG |
+					   TSL2X7X_CMD_SPL_FN |
+					   TSL2X7X_CMD_PROXALS_INT_CLR);
 		if (ret < 0) {
 			dev_err(&chip->client->dev,
 				"%s: Failed to clear Int status\n",
@@ -776,7 +779,7 @@ static int tsl2x7x_chip_off(struct iio_dev *indio_dev)
 	chip->tsl2x7x_chip_status = TSL2X7X_CHIP_SUSPENDED;
 
 	ret = i2c_smbus_write_byte_data(chip->client,
-		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, 0x00);
+					TSL2X7X_CMD_REG | TSL2X7X_CNTRL, 0x00);
 
 	if (chip->pdata && chip->pdata->power_off)
 		chip->pdata->power_off(chip->client);
@@ -819,7 +822,7 @@ int tsl2x7x_invoke_change(struct iio_dev *indio_dev)
 
 static
 void tsl2x7x_prox_calculate(int *data, int length,
-		struct tsl2x7x_prox_stat *statP)
+			    struct tsl2x7x_prox_stat *statP)
 {
 	int i;
 	int sample_sum;
@@ -886,20 +889,21 @@ static void tsl2x7x_prox_cal(struct iio_dev *indio_dev)
 		tsl2x7x_get_prox(indio_dev);
 		prox_history[i] = chip->prox_data;
 		dev_info(&chip->client->dev, "2 i=%d prox data= %d\n",
-			i, chip->prox_data);
+			 i, chip->prox_data);
 	}
 
 	tsl2x7x_chip_off(indio_dev);
 	calP = &prox_stat_data[PROX_STAT_CAL];
 	tsl2x7x_prox_calculate(prox_history,
-		chip->tsl2x7x_settings.prox_max_samples_cal, calP);
+			       chip->tsl2x7x_settings.prox_max_samples_cal,
+			       calP);
 	chip->tsl2x7x_settings.prox_thres_high = (calP->max << 1) - calP->mean;
 
 	dev_info(&chip->client->dev, " cal min=%d mean=%d max=%d\n",
-		calP->min, calP->mean, calP->max);
+		 calP->min, calP->mean, calP->max);
 	dev_info(&chip->client->dev,
-		"%s proximity threshold set to %d\n",
-		chip->client->name, chip->tsl2x7x_settings.prox_thres_high);
+		 "%s proximity threshold set to %d\n",
+		 chip->client->name, chip->tsl2x7x_settings.prox_thres_high);
 
 	/* back to the way they were */
 	chip->tsl2x7x_settings.interrupts_en = tmp_irq_settings;
@@ -908,7 +912,8 @@ static void tsl2x7x_prox_cal(struct iio_dev *indio_dev)
 }
 
 static ssize_t tsl2x7x_power_state_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					struct device_attribute *attr,
+					char *buf)
 {
 	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
 
@@ -916,7 +921,8 @@ static ssize_t tsl2x7x_power_state_show(struct device *dev,
 }
 
 static ssize_t tsl2x7x_power_state_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+					 struct device_attribute *attr,
+					 const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	bool value;
@@ -933,7 +939,8 @@ static ssize_t tsl2x7x_power_state_store(struct device *dev,
 }
 
 static ssize_t tsl2x7x_gain_available_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					   struct device_attribute *attr,
+					   char *buf)
 {
 	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
 
@@ -950,13 +957,15 @@ static ssize_t tsl2x7x_gain_available_show(struct device *dev,
 }
 
 static ssize_t tsl2x7x_prox_gain_available_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+						struct device_attribute *attr,
+						char *buf)
 {
 		return snprintf(buf, PAGE_SIZE, "%s\n", "1 2 4 8");
 }
 
 static ssize_t tsl2x7x_als_time_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+				     struct device_attribute *attr,
+				     char *buf)
 {
 	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
 	int y, z;
@@ -970,7 +979,8 @@ static ssize_t tsl2x7x_als_time_show(struct device *dev,
 }
 
 static ssize_t tsl2x7x_als_time_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				      struct device_attribute *attr,
+				      const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
@@ -986,7 +996,7 @@ static ssize_t tsl2x7x_als_time_store(struct device *dev,
 			TSL2X7X_MAX_TIMER_CNT - (u8)result.fract;
 
 	dev_info(&chip->client->dev, "%s: als time = %d",
-		__func__, chip->tsl2x7x_settings.als_time);
+		 __func__, chip->tsl2x7x_settings.als_time);
 
 	tsl2x7x_invoke_change(indio_dev);
 
@@ -997,7 +1007,8 @@ static IIO_CONST_ATTR(in_illuminance0_integration_time_available,
 		".00272 - .696");
 
 static ssize_t tsl2x7x_als_cal_target_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					   struct device_attribute *attr,
+					   char *buf)
 {
 	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
 
@@ -1006,7 +1017,8 @@ static ssize_t tsl2x7x_als_cal_target_show(struct device *dev,
 }
 
 static ssize_t tsl2x7x_als_cal_target_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+					    struct device_attribute *attr,
+					    const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
@@ -1025,7 +1037,8 @@ static ssize_t tsl2x7x_als_cal_target_store(struct device *dev,
 
 /* persistence settings */
 static ssize_t tsl2x7x_als_persistence_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					    struct device_attribute *attr,
+					    char *buf)
 {
 	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
 	int y, z, filter_delay;
@@ -1041,7 +1054,8 @@ static ssize_t tsl2x7x_als_persistence_show(struct device *dev,
 }
 
 static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+					     struct device_attribute *attr,
+					     const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
@@ -1063,7 +1077,7 @@ static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
 	chip->tsl2x7x_settings.persistence |= (filter_delay & 0x0F);
 
 	dev_info(&chip->client->dev, "%s: als persistence = %d",
-		__func__, filter_delay);
+		 __func__, filter_delay);
 
 	tsl2x7x_invoke_change(indio_dev);
 
@@ -1071,7 +1085,8 @@ static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
 }
 
 static ssize_t tsl2x7x_prox_persistence_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					     struct device_attribute *attr,
+					     char *buf)
 {
 	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
 	int y, z, filter_delay;
@@ -1087,7 +1102,8 @@ static ssize_t tsl2x7x_prox_persistence_show(struct device *dev,
 }
 
 static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+					      struct device_attribute *attr,
+					      const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
@@ -1109,7 +1125,7 @@ static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
 	chip->tsl2x7x_settings.persistence |= ((filter_delay << 4) & 0xF0);
 
 	dev_info(&chip->client->dev, "%s: prox persistence = %d",
-		__func__, filter_delay);
+		 __func__, filter_delay);
 
 	tsl2x7x_invoke_change(indio_dev);
 
@@ -1117,7 +1133,8 @@ static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
 }
 
 static ssize_t tsl2x7x_do_calibrate(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				    struct device_attribute *attr,
+				    const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	bool value;
@@ -1134,7 +1151,8 @@ static ssize_t tsl2x7x_do_calibrate(struct device *dev,
 }
 
 static ssize_t tsl2x7x_luxtable_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+				     struct device_attribute *attr,
+				     char *buf)
 {
 	struct tsl2X7X_chip *chip = iio_priv(dev_to_iio_dev(dev));
 	int i = 0;
@@ -1159,7 +1177,8 @@ static ssize_t tsl2x7x_luxtable_show(struct device *dev,
 }
 
 static ssize_t tsl2x7x_luxtable_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				      struct device_attribute *attr,
+				      const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
@@ -1175,7 +1194,7 @@ static ssize_t tsl2x7x_luxtable_store(struct device *dev,
 	 */
 	n = value[0];
 	if ((n % 3) || n < 6 ||
-			n > ((ARRAY_SIZE(chip->tsl2x7x_device_lux) - 1) * 3)) {
+	    n > ((ARRAY_SIZE(chip->tsl2x7x_device_lux) - 1) * 3)) {
 		dev_info(dev, "LUX TABLE INPUT ERROR 1 Value[0]=%d\n", n);
 		return -EINVAL;
 	}
@@ -1198,7 +1217,8 @@ static ssize_t tsl2x7x_luxtable_store(struct device *dev,
 }
 
 static ssize_t tsl2x7x_do_prox_calibrate(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+					 struct device_attribute *attr,
+					 const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	bool value;
@@ -1391,10 +1411,10 @@ static int tsl2x7x_read_raw(struct iio_dev *indio_dev,
 }
 
 static int tsl2x7x_write_raw(struct iio_dev *indio_dev,
-			       struct iio_chan_spec const *chan,
-			       int val,
-			       int val2,
-			       long mask)
+			     struct iio_chan_spec const *chan,
+			     int val,
+			     int val2,
+			     long mask)
 {
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
 
@@ -1529,7 +1549,7 @@ static irqreturn_t tsl2x7x_event_handler(int irq, void *private)
 	u8 value;
 
 	value = i2c_smbus_read_byte_data(chip->client,
-		TSL2X7X_CMD_REG | TSL2X7X_STATUS);
+					 TSL2X7X_CMD_REG | TSL2X7X_STATUS);
 
 	/* What type of interrupt do we need to process */
 	if (value & TSL2X7X_STA_PRX_INTR) {
@@ -1545,16 +1565,16 @@ static irqreturn_t tsl2x7x_event_handler(int irq, void *private)
 	if (value & TSL2X7X_STA_ALS_INTR) {
 		tsl2x7x_get_lux(indio_dev); /* freshen data for ABI */
 		iio_push_event(indio_dev,
-		       IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
-					    0,
-					    IIO_EV_TYPE_THRESH,
-					    IIO_EV_DIR_EITHER),
-					    timestamp);
+			       IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
+						    0,
+						    IIO_EV_TYPE_THRESH,
+						    IIO_EV_DIR_EITHER),
+			       timestamp);
 	}
 	/* Clear interrupt now that we have handled it. */
 	ret = i2c_smbus_write_byte(chip->client,
-		TSL2X7X_CMD_REG | TSL2X7X_CMD_SPL_FN |
-		TSL2X7X_CMD_PROXALS_INT_CLR);
+				   TSL2X7X_CMD_REG | TSL2X7X_CMD_SPL_FN |
+				   TSL2X7X_CMD_PROXALS_INT_CLR);
 	if (ret < 0)
 		dev_err(&chip->client->dev,
 			"Failed to clear irq from event handler. err = %d\n",
@@ -1857,7 +1877,7 @@ static const struct tsl2x7x_chip_info tsl2x7x_chip_info_tbl[] = {
 };
 
 static int tsl2x7x_probe(struct i2c_client *clientp,
-	const struct i2c_device_id *id)
+			 const struct i2c_device_id *id)
 {
 	int ret;
 	unsigned char device_id;
@@ -1873,14 +1893,14 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 	i2c_set_clientdata(clientp, indio_dev);
 
 	ret = tsl2x7x_i2c_read(chip->client,
-		TSL2X7X_CHIPID, &device_id);
+			       TSL2X7X_CHIPID, &device_id);
 	if (ret < 0)
 		return ret;
 
 	if ((!tsl2x7x_device_id(&device_id, id->driver_data)) ||
-		(tsl2x7x_device_id(&device_id, id->driver_data) == -EINVAL)) {
+	    (tsl2x7x_device_id(&device_id, id->driver_data) == -EINVAL)) {
 		dev_info(&chip->client->dev,
-				"%s: i2c device found does not match expected id\n",
+			 "%s: i2c device found does not match expected id\n",
 				__func__);
 		return -EINVAL;
 	}
-- 
1.9.1


