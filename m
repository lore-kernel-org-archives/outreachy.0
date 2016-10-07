X-GM-THRID: 6338362197429714944
X-Received: by 10.200.52.23 with SMTP id u23mr2024497qtb.80.1475819349606;
        Thu, 06 Oct 2016 22:49:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.68 with SMTP id h62ls4808394oth.17.gmail; Thu, 06 Oct
 2016 22:49:09 -0700 (PDT)
X-Received: by 10.129.116.66 with SMTP id p63mr4457987ywc.83.1475819349140;
        Thu, 06 Oct 2016 22:49:09 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id c26si104903itd.0.2016.10.06.22.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hh10so2206468pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 22:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oTw2y/w8snTDm+dMtCRvSSxQmY7auOllFvOElscuK4I=;
        b=T3/hh+XN2bVdp0qfMalIO4gugWGJKUAQ7fpaKjlpc197XUo39qLeozp81WaobnbNna
         xSOCri45qigfo4pBcduxONlrP+4vPzA0Kwph/d+P1bECuuSkeSt/JniY/XVSeL8quTKS
         7tygpXpY2gbwq5cB2kG3zVsEGh0kub05e9x1CxMvBPO/Q6nwvodtrbN7x8rz56Jnf0AW
         E/21sUU4Yabe2szNZqs6GjSeU048N5kCgxPk3/ZSMNEDL009NHdtthLOGzqKR4ebJGjW
         wQUAOEv1Hj1MIhj45QhajR8NzY8rBd7OKbykDX4BfxAKahxaGLwtd02QBZDbfYX6ggmH
         ArJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oTw2y/w8snTDm+dMtCRvSSxQmY7auOllFvOElscuK4I=;
        b=JjxYKS6JpD+kK6aI5SJuJHPrTt+340gk0iZmWWAN1Y7mLM+H2YDQzc1SRVIMJ48yzL
         Mkqi6UJdBGgREtdtYB6GT3Nte+o462tySZx8+UukXrrRBjEid71Yl3epOEA+gWJWsk50
         EqVC08RkxbsX6BaZ8T+jlqVJIwnhkdRxki1xwqZo7Hh6G7cWl86mFk2zwSAYfHvkULyL
         T291KdXc4xQI4ACpruulVwUmYyY+bCuX/bwYvnvUOKr8qxY1eyrQZ9/Uj1O1IM+1kGho
         YFRRBCUQ3VN5qno9TbQWSo0/MYlAM0XAtwZF8T8hVkPDb03zE+L+JfHoero1OUgTlUBh
         Xepw==
X-Gm-Message-State: AA6/9RlLSco184iAetWxSGvwsoAMmQk3QNaK1vzJ3lWRaRaQOJVJ/yMbC3cYJZ9ueE2+PA==
X-Received: by 10.66.26.174 with SMTP id m14mr27846358pag.58.1475819348511;
        Thu, 06 Oct 2016 22:49:08 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.64])
        by smtp.gmail.com with ESMTPSA id id6sm27153146pad.28.2016.10.06.22.49.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 22:49:07 -0700 (PDT)
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
Subject: [PATCH v2] staging: iio: ad7606: implement IIO_CHAN_INFO_OVERSAMPLING_RATIO
Date: Fri,  7 Oct 2016 13:48:44 +0800
Message-Id: <1475819324-7801-1-git-send-email-eraretuya@gmail.com>
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
Acked-by: Lars-Peter Clausen <lars@metafoo.de>
---
Changes in v2:
* Add Lar's Acked-by tag
* Update dev_err() to use proper arguments

 drivers/staging/iio/adc/ad7606_core.c | 67 ++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index f79ee61..437c7d0 100644
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
+			dev_err(st->dev, "oversampling %d is not supported\n",
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


