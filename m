X-GM-THRID: 6252531554516467712
X-Received: by 10.182.119.199 with SMTP id kw7mr5490926obb.15.1455780949148;
        Wed, 17 Feb 2016 23:35:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.29 with SMTP id w29ls2226503ioi.38.gmail; Wed, 17 Feb
 2016 23:35:48 -0800 (PST)
X-Received: by 10.66.147.106 with SMTP id tj10mr5769400pab.30.1455780948848;
        Wed, 17 Feb 2016 23:35:48 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ff2si766265pad.2.2016.02.17.23.35.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 23:35:48 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so1666426pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 23:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=lBDFD4tTy+3i/k3IDjdL3MZ3iIC6bz74R/lIMqThER4=;
        b=DmgVdBMC31Grlp9stb6pWM0e0ABnqamacEt5zGGiy6DNZs9Yev/NJYr1FP7D4WIR7G
         drC1UY4Y2HCdC/ODE7iiQRDGwZoDMlBQVazCw1fFABiuC5r96ruZf06CSMUWhdYuH7Wp
         sWm9z8Uca1iEgrJZi9cMOHoPuCU8ICew9abjbZRnMRknEgACfYNK8SKBi+I8iQKutBlv
         qPzco+nPJIp8NovJ2PYcZcHKVJGT3k7oakLopbchhf0UUGK2jXTWMlrfkwZ0V25oDK/l
         hnVcGzFKKrfe6e8uWfDsMPBxttVLZu1FKGQ+xKuIGYu3rqTDy/bRdjNOReMnSINYqeDc
         srow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=lBDFD4tTy+3i/k3IDjdL3MZ3iIC6bz74R/lIMqThER4=;
        b=O9jOXBNtHhOd/REeOAb8zSZs1hPSOimTOdWr4BKmLFaL1LXzNqCEklRLz8pQTTVGkQ
         pZc9/ejFodfefTlW/IpXuQJGPruTmhuVkpofsr6IBKFaRACFB7pzIKmj88nIsvN8chRC
         mctS/jQEV7FUqBWm2+zwUKuU29l7PRPE9GHKiysr6H6WFoMe+TAi+voaWg549u+f4yPV
         fOi6W3rr93YBh4kqZoX6yF8SOYX9cdlngTrmoJEPXusNMiUGOpRJcSa8vuQFKsy8v3nc
         wPQWt/Emjh4TQJRID1HAAR9irRsdY3e3hF6Jv4sQ//Dw1OSBy5sqtcJTmwOtdpNOltCH
         cREg==
X-Gm-Message-State: AG10YOSOz3PSXw3QaPHRbyl9nfBn80UWRfRXeemXc/PP9A1FyiCFex9OPqJr1oj9TablcA==
X-Received: by 10.66.191.202 with SMTP id ha10mr8139479pac.8.1455780948747;
        Wed, 17 Feb 2016 23:35:48 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id n13sm7747950pfi.3.2016.02.17.23.35.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 23:35:48 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 1/5] staging: iio: light: indent to match open parenthesis
Date: Thu, 18 Feb 2016 15:35:36 +0800
Message-Id: <98af43c029099a96af80a43c6df176547c5bb53d.1455730714.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>

Indent the parameters to match open parenthesis as suggested by checkpatch.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/isl29018.c | 25 +++++++++++---------
 drivers/staging/iio/light/isl29028.c | 27 ++++++++++++---------
 drivers/staging/iio/light/tsl2583.c  | 46 ++++++++++++++++++++++--------------
 3 files changed, 58 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
index 756057c..98038d7 100644
--- a/drivers/staging/iio/light/isl29018.c
+++ b/drivers/staging/iio/light/isl29018.c
@@ -183,7 +183,7 @@ static int isl29018_read_sensor_input(struct isl29018_chip *chip, int mode)
 
 	/* Set mode */
 	status = regmap_write(chip->regmap, ISL29018_REG_ADD_COMMAND1,
-			mode << COMMMAND1_OPMODE_SHIFT);
+			      mode << COMMMAND1_OPMODE_SHIFT);
 	if (status) {
 		dev_err(chip->dev,
 			"Error in setting operating mode err %d\n", status);
@@ -241,7 +241,7 @@ static int isl29018_read_ir(struct isl29018_chip *chip, int *ir)
 }
 
 static int isl29018_read_proximity_ir(struct isl29018_chip *chip, int scheme,
-		int *near_ir)
+				      int *near_ir)
 {
 	int status;
 	int prox_data = -1;
@@ -249,15 +249,15 @@ static int isl29018_read_proximity_ir(struct isl29018_chip *chip, int scheme,
 
 	/* Do proximity sensing with required scheme */
 	status = regmap_update_bits(chip->regmap, ISL29018_REG_ADD_COMMANDII,
-			COMMANDII_SCHEME_MASK,
-			scheme << COMMANDII_SCHEME_SHIFT);
+				    COMMANDII_SCHEME_MASK,
+				    scheme << COMMANDII_SCHEME_SHIFT);
 	if (status) {
 		dev_err(chip->dev, "Error in setting operating mode\n");
 		return status;
 	}
 
 	prox_data = isl29018_read_sensor_input(chip,
-					COMMMAND1_OPMODE_PROX_ONCE);
+					       COMMMAND1_OPMODE_PROX_ONCE);
 	if (prox_data < 0)
 		return prox_data;
 
@@ -280,7 +280,7 @@ static int isl29018_read_proximity_ir(struct isl29018_chip *chip, int scheme,
 }
 
 static ssize_t show_scale_available(struct device *dev,
-			struct device_attribute *attr, char *buf)
+				    struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct isl29018_chip *chip = iio_priv(indio_dev);
@@ -297,7 +297,7 @@ static ssize_t show_scale_available(struct device *dev,
 }
 
 static ssize_t show_int_time_available(struct device *dev,
-			struct device_attribute *attr, char *buf)
+				       struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct isl29018_chip *chip = iio_priv(indio_dev);
@@ -314,7 +314,8 @@ static ssize_t show_int_time_available(struct device *dev,
 
 /* proximity scheme */
 static ssize_t show_prox_infrared_suppression(struct device *dev,
-			struct device_attribute *attr, char *buf)
+					      struct device_attribute *attr,
+					      char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct isl29018_chip *chip = iio_priv(indio_dev);
@@ -325,7 +326,8 @@ static ssize_t show_prox_infrared_suppression(struct device *dev,
 }
 
 static ssize_t store_prox_infrared_suppression(struct device *dev,
-		struct device_attribute *attr, const char *buf, size_t count)
+					       struct device_attribute *attr,
+					       const char *buf, size_t count)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct isl29018_chip *chip = iio_priv(indio_dev);
@@ -413,7 +415,8 @@ static int isl29018_read_raw(struct iio_dev *indio_dev,
 			break;
 		case IIO_PROXIMITY:
 			ret = isl29018_read_proximity_ir(chip,
-					chip->prox_scheme, val);
+							 chip->prox_scheme,
+							 val);
 			break;
 		default:
 			break;
@@ -705,7 +708,7 @@ static const char *isl29018_match_acpi_device(struct device *dev, int *data)
 }
 
 static int isl29018_probe(struct i2c_client *client,
-			 const struct i2c_device_id *id)
+			  const struct i2c_device_id *id)
 {
 	struct isl29018_chip *chip;
 	struct iio_dev *indio_dev;
diff --git a/drivers/staging/iio/light/isl29028.c b/drivers/staging/iio/light/isl29028.c
index e1bca9c..6e2ba45 100644
--- a/drivers/staging/iio/light/isl29028.c
+++ b/drivers/staging/iio/light/isl29028.c
@@ -81,7 +81,7 @@ struct isl29028_chip {
 };
 
 static int isl29028_set_proxim_sampling(struct isl29028_chip *chip,
-			unsigned int sampling)
+					unsigned int sampling)
 {
 	static unsigned int prox_period[] = {800, 400, 200, 100, 75, 50, 12, 0};
 	int sel;
@@ -103,7 +103,7 @@ static int isl29028_enable_proximity(struct isl29028_chip *chip, bool enable)
 	if (enable)
 		val = CONFIGURE_PROX_EN;
 	ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
-			CONFIGURE_PROX_EN_MASK, val);
+				 CONFIGURE_PROX_EN_MASK, val);
 	if (ret < 0)
 		return ret;
 
@@ -122,24 +122,27 @@ static int isl29028_set_als_scale(struct isl29028_chip *chip, int lux_scale)
 }
 
 static int isl29028_set_als_ir_mode(struct isl29028_chip *chip,
-	enum als_ir_mode mode)
+				    enum als_ir_mode mode)
 {
 	int ret = 0;
 
 	switch (mode) {
 	case MODE_ALS:
 		ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
-			CONFIGURE_ALS_IR_MODE_MASK, CONFIGURE_ALS_IR_MODE_ALS);
+					 CONFIGURE_ALS_IR_MODE_MASK,
+					 CONFIGURE_ALS_IR_MODE_ALS);
 		if (ret < 0)
 			return ret;
 
 		ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
-			CONFIGURE_ALS_RANGE_MASK, CONFIGURE_ALS_RANGE_HIGH_LUX);
+					 CONFIGURE_ALS_RANGE_MASK,
+					 CONFIGURE_ALS_RANGE_HIGH_LUX);
 		break;
 
 	case MODE_IR:
 		ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
-			CONFIGURE_ALS_IR_MODE_MASK, CONFIGURE_ALS_IR_MODE_IR);
+					 CONFIGURE_ALS_IR_MODE_MASK,
+					 CONFIGURE_ALS_IR_MODE_IR);
 		break;
 
 	case MODE_NONE:
@@ -152,7 +155,7 @@ static int isl29028_set_als_ir_mode(struct isl29028_chip *chip,
 
 	/* Enable the ALS/IR */
 	ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
-			CONFIGURE_ALS_EN_MASK, CONFIGURE_ALS_EN);
+				 CONFIGURE_ALS_EN_MASK, CONFIGURE_ALS_EN);
 	if (ret < 0)
 		return ret;
 
@@ -193,7 +196,7 @@ static int isl29028_read_proxim(struct isl29028_chip *chip, int *prox)
 	ret = regmap_read(chip->regmap, ISL29028_REG_PROX_DATA, &data);
 	if (ret < 0) {
 		dev_err(chip->dev, "Error in reading register %d, error %d\n",
-				ISL29028_REG_PROX_DATA, ret);
+			ISL29028_REG_PROX_DATA, ret);
 		return ret;
 	}
 	*prox = data;
@@ -264,7 +267,8 @@ static int isl29028_ir_get(struct isl29028_chip *chip, int *ir_data)
 
 /* Channel IO */
 static int isl29028_write_raw(struct iio_dev *indio_dev,
-	     struct iio_chan_spec const *chan, int val, int val2, long mask)
+			      struct iio_chan_spec const *chan,
+			      int val, int val2, long mask)
 {
 	struct isl29028_chip *chip = iio_priv(indio_dev);
 	int ret = -EINVAL;
@@ -323,7 +327,8 @@ static int isl29028_write_raw(struct iio_dev *indio_dev,
 }
 
 static int isl29028_read_raw(struct iio_dev *indio_dev,
-	     struct iio_chan_spec const *chan, int *val, int *val2, long mask)
+			     struct iio_chan_spec const *chan,
+			     int *val, int *val2, long mask)
 {
 	struct isl29028_chip *chip = iio_priv(indio_dev);
 	int ret = -EINVAL;
@@ -476,7 +481,7 @@ static const struct regmap_config isl29028_regmap_config = {
 };
 
 static int isl29028_probe(struct i2c_client *client,
-	const struct i2c_device_id *id)
+			  const struct i2c_device_id *id)
 {
 	struct isl29028_chip *chip;
 	struct iio_dev *indio_dev;
diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index 3100d96..1aae05a 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -482,7 +482,7 @@ static int taos_chip_off(struct iio_dev *indio_dev)
 /* Sysfs Interface Functions */
 
 static ssize_t taos_power_state_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+				     struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -491,7 +491,8 @@ static ssize_t taos_power_state_show(struct device *dev,
 }
 
 static ssize_t taos_power_state_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				      struct device_attribute *attr,
+				      const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	int value;
@@ -508,7 +509,7 @@ static ssize_t taos_power_state_store(struct device *dev,
 }
 
 static ssize_t taos_gain_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+			      struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -533,7 +534,8 @@ static ssize_t taos_gain_show(struct device *dev,
 }
 
 static ssize_t taos_gain_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+			       struct device_attribute *attr,
+			       const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -564,13 +566,14 @@ static ssize_t taos_gain_store(struct device *dev,
 }
 
 static ssize_t taos_gain_available_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					struct device_attribute *attr,
+					char *buf)
 {
 	return sprintf(buf, "%s\n", "1 8 16 111");
 }
 
 static ssize_t taos_als_time_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+				  struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -579,7 +582,8 @@ static ssize_t taos_als_time_show(struct device *dev,
 }
 
 static ssize_t taos_als_time_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				   struct device_attribute *attr,
+				   const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -600,14 +604,15 @@ static ssize_t taos_als_time_store(struct device *dev,
 }
 
 static ssize_t taos_als_time_available_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					    struct device_attribute *attr,
+					    char *buf)
 {
 	return sprintf(buf, "%s\n",
 		"50 100 150 200 250 300 350 400 450 500 550 600 650");
 }
 
 static ssize_t taos_als_trim_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+				  struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -616,7 +621,8 @@ static ssize_t taos_als_trim_show(struct device *dev,
 }
 
 static ssize_t taos_als_trim_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				   struct device_attribute *attr,
+				   const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -632,7 +638,8 @@ static ssize_t taos_als_trim_store(struct device *dev,
 }
 
 static ssize_t taos_als_cal_target_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+					struct device_attribute *attr,
+					char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -641,7 +648,8 @@ static ssize_t taos_als_cal_target_show(struct device *dev,
 }
 
 static ssize_t taos_als_cal_target_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+					 struct device_attribute *attr,
+					 const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -657,7 +665,7 @@ static ssize_t taos_als_cal_target_store(struct device *dev,
 }
 
 static ssize_t taos_lux_show(struct device *dev, struct device_attribute *attr,
-	char *buf)
+			     char *buf)
 {
 	int ret;
 
@@ -669,7 +677,8 @@ static ssize_t taos_lux_show(struct device *dev, struct device_attribute *attr,
 }
 
 static ssize_t taos_do_calibrate(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				 struct device_attribute *attr,
+				 const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	int value;
@@ -684,7 +693,7 @@ static ssize_t taos_do_calibrate(struct device *dev,
 }
 
 static ssize_t taos_luxtable_show(struct device *dev,
-	struct device_attribute *attr, char *buf)
+				  struct device_attribute *attr, char *buf)
 {
 	int i;
 	int offset = 0;
@@ -707,7 +716,8 @@ static ssize_t taos_luxtable_show(struct device *dev,
 }
 
 static ssize_t taos_luxtable_store(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+				   struct device_attribute *attr,
+				   const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
@@ -809,7 +819,7 @@ static int taos_probe(struct i2c_client *clientp,
 	struct iio_dev *indio_dev;
 
 	if (!i2c_check_functionality(clientp->adapter,
-		I2C_FUNC_SMBUS_BYTE_DATA)) {
+				     I2C_FUNC_SMBUS_BYTE_DATA)) {
 		dev_err(&clientp->dev, "taos_probe() - i2c smbus byte data func unsupported\n");
 		return -EOPNOTSUPP;
 	}
@@ -846,7 +856,7 @@ static int taos_probe(struct i2c_client *clientp,
 
 	if (!taos_tsl258x_device(buf)) {
 		dev_info(&clientp->dev,
-			"i2c device found but does not match expected id in taos_probe()\n");
+			 "i2c device found but does not match expected id in taos_probe()\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1


