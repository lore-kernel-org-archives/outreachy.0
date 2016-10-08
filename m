X-GM-THRID: 6338982763407867904
X-Received: by 10.107.146.9 with SMTP id u9mr5487930iod.66.1475909440218;
        Fri, 07 Oct 2016 23:50:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.166 with SMTP id 35ls6329856otq.35.gmail; Fri, 07 Oct
 2016 23:50:39 -0700 (PDT)
X-Received: by 10.237.59.252 with SMTP id s57mr3494433qte.82.1475909439902;
        Fri, 07 Oct 2016 23:50:39 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si2690029pfa.1.2016.10.07.23.50.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 23:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so2403936pfz.3
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 23:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Vz+8SgHU8l6D0l9hbPI4FU8XT2Bmz2d3CQAAuRwOVoE=;
        b=hAFg18zpFZMLaKN8q34ijYkXrcYwg75DVkevBr7sNos8dsNDnFxZRDh/g8MerfGELY
         wQE0lllI5sWddXgPzi3hTHYo8+5UnQmTe/71FxK8+5+P36J4UdsGh3LhpXer0Yz5fJYC
         8hvHiwAgRtF/iDLqpJxMsMtd3vRWnpARhw7L6iaXCu+BJVP6rFPh8sMN1tGRzj2y3EWN
         DH0Y9rGCIm8zKs9pp/eS0cKMt2J3Fde0/MLaiytoUhUJqnY4uqv/inkG0CvwNr3/OlMs
         nIvwdHF+4M+eCC/50YYLrv2UybONKmKIW/IAkAKVOrb+DJYAKCHjh4uKonBg4zStOntn
         zHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Vz+8SgHU8l6D0l9hbPI4FU8XT2Bmz2d3CQAAuRwOVoE=;
        b=eF97jdX/PFMid44CCbQzsV/DoiPlZG9acvi47CqCxcfyS8WY8xKHNHMHNwmPUlGqNw
         rthXlOxrKQdmxaeEviUg9gHzEla2sQL7dPheX4IY5MP/ZVlXUPi0DZoII/AU0BjJmRcp
         QmvCeSogqlZ550vyTUSIPPdVkpnYGV+QIdWnyQ8k4xa+9LmrcQ3z/5pLKIXcIPz+R/vM
         4yUKo9N22FAsXTM5cfRu6dWfec6tbQAVXI3wEaSMDFmlZdjrco65DvrOi5siy/l9yRHv
         B6WSZ2HLmOBAsxYuj1Ku//K88f+phKeXZsloEsxvwkQHKdpds/h1P2mp6ERqBKM25TUL
         4X9Q==
X-Gm-Message-State: AA6/9RmrgTu++LFpyv34rDHAwd9XHUV7NtKXH4sKMZpy20gCSZsmbQwwGM+vuPCLOyKVow==
X-Received: by 10.98.59.211 with SMTP id w80mr36224893pfj.65.1475909439646;
        Fri, 07 Oct 2016 23:50:39 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.105])
        by smtp.gmail.com with ESMTPSA id h8sm4646475pab.9.2016.10.07.23.50.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 23:50:38 -0700 (PDT)
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
Subject: [PATCH v3 1/2] staging: iio: ad7606: implement IIO_CHAN_INFO_OVERSAMPLING_RATIO
Date: Sat,  8 Oct 2016 14:50:04 +0800
Message-Id: <179b833a61a95945502bfe249aaae5de3cf5d967.1475907512.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1475907512.git.eraretuya@gmail.com>
References: <cover.1475907512.git.eraretuya@gmail.com>
In-Reply-To: <cover.1475907512.git.eraretuya@gmail.com>
References: <cover.1475907512.git.eraretuya@gmail.com>

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


