X-GM-THRID: 6339107944060157952
X-Received: by 10.200.47.212 with SMTP id m20mr6011202qta.70.1476093709377;
        Mon, 10 Oct 2016 03:01:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.202 with SMTP id z68ls6683659ota.47.gmail; Mon, 10 Oct
 2016 03:01:49 -0700 (PDT)
X-Received: by 10.200.40.50 with SMTP id 47mr5967008qtq.59.1476093709006;
        Mon, 10 Oct 2016 03:01:49 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si8439188par.0.2016.10.10.03.01.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 03:01:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id rw4so2077456pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 03:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cj1I6yH5j/hxVjOCQ9tqvtTVS+wgQxwGKLfC6hGdBgU=;
        b=MgHZE3+wh4mcXo8Rr119Rikn3OjNVPVzeIA70h3wuwPMFZxsogNsRC7Y65oQfmzNdx
         ppHS3oKMsNGNCzXCBNQ00N49Uo30AjYR4tR1nAcHMfuGbYguU/k9X32MqdShqzSLGItb
         0/blSIT9npu1CbJ+vygSbS59iqUbr8iUmKN5GYDTQfp2K1hVqRvQtaAMSuD0yCmCKcF4
         Fhw0QttzhTswjLyJHcW3BSXREasFHabxKkbTGinkdWibU24REOt3VoArmyn1BeF423Az
         wSKgwWfsWl89DR0o65OeXeSEfn4oyuEuXuDlCWyg4HtoSC/bSd0e/gnFq2+sZc52PJRf
         ghzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cj1I6yH5j/hxVjOCQ9tqvtTVS+wgQxwGKLfC6hGdBgU=;
        b=XvyG1FUh7VLlYBHjizswsKT+k5FnxttxWeJeU8NIuwYFeXCjqjj42IawthyMWDWAyo
         CscJJ4ySI5tpQyFQFSXIT0FEmOZj6xH9H+5p0zpiX+T+x02H2i8fswbPvAyaoZaonFHk
         IVrXHXvQXxnX8pxvlQpqv6/TVe7wpntVy/HVOoY+YEhVuYFZTomdtbkNLCmj48R8Lc9/
         rPcfULIStgjjKm7RUe0Mld/llMg63tJ2EBo4NfGv32Z6M4L/qpfdR3q10zCoPmae4Gp+
         IQKtn3gpcURmkXjhLwAW/ixKMItcREBywFEPX2f0nm7X3f2ti/hyJAM5k9p9DDvEEhbp
         ePZw==
X-Gm-Message-State: AA6/9Rnh1vrnYLa59Fb6g30kbZTcKLY966dxU8aP9VuahhCc9evY275Sc3C65BXtf4hoIQ==
X-Received: by 10.66.48.133 with SMTP id l5mr3508595pan.48.1476093708743;
        Mon, 10 Oct 2016 03:01:48 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.120.52])
        by smtp.gmail.com with ESMTPSA id tj8sm51866932pab.16.2016.10.10.03.01.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 10 Oct 2016 03:01:48 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2] staging: iio: cdc: ad7746: implement IIO_CHAN_INFO_SAMP_FREQ
Date: Mon, 10 Oct 2016 18:01:31 +0800
Message-Id: <1476093691-10720-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

This driver predates the availability of IIO_CHAN_INFO_SAMP_FREQ
attribute wherein usage has some advantages like it can be accessed by
in-kernel consumers as well as reduces the code size.

Therefore, use IIO_CHAN_INFO_SAMP_FREQ to implement the
sampling_frequency attribute instead of using IIO_DEVICE_ATTR() macro.

Move code from the functions associated with IIO_DEVICE_ATTR() into
respective read and write hooks with the mask set to
IIO_CHAN_INFO_SAMP_FREQ.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
Change in v2:
* Re-use and modify the store functions to serve as write_raw handlers
  for the sampling_frequency attribute

 drivers/staging/iio/cdc/ad7746.c | 120 ++++++++++++++++-----------------------
 1 file changed, 50 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 5771d4ee..f41251c 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -122,7 +122,8 @@ static const struct iio_chan_spec ad7746_channels[] = {
 		.indexed = 1,
 		.channel = 0,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
-		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE) |
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = AD7746_REG_VT_DATA_HIGH << 8 |
 			AD7746_VTSETUP_VTMD_EXT_VIN,
 	},
@@ -132,7 +133,8 @@ static const struct iio_chan_spec ad7746_channels[] = {
 		.channel = 1,
 		.extend_name = "supply",
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
-		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE) |
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = AD7746_REG_VT_DATA_HIGH << 8 |
 			AD7746_VTSETUP_VTMD_VDD_MON,
 	},
@@ -159,7 +161,7 @@ static const struct iio_chan_spec ad7746_channels[] = {
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
 		BIT(IIO_CHAN_INFO_CALIBSCALE) | BIT(IIO_CHAN_INFO_OFFSET),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_CALIBBIAS) |
-		BIT(IIO_CHAN_INFO_SCALE),
+		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = AD7746_REG_CAP_DATA_HIGH << 8,
 	},
 	[CIN1_DIFF] = {
@@ -171,7 +173,7 @@ static const struct iio_chan_spec ad7746_channels[] = {
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
 		BIT(IIO_CHAN_INFO_CALIBSCALE) | BIT(IIO_CHAN_INFO_OFFSET),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_CALIBBIAS) |
-		BIT(IIO_CHAN_INFO_SCALE),
+		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = AD7746_REG_CAP_DATA_HIGH << 8 |
 			AD7746_CAPSETUP_CAPDIFF
 	},
@@ -182,7 +184,7 @@ static const struct iio_chan_spec ad7746_channels[] = {
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
 		BIT(IIO_CHAN_INFO_CALIBSCALE) | BIT(IIO_CHAN_INFO_OFFSET),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_CALIBBIAS) |
-		BIT(IIO_CHAN_INFO_SCALE),
+		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = AD7746_REG_CAP_DATA_HIGH << 8 |
 			AD7746_CAPSETUP_CIN2,
 	},
@@ -195,7 +197,7 @@ static const struct iio_chan_spec ad7746_channels[] = {
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
 		BIT(IIO_CHAN_INFO_CALIBSCALE) | BIT(IIO_CHAN_INFO_OFFSET),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_CALIBBIAS) |
-		BIT(IIO_CHAN_INFO_SCALE),
+		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.address = AD7746_REG_CAP_DATA_HIGH << 8 |
 			AD7746_CAPSETUP_CAPDIFF | AD7746_CAPSETUP_CIN2,
 	}
@@ -355,101 +357,47 @@ static IIO_DEVICE_ATTR(in_capacitance1_calibscale_calibration,
 static IIO_DEVICE_ATTR(in_voltage0_calibscale_calibration,
 		       S_IWUSR, NULL, ad7746_start_gain_calib, VIN);
 
-static ssize_t ad7746_show_cap_filter_rate_setup(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+static int ad7746_store_cap_filter_rate_setup(struct ad7746_chip_info *chip,
+					      int val)
 {
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7746_chip_info *chip = iio_priv(indio_dev);
-
-	return sprintf(buf, "%d\n", ad7746_cap_filter_rate_table[
-			(chip->config >> 3) & 0x7][0]);
-}
-
-static ssize_t ad7746_store_cap_filter_rate_setup(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7746_chip_info *chip = iio_priv(indio_dev);
-	u8 data;
-	int ret, i;
-
-	ret = kstrtou8(buf, 10, &data);
-	if (ret < 0)
-		return ret;
+	int i;
 
 	for (i = 0; i < ARRAY_SIZE(ad7746_cap_filter_rate_table); i++)
-		if (data >= ad7746_cap_filter_rate_table[i][0])
+		if (val >= ad7746_cap_filter_rate_table[i][0])
 			break;
 
 	if (i >= ARRAY_SIZE(ad7746_cap_filter_rate_table))
 		i = ARRAY_SIZE(ad7746_cap_filter_rate_table) - 1;
 
-	mutex_lock(&indio_dev->mlock);
 	chip->config &= ~AD7746_CONF_CAPFS(0x7);
 	chip->config |= AD7746_CONF_CAPFS(i);
-	mutex_unlock(&indio_dev->mlock);
 
-	return len;
+	return 0;
 }
 
-static ssize_t ad7746_show_vt_filter_rate_setup(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+static int ad7746_store_vt_filter_rate_setup(struct ad7746_chip_info *chip,
+					     int val)
 {
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7746_chip_info *chip = iio_priv(indio_dev);
-
-	return sprintf(buf, "%d\n", ad7746_vt_filter_rate_table[
-			(chip->config >> 6) & 0x3][0]);
-}
-
-static ssize_t ad7746_store_vt_filter_rate_setup(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
-{
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-	struct ad7746_chip_info *chip = iio_priv(indio_dev);
-	u8 data;
-	int ret, i;
-
-	ret = kstrtou8(buf, 10, &data);
-	if (ret < 0)
-		return ret;
+	int i;
 
 	for (i = 0; i < ARRAY_SIZE(ad7746_vt_filter_rate_table); i++)
-		if (data >= ad7746_vt_filter_rate_table[i][0])
+		if (val >= ad7746_vt_filter_rate_table[i][0])
 			break;
 
 	if (i >= ARRAY_SIZE(ad7746_vt_filter_rate_table))
 		i = ARRAY_SIZE(ad7746_vt_filter_rate_table) - 1;
 
-	mutex_lock(&indio_dev->mlock);
 	chip->config &= ~AD7746_CONF_VTFS(0x3);
 	chip->config |= AD7746_CONF_VTFS(i);
-	mutex_unlock(&indio_dev->mlock);
 
-	return len;
+	return 0;
 }
 
-static IIO_DEVICE_ATTR(in_capacitance_sampling_frequency,
-		       S_IRUGO | S_IWUSR, ad7746_show_cap_filter_rate_setup,
-			ad7746_store_cap_filter_rate_setup, 0);
-
-static IIO_DEVICE_ATTR(in_voltage_sampling_frequency,
-		       S_IRUGO | S_IWUSR, ad7746_show_vt_filter_rate_setup,
-		       ad7746_store_vt_filter_rate_setup, 0);
-
 static IIO_CONST_ATTR(in_voltage_sampling_frequency_available, "50 31 16 8");
 static IIO_CONST_ATTR(in_capacitance_sampling_frequency_available,
 		       "91 84 50 26 16 13 11 9");
 
 static struct attribute *ad7746_attributes[] = {
-	&iio_dev_attr_in_capacitance_sampling_frequency.dev_attr.attr,
-	&iio_dev_attr_in_voltage_sampling_frequency.dev_attr.attr,
 	&iio_dev_attr_in_capacitance0_calibbias_calibration.dev_attr.attr,
 	&iio_dev_attr_in_capacitance0_calibscale_calibration.dev_attr.attr,
 	&iio_dev_attr_in_capacitance1_calibscale_calibration.dev_attr.attr,
@@ -547,6 +495,23 @@ static int ad7746_write_raw(struct iio_dev *indio_dev,
 
 		ret = 0;
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		if (val2) {
+			ret = -EINVAL;
+			goto out;
+		}
+
+		switch (chan->type) {
+		case IIO_CAPACITANCE:
+			ret = ad7746_store_cap_filter_rate_setup(chip, val);
+			break;
+		case IIO_VOLTAGE:
+			ret = ad7746_store_vt_filter_rate_setup(chip, val);
+			break;
+		default:
+			ret = -EINVAL;
+		}
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -667,6 +632,21 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 		}
 
 		break;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		switch (chan->type) {
+		case IIO_CAPACITANCE:
+			*val = ad7746_cap_filter_rate_table[
+					(chip->config >> 3) & 0x7][0];
+			ret = IIO_VAL_INT;
+			break;
+		case IIO_VOLTAGE:
+			*val = ad7746_vt_filter_rate_table[
+					(chip->config >> 6) & 0x3][0];
+			break;
+		default:
+			ret = -EINVAL;
+		}
+		break;
 	default:
 		ret = -EINVAL;
 	}
-- 
2.7.4


