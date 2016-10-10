X-GM-THRID: 6336365196847611904
X-Received: by 10.200.51.6 with SMTP id t6mr6382682qta.0.1476113983270;
        Mon, 10 Oct 2016 08:39:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls10263016ote.32.gmail; Mon, 10 Oct
 2016 08:39:42 -0700 (PDT)
X-Received: by 10.129.152.87 with SMTP id p84mr2009960ywg.98.1476113982672;
        Mon, 10 Oct 2016 08:39:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si8688241pab.2.2016.10.10.08.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 08:39:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id qn10so7407432pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 08:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gUkZPu3SMfqVftLb0o9/SNzdnJSFzggPkclvWNWPo14=;
        b=zbsOe541GGcjJL7Z7zfDjB4rU6BBsU4U/zLnGJ1BbftRVCAqTDTD+UlQFevBlx37Ia
         2UIzsznRFTJteyMmvk2cGHugPmolyMBBLIbUjy3Ky2alYQ1hfOBjNpx52qzhpyXe/wmp
         8ojEIUTD9T/aIdCId+M1BRZJKNzfLnmZKrkpahzA3/1niyhG9t7/vBbBFUYB2GlKGIxG
         +QI0/ePb4rnESuYIpoLhX2OhceHiZRNFtJJ8iN3unkSdT4nFeBqSRx0yy66dPBLYcFNQ
         pwX5ktHo/KdzqbiFG79mKC1x0DEjAfbdVOzmXZD/UI9E2R/ZemchDvFx6Ye1BiAF/z+2
         4Rjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gUkZPu3SMfqVftLb0o9/SNzdnJSFzggPkclvWNWPo14=;
        b=Plwu+Yl7cRqPVr0Z8e90qEvI+F/NmcOcGDIrNZBf37kZ117B26H+qVRxzqxgv4TR4S
         1xZ2/lm0Ezk6yIdA1LjWmzE9oAg/tVoiSmMPDmLzzS475Ekpq4etsIxBcmmFjtU49wZh
         yjdPfXVNuNH6508+FXJumT45Apv/Yys8J1/zRf525/4+zsekqVmCniXiR2s6ufO51pAu
         8nwSi5efbIyyk5+ra6CeoEBmQYwnk1LwSc08g6oP6WnlKqIXn53rWXFW/4+E6d84JvmX
         yZGL5fieIgohN6eKUjV5GTMm06EXOWeCPnH9Jqzpd3Yhn9zYq6Ng3Khhdp3hfb5wqD5L
         NIOw==
X-Gm-Message-State: AA6/9RmQcc+Cvq23yL46R9PIp5Jb263RrseqJmp1hYgrsN4ThH/ZHh2v8sOgnXEWOzxBhQ==
X-Received: by 10.66.254.170 with SMTP id aj10mr55653935pad.124.1476113982357;
        Mon, 10 Oct 2016 08:39:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.208.178])
        by smtp.gmail.com with ESMTPSA id fg2sm2515131pad.23.2016.10.10.08.39.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 08:39:41 -0700 (PDT)
Date: Mon, 10 Oct 2016 21:09:17 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v5] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
Message-ID: <20161010153917.GA20079@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Attributes that were once privately defined become standard with time
and hence a special global define is used. Hence update driver ad7152 to use
IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
IIO_DEV_ATTR_SAMP_FREQ.
Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
Modify ad7152_read_raw() and ad7152_write_raw() to allow reading and
writing the element as well. Also add a lock in the driver's private
data.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v5:
Replaced 'data' with unused variable 'val' in ad7152_write_raw_samp_freq()
Removed the v4 changes

Changes in v4:
Replaced mlock with a local lock since mlock is intended to protect 'only'
switches between modes. Given this driver doesn't support more than one mode
(sysfs polled reads only)

Changes in v3:
Drop the unlock in ad7152_write_raw_samp_freq() and use the one at the exit point
instead
Return ret immediately instead of using a goto statement in ad7152_write_raw_samp_freq()

Changes in v2:
Give a more detailed explanation
Remove null check for val in ad7152_write_raw_samp_freq()
Merged two stucture variable initialisations into one statement in ad7152_read_raw_samp_freq()

 drivers/staging/iio/cdc/ad7152.c | 115 ++++++++++++++++++++++-----------------
 1 file changed, 64 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 485d0a5..a1ea897 100644
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
@@ -247,6 +196,49 @@ static const int ad7152_scale_table[] = {
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
+	int ret, i;
+
+	for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
+		if (val >= ad7152_filter_rate_table[i][0])
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
@@ -309,6 +301,16 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 
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
@@ -403,6 +405,13 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 
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


