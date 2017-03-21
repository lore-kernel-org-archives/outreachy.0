X-GM-THRID: 6398485501253255168
X-Received: by 10.99.4.197 with SMTP id 188mr16790660pge.70.1490112957714;
        Tue, 21 Mar 2017 09:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.66.83 with SMTP id i80ls2940363itb.6.gmail; Tue, 21 Mar
 2017 09:15:57 -0700 (PDT)
X-Received: by 10.99.157.142 with SMTP id i136mr18555673pgd.78.1490112957069;
        Tue, 21 Mar 2017 09:15:57 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si3431696pfb.7.2017.03.21.09.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so18851430pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 09:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ImMlYJRR/Wf/G+eh9Oy9DbPgJq0f1FGfxcDuaEsMPAU=;
        b=ROClWXDcZ5Sbh1lZBP1aIDI/Akt9ZGZqkhwEw11bLUeOR+e+4wpKtwWW2y3NDTIPuc
         zlqdqC6hJnUzZ0YA6WEJrjEJPoHK8iiddY4G6qS7WX4kPAqsqHv8BvrD+d1gb+GJnwsX
         SvzCsAqwEiYTW5C9Wltp0ZpQvkjtbXoHG6Ztf0HUsgmP2JTcT/MhDwYanv4F02jYc3GV
         D3YxH+EzWPSWklcZGTJpBm2yW1QSk+AquH+OUTGMbyozkzWTOtB3Gq9Rda3jFKbt6zc9
         eGYBWXZ3+8pEZ0/B59qsG/ynKPafaxqSYqQl/9EWKbbhvXEDq5sxncQlcIP6fPp9sMUh
         1QfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ImMlYJRR/Wf/G+eh9Oy9DbPgJq0f1FGfxcDuaEsMPAU=;
        b=gX8G5xIooPjEHhEPRNUD4ikAQDSb00AEgulBSI59Fdz78YbLPw9mvd0PwA9+0YaHqG
         A2eG5UsuNMq8W2aD13+OkIdg0hmPce7VxMZVvjJtz/ojS3IyMh2onTioNCHuGnzQBMQC
         nN658oMJeV69Fv749Mte/+4L6hkSnLQ9k7n3StIbf3o7Z96rK1J6kdqkEVmi2pPDLvcv
         Pr+onmRpJK4yBcfau5esenvquy5Z7gM31JhTWIoWBBYQb+sGrNZLk/3ihga1VAivJoZc
         jfk50FJxrw0Nla9yrk2rGk+hS7Y8+hvPIOfnXxsVtaBZQSNQ8nrPwtb0uD2Y5WWDAfXg
         jgXw==
X-Gm-Message-State: AFeK/H0IT8LTJRTlnRQMdwrAa4XrS1TfHhBmnsPjRmLLFVB4JB0kAJbEQ6t+EfzeFyDHsQ==
X-Received: by 10.84.168.131 with SMTP id f3mr48806731plb.163.1490112956610;
        Tue, 21 Mar 2017 09:15:56 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([120.60.144.23])
        by smtp.gmail.com with ESMTPSA id 19sm40559276pfo.50.2017.03.21.09.15.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:15:56 -0700 (PDT)
Date: Tue, 21 Mar 2017 21:45:36 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2] staging: iio: meter: ade7758_core: Replace mlock with
 driver's private lock
Message-ID: <20170321161535.GA11483@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

iio_dev->mlock should be used by the IIO core only for protecting
device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
INDIO_BUFFER_* modes.
Replace mlock with a lock in the device's global data to protect
hardware state changes. Declare a new lock to avoid deadlocks due to
nested mutex locks.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Declared a new lock for raw reads/writes

 drivers/staging/iio/meter/ade7758.h      |  4 +++-
 drivers/staging/iio/meter/ade7758_core.c | 12 +++++++-----
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758.h b/drivers/staging/iio/meter/ade7758.h
index 6ae78d8..e45887e 100644
--- a/drivers/staging/iio/meter/ade7758.h
+++ b/drivers/staging/iio/meter/ade7758.h
@@ -112,13 +112,15 @@
  * @tx:			transmit buffer
  * @rx:			receive buffer
  * @buf_lock:		mutex to protect tx and rx
+ * @lock:		mutex to protect raw reads and writes
  **/
 struct ade7758_state {
 	struct spi_device	*us;
 	struct iio_trigger	*trig;
 	u8			*tx;
 	u8			*rx;
-	struct mutex		buf_lock;
+	struct mutex		buf_lock; /* protect buffer reads/writes */
+	struct mutex		lock;	/* protect raw reads/writes */
 	struct spi_transfer	ring_xfer[4];
 	struct spi_message	ring_msg;
 	/*
diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 99c89e6..0996d74 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -522,13 +522,14 @@ static int ade7758_read_raw(struct iio_dev *indio_dev,
 			    int *val2,
 			    long mask)
 {
+	struct ade7758_state *st = iio_priv(indio_dev);
 	int ret;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_SAMP_FREQ:
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->lock);
 		ret = ade7758_read_samp_freq(&indio_dev->dev, val);
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->lock);
 		return ret;
 	default:
 		return -EINVAL;
@@ -541,15 +542,16 @@ static int ade7758_write_raw(struct iio_dev *indio_dev,
 			     struct iio_chan_spec const *chan,
 			     int val, int val2, long mask)
 {
+	struct ade7758_state *st = iio_priv(indio_dev);
 	int ret;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		if (val2)
 			return -EINVAL;
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->buf_lock);
 		ret = ade7758_write_samp_freq(&indio_dev->dev, val);
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->buf_lock);
 		return ret;
 	default:
 		return -EINVAL;
@@ -855,7 +857,7 @@ static int ade7758_probe(struct spi_device *spi)
 	}
 	st->us = spi;
 	mutex_init(&st->buf_lock);
-
+	mutex_init(&st->lock);
 	indio_dev->name = spi->dev.driver->name;
 	indio_dev->dev.parent = &spi->dev;
 	indio_dev->info = &ade7758_info;
-- 
2.7.4


