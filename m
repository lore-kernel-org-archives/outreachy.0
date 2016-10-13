X-GM-THRID: 6340633511691550720
X-Received: by 10.98.194.74 with SMTP id l71mr2208222pfg.11.1476391120489;
        Thu, 13 Oct 2016 13:38:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.230 with SMTP id s99ls2687152ioi.38.gmail; Thu, 13 Oct
 2016 13:38:37 -0700 (PDT)
X-Received: by 10.66.25.136 with SMTP id c8mr1785637pag.3.1476391117632;
        Thu, 13 Oct 2016 13:38:37 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p70si2028094vkd.0.2016.10.13.13.38.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 13:38:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id 83so3063440vkd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 13:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=b4gC00npLsQ9qMgRqw97il3BIiz8rss++Ebm/9R3Qfg=;
        b=b6OlLwTAN36+hD6/Aro0Yo2m2HzQ9YAyiqIDBz8NoUXqPMecDj8To3AzTwRsKP3qyn
         +AD2Jf5GT7HaFlNJWJkD7r9BXIxmHx9YQNCGr7Lryq++c6Acf3hAqpRaQkL/tUEMc91U
         isrGeP2zJVH40y0IBeDuetxEfxr3yhCj4wcJGS/qAsHOushPrFs0W2ivrevzFgiH/fNt
         38ZDIAY3YOy/RO/hL4jfjZMwotaiJvdlpr8ruW6y4cTPE+4tzs75YNB9r34cbhQ7X20T
         HlA5owyi6lZRPGdaycURvppbHqcZFK92bX9xXP9/npGXiQzgCHIIfyoXRhfKoU+wIso7
         CSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=b4gC00npLsQ9qMgRqw97il3BIiz8rss++Ebm/9R3Qfg=;
        b=iW+dGeBl1uGNEgRZYIKXOC6uCsr5N2ldY6gezNlengkJD01x2M9iF3WUKdqxCsHxk1
         YAwCx1fXQsYXUg2F9TOBuxRwwUhAPl0N3ruNA8+6UDaTAGDQpFxOXGdvwyklJ22NffKD
         rxPNOi5NJXQQJ6QHC9glkysqzVm61o21kj5EXG6aEdpQ0IeDieogRdFSVG3KgzoN4lMj
         aT9d5MMazHNWLhxrhGiC4ldrdQPYZY6Ns36R29epo5l4NMb9afFzN4lbi9Jnj9HkXZ+x
         2wmw8bOFMs2PxdeYCj7oNrVKzQtAmOY97f3gvZBpk8n4zl0/5jR/5h1cVZBPxJO0M4U3
         d8yQ==
X-Gm-Message-State: AA6/9RkJ0VVPrD2CsCHR1jFH2JTkNKlAD9edNLOemfNsbR8yGTxRbJTTJVIXIGoDcgk6HQ==
X-Received: by 10.31.92.216 with SMTP id q207mr6558491vkb.147.1476391117142;
        Thu, 13 Oct 2016 13:38:37 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id 127sm5966745vkj.16.2016.10.13.13.38.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 13:38:36 -0700 (PDT)
Date: Thu, 13 Oct 2016 17:38:31 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	michael.hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net
Cc: linux-iio@vger.kernel.org
Subject: [RESEND PATCH] iio: gyro: adis16136: implemented
 IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161013203831.GA1666@spock>
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


