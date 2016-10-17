X-GM-THRID: 6342268830362894336
X-Received: by 10.237.59.118 with SMTP id q51mr6275585qte.64.1476674533488;
        Sun, 16 Oct 2016 20:22:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls11065273otr.33.gmail; Sun, 16 Oct
 2016 20:22:13 -0700 (PDT)
X-Received: by 10.200.54.175 with SMTP id a44mr5985721qtc.86.1476674533127;
        Sun, 16 Oct 2016 20:22:13 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z76si4383743pff.1.2016.10.16.20.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 20:22:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id qn10so8691885pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 20:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0bWRAs4ty2Q8YcT82TH6TSKcnMFeuIDZCmBmPktQQdI=;
        b=P7KIHzU4hpjWg3LU0HNYbypFRZb8omJV7jBBmRcinQ5XLjqv+9FUu2ZcjXbKkA5H1o
         EemIfwGFX6O+jK3/RR6MBB39doRm4yr4gjszsF4b6DPmYhSZ1xAuu4sq93S2w8afBzu/
         ClGJOp/UJrxUN/1qkPHxN3vWUTCAbfngW8WicCdmAGNOkXi9O7qKx0+Pr+SPDqqDjOYs
         7vHw/ter02kCJdLxf3L+8w45OVUErRRocEwdWz6mxao9m79XrSqrT1s8lBt7HbAzOQpM
         D7LJ6cZx7FDUFd5i+8VNFLrXvNAcNClG9w7R241aO3+3TjN6fypqO0sw478Gq+wl73ds
         hdzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0bWRAs4ty2Q8YcT82TH6TSKcnMFeuIDZCmBmPktQQdI=;
        b=Vnb9u1kQvFKdwjg4xzftD9/BoUeVyQBvdEkgN63QCWibSHgzt43tUXRKCOspJFGSJ+
         yQtt8GDmGkSzGHLVhnonq8DWkbsfiMkCqv70mIoGdUA5iIQV67xqORivMbq+TSg/33cT
         /if7zPfAWmYfx7l7ejuD3tSosj5aaSu4O99atsF+6Z7Q76LN4DPYVghlNANLheblMIgo
         u9bwEc2Qku3+CwyMoXsCK1N/vu6s49/u/bDF/EPehLfnTxMoNdspqdhup/51g3kQ80CD
         8GB17IvcHb3/tZBE06ut/4FQoF+hf8ow6pQolQm/4krM9P/xra2la7/IlpfVGLHbTHlO
         iffw==
X-Gm-Message-State: AA6/9RmJksjpqJ2/nD+UIpICyMy6tcTAueEL5QlaXIKd40QQxxvgQFtigugeBSxS0mtyqw==
X-Received: by 10.66.234.194 with SMTP id ug2mr29566917pac.111.1476674532878;
        Sun, 16 Oct 2016 20:22:12 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.6])
        by smtp.gmail.com with ESMTPSA id r194sm21169668pfr.94.2016.10.16.20.22.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 16 Oct 2016 20:22:12 -0700 (PDT)
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
Subject: [PATCH] staging: iio: cdc: ad7746: add additional config defines
Date: Mon, 17 Oct 2016 11:21:49 +0800
Message-Id: <1476674510-10734-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Introduce defines for shifting and mask under the config register for
better readability.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index f41251c..751f0d1 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -70,8 +70,12 @@
 #define AD7746_EXCSETUP_EXCLVL(x)	(((x) & 0x3) << 0)
 
 /* Config Register Bit Designations (AD7746_REG_CFG) */
-#define AD7746_CONF_VTFS(x)		((x) << 6)
-#define AD7746_CONF_CAPFS(x)		((x) << 3)
+#define AD7746_CONF_VTFS_SHIFT		6
+#define AD7746_CONF_CAPFS_SHIFT		3
+#define AD7746_CONF_VTFS_MASK		0x3
+#define AD7746_CONF_CAPFS_MASK		0x7
+#define AD7746_CONF_VTFS(x)		((x) << AD7746_CONF_VTFS_SHIFT)
+#define AD7746_CONF_CAPFS(x)		((x) << AD7746_CONF_CAPFS_SHIFT)
 #define AD7746_CONF_MODE_IDLE		(0 << 0)
 #define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
 #define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
@@ -224,8 +228,8 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
 	case IIO_CAPACITANCE:
 		cap_setup = (chan->address & 0xFF) | AD7746_CAPSETUP_CAPEN;
 		vt_setup = chip->vt_setup & ~AD7746_VTSETUP_VTEN;
-		delay = ad7746_cap_filter_rate_table[(chip->config >> 3) &
-			0x7][1];
+		delay = ad7746_cap_filter_rate_table[(chip->config &
+			AD7746_CONF_CAPFS_MASK) >> AD7746_CONF_CAPFS_SHIFT][1];
 
 		if (chip->capdac_set != chan->channel) {
 			ret = i2c_smbus_write_byte_data(chip->client,
@@ -246,8 +250,8 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
 	case IIO_TEMP:
 		vt_setup = (chan->address & 0xFF) | AD7746_VTSETUP_VTEN;
 		cap_setup = chip->cap_setup & ~AD7746_CAPSETUP_CAPEN;
-		delay = ad7746_cap_filter_rate_table[(chip->config >> 6) &
-			0x3][1];
+		delay = ad7746_cap_filter_rate_table[(chip->config &
+			AD7746_CONF_VTFS_MASK) >> AD7746_CONF_VTFS_SHIFT][1];
 		break;
 	default:
 		return -EINVAL;
@@ -369,7 +373,7 @@ static int ad7746_store_cap_filter_rate_setup(struct ad7746_chip_info *chip,
 	if (i >= ARRAY_SIZE(ad7746_cap_filter_rate_table))
 		i = ARRAY_SIZE(ad7746_cap_filter_rate_table) - 1;
 
-	chip->config &= ~AD7746_CONF_CAPFS(0x7);
+	chip->config &= ~AD7746_CONF_CAPFS(AD7746_CONF_CAPFS_MASK);
 	chip->config |= AD7746_CONF_CAPFS(i);
 
 	return 0;
@@ -387,7 +391,7 @@ static int ad7746_store_vt_filter_rate_setup(struct ad7746_chip_info *chip,
 	if (i >= ARRAY_SIZE(ad7746_vt_filter_rate_table))
 		i = ARRAY_SIZE(ad7746_vt_filter_rate_table) - 1;
 
-	chip->config &= ~AD7746_CONF_VTFS(0x3);
+	chip->config &= ~AD7746_CONF_VTFS(AD7746_CONF_VTFS_MASK);
 	chip->config |= AD7746_CONF_VTFS(i);
 
 	return 0;
@@ -636,12 +640,14 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 		switch (chan->type) {
 		case IIO_CAPACITANCE:
 			*val = ad7746_cap_filter_rate_table[
-					(chip->config >> 3) & 0x7][0];
+				(chip->config & AD7746_CONF_CAPFS_MASK) >>
+					AD7746_CONF_CAPFS_SHIFT][0];
 			ret = IIO_VAL_INT;
 			break;
 		case IIO_VOLTAGE:
 			*val = ad7746_vt_filter_rate_table[
-					(chip->config >> 6) & 0x3][0];
+				(chip->config & AD7746_CONF_VTFS_MASK) >>
+					AD7746_CONF_VTFS_SHIFT][0];
 			break;
 		default:
 			ret = -EINVAL;
-- 
2.7.4


