X-GM-THRID: 6341139750972293120
X-Received: by 10.157.50.165 with SMTP id u34mr2669371otb.45.1476411649918;
        Thu, 13 Oct 2016 19:20:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.117 with SMTP id r108ls7138100ota.19.gmail; Thu, 13 Oct
 2016 19:20:49 -0700 (PDT)
X-Received: by 10.31.150.7 with SMTP id y7mr2649854vkd.2.1476411649568;
        Thu, 13 Oct 2016 19:20:49 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id x14si2215861vkd.3.2016.10.13.19.20.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 19:20:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 83so3349405vkd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 19:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yrojLWiu63gmHq4XdpY6Pwa7qZW770B+9sdFeWwvN7Y=;
        b=sXUOA7JPGbz3gngH4Nga2JKW54O6ESMTtkK7zEpmczXQ+JWhoLWl9+3jc78TAJQIpJ
         j3QmXj2DbI8muGW0IPjjqQC5WuW07dVPHDczN9huYq9jZ5QjiZCmYXe0TTK0TfcNvc3R
         TlX1RJb7U3ANaWUItw/ow6w3tXa6hS5ZwSt4/ulWBHLDFE8Hn2G5cpbe7HjRxHSoGMYN
         VYJFUtAHvn2YBmHxgFqdhLPwTS0LhGvYSSPQ480bBissKFRWqfYlgVvtsvW/3QVpTDw4
         gwL8Dtcvtt11c4VqswMuQfQF9On59H/hYbrcP3zGnko1SbbGWHUBXK7dy56KMZlosiVl
         NC4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yrojLWiu63gmHq4XdpY6Pwa7qZW770B+9sdFeWwvN7Y=;
        b=Ewyp92+6JB9sheC0QPSZ8ej2AJibXiNF/Xnw+K+zSnB88vSajTXclD7JNd+B8mHh1A
         UvcidVgKsA2p1fbdX/ipgUOxu7N6dMArm2Siea1aDRIp0kBZ8V5WQfscQdYnP5bN1Ptm
         PkBBulFxfVOmQhGw5A2mHVV0wtrm++dl9FROo1ihH0kWjEzYwGzHvG62crtfxp/M/+q1
         Ux7wU7jeIddT159jdfwOsjFrC1U6aLBlqm6n3WoqMtuRjDHbbjKRgQFxrG/eMoZTGbkV
         Yi8cwnZm3x3qT5w9kwdAQoL8xEPSOk1qqOQyRUnVT/Kq3IWRrhe8fnx2eXwC6Lz2CZN0
         UbGg==
X-Gm-Message-State: AA6/9Rkd+4DV8/IXCxuiAld/VSPwT8QhENDJq1/pTfwgzwC2yGE7ielzJkGBBd0mXHMQHg==
X-Received: by 10.31.94.19 with SMTP id s19mr7075739vkb.167.1476411649291;
        Thu, 13 Oct 2016 19:20:49 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id k134sm3651902vkd.12.2016.10.13.19.20.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 19:20:48 -0700 (PDT)
Date: Thu, 13 Oct 2016 23:20:43 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Bcc: juliana.orod@gmail.com
Subject: [PATCH] iio: imu: inv_mpu6050: implemented IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161014022043.GA8114@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Moved functionality from IIO_DEV_ATTR_SAMP_FREQ macro into
IIO_CHAN_INFO_SAMP_FREQ in order to create a generic attribute.
Modified inv_mpu6050_read_raw and inv_mpu6050_write_raw to allow
reading and writing the element.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c | 187 ++++++++++++++---------------
 1 file changed, 92 insertions(+), 95 deletions(-)

diff --git a/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c b/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
index b9fcbf1..20722c8 100644
--- a/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
+++ b/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
@@ -263,6 +263,88 @@ static int inv_mpu6050_sensor_set(struct inv_mpu6050_state  *st, int reg,
 	return 0;
 }
 
+/**
+ *  inv_mpu6050_set_lpf() - set low pass filer based on fifo rate.
+ *
+ *                  Based on the Nyquist principle, the sampling rate must
+ *                  exceed twice of the bandwidth of the signal, or there
+ *                  would be alising. This function basically search for the
+ *                  correct low pass parameters based on the fifo rate, e.g,
+ *                  sampling frequency.
+ */
+static int inv_mpu6050_set_lpf(struct inv_mpu6050_state *st, int rate)
+{
+	const int hz[] = {188, 98, 42, 20, 10, 5};
+	const int d[] = {INV_MPU6050_FILTER_188HZ, INV_MPU6050_FILTER_98HZ,
+			INV_MPU6050_FILTER_42HZ, INV_MPU6050_FILTER_20HZ,
+			INV_MPU6050_FILTER_10HZ, INV_MPU6050_FILTER_5HZ};
+	int i, h, result;
+	u8 data;
+
+	h = (rate >> 1);
+	i = 0;
+	while ((h < hz[i]) && (i < ARRAY_SIZE(d) - 1))
+		i++;
+	data = d[i];
+	result = regmap_write(st->map, st->reg->lpf, data);
+	if (result)
+		return result;
+	st->chip_config.lpf = data;
+
+	return 0;
+}
+
+/**
+ * inv_mpu6050_write_raw_samp_freq() - Set current raw sampling rate.
+ */
+static int inv_mpu6050_write_raw_samp_freq(struct iio_dev *indio_dev,
+					   struct inv_mpu6050_state *st,
+					   int val) {
+
+	u8 d;
+	int result;
+
+	if (val < INV_MPU6050_MIN_FIFO_RATE || val > INV_MPU6050_MAX_FIFO_RATE)
+		return -EINVAL;
+	if (val == st->chip_config.fifo_rate)
+		return 0;
+
+	mutex_lock(&indio_dev->mlock);
+	if (st->chip_config.enable) {
+		result = -EBUSY;
+		goto fifo_rate_fail;
+	}
+
+	result = inv_mpu6050_set_power_itg(st, true);
+	if (result)
+		goto fifo_rate_fail;
+
+	d = INV_MPU6050_ONE_K_HZ / val - 1;
+
+	result = regmap_write(st->map, st->reg->sample_rate_div, d);
+
+	if (result)
+		goto fifo_rate_fail;
+
+	st->chip_config.fifo_rate = val;
+
+	result = inv_mpu6050_set_lpf(st, val);
+
+	if (result)
+		goto fifo_rate_fail;
+
+fifo_rate_fail:
+	result |= inv_mpu6050_set_power_itg(st, false);
+	mutex_unlock(&indio_dev->mlock);
+
+	if (result)
+		return result;
+
+	return 0;
+
+}
+
+
 static int inv_mpu6050_sensor_show(struct inv_mpu6050_state  *st, int reg,
 				   int axis, int *val)
 {
@@ -399,6 +481,10 @@ inv_mpu6050_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		*val = st->chip_config.fifo_rate;
+
+		return IIO_VAL_INT;
 	default:
 		return -EINVAL;
 	}
@@ -511,6 +597,10 @@ static int inv_mpu6050_write_raw(struct iio_dev *indio_dev,
 		default:
 			result = -EINVAL;
 		}
+		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		result = inv_mpu6050_write_raw_samp_freq(indio_dev, st, val);
+		break;
 	default:
 		result = -EINVAL;
 		break;
@@ -524,98 +614,6 @@ static int inv_mpu6050_write_raw(struct iio_dev *indio_dev,
 }
 
 /**
- *  inv_mpu6050_set_lpf() - set low pass filer based on fifo rate.
- *
- *                  Based on the Nyquist principle, the sampling rate must
- *                  exceed twice of the bandwidth of the signal, or there
- *                  would be alising. This function basically search for the
- *                  correct low pass parameters based on the fifo rate, e.g,
- *                  sampling frequency.
- */
-static int inv_mpu6050_set_lpf(struct inv_mpu6050_state *st, int rate)
-{
-	const int hz[] = {188, 98, 42, 20, 10, 5};
-	const int d[] = {INV_MPU6050_FILTER_188HZ, INV_MPU6050_FILTER_98HZ,
-			INV_MPU6050_FILTER_42HZ, INV_MPU6050_FILTER_20HZ,
-			INV_MPU6050_FILTER_10HZ, INV_MPU6050_FILTER_5HZ};
-	int i, h, result;
-	u8 data;
-
-	h = (rate >> 1);
-	i = 0;
-	while ((h < hz[i]) && (i < ARRAY_SIZE(d) - 1))
-		i++;
-	data = d[i];
-	result = regmap_write(st->map, st->reg->lpf, data);
-	if (result)
-		return result;
-	st->chip_config.lpf = data;
-
-	return 0;
-}
-
-/**
- * inv_mpu6050_fifo_rate_store() - Set fifo rate.
- */
-static ssize_t
-inv_mpu6050_fifo_rate_store(struct device *dev, struct device_attribute *attr,
-			    const char *buf, size_t count)
-{
-	s32 fifo_rate;
-	u8 d;
-	int result;
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct inv_mpu6050_state *st = iio_priv(indio_dev);
-
-	if (kstrtoint(buf, 10, &fifo_rate))
-		return -EINVAL;
-	if (fifo_rate < INV_MPU6050_MIN_FIFO_RATE ||
-	    fifo_rate > INV_MPU6050_MAX_FIFO_RATE)
-		return -EINVAL;
-	if (fifo_rate == st->chip_config.fifo_rate)
-		return count;
-
-	mutex_lock(&indio_dev->mlock);
-	if (st->chip_config.enable) {
-		result = -EBUSY;
-		goto fifo_rate_fail;
-	}
-	result = inv_mpu6050_set_power_itg(st, true);
-	if (result)
-		goto fifo_rate_fail;
-
-	d = INV_MPU6050_ONE_K_HZ / fifo_rate - 1;
-	result = regmap_write(st->map, st->reg->sample_rate_div, d);
-	if (result)
-		goto fifo_rate_fail;
-	st->chip_config.fifo_rate = fifo_rate;
-
-	result = inv_mpu6050_set_lpf(st, fifo_rate);
-	if (result)
-		goto fifo_rate_fail;
-
-fifo_rate_fail:
-	result |= inv_mpu6050_set_power_itg(st, false);
-	mutex_unlock(&indio_dev->mlock);
-	if (result)
-		return result;
-
-	return count;
-}
-
-/**
- * inv_fifo_rate_show() - Get the current sampling rate.
- */
-static ssize_t
-inv_fifo_rate_show(struct device *dev, struct device_attribute *attr,
-		   char *buf)
-{
-	struct inv_mpu6050_state *st = iio_priv(dev_to_iio_dev(dev));
-
-	return sprintf(buf, "%d\n", st->chip_config.fifo_rate);
-}
-
-/**
  * inv_attr_show() - calling this function will show current
  *                    parameters.
  *
@@ -686,6 +684,7 @@ static const struct iio_chan_spec_ext_info inv_ext_info[] = {
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE), \
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |	      \
 				      BIT(IIO_CHAN_INFO_CALIBBIAS),   \
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ), \
 		.scan_index = _index,                                 \
 		.scan_type = {                                        \
 				.sign = 's',                          \
@@ -708,6 +707,7 @@ static const struct iio_chan_spec inv_mpu_channels[] = {
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW)
 				| BIT(IIO_CHAN_INFO_OFFSET)
 				| BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.scan_index = -1,
 	},
 	INV_MPU6050_CHAN(IIO_ANGL_VEL, IIO_MOD_X, INV_MPU6050_SCAN_GYRO_X),
@@ -725,8 +725,6 @@ static IIO_CONST_ATTR(in_anglvel_scale_available,
 					  "0.000133090 0.000266181 0.000532362 0.001064724");
 static IIO_CONST_ATTR(in_accel_scale_available,
 					  "0.000598 0.001196 0.002392 0.004785");
-static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR, inv_fifo_rate_show,
-	inv_mpu6050_fifo_rate_store);
 
 /* Deprecated: kept for userspace backward compatibility. */
 static IIO_DEVICE_ATTR(in_gyro_matrix, S_IRUGO, inv_attr_show, NULL,
@@ -737,7 +735,6 @@ static IIO_DEVICE_ATTR(in_accel_matrix, S_IRUGO, inv_attr_show, NULL,
 static struct attribute *inv_attributes[] = {
 	&iio_dev_attr_in_gyro_matrix.dev_attr.attr,  /* deprecated */
 	&iio_dev_attr_in_accel_matrix.dev_attr.attr, /* deprecated */
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
 	&iio_const_attr_sampling_frequency_available.dev_attr.attr,
 	&iio_const_attr_in_accel_scale_available.dev_attr.attr,
 	&iio_const_attr_in_anglvel_scale_available.dev_attr.attr,
-- 
2.10.0


