X-GM-THRID: 6398911459091283968
X-Received: by 10.99.188.2 with SMTP id q2mr13502987pge.36.1489927844045;
        Sun, 19 Mar 2017 05:50:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.237 with SMTP id u100ls5460483ota.49.gmail; Sun, 19 Mar
 2017 05:50:43 -0700 (PDT)
X-Received: by 10.157.51.10 with SMTP id f10mr11142245otc.84.1489927843635;
        Sun, 19 Mar 2017 05:50:43 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si2208512pfb.0.2017.03.19.05.50.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:50:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so7877126pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5ov5pjLpMjLTB0U6M2SJQRc7jGLiYi5277I8ZVp19Bk=;
        b=EI5YXX41GDOYc1t98pKfodf7R2Et+BxvgnjbzFJheWy5OpPjZzGR5rxCUcWnxrke03
         qpuXDtTj9o9aPhoKLcmogOIRuJMrH2KEWrKJGBViXI4FGWt0xSjxkbA8CRPdOq5JAg3u
         vL7hBjtnecc+MOAFxw3lNMWT+lChVAOSGB4qU4xn1wTt4nQyOQCcE1+MAZUP8QOz6zAe
         VpdTxizZoGhQ/U8K9cJM+F+/SNRO6r2Sla9Vfp7rFCa6J2ppDgm/1JWY6QiUEqHUuiwG
         EgPN8rLFiAbbGdmAbHfpLx0FiUX1OGMMpGxEFcS/WJRDgt14g0jWqk84SWgNqOyQyqke
         7JGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5ov5pjLpMjLTB0U6M2SJQRc7jGLiYi5277I8ZVp19Bk=;
        b=cFXqfHZ7e+EzrkjMW7WtRqntE/hG/93QE+syKtpQayDMFKJe6Ti3UtnbslEJON10gC
         ClPzsEtX0YthVd70Qjerb6nZBadrh6rkslO8ui+LWEZfR/4LlxsqFe5iYsyXNxg1Tx2q
         nwdczY/rsVefPxct1Them4M0M1/+2K+o0egryK5qUQGlXhKHQSD8CHs1xEAUc9D6caaP
         GzzsOv5pp9rvke3rOotRN77AlJvu76b7j8OU62OJiRdf5fevLt9GRLFh/eNkDsP0JUfC
         +zglpIpUzzJWBp6iBQidCQovEVbdD/WRkhD1KiVqHkxKV6m4jFd6w+4cTpszHCvcOTye
         CFSQ==
X-Gm-Message-State: AFeK/H35pvBO5vHGY7LBqJkxJAgmF+8IQHXwjWG+axxvuvbvL+gTF/my+NgqY5XPxIA4Tg==
X-Received: by 10.84.236.2 with SMTP id q2mr8243729plk.157.1489927843195;
        Sun, 19 Mar 2017 05:50:43 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n29sm24507846pfi.101.2017.03.19.05.50.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:50:42 -0700 (PDT)
Date: Sun, 19 Mar 2017 18:20:40 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging: Use buf_lock instead of mlock and Refactor code
Message-ID: <20170319125039.GA23385@singhal-Inspiron-5558>
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

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v5:
   -Rename val in adis16060_spi_write_than_read() to conf.
   -Rename val2 in adis16060_spi_write_than_read() to val.
   -Corrected Checkpatch issues.
   -Removed goto from adis16060_read_raw().
    

 drivers/staging/iio/gyro/adis16060_core.c | 42 ++++++++++++-------------------
 1 file changed, 16 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..0f12492 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -40,25 +40,20 @@ struct adis16060_state {
 
 static struct iio_dev *adis16060_iio_dev;
 
-static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
+static int adis16060_spi_write_than_read(struct iio_dev *indio_dev,
+					 u8 conf, u16 *val)
 {
 	int ret;
 	struct adis16060_state *st = iio_priv(indio_dev);
 
 	mutex_lock(&st->buf_lock);
-	st->buf[2] = val; /* The last 8 bits clocked in are latched */
+	st->buf[2] = conf; /* The last 8 bits clocked in are latched */
 	ret = spi_write(st->us_w, st->buf, 3);
-	mutex_unlock(&st->buf_lock);
 
-	return ret;
-}
-
-static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
-{
-	int ret;
-	struct adis16060_state *st = iio_priv(indio_dev);
-
-	mutex_lock(&st->buf_lock);
+	if (ret < 0) {
+		mutex_unlock(&st->buf_lock);
+		return ret;
+	}
 
 	ret = spi_read(st->us_r, st->buf, 3);
 
@@ -69,8 +64,8 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
 	 */
 	if (!ret)
 		*val = ((st->buf[0] & 0x3) << 12) |
-			(st->buf[1] << 4) |
-			((st->buf[2] >> 4) & 0xF);
+			 (st->buf[1] << 4) |
+			 ((st->buf[2] >> 4) & 0xF);
 	mutex_unlock(&st->buf_lock);
 
 	return ret;
@@ -83,20 +78,19 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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
 		if (ret < 0)
-			goto out_unlock;
+			mutex_unlock(&st->buf_lock);
+			return ret;
 
-		ret = adis16060_spi_read(indio_dev, &tval);
-		if (ret < 0)
-			goto out_unlock;
-
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->buf_lock);
 		*val = tval;
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_OFFSET:
@@ -110,10 +104,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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


