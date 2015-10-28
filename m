X-GM-THRID: 6210837635007512576
X-Received: by 10.28.145.213 with SMTP id t204mr647012wmd.0.1446073326098;
        Wed, 28 Oct 2015 16:02:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.147 with SMTP id 19ls15111lfp.5.gmail; Wed, 28 Oct 2015
 16:02:05 -0700 (PDT)
X-Received: by 10.112.138.66 with SMTP id qo2mr1386801lbb.2.1446073325480;
        Wed, 28 Oct 2015 16:02:05 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id t72si151017wme.0.2015.10.28.16.02.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x244.google.com with SMTP id t4so4904987wiu.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=zig8r0iVzY32AeWgUdfJIpK89+UDQMQJppeXvMV9IGI=;
        b=l9homYbSHndrWJLPBGAxGhaAwaJVO0yQA5/1Xq3YeZkf6QQcaLHihThmNRBMLbQThS
         OrmOVq1QOmadXJ4CeOf90tZAd3gMIH8n0GZlQkOYDc5Yyy37wDsCwxtxIhpET+H4W+8V
         Z7euTGaigTlsyKfg9uHY0S32wDkcJL19HVb1JftRcd7DTF140oYgy7UkRAEyVUpH5Zxw
         tbTd0MQuxo/xy+Hj1DzMBM8nM8qKvZjF/vZig+XXchovMjigjXv+/LwXsFb+MrWrQN0o
         gMdhi2JeNbbNPf4KKaK8qt5KmehGeiEqgHMnPNVUHJnjZiR/BgLYOx07n/TQKKAzq6cD
         0rUw==
X-Received: by 10.28.174.130 with SMTP id x124mr31906wme.12.1446073325357;
        Wed, 28 Oct 2015 16:02:05 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:04 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 1/8] staging: iio: accel: add spaces aroung binary operators
Date: Thu, 29 Oct 2015 01:01:48 +0200
Message-Id: <ad9b47af1c62daf9c60daf4dacfbe76e4073995b.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch adds spaces around binary operators such as '*',
'/', '+' in order to improve readability.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq_core.c |  4 ++--
 drivers/staging/iio/accel/lis3l02dq_ring.c | 24 ++++++++++++------------
 drivers/staging/iio/accel/sca3000_core.c   | 28 ++++++++++++++--------------
 drivers/staging/iio/accel/sca3000_ring.c   |  4 ++--
 4 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/staging/iio/accel/lis3l02dq_core.c
index ebcab56..db28b55 100644
--- a/drivers/staging/iio/accel/lis3l02dq_core.c
+++ b/drivers/staging/iio/accel/lis3l02dq_core.c
@@ -565,7 +565,7 @@ static int lis3l02dq_read_event_config(struct iio_dev *indio_dev,
 {
 	u8 val;
 	int ret;
-	u8 mask = (1 << (chan->channel2*2 + (dir == IIO_EV_DIR_RISING)));
+	u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
 
 	ret = lis3l02dq_spi_read_reg_8(indio_dev,
 				       LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
@@ -620,7 +620,7 @@ static int lis3l02dq_write_event_config(struct iio_dev *indio_dev,
 	u8 val, control;
 	u8 currentlyset;
 	bool changed = false;
-	u8 mask = (1 << (chan->channel2*2 + (dir == IIO_EV_DIR_RISING)));
+	u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
 
 	mutex_lock(&indio_dev->mlock);
 	/* read current control */
diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/staging/iio/accel/lis3l02dq_ring.c
index 1a0651c..50c162e 100644
--- a/drivers/staging/iio/accel/lis3l02dq_ring.c
+++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
@@ -69,25 +69,25 @@ static int lis3l02dq_read_all(struct iio_dev *indio_dev, u8 *rx_array)
 
 	mutex_lock(&st->buf_lock);
 
-	for (i = 0; i < ARRAY_SIZE(read_all_tx_array)/4; i++)
+	for (i = 0; i < ARRAY_SIZE(read_all_tx_array) / 4; i++)
 		if (test_bit(i, indio_dev->active_scan_mask)) {
 			/* lower byte */
-			xfers[j].tx_buf = st->tx + 2*j;
-			st->tx[2*j] = read_all_tx_array[i*4];
-			st->tx[2*j + 1] = 0;
+			xfers[j].tx_buf = st->tx + (2 * j);
+			st->tx[2 * j] = read_all_tx_array[i * 4];
+			st->tx[2 * j + 1] = 0;
 			if (rx_array)
-				xfers[j].rx_buf = rx_array + j*2;
+				xfers[j].rx_buf = rx_array + (j * 2);
 			xfers[j].bits_per_word = 8;
 			xfers[j].len = 2;
 			xfers[j].cs_change = 1;
 			j++;
 
 			/* upper byte */
-			xfers[j].tx_buf = st->tx + 2*j;
-			st->tx[2*j] = read_all_tx_array[i*4 + 2];
-			st->tx[2*j + 1] = 0;
+			xfers[j].tx_buf = st->tx + (2 * j);
+			st->tx[2 * j] = read_all_tx_array[i * 4 + 2];
+			st->tx[2 * j + 1] = 0;
 			if (rx_array)
-				xfers[j].rx_buf = rx_array + j*2;
+				xfers[j].rx_buf = rx_array + (j * 2);
 			xfers[j].bits_per_word = 8;
 			xfers[j].len = 2;
 			xfers[j].cs_change = 1;
@@ -127,11 +127,11 @@ static int lis3l02dq_get_buffer_element(struct iio_dev *indio_dev,
 		return ret;
 	}
 	for (i = 0; i < scan_count; i++)
-		data[i] = combine_8_to_16(rx_array[i*4+1],
-					rx_array[i*4+3]);
+		data[i] = combine_8_to_16(rx_array[i * 4 + 1],
+					rx_array[i * 4 + 3]);
 	kfree(rx_array);
 
-	return i*sizeof(data[0]);
+	return i * sizeof(data[0]);
 }
 
 static irqreturn_t lis3l02dq_trigger_handler(int irq, void *p)
diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index b614f27..311c8a1 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -471,8 +471,8 @@ static int sca3000_read_raw(struct iio_dev *indio_dev,
 				return ret;
 			}
 			*val = (be16_to_cpup((__be16 *)st->rx) >> 3) & 0x1FFF;
-			*val = ((*val) << (sizeof(*val)*8 - 13)) >>
-				(sizeof(*val)*8 - 13);
+			*val = ((*val) << (sizeof(*val) * 8 - 13)) >>
+				(sizeof(*val) * 8 - 13);
 		} else {
 			/* get the temperature when available */
 			ret = sca3000_read_data_short(st,
@@ -529,20 +529,20 @@ static ssize_t sca3000_read_av_freq(struct device *dev,
 	case SCA3000_MEAS_MODE_NORMAL:
 		len += sprintf(buf + len, "%d %d %d\n",
 			       st->info->measurement_mode_freq,
-			       st->info->measurement_mode_freq/2,
-			       st->info->measurement_mode_freq/4);
+			       st->info->measurement_mode_freq / 2,
+			       st->info->measurement_mode_freq / 4);
 		break;
 	case SCA3000_MEAS_MODE_OP_1:
 		len += sprintf(buf + len, "%d %d %d\n",
 			       st->info->option_mode_1_freq,
-			       st->info->option_mode_1_freq/2,
-			       st->info->option_mode_1_freq/4);
+			       st->info->option_mode_1_freq / 2,
+			       st->info->option_mode_1_freq / 4);
 		break;
 	case SCA3000_MEAS_MODE_OP_2:
 		len += sprintf(buf + len, "%d %d %d\n",
 			       st->info->option_mode_2_freq,
-			       st->info->option_mode_2_freq/2,
-			       st->info->option_mode_2_freq/4);
+			       st->info->option_mode_2_freq / 2,
+			       st->info->option_mode_2_freq / 4);
 		break;
 	}
 	return len;
@@ -605,10 +605,10 @@ static ssize_t sca3000_read_frequency(struct device *dev,
 			len = sprintf(buf, "%d\n", base_freq);
 			break;
 		case 0x01:
-			len = sprintf(buf, "%d\n", base_freq/2);
+			len = sprintf(buf, "%d\n", base_freq / 2);
 			break;
 		case 0x02:
-			len = sprintf(buf, "%d\n", base_freq/4);
+			len = sprintf(buf, "%d\n", base_freq / 4);
 			break;
 	}
 
@@ -650,9 +650,9 @@ static ssize_t sca3000_set_frequency(struct device *dev,
 	/* clear the bits */
 	ctrlval &= ~0x03;
 
-	if (val == base_freq/2) {
+	if (val == base_freq / 2) {
 		ctrlval |= SCA3000_OUT_CTRL_BUF_DIV_2;
-	} else if (val == base_freq/4) {
+	} else if (val == base_freq / 4) {
 		ctrlval |= SCA3000_OUT_CTRL_BUF_DIV_4;
 	} else if (val != base_freq) {
 		ret = -EINVAL;
@@ -997,14 +997,14 @@ exit_point:
 
 /* Free fall detector related event attribute */
 static IIO_DEVICE_ATTR_NAMED(accel_xayaz_mag_falling_en,
-			     in_accel_x&y&z_mag_falling_en,
+			     in_accel_x & y & z_mag_falling_en,
 			     S_IRUGO | S_IWUSR,
 			     sca3000_query_free_fall_mode,
 			     sca3000_set_free_fall_mode,
 			     0);
 
 static IIO_CONST_ATTR_NAMED(accel_xayaz_mag_falling_period,
-			    in_accel_x&y&z_mag_falling_period,
+			    in_accel_x & y & z_mag_falling_period,
 			    "0.226");
 
 static struct attribute *sca3000_event_attributes[] = {
diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
index ac35d03..a029af0 100644
--- a/drivers/staging/iio/accel/sca3000_ring.c
+++ b/drivers/staging/iio/accel/sca3000_ring.c
@@ -106,7 +106,7 @@ static int sca3000_read_first_n_hw_rb(struct iio_buffer *r,
 	 * i.e. number of time points * number of channels.
 	 */
 	if (count > num_available * bytes_per_sample)
-		num_read = num_available*bytes_per_sample;
+		num_read = num_available * bytes_per_sample;
 	else
 		num_read = count;
 
@@ -208,7 +208,7 @@ static ssize_t sca3000_show_buffer_scale(struct device *dev,
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct sca3000_state *st = iio_priv(indio_dev);
 
-	return sprintf(buf, "0.%06d\n", 4*st->info->scale);
+	return sprintf(buf, "0.%06d\n", 4 * st->info->scale);
 }
 
 static IIO_DEVICE_ATTR(in_accel_scale,
-- 
2.1.4


