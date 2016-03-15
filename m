X-GM-THRID: 6262353320713650176
X-Received: by 10.13.235.144 with SMTP id u138mr23482335ywe.21.1458067754364;
        Tue, 15 Mar 2016 11:49:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.47.71 with SMTP id b7ls231888ign.21.gmail; Tue, 15 Mar 2016
 11:49:13 -0700 (PDT)
X-Received: by 10.50.85.37 with SMTP id e5mr196791igz.12.1458067753842;
        Tue, 15 Mar 2016 11:49:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id sf5si4414952pac.1.2016.03.15.11.49.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 11:49:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id x3so39622703pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 11:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Il1mjoYp3+lyAZquLHCR+7qaocc5HlAZZXh0ZcwZ0pU=;
        b=M7P5AqzWS6t/eYDtpe00ji2siyyQ1XT8m81CABWoVEuTCKWnn6q72g/xrMaEWEw6z2
         iEXhPgo3ZlzBbgK1xaKkZtp3aNyu/ROncpz9UvQ1Kb8VnujzBSq3HOCABecZwCRxOGvp
         1TZoTc9JczphzJadIQ54hGfOKe16nUqJEvaXCG+gMUuqAMxMl4R9dEp/DIt3Nr1qQkUu
         UxzVOUuGj145p5jEu1yGYm21Mpw/3sx6ikHeptlR3gSykx9lgGGfKEtG+MamCCbYQWyb
         nFC14Y+5T5wSYk3a5L2T2XnO0yMubkrCzGwlsAO2GzrNX5h93Lj2Jna9ZYVebt3G1ein
         /fWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Il1mjoYp3+lyAZquLHCR+7qaocc5HlAZZXh0ZcwZ0pU=;
        b=fDpdqlfU/3bwSemTlNs+BgFX7snUWiZpMe3tt1IX2MftzdzxRQj11gMpfrPuZYsDSs
         UVADaVvhOnAnq4EVEszRJ03Ly/bFXQbqcbPshTRY03rT5LwLhSxhBA13zxl5PfowL/KA
         rVjuPETADRaNY34aQYtSPm+C51U0UtiGlEp9Ko05WsakrhzQpWyM7Fr2Xo4ajQ2E0ZxH
         /ypbDJTtQQ9rz4Q9f5LyhXWDqpQNrXF2Z4GtiOsXZogU8IaORrW14CQuHAPNt9aptOs1
         r8JuqlGT00n5mJtcDVJqUJOUl12JzvMzMiVHmRSE4YvZgrOlN7IgSMqAxdcBVkFeCH2R
         j7GA==
X-Gm-Message-State: AD7BkJJK2uJfcOwqhQW1ErmCGJcO1eKqXh5D7AVuaSrC/mUGbkLSo2SGPUfOg3Zmbm8LbQ==
X-Received: by 10.66.176.10 with SMTP id ce10mr47894702pac.68.1458067753602;
        Tue, 15 Mar 2016 11:49:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id 82sm41303945pfi.78.2016.03.15.11.49.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 11:49:13 -0700 (PDT)
Date: Tue, 15 Mar 2016 11:49:12 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: isl29028: use regmap to retrieve struct device
Message-ID: <20160315184903.GA14115@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Driver includes struct regmap and struct device in its global data.
Remove the struct device and use regmap API to retrieve device info.

Simplified version of Coccinelle semantic patch used:

@ a @
identifier drvdata, r;
position p;
@@
  struct drvdata@p {
  ...
  struct regmap *r;
  ...
  };

@ b @
identifier a.drvdata, d;
position a.p;
@@
  struct drvdata@p {
  ...
- struct device *d;
  ...
  };

@ passed depends on b @
identifier a.drvdata, a.r, b.d, i, f;
@@
  f (..., struct drvdata *i ,...) {
+ struct device *dev = regmap_get_device(i->r);
   <+...
-	   i->d
+	   dev
   ...+>
  }

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/light/isl29028.c | 53 ++++++++++++++++++++----------------
 1 file changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/iio/light/isl29028.c b/drivers/staging/iio/light/isl29028.c
index 6e2ba45..0ef96e6 100644
--- a/drivers/staging/iio/light/isl29028.c
+++ b/drivers/staging/iio/light/isl29028.c
@@ -69,7 +69,6 @@ enum als_ir_mode {
 };
 
 struct isl29028_chip {
-	struct device		*dev;
 	struct mutex		lock;
 	struct regmap		*regmap;
 
@@ -166,20 +165,21 @@ static int isl29028_set_als_ir_mode(struct isl29028_chip *chip,
 
 static int isl29028_read_als_ir(struct isl29028_chip *chip, int *als_ir)
 {
+	struct device *dev = regmap_get_device(chip->regmap);
 	unsigned int lsb;
 	unsigned int msb;
 	int ret;
 
 	ret = regmap_read(chip->regmap, ISL29028_REG_ALSIR_L, &lsb);
 	if (ret < 0) {
-		dev_err(chip->dev,
+		dev_err(dev,
 			"Error in reading register ALSIR_L err %d\n", ret);
 		return ret;
 	}
 
 	ret = regmap_read(chip->regmap, ISL29028_REG_ALSIR_U, &msb);
 	if (ret < 0) {
-		dev_err(chip->dev,
+		dev_err(dev,
 			"Error in reading register ALSIR_U err %d\n", ret);
 		return ret;
 	}
@@ -190,12 +190,13 @@ static int isl29028_read_als_ir(struct isl29028_chip *chip, int *als_ir)
 
 static int isl29028_read_proxim(struct isl29028_chip *chip, int *prox)
 {
+	struct device *dev = regmap_get_device(chip->regmap);
 	unsigned int data;
 	int ret;
 
 	ret = regmap_read(chip->regmap, ISL29028_REG_PROX_DATA, &data);
 	if (ret < 0) {
-		dev_err(chip->dev, "Error in reading register %d, error %d\n",
+		dev_err(dev, "Error in reading register %d, error %d\n",
 			ISL29028_REG_PROX_DATA, ret);
 		return ret;
 	}
@@ -218,13 +219,14 @@ static int isl29028_proxim_get(struct isl29028_chip *chip, int *prox_data)
 
 static int isl29028_als_get(struct isl29028_chip *chip, int *als_data)
 {
+	struct device *dev = regmap_get_device(chip->regmap);
 	int ret;
 	int als_ir_data;
 
 	if (chip->als_ir_mode != MODE_ALS) {
 		ret = isl29028_set_als_ir_mode(chip, MODE_ALS);
 		if (ret < 0) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"Error in enabling ALS mode err %d\n", ret);
 			return ret;
 		}
@@ -251,12 +253,13 @@ static int isl29028_als_get(struct isl29028_chip *chip, int *als_data)
 
 static int isl29028_ir_get(struct isl29028_chip *chip, int *ir_data)
 {
+	struct device *dev = regmap_get_device(chip->regmap);
 	int ret;
 
 	if (chip->als_ir_mode != MODE_IR) {
 		ret = isl29028_set_als_ir_mode(chip, MODE_IR);
 		if (ret < 0) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"Error in enabling IR mode err %d\n", ret);
 			return ret;
 		}
@@ -271,25 +274,26 @@ static int isl29028_write_raw(struct iio_dev *indio_dev,
 			      int val, int val2, long mask)
 {
 	struct isl29028_chip *chip = iio_priv(indio_dev);
+	struct device *dev = regmap_get_device(chip->regmap);
 	int ret = -EINVAL;
 
 	mutex_lock(&chip->lock);
 	switch (chan->type) {
 	case IIO_PROXIMITY:
 		if (mask != IIO_CHAN_INFO_SAMP_FREQ) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"proximity: mask value 0x%08lx not supported\n",
 				mask);
 			break;
 		}
 		if (val < 1 || val > 100) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"Samp_freq %d is not in range[1:100]\n", val);
 			break;
 		}
 		ret = isl29028_set_proxim_sampling(chip, val);
 		if (ret < 0) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"Setting proximity samp_freq fail, err %d\n",
 				ret);
 			break;
@@ -299,19 +303,19 @@ static int isl29028_write_raw(struct iio_dev *indio_dev,
 
 	case IIO_LIGHT:
 		if (mask != IIO_CHAN_INFO_SCALE) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"light: mask value 0x%08lx not supported\n",
 				mask);
 			break;
 		}
 		if ((val != 125) && (val != 2000)) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"lux scale %d is invalid [125, 2000]\n", val);
 			break;
 		}
 		ret = isl29028_set_als_scale(chip, val);
 		if (ret < 0) {
-			dev_err(chip->dev,
+			dev_err(dev,
 				"Setting lux scale fail with error %d\n", ret);
 			break;
 		}
@@ -319,7 +323,7 @@ static int isl29028_write_raw(struct iio_dev *indio_dev,
 		break;
 
 	default:
-		dev_err(chip->dev, "Unsupported channel type\n");
+		dev_err(dev, "Unsupported channel type\n");
 		break;
 	}
 	mutex_unlock(&chip->lock);
@@ -331,6 +335,7 @@ static int isl29028_read_raw(struct iio_dev *indio_dev,
 			     int *val, int *val2, long mask)
 {
 	struct isl29028_chip *chip = iio_priv(indio_dev);
+	struct device *dev = regmap_get_device(chip->regmap);
 	int ret = -EINVAL;
 
 	mutex_lock(&chip->lock);
@@ -370,7 +375,7 @@ static int isl29028_read_raw(struct iio_dev *indio_dev,
 		break;
 
 	default:
-		dev_err(chip->dev, "mask value 0x%08lx not supported\n", mask);
+		dev_err(dev, "mask value 0x%08lx not supported\n", mask);
 		break;
 	}
 	mutex_unlock(&chip->lock);
@@ -417,6 +422,7 @@ static const struct iio_info isl29028_info = {
 
 static int isl29028_chip_init(struct isl29028_chip *chip)
 {
+	struct device *dev = regmap_get_device(chip->regmap);
 	int ret;
 
 	chip->enable_prox  = false;
@@ -426,34 +432,34 @@ static int isl29028_chip_init(struct isl29028_chip *chip)
 
 	ret = regmap_write(chip->regmap, ISL29028_REG_TEST1_MODE, 0x0);
 	if (ret < 0) {
-		dev_err(chip->dev, "%s(): write to reg %d failed, err = %d\n",
+		dev_err(dev, "%s(): write to reg %d failed, err = %d\n",
 			__func__, ISL29028_REG_TEST1_MODE, ret);
 		return ret;
 	}
 	ret = regmap_write(chip->regmap, ISL29028_REG_TEST2_MODE, 0x0);
 	if (ret < 0) {
-		dev_err(chip->dev, "%s(): write to reg %d failed, err = %d\n",
+		dev_err(dev, "%s(): write to reg %d failed, err = %d\n",
 			__func__, ISL29028_REG_TEST2_MODE, ret);
 		return ret;
 	}
 
 	ret = regmap_write(chip->regmap, ISL29028_REG_CONFIGURE, 0x0);
 	if (ret < 0) {
-		dev_err(chip->dev, "%s(): write to reg %d failed, err = %d\n",
+		dev_err(dev, "%s(): write to reg %d failed, err = %d\n",
 			__func__, ISL29028_REG_CONFIGURE, ret);
 		return ret;
 	}
 
 	ret = isl29028_set_proxim_sampling(chip, chip->prox_sampling);
 	if (ret < 0) {
-		dev_err(chip->dev, "setting the proximity, err = %d\n",
+		dev_err(dev, "setting the proximity, err = %d\n",
 			ret);
 		return ret;
 	}
 
 	ret = isl29028_set_als_scale(chip, chip->lux_scale);
 	if (ret < 0)
-		dev_err(chip->dev,
+		dev_err(dev,
 			"setting als scale failed, err = %d\n", ret);
 	return ret;
 }
@@ -496,19 +502,19 @@ static int isl29028_probe(struct i2c_client *client,
 	chip = iio_priv(indio_dev);
 
 	i2c_set_clientdata(client, indio_dev);
-	chip->dev = &client->dev;
 	mutex_init(&chip->lock);
 
 	chip->regmap = devm_regmap_init_i2c(client, &isl29028_regmap_config);
 	if (IS_ERR(chip->regmap)) {
 		ret = PTR_ERR(chip->regmap);
-		dev_err(chip->dev, "regmap initialization failed: %d\n", ret);
+		dev_err(&client->dev, "regmap initialization failed: %d\n",
+			ret);
 		return ret;
 	}
 
 	ret = isl29028_chip_init(chip);
 	if (ret < 0) {
-		dev_err(chip->dev, "chip initialization failed: %d\n", ret);
+		dev_err(&client->dev, "chip initialization failed: %d\n", ret);
 		return ret;
 	}
 
@@ -520,7 +526,8 @@ static int isl29028_probe(struct i2c_client *client,
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret < 0) {
-		dev_err(chip->dev, "iio registration fails with error %d\n",
+		dev_err(&client->dev,
+			"iio registration fails with error %d\n",
 			ret);
 		return ret;
 	}
-- 
2.1.4


