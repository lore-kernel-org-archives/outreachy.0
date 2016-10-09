X-GM-THRID: 6336365196847611904
X-Received: by 10.176.5.234 with SMTP id e97mr7438459uae.1.1476037631635;
        Sun, 09 Oct 2016 11:27:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.25 with SMTP id q25ls8645697otb.2.gmail; Sun, 09 Oct
 2016 11:27:11 -0700 (PDT)
X-Received: by 10.237.34.47 with SMTP id n44mr3100096qtc.46.1476037631289;
        Sun, 09 Oct 2016 11:27:11 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z73si3735698pfa.1.2016.10.09.11.27.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 11:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so5646364paz.1
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 11:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2w4Eu69n1mwEUB1S1ungXTnhpOkzOOvJ9/FKxQPLgIk=;
        b=T+4rRzA6qXQgo9cALrXJdJ/uUBkPEE+MtXr5mf2Wuvf5f0aYQTdpUrtfogs8YW5Ifc
         Dam95OTZr3a/a03258mslXEECmYh0AbDihtGRaJKpYAscO55VZ8hQbz8E1+09QyF9sjv
         prs1VOWLnSm+BQ8kEykgNdcIgwikyccCT0QM6DemucKQTa0bAygJ/HUfm2/lIVK4GEib
         RboSRT/QyCN3thhU5HSLdHYpIXa3q77lyr7SfqHsiT/wUM1uNvGQ2QmXrAaRvwokJq0n
         yqhioZNne+bUM8NYAEwjWJ2r7jg6l3tZ6U8kh+fjm4QSMkEqkkmaQ/ul8rYHzt3bPkxR
         649Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2w4Eu69n1mwEUB1S1ungXTnhpOkzOOvJ9/FKxQPLgIk=;
        b=kfFDxQ9ehBZXWZE5aRVwk1+ysm6gpT8zWZ8Rk6duxxnLaFGi5/WzgTE+xUCGBxvCPb
         0kLgmlcCEZU79dR8ZXZe4UxeMoAIg4zLP1zCtJug7CsuNpNd59IwiqvHGsbbDzpNkE9X
         uKt2SUSxoifQI7kZwUO8mQEZvJP+gLIKDog08W+GVZdznJcuwxbFl5pfWzfzGfenMhlE
         YnWH0z16HyFGNwSkSe4KR2qD0iynpd8W0e+SjaEc3F6REVFeS3/FghaDD5DByfoYzr6g
         pdNIduW7v3s5M8vRMxovc7mbebkTQlvhFjsbnd+F7JBiTrbVssMCSBCqwHCAEBh+yoAS
         aN3w==
X-Gm-Message-State: AA6/9RnNDGgbnpZJANRimcbyWJR9HTeAfeA+06Aw14Y0CjnbLDIz1ZBY5vwSZwjB+pD3RA==
X-Received: by 10.66.173.110 with SMTP id bj14mr47576388pac.51.1476037630996;
        Sun, 09 Oct 2016 11:27:10 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.170.13])
        by smtp.gmail.com with ESMTPSA id h65sm28457969pfg.15.2016.10.09.11.27.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 11:27:10 -0700 (PDT)
Date: Sun, 9 Oct 2016 23:56:52 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 21cnbao@gmail.com,
	linux-iio@vger.kernel.org
Subject: [PATCH v4] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
Message-ID: <20161009182652.GA8113@sayli-HP-15-Notebook-PC>
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
writing the element as well. Also add a lock in the driver's private
data.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
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
Set ret to IIO_VAL_INT in ad7152_read_raw() when mask equals IIO_CHAN_INFO_SAMP_FREQ and ret>=0
 drivers/staging/iio/cdc/ad7152.c | 117 ++++++++++++++++++++++-----------------
 1 file changed, 66 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 485d0a5..0ce3849 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -89,6 +89,7 @@ struct ad7152_chip_info {
 	 */
 	u8	filter_rate_setup;
 	u8	setup[2];
+	struct mutex state_lock;	/* protect hardware state */
 };
 
 static inline ssize_t ad7152_start_calib(struct device *dev,
@@ -165,63 +166,12 @@ static const unsigned char ad7152_filter_rate_table[][2] = {
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
@@ -247,6 +197,50 @@ static const int ad7152_scale_table[] = {
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
+	mutex_lock(&chip->state_lock);
+	ret = i2c_smbus_write_byte_data(chip->client,
+					AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
+	if (ret < 0)
+		return ret;
+
+	chip->filter_rate_setup = i;
+	mutex_unlock(&chip->state_lock);
+
+	return ret;
+}
 static int ad7152_write_raw(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan,
 			    int val,
@@ -309,6 +303,16 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 
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
@@ -403,6 +407,13 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 
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
@@ -440,6 +451,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.differential = 1,
@@ -450,6 +462,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.indexed = 1,
@@ -458,6 +471,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}, {
 		.type = IIO_CAPACITANCE,
 		.differential = 1,
@@ -468,6 +482,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
 		BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 	}
 };
 /*
-- 
2.7.4


