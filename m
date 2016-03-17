X-GM-THRID: 6262913708245123072
X-Received: by 10.66.142.230 with SMTP id rz6mr5976126pab.31.1458198229799;
        Thu, 17 Mar 2016 00:03:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.72 with SMTP id e66ls1776861qge.51.gmail; Thu, 17 Mar
 2016 00:03:49 -0700 (PDT)
X-Received: by 10.129.55.16 with SMTP id e16mr6115420ywa.44.1458198229167;
        Thu, 17 Mar 2016 00:03:49 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ui7si1130265pab.0.2016.03.17.00.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 00:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id u190so108239824pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 00:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=w/K56Dzw+Huu416j1UvzOYLK1S+vmgLQnyWeaT/QVTU=;
        b=lcC8td3Rntthsq6nADNaie7Gt1my9OFuYU9EX0wQm4hqx8IO8CudxEbm4J6FBJL6rr
         cDXP6c0+c7aWin7mV9Psda7AIO10lBhcHbsnI+NQNG+liex5AY9dbJRBDJbMcIp1xju5
         4pTBq5msYTtQ+P5MHQH7p8fg3pQBOVhZ/PRnMOLD3bSYD2dyo6bbrBa5Vi/H7W+gWtId
         FhIjx1V0hTJwx3ibt4/v+X+X2DUNr8fSw0TSEGjO10IQrx8DlS9BbkzZUEC+xEasKeae
         QJdGT/QJh/bUbYwbGF9SIDca5WsBzPKXB5HjI0Z1L3Vtd13I/VqZhwl7Qf8eA8maw2Bg
         VxJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=w/K56Dzw+Huu416j1UvzOYLK1S+vmgLQnyWeaT/QVTU=;
        b=gqRyxJHTIaTtbhqgGNUTBSvqw5lYPOFfoWWcSapegHkjp9318/ON0veRGSwtLlDodf
         hq2Dkeyxc+LsQYD3tgWlVBMUePp2r/222apgwfGKvL4BgIswGasTc9pRRUwMb09KT9DZ
         c9IcFMp/nSRYLFnfQNdrQNMXYV/uoBSzWoJI01lArfBryzQP0dVrel3DejyWJUIdPeIR
         5BRCznuDt+kQaE9tY8V/oZxXsYgF8VB8wsyEINyAO4mvXRki/bnem2oiOofa8iJcq0ZA
         zFUh24AA/WXKAUkUqjUeN1UKnpzz/AcfhY3QTq3X/fnALKAjSGJFq4lOvI/ScMK9lUzu
         Oe6g==
X-Gm-Message-State: AD7BkJKEgbJmotcTVdNMZtF3u0B5AYWAiqLaZQDRaZXPxYknLai4mWKQ0vUE5+0T5j8A6A==
X-Received: by 10.66.139.199 with SMTP id ra7mr12668393pab.74.1458198228911;
        Thu, 17 Mar 2016 00:03:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id ah10sm10482403pad.23.2016.03.17.00.03.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 00:03:48 -0700 (PDT)
Date: Thu, 17 Mar 2016 00:03:46 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: use kernel preferred block commenting style
Message-ID: <20160317070333.GA7276@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use * on subsequent lines and trailing */ on a separate
line in block comments.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c                | 20 ++++++++++----------
 drivers/staging/iio/impedance-analyzer/ad5933.c |  5 +++--
 drivers/staging/iio/light/tsl2x7x_core.c        | 24 +++++++++++++++---------
 drivers/staging/iio/meter/ade7753.c             |  3 ++-
 drivers/staging/iio/meter/ade7754.c             |  3 ++-
 drivers/staging/iio/meter/ade7758_core.c        |  3 ++-
 drivers/staging/iio/meter/ade7759.c             |  3 ++-
 drivers/staging/iio/meter/ade7854.c             |  3 ++-
 8 files changed, 38 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index f843f19..f91468e 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -35,10 +35,10 @@
 #define AD7192_REG_DATA		3 /* Data Register	     (RO, 24/32-bit) */
 #define AD7192_REG_ID		4 /* ID Register	     (RO, 8-bit) */
 #define AD7192_REG_GPOCON	5 /* GPOCON Register	     (RO, 8-bit) */
-#define AD7192_REG_OFFSET	6 /* Offset Register	     (RW, 16-bit
-				   * (AD7792)/24-bit (AD7192)) */
-#define AD7192_REG_FULLSALE	7 /* Full-Scale Register
-				   * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
+#define AD7192_REG_OFFSET	6 /* Offset Register	     (RW, 16-bit */
+				  /* (AD7792)/24-bit (AD7192)) */
+#define AD7192_REG_FULLSALE	7 /* Full-Scale Register */
+				  /* (RW, 16-bit (AD7792)/24-bit (AD7192)) */
 
 /* Communications Register Bit Designations (AD7192_REG_COMM) */
 #define AD7192_COMM_WEN		BIT(7) /* Write Enable */
@@ -80,13 +80,13 @@
 #define AD7192_MODE_CAL_SYS_FULL	7 /* System Full-Scale Calibration */
 
 /* Mode Register: AD7192_MODE_CLKSRC options */
-#define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected
-					   * from MCLK1 to MCLK2 */
+#define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected*/
+					  /* from MCLK1 to MCLK2 */
 #define AD7192_CLK_EXT_MCLK2		1 /* External Clock applied to MCLK2 */
-#define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not
-					   * available at the MCLK2 pin */
-#define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
-					   * at the MCLK2 pin */
+#define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not */
+					  /* available at the MCLK2 pin */
+#define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available*/
+					  /* at the MCLK2 pin */
 
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index d1218d8..e27b58b 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -683,8 +683,9 @@ static void ad5933_work(struct work_struct *work)
 	}
 
 	if (status & AD5933_STAT_SWEEP_DONE) {
-		/* last sample received - power down do nothing until
-		 * the ring enable is toggled */
+		/* last sample received - power down do
+		 * nothing until the ring enable is toggled
+		 */
 		ad5933_cmd(st, AD5933_CTRL_POWER_DOWN);
 	} else {
 		/* we just received a valid datum, move on to the next */
diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 5f308ba..be78255 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -187,9 +187,10 @@ struct tsl2X7X_chip {
 	const struct tsl2x7x_chip_info	*chip_info;
 	const struct iio_info *info;
 	s64 event_timestamp;
-	/* This structure is intentionally large to accommodate
-	 * updates via sysfs. */
-	/* Sized to 9 = max 8 segments + 1 termination segment */
+	/* This structure is intentionally large
+	 * to accommodate updates via sysfs.
+	 * Sized to 9 = max 8 segments + 1 termination segment
+	 */
 	struct tsl2x7x_lux tsl2x7x_device_lux[TSL2X7X_MAX_LUX_TABLE_SIZE];
 };
 
@@ -696,7 +697,8 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	chip->als_time_scale = (als_time + 25) / 50;
 
 	/* TSL2X7X Specific power-on / adc enable sequence
-	 * Power on the device 1st. */
+	 * Power on the device 1st.
+	 */
 	utmp = TSL2X7X_CNTL_PWR_ON;
 	ret = i2c_smbus_write_byte_data(chip->client,
 		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
@@ -707,7 +709,8 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	}
 
 	/* Use the following shadow copy for our delay before enabling ADC.
-	 * Write all the registers. */
+	 * Write all the registers.
+	 */
 	for (i = 0, dev_reg = chip->tsl2x7x_config;
 			i < TSL2X7X_MAX_CONFIG_REG; i++) {
 		ret = i2c_smbus_write_byte_data(chip->client,
@@ -722,7 +725,8 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	mdelay(3);	/* Power-on settling time */
 
 	/* NOW enable the ADC
-	 * initialize the desired mode of operation */
+	 * initialize the desired mode of operation
+	 */
 	utmp = TSL2X7X_CNTL_PWR_ON |
 			TSL2X7X_CNTL_ADC_ENBL |
 			TSL2X7X_CNTL_PROX_DET_ENBL;
@@ -1147,7 +1151,8 @@ static ssize_t tsl2x7x_luxtable_show(struct device *dev,
 			chip->tsl2x7x_device_lux[i].ch1);
 		if (chip->tsl2x7x_device_lux[i].ratio == 0) {
 			/* We just printed the first "0" entry.
-			 * Now get rid of the extra "," and break. */
+			 * Now get rid of the extra "," and break.
+			 */
 			offset--;
 			break;
 		}
@@ -1892,8 +1897,9 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 		return ret;
 	}
 
-	/* ALS and PROX functions can be invoked via user space poll
-	 * or H/W interrupt. If busy return last sample. */
+	/* ALS and PROX functions can be invoked via user space
+	 * poll or H/W interrupt. If busy return last sample.
+	 */
 	mutex_init(&chip->als_mutex);
 	mutex_init(&chip->prox_mutex);
 
diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 6928710..1ff86c6 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -333,7 +333,8 @@ static int ade7753_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(3); /* Enables an interrupt when a data is
-				    present in the waveform register */
+				  * present in the waveform register
+				  */
 	else
 		irqen &= ~BIT(3);
 
diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index f4188e1..bc28179 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -351,7 +351,8 @@ static int ade7754_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(14); /* Enables an interrupt when a data is
-				     present in the waveform register */
+				   * present in the waveform register
+				   */
 	else
 		irqen &= ~BIT(14);
 
diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 40f5afa..dcf27c3 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -427,7 +427,8 @@ int ade7758_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(16); /* Enables an interrupt when a data is
-				     present in the waveform register */
+				   * present in the waveform register
+				   */
 	else
 		irqen &= ~BIT(16);
 
diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 684e612..37d0fa8 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -289,7 +289,8 @@ static int ade7759_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(3); /* Enables an interrupt when a data is
-				    present in the waveform register */
+				  * present in the waveform register
+				  */
 	else
 		irqen &= ~BIT(3);
 
diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
index 9e439af..75e8685 100644
--- a/drivers/staging/iio/meter/ade7854.c
+++ b/drivers/staging/iio/meter/ade7854.c
@@ -421,7 +421,8 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(17); /* 1: interrupt enabled when all periodical
-				     (at 8 kHz rate) DSP computations finish. */
+				   * (at 8 kHz rate) DSP computations finish.
+				   */
 	else
 		irqen &= ~BIT(17);
 
-- 
2.1.4


