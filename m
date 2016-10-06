X-GM-THRID: 6338382876174712832
X-Received: by 10.13.204.142 with SMTP id o136mr3730488ywd.40.1475769764180;
        Thu, 06 Oct 2016 09:02:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls3256738otb.48.gmail; Thu, 06 Oct
 2016 09:02:43 -0700 (PDT)
X-Received: by 10.129.86.136 with SMTP id k130mr3778427ywb.125.1475769763711;
        Thu, 06 Oct 2016 09:02:43 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si4642822pab.2.2016.10.06.09.02.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 09:02:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id r9so1301325paz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 09:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tA22RlUrtiXwdtiYXcHDQaTikynEOSr8MACjxZuwCJs=;
        b=tMvcKHVuztOrfR1mqJykdqCs6VvUyzoD75F3HAT5oCJIHtIQlcqqDdE8k5O6oGnnxD
         f12+3QcyC7BHgLHxvc0PK3bmTi8ucbyNVis/8ljQg8XYy+kQOalXiRDVauCR7oLF4Y8A
         IiYmexD9o0dtYmSZgY75V9+94wOPYyvrx41PoxkEyjuVO1UB6btx6ZeN0l4risx9Rvhi
         Arr/UOQoLhPPJVT86Q5M4bZrJb5GfRum8k2ebUcwJQ23QG3KoVr4wqm9RkHj8DlX4JME
         N8CxmAcfEyDFbnHK+koHAOiczN88ziRH+V4LM+IWVY/A9gpOpiUtU8rPlsR385/qpEtN
         lG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tA22RlUrtiXwdtiYXcHDQaTikynEOSr8MACjxZuwCJs=;
        b=DKhIP3eL7/GwnMbOzy/HRSrjUNnW8LjZR8dsE+lISX+cmKzjk4YVdPptVfEsydI22B
         7CBLeJajIxp6bazF1O9V8ZqC3wBN52hM97WGLyeETYGQI6cvsXucBAyssb9QBy2uqCZB
         97XRuOH4h0Lk7TfscWAoB6lQjPOY5q7qi1YmgCP9qbPtSIBCu24cCPx7Qjhoj0ccC5SG
         8onW6FwSOGShcqSjFbLWe7t4pRoImMlj/hoNefDWegCxAbDgIsWhrGbgLjMH0/Zfw5Gf
         GgmOJKTvhft1+jqv1/v5PgZLrqnk58e9sjnp1hnMtqiwzpNoDuoR9tID1+FviFBEVz76
         D+RQ==
X-Gm-Message-State: AA6/9RmAslw+nAHvCURg+mX4otXudOXj180+gfoixoxqHlDlyMB9gm1PYhOhUkLVGWBLeA==
X-Received: by 10.66.234.167 with SMTP id uf7mr22730539pac.94.1475769763408;
        Thu, 06 Oct 2016 09:02:43 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.195.21])
        by smtp.gmail.com with ESMTPSA id 77sm6824346pfx.91.2016.10.06.09.02.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 09:02:42 -0700 (PDT)
Date: Thu, 6 Oct 2016 21:32:17 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, Barry Song <21cnbao@gmail.com>
Subject: [PATCH] staging: iio: meter: ade7754: Implement
 IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161006160217.GA21538@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Attributes that were once privately defined become standard with time
and hence a special global define is used. Hence update driver ade7754 to use
IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
IIO_DEV_ATTR_SAMP_FREQ.
Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
Add ade7754_read_raw() and ade7754_write_raw() to allow reading and
writing the element as well.
Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 155 +++++++++++++++++++++---------------
 1 file changed, 89 insertions(+), 66 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 1730959..8043539 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -395,81 +395,15 @@ err_ret:
 	return ret;
 }
 
-static ssize_t ade7754_read_frequency(struct device *dev,
-				      struct device_attribute *attr,
-				      char *buf)
-{
-	int ret;
-	u8 t;
-	int sps;
-
-	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &t);
-	if (ret)
-		return ret;
-
-	t = (t >> 3) & 0x3;
-	sps = 26000 / (1 + t);
-
-	return sprintf(buf, "%d\n", sps);
-}
-
-static ssize_t ade7754_write_frequency(struct device *dev,
-				       struct device_attribute *attr,
-				       const char *buf,
-				       size_t len)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ade7754_state *st = iio_priv(indio_dev);
-	u16 val;
-	int ret;
-	u8 reg, t;
-
-	ret = kstrtou16(buf, 10, &val);
-	if (ret)
-		return ret;
-	if (!val)
-		return -EINVAL;
-
-	mutex_lock(&indio_dev->mlock);
-
-	t = 26000 / val;
-	if (t > 0)
-		t--;
-
-	if (t > 1)
-		st->us->max_speed_hz = ADE7754_SPI_SLOW;
-	else
-		st->us->max_speed_hz = ADE7754_SPI_FAST;
-
-	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &reg);
-	if (ret)
-		goto out;
-
-	reg &= ~(3 << 3);
-	reg |= t << 3;
-
-	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
-
-out:
-	mutex_unlock(&indio_dev->mlock);
-
-	return ret ? ret : len;
-}
 static IIO_DEV_ATTR_TEMP_RAW(ade7754_read_8bit);
 static IIO_CONST_ATTR(in_temp_offset, "129 C");
 static IIO_CONST_ATTR(in_temp_scale, "4 C");
-
-static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
-		ade7754_read_frequency,
-		ade7754_write_frequency);
-
 static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("26000 13000 65000 33000");
 
 static struct attribute *ade7754_attributes[] = {
 	&iio_dev_attr_in_temp_raw.dev_attr.attr,
 	&iio_const_attr_in_temp_offset.dev_attr.attr,
 	&iio_const_attr_in_temp_scale.dev_attr.attr,
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
 	&iio_const_attr_sampling_frequency_available.dev_attr.attr,
 	&iio_dev_attr_aenergy.dev_attr.attr,
 	&iio_dev_attr_laenergy.dev_attr.attr,
@@ -505,6 +439,93 @@ static struct attribute *ade7754_attributes[] = {
 	NULL,
 };
 
+static int read_raw_samp_freq(struct device *dev, int *val)
+{
+	int ret;
+	u8 t;
+
+	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &t);
+	if (ret)
+		return ret;
+
+	t = (t >> 3) & 0x3;
+	*val = 26000 / (1 + t);
+
+	return 0;
+}
+
+static int write_raw_samp_freq(struct device *dev, int val)
+{
+	struct ade7754_state *st = iio_priv(dev_to_iio_dev(dev));
+	int ret;
+	u8 reg, t;
+
+	if (!val)
+		return -EINVAL;
+
+	t = 26000 / val;
+	if (t > 0)
+		t--;
+
+	if (t > 1)
+		st->us->max_speed_hz = ADE7754_SPI_SLOW;
+	else
+		st->us->max_speed_hz = ADE7754_SPI_FAST;
+
+	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &reg);
+	if (ret)
+		return ret;
+
+	reg &= ~(3 << 3);
+	reg |= t << 3;
+
+	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
+
+	return ret;
+}
+
+static int ade7754_read_raw(struct iio_dev *indio_dev,
+			    struct iio_chan_spec const *chan,
+			    int *val, int *val2, long mask)
+{
+	int ret;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		if (val2)
+			return -EINVAL;
+		mutex_lock(&indio_dev->mlock);
+		ret = read_raw_samp_freq(&indio_dev->dev, val);
+		mutex_unlock(&indio_dev->mlock);
+		return ret;
+	default:
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static int ade7754_write_raw(struct iio_dev *indio_dev,
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
+		ret = write_raw_samp_freq(&indio_dev->dev, val);
+		mutex_unlock(&indio_dev->mlock);
+		return ret;
+	default:
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
 static const struct attribute_group ade7754_attribute_group = {
 	.attrs = ade7754_attributes,
 };
@@ -512,6 +533,8 @@ static const struct attribute_group ade7754_attribute_group = {
 static const struct iio_info ade7754_info = {
 	.attrs = &ade7754_attribute_group,
 	.driver_module = THIS_MODULE,
+	.read_raw = &ade7754_read_raw,
+	.write_raw = &ade7754_write_raw,
 };
 
 static int ade7754_probe(struct spi_device *spi)
-- 
2.7.4


