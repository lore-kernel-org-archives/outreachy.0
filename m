X-GM-THRID: 9130553114624
X-Received: by 10.152.6.232 with SMTP id e8mr12354595laa.2.1426792048062;
        Thu, 19 Mar 2015 12:07:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.33 with SMTP id cr1ls286366lad.47.gmail; Thu, 19 Mar
 2015 12:07:27 -0700 (PDT)
X-Received: by 10.152.3.70 with SMTP id a6mr1550184laa.0.1426792047590;
        Thu, 19 Mar 2015 12:07:27 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id bz6si460684wib.3.2015.03.19.12.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id dy8so126350731wib.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=r6vI8/eS8FQECvU31d9Y4I3uNGTbnuQLVoHY1qmoH94=;
        b=POKGYehWl3i4F76gPihA/Cuw2PPMnVMEZ7OQB9s9FCSvfGLmw/ZCETeOod7PA494vl
         ICpH1OfiPll5jSfXbmD8KhM33YLaYggT4q5CI2RgtAhgiEWC+NknqG5OsTsvCpdJHquu
         XC+v20w2B/TMsW92Sw4dj+T9pVynfwGvTMOLvZdpyD02ShFHtjP7FsOFYmMRJORETc+c
         GdT1GmoKP3A5vodRsNpuEK8WstQZBRf64ik2wU8t0ny6vpo0imP3/j+pdsVlw9T1bXly
         24jawz0ahiZfM/TiB+WS/o5siCHgCWRTj1sltbNHKrjgSpHIs9XuhEH3uP4teAS7fx+d
         1ppw==
X-Received: by 10.194.185.9 with SMTP id ey9mr157075725wjc.135.1426792047508;
        Thu, 19 Mar 2015 12:07:27 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id dq8sm3658024wib.9.2015.03.19.12.07.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:07:26 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:06:42 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] Staging: iio: Align function parameters to match first
 row
Message-ID: <11779062f4ff1c91d6e5649542e6b1b2f2cff266.1426790662.git.cristina.opriceana@gmail.com>
References: <cover.1426790662.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790662.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch improves coding style by aligning parameters in
iio/magnetometer function calls, to remove the following warning:
"CHECK: Alignment should match open parenthesis".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843.h      |  2 +-
 drivers/staging/iio/magnetometer/hmc5843_core.c | 56 ++++++++++++++-----------
 drivers/staging/iio/magnetometer/hmc5843_i2c.c  |  2 +-
 3 files changed, 33 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843.h b/drivers/staging/iio/magnetometer/hmc5843.h
index b784e3e..879d43b 100644
--- a/drivers/staging/iio/magnetometer/hmc5843.h
+++ b/drivers/staging/iio/magnetometer/hmc5843.h
@@ -41,7 +41,7 @@ struct hmc5843_data {
 };
 
 int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
-		enum hmc5843_ids id);
+			 enum hmc5843_ids id);
 int hmc5843_common_remove(struct device *dev);
 
 int hmc5843_common_suspend(struct device *dev);
diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 20c693e..9c4ac0a 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -122,7 +122,7 @@ static s32 hmc5843_set_mode(struct hmc5843_data *data, u8 operating_mode)
 
 	mutex_lock(&data->lock);
 	ret = regmap_update_bits(data->regmap, HMC5843_MODE_REG,
-			HMC5843_MODE_MASK, operating_mode);
+				 HMC5843_MODE_MASK, operating_mode);
 	mutex_unlock(&data->lock);
 
 	return ret;
@@ -165,7 +165,7 @@ static int hmc5843_read_measurement(struct hmc5843_data *data,
 		return ret;
 	}
 	ret = regmap_bulk_read(data->regmap, HMC5843_DATA_OUT_MSB_REGS,
-			values, sizeof(values));
+			       values, sizeof(values));
 	mutex_unlock(&data->lock);
 	if (ret < 0)
 		return ret;
@@ -198,15 +198,16 @@ static int hmc5843_set_meas_conf(struct hmc5843_data *data, u8 meas_conf)
 
 	mutex_lock(&data->lock);
 	ret = regmap_update_bits(data->regmap, HMC5843_CONFIG_REG_A,
-			HMC5843_MEAS_CONF_MASK, meas_conf);
+				 HMC5843_MEAS_CONF_MASK, meas_conf);
 	mutex_unlock(&data->lock);
 
 	return ret;
 }
 
-static ssize_t hmc5843_show_measurement_configuration(struct device *dev,
-						struct device_attribute *attr,
-						char *buf)
+static
+ssize_t hmc5843_show_measurement_configuration(struct device *dev,
+					       struct device_attribute *attr,
+					       char *buf)
 {
 	struct hmc5843_data *data = iio_priv(dev_to_iio_dev(dev));
 	unsigned int val;
@@ -220,10 +221,11 @@ static ssize_t hmc5843_show_measurement_configuration(struct device *dev,
 	return sprintf(buf, "%d\n", val);
 }
 
-static ssize_t hmc5843_set_measurement_configuration(struct device *dev,
-						struct device_attribute *attr,
-						const char *buf,
-						size_t count)
+static
+ssize_t hmc5843_set_measurement_configuration(struct device *dev,
+					      struct device_attribute *attr,
+					      const char *buf,
+					      size_t count)
 {
 	struct hmc5843_data *data = iio_priv(dev_to_iio_dev(dev));
 	unsigned long meas_conf = 0;
@@ -246,8 +248,9 @@ static IIO_DEVICE_ATTR(meas_conf,
 			hmc5843_set_measurement_configuration,
 			0);
 
-static ssize_t hmc5843_show_samp_freq_avail(struct device *dev,
-				struct device_attribute *attr, char *buf)
+static
+ssize_t hmc5843_show_samp_freq_avail(struct device *dev,
+				     struct device_attribute *attr, char *buf)
 {
 	struct hmc5843_data *data = iio_priv(dev_to_iio_dev(dev));
 	size_t len = 0;
@@ -272,20 +275,21 @@ static int hmc5843_set_samp_freq(struct hmc5843_data *data, u8 rate)
 
 	mutex_lock(&data->lock);
 	ret = regmap_update_bits(data->regmap, HMC5843_CONFIG_REG_A,
-			HMC5843_RATE_MASK, rate << HMC5843_RATE_OFFSET);
+				 HMC5843_RATE_MASK,
+				 rate << HMC5843_RATE_OFFSET);
 	mutex_unlock(&data->lock);
 
 	return ret;
 }
 
 static int hmc5843_get_samp_freq_index(struct hmc5843_data *data,
-				   int val, int val2)
+				       int val, int val2)
 {
 	int i;
 
 	for (i = 0; i < data->variant->n_regval_to_samp_freq; i++)
 		if (val == data->variant->regval_to_samp_freq[i][0] &&
-			val2 == data->variant->regval_to_samp_freq[i][1])
+		    val2 == data->variant->regval_to_samp_freq[i][1])
 			return i;
 
 	return -EINVAL;
@@ -297,15 +301,16 @@ static int hmc5843_set_range_gain(struct hmc5843_data *data, u8 range)
 
 	mutex_lock(&data->lock);
 	ret = regmap_update_bits(data->regmap, HMC5843_CONFIG_REG_B,
-			HMC5843_RANGE_GAIN_MASK,
-			range << HMC5843_RANGE_GAIN_OFFSET);
+				 HMC5843_RANGE_GAIN_MASK,
+				 range << HMC5843_RANGE_GAIN_OFFSET);
 	mutex_unlock(&data->lock);
 
 	return ret;
 }
 
 static ssize_t hmc5843_show_scale_avail(struct device *dev,
-				struct device_attribute *attr, char *buf)
+					struct device_attribute *attr,
+					char *buf)
 {
 	struct hmc5843_data *data = iio_priv(dev_to_iio_dev(dev));
 
@@ -396,7 +401,8 @@ static int hmc5843_write_raw(struct iio_dev *indio_dev,
 }
 
 static int hmc5843_write_raw_get_fmt(struct iio_dev *indio_dev,
-			       struct iio_chan_spec const *chan, long mask)
+				     struct iio_chan_spec const *chan,
+				     long mask)
 {
 	switch (mask) {
 	case IIO_CHAN_INFO_SAMP_FREQ:
@@ -423,14 +429,14 @@ static irqreturn_t hmc5843_trigger_handler(int irq, void *p)
 	}
 
 	ret = regmap_bulk_read(data->regmap, HMC5843_DATA_OUT_MSB_REGS,
-			data->buffer, 3 * sizeof(__be16));
+			       data->buffer, 3 * sizeof(__be16));
 
 	mutex_unlock(&data->lock);
 	if (ret < 0)
 		goto done;
 
 	iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
-		iio_get_time_ns());
+					   iio_get_time_ns());
 
 done:
 	iio_trigger_notify_done(indio_dev->trig);
@@ -526,7 +532,7 @@ static int hmc5843_init(struct hmc5843_data *data)
 	u8 id[3];
 
 	ret = regmap_bulk_read(data->regmap, HMC5843_ID_REG,
-			id, ARRAY_SIZE(id));
+			       id, ARRAY_SIZE(id));
 	if (ret < 0)
 		return ret;
 	if (id[0] != 'H' || id[1] != '4' || id[2] != '3') {
@@ -567,12 +573,12 @@ EXPORT_SYMBOL(hmc5843_common_suspend);
 int hmc5843_common_resume(struct device *dev)
 {
 	return hmc5843_set_mode(iio_priv(dev_get_drvdata(dev)),
-			HMC5843_MODE_SLEEP);
+				HMC5843_MODE_SLEEP);
 }
 EXPORT_SYMBOL(hmc5843_common_resume);
 
 int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
-		enum hmc5843_ids id)
+			 enum hmc5843_ids id)
 {
 	struct hmc5843_data *data;
 	struct iio_dev *indio_dev;
@@ -604,7 +610,7 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 		return ret;
 
 	ret = iio_triggered_buffer_setup(indio_dev, NULL,
-		hmc5843_trigger_handler, NULL);
+					 hmc5843_trigger_handler, NULL);
 	if (ret < 0)
 		goto sleep_mode;
 
diff --git a/drivers/staging/iio/magnetometer/hmc5843_i2c.c b/drivers/staging/iio/magnetometer/hmc5843_i2c.c
index 6acd614..8d090b4 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_i2c.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_i2c.c
@@ -57,7 +57,7 @@ static struct regmap_config hmc5843_i2c_regmap_config = {
 };
 
 static int hmc5843_i2c_probe(struct i2c_client *client,
-			 const struct i2c_device_id *id)
+			     const struct i2c_device_id *id)
 {
 	return hmc5843_common_probe(&client->dev,
 			devm_regmap_init_i2c(client, &hmc5843_i2c_regmap_config),
-- 
1.9.1


