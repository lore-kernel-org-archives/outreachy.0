X-GM-THRID: 6400014269629333504
X-Received: by 10.157.31.42 with SMTP id x39mr16843493otd.111.1490119447503;
        Tue, 21 Mar 2017 11:04:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls636351ota.27.gmail; Tue, 21 Mar
 2017 11:04:07 -0700 (PDT)
X-Received: by 10.129.34.10 with SMTP id i10mr18637971ywi.58.1490119447093;
        Tue, 21 Mar 2017 11:04:07 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si3647652pfx.8.2017.03.21.11.04.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 11:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so26500442pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 11:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AhJ5Lb2oIHQIz0B7AXHybKZ49Gjr7xjTrNePZJIV2go=;
        b=k4ZbtG+2DAQRMSSRGaFKpBBzMpdYa9cEXtv+YDlV5MMN7WTjhybx4Tn7X8tCL7YmLy
         b1RUKQq6KAz1jV8Xad/qZfOINOiHmDYL+R2rkRNwP0Kba010NZfTMFBddl3TvtJB7HhL
         esQHEuZOtqB54PLjTepswjWlIWleatUtVSWaLrV6J86FdC1aoc6WeO7NPVanpBcpyRVq
         QzYrTYVVCJs+hUa5WTyCP+x2cDUHRy44acj6LQzFSvXSYIlDy59d1oxKiQbYDuH4PvI3
         WAE87WAbTIoMTTl/xJ7gmFxatogLEO1M3lOWzd3254G9BG+3KsquMjxJNJoK0LhoWOZb
         zkZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AhJ5Lb2oIHQIz0B7AXHybKZ49Gjr7xjTrNePZJIV2go=;
        b=bk2L2nAum1+jXHYYmLhL820qWYDd1nk4wY8F+zCiySm4AV9ufQKm8m4wGjBrnRASAz
         FHpeAdtF/NjdQ8xTvGV4UXr5YE2v+m8OYGn/G7z/QmMWKpxXJKC2x/6DMICTgAp3rtJB
         cV6RMp7VrOrEq1HnIHMEne/97hh4Tc6E3ct1bRCccGENFar9PVtF7Y6Z24z+k9B8yQZB
         feY6zViMxATMUSokqyxWDqI/5tSjJEzYro2LMJ7dPQkwBdNZUICvX6EsHLt2MjVeEjDP
         wMksmPfIL331tzrK5F30GN2VrUTx5l4Np7RmlZehrUQC/CVMn8udYVuEjvQE7X19Bsc6
         0yeA==
X-Gm-Message-State: AFeK/H0qsl10/ey+o3HhhnilSxnQirt8nHwgzDcxlhuCnYdWp/djprHs5lBKCirkbrFJmw==
X-Received: by 10.99.55.85 with SMTP id g21mr30035608pgn.62.1490119446791;
        Tue, 21 Mar 2017 11:04:06 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p6sm41251545pgn.40.2017.03.21.11.04.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 11:04:06 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: iio: ade7753: Replace mlock with driver private lock
Date: Tue, 21 Mar 2017 23:33:56 +0530
Message-Id: <1490119436-20042-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>
References: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index b71fbd3..9674e05 100644
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
-- 
2.7.4


