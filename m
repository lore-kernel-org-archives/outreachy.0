X-GM-THRID: 6339598163243958272
X-Received: by 10.157.6.197 with SMTP id 63mr8076865otx.85.1476052720665;
        Sun, 09 Oct 2016 15:38:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls8566888ota.25.gmail; Sun, 09 Oct
 2016 15:38:40 -0700 (PDT)
X-Received: by 10.157.33.7 with SMTP id i7mr6869986otb.96.1476052720219;
        Sun, 09 Oct 2016 15:38:40 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si7759717par.0.2016.10.09.15.38.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 15:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hh10so5900283pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 15:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QpNkh+Fqx0+TpgIw+3SwtPul3E820XMdfG0xEn9jx34=;
        b=ZcOCCv/+8C3l7pGYB+VhO4qKZPgnyGvs1jO57edOvFFPCQIxwiISwtPsC/Uv6y4Gcm
         Zi3RHfdKCrLYCinQd/mfaB0/+mjBGQNUvANxjNLNJal6SGjXxTM2KczOvgXXWk9DxR73
         rsXKY79o7fQ0Lw9Uv+A04nU6wxC9ij582PzdVH/D41zD3MfMkzggZUpMTBvIFlMkCJvM
         Gmn/pYLA31xT9N6HeFddYPiYmqaD5owX4qGwqwevYCpFXvCuohDY8l4agU1F5A2nAYHa
         jVeWZ0pJ1A7asYIInUTtOzd0cFl9r1KIAdXeIjW6UnDN5IeHjbUXOzBHyArrgEMW4mtE
         6CoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QpNkh+Fqx0+TpgIw+3SwtPul3E820XMdfG0xEn9jx34=;
        b=B/MhU1Za/qrTwCdopXNoEkJfqGkSnOM1+NTn+cpZL7cQvm0Yul2EFk6Ckmro95TKUm
         2xVEohvEyxgx8Ii28RME3M9tiaMxYfNVl8tygApAiMz3E/0kq7fQBPIq0V1yAQIkmXVL
         d3ufHeZLh9G8z5n1/T7zzohTCHvY7Rz3F2IXMZU7vucJ67p0uTCVjUyOmFJblNsNG5fJ
         C4jF2aMzQCzITORZ61P/tm1M/Jsjd/wce1viDhgy0LihKQmmdxdMt9jA0ZozTYdz+aGd
         COLEXuiC4wW2HwRnzXBWTD+n1FXQiukz3TaRUKsZ6J9rEs0jRVP4T2ieCkrithNoTgCc
         Kykw==
X-Gm-Message-State: AA6/9Rlkh5iQ6VgG6pjv8r4uCt1ZZOjNsZr7lm1i9vRSF8Yu7vvAfC5LsaT2neEd7WUL3w==
X-Received: by 10.66.246.13 with SMTP id xs13mr48826101pac.57.1476052719959;
        Sun, 09 Oct 2016 15:38:39 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.170.13])
        by smtp.gmail.com with ESMTPSA id xo5sm39991346pab.13.2016.10.09.15.38.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 15:38:39 -0700 (PDT)
Date: Mon, 10 Oct 2016 04:08:21 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>
Subject: [PATCH] staging: iio: cdc: ad7152: Replace mlock with a local mutex
 lock
Message-ID: <20161009223821.GA10318@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

mlock is intended to protect only switches between modes.
Given this driver doesn't support more than one mode (sysfs polled reads
only), replace mlock with a local mutex lock.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 485d0a5..9f5f1ca 100644
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
@@ -197,16 +198,16 @@ static ssize_t ad7152_store_filter_rate_setup(struct device *dev,
 	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
 		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->state_lock);
 	ret = i2c_smbus_write_byte_data(chip->client,
 			AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
 	if (ret < 0) {
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&chip->state_lock);
 		return ret;
 	}
 
 	chip->filter_rate_setup = i;
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->state_lock);
 
 	return len;
 }
@@ -256,7 +257,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 	struct ad7152_chip_info *chip = iio_priv(indio_dev);
 	int ret, i;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->state_lock);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_CALIBSCALE:
@@ -314,7 +315,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 	}
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->state_lock);
 	return ret;
 }
 static int ad7152_read_raw(struct iio_dev *indio_dev,
@@ -326,7 +327,7 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 	int ret;
 	u8 regval = 0;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->state_lock);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
@@ -407,7 +408,7 @@ static int ad7152_read_raw(struct iio_dev *indio_dev,
 		ret = -EINVAL;
 	}
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->state_lock);
 	return ret;
 }
 
@@ -489,6 +490,7 @@ static int ad7152_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, indio_dev);
 
 	chip->client = client;
+	mutex_init(&chip->state_lock);
 
 	/* Establish that the iio_dev is a child of the i2c device */
 	indio_dev->name = id->name;
-- 
2.7.4


