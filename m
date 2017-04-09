X-GM-THRID: 6400749553719443456
X-Received: by 10.25.145.17 with SMTP id t17mr6394811lfd.25.1491734444464;
        Sun, 09 Apr 2017 03:40:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.196.194 with SMTP id u185ls3184017lff.30.gmail; Sun, 09 Apr
 2017 03:40:42 -0700 (PDT)
X-Received: by 10.25.145.17 with SMTP id t17mr6394805lfd.25.1491734442893;
        Sun, 09 Apr 2017 03:40:42 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id x188si593879wmx.0.2017.04.09.03.40.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Apr 2017 03:40:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id d79so5053915wmi.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Apr 2017 03:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TxUzfTPR4ckEc/MLRSMDy/zPnLQ2vh33lKY1eagQi4M=;
        b=M7CZaWO+7ftCrYa1P+ZlhrLCb+5eg4Bf+3Q/zFqU7k8CO5q96LZFOzdEWOwjDTaokP
         rH1rZfvPpt38KR2QCvbk2bv30CCftP5Ejed+tfzcnOIdX12+sfa4xObUcCc4vYv7CZV9
         5JRBRdzw23MNIaf4AAH+0T5b4Fe0dOpC4XU9BpSBMLXwRxWQj3mSjZBXkjdUIy1pnaHz
         uJmQQN8yCo+/q3aXHcAEo+r2jvSLWeJ3u4143fXeiF4Qmk8tLghFfKHWpRtvzsE7K7zB
         dagLxSWJr9C+NQ6msfQ2Cohcj4LxdkK2GUkvdV5gjvBpAcgHZfmtQEiPDN2RUARgM+LS
         oRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TxUzfTPR4ckEc/MLRSMDy/zPnLQ2vh33lKY1eagQi4M=;
        b=RrViEnrWqI65pjGyiqFn3wSeLi38Cc0Dam32K7pkzYZh8Eto0DXGY6F5NaQuGaptDc
         SO37ctwJYnaCUV7EUoZ9MCkZHKf7878E6hNuMxUGTYtxahU3yKWBUuWx+wCGFgCkN2Y+
         tU94jtMKMUx7wxX86CKmTo8DHkif1b7SnAxw4vbaB6qRv9rm4OYdU54upCDTb1wkMkA4
         KzxXa+lHMYVBFD4E7eoxkwk4Bj1Nx+BlkHvZxlI87h6FGYil+HbHVQLBRijX3xhLrjX7
         LginoKj3gR9IfjOWXEA7h4KBBj6uKBETLeBI5YLtJwmKUTZM9pzRt+OnYzVrtz7G96+g
         zqXw==
X-Gm-Message-State: AN3rC/4TqDwxKFv+wuUgNIgAtiCKvxujQ24ZA2l7v+czq6iSogq5ZqbnZQo+eI5XiejEVg==
X-Received: by 10.28.33.66 with SMTP id h63mr6132125wmh.86.1491734442628;
        Sun, 09 Apr 2017 03:40:42 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id e129sm5928717wma.13.2017.04.09.03.40.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Apr 2017 03:40:41 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2] staging: iio: ad5933: Protect DIRECT mode using claim/release helpers
Date: Sun,  9 Apr 2017 13:40:07 +0300
Message-Id: <1491734407-3886-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

This device operates in DIRECT_MODE and BUFFER_HARDWARE mode.
Replace usages of iio_dev->mlock with iio_device_{claim|release}_direct_mode()
helper functions to guarantee DIRECT mode and consequently protect
BUFFER mode too.

Add and use a device private lock to protect against conflicting access of the
state data.
This helps with IIO subsystem redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

Protect changing of attributes inside ad5933_store(). Attributes
can no longer be changed while in buffered mode.

Remove lock from ad5933_work() because buffer mode should be enabled
when we reach this, and claiming DIRECT mode in all the other places
should protect it.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
Changes in v2:
  - Make the commit message clearer

 drivers/staging/iio/impedance-analyzer/ad5933.c | 50 ++++++++++++++-----------
 1 file changed, 28 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 297665d..3d539ee 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -98,6 +98,7 @@ struct ad5933_state {
 	struct i2c_client		*client;
 	struct regulator		*reg;
 	struct delayed_work		work;
+	struct mutex			lock; /* Protect sensor state */
 	unsigned long			mclk_hz;
 	unsigned char			ctrl_hb;
 	unsigned char			ctrl_lb;
@@ -306,9 +307,11 @@ static ssize_t ad5933_show_frequency(struct device *dev,
 		u8 d8[4];
 	} dat;
 
-	mutex_lock(&indio_dev->mlock);
+	ret = iio_device_claim_direct_mode(indio_dev);
+	if (ret)
+		return ret;
 	ret = ad5933_i2c_read(st->client, this_attr->address, 3, &dat.d8[1]);
-	mutex_unlock(&indio_dev->mlock);
+	iio_device_release_direct_mode(indio_dev);
 	if (ret < 0)
 		return ret;
 
@@ -338,9 +341,11 @@ static ssize_t ad5933_store_frequency(struct device *dev,
 	if (val > AD5933_MAX_OUTPUT_FREQ_Hz)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	ret = iio_device_claim_direct_mode(indio_dev);
+	if (ret)
+		return ret;
 	ret = ad5933_set_freq(st, this_attr->address, val);
-	mutex_unlock(&indio_dev->mlock);
+	iio_device_release_direct_mode(indio_dev);
 
 	return ret ? ret : len;
 }
@@ -364,7 +369,7 @@ static ssize_t ad5933_show(struct device *dev,
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret = 0, len = 0;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 	switch ((u32)this_attr->address) {
 	case AD5933_OUT_RANGE:
 		len = sprintf(buf, "%u\n",
@@ -393,7 +398,7 @@ static ssize_t ad5933_show(struct device *dev,
 		ret = -EINVAL;
 	}
 
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 	return ret ? ret : len;
 }
 
@@ -415,7 +420,10 @@ static ssize_t ad5933_store(struct device *dev,
 			return ret;
 	}
 
-	mutex_lock(&indio_dev->mlock);
+	ret = iio_device_claim_direct_mode(indio_dev);
+	if (ret)
+		return ret;
+	mutex_lock(&st->lock);
 	switch ((u32)this_attr->address) {
 	case AD5933_OUT_RANGE:
 		ret = -EINVAL;
@@ -465,7 +473,8 @@ static ssize_t ad5933_store(struct device *dev,
 		ret = -EINVAL;
 	}
 
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
+	iio_device_release_direct_mode(indio_dev);
 	return ret ? ret : len;
 }
 
@@ -532,11 +541,9 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
 
 	switch (m) {
 	case IIO_CHAN_INFO_RAW:
-		mutex_lock(&indio_dev->mlock);
-		if (iio_buffer_enabled(indio_dev)) {
-			ret = -EBUSY;
-			goto out;
-		}
+		ret = iio_device_claim_direct_mode(indio_dev);
+		if (ret)
+			return ret;
 		ret = ad5933_cmd(st, AD5933_CTRL_MEASURE_TEMP);
 		if (ret < 0)
 			goto out;
@@ -549,7 +556,7 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
 				      2, (u8 *)&dat);
 		if (ret < 0)
 			goto out;
-		mutex_unlock(&indio_dev->mlock);
+		iio_device_release_direct_mode(indio_dev);
 		*val = sign_extend32(be16_to_cpu(dat), 13);
 
 		return IIO_VAL_INT;
@@ -561,7 +568,7 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
 
 	return -EINVAL;
 out:
-	mutex_unlock(&indio_dev->mlock);
+	iio_device_release_direct_mode(indio_dev);
 	return ret;
 }
 
@@ -657,18 +664,17 @@ static void ad5933_work(struct work_struct *work)
 	unsigned char status;
 	int ret;
 
-	mutex_lock(&indio_dev->mlock);
 	if (st->state == AD5933_CTRL_INIT_START_FREQ) {
 		/* start sweep */
 		ad5933_cmd(st, AD5933_CTRL_START_SWEEP);
 		st->state = AD5933_CTRL_START_SWEEP;
 		schedule_delayed_work(&st->work, st->poll_time_jiffies);
-		goto out;
+		return;
 	}
 
 	ret = ad5933_i2c_read(st->client, AD5933_REG_STATUS, 1, &status);
 	if (ret)
-		goto out;
+		return;
 
 	if (status & AD5933_STAT_DATA_VALID) {
 		int scan_count = bitmap_weight(indio_dev->active_scan_mask,
@@ -678,7 +684,7 @@ static void ad5933_work(struct work_struct *work)
 				AD5933_REG_REAL_DATA : AD5933_REG_IMAG_DATA,
 				scan_count * 2, (u8 *)buf);
 		if (ret)
-			goto out;
+			return;
 
 		if (scan_count == 2) {
 			val[0] = be16_to_cpu(buf[0]);
@@ -690,7 +696,7 @@ static void ad5933_work(struct work_struct *work)
 	} else {
 		/* no data available - try again later */
 		schedule_delayed_work(&st->work, st->poll_time_jiffies);
-		goto out;
+		return;
 	}
 
 	if (status & AD5933_STAT_SWEEP_DONE) {
@@ -703,8 +709,6 @@ static void ad5933_work(struct work_struct *work)
 		ad5933_cmd(st, AD5933_CTRL_INC_FREQ);
 		schedule_delayed_work(&st->work, st->poll_time_jiffies);
 	}
-out:
-	mutex_unlock(&indio_dev->mlock);
 }
 
 static int ad5933_probe(struct i2c_client *client,
@@ -723,6 +727,8 @@ static int ad5933_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 	st->client = client;
 
+	mutex_init(&st->lock);
+
 	if (!pdata)
 		pdata = &ad5933_default_pdata;
 
-- 
1.9.1


