X-GM-THRID: 6398911459091283968
X-Received: by 10.237.41.65 with SMTP id s59mr2871215qtd.83.1489953846979;
        Sun, 19 Mar 2017 13:04:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls12851134otw.5.gmail; Sun, 19 Mar 2017
 13:04:06 -0700 (PDT)
X-Received: by 10.13.226.145 with SMTP id l139mr13401450ywe.95.1489953846617;
        Sun, 19 Mar 2017 13:04:06 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 190si867377pfv.3.2017.03.19.13.04.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 13:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n11so3136975pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 13:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/ZF3cOPvbsYDqm0SS/BBasY5aEZVqM0uHWXfIeNLzM0=;
        b=VD0G5IhzAIgzv3f3ipEY8HmBhKCSAdOpme8czqXurdHKYpbifsvTFJSsRw79RMRDZh
         GEpY4RiPiZGqktjS84RjUQ7cssdvzKKUanpWUcYwHxKx6X/ZjEZ8pWHgAXH8R07M80IL
         i/eQPo36+5qm4ewcYhMqYi7lyw0+IHOdJKVe7P2dh+WVu8DTyJANsGRL9RV7+5qrUwgF
         2320UCRP26fUpqYAZGTe8xJa60De8L9DDeiet/2uOG7it2zHrFyMMSdXlJ81ue8g3Elb
         ytyqDfFxvW9eb+Hz+VXXIKiLNKYmUdt5WSGlDWY34gtrILN9AL1dvW45oVyqrfVR7e2g
         3+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/ZF3cOPvbsYDqm0SS/BBasY5aEZVqM0uHWXfIeNLzM0=;
        b=fhW9CtU9DNxMMQgiiGLnEE6FWIfav2eaneYw+7JQrPVBaXr+t5F0essoBKlOrW/se5
         qnemP/XkDFFU8vUuPkRb7HMxjA0g/iCA8aXbbYzvR4eTRTSkdmvMr2WP3vK/tmbTns5V
         p9XTDHfmudBX6SL/yD9mdVpy/vBVlDzdU4GVaSVfGtuo92fOlaELI0sgLt5U2AvgEhjB
         bDHduPq1Jo8oayLLSZ/3LuobxxBbBuQRxzx9HrgjzhiwaaF/UdwHRXeSZa9Av08cbybB
         TiJAILuUJN4aBBGQNql7DSNj42s+uR1kq8YCLjF7jWJMmOxDdpruM44sYZfLHvkXg9IK
         YIUw==
X-Gm-Message-State: AFeK/H10yB9ukrwbD+8F6umy+ZkcDjhvfkaeJMKKtYLW3ho25eY0xbWOL95XrXxtOXllvg==
X-Received: by 10.98.74.9 with SMTP id x9mr29726253pfa.29.1489953846141;
        Sun, 19 Mar 2017 13:04:06 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r8sm24178827pfk.80.2017.03.19.13.04.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 13:04:05 -0700 (PDT)
Date: Mon, 20 Mar 2017 01:36:21 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v6] staging: Use buf_lock instead of mlock and Refactor code
Message-ID: <20170319200621.GA21295@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes. Replace it with buf_lock in the devices global data.

As buf_lock protects both the adis16060_spi_write() and
adis16060_spi_read() functions and both are always called in
pair. First write, then read. Thus, refactor the code to have
one single function adis16060_spi_write_than_read() which is
protected by the existing buf_lock.

Removed nested locks as the function adis16060_read_raw call
a lock on &st->buf_lock and then calls the function
adis16060_spi_write which again tries to get hold
of the same lock.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v6:
   -Change commit message
   -Remove nested lock

 drivers/staging/iio/gyro/adis16060_core.c | 40 ++++++++++---------------------
 1 file changed, 13 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..1c6de46 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -40,25 +40,17 @@ struct adis16060_state {
 
 static struct iio_dev *adis16060_iio_dev;
 
-static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
+static int adis16060_spi_write_than_read(struct iio_dev *indio_dev,
+					 u8 conf, u16 *val)
 {
 	int ret;
 	struct adis16060_state *st = iio_priv(indio_dev);
 
-	mutex_lock(&st->buf_lock);
-	st->buf[2] = val; /* The last 8 bits clocked in are latched */
+	st->buf[2] = conf; /* The last 8 bits clocked in are latched */
 	ret = spi_write(st->us_w, st->buf, 3);
-	mutex_unlock(&st->buf_lock);
-
-	return ret;
-}
-
-static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
-{
-	int ret;
-	struct adis16060_state *st = iio_priv(indio_dev);
 
-	mutex_lock(&st->buf_lock);
+	if (ret < 0)
+		return ret;
 
 	ret = spi_read(st->us_r, st->buf, 3);
 
@@ -69,8 +61,8 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
 	 */
 	if (!ret)
 		*val = ((st->buf[0] & 0x3) << 12) |
-			(st->buf[1] << 4) |
-			((st->buf[2] >> 4) & 0xF);
+			 (st->buf[1] << 4) |
+			 ((st->buf[2] >> 4) & 0xF);
 	mutex_unlock(&st->buf_lock);
 
 	return ret;
@@ -83,20 +75,18 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 {
 	u16 tval = 0;
 	int ret;
+	struct adis16060_state *st = iio_priv(indio_dev);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
 		/* Take the iio_dev status lock */
-		mutex_lock(&indio_dev->mlock);
-		ret = adis16060_spi_write(indio_dev, chan->address);
+		mutex_lock(&st->buf_lock);
+		ret = adis16060_spi_write_than_read(indio_dev,
+						    chan->address, &tval);
+		mutex_unlock(&st->buf_lock);
 		if (ret < 0)
-			goto out_unlock;
+			return ret;
 
-		ret = adis16060_spi_read(indio_dev, &tval);
-		if (ret < 0)
-			goto out_unlock;
-
-		mutex_unlock(&indio_dev->mlock);
 		*val = tval;
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_OFFSET:
@@ -110,10 +100,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	}
 
 	return -EINVAL;
-
-out_unlock:
-	mutex_unlock(&indio_dev->mlock);
-	return ret;
 }
 
 static const struct iio_info adis16060_info = {
-- 
2.7.4


