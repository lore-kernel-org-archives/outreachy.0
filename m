X-GM-THRID: 6400749553719443456
X-Received: by 10.223.173.110 with SMTP id p101mr275226wrc.13.1490290638154;
        Thu, 23 Mar 2017 10:37:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.205 with SMTP id e196ls496019lfg.38.gmail; Thu, 23 Mar
 2017 10:37:17 -0700 (PDT)
X-Received: by 10.25.223.67 with SMTP id q3mr547248lfj.1.1490290637510;
        Thu, 23 Mar 2017 10:37:17 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l138si701364wmg.0.2017.03.23.10.37.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 10:37:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id l37so32120953wrc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 10:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EAHSUCS/JNybQrXq74d8V3A+kk6+y411K+Tor6TizgU=;
        b=Gq5P0/1A4sEd4SNkwGbYCIbXYLRDdBbkxK1cMVxaF6G6vx19IME4mMuv5K3Tk1Fld/
         8/l/Kf4L6L6P3IdegeScrVB4NxlcPCK8jRElt8uQWhSXjNqzUwvOMun260/8yPlssWCt
         QDevX1D1tFyuStBZlmtF9OBQQYMKAWvP/B4I3EhBtc7xQYyCj3YXwTCzIVAC8o7Y/oPA
         FaPvm4xe80hiFv/+jhOpYRaOMjg0fZUnx8sTQEHZ+TboNpQ+xdhzduFR3ovoIOS1wjU4
         a1tx7txaK5s3ufnIgia4OqnYrwFH3SM4jtLT18fQ3qL1CUisk8Em5ezunlLFB8bOCq4f
         aOiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EAHSUCS/JNybQrXq74d8V3A+kk6+y411K+Tor6TizgU=;
        b=qwBCHejaOH6d+frgA7vSiuL/vGpOaYHkEf6xwxMX9J57sldB9xxuDEMGjMpEgPxykm
         PoTnXQUMa5F0ZxE0NY16E/N2oMRTVMA+r3pJUErHEF1K1nUbF/vMogl5KVSTRR1jWoWb
         q80DK4mXat2GsCQL1pmwab2j2cC8u8HBiaUmyGZcPF+9hDyy4rgbiOSnJluhF479QEOa
         IKi1VpWXIsrunQwkyoCRhS8RgrECHBw5jLnbDqrS9L4RL3A7M6u09qveNyztSGuRKDmJ
         e7tPmLyH8zMZ/AA3piWZFQ+ECXzGPcEgutK6mqM+SUNShj8sjgyi6eypzjHs4+B04N/B
         UZEw==
X-Gm-Message-State: AFeK/H2MjJSEyx88KDG8v9I/CkHlCwzkgDmZVkrtpvyEnzELjFRqZQ8zD3jtzU3va+0MXA==
X-Received: by 10.223.169.171 with SMTP id b40mr3955051wrd.132.1490290637242;
        Thu, 23 Mar 2017 10:37:17 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id k76sm6667141wrc.12.2017.03.23.10.37.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Mar 2017 10:37:16 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: iio: ad5933: Protect DIRECT mode using claim/release helpers
Date: Thu, 23 Mar 2017 19:36:43 +0200
Message-Id: <1490290603-9115-1-git-send-email-narcisaanamaria12@gmail.com>
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

Remove lock from ad5933_work() because buffer mode should be enabled
when we reach this, and claiming DIRECT mode in all the other places
should protect it.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
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


