X-GM-THRID: 6336365196847611904
X-Received: by 10.98.25.202 with SMTP id 193mr1153642pfz.28.1475603316925;
        Tue, 04 Oct 2016 10:48:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.75 with SMTP id t11ls12895035ott.34.gmail; Tue, 04 Oct
 2016 10:48:36 -0700 (PDT)
X-Received: by 10.237.53.90 with SMTP id b26mr1191555qte.67.1475603316301;
        Tue, 04 Oct 2016 10:48:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 80si1881312pfw.0.2016.10.04.10.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 10:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id t6so6625272pae.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 10:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Gr4Z3kEiXw1MGR8cO2vMYXCDZt4tkCZls8jCMYQ3Mk0=;
        b=UylGifHMcSrYvREvkPs9WAC//wBEpXeed07fD4K+UJFQvWjOFcAhchugbMpwipb83B
         wWLWUQH8zp6izYpYSE1moOFE7D67O/W5B+zHx+HzRBOCkjxpnbQbXeWj3pDzeH33YCrM
         hvywxL/x/865ow1Pk9bXKmG/n3dA0g6+d4IMfx+Pc1dy/VcBnxaVYqIJb6+djJjMxIw4
         uTAM+0HmT525tgM7rxSkMX7qYI3wEr8LxPUwEP7CaFFDvLcwk2MQtm/yvr0vE1VQoQJ8
         WDRPi8A56HwzywUR9RXlgv0qBE0lswbMgvG5CSUff6RwifNBZwfrCaRv6HY8MfUv6STr
         jlkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Gr4Z3kEiXw1MGR8cO2vMYXCDZt4tkCZls8jCMYQ3Mk0=;
        b=jgwX3tDD9JukdsBVgavRghcNILcsJ9Vi4PbP02F+/4T2IWz2jXPSc+ifFBH+qz3j5h
         gMlH4Qj98ym2dS0snwwgZEApYgq5z6oEL2TP86Ywe11PusRPJnVN9CFtSX83OxKdc05D
         RwgK7nmGcAAhtBctJZpzU3yUaNG0ctL0SeB5/qVbNmns/YsshK0AOzvMrXvEkiFWVPZG
         bO+sCVOQbo6+M4YGRPzWwhMZxbwnrU/rzq0qvUbU2zxoeIW7LZxWjyztUFmn2NdmJ/Rw
         HtURteGVlYH38JGt/vxHOS0Tkdbf6jlbqS79XyoFvO7xo4mEw6F71x18yxF2lhPsMHJb
         /uuA==
X-Gm-Message-State: AA6/9RlcplF2vSlB9jVCWR1rnF9b96DjENDTZLdXCZecRpgXpVyLmJfUanSU2bU85c0Kow==
X-Received: by 10.66.27.230 with SMTP id w6mr6598023pag.199.1475603316038;
        Tue, 04 Oct 2016 10:48:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([120.60.159.86])
        by smtp.gmail.com with ESMTPSA id af17sm7532415pac.14.2016.10.04.10.48.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 10:48:35 -0700 (PDT)
Date: Tue, 4 Oct 2016 23:18:13 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>
Subject: [PATCH v3] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
Message-ID: <20161004174813.GA28568@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Attributes that were once privately defined become standard with time and
hence a special global define is used. Hence update driver ad7152 to use
IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
IIO_DEV_ATTR_SAMP_FREQ.
Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
Modify ad7152_read_raw() and ad7152_write_raw() to allow reading and
writing the element as well.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---

Changes in v3:
Drop the unlock in ad7152_write_raw_samp_freq() and use the one at the exit point
instead
Return ret immediately instead of using a goto statement in ad7152_write_raw_samp_freq()

Changes in v2:
Give a more detailed explanation
Remove null check for val in ad7152_write_raw_samp_freq()
Merged two stucture variable initialisations into one statement in ad7152_read_raw_samp_freq()
Set ret to IIO_VAL_INT in ad7152_read_raw() when mask equals IIO_CHAN_INFO_SAMP_FREQ and ret>=0

 drivers/staging/iio/cdc/ad7152.c | 116 ++++++++++++++++++++++-----------------
 1 file changed, 65 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 485d0a5..b3cc629 100644
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
@@ -247,6 +196,50 @@ static const int ad7152_scale_table[] = {
 	30525, 7631, 15263, 61050
 };
 
+/**
+ * read_raw handler for IIO_CHAN_INFO_SAMP_FREQ
+ *
+ * lock must be held
+ **/
+static int ad7152_read_raw_samp_freq(struct device *dev, int *val)
+{
+	struct ad7152_chip_info *chip = iio_priv(dev_to_iio_dev(dev));
+
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
+	if (ret < 0)
+		return ret;
+
+	chip->filter_rate_setup = i;
+	mutex_unlock(&indio_dev->mlock);
+
+	return ret;
+}
 static int ad7152_write_raw(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan,
 			    int val,
@@ -309,6 +302,16 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 
 		ret = 0;
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		if (val2)
+			return -EINVAL;
+
+		ret = ad7152_write_raw_samp_freq(&indio_dev->dev, val);
+		if (ret < 0)
+			goto out;
+
+		ret = 0;
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -403,6 +406,13 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 
 		ret = IIO_VAL_INT_PLUS_NANO;
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		ret = ad7152_read_raw_samp_freq(&indio_dev->dev, val);
+		if (ret < 0)
+			goto out;
+
+		ret = IIO_VAL_INT;
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -440,6 +450,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.differential = 1,
@@ -450,6 +461,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.indexed = 1,
@@ -458,6 +470,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.differential = 1,
@@ -468,6 +481,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}
 };
 /*
-- 
2.7.4


