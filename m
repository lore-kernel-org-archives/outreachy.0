X-GM-THRID: 6207482452562149376
X-Received: by 10.194.248.131 with SMTP id ym3mr1073081wjc.7.1445371019610;
        Tue, 20 Oct 2015 12:56:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.169 with SMTP id hd9ls242085wib.31.gmail; Tue, 20 Oct
 2015 12:56:59 -0700 (PDT)
X-Received: by 10.180.198.139 with SMTP id jc11mr3708832wic.4.1445371019069;
        Tue, 20 Oct 2015 12:56:59 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id hs5si786413wib.1.2015.10.20.12.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id ll6so44695367wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=L+r9ljmh7EylLC5TTTxrKu5ijTl9/ys1CY6NagxQvcc=;
        b=a+kUrBm/ZhN5AhMKzpsaq96wW8P3ZX3iG5ByRR63zN+Yd+HOvAjykDIwGyO2wRQtBi
         CDphWCJdFsJZYDF1iCyptg4PIB3ti8SFCa2sm0BwR7cTuxi63drMIHkTOCW4mmH59thN
         HNcVewqrOSXeaDpa3NbBf12Pkg4yCEWDAoBz0ZI73/a2T5QhaO9p/4Wr44xsKLL7AHec
         DJ+XTjJli9O0aEKAk/MpzVkD6hZqwDeeu9LKMUIjnLYC7Ex8TUZVVMwf40nuG8EqM/YI
         hecTlXAa39vGttmLfOLU2PMLJfUMJCTk2dHEoZO3ZbGY3OOXmmSa2WSHZG88Afprx7+O
         U6LA==
X-Received: by 10.180.85.165 with SMTP id i5mr20187054wiz.79.1445371018949;
        Tue, 20 Oct 2015 12:56:58 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.56.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:56:58 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 2/9] staging: iio: light: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:40 +0300
Message-Id: <743a26da1ffe6c2cd82c72e63c02a62a4f17518b.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/light/isl29018.c     | 4 ++--
 drivers/staging/iio/light/tsl2583.c      | 6 +++---
 drivers/staging/iio/light/tsl2x7x_core.c | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
index 019ba52..73109dd 100644
--- a/drivers/staging/iio/light/isl29018.c
+++ b/drivers/staging/iio/light/isl29018.c
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


