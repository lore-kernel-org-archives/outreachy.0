X-GM-THRID: 6396578971833597952
X-Received: by 10.99.127.86 with SMTP id p22mr13945582pgn.107.1489319599727;
        Sun, 12 Mar 2017 04:53:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.85.151 with SMTP id e145ls1008257itb.4.gmail; Sun, 12 Mar
 2017 04:53:19 -0700 (PDT)
X-Received: by 10.99.185.1 with SMTP id z1mr13597093pge.51.1489319599008;
        Sun, 12 Mar 2017 04:53:19 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2558623pfz.1.2017.03.12.04.53.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 04:53:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so15951053pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 04:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1guhJtdlp851cTywLe6doC8lXdQN3E2lRsqzBm8u3bU=;
        b=PShLJ9lGrEufTJc4H/bIrTiJjmD7o7mR+W1Hv8OxXbdLf98N9cWkZx4yn7/QbRMP5o
         3C0hMPBJu4yiDI+FMRiqiCEfsqIjDh+vgUGYFpzEY0RqC0FTGl+zd98FsqLXSCUBg/1F
         SAMxTHsa0JRgUn6Hc39vBbC8vkl9iG6qnqI0hrtROB6//Wowod7tSwwTlvIfxv8YApwv
         yYcVjEKsOA6RlxNrc073KrSJZ9/c8V6OM2JBev06oop8hTV8RmO7slnAFIgYz0cKQL80
         1NXVuoM7b5osNRLfnlOu+ADxz82sDMc3VjeaaxH04X/b3kENVbn8LC2DAkncrt8EF1br
         vt6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1guhJtdlp851cTywLe6doC8lXdQN3E2lRsqzBm8u3bU=;
        b=NLPfeY5mSJC32tTLxA2YGlnGoj7VUjEQaQtjjOkdSWho8UcCvFk7KwXs6DjrLuYCsb
         EnELxVvSBp09HFo9Owljx3sD1YvomgKcg+xdZqWYXKsTqGNAhgtPnmKUGWuGiJh931w2
         upvf2AsCizE1ry0EIgdVz/re8r9hQiUZuiMlqvCKnEMZ+IzMF3GgsIqWniTlTYDKOdX5
         kHaqOXEFD0Xsct8kcNk+miz992uebF60Q/iX/cTAe8dXuAEwnI4hDtS20SQyzYSc/2JF
         S3ghcLeAzF6twtBKJtLIjP6cOY4UNGj0mmqnMroIihinsbnke37qctNIM4HbZOPqiUmW
         OzHw==
X-Gm-Message-State: AMke39kNLij9BcrtzmXHH/WhpmyIu/UR8a1xPQ23qW5poPL4SNVgPlp7eeg03MNhNCOipQ==
X-Received: by 10.84.131.197 with SMTP id d63mr40167149pld.103.1489319598795;
        Sun, 12 Mar 2017 04:53:18 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.185.143])
        by smtp.gmail.com with ESMTPSA id 73sm28183437pfh.56.2017.03.12.04.52.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 04:53:17 -0700 (PDT)
Date: Sun, 12 Mar 2017 17:21:25 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: ad9834: Use private driver lock instead of
 mlock
Message-ID: <20170312115013.GA31878@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

iio_dev->mlock should be used by the IIO core only for protecting
device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
INDIO_BUFFER_* modes.
Replace mlock with a lock in the device's global data to protect hardware
state changes.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index f92ff7f..4259474 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -63,6 +63,7 @@
  * @msg:		default spi message
  * @freq_xfer:		tuning word spi transfer
  * @freq_msg:		tuning word spi message
+ * @lock:		protect sensor state
  * @data:		spi transmit buffer
  * @freq_data:		tuning word spi transmit buffer
  */
@@ -77,6 +78,7 @@ struct ad9834_state {
 	struct spi_message		msg;
 	struct spi_transfer		freq_xfer[2];
 	struct spi_message		freq_msg;
+	struct mutex			lock;	/* protect sensor state */
 
 	/*
 	 * DMA (thus cache coherency maintenance) requires the
@@ -149,7 +151,7 @@ static ssize_t ad9834_write(struct device *dev,
 	if (ret)
 		goto error_ret;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 	switch ((u32)this_attr->address) {
 	case AD9834_REG_FREQ0:
 	case AD9834_REG_FREQ1:
@@ -207,7 +209,7 @@ static ssize_t ad9834_write(struct device *dev,
 	default:
 		ret = -ENODEV;
 	}
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 error_ret:
 	return ret ? ret : len;
@@ -224,7 +226,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
 	int ret = 0;
 	bool is_ad9833_7 = (st->devid == ID_AD9833) || (st->devid == ID_AD9837);
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 
 	switch ((u32)this_attr->address) {
 	case 0:
@@ -267,7 +269,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
 		st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
 		ret = spi_sync(st->spi, &st->msg);
 	}
-	mutex_unlock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 
 	return ret ? ret : len;
 }
-- 
2.7.4


