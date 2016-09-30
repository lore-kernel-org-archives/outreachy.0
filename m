X-GM-THRID: 6336070668192317440
X-Received: by 10.13.206.135 with SMTP id q129mr1745830ywd.163.1475231411357;
        Fri, 30 Sep 2016 03:30:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.30 with SMTP id j30ls2006582ioi.30.gmail; Fri, 30 Sep
 2016 03:30:07 -0700 (PDT)
X-Received: by 10.66.124.162 with SMTP id mj2mr1825483pab.25.1475231407963;
        Fri, 30 Sep 2016 03:30:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si1996007paw.1.2016.09.30.03.30.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 03:30:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so4816478pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 03:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2PUdirbYIJTkBq4F7NehtESS5N6RVx+dMDFmj+QCz9c=;
        b=ECIZxTUQ/alC+LppTFGQjvlrz0z8mR79/OlzI0+uykFi+dDJ0EUAkElN6RE1U6MCw4
         HaG9nl7i+Wzp/EqEAd2klG4ijzLl494dW7YxiWHDCQYrm7GLVNc4E6gwoGWjIPNBJyD7
         YPEq+uo0UDdh0PBvmhnIZi0i9m5+ZlUwXcG8pFMEGLOwcXcOXwb00o71UvXwaWESe0qG
         wJay/6G1KLV64t1pI3v1IMnOJOIdg0PIdncSrFD1RU3hTAZ6jVwHWaCeasqovnUYEUgj
         zJ9u50I2SKF7Jrx/iZcTCDiIuhXqU8Nyqt9i5G6X+hRIgjqmjNTn3M9FiYqJltz3I7wu
         j4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2PUdirbYIJTkBq4F7NehtESS5N6RVx+dMDFmj+QCz9c=;
        b=fkst0duutpr2uPuCgLwmodN0FxKYgMZyH6l3wCsMRss6KLDqLj6ONXahnyF9kjmzYo
         MFcvOWtItzLZEsmregkpUTLrsydurHwzWCrsf53j4vbOJy0M3NzqeV6yMdwnFschGVnS
         IZ8/jfiCNUpQ2QGF7xrc3JHKyyG8ZYn881ptAdYIfh0c5DgnKrqaJrACX8IMOqO3y67e
         Tf6WvupItAmWqVrTwxmyGsRzFK8/iU2dQsopuvHXkcm/5gZz9kOTulWNRsTh+6NzyuNJ
         aBh1si4BC0dBJCRm9jpwFAiTvxNP7g6Dlew59nJcOp/DqLAXfqCY2FIta1zyXDiTitZA
         A6JQ==
X-Gm-Message-State: AA6/9RmXkMIL+ugA25qtnndyEl3a169vMdBrutfp2pKQwkosqflY5d1QqLuVGvncLWfWoQ==
X-Received: by 10.98.64.136 with SMTP id f8mr10520963pfd.49.1475231407743;
        Fri, 30 Sep 2016 03:30:07 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.26])
        by smtp.gmail.com with ESMTPSA id t6sm26788096paa.45.2016.09.30.03.30.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 30 Sep 2016 03:30:06 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: iio: ad7192: implement IIO_CHAN_INFO_SAMP_FREQ
Date: Fri, 30 Sep 2016 18:28:24 +0800
Message-Id: <1475231304-3021-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Use IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute
instead of using IIO_DEV_ATTR_SAMP_FREQ() macro.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c       | 74 +++++++++-------------------------
 include/linux/iio/adc/ad_sigma_delta.h |  1 +
 2 files changed, 21 insertions(+), 54 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 1cf6b79..154f77f 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -322,57 +322,6 @@ out:
 	return ret;
 }
 
-static ssize_t ad7192_read_frequency(struct device *dev,
-				     struct device_attribute *attr,
-				     char *buf)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7192_state *st = iio_priv(indio_dev);
-
-	return sprintf(buf, "%d\n", st->mclk /
-			(st->f_order * 1024 * AD7192_MODE_RATE(st->mode)));
-}
-
-static ssize_t ad7192_write_frequency(struct device *dev,
-				      struct device_attribute *attr,
-				      const char *buf,
-				      size_t len)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7192_state *st = iio_priv(indio_dev);
-	unsigned long lval;
-	int div, ret;
-
-	ret = kstrtoul(buf, 10, &lval);
-	if (ret)
-		return ret;
-	if (lval == 0)
-		return -EINVAL;
-
-	ret = iio_device_claim_direct_mode(indio_dev);
-	if (ret)
-		return ret;
-
-	div = st->mclk / (lval * st->f_order * 1024);
-	if (div < 1 || div > 1023) {
-		ret = -EINVAL;
-		goto out;
-	}
-
-	st->mode &= ~AD7192_MODE_RATE(-1);
-	st->mode |= AD7192_MODE_RATE(div);
-	ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
-
-out:
-	iio_device_release_direct_mode(indio_dev);
-
-	return ret ? ret : len;
-}
-
-static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
-		ad7192_read_frequency,
-		ad7192_write_frequency);
-
 static ssize_t
 ad7192_show_scale_available(struct device *dev,
 			    struct device_attribute *attr, char *buf)
@@ -471,7 +420,6 @@ static IIO_DEVICE_ATTR(ac_excitation_en, S_IRUGO | S_IWUSR,
 		       AD7192_REG_MODE);
 
 static struct attribute *ad7192_attributes[] = {
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
 	&iio_dev_attr_in_v_m_v_scale_available.dev_attr.attr,
 	&iio_dev_attr_in_voltage_scale_available.dev_attr.attr,
 	&iio_dev_attr_bridge_switch_en.dev_attr.attr,
@@ -484,7 +432,6 @@ static const struct attribute_group ad7192_attribute_group = {
 };
 
 static struct attribute *ad7195_attributes[] = {
-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
 	&iio_dev_attr_in_v_m_v_scale_available.dev_attr.attr,
 	&iio_dev_attr_in_voltage_scale_available.dev_attr.attr,
 	&iio_dev_attr_bridge_switch_en.dev_attr.attr,
@@ -536,6 +483,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
 		if (chan->type == IIO_TEMP)
 			*val -= 273 * ad7192_get_temp_scale(unipolar);
 		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		*val = st->mclk /
+			(st->f_order * 1024 * AD7192_MODE_RATE(st->mode));
+		return IIO_VAL_INT;
 	}
 
 	return -EINVAL;
@@ -548,7 +499,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 			    long mask)
 {
 	struct ad7192_state *st = iio_priv(indio_dev);
-	int ret, i;
+	int ret, i, div;
 	unsigned int tmp;
 
 	ret = iio_device_claim_direct_mode(indio_dev);
@@ -572,10 +523,25 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 				break;
 			}
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		if (!val)
+			return -EINVAL;
+
+		div = st->mclk / (val * st->f_order * 1024);
+		if (div < 1 || div > 1023) {
+			ret = -EINVAL;
+			goto out;
+		}
+
+		st->mode &= ~AD7192_MODE_RATE(-1);
+		st->mode |= AD7192_MODE_RATE(div);
+		ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
+		break;
 	default:
 		ret = -EINVAL;
 	}
 
+out:
 	iio_device_release_direct_mode(indio_dev);
 
 	return ret;
diff --git a/include/linux/iio/adc/ad_sigma_delta.h b/include/linux/iio/adc/ad_sigma_delta.h
index e7fdec4..5ba430c 100644
--- a/include/linux/iio/adc/ad_sigma_delta.h
+++ b/include/linux/iio/adc/ad_sigma_delta.h
@@ -136,6 +136,7 @@ int ad_sd_validate_trigger(struct iio_dev *indio_dev, struct iio_trigger *trig);
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) | \
 			BIT(IIO_CHAN_INFO_OFFSET), \
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE), \
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ), \
 		.scan_index = (_si), \
 		.scan_type = { \
 			.sign = 'u', \
-- 
2.7.4


