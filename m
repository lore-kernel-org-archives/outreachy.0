X-GM-THRID: 6400014269629333504
X-Received: by 10.129.157.75 with SMTP id u72mr1222613ywg.11.1490294125494;
        Thu, 23 Mar 2017 11:35:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.48.4 with SMTP id w4ls1615048iow.34.gmail; Thu, 23 Mar
 2017 11:35:24 -0700 (PDT)
X-Received: by 10.99.107.71 with SMTP id g68mr1259689pgc.26.1490294124626;
        Thu, 23 Mar 2017 11:35:24 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 190si1435688pfv.3.2017.03.23.11.35.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 11:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so29662059pgh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 11:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=T4HSmJ3di4I26zYu4sEe0nTn8Rkc2RIJ4ge3xxqFK+s=;
        b=T4I+MlW5LQNgF3rWtSx2Omq/Zd6bDalkmfSsQRb1kwfGVSPe5TRfIq20lncsbX3Prj
         VbHpFJnis64BTmEgnF0SsGz06gWg7P3HWZ3/QJxXrcJnGPZspk7EQAXV+7BG0t3EYUZB
         of3zRjPwrWfO1dw262VcQ42gtcYN6Q+6uCS3DDEEx2UBMj1TsR3uj9udu0U4JLHOCiVg
         yW++OdRvkQDYEeZDGXFkcnkQ+n4f2U6o3MS1tDIHrnF0ocgMPo2cJzf8L/iCcUc4iDfF
         6jC46tpmxAaa3OynrJKrJS4bkIsMzVneBgdR2Bx7kOs141R/6b1mXH8GfAPp2rF1HBXh
         6pXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=T4HSmJ3di4I26zYu4sEe0nTn8Rkc2RIJ4ge3xxqFK+s=;
        b=ufvGEUMGdHvnW2ZaCYKTCRLSP/95FWUuVbEgsm6lgSdqij5p06ll6F0y63BAV9A7So
         4c61wYYPDhK8Bss+U7yF8STz3UFXHGrymsqNPXSSCCNxBZZVILMsRL7sj0xU+FbH4hOR
         cFuDgQkHnRlaLreHGR+h22NnlrgazgZ/YKIPwQUW+4CN5oFJVws/T3KjEaWiPE1YvbwF
         sgSsLVenMOUO7fqsK2Jg3/XznIrk7UUA/JCE6dcFvGZGq396/EU+mqkAQcFpPiL7s88u
         Q/Po32+DP+vBjajxAr/9gWlEtzKdnHu1WLLCTn5KjIAjeIGOEBRko775ZPbGjkz2vIZR
         XogA==
X-Gm-Message-State: AFeK/H1NJv17MabMb7bRZFJcGpNvuZtfatns3FrynJIlidV4E9QgfUd1GdnbCzhjWZWHzA==
X-Received: by 10.98.65.211 with SMTP id g80mr4585346pfd.187.1490294124244;
        Thu, 23 Mar 2017 11:35:24 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 187sm11691617pff.17.2017.03.23.11.35.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Mar 2017 11:35:23 -0700 (PDT)
Date: Fri, 24 Mar 2017 00:05:20 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: iio: ade7753: Replace mlock with driver private
 lock
Message-ID: <20170323183520.GA9871@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v4:
   -Add mutex_init

 drivers/staging/iio/meter/ade7753.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index b71fbd3..30aebaf 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -80,11 +80,13 @@
  * @us:         actual spi_device
  * @tx:         transmit buffer
  * @rx:         receive buffer
+ * @lock:       protect sensor state
  * @buf_lock:       mutex to protect tx and rx
  **/
 struct ade7753_state {
 	struct spi_device   *us;
 	struct mutex        buf_lock;
+	struct mutex	    lock;  /* protect sensor state */
 	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
 	u8          rx[ADE7753_MAX_RX];
 };
@@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 
 	t = 27900 / val;
 	if (t > 0)
@@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 	return ret ? ret : len;
 }
@@ -581,6 +583,7 @@ static int ade7753_probe(struct spi_device *spi)
 	st = iio_priv(indio_dev);
 	st->us = spi;
 	mutex_init(&st->buf_lock);
+	mutex_init(&st->lock);
 
 	indio_dev->name = spi->dev.driver->name;
 	indio_dev->dev.parent = &spi->dev;
-- 
2.7.4


