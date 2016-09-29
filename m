X-GM-THRID: 6335783132038430720
X-Received: by 10.36.208.143 with SMTP id m137mr4195639itg.18.1475164464981;
        Thu, 29 Sep 2016 08:54:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.165 with SMTP id 34ls3701245ots.13.gmail; Thu, 29 Sep
 2016 08:54:24 -0700 (PDT)
X-Received: by 10.237.36.211 with SMTP id u19mr570068qtc.55.1475164464548;
        Thu, 29 Sep 2016 08:54:24 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id e66si3476190pfk.2.2016.09.29.08.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 08:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so3605583pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 08:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=H5iCf1HiiP5zLMpTQkwqsm1YOIWK3qXdHKJVHCIlKks=;
        b=e6bJSyTdGFDHF0iS+nZL6CaRkJTyeF0FQGZotwcEgE4SMjG7rA0bikLnnvq9SEQusS
         hdXfnkzcqzZrAlGB9SoU9hl0GW6sFrql1LeqC68jvY+JEPe1Wx5x5B0o5NIhLckVORpb
         g5FGbFFOTdUYrBlRImLJE/XTl4IRepHgOvxwhMUY3jBnWWluiunWLdZwmI5G4NaLWSqS
         1cSXx6TvkU8nYyev1s1hisSJcQnWtkYt9GhtwMo1ysWen8zb3afDleQZ5ZOkfMFwyUVt
         X7KFuvcfX60/Op/Dj01vg5AhYY0wDTTWvpEgiG3XJSVsTO9IAxbKl2Lc08BUjAD8Z4+w
         lJNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=H5iCf1HiiP5zLMpTQkwqsm1YOIWK3qXdHKJVHCIlKks=;
        b=GM5OFyWa0OAKAxS00MJD7wXuJlGre7g+/yRE0IpP/K49FZGmq3/x+BDnr/KNT0Js8X
         HrTS6+DrYZqRgWE2t/LLekDkiDsFLJWolTUhTmRfom11G94RQfgvME6f7yQiNRRL+DEO
         SxDXepLqW1OHKBuKzZwHvuPpaTiWbZ3BCfrQtTzIIHAl9a7uT9/32wQhLFc0STNTcTvy
         Wsi81tcritJC0/V32FiTMNnINylfdvMULUNVwMv2Qxdz/CRBZsK688JkHwJLjB6pFf+f
         pZisBAuFjKiPwzzWbo1wHtE8woCCS4HNpidn2wnThg5RZVaJFcUVhC7W7Pmeea0W4+1F
         tUrQ==
X-Gm-Message-State: AA6/9Rn99lEx5ygAYnmhYCv7P7TxJkG+7yO70jO2fZzj/KcZeeDnP5vEtc2DMdHDcMNW5w==
X-Received: by 10.66.173.47 with SMTP id bh15mr3593993pac.42.1475164464272;
        Thu, 29 Sep 2016 08:54:24 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([182.70.75.136])
        by smtp.gmail.com with ESMTPSA id sy4sm21318484pac.48.2016.09.29.08.54.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 08:54:23 -0700 (PDT)
Date: Thu, 29 Sep 2016 21:24:17 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: iio: meter: ade7753: Replace IIO_DEV_ATTR_SAMP_FREQ
 attribute with IIO_CHAN_INFO_SAMP_FREQ handlers.
Message-ID: <20160929155417.GA5224@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Moved functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into 
IIO_CHAN_INFO_SAMP_FREQ handlers. Added ade7753_read_raw() and 
ade7753_write_raw() to allow reading/writing the element as well.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 155 +++++++++++++++++++++---------------
 1 file changed, 90 insertions(+), 65 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 4b5f05f..a2b4a18 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -98,6 +98,94 @@ static int ade7753_spi_read_reg_16(struct device *dev,
 	return 0;
 }
 
+static int ade7753_read_raw_samp_freq(struct device *dev, int *val)
+{
+	int ret;
+	u16 t;
+
+	ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &t);
+	if (ret)
+		return ret;
+	t = (t >> 11) & 0x3;
+	*val = 27900 / (1 + t);
+
+	return 0;
+}
+
+static int ade7753_write_raw_samp_freq(struct device *dev, int val)
+{
+	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
+	struct ade7753_state *st = iio_priv(indio_dev);
+	int ret;
+	u16 reg, t;
+
+	if (!val)
+		return -EINVAL;
+
+	t = 27900 / val;
+	if (t > 0)
+		t--;
+
+	if (t > 1)
+		st->us->max_speed_hz = ADE7753_SPI_SLOW;
+	else
+		st->us->max_speed_hz = ADE7753_SPI_FAST;
+
+	ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &reg);
+	if (ret)
+		goto out;
+
+	reg &= ~(3 << 11);
+	reg |= t << 11;
+
+	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
+
+out:
+	return ret;
+}
+
+static int ade7753_write_raw(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan,
+			     int val, int val2, long mask)
+{
+	int ret;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		if (val2)
+			return -EINVAL;
+		mutex_lock(&indio_dev->mlock);
+		ret = ade7753_write_raw_samp_freq(&indio_dev->dev, val);
+		mutex_unlock(&indio_dev->mlock);
+		return ret;
+	default:
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static int ade7753_read_raw(struct iio_dev *indio_dev,
+			    struct iio_chan_spec const *chan,
+			    int *val,
+		            int *val2,
+			    long mask)
+{
+	int ret;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		mutex_lock(&indio_dev->mlock);
+		ret = ade7753_read_raw_samp_freq(&indio_dev->dev, val);
+		mutex_unlock(&indio_dev->mlock);
+		return ret;
+	default:
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
 static int ade7753_spi_read_reg_24(struct device *dev,
 		u8 reg_address,
 		u32 *val)
@@ -383,82 +471,17 @@ err_ret:
 	return ret;
 }
 
-static ssize_t ade7753_read_frequency(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
-{
-	int ret;
-	u16 t;
-	int sps;
-
-	ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &t);
-	if (ret)
-		return ret;
-
-	t = (t >> 11) & 0x3;
-	sps = 27900 / (1 + t);
-
-	return sprintf(buf, "%d\n", sps);
-}
-
-static ssize_t ade7753_write_frequency(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ade7753_state *st = iio_priv(indio_dev);
-	u16 val;
-	int ret;
-	u16 reg, t;
-
-	ret = kstrtou16(buf, 10, &val);
-	if (ret)
-		return ret;
-	if (!val)
-		return -EINVAL;
-
-	mutex_lock(&indio_dev->mlock);
-
-	t = 27900 / val;
-	if (t > 0)
-		t--;
-
-	if (t > 1)
-		st->us->max_speed_hz = ADE7753_SPI_SLOW;
-	else
-		st->us->max_speed_hz = ADE7753_SPI_FAST;
-
-	ret = ade7753_spi_read_reg_16(dev, ADE7753_MODE, &reg);
-	if (ret)
-		goto out;
-
-	reg &= ~(3 << 11);
-	reg |= t << 11;
-
-	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
-
-out:
-	mutex_unlock(&indio_dev->mlock);
-
-	return ret ? ret : len;
-}
 
 static IIO_DEV_ATTR_TEMP_RAW(ade7753_read_8bit);
 static IIO_CONST_ATTR(in_temp_offset, "-25 C");
 static IIO_CONST_ATTR(in_temp_scale, "0.67 C");
 
-static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
-		ade7753_read_frequency,
-		ade7753_write_frequency);
-
 static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("27900 14000 7000 3500");
 
 static struct attribute *ade7753_attributes[] = {
 	&iio_dev_attr_in_temp_raw.dev_attr.attr,
 	&iio_const_attr_in_temp_offset.dev_attr.attr,
 	&iio_const_attr_in_temp_scale.dev_attr.attr,
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
 	&iio_const_attr_sampling_frequency_available.dev_attr.attr,
 	&iio_dev_attr_phcal.dev_attr.attr,
 	&iio_dev_attr_cfden.dev_attr.attr,
@@ -496,6 +519,8 @@ static const struct attribute_group ade7753_attribute_group = {
 
 static const struct iio_info ade7753_info = {
 	.attrs = &ade7753_attribute_group,
+	.read_raw = &ade7753_read_raw,
+	.write_raw = &ade7753_write_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
1.8.3.1


