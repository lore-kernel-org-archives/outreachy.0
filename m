X-GM-THRID: 6396598979256123392
X-Received: by 10.129.78.73 with SMTP id c70mr13156617ywb.152.1489324257692;
        Sun, 12 Mar 2017 06:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.39 with SMTP id 36ls12805512otg.33.gmail; Sun, 12 Mar
 2017 06:10:57 -0700 (PDT)
X-Received: by 10.129.95.133 with SMTP id t127mr14061752ywb.94.1489324257303;
        Sun, 12 Mar 2017 06:10:57 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si2708332pfx.8.2017.03.12.06.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so16065143pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 06:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FcLpHWCNSeUIb4WFAbq8IHFh7GKa8ePE9Nh615mKxfU=;
        b=OmfpCPDFFedDAgOmbVoQfHLJfXGdFNNTXhUsu2GaudtLxy/HHUKGUbJxemH3GV6pq5
         L6i2pocmTKfYNZtp2JDb7gAMRh8jHO81GzrMB5DKWB/0HjxYhpJ+X6zMkVwxOgdf30fI
         IH+pV2QYgQzU2t4DLOrugirU0SBHWytFNE2k0sXmiH/gFAbbKYXxaxcQwPs027b5ucuE
         Gg58OtcMSkY2rOTrITlI9fQGV8qxyG1NJFsfLS7cBrO86DVYUqztXUdb5eYepCwAHGHO
         Lb8DOmuvaRsvcV/YzXHlo39fEV6GIcwYyOE1n40HCTo5H3TZQZE/X5uPcrW80jdlRD2k
         VPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FcLpHWCNSeUIb4WFAbq8IHFh7GKa8ePE9Nh615mKxfU=;
        b=oDSITWMVFEVXy7ho65L/LivlwK+DSXbhzun5avFcJRtNUzkjQWwN2I/yH51DPJTO2P
         5cdY1kClRd13r0hxVVYc8mu8MQVGwGQjwbJc+LO2oaWn3h9DtQVKDZ7YgIriZC/k9SLM
         VwcUOkg6eW/x9vrIgYTtrLWAkQ5qCzpVOa+XGHbljdQKF/JdoS5Do/7w/sZ+OCTRhRiY
         mYsnMVUCV2XBBXhA/BWtc1U8EkYpKnT9TyUdzUzP6npBkZXNjGLhFAddEvU/jUHuZcUb
         zInUm00nPVuOkBJ4seKCywvvrudXS3OxpBRIohNvNuSjAgxQAIs3T0//y++Pi1wXGN6o
         vtdw==
X-Gm-Message-State: AMke39lDkf/io3AeaaJo9RMYDahR5ZMZve7rWQZhQLVSZ4cv+FottGo4BsoL1DVqzpfCxg==
X-Received: by 10.84.197.1 with SMTP id m1mr40795160pld.123.1489324256643;
        Sun, 12 Mar 2017 06:10:56 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m6sm28599801pgn.58.2017.03.12.06.10.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 06:10:55 -0700 (PDT)
Date: Sun, 12 Mar 2017 18:40:52 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: adis16060_core: Use private driver lock instead of
 mlock
Message-ID: <20170312131052.GA21816@singhal-Inspiron-5558>
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
 drivers/staging/iio/gyro/adis16060_core.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..90a3a18 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -29,11 +29,13 @@
  * @us_r:		actual spi_device to read back data
  * @buf:		transmit or receive buffer
  * @buf_lock:		mutex to protect tx and rx
+ * @lock:		protect sensor state
  **/
 struct adis16060_state {
 	struct spi_device		*us_w;
 	struct spi_device		*us_r;
 	struct mutex			buf_lock;
+	struct mutex			lock;	 /* protect sensor state */
 
 	u8 buf[3] ____cacheline_aligned;
 };
@@ -87,7 +89,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
 		/* Take the iio_dev status lock */
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->lock);
 		ret = adis16060_spi_write(indio_dev, chan->address);
 		if (ret < 0)
 			goto out_unlock;
@@ -96,7 +98,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 		if (ret < 0)
 			goto out_unlock;
 
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->lock);
 		*val = tval;
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_OFFSET:
@@ -112,7 +114,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	return -EINVAL;
 
 out_unlock:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 	return ret;
 }
 
-- 
2.7.4


