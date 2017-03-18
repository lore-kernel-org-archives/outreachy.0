X-GM-THRID: 6398911459091283968
X-Received: by 10.99.56.80 with SMTP id h16mr461905pgn.83.1489862673489;
        Sat, 18 Mar 2017 11:44:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls10074623oto.31.gmail; Sat, 18 Mar
 2017 11:44:33 -0700 (PDT)
X-Received: by 10.157.68.229 with SMTP id p37mr8463906otg.29.1489862673021;
        Sat, 18 Mar 2017 11:44:33 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si1881310pfz.1.2017.03.18.11.44.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 11:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so14167626pge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 11:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yIxMVdCY9rJFWWdc10jqSaQ9w2EoDqYyLRyhgbtGykY=;
        b=EWlqP2y9R+GWOkgLRnnZV1hVLHNZY1SKitL0aHLFRensNyLzw7z0RToQ+GrdhY7IPr
         IJFXBEDU/mZslPEX/iwgBatUpFc5OiHUVWuJB337qdX+yRvyIaejWR+DrrQV9g0XTTxw
         ZhZQc1FFuQCzCcY1/+tJ5PRZgbF6gopLF+eI7qvNnBArqzMSv6v1vsRnCU/nsNvct/tx
         nplnC/J/22WruezrXIyhZMweRr90IPLxoxfKr1w/QfQl4AWmwK3rDcVuZvrNsrszPEuz
         HmI4ow3z+AVnCRY26SwUW1gw9g33+A8TOgQsOIQEmp/mFIb9MP84Rf8q2QuvFppnnBeC
         sRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yIxMVdCY9rJFWWdc10jqSaQ9w2EoDqYyLRyhgbtGykY=;
        b=jvsMZQNbfrIjNIXQrDrCSlRorn1nHRy78PIq30Pi57oYP5aeBYnPztxUKrW3XwdWHd
         tJcFaMWRxYT+cKffUx1zh3PwICRcMNrKAdLMq+hroLVz8veG0BtRrkookGB7S3WTYAyy
         ImWUd4QWbbQMm79+sqO+42K/A6VSsCZKbMSwnIflTlOYw9uKvbDvwJmDRifeJODlp41j
         8C7dsE/xWBiZPFlHtijSk1Ggh9bjx0ahpcjuhgAVbnDZR8r9UGAJfAS3wuERgVbtn2lb
         h6PxXMaPakUIypVG/E37bhKEzz9f8ctmNWIAn/GLZgVP+QhyFJzVp1mCdn2qFXceJIrT
         h1KA==
X-Gm-Message-State: AFeK/H1BWi1J/h2U0dtaKpDwXeOL0E2tAYm/Ginunh7wwzKlKLP2Zj2fTAn4EzgMjo6Rtw==
X-Received: by 10.98.23.202 with SMTP id 193mr23591983pfx.141.1489862672749;
        Sat, 18 Mar 2017 11:44:32 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x63sm24111977pgb.30.2017.03.18.11.44.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 11:44:32 -0700 (PDT)
Date: Sun, 19 Mar 2017 00:14:29 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: Use buf_lock instead of mlock and Refactor code
Message-ID: <20170318184428.GA12858@singhal-Inspiron-5558>
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

 v4:
   -Refactored code 
   -change commit subject
   -change commit message

 drivers/staging/iio/gyro/adis16060_core.c | 37 ++++++++++++-------------------
 1 file changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..39ddd55 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -40,7 +40,7 @@ struct adis16060_state {
 
 static struct iio_dev *adis16060_iio_dev;
 
-static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
+static int adis16060_spi_write_than_read(struct iio_dev *indio_dev, u8 val, u16 *val2)
 {
 	int ret;
 	struct adis16060_state *st = iio_priv(indio_dev);
@@ -48,17 +48,11 @@ static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
 	mutex_lock(&st->buf_lock);
 	st->buf[2] = val; /* The last 8 bits clocked in are latched */
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
 
@@ -67,10 +61,10 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
 	 * starts to place data MSB first on the DOUT line at
 	 * the 6th falling edge of SCLK
 	 */
-	if (!ret)
-		*val = ((st->buf[0] & 0x3) << 12) |
-			(st->buf[1] << 4) |
-			((st->buf[2] >> 4) & 0xF);
+        if (!ret)
+		*val2 = ((st->buf[0] & 0x3) << 12) |
+			 (st->buf[1] << 4) |
+			 ((st->buf[2] >> 4) & 0xF);
 	mutex_unlock(&st->buf_lock);
 
 	return ret;
@@ -83,20 +77,17 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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
+		ret = adis16060_spi_write_than_read(indio_dev, chan->address, &tval);
 		if (ret < 0)
 			goto out_unlock;
 
-		ret = adis16060_spi_read(indio_dev, &tval);
-		if (ret < 0)
-			goto out_unlock;
-
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->buf_lock);
 		*val = tval;
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_OFFSET:
@@ -112,7 +103,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	return -EINVAL;
 
 out_unlock:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 	return ret;
 }
 
-- 
2.7.4


