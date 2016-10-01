X-GM-THRID: 6336070668192317440
X-Received: by 10.129.91.136 with SMTP id p130mr3178776ywb.61.1475308237143;
        Sat, 01 Oct 2016 00:50:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls6980266otj.7.gmail; Sat, 01 Oct
 2016 00:50:36 -0700 (PDT)
X-Received: by 10.157.32.17 with SMTP id n17mr3077948ota.20.1475308236797;
        Sat, 01 Oct 2016 00:50:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si365663pfa.1.2016.10.01.00.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 00:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so5984947pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 00:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Rcd9Se9i5pvnmchBirAmzQUy2S/fiBP4o4NmePiMNDQ=;
        b=rDf3Roe9vLWGWq9l6ojwJy+OO4AX5VFysVB7vY/XksIf9FrISjWaYwfGk1EwmyGjgg
         QP/eMQcoxSjN+MAWi2hKiio+4XC0yZM5E57R8aSWmLueI3bYc96xQnl07Tud7qJ9pYi5
         6ExdmDZM55nvF1xTlnd4NjfIknjPymGnpleNj5IQJHxhrh+5e/hXsrgxUdkOMKgFYCoZ
         +fMBIJVzrimjA1KHrcInVnYykz49Po/UW5vt2Ddxw5mZDb+DHg71eYk/sZgHyx/kG0AF
         LB6OKWrN1r/mxoGA3Bkylg+zbWP7pPQyUGgtDQ0Wn1CJQxPBxp0RB5wiSl48VpNSsBZj
         zLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Rcd9Se9i5pvnmchBirAmzQUy2S/fiBP4o4NmePiMNDQ=;
        b=hSGDD8p7Yawpjgv5Cb7aUnfP1qX+fhpQx6QyFpQY0MiscjgFICSTYqMmawWRNYZ5v1
         p+nWFH2m7hOKbeOcGcp7UH+V4znY1Yuwy/4DoM3tneWiPMY11FzIEvX5+fX2a8c5bcav
         3fDqS8GDIPzTY0AvwZTXouBLCihGSbb6ta1c3Xpev0SdWlAmSDR3sHoPN/Xpn2vIbThr
         OAWXB0gEbK5VUIJbINdc6y3U+4/KGkJCgW09tCd2smocg6wZqtRRwxmGDU6tZdjndzVK
         qIrWTTCkTFTBAq3AcW2w7uJU1CdUcb4VJq0ScbmfiS7DeJH1dBBiOPchVcJeHJH+ri1D
         fP0A==
X-Gm-Message-State: AA6/9Rl1HxpGxFs3sACE4eZNBasd7X5SFjVjijr5S8ojAI1qBg0N6gLfZyeqDH13Y//VnA==
X-Received: by 10.98.78.72 with SMTP id c69mr18450621pfb.67.1475308236559;
        Sat, 01 Oct 2016 00:50:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.202])
        by smtp.gmail.com with ESMTPSA id q8sm32685410pac.32.2016.10.01.00.50.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 00:50:35 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2] staging: iio: ad7192: implement IIO_CHAN_INFO_SAMP_FREQ
Date: Sat,  1 Oct 2016 15:49:24 +0800
Message-Id: <1475308164-3461-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

This driver predates the availability of IIO_CHAN_INFO_SAMP_FREQ attribute
wherein usage has some advantages like it can be accessed by in-kernel
consumers as well as reduces the code size.

Therefore, use IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency
attribute instead of using IIO_DEV_ATTR_SAMP_FREQ() macro.

Move code from the functions associated with IIO_DEV_ATTR_SAMP_FREQ() into
respective read and write hooks with the mask set to IIO_CHAN_INFO_SAMP_FREQ.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
Changes in v2:
* Make commit message more detailed
* Fix tiny bug about bypassing iio_device_release_direct_mode()
* Remove unneeded goto and use break instead

 drivers/staging/iio/adc/ad7192.c       | 75 ++++++++++------------------------
 include/linux/iio/adc/ad_sigma_delta.h |  1 +
 2 files changed, 22 insertions(+), 54 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 1cf6b79..e6e4505 100644
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
@@ -572,6 +523,22 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 				break;
 			}
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		if (!val) {
+			ret = -EINVAL;
+			break;
+		}
+
+		div = st->mclk / (val * st->f_order * 1024);
+		if (div < 1 || div > 1023) {
+			ret = -EINVAL;
+			break;
+		}
+
+		st->mode &= ~AD7192_MODE_RATE(-1);
+		st->mode |= AD7192_MODE_RATE(div);
+		ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
+		break;
 	default:
 		ret = -EINVAL;
 	}
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


