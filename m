X-GM-THRID: 6338982763407867904
X-Received: by 10.66.246.166 with SMTP id xx6mr5069190pac.95.1475942767905;
        Sat, 08 Oct 2016 09:06:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.247 with SMTP id s52ls5261258otd.39.gmail; Sat, 08 Oct
 2016 09:06:07 -0700 (PDT)
X-Received: by 10.13.230.70 with SMTP id p67mr4307720ywe.5.1475942767601;
        Sat, 08 Oct 2016 09:06:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z73si2965974pfa.1.2016.10.08.09.06.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 09:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so4583970pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 09:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RyrygJegtXNmaNM1tnVo3BZqXEatL2RkRl0bKhTnq80=;
        b=aGx+gCTlziXCtgWmpl/KNJbldIrt5rAjjin3S0XaeaTKPAYc4/6+nkYOmBN/mIJCVt
         HvRuZMvvRPT5iX9INguiBAV48ieb8tDWK1Ggb2+e0t+iXDXTZvZAgl8qL0mZ8TExrGsp
         doQ+BUDRyk8Fy76pe6QOSJK8Ar8lQS70VuHQN/wLdqwOC8cwnxB4mupn0jWCMp+RqhJq
         IPhE3fVqsjF0FzRhGBEKPYN/TRg448FZx9XmNUuTrViEiN5IbVDOilMdEU7euYpbJfWz
         +9zuZo3nrR4igZ3lDTdbbIWsFoy9axg1KyHuobbhi0jwH6+udkiA2FLEQHE365o61Qw+
         U16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=RyrygJegtXNmaNM1tnVo3BZqXEatL2RkRl0bKhTnq80=;
        b=IZwz/CX1xvJrIMdwgwgP/gfK03eC1mHoWUz9VjDDSMr005CC+0pqWKhfQ7X6gx8Yhl
         ruxZLo+kVMb8UbjsrAxCDUZq+ozLvsMy+jQ7QNHoAnHgk49ddqszARUv6MdpOCAb8gd6
         Xks5qwPpkDx+eSBqf4XHIeM5lzWQ77CM+m3BMIgE0nnI3l1a2hs+mTKVVzEVMsk03Erw
         +/a+NbiD0RIQuG0xH9yfgqOWXdqWbf4JWWwyKd+rTYBdsl29rb+RNwWo1wPg1rMOttK5
         /FlHoOsTt31qoZzU02kqbolakJ7KaxlBycylaBhqjajWzY/kFZApGsXB8e0xu66aUcqF
         KVDg==
X-Gm-Message-State: AA6/9RkpuVWu6vwyX9A/Y6w9oqOW2HVHkK4X5Q52VZ8TthR8qzlUWLHVRYoQQNWjJ8kskw==
X-Received: by 10.98.44.198 with SMTP id s189mr16484740pfs.3.1475942767354;
        Sat, 08 Oct 2016 09:06:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.105])
        by smtp.gmail.com with ESMTPSA id f203sm22335198pfa.12.2016.10.08.09.06.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 09:06:06 -0700 (PDT)
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
Subject: [PATCH v4 2/2] staging: iio: ad7606: implement IIO_CHAN_INFO_OVERSAMPLING_RATIO
Date: Sun,  9 Oct 2016 00:05:40 +0800
Message-Id: <112de0943e9e3b8764d11612451b04b1f2939509.1475942324.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1475942324.git.eraretuya@gmail.com>
References: <cover.1475942324.git.eraretuya@gmail.com>
In-Reply-To: <cover.1475942324.git.eraretuya@gmail.com>
References: <cover.1475942324.git.eraretuya@gmail.com>

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
 drivers/staging/iio/adc/ad7606_core.c | 67 ++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index cbd6bc5..2042225 100644
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
+		gpio_set_value(st->pdata->gpio_os2, (ret >> 2) & 1);
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
-	gpio_set_value(st->pdata->gpio_os2, (ret >> 2) & 1);
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


