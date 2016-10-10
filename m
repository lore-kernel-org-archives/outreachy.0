X-GM-THRID: 6339598163243958272
X-Received: by 10.13.223.83 with SMTP id i80mr9498260ywe.74.1476080472046;
        Sun, 09 Oct 2016 23:21:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.195 with SMTP id n186ls359936ith.1.gmail; Sun, 09 Oct
 2016 23:21:08 -0700 (PDT)
X-Received: by 10.66.12.168 with SMTP id z8mr7530601pab.63.1476080468221;
        Sun, 09 Oct 2016 23:21:08 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si8201675par.0.2016.10.09.23.21.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 23:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id qn10so6507260pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 23:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=s+cU6/b02SRlm1LlLAgEl19vyz/ERizleS4nF1yfDpk=;
        b=sHAcoplWn8FprsusiSsAaqb30vLlkyjCJWaTZsJN6Q+I8TEw6d5fyoUuJgZ+XGZ9WV
         SQRvQfRwFNt+XGxeZnWi6TYkJfvHWa91qeN6RFTqf8YoSAYbmH7BrITTrbdvzT3/Nzgt
         9gLKKwExYyUz5BBtX7sSPvB3Uy4UjsjqK7KDnGj2m5JkrhO8uK+5fdLtxfUoV5Cz1fM6
         2eg9AFEBvKtzcnaasvzvvGVqzds1rIMj3iZJsNQaEfM3+car9F9a3bHwQITGM5vsK8vW
         JlIeo0wbLH3J2ZS12NSfgIkaXQfsvCL9Q9/rAuNOzB631X9l2XIPbmO8D4BqSLiGjhKK
         1MNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=s+cU6/b02SRlm1LlLAgEl19vyz/ERizleS4nF1yfDpk=;
        b=Vy5VG05j1AwPH6TY/KT+MJHA3cYAVXbGIpnivo2genIs3X4GAV4PdjGy53Gl5MvZiF
         yrFxH8Qa/cVq9Q+WmOQgluC6Fawd1hmWTrCjvBAjxvkQzf7JtY5VKcIjOhufZ8731IVQ
         gof4d30t6wSXSmpuHGNK4NMBoQ31vigZOUvpAvUUwRowAZ9QJ44bWgW3PzIkufAJRfa7
         ozXVLus402WK9X1SN+jhaC+O3uBl8r0fpCFiEF8CYpjDbU2Cjhj3OhoI9xu7XLL/3HjI
         JqdlWDR1YS5LOJgRMUGlXdZov6Pci9NU2TWSiLOuf5xuObOsy5K/z83+mdxj3jNojkTE
         cvvA==
X-Gm-Message-State: AA6/9Rlb+cqvXtRLxNRDlQchx+26OdO7rr17+rIUU7mXe+KItQ15iGNuaeCQ28bMEezqFw==
X-Received: by 10.66.54.227 with SMTP id m3mr8904819pap.132.1476080468020;
        Sun, 09 Oct 2016 23:21:08 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.208.178])
        by smtp.gmail.com with ESMTPSA id xn11sm51850852pac.38.2016.10.09.23.20.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 23:21:07 -0700 (PDT)
Date: Mon, 10 Oct 2016 11:50:48 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 21cnbao@gmail.com,
	linux-iio@vger.kernel.org
Subject: [PATCH v2] staging: iio: cdc: ad7152: Replace mlock with a local
 mutex lock
Message-ID: <20161010062048.GA14750@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

mlock is intended to protect only switches between modes.
Given this driver doesn't support more than one mode (sysfs polled reads
only), replace mlock with a local mutex lock.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Made changes on top of previous commit i.e, implement IIO_CHAN_INFO_SAMP_FREQ

 drivers/staging/iio/cdc/ad7152.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index b3cc629..24d355d 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -89,6 +89,7 @@ struct ad7152_chip_info {
 	 */
 	u8	filter_rate_setup;
 	u8	setup[2];
+	struct mutex state_lock;	/* protect hardware state */
 };
 
 static inline ssize_t ad7152_start_calib(struct device *dev,
@@ -115,10 +116,10 @@ static inline ssize_t ad7152_start_calib(struct device *dev,
 	else
 		regval |= AD7152_CONF_CH2EN;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->state_lock);
 	ret = i2c_smbus_write_byte_data(chip->client, AD7152_REG_CFG, regval);
 	if (ret < 0) {
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&chip->state_lock);
 		return ret;
 	}
 
@@ -126,12 +127,12 @@ static inline ssize_t ad7152_start_calib(struct device *dev,
 		mdelay(20);
 		ret = i2c_smbus_read_byte_data(chip->client, AD7152_REG_CFG);
 		if (ret < 0) {
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&chip->state_lock);
 			return ret;
 		}
 	} while ((ret == regval) && timeout--);
 
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->state_lock);
 	return len;
 }
 static ssize_t ad7152_start_offset_calib(struct device *dev,
@@ -229,14 +230,14 @@ static int ad7152_write_raw_samp_freq(struct device *dev, int val)
 	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
 		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->state_lock);
 	ret = i2c_smbus_write_byte_data(chip->client,
 					AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
 	if (ret < 0)
 		return ret;
 
 	chip->filter_rate_setup = i;
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->state_lock);
 
 	return ret;
 }
@@ -249,7 +250,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 	struct ad7152_chip_info *chip = iio_priv(indio_dev);
 	int ret, i;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->state_lock);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_CALIBSCALE:
@@ -317,7 +318,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 	}
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->state_lock);
 	return ret;
 }
 static int ad7152_read_raw(struct iio_dev *indio_dev,
@@ -329,7 +330,7 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 	int ret;
 	u8 regval = 0;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->state_lock);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
@@ -417,7 +418,7 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 		ret = -EINVAL;
 	}
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->state_lock);
 	return ret;
 }
 
@@ -503,6 +504,7 @@ static int ad7152_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 
 	chip->client = client;
+	mutex_init(&chip->state_lock);
 
 	/* Establish that the iio_dev is a child of the i2c device */
 	indio_dev->name = id->name;
-- 
2.7.4


