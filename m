X-GM-THRID: 6335785004002443264
X-Received: by 10.129.89.213 with SMTP id n204mr658184ywb.23.1475164900129;
        Thu, 29 Sep 2016 09:01:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls3436266otd.48.gmail; Thu, 29 Sep
 2016 09:01:39 -0700 (PDT)
X-Received: by 10.129.119.70 with SMTP id s67mr582534ywc.102.1475164899686;
        Thu, 29 Sep 2016 09:01:39 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f12si3450702pfk.0.2016.09.29.09.01.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id t6so20424pae.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 09:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=94Vg+fKAMAwA1PGmHp0jujzfHhYSUmCiku491TPzRnM=;
        b=zjrV7k4gQ17VuWZhJaQm7meNSlz/hxv9VUyOdiBdqFzfTmSKo/QXBAcE1NWkH/w1hO
         WKjWXjGJqTYTuz5EVPKD/2QCkUdoz4zZ00h+UNdXgm3QnVIAVLsbd8/Ah+sXiFvoqFeD
         ogb6UmuYmiS7tQzvbyLDGqjFo6f9YgDC9yZoUA+jO4VDo6gEAkvFY1N7ajt1tHkbFagN
         ozf7VH99DrUpWJLJ0jXFo8twbrBefJ+W2slYqHvh4B+7SAPQ5E1IAXEUtcwCOSY8Qs6V
         /f1Fdfnfpzcss4VdObPmOHWHBBoOkeD7VxhP3XADkpe0oHSXi9KY8/47kNjNY1X74g79
         nBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=94Vg+fKAMAwA1PGmHp0jujzfHhYSUmCiku491TPzRnM=;
        b=jwQ8aVobnHS0INF1kK+cE0g0z5k1S67qUMxmSESqDwmWaD+2Vd53M1zSbDtkJELw6u
         gxVIjj+8vBdGrB6O/2vG3BbUAdtTwAkuyln4ythwFaf2f33lRVMiN3t09PmjDZF04HA6
         OL/+7Gwp+Ahk6LLCBtkbRorUDk0EExuz+I9h8G6pGhzF7jVTgIv2m+/hDwAUYb8OABbB
         NC+MFBvEVBkDyOPRnS4ZdIDkkUcLvaK6KgbC1OWIIxkMFPJxtBBONhHXRFT/5Z7Do9cS
         bzO6AEaYflUBjt8Xf+FADbtBV1RBDHJmyXIwdDAWatRnO3a6A0e88tGV8mtb8Iwg+uRM
         42sw==
X-Gm-Message-State: AA6/9Rm7SUg63S9XoAuizvNkqiSXroxj5G4k+wGEIFh79A+QKooAOOfpVbstzTuP8avXyw==
X-Received: by 10.66.235.37 with SMTP id uj5mr3635560pac.176.1475164899355;
        Thu, 29 Sep 2016 09:01:39 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([182.70.75.136])
        by smtp.gmail.com with ESMTPSA id n85sm998364pfb.31.2016.09.29.09.01.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:01:38 -0700 (PDT)
Date: Thu, 29 Sep 2016 21:31:33 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: iio: meter: ade7753: Replace
 IIO_DEV_ATTR_SAMP_FREQ attribute with IIO_CHAN_INFO_SAMP_FREQ handlers.
Message-ID: <20160929160133.GA5460@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Moved functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
IIO_CHAN_INFO_SAMP_FREQ handlers. Added ade7753_read_raw() and
ade7753_write_raw() to allow reading/writing the element as well. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Adding "Staging" keyword in subject line.

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


