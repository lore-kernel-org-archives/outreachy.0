X-GM-THRID: 6400621622284255232
X-Received: by 10.157.19.4 with SMTP id f4mr444946ote.61.1490260852282;
        Thu, 23 Mar 2017 02:20:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.142 with SMTP id a136ls1330510ioa.12.gmail; Thu, 23 Mar
 2017 02:20:51 -0700 (PDT)
X-Received: by 10.36.2.66 with SMTP id 63mr394592itu.35.1490260851471;
        Thu, 23 Mar 2017 02:20:51 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g82si869161pfb.5.2017.03.23.02.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 02:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so30888512pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 02:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qJp1Ya3FxDcTfPYo7A3knJWm7Z8Hyu47IXU36JMIi8I=;
        b=AdpwZIq/KHOpTEKsn8RcLD8h5vIcXPfkZlDFpLnd2IYPDqsyOic9oMz+U0vipFl/uP
         /qQdXwbPhy30CR3PPJPjjS9DtZv0T17pqYhBNDOglFjegr2S/wfPkEVeG4lr2c4eZHxM
         L+/trVk/d9mW4NUx3OXpYmrGzn8kk2mM/0FhYhz7NKk24pxlfiSjKzZFCRMwGU5TAC5s
         V3FrBg3gfNC+3A0ord2Cslq/0+zUKTjNIDS6pGcwGV/NE9VE0sncqPJSTuVqIBpsg6Qb
         YgqLSmo7MsfW636qakGv091bujhxGteCCkYcBguB3VF2BRwtTGtCGIDolr/E2U+HxeAJ
         S7ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qJp1Ya3FxDcTfPYo7A3knJWm7Z8Hyu47IXU36JMIi8I=;
        b=udLv3CprR6S66HzDP77azaiem3t5tLzW9IgjgYg1Ogy+6WdBS0JjV0kphDlKim2KXN
         ZraLnfrrfAHZiE0gOEcpKx9quocIqfNJgAkiRavbkEnAIVPB66wZY5sPGCfjYtJEv2qD
         glN6OowryOEsqc2eEqmk0eyxSWE+qOaqEr2rKTwcPgIqy6elkeuV/wg5/p5RcdDGTQmX
         ZwBiz1/2lCDl4EVE0fj1IuDTqPuWGjJJME/y9BaqHjJ3QAI3FcTRoz5jbdvjvQMuulPm
         dTvm9MVYw8Z5Y63YJKI9N5Qu1tme7ZUIKFRv5o713WaAnvXSwLGxQSJoNyeBJjfxdGqS
         1xjw==
X-Gm-Message-State: AFeK/H1QYSla8V6ZWQwAFHdn5B66bYTiIg+Wvh92nL7EayGCGKq5x8ft5p7VMVBeA4NZcw==
X-Received: by 10.98.223.76 with SMTP id u73mr1788320pfg.147.1490260850927;
        Thu, 23 Mar 2017 02:20:50 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v11sm8844209pfk.32.2017.03.23.02.20.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Mar 2017 02:20:50 -0700 (PDT)
Date: Thu, 23 Mar 2017 14:50:48 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v9] staging: iio: adis16060: Remove iio_dev mlock and
 refactor code
Message-ID: <20170323092048.GA25470@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state changes.

In the driver, buf_lock protects both the adis16060_spi_write() and
adis16060_spi_read() functions and both are always called in pair.
First write, then read. Refactor the code to have one single function
adis16060_spi_write_then_read() protected by the buf_lock. This removes
the need for additional locking via mlock, so this locking is removed.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v9:
   -Change the name of function from adis16060_spi_write_than_read()
    to adis16060_spi_write_then_read(). change "than" to "then" as
    its time depended.
   -Add mutex_unlock
 
 drivers/staging/iio/gyro/adis16060_core.c | 35 +++++++++----------------------
 1 file changed, 10 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..9675245 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -40,25 +40,20 @@ struct adis16060_state {
 
 static struct iio_dev *adis16060_iio_dev;
 
-static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
+static int adis16060_spi_write_then_read(struct iio_dev *indio_dev,
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
+	if (ret < 0) {
+		mutex_unlock(&st->buf_lock);
+		return ret;
+	}
 
 	ret = spi_read(st->us_r, st->buf, 3);
 
@@ -86,17 +81,11 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
-		/* Take the iio_dev status lock */
-		mutex_lock(&indio_dev->mlock);
-		ret = adis16060_spi_write(indio_dev, chan->address);
+		ret = adis16060_spi_write_then_read(indio_dev,
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
@@ -110,10 +99,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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


