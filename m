X-GM-THRID: 6396604644937695232
X-Received: by 10.157.61.228 with SMTP id l91mr11717474otc.64.1489325576004;
        Sun, 12 Mar 2017 06:32:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls12163563otc.32.gmail; Sun, 12 Mar
 2017 06:32:55 -0700 (PDT)
X-Received: by 10.129.154.132 with SMTP id r126mr12764470ywg.46.1489325575641;
        Sun, 12 Mar 2017 06:32:55 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si2674688pfb.2.2017.03.12.06.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so16114939pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 06:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4jckLsd1ERL0+dYF27xDSao7Rz+lKRqhHpQQo2JwyPo=;
        b=qU9JADeCVT2tGHnOTHCrv4U+RZBHLUd5hKNAbUU8j0APryFjnXaezMC7htaMyeNEW2
         jxu2eI/h3hl+JCuakOjbqbOumEg6A1nd0Kq0t4bWBAl9xZZqM5oG5nUF9EAzX5TvHDzB
         qKrGjg6e9RcSofroRxjVxuCN/dEv4+0tYS+pDs6hmStRaYOzHDikEYysPR0iiakYdenl
         AHNVy9fq6ZIYykG+JBVUPiYvUIDzkd2Sn8QRIqP1l75/nlo2YF6EgjWgdft9+P1upzDt
         0sOz3d5revnCy+69gO6i9EymFqqPGHk0x8OsGU9yrM8jCj21X9BRtwDVVFfJQero+csN
         Fbeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4jckLsd1ERL0+dYF27xDSao7Rz+lKRqhHpQQo2JwyPo=;
        b=OKK7DWFsLwe1phaoqBwkafGLztiJz9yMh2/f1ejlo96/CaJnrNGgaPB6ZAxP0ApJj6
         dWhnV7gQ0IIbW7IdzChVsikgH12UNTZEwa4eZk2rrd/DCEz8W/qkDG0UC/dCfdkojJFM
         1FSPLeJr1UNNiV/LmEL2VTrJWwx8KnwGgtNVDfaAe6jNRsT68vQqOgIj14t3+48CnSyF
         WgipCPuOxpVWD91YWxGT4IMKjYIa4nRerJx/WArlMKiX18IiYbXhyj840m2kY20eLW3G
         vUJuJvJ35BdCIFohnSRbfmVLHwujoxU1UWBz8o36P+IL7uEGJaF5PjZM+fIUrZB6UIIB
         lhZw==
X-Gm-Message-State: AMke39lZCP/19wfRy6wIYbP+VNXilCCW/nFxsx/tdfkqr3iP2IQ45BNwzlFGWx1g4G4QXQ==
X-Received: by 10.84.228.208 with SMTP id y16mr40096047pli.168.1489325575396;
        Sun, 12 Mar 2017 06:32:55 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o125sm28465783pfb.109.2017.03.12.06.32.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 06:32:54 -0700 (PDT)
Date: Sun, 12 Mar 2017 19:02:50 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Pete Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: ade7753: replace mlock with driver private lock
Message-ID: <20170312133250.GA7772@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Fix some coding style issues related to white space also.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index dfd8b71..ca99d82 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -81,12 +81,14 @@
  * @tx:         transmit buffer
  * @rx:         receive buffer
  * @buf_lock:       mutex to protect tx and rx
+ * @lock:	protect sensor state
  **/
 struct ade7753_state {
-	    struct spi_device   *us;
-		    struct mutex        buf_lock;
-			    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
-				    u8          rx[ADE7753_MAX_RX];
+	struct spi_device   *us;
+	struct mutex        buf_lock;
+	struct mutex        lock;	/* protect sensor state */
+	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
+	u8          rx[ADE7753_MAX_RX];
 };
 
 static int ade7753_spi_write_reg_8(struct device *dev,
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
-- 
2.7.4


