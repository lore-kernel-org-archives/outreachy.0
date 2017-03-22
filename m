X-GM-THRID: 6400358143313838080
X-Received: by 10.129.147.198 with SMTP id k189mr19880680ywg.76.1490199506711;
        Wed, 22 Mar 2017 09:18:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls2697423ott.28.gmail; Wed, 22 Mar
 2017 09:18:26 -0700 (PDT)
X-Received: by 10.157.68.229 with SMTP id p37mr16589354otg.29.1490199506294;
        Wed, 22 Mar 2017 09:18:26 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si444362pfz.1.2017.03.22.09.18.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 09:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so23295296pgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 09:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4X2glnbhHCmRFsrBc8IQCiLwAPp6gqZlkOs4QGFehKE=;
        b=pAXQ40klY/NCR41y7Lh1y08GDUehOtzEzv4U2D6qg71ZiZHsW57ZUJEu1Zyylzmkul
         /PYpXLDmCty02qELzs0+4dgn0nJLaf4q0Nm3OZktp2Q7f0Przboc4q+ctgiZWu1Xu7JJ
         DcqRt6E+tqaqd+JuqNK9ChpTdOfk1fn3IMOEs3QH2/uOMRO0YSA0F/4pXHlruCmd4rN6
         B6NSf4mv+A3SkbeSi2E8NcCs2M4nXGJwinfmFkwUqOubFBaVW1LtFizTS5fwC8gehDUf
         D+UhIa27eXNi4iRXZegBvTj20HQkSfUp/Kq5OY8Vvmgw86bmgcL4zV8wWuPP38EPvG6O
         8ytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4X2glnbhHCmRFsrBc8IQCiLwAPp6gqZlkOs4QGFehKE=;
        b=BBlyhgiAbmbdx7Po+l9oZtrpfQ0bHxRKxLe4M7CQh1mVMRxDl9b4v+IduCBOnbMp8Y
         nXJwrKqkFPTRuI7L4ETnf2YKOPMQB7LWD1n50l8QNYEJAxnkaNvlRj40uPSschEFrYVo
         QrMuYq/R6bCahP0a4T+SEVVvD8TArr56IzvRzZYHXunfa9ufJ7McZJtDmHGj8mCq48y3
         vHRIqhCxktsHhngXFL6GEHs1cGpBZVeyTDrSF3Cgh7FFW2BulxLWnoKUH1T68K+vXkIe
         OD6CbvPHwR+WJ6sundAUlm9AJTgQqvEZ6KuN84Cf0eregwgzdk5OanADo53LDXhVHvVs
         wm+Q==
X-Gm-Message-State: AFeK/H3STbshW6565c4Tg5EM8vF8zsJfDGk1r9Zu+XvHQPTDl9MHybrBgj/5Ut3/57Mbaw==
X-Received: by 10.99.45.2 with SMTP id t2mr45295305pgt.209.1490199505998;
        Wed, 22 Mar 2017 09:18:25 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s27sm691360pfk.39.2017.03.22.09.18.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Mar 2017 09:18:25 -0700 (PDT)
Date: Wed, 22 Mar 2017 21:50:43 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v8] staging: adis16060: Remove iio_dev mlock and refactor code
Message-ID: <20170322162042.GA7955@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state changes.

In the driver, buf_lock protects both the adis16060_spi_write() and
adis16060_spi_read() functions and both are always called in
pair. First write, then read. Refactor the code to have
one single function adis16060_spi_write_than_read() and remove
the use of mlock as adis16060_read_raw() does not require an
iio_dev->mlock for reads.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v8:
   -change subject
   -change commit message
 v7:
   -Change subject
   -Remove lock from read_raw instead from
    function adis16060_spi_write_than_read().
 v6:
   -Change commit message
   -Remove nested lock
 v5:
   -Rename val in adis16060_spi_write_than_read() to conf.
   -Rename val2 in adis16060_spi_write_than_read() to val.
   -Corrected Checkpatch issues.
   -Removed goto from adis16060_read_raw().
 v4:
   -Refactored code
   -change commit subject
   -change commit message
 v3:
   -Removed new lock to reuse the existing lock
 v2:
   -Fixed compilation error

 drivers/staging/iio/gyro/adis16060_core.c | 33 ++++++++-----------------------
 1 file changed, 8 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..e96fce5 100644
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
 
@@ -86,17 +79,11 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 
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
@@ -110,10 +97,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
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


