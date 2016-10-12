X-GM-THRID: 6340704143294857216
X-Received: by 10.237.45.70 with SMTP id h64mr890745qtd.60.1476310226555;
        Wed, 12 Oct 2016 15:10:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.6 with SMTP id 6ls541229oti.32.gmail; Wed, 12 Oct 2016
 15:10:26 -0700 (PDT)
X-Received: by 10.129.40.79 with SMTP id o76mr846947ywo.18.1476310226105;
        Wed, 12 Oct 2016 15:10:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id x14si1254266vkd.3.2016.10.12.15.10.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 15:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 2so2691048vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 15:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NfgGYmicbzYj8aiB9SN/XEfIHESURerwWGbfW7/OKw0=;
        b=eDTI5Sqx2lbPGoLYhPkWkkTHNg8/Aj4EmAYlWToZGXbx46iYr8d5JFyrtZS+GyV4cB
         ULb0SpXBvmQzli6DfuGRs9ZfGHlSh/kT8VHsk9Yu9OrO5+4EWAAZq+rJ+TIxfU+6HO6j
         Au63qLtU+9UJ6r9R3e/YVegFGPFhClgeLH0X5fRrQkbG1QqAl7P4xgPKdKMsx73s61R1
         gVRVK4hCaNFQa0ypz6MRowgbxAVXUhuoU9EfyJqBKSiqFSbMBpa1WqkZwcXMZ2p4vYtz
         lYwJ5yPc5M6xXShAW25gBv9gKYDATcCe09VtQqKk9Luk+n9KyA6+GlaR2pYblOK02nlR
         KFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NfgGYmicbzYj8aiB9SN/XEfIHESURerwWGbfW7/OKw0=;
        b=XDhRTlhKTIbT8yrQTCEezZG2xPN0sxSiP1bEWZ6xH/hn9hM0dwRI2dHyVJON3LJ9v8
         jx0rrBLFxRfCmvead24ZHwmaiJSCMl2Ioffw0vh/5qGX4WfhkVp2nVgBP7Fwd6sZnu/5
         bzFv/+6vSYkjHQlIE15uoAb2iWyunW/NYOCtonh5f7GozQA6HnQ446r1FigRRE4Pxtle
         MobJSjiPTeI4PcqJxdcjfC4Mrbz+S0P4y6e7x7n9I71iqoJqtm4AGly/gtzWXfI8kD5y
         XE/wKQndfk0ixYUzuEfLxhZcvmSyByeAPTJLX6e59dtV+bh9GmXltNT33Ei16eeWfss6
         vJMg==
X-Gm-Message-State: AA6/9RmjQLb2PrGmFf+B+j3NZQRXeEIV8WJAWHoN+wPn7s8cnRDJy5vmOoq3r/Uq553Q/A==
X-Received: by 10.31.61.204 with SMTP id k195mr2260566vka.76.1476310225865;
        Wed, 12 Oct 2016 15:10:25 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id b186sm3936154vkf.15.2016.10.12.15.10.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 12 Oct 2016 15:10:25 -0700 (PDT)
Date: Wed, 12 Oct 2016 19:10:20 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: lars@metafoo.de, jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net
Cc: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com, samuel.chenatti@gmail.com
Subject: [PATCH] iio: adc: max1363: implemented IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161012221020.GA17329@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Moved functionality from IIO_DEV_ATTR_SAMP_FREQ macro into
IIO_CHAN_INFO_SAMP_FREQ. Modified max1363_read_raw and added
max1363_write_raw to allow reading and writing the element.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/iio/adc/max1363.c | 98 +++++++++++++++++++++++++----------------------
 1 file changed, 53 insertions(+), 45 deletions(-)

diff --git a/drivers/iio/adc/max1363.c b/drivers/iio/adc/max1363.c
index 841a13c..6aa7e15 100644
--- a/drivers/iio/adc/max1363.c
+++ b/drivers/iio/adc/max1363.c
@@ -413,6 +413,34 @@ static int max1363_read_single_chan(struct iio_dev *indio_dev,
 
 }
 
+static const int max1363_monitor_speeds[] = { 133000, 665000, 33300, 16600,
+					      8300, 4200, 2000, 1000 };
+
+/**
+ * write_raw handler for IIO_CHAN_INFO_SAMP_FREQ
+ */
+int max1363_write_raw_samp_freq(struct iio_dev *indio_dev,
+				struct max1363_state *st, int *val)
+{
+
+	int i, ret;
+	bool found = false;
+
+	for (i = 0; i < ARRAY_SIZE(max1363_monitor_speeds); i++)
+		if (ret == max1363_monitor_speeds[i]) {
+			found = true;
+			break;
+		}
+	if (!found)
+		return -EINVAL;
+
+	mutex_lock(&indio_dev->mlock);
+	st->monitor_speed = i;
+	mutex_unlock(&indio_dev->mlock);
+
+	return 0;
+}
+
 static int max1363_read_raw(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan,
 			    int *val,
@@ -432,12 +460,34 @@ static int max1363_read_raw(struct iio_dev *indio_dev,
 		*val = st->vref_uv / 1000;
 		*val2 = st->chip_info->bits;
 		return IIO_VAL_FRACTIONAL_LOG2;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		*val = max1363_monitor_speeds[st->monitor_speed];
+		return IIO_VAL_INT;
+
 	default:
 		return -EINVAL;
 	}
 	return 0;
 }
 
+static int max1363_write_raw(struct iio_dev *indio_dev,
+			    struct iio_chan_spec const *chan,
+			    int val,
+			    int val2,
+			    long m)
+{
+	struct max1363_state *st = iio_priv(indio_dev);
+
+	switch (m) {
+
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return max1363_write_raw_samp_freq(indio_dev, st, &val);
+
+	default:
+		return -EINVAL;
+	}
+}
+
 /* Applies to max1363 */
 static const enum max1363_modes max1363_mode_list[] = {
 	_s0, _s1, _s2, _s3,
@@ -468,6 +518,7 @@ static const struct iio_event_spec max1363_events[] = {
 		.address = addr,					\
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),		\
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),	\
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),\
 		.datasheet_name = "AIN"#num,				\
 		.scan_type = {						\
 			.sign = 'u',					\
@@ -491,6 +542,7 @@ static const struct iio_event_spec max1363_events[] = {
 		.address = addr,					\
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),		\
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),	\
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),\
 		.datasheet_name = "AIN"#num"-AIN"#num2,			\
 		.scan_type = {						\
 			.sign = 's',					\
@@ -675,50 +727,6 @@ enum { max1361,
        max11647
 };
 
-static const int max1363_monitor_speeds[] = { 133000, 665000, 33300, 16600,
-					      8300, 4200, 2000, 1000 };
-
-static ssize_t max1363_monitor_show_freq(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
-{
-	struct max1363_state *st = iio_priv(dev_to_iio_dev(dev));
-	return sprintf(buf, "%d\n", max1363_monitor_speeds[st->monitor_speed]);
-}
-
-static ssize_t max1363_monitor_store_freq(struct device *dev,
-					struct device_attribute *attr,
-					const char *buf,
-					size_t len)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct max1363_state *st = iio_priv(indio_dev);
-	int i, ret;
-	unsigned long val;
-	bool found = false;
-
-	ret = kstrtoul(buf, 10, &val);
-	if (ret)
-		return -EINVAL;
-	for (i = 0; i < ARRAY_SIZE(max1363_monitor_speeds); i++)
-		if (val == max1363_monitor_speeds[i]) {
-			found = true;
-			break;
-		}
-	if (!found)
-		return -EINVAL;
-
-	mutex_lock(&indio_dev->mlock);
-	st->monitor_speed = i;
-	mutex_unlock(&indio_dev->mlock);
-
-	return 0;
-}
-
-static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR,
-			max1363_monitor_show_freq,
-			max1363_monitor_store_freq);
-
 static IIO_CONST_ATTR(sampling_frequency_available,
 		"133000 665000 33300 16600 8300 4200 2000 1000");
 
@@ -1002,7 +1010,6 @@ static int max1363_write_event_config(struct iio_dev *indio_dev,
  * be combined.
  */
 static struct attribute *max1363_event_attributes[] = {
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
 	&iio_const_attr_sampling_frequency_available.dev_attr.attr,
 	NULL,
 };
@@ -1039,6 +1046,7 @@ static const struct iio_info max1363_info = {
 	.read_event_config = &max1363_read_event_config,
 	.write_event_config = &max1363_write_event_config,
 	.read_raw = &max1363_read_raw,
+	.write_raw = &max1363_write_raw,
 	.update_scan_mode = &max1363_update_scan_mode,
 	.driver_module = THIS_MODULE,
 	.event_attrs = &max1363_event_attribute_group,
-- 
2.10.0


