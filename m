X-GM-THRID: 6399563139068723200
X-Received: by 10.157.11.109 with SMTP id p42mr13528056otd.14.1490014404343;
        Mon, 20 Mar 2017 05:53:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.21 with SMTP id o21ls4194834ota.12.gmail; Mon, 20 Mar
 2017 05:53:23 -0700 (PDT)
X-Received: by 10.237.43.36 with SMTP id p33mr3282865qtd.46.1490014403894;
        Mon, 20 Mar 2017 05:53:23 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 190si1272987pfv.3.2017.03.20.05.53.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 05:53:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so19913799pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 05:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dMwsZiiOLHq9wKHLxAFGPxIE9vY94rj6cRBRNRsjSFQ=;
        b=aTUQywFxMh0NpYSGTGfw1AwvGxAWkPATo5ZI7Jwp7Foej0EDsiy91vZoxTRKXgBNFF
         iCmhVhSYeGEUR2jli59cxAFSCRpyXTLvxgyC12UCganzYnXc7sAMobYK363ERufn97fG
         XiCKwU8eapFqxaW5SNhW4XpByLBtgvspKHtZxLG7Bg8UZU9LX6OqsfXsh+fE80jcUPjB
         7eUIRxppPqOk97VIr8Xf8e5IUXr9AarGdgXZ4H/W1rMz8Nm5T8EQBRTclrzsJnx8Gxmv
         AAKbTAGWaIiWdXeGy9LjA4DLzWi0Sh6t2to2k82H2OMoecgfi/mTVIz+lwr/jixpOgxf
         E8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dMwsZiiOLHq9wKHLxAFGPxIE9vY94rj6cRBRNRsjSFQ=;
        b=niTGbNRXsyw+dnwuzDfAzuCvPPmgX0IlDlR8azHw/kv9wP3Dx5VPMMD3DAHiEVlXc8
         sgKeI+KtDdNfjY/czHVpnNqPreAY4vDhERSpRE58m35twZH8vjDZWPYLQawjhULYSjJf
         nqfy8aN9vqvrD2xLwj7kKJzppnhVpYHzm8hAfm3hjRBl4IAOH9fdVAMWYquEUGTYsMo/
         kBlrHtl+KUhVkoFRu+D4PkaXg74fw5Gzvun/pVee1Sh/GsGtaVOYiVXe0Uhnkc/85dDc
         k6r2QXKs9ZuqciGyLwZBGar+JAo/mHqCBxSDyUsWc2dswwTzpfODeqvuqnwo1vV4yvnW
         qENQ==
X-Gm-Message-State: AFeK/H0CqfAFwrdE5vbqyNaV3MGRDYlPbHUeCTRPu5t1X2R2l9kq5DQUBgBzPep5aCnaaw==
X-Received: by 10.99.102.134 with SMTP id a128mr30386873pgc.215.1490014403594;
        Mon, 20 Mar 2017 05:53:23 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b128sm9477117pfg.54.2017.03.20.05.53.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 05:53:22 -0700 (PDT)
Date: Mon, 20 Mar 2017 18:23:20 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v7] staging: adis16060_core: Replace mlock with buf_lock and
 refactor code
Message-ID: <20170320125320.GA22516@singhal-Inspiron-5558>
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

The locks in adis16060_read_raw are dropped and now have a
single safe function adis16060_spi_write_than_read
with the locks inside it being called.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v7:
   -Change subject
   -Remove lock from read_raw instead of from 
    function adis16060_spi_write_than_read().
 
 drivers/staging/iio/gyro/adis16060_core.c | 38 +++++++++----------------------
 1 file changed, 11 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..193587c 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -40,25 +40,18 @@ struct adis16060_state {
 
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
 
@@ -69,8 +62,8 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
 	 */
 	if (!ret)
 		*val = ((st->buf[0] & 0x3) << 12) |
-			(st->buf[1] << 4) |
-			((st->buf[2] >> 4) & 0xF);
+			 (st->buf[1] << 4) |
+			 ((st->buf[2] >> 4) & 0xF);
 	mutex_unlock(&st->buf_lock);
 
 	return ret;
@@ -83,20 +76,15 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 {
 	u16 tval = 0;
 	int ret;
+	struct adis16060_state *st = iio_priv(indio_dev);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
-		/* Take the iio_dev status lock */
-		mutex_lock(&indio_dev->mlock);
-		ret = adis16060_spi_write(indio_dev, chan->address);
+		ret = adis16060_spi_write_than_read(indio_dev,
+						    chan->address, &tval);
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
@@ -110,10 +98,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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


