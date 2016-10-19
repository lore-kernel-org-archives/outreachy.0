X-GM-THRID: 6342268830362894336
X-Received: by 10.36.39.202 with SMTP id g193mr2087483ita.23.1476886765781;
        Wed, 19 Oct 2016 07:19:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.105 with SMTP id 96ls371392ott.41.gmail; Wed, 19 Oct
 2016 07:19:25 -0700 (PDT)
X-Received: by 10.129.132.131 with SMTP id u125mr2042766ywf.71.1476886765289;
        Wed, 19 Oct 2016 07:19:25 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id co10si5906019pad.1.2016.10.19.07.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 07:19:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id s8so2620175pfj.2
        for <outreachy-kernel@googlegroups.com>; Wed, 19 Oct 2016 07:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ODEOAC09XjRqzTvC2jeCch8JcwsM84wzXU5DQ4IOmQg=;
        b=aXlDg5JC5IGpggZRlRKtCVA9TIYPl/xxisKB/fTk/fd9TtcSssxfkpLpFBCr6JldP8
         Y38apyzb7jfQKvpqs311wa+nfrf5lh2uzvgyLRl+eJZelyzCDERZpVcirsQSc3qlSY9C
         8+qTrSDJXB5KrD9uvgWM+NDCwh0LCfNWh2RrextbGGRAqgTHI6RJcqCRZ2Re1MZYXE7Y
         skKGo17ku8LAcTKDIARpqIgCgeDkLkMY/d9J+PThfrebLdoxjj/2p7hsnRucsh1XQ8S+
         7Ahl542/RxwuTLlGNwFfdjIZvGvUfC/DN2fJmHybiW7pWXTsteoARtYmbfZV9XLb4Rhh
         ICow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ODEOAC09XjRqzTvC2jeCch8JcwsM84wzXU5DQ4IOmQg=;
        b=YzEfoP+BvxC9krmbtMGPiIto/ffpYWrSks2i4hLgy7IK/gOsx45QChEWsvx8ppDct2
         1621dwrY6zNkWuf9g+8su4ZSRCC0JS6rsvz0wUzB7K4MisVmFbcZJDLXVQSpSa7zZp0R
         9pernjTAyNf3V//azH3S1rsPMFrBiq+JVM2IN3SCeiqqm7OvLZOX8SRPWEqCDFZIQMns
         05e++U+7Lv5kwwobp39PgwnHy4HY8PDlqYHyHFl4a0+Rgnr8uqn6HgMv1EkEw4hZfKye
         bvQl29JYODFb0BWUUdAWpNX6W2iYQPpooy5TjCvwozh3n0uAb6W7GMzXJHdB9novKeRW
         or2Q==
X-Gm-Message-State: AA6/9Rn+nJmN9eTqBIWv/UtUwlo3yjzUka27TPotV8tgfMvwwjUdM6Z9h6qzT5mvIB4aow==
X-Received: by 10.99.126.11 with SMTP id z11mr9727693pgc.46.1476886764959;
        Wed, 19 Oct 2016 07:19:24 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([103.14.62.233])
        by smtp.gmail.com with ESMTPSA id f129sm14050509pfc.3.2016.10.19.07.19.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 19 Oct 2016 07:19:24 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	jic23@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2] staging: iio: cdc: ad7746: add additional config defines
Date: Wed, 19 Oct 2016 22:19:13 +0800
Message-Id: <1476886753-9739-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Introduce defines for shifting and mask under the config register for
better readability.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
Changes in v2:
* Use GENMASK to generate both VTFS and CAPFS masks including offset,
  respectively.
* Introduce helper variables for index calculation.

 drivers/staging/iio/cdc/ad7746.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index f41251c..5e9ceeb 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -70,8 +70,12 @@
 #define AD7746_EXCSETUP_EXCLVL(x)	(((x) & 0x3) << 0)
 
 /* Config Register Bit Designations (AD7746_REG_CFG) */
-#define AD7746_CONF_VTFS(x)		((x) << 6)
-#define AD7746_CONF_CAPFS(x)		((x) << 3)
+#define AD7746_CONF_VTFS_SHIFT		6
+#define AD7746_CONF_CAPFS_SHIFT		3
+#define AD7746_CONF_VTFS_MASK(x)	GENMASK(1, x)
+#define AD7746_CONF_CAPFS_MASK(x)	GENMASK(2, x)
+#define AD7746_CONF_VTFS(x)		((x) << AD7746_CONF_VTFS_SHIFT)
+#define AD7746_CONF_CAPFS(x)		((x) << AD7746_CONF_CAPFS_SHIFT)
 #define AD7746_CONF_MODE_IDLE		(0 << 0)
 #define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
 #define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
@@ -217,15 +221,16 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan)
 {
 	struct ad7746_chip_info *chip = iio_priv(indio_dev);
-	int ret, delay;
+	int ret, delay, idx;
 	u8 vt_setup, cap_setup;
 
 	switch (chan->type) {
 	case IIO_CAPACITANCE:
 		cap_setup = (chan->address & 0xFF) | AD7746_CAPSETUP_CAPEN;
 		vt_setup = chip->vt_setup & ~AD7746_VTSETUP_VTEN;
-		delay = ad7746_cap_filter_rate_table[(chip->config >> 3) &
-			0x7][1];
+		idx = (chip->config >> AD7746_CONF_CAPFS_SHIFT) &
+			AD7746_CONF_CAPFS_MASK(0);
+		delay = ad7746_cap_filter_rate_table[idx][1];
 
 		if (chip->capdac_set != chan->channel) {
 			ret = i2c_smbus_write_byte_data(chip->client,
@@ -246,8 +251,9 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
 	case IIO_TEMP:
 		vt_setup = (chan->address & 0xFF) | AD7746_VTSETUP_VTEN;
 		cap_setup = chip->cap_setup & ~AD7746_CAPSETUP_CAPEN;
-		delay = ad7746_cap_filter_rate_table[(chip->config >> 6) &
-			0x3][1];
+		idx = (chip->config >> AD7746_CONF_VTFS_SHIFT) &
+			AD7746_CONF_VTFS_MASK(0);
+		delay = ad7746_cap_filter_rate_table[idx][1];
 		break;
 	default:
 		return -EINVAL;
@@ -369,7 +375,7 @@ static int ad7746_store_cap_filter_rate_setup(struct ad7746_chip_info *chip,
 	if (i >= ARRAY_SIZE(ad7746_cap_filter_rate_table))
 		i = ARRAY_SIZE(ad7746_cap_filter_rate_table) - 1;
 
-	chip->config &= ~AD7746_CONF_CAPFS(0x7);
+	chip->config &= ~AD7746_CONF_CAPFS_MASK(AD7746_CONF_CAPFS_SHIFT);
 	chip->config |= AD7746_CONF_CAPFS(i);
 
 	return 0;
@@ -387,7 +393,7 @@ static int ad7746_store_vt_filter_rate_setup(struct ad7746_chip_info *chip,
 	if (i >= ARRAY_SIZE(ad7746_vt_filter_rate_table))
 		i = ARRAY_SIZE(ad7746_vt_filter_rate_table) - 1;
 
-	chip->config &= ~AD7746_CONF_VTFS(0x3);
+	chip->config &= ~AD7746_CONF_VTFS_MASK(AD7746_CONF_VTFS_SHIFT);
 	chip->config |= AD7746_CONF_VTFS(i);
 
 	return 0;
@@ -527,7 +533,7 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 			   long mask)
 {
 	struct ad7746_chip_info *chip = iio_priv(indio_dev);
-	int ret, delay;
+	int ret, delay, idx;
 	u8 regval, reg;
 
 	mutex_lock(&indio_dev->mlock);
@@ -635,13 +641,15 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		switch (chan->type) {
 		case IIO_CAPACITANCE:
-			*val = ad7746_cap_filter_rate_table[
-					(chip->config >> 3) & 0x7][0];
+			idx = (chip->config >> AD7746_CONF_CAPFS_SHIFT) &
+				AD7746_CONF_CAPFS_MASK(0);
+			*val = ad7746_cap_filter_rate_table[idx][0];
 			ret = IIO_VAL_INT;
 			break;
 		case IIO_VOLTAGE:
-			*val = ad7746_vt_filter_rate_table[
-					(chip->config >> 6) & 0x3][0];
+			idx = (chip->config >> AD7746_CONF_VTFS_SHIFT) &
+				AD7746_CONF_VTFS_MASK(0);
+			*val = ad7746_vt_filter_rate_table[idx][0];
 			break;
 		default:
 			ret = -EINVAL;
-- 
2.7.4


