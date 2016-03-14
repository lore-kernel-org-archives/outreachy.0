X-GM-THRID: 6261786973061513216
X-Received: by 10.182.22.48 with SMTP id a16mr17438395obf.29.1457935891991;
        Sun, 13 Mar 2016 23:11:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.200 with SMTP id d8ls734190igx.35.gmail; Sun, 13 Mar
 2016 23:11:31 -0700 (PDT)
X-Received: by 10.66.124.200 with SMTP id mk8mr16878752pab.27.1457935891518;
        Sun, 13 Mar 2016 23:11:31 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id tu5si2343489pab.2.2016.03.13.23.11.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 23:11:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id x3so35520287pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 23:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=h9M9731pc1MOC0/JGw+s3pvIPpPdXtoV+7i7OlExgMo=;
        b=qHztyBKHgfSZobcnHbAsvHUxEBUXkVjgwjZ0h1ZT8WD722Ba90qvgu0yR2au+u0HJy
         KL2gJj1t16H4qOexO3S5dPsow3NFi7Xo8sul/IVvLIi00/TuvwmWRpO6v1IZDtw2P1lZ
         JQSll93yvbgZTccLW8IyaiwdQVNs69EbZqsiuht/mvgJvNDTd0MsFIoF3b1yRG0ezUaT
         mFBucTul+F8rAGNAj+/Q0yye21R/M6YejicnFx39vpkkY/XxOkXYcObPzMd6JBDjJSvH
         lpJ4T8RLinMuxDI+79XmDF6H9Q8l/0oIIgunQmPx+8FoW8cCPs40G0zmgTjD9pA19vCp
         JUfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=h9M9731pc1MOC0/JGw+s3pvIPpPdXtoV+7i7OlExgMo=;
        b=I3dKPXitGFvtAw1u5R7AKPGK2LxpwvmNvFR2qTx9dg7MpAW9DTPrcv25dsM4R+M+18
         xELilDH4oJ7ZERgkrVXLw96fMVwowmV2EcHta7pfAkasdPfRIRb3hq+N+Pmrsdz770of
         JwT44ryR5liS9G7ZS7QMWsBcwe4uZdKctIy0tO2SJbDspWQ/Ip7jxNd2+UKQAuMfDOkx
         RmgUXjG17JtIjNxNj8F+ujIJvCBYVbtH2IMRZtqCi8eEib139jTr9MIo+aaEjdZPtI/P
         Sb8q5BuEef69zy0JZQUW4AC7/s3jqhDyfZRPI1u4c/qSyQEfyNGAbr8x7IWB4ComErTt
         UiZw==
X-Gm-Message-State: AD7BkJK3hYwXuw7+tKtt7uFqZ0ZTBZFCbqaM/v3BEyemRNNbAkvevrPbNbzanlZj58yrMg==
X-Received: by 10.98.7.135 with SMTP id 7mr16052149pfh.124.1457935891357;
        Sun, 13 Mar 2016 23:11:31 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id yh5sm29046300pab.13.2016.03.13.23.11.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 23:11:30 -0700 (PDT)
Date: Sun, 13 Mar 2016 23:11:30 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: meter: remove fixme comment on device remove
Message-ID: <20160314061120.GA6620@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This comment was in place in the original drafts of these drivers
when the remove function did a whole lot of work: flushed queues,
unregistered interrupts, uninitialized rings, unconfigured rings,
and a few kfree's.

The remove functions have since been reduced to unregistering and
stopping the device.  This is the inverse of what was done during
probe and is correct. Time to remove the comment.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 1 -
 drivers/staging/iio/meter/ade7754.c | 1 -
 drivers/staging/iio/meter/ade7759.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 6928710..b0bc99a 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -528,7 +528,6 @@ static int ade7753_probe(struct spi_device *spi)
 	return iio_device_register(indio_dev);
 }
 
-/* fixme, confirm ordering in this function */
 static int ade7753_remove(struct spi_device *spi)
 {
 	struct iio_dev *indio_dev = spi_get_drvdata(spi);
diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index f4188e1..fed1180 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -558,7 +558,6 @@ powerdown_on_error:
 	return ret;
 }
 
-/* fixme, confirm ordering in this function */
 static int ade7754_remove(struct spi_device *spi)
 {
 	struct iio_dev *indio_dev = spi_get_drvdata(spi);
diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 684e612..c14892d 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -476,7 +476,6 @@ static int ade7759_probe(struct spi_device *spi)
 	return iio_device_register(indio_dev);
 }
 
-/* fixme, confirm ordering in this function */
 static int ade7759_remove(struct spi_device *spi)
 {
 	struct iio_dev *indio_dev = spi_get_drvdata(spi);
-- 
2.1.4


