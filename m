X-GM-THRID: 6399943776789331968
X-Received: by 10.157.2.209 with SMTP id 75mr8971405otl.72.1490103057228;
        Tue, 21 Mar 2017 06:30:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.216 with SMTP id p85ls4358094ioi.40.gmail; Tue, 21 Mar
 2017 06:30:56 -0700 (PDT)
X-Received: by 10.99.192.17 with SMTP id h17mr18276328pgg.56.1490103056454;
        Tue, 21 Mar 2017 06:30:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si3380732pfb.2.2017.03.21.06.30.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so25189796pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KyRKimxQzIMq2e0B+p5/071Nu0ArYHPwz7CpvBQT2Aw=;
        b=Otzmlc6ThtcjsY33kZ7VY61+zKyWkuOjJ1SGA+EtQI4e+KF636NzyEgxEEwAFslz+s
         W3a00n3eQPzUlc4nQS6s9LQTT8YF0occRXct2qR1WGMB2kraaSY1utO/EFPW23X2wYLn
         rLrx5X4VPwVUCBqwHwqO3dRHDcvPoYkjfTZmSvqPqOq2+Fhvd1dU2vwdvZCnyltTRaVc
         KPaMcOFmpJNYcZ9HSiyQUr6mGfzSVYYBoqXuvHlLOYHFuCgd2GU+3x1ScRPaud5PKtwl
         3yccoA+cvK0AIigZI6mxOVu+obvQkaWT/jLU9/NRjep25gWM7XyN6ToxOfe6d9iWIFPy
         Xo8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KyRKimxQzIMq2e0B+p5/071Nu0ArYHPwz7CpvBQT2Aw=;
        b=JKXvRfqPp5UxI904u4t8o14FSp0mmB3cXmG5UIfCZrzDT9f5s3ma+iFevn1bopGhy7
         bLhRNCRV6TFLD+eDqgi7vDK7Z4l0STaYacTyvTxnexMCdhkYh2GnKLGe1lsILcUhIONI
         sSh8lRW7PqiUy0YN8f96knJTqQgyoOJ2+qmhVaseowBvxDVCry1irH+KmZbECeTa0tkD
         7bCO0eom9re3GNIWAewLj1AOKe3ySs2bq7Gdo5esCH0rGZkpomARzVALE9hIbtmNgd02
         I4vC4wH6dWwo4E160aYB5dWnWGIbpiS3oveGF/VA9BVqFXWylnx8QxEV/BUQCXIhGj1Z
         dpdQ==
X-Gm-Message-State: AFeK/H2vqthoZPcxrJRrmDOs+S8v7e79cwmSKjyajZjN7c9O1pP6aMSVu/N74M18vylO0Q==
X-Received: by 10.99.202.73 with SMTP id o9mr38476719pgi.173.1490103056202;
        Tue, 21 Mar 2017 06:30:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u26sm10506842pfi.89.2017.03.21.06.30.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:30:55 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com,
	lars@metafoo.de,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/2] staging: iio: ade7759: Move header content to implementation file
Date: Tue, 21 Mar 2017 19:00:21 +0530
Message-Id: <20170321133021.6737-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321133021.6737-1-arushisinghal19971997@gmail.com>
References: <20170321133021.6737-1-arushisinghal19971997@gmail.com>

The contents of ade7759.h are only used in ade7759.c.
Move the header contents to the implemtation file,
and delete the header file.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/meter/ade7759.c | 52 ++++++++++++++++++++++++++++++++++-
 drivers/staging/iio/meter/ade7759.h | 54 -------------------------------------
 2 files changed, 51 insertions(+), 55 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 1d1e0b33021f..86ac103dffe5 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -21,7 +21,57 @@
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
 #include "meter.h"
-#include "ade7759.h"
+
+#define ADE7759_WAVEFORM  0x01
+#define ADE7759_AENERGY   0x02
+#define ADE7759_RSTENERGY 0x03
+#define ADE7759_STATUS    0x04
+#define ADE7759_RSTSTATUS 0x05
+#define ADE7759_MODE      0x06
+#define ADE7759_CFDEN     0x07
+#define ADE7759_CH1OS     0x08
+#define ADE7759_CH2OS     0x09
+#define ADE7759_GAIN      0x0A
+#define ADE7759_APGAIN    0x0B
+#define ADE7759_PHCAL     0x0C
+#define ADE7759_APOS      0x0D
+#define ADE7759_ZXTOUT    0x0E
+#define ADE7759_SAGCYC    0x0F
+#define ADE7759_IRQEN     0x10
+#define ADE7759_SAGLVL    0x11
+#define ADE7759_TEMP      0x12
+#define ADE7759_LINECYC   0x13
+#define ADE7759_LENERGY   0x14
+#define ADE7759_CFNUM     0x15
+#define ADE7759_CHKSUM    0x1E
+#define ADE7759_DIEREV    0x1F
+
+#define ADE7759_READ_REG(a)    a
+#define ADE7759_WRITE_REG(a) ((a) | 0x80)
+
+#define ADE7759_MAX_TX    6
+#define ADE7759_MAX_RX    6
+#define ADE7759_STARTUP_DELAY 1000
+
+#define ADE7759_SPI_SLOW        (u32)(300 * 1000)
+#define ADE7759_SPI_BURST       (u32)(1000 * 1000)
+#define ADE7759_SPI_FAST        (u32)(2000 * 1000)
+
+/**
+ * struct ade7759_state - device instance specific data
+ * @us:			actual spi_device
+ * @buf_lock:		mutex to protect tx and rx
+ * @tx:			transmit buffer
+ * @rx:			receive buffer
+ * @lock		protect sensor state
+ **/
+
+struct ade7759_state {
+	struct spi_device	*us;
+	struct mutex		buf_lock; /* protect tx and rx */
+	u8			tx[ADE7759_MAX_TX] ____cacheline_aligned;
+	u8			rx[ADE7759_MAX_RX];
+};
 
 static int ade7759_spi_write_reg_8(struct device *dev,
 		u8 reg_address,
diff --git a/drivers/staging/iio/meter/ade7759.h b/drivers/staging/iio/meter/ade7759.h
index 4f69bb93cc45..e69de29bb2d1 100644
--- a/drivers/staging/iio/meter/ade7759.h
+++ b/drivers/staging/iio/meter/ade7759.h
@@ -1,54 +0,0 @@
-#ifndef _ADE7759_H
-#define _ADE7759_H
-
-#define ADE7759_WAVEFORM  0x01
-#define ADE7759_AENERGY   0x02
-#define ADE7759_RSTENERGY 0x03
-#define ADE7759_STATUS    0x04
-#define ADE7759_RSTSTATUS 0x05
-#define ADE7759_MODE      0x06
-#define ADE7759_CFDEN     0x07
-#define ADE7759_CH1OS     0x08
-#define ADE7759_CH2OS     0x09
-#define ADE7759_GAIN      0x0A
-#define ADE7759_APGAIN    0x0B
-#define ADE7759_PHCAL     0x0C
-#define ADE7759_APOS      0x0D
-#define ADE7759_ZXTOUT    0x0E
-#define ADE7759_SAGCYC    0x0F
-#define ADE7759_IRQEN     0x10
-#define ADE7759_SAGLVL    0x11
-#define ADE7759_TEMP      0x12
-#define ADE7759_LINECYC   0x13
-#define ADE7759_LENERGY   0x14
-#define ADE7759_CFNUM     0x15
-#define ADE7759_CHKSUM    0x1E
-#define ADE7759_DIEREV    0x1F
-
-#define ADE7759_READ_REG(a)    a
-#define ADE7759_WRITE_REG(a) ((a) | 0x80)
-
-#define ADE7759_MAX_TX    6
-#define ADE7759_MAX_RX    6
-#define ADE7759_STARTUP_DELAY 1000
-
-#define ADE7759_SPI_SLOW	(u32)(300 * 1000)
-#define ADE7759_SPI_BURST	(u32)(1000 * 1000)
-#define ADE7759_SPI_FAST	(u32)(2000 * 1000)
-
-/**
- * struct ade7759_state - device instance specific data
- * @us:			actual spi_device
- * @buf_lock:		mutex to protect tx and rx
- * @tx:			transmit buffer
- * @rx:			receive buffer
- * @lock		protect sensor state
- **/
-struct ade7759_state {
-	struct spi_device	*us;
-	struct mutex		buf_lock;
-	u8			tx[ADE7759_MAX_TX] ____cacheline_aligned;
-	u8			rx[ADE7759_MAX_RX];
-};
-
-#endif
-- 
2.11.0


