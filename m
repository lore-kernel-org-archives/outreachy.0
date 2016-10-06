X-GM-THRID: 6338362197429714944
X-Received: by 10.66.123.74 with SMTP id ly10mr2824044pab.104.1475764950041;
        Thu, 06 Oct 2016 07:42:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls2994027otf.43.gmail; Thu, 06 Oct
 2016 07:42:29 -0700 (PDT)
X-Received: by 10.200.48.196 with SMTP id w4mr1208497qta.84.1475764949527;
        Thu, 06 Oct 2016 07:42:29 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si4456869pab.2.2016.10.06.07.42.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 07:42:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hh10so1224778pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 07:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bZHOKuMuQYIcUQsJUAEevVojx1t9M0sF0jgJ0iX607A=;
        b=ixhASmb8w/GyKoCxozT5MmLh/dF7A2PMy8B00bjlj1LAA2OWyZ30wGixlTPlZ883A7
         LE2qPDuHucFa7mRWfe9h2Dl2GLOTKppZ05LgUvuC+Kv+hQjxYp4GRRe0viMusZmlFeV1
         EoMuuv+Ea5YwR42/EnPd2BlT5ML4xqnM3eca/hkJiM49KTORLp/ygqtD3I+29DHGwKXq
         KwqQx0EvZn4BrYa4dRPZZSfmF63OFNUnJy/iLUxK9yZmkZmvjc0/NZ9qx7ghFAMJLVyL
         v/EjYcb/7uQi9UKWZ5i/kwFOUCh+q20Sh9MVnkftlVz7QgGiB+3o1roVqUlg3CYkt/zm
         NBFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bZHOKuMuQYIcUQsJUAEevVojx1t9M0sF0jgJ0iX607A=;
        b=FyBKoa2zQvhtT0w10JFzvRxHbnKDC9KCHtZL9unaDTirqumbmnIHW18W9eauPRyMzT
         NMn9C2b7RUVmgB+0RtYqrfFfbf/Q745dNnOlMEXG9gFAWYWf3a/o6LVeiRNRSQw8iCtv
         ueSA0vl99OtdT4es0AWoNsmlVyoNiJTkDqkEoBqu5/XICBGMonJfwnkErJB7acHd9nr9
         Hct9MqMqu3d9kGoFpuYFirOFxk43qY6zuHxVCnhotLZwpBcMVtslb0yQRmU1EO0aiJRR
         NKKppV28NsEwPBMgVUJzaw/yvvGt8vvQrtfTCJF+n9H444+OEVftn3TGvq43uNXtkSia
         jERg==
X-Gm-Message-State: AA6/9Rk8PYDP0QpBxEeA2NvdTPHSErahsLrY0ZPQV5sbfXpD3DvtTCWnQ6MgNOx2qlUbSg==
X-Received: by 10.66.228.226 with SMTP id sl2mr22121916pac.131.1475764949243;
        Thu, 06 Oct 2016 07:42:29 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.120.85])
        by smtp.gmail.com with ESMTPSA id k17sm6383612pfg.65.2016.10.06.07.42.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 07:42:28 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: iio: ad7606: implement IIO_CHAN_INFO_OVERSAMPLING_RATIO
Date: Thu,  6 Oct 2016 22:42:00 +0800
Message-Id: <1475764920-7770-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

This driver predates the availability of IIO_CHAN_INFO_OVERSAMPLING_RATIO
attribute wherein usage has some advantages like it can be accessed by
in-kernel consumers as well as reduces the code size.

Therefore, use IIO_CHAN_INFO_OVERSAMPLING_RATIO to implement the
oversampling_ratio attribute instead of using IIO_DEVICE_ATTR() macro.

Move code from the functions associated with IIO_DEVICE_ATTR() into
the read_raw hook as well as add the write_raw hook with both masks set
to IIO_CHAN_INFO_OVERSAMPLING_RATIO.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/adc/ad7606_core.c | 67 ++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index f79ee61..759f31d 100644
--- a/drivers/staging/iio/adc/ad7606_core.c
+++ b/drivers/staging/iio/adc/ad7606_core.c
@@ -103,6 +103,9 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
 		*val = st->range * 2;
 		*val2 = st->chip_info->channels[0].scan_type.realbits;
 		return IIO_VAL_FRACTIONAL_LOG2;
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*val = st->oversampling;
+		return IIO_VAL_INT;
 	}
 	return -EINVAL;
 }
@@ -145,16 +148,6 @@ static IIO_DEVICE_ATTR(in_voltage_range, S_IRUGO | S_IWUSR,
 		       ad7606_show_range, ad7606_store_range, 0);
 static IIO_CONST_ATTR(in_voltage_range_available, "5000 10000");
 
-static ssize_t ad7606_show_oversampling_ratio(struct device *dev,
-					      struct device_attribute *attr,
-					      char *buf)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7606_state *st = iio_priv(indio_dev);
-
-	return sprintf(buf, "%u\n", st->oversampling);
-}
-
 static int ad7606_oversampling_get_index(unsigned int val)
 {
 	unsigned char supported[] = {0, 2, 4, 8, 16, 32, 64};
@@ -167,44 +160,43 @@ static int ad7606_oversampling_get_index(unsigned int val)
 	return -EINVAL;
 }
 
-static ssize_t ad7606_store_oversampling_ratio(struct device *dev,
-					       struct device_attribute *attr,
-					       const char *buf, size_t count)
+static int ad7606_write_raw(struct iio_dev *indio_dev,
+			    struct iio_chan_spec const *chan,
+			    int val,
+			    int val2,
+			    long mask)
 {
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7606_state *st = iio_priv(indio_dev);
-	unsigned long lval;
 	int ret;
 
-	ret = kstrtoul(buf, 10, &lval);
-	if (ret)
-		return ret;
+	switch (mask) {
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		if (val2)
+			return -EINVAL;
+		ret = ad7606_oversampling_get_index(val);
+		if (ret < 0) {
+			dev_err(dev, "oversampling %lu is not supported\n",
+				val);
+			return ret;
+		}
 
-	ret = ad7606_oversampling_get_index(lval);
-	if (ret < 0) {
-		dev_err(dev, "oversampling %lu is not supported\n", lval);
-		return ret;
+		mutex_lock(&indio_dev->mlock);
+		gpio_set_value(st->pdata->gpio_os0, (ret >> 0) & 1);
+		gpio_set_value(st->pdata->gpio_os1, (ret >> 1) & 1);
+		gpio_set_value(st->pdata->gpio_os1, (ret >> 2) & 1);
+		st->oversampling = val;
+		mutex_unlock(&indio_dev->mlock);
+		return 0;
+	default:
+		return -EINVAL;
 	}
-
-	mutex_lock(&indio_dev->mlock);
-	gpio_set_value(st->pdata->gpio_os0, (ret >> 0) & 1);
-	gpio_set_value(st->pdata->gpio_os1, (ret >> 1) & 1);
-	gpio_set_value(st->pdata->gpio_os1, (ret >> 2) & 1);
-	st->oversampling = lval;
-	mutex_unlock(&indio_dev->mlock);
-
-	return count;
 }
 
-static IIO_DEVICE_ATTR(oversampling_ratio, S_IRUGO | S_IWUSR,
-		       ad7606_show_oversampling_ratio,
-		       ad7606_store_oversampling_ratio, 0);
 static IIO_CONST_ATTR(oversampling_ratio_available, "0 2 4 8 16 32 64");
 
 static struct attribute *ad7606_attributes_os_and_range[] = {
 	&iio_dev_attr_in_voltage_range.dev_attr.attr,
 	&iio_const_attr_in_voltage_range_available.dev_attr.attr,
-	&iio_dev_attr_oversampling_ratio.dev_attr.attr,
 	&iio_const_attr_oversampling_ratio_available.dev_attr.attr,
 	NULL,
 };
@@ -214,7 +206,6 @@ static const struct attribute_group ad7606_attribute_group_os_and_range = {
 };
 
 static struct attribute *ad7606_attributes_os[] = {
-	&iio_dev_attr_oversampling_ratio.dev_attr.attr,
 	&iio_const_attr_oversampling_ratio_available.dev_attr.attr,
 	NULL,
 };
@@ -241,6 +232,8 @@ static const struct attribute_group ad7606_attribute_group_range = {
 		.address = num,					\
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),	\
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),\
+		.info_mask_shared_by_all =			\
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
 		.scan_index = num,				\
 		.scan_type = {					\
 			.sign = 's',				\
@@ -429,12 +422,14 @@ static const struct iio_info ad7606_info_no_os_or_range = {
 static const struct iio_info ad7606_info_os_and_range = {
 	.driver_module = THIS_MODULE,
 	.read_raw = &ad7606_read_raw,
+	.write_raw = &ad7606_write_raw,
 	.attrs = &ad7606_attribute_group_os_and_range,
 };
 
 static const struct iio_info ad7606_info_os = {
 	.driver_module = THIS_MODULE,
 	.read_raw = &ad7606_read_raw,
+	.write_raw = &ad7606_write_raw,
 	.attrs = &ad7606_attribute_group_os,
 };
 
-- 
2.7.4


