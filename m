X-GM-THRID: 6336365196847611904
X-Received: by 10.237.46.103 with SMTP id j94mr2924898qtd.0.1475299987410;
        Fri, 30 Sep 2016 22:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls6599796otw.27.gmail; Fri, 30 Sep
 2016 22:33:07 -0700 (PDT)
X-Received: by 10.31.125.139 with SMTP id y133mr2958275vkc.2.1475299987027;
        Fri, 30 Sep 2016 22:33:07 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ua1si1225523pac.1.2016.09.30.22.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 22:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so5616735pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 22:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0rP8ij7k/LOYNr8VL4GMyUGGmNWk0SyejlJ4bLdMUTw=;
        b=Y5ikiEiJlUQ5DIHY2M1dlO45l31pfeb5T3krnfeAjE3aYRrBzuffM9zNcIp3xMME0T
         rQu+OE/hpsWLeWjTPq6QlNiEH/e8APL/ve/YT/Yx0yzwhdxRmyB0ETuFU3E97kp1/CCt
         BfgX4k4N6WJ23ZHiEYzmrAZlrVkGUSsAjfONJkL7G7hN/SOZdQPaElUJzOhTemhCdaFs
         l+wcThHBSVLZsuTpE4j6SpLS79HbDd/IIiGhBwSmuATQp0KzoNjCZ2QTAl3wvzM/Jnt3
         c5ejy8yQRZSfcRizvZprCjTzngYAhAEIXAZAe0x+4VZHdlzbnlEOIBxNfCVojMg3yRgM
         vWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0rP8ij7k/LOYNr8VL4GMyUGGmNWk0SyejlJ4bLdMUTw=;
        b=bn1xvxo6nNmAg249TLplMqbGov6ISMh+xXmgr/f+SvlFiicUZi45VdYRQSmK27UOHD
         Oy3pbHvLxq6tWdYL/J3HO8IrR8Nc7R7zx+q7zhUgLJkjQ+UNElr/hB9fbJTmJkw6PzZk
         +7BPofTOHVPWdkE5VcwehWo9MJmWc8iICeRQ5Q6XhQFVyY8aUnWcmNwYfHO14I+jSp+T
         xw4XmNQqN4BF98L5/4lLZC3jFvrc9isILD/L1Ycr9HixC+xz8JOr/+B4SI6vEW1dgvrw
         U/dlLjsfNBSA3XVeNYFpTm86zq1CqupKYeH8utRnTPs9hxBoCsCCtc738aybh8z/1bb0
         RTKw==
X-Gm-Message-State: AA6/9Rk1D+RENn5Y3ZxHfObRQjLPJa2YQY3bj/LlVSYIRJaWmqJJhHRJehbx4L5Fc27M2g==
X-Received: by 10.66.48.170 with SMTP id m10mr17705063pan.43.1475299986765;
        Fri, 30 Sep 2016 22:33:06 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.217.210])
        by smtp.gmail.com with ESMTPSA id yk6sm9241435pab.43.2016.09.30.22.32.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 22:33:06 -0700 (PDT)
Date: Sat, 1 Oct 2016 11:02:47 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Outreachy kernel] [PATCH] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
Message-ID: <20161001053247.GA14195@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
IIO_CHAN_INFO_SAMP_FREQ. Modify ad7152_read_raw() and
ad7152_write_raw() to allow reading and writing the element.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 115 ++++++++++++++++++++++-----------------
 1 file changed, 64 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 485d0a5..7b0f26e 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -165,63 +165,12 @@ static const unsigned char ad7152_filter_rate_table[][2] = {
 	{200, 5 + 1}, {50, 20 + 1}, {20, 50 + 1}, {17, 60 + 1},
 };
 
-static ssize_t ad7152_show_filter_rate_setup(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7152_chip_info *chip = iio_priv(indio_dev);
-
-	return sprintf(buf, "%d\n",
-		       ad7152_filter_rate_table[chip->filter_rate_setup][0]);
-}
-
-static ssize_t ad7152_store_filter_rate_setup(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7152_chip_info *chip = iio_priv(indio_dev);
-	u8 data;
-	int ret, i;
-
-	ret = kstrtou8(buf, 10, &data);
-	if (ret < 0)
-		return ret;
-
-	for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
-		if (data >= ad7152_filter_rate_table[i][0])
-			break;
-
-	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
-		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
-
-	mutex_lock(&indio_dev->mlock);
-	ret = i2c_smbus_write_byte_data(chip->client,
-			AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
-	if (ret < 0) {
-		mutex_unlock(&indio_dev->mlock);
-		return ret;
-	}
-
-	chip->filter_rate_setup = i;
-	mutex_unlock(&indio_dev->mlock);
-
-	return len;
-}
-
-static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR,
-		ad7152_show_filter_rate_setup,
-		ad7152_store_filter_rate_setup);
-
 static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("200 50 20 17");
 
 static IIO_CONST_ATTR(in_capacitance_scale_available,
 		      "0.000061050 0.000030525 0.000015263 0.000007631");
 
 static struct attribute *ad7152_attributes[] = {
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
 	&iio_dev_attr_in_capacitance0_calibbias_calibration.dev_attr.attr,
 	&iio_dev_attr_in_capacitance1_calibbias_calibration.dev_attr.attr,
 	&iio_dev_attr_in_capacitance0_calibscale_calibration.dev_attr.attr,
@@ -247,6 +196,56 @@ static const int ad7152_scale_table[] = {
 	30525, 7631, 15263, 61050
 };
 
+/**
+ * read_raw handler for IIO_CHAN_INFO_SAMP_FREQ
+ *
+ * lock must be held
+ **/
+static int ad7152_read_raw_samp_freq(struct device *dev, int *val)
+{
+	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
+	struct ad7152_chip_info *chip = iio_priv(indio_dev);
+	*val = ad7152_filter_rate_table[chip->filter_rate_setup][0];
+
+	return 0;
+}
+
+/**
+ * write_raw handler for IIO_CHAN_INFO_SAMP_FREQ
+ *
+ * lock must be held
+ **/
+static int ad7152_write_raw_samp_freq(struct device *dev, int val)
+{
+	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
+	struct ad7152_chip_info *chip = iio_priv(indio_dev);
+	u8 data;
+	int ret, i;
+
+	if (!val)
+		return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
+		if (data >= ad7152_filter_rate_table[i][0])
+			break;
+
+	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
+		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
+
+	mutex_lock(&indio_dev->mlock);
+	ret = i2c_smbus_write_byte_data(chip->client,
+					AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
+	if (ret < 0) {
+		mutex_unlock(&indio_dev->mlock);
+		goto out;
+	}
+
+	chip->filter_rate_setup = i;
+	mutex_unlock(&indio_dev->mlock);
+
+out:
+	return ret;
+}
 static int ad7152_write_raw(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan,
 			    int val,
@@ -309,6 +308,11 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 
 		ret = 0;
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		ret = ad7152_write_raw_samp_freq(&indio_dev->dev, val);
+		if (ret < 0)
+			goto out;
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -403,6 +407,11 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 
 		ret = IIO_VAL_INT_PLUS_NANO;
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		ret = ad7152_read_raw_samp_freq(&indio_dev->dev, val);
+		if (ret < 0)
+			goto out;
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -440,6 +449,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.differential = 1,
@@ -450,6 +460,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.indexed = 1,
@@ -458,6 +469,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.differential = 1,
@@ -468,6 +480,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}
 };
 /*
-- 
2.7.4


