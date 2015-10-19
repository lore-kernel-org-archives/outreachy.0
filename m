X-GM-THRID: 6207482452562149376
X-Received: by 10.180.89.41 with SMTP id bl9mr47722wib.1.1445292137782;
        Mon, 19 Oct 2015 15:02:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.89.33 with SMTP id bl1ls10286wib.52.gmail; Mon, 19 Oct
 2015 15:02:17 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr4657097wia.7.1445292137453;
        Mon, 19 Oct 2015 15:02:17 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id hs5si581315wib.1.2015.10.19.15.02.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id fv8so2032048wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=qP1p1QGt26ob63UesesIG6rQ1+hURa4ARlCM4GN/qCM=;
        b=weClqzMZh5wa5znGAfJKaJjlkRccTQnXQGW/A+n9RkoqBoPP2WiDSiMdls5NFaUPTy
         L+svsq1Pk5NIVMwVnRnlV1I9ugTd2tW5E5lScgpQQNtGYB8NVUoLS0pDOxv6EW5FwPX/
         h8lXy1hb5bf8OEd9hcEFqakyrzTK3VDLeWLb+VlhlaN4OJHJHtwraWvjmDrAogcHfYSB
         KYQEDVw3BweHOeTTI6nHLqlYW21g3O6I9ze2qdgqK+Yr3aqEv7RW6CtJggt5WGgSHyS3
         AcQd6AP4WAx2S1Los6YGXbBRBpsI6l/5pyRxMOo5JrF8PBSh5FTJYVXCttI8VQqyHcfF
         XcJQ==
X-Received: by 10.194.179.231 with SMTP id dj7mr34116771wjc.146.1445292137384;
        Mon, 19 Oct 2015 15:02:17 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:16 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 03/10] staging: iio: light: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:38 +0300
Message-Id: <0c3bdbf416f5717678029a3f5993f1e2cf9d4407.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/light/isl29018.c     | 6 +++---
 drivers/staging/iio/light/tsl2583.c      | 6 +++---
 drivers/staging/iio/light/tsl2x7x_core.c | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
index 019ba52..5be3dd2 100644
--- a/drivers/staging/iio/light/isl29018.c
+++ b/drivers/staging/iio/light/isl29018.c
@@ -335,7 +335,7 @@ static ssize_t store_prox_infrared_suppression(struct device *dev,
 
 	if (kstrtoint(buf, 10, &val))
 		return -EINVAL;
-	if (!(val == 0 || val == 1)) {
+	if (!(!val || val == 1)) {
 		dev_err(dev, "The mode is not supported\n");
 		return -EINVAL;
 	}
@@ -370,7 +370,7 @@ static int isl29018_write_raw(struct iio_dev *indio_dev,
 		break;
 	case IIO_CHAN_INFO_INT_TIME:
 		if (chan->type == IIO_LIGHT) {
-			if (val != 0) {
+			if (val) {
 				mutex_unlock(&chip->lock);
 				return -EINVAL;
 			}
@@ -716,7 +716,7 @@ static int isl29018_probe(struct i2c_client *client,
 	int dev_id = 0;
 
 	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*chip));
-	if (indio_dev == NULL) {
+	if (!indio_dev) {
 		dev_err(&client->dev, "iio allocation fails\n");
 		return -ENOMEM;
 	}
diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index df60203..3100d96 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -263,7 +263,7 @@ static int taos_get_lux(struct iio_dev *indio_dev)
 	if ((ch0 >= chip->als_saturation) || (ch1 >= chip->als_saturation))
 		goto return_max;
 
-	if (ch0 == 0) {
+	if (!ch0) {
 		/* have no data, so return LAST VALUE */
 		ret = chip->als_cur_info.lux = 0;
 		goto out_unlock;
@@ -415,7 +415,7 @@ static int taos_chip_on(struct iio_dev *indio_dev)
 
 	/* determine als integration register */
 	als_count = (chip->taos_settings.als_time * 100 + 135) / 270;
-	if (als_count == 0)
+	if (!als_count)
 		als_count = 1; /* ensure at least one cycle */
 
 	/* convert back to time (encompasses overrides) */
@@ -499,7 +499,7 @@ static ssize_t taos_power_state_store(struct device *dev,
 	if (kstrtoint(buf, 0, &value))
 		return -EINVAL;
 
-	if (value == 0)
+	if (!value)
 		taos_chip_off(indio_dev);
 	else
 		taos_chip_on(indio_dev);
diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 010e607..c43bab9 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -403,7 +403,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 		goto return_max;
 	}
 
-	if (ch0 == 0) {
+	if (!ch0) {
 		/* have no data, so return LAST VALUE */
 		ret = chip->als_cur_info.lux;
 		goto out_unlock;
@@ -678,7 +678,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 
 	/* determine als integration register */
 	als_count = (chip->tsl2x7x_settings.als_time * 100 + 135) / 270;
-	if (als_count == 0)
+	if (!als_count)
 		als_count = 1; /* ensure at least one cycle */
 
 	/* convert back to time (encompasses overrides) */
@@ -825,7 +825,7 @@ void tsl2x7x_prox_calculate(int *data, int length,
 	int sample_sum;
 	int tmp;
 
-	if (length == 0)
+	if (!length)
 		length = 1;
 
 	sample_sum = 0;
-- 
1.9.1


