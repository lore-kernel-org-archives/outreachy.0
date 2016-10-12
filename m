X-GM-THRID: 6340633511691550720
X-Received: by 10.36.28.82 with SMTP id c79mr1019265itc.29.1476293781767;
        Wed, 12 Oct 2016 10:36:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.166 with SMTP id 35ls3976510otq.35.gmail; Wed, 12 Oct
 2016 10:36:21 -0700 (PDT)
X-Received: by 10.129.158.135 with SMTP id v129mr581510ywg.10.1476293781371;
        Wed, 12 Oct 2016 10:36:21 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id t8si1172080vkb.2.2016.10.12.10.36.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:36:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 83so1348581vkd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=b4gC00npLsQ9qMgRqw97il3BIiz8rss++Ebm/9R3Qfg=;
        b=SbI1o3S0kLQS3DXPzHww9ifwUoW+GaGdU5WAYSu6svZoriJorSCFFha72tWiHgL0Z9
         VFAtZWJf9isMAU269wAGKv35EfQx0xy+/SP1yP+qNloE6ObBqnQmjSeeGfGP5QlMx2en
         GtxAN4a2Ky4V3bAx+kCpwLH11Ydz9RBXBrCFobIOeK3fXHPGmMp6KKjq9HjsO9NRgamM
         dAssukCqWR2tFe6pbTuUqNbhrRyvWm6NCMs84NEfgfEsuqs/LcRD9Uw0P475eepRRgvf
         q9NJsEY9+8wsvX2YTf3wTgRVIPU8gNoQKCi4MFRgZHjAcR48S0Sn9DZR0pK/ul9+FpYW
         KsHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=b4gC00npLsQ9qMgRqw97il3BIiz8rss++Ebm/9R3Qfg=;
        b=D/sQS+T+8AJfgvPGJ9gKP5Hmq+oZ3wxdcuRHwOyt7YYgZ+8SGa4umChRjktfF7cRYo
         djoPscfL7MwoTYnBj3nMbsMc9oQDhd4z8MOcUFtBjW8vVqF3276V8RFprDRDiOIPAM6D
         j9InQ5icsRbUcponeMyJxiTTJBzgy6eDSD4j1qYj0q3USfxulSkQw+0WOw6bY6FrzPZS
         eRu1Ji0p13EiZxcYU3US96bNVjG3ZGyxJO3gEQWXsy0JNTvoKrSI9kEQiIr+Ho4oj467
         oeHYrSaTonnvmHaa84KtsY7OjTqysTNUMgN1oZWkZ+zWQoAnT3tc+si4L3JRWYwXujRP
         M7KQ==
X-Gm-Message-State: AA6/9Rkoko7gEStDeOOxY9Nc2PWAZU0Bhv5xB846vUR6qTaDnx1EKkXHlWYPS09DmSFvTw==
X-Received: by 10.31.99.197 with SMTP id x188mr1410053vkb.125.1476293781111;
        Wed, 12 Oct 2016 10:36:21 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id o15sm3434802vkd.21.2016.10.12.10.36.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 12 Oct 2016 10:36:20 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:36:05 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	michael.hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net
Bcc: samuel.chenatti@gmail.com, juliana.orod@gmail.com,
	eliasfrancasouza@gmail.com
Subject: [PATCH] iio: gyro: adis16136: implemented IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161012173605.GA25492@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Moved functionality from IIO_DEV_ATTR_SAMP_FREQ macro into
IIO_CHAN_INFO_SAMP_FREQ. Modified adis16136_read_raw and
adis16136_write_raw to allow reading and writing the element.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/iio/gyro/adis16136.c | 58 ++++++++++++--------------------------------
 1 file changed, 15 insertions(+), 43 deletions(-)

diff --git a/drivers/iio/gyro/adis16136.c b/drivers/iio/gyro/adis16136.c
index b04faf9..71d282e 100644
--- a/drivers/iio/gyro/adis16136.c
+++ b/drivers/iio/gyro/adis16136.c
@@ -168,11 +168,11 @@ static int adis16136_debugfs_init(struct iio_dev *indio_dev)
 
 #endif
 
-static int adis16136_set_freq(struct adis16136 *adis16136, unsigned int freq)
+static int adis16136_write_raw_samp_freq(struct adis16136 *adis16136, int *val)
 {
 	unsigned int t;
 
-	t = 32768 / freq;
+	t = 32768 / *val;
 	if (t < 0xf)
 		t = 0xf;
 	else if (t > 0xffff)
@@ -197,44 +197,19 @@ static int adis16136_get_freq(struct adis16136 *adis16136, unsigned int *freq)
 	return 0;
 }
 
-static ssize_t adis16136_write_frequency(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t len)
+static int adis16136_read_raw_samp_freq(struct adis16136 *st, int *val)
 {
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct adis16136 *adis16136 = iio_priv(indio_dev);
-	unsigned int val;
-	int ret;
-
-	ret = kstrtouint(buf, 10, &val);
-	if (ret)
-		return ret;
-
-	if (val == 0)
-		return -EINVAL;
-
-	ret = adis16136_set_freq(adis16136, val);
-
-	return ret ? ret : len;
-}
-
-static ssize_t adis16136_read_frequency(struct device *dev,
-	struct device_attribute *attr, char *buf)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct adis16136 *adis16136 = iio_priv(indio_dev);
 	unsigned int freq;
 	int ret;
 
-	ret = adis16136_get_freq(adis16136, &freq);
+	ret = adis16136_get_freq(st, &freq);
 	if (ret < 0)
 		return ret;
 
-	return sprintf(buf, "%d\n", freq);
-}
+	*val = freq;
 
-static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
-				  adis16136_read_frequency,
-				  adis16136_write_frequency);
+	return 0;
+}
 
 static const unsigned adis16136_3db_divisors[] = {
 	[0] = 2, /* Special case */
@@ -322,6 +297,10 @@ static int adis16136_read_raw(struct iio_dev *indio_dev,
 		*val = sign_extend32(val32, 31);
 
 		return IIO_VAL_INT;
+
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return adis16136_read_raw_samp_freq(adis16136, val);
+
 	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
 		return adis16136_get_filter(indio_dev, val);
 	default:
@@ -340,6 +319,8 @@ static int adis16136_write_raw(struct iio_dev *indio_dev,
 			ADIS16136_REG_GYRO_OFF2, val);
 	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
 		return adis16136_set_filter(indio_dev, val);
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return adis16136_write_raw_samp_freq(adis16136, &val);
 	default:
 		break;
 	}
@@ -361,7 +342,7 @@ static const struct iio_chan_spec adis16136_channels[] = {
 			BIT(IIO_CHAN_INFO_CALIBBIAS) |
 			BIT(IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
-
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = ADIS16136_REG_GYRO_OUT2,
 		.scan_index = ADIS16136_SCAN_GYRO,
 		.scan_type = {
@@ -376,6 +357,7 @@ static const struct iio_chan_spec adis16136_channels[] = {
 		.channel = 0,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
 			BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = ADIS16136_REG_TEMP_OUT,
 		.scan_index = ADIS16136_SCAN_TEMP,
 		.scan_type = {
@@ -388,18 +370,8 @@ static const struct iio_chan_spec adis16136_channels[] = {
 	IIO_CHAN_SOFT_TIMESTAMP(2),
 };
 
-static struct attribute *adis16136_attributes[] = {
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
-	NULL
-};
-
-static const struct attribute_group adis16136_attribute_group = {
-	.attrs = adis16136_attributes,
-};
-
 static const struct iio_info adis16136_info = {
 	.driver_module = THIS_MODULE,
-	.attrs = &adis16136_attribute_group,
 	.read_raw = &adis16136_read_raw,
 	.write_raw = &adis16136_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
-- 
2.10.0


