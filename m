X-GM-THRID: 9842395709440
X-Received: by 10.180.80.132 with SMTP id r4mr4744597wix.4.1427317359976;
        Wed, 25 Mar 2015 14:02:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.3 with SMTP id h3ls1379449wiv.42.canary; Wed, 25 Mar
 2015 14:02:39 -0700 (PDT)
X-Received: by 10.194.201.10 with SMTP id jw10mr2541319wjc.3.1427317359642;
        Wed, 25 Mar 2015 14:02:39 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id bz6si1010260wib.3.2015.03.25.14.02.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:02:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id cc7so41581303wgb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 14:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tvHewoyM/KEb3lALbr/7M4AD46X5Dfahg8v10u76fHQ=;
        b=sxXMNCbt8BtoN13E5I/EZbR1jYHxDAO4eJ/S9OIeELZo5Eh9ZJvmc1RCU7fC7U7vMp
         vsVHpQ6uTWk05Bdtxt+5XRu4LNmNznwmMg7ptYKcKt6pxDGd1YdFrkYPahM6ajED6fJU
         haWZH2Fk0g3vXCWrhabPeiwBG0ORws+lAy8WXYK0p5oqn7w+C8Da3qW8fo4+URq8jyhl
         fkGT0ps6vNhHc+I9YFbD8cyjkICKTIW12gCBe/qPYkOUg0ye0U0CvdWW5fdewmKtmMwa
         pgpMGlcZQydJNDJIzkuLNs23n9WOEeqwN2zNQ+f6VCuFYJUHkVOteAHfpIEQkQSV3icr
         kTQg==
X-Received: by 10.194.92.169 with SMTP id cn9mr21170281wjb.61.1427317359559;
        Wed, 25 Mar 2015 14:02:39 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id gj16sm5929589wic.24.2015.03.25.14.02.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:02:38 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 406C7C1FFD; Wed, 25 Mar 2015 10:52:06 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/4] Staging: iio: Adjust alignment for function parameters
Date: Wed, 25 Mar 2015 10:51:55 +0300
Message-Id: <1427269915-4865-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>

This patch adjust parameters alignment in functions to match
open parenthesis. Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/accel/adis16201_core.c |  8 +++----
 drivers/staging/iio/accel/adis16203_core.c |  4 ++--
 drivers/staging/iio/accel/adis16204_core.c |  8 ++++---
 drivers/staging/iio/accel/adis16209_core.c |  8 +++----
 drivers/staging/iio/accel/adis16220_core.c | 38 +++++++++++++++---------------
 drivers/staging/iio/accel/adis16240_core.c | 21 ++++++++++-------
 drivers/staging/iio/accel/lis3l02dq_core.c |  4 ++--
 drivers/staging/iio/accel/lis3l02dq_ring.c |  2 +-
 8 files changed, 49 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201_core.c b/drivers/staging/iio/accel/adis16201_core.c
index 7eae5fd..10db685 100644
--- a/drivers/staging/iio/accel/adis16201_core.c
+++ b/drivers/staging/iio/accel/adis16201_core.c
@@ -135,14 +135,14 @@ static const struct iio_chan_spec adis16201_channels[] = {
 	ADIS_SUPPLY_CHAN(ADIS16201_SUPPLY_OUT, ADIS16201_SCAN_SUPPLY, 0, 12),
 	ADIS_TEMP_CHAN(ADIS16201_TEMP_OUT, ADIS16201_SCAN_TEMP, 0, 12),
 	ADIS_ACCEL_CHAN(X, ADIS16201_XACCL_OUT, ADIS16201_SCAN_ACC_X,
-		BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
 	ADIS_ACCEL_CHAN(Y, ADIS16201_YACCL_OUT, ADIS16201_SCAN_ACC_Y,
-		BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
 	ADIS_AUX_ADC_CHAN(ADIS16201_AUX_ADC, ADIS16201_SCAN_AUX_ADC, 0, 12),
 	ADIS_INCLI_CHAN(X, ADIS16201_XINCL_OUT, ADIS16201_SCAN_INCLI_X,
-		BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
 	ADIS_INCLI_CHAN(X, ADIS16201_YINCL_OUT, ADIS16201_SCAN_INCLI_Y,
-		BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
 	IIO_CHAN_SOFT_TIMESTAMP(7)
 };
 
diff --git a/drivers/staging/iio/accel/adis16203_core.c b/drivers/staging/iio/accel/adis16203_core.c
index fbbe93f..fb593d2 100644
--- a/drivers/staging/iio/accel/adis16203_core.c
+++ b/drivers/staging/iio/accel/adis16203_core.c
@@ -104,10 +104,10 @@ static const struct iio_chan_spec adis16203_channels[] = {
 	ADIS_SUPPLY_CHAN(ADIS16203_SUPPLY_OUT, ADIS16203_SCAN_SUPPLY, 0, 12),
 	ADIS_AUX_ADC_CHAN(ADIS16203_AUX_ADC, ADIS16203_SCAN_AUX_ADC, 0, 12),
 	ADIS_INCLI_CHAN(X, ADIS16203_XINCL_OUT, ADIS16203_SCAN_INCLI_X,
-		BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
 	/* Fixme: Not what it appears to be - see data sheet */
 	ADIS_INCLI_CHAN(Y, ADIS16203_YINCL_OUT, ADIS16203_SCAN_INCLI_Y,
-		0, 0, 14),
+			0, 0, 14),
 	ADIS_TEMP_CHAN(ADIS16203_TEMP_OUT, ADIS16203_SCAN_TEMP, 0, 12),
 	IIO_CHAN_SOFT_TIMESTAMP(5),
 };
diff --git a/drivers/staging/iio/accel/adis16204_core.c b/drivers/staging/iio/accel/adis16204_core.c
index 4c8acbc..ea0ac24 100644
--- a/drivers/staging/iio/accel/adis16204_core.c
+++ b/drivers/staging/iio/accel/adis16204_core.c
@@ -141,11 +141,13 @@ static const struct iio_chan_spec adis16204_channels[] = {
 	ADIS_AUX_ADC_CHAN(ADIS16204_AUX_ADC, ADIS16204_SCAN_AUX_ADC, 0, 12),
 	ADIS_TEMP_CHAN(ADIS16204_TEMP_OUT, ADIS16204_SCAN_TEMP, 0, 12),
 	ADIS_ACCEL_CHAN(X, ADIS16204_XACCL_OUT, ADIS16204_SCAN_ACC_X,
-		BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK),
+			0, 14),
 	ADIS_ACCEL_CHAN(Y, ADIS16204_YACCL_OUT, ADIS16204_SCAN_ACC_Y,
-		BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK),
+			0, 14),
 	ADIS_ACCEL_CHAN(ROOT_SUM_SQUARED_X_Y, ADIS16204_XY_RSS_OUT,
-		ADIS16204_SCAN_ACC_XY, BIT(IIO_CHAN_INFO_PEAK), 0, 14),
+			ADIS16204_SCAN_ACC_XY, BIT(IIO_CHAN_INFO_PEAK), 0, 14),
 	IIO_CHAN_SOFT_TIMESTAMP(5),
 };
 
diff --git a/drivers/staging/iio/accel/adis16209_core.c b/drivers/staging/iio/accel/adis16209_core.c
index b2c7aed..2a15899 100644
--- a/drivers/staging/iio/accel/adis16209_core.c
+++ b/drivers/staging/iio/accel/adis16209_core.c
@@ -134,14 +134,14 @@ static const struct iio_chan_spec adis16209_channels[] = {
 	ADIS_SUPPLY_CHAN(ADIS16209_SUPPLY_OUT, ADIS16209_SCAN_SUPPLY, 0, 14),
 	ADIS_TEMP_CHAN(ADIS16209_TEMP_OUT, ADIS16209_SCAN_TEMP, 0, 12),
 	ADIS_ACCEL_CHAN(X, ADIS16209_XACCL_OUT, ADIS16209_SCAN_ACC_X,
-		BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
 	ADIS_ACCEL_CHAN(Y, ADIS16209_YACCL_OUT, ADIS16209_SCAN_ACC_Y,
-		BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
+			BIT(IIO_CHAN_INFO_CALIBBIAS), 0, 14),
 	ADIS_AUX_ADC_CHAN(ADIS16209_AUX_ADC, ADIS16209_SCAN_AUX_ADC, 0, 12),
 	ADIS_INCLI_CHAN(X, ADIS16209_XINCL_OUT, ADIS16209_SCAN_INCLI_X,
-		0, 0, 14),
+			0, 0, 14),
 	ADIS_INCLI_CHAN(Y, ADIS16209_YINCL_OUT, ADIS16209_SCAN_INCLI_Y,
-		0, 0, 14),
+			0, 0, 14),
 	ADIS_ROT_CHAN(X, ADIS16209_ROT_OUT, ADIS16209_SCAN_ROT, 0, 0, 14),
 	IIO_CHAN_SOFT_TIMESTAMP(8)
 };
diff --git a/drivers/staging/iio/accel/adis16220_core.c b/drivers/staging/iio/accel/adis16220_core.c
index 0396f24..7557e3c 100644
--- a/drivers/staging/iio/accel/adis16220_core.c
+++ b/drivers/staging/iio/accel/adis16220_core.c
@@ -21,8 +21,8 @@
 #include "adis16220.h"
 
 static ssize_t adis16220_read_16bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				    struct device_attribute *attr,
+				    char *buf)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -40,9 +40,9 @@ static ssize_t adis16220_read_16bit(struct device *dev,
 }
 
 static ssize_t adis16220_write_16bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				     struct device_attribute *attr,
+				     const char *buf,
+				     size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
@@ -75,8 +75,8 @@ static int adis16220_capture(struct iio_dev *indio_dev)
 }
 
 static ssize_t adis16220_write_capture(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf, size_t len)
+				       struct device_attribute *attr,
+				       const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	bool val;
@@ -95,10 +95,10 @@ static ssize_t adis16220_write_capture(struct device *dev,
 }
 
 static ssize_t adis16220_capture_buffer_read(struct iio_dev *indio_dev,
-					char *buf,
-					loff_t off,
-					size_t count,
-					int addr)
+					     char *buf,
+					     loff_t off,
+					     size_t count,
+					     int addr)
 {
 	struct adis16220_state *st = iio_priv(indio_dev);
 	struct spi_transfer xfers[] = {
@@ -130,8 +130,8 @@ static ssize_t adis16220_capture_buffer_read(struct iio_dev *indio_dev,
 
 	/* write the begin position of capture buffer */
 	ret = adis_write_reg_16(&st->adis,
-					ADIS16220_CAPT_PNTR,
-					off > 1);
+				ADIS16220_CAPT_PNTR,
+				off > 1);
 	if (ret)
 		return -EIO;
 
@@ -181,9 +181,9 @@ static struct bin_attribute accel_bin = {
 };
 
 static ssize_t adis16220_adc1_bin_read(struct file *filp, struct kobject *kobj,
-				struct bin_attribute *attr,
-				char *buf, loff_t off,
-				size_t count)
+				       struct bin_attribute *attr,
+				       char *buf, loff_t off,
+				       size_t count)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(kobj_to_dev(kobj));
 
@@ -202,9 +202,9 @@ static struct bin_attribute adc1_bin = {
 };
 
 static ssize_t adis16220_adc2_bin_read(struct file *filp, struct kobject *kobj,
-				struct bin_attribute *attr,
-				char *buf, loff_t off,
-				size_t count)
+				       struct bin_attribute *attr,
+				       char *buf, loff_t off,
+				       size_t count)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(kobj_to_dev(kobj));
 
diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
index e2f8aff..cb074e8 100644
--- a/drivers/staging/iio/accel/adis16240_core.c
+++ b/drivers/staging/iio/accel/adis16240_core.c
@@ -27,9 +27,9 @@
 #include "adis16240.h"
 
 static ssize_t adis16240_spi_read_signed(struct device *dev,
-		struct device_attribute *attr,
-		char *buf,
-		unsigned bits)
+					 struct device_attribute *attr,
+					 char *buf,
+					 unsigned bits)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct adis *st = iio_priv(indio_dev);
@@ -39,7 +39,7 @@ static ssize_t adis16240_spi_read_signed(struct device *dev,
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 
 	ret = adis_read_reg_16(st,
-					this_attr->address, (u16 *)&val);
+			       this_attr->address, (u16 *)&val);
 	if (ret)
 		return ret;
 
@@ -51,8 +51,8 @@ static ssize_t adis16240_spi_read_signed(struct device *dev,
 }
 
 static ssize_t adis16240_read_12bit_signed(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+					   struct device_attribute *attr,
+					   char *buf)
 {
 	ssize_t ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -176,11 +176,14 @@ static const struct iio_chan_spec adis16240_channels[] = {
 	ADIS_SUPPLY_CHAN(ADIS16240_SUPPLY_OUT, ADIS16240_SCAN_SUPPLY, 0, 10),
 	ADIS_AUX_ADC_CHAN(ADIS16240_AUX_ADC, ADIS16240_SCAN_AUX_ADC, 0, 10),
 	ADIS_ACCEL_CHAN(X, ADIS16240_XACCL_OUT, ADIS16240_SCAN_ACC_X,
-		BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK), 0, 10),
+			BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK),
+			0, 10),
 	ADIS_ACCEL_CHAN(Y, ADIS16240_YACCL_OUT, ADIS16240_SCAN_ACC_Y,
-		BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK), 0, 10),
+			BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK),
+			0, 10),
 	ADIS_ACCEL_CHAN(Z, ADIS16240_ZACCL_OUT, ADIS16240_SCAN_ACC_Z,
-		BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK), 0, 10),
+			BIT(IIO_CHAN_INFO_CALIBBIAS) | BIT(IIO_CHAN_INFO_PEAK),
+			0, 10),
 	ADIS_TEMP_CHAN(ADIS16240_TEMP_OUT, ADIS16240_SCAN_TEMP, 0, 10),
 	IIO_CHAN_SOFT_TIMESTAMP(6)
 };
diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/staging/iio/accel/lis3l02dq_core.c
index b78c9c5..66bbb89 100644
--- a/drivers/staging/iio/accel/lis3l02dq_core.c
+++ b/drivers/staging/iio/accel/lis3l02dq_core.c
@@ -656,8 +656,8 @@ static int lis3l02dq_write_event_config(struct iio_dev *indio_dev,
 			(control | LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT) :
 			(control & ~LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT);
 		ret = lis3l02dq_spi_write_reg_8(indio_dev,
-					       LIS3L02DQ_REG_CTRL_2_ADDR,
-					       control);
+						LIS3L02DQ_REG_CTRL_2_ADDR,
+						control);
 		if (ret)
 			goto error_ret;
 	}
diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/staging/iio/accel/lis3l02dq_ring.c
index e6101bb..740cd83 100644
--- a/drivers/staging/iio/accel/lis3l02dq_ring.c
+++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
@@ -110,7 +110,7 @@ static int lis3l02dq_read_all(struct iio_dev *indio_dev, u8 *rx_array)
 }
 
 static int lis3l02dq_get_buffer_element(struct iio_dev *indio_dev,
-				u8 *buf)
+					u8 *buf)
 {
 	int ret, i;
 	u8 *rx_array;
-- 
1.9.1


