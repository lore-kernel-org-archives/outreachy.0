X-GM-THRID: 6395062111177801728
X-Received: by 10.99.107.1 with SMTP id g1mr2466255pgc.100.1488966427066;
        Wed, 08 Mar 2017 01:47:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.85.151 with SMTP id e145ls879909itb.4.gmail; Wed, 08 Mar
 2017 01:47:06 -0800 (PST)
X-Received: by 10.107.50.198 with SMTP id y189mr1938666ioy.81.1488966426288;
        Wed, 08 Mar 2017 01:47:06 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si492502pfa.6.2017.03.08.01.47.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 01:47:06 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so3241213pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 01:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZzbI2j4o4c2f7o6b3EiiAJKXVQB6jYUrAVz6wS05Z/I=;
        b=kf+n7f4noSZF0abmOADp04fGAILtcYorfkztXczWahYxTAVZdvGI/DuQVKUHZWOHpm
         nS4vd9oFMkzRL/OlngN871ScK3lnkRe9+/s7CuKhFVlrhnO9Djr1LEran+c6IgY3jPxV
         /JKpwxJJ9qiTM2FaEfGS9wq6fMU17xDi0nxLKCJ8511IHadjH5NPcgv2JNojs892bJmo
         mDHGTE0fU19AI+jQKGYQOkgdHSAEMy9ctuOdj/LOIQPtdGG67yZlgr0M8BvUzyiinfA1
         /rxeQmVvc9yeFvc/K3QbvCgqy2U6XDRzkytEjgAgRlzQx367zgDZDTsMV3Jy5yQtw6Yh
         3Y8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZzbI2j4o4c2f7o6b3EiiAJKXVQB6jYUrAVz6wS05Z/I=;
        b=CALze/0CsEEsjXhBp9cZA6nkq2YDMIIBJd1smqUpamoHzb5QIWDLnwfEfrGWLi6lr2
         QJ4r54JE6kntY5tVbTTSrCUnFKMjJPk67GdLGJHmXZny+/dy+c9KYOWzkNc4xEBamK64
         27QJdpw9ql9BSxPXsdHlk+NL5p0dWkFIS5xXub1cdl6lTMrVDUEc5xqbuZfxSJjxXdJ0
         10MCHy4RhgHHFRWd9a1dEMKMfXo694pP0jeyf3jzF8HNtoZsLgnQQYe886hHvlCaqcTH
         MJTdkmIw0nfhkRGhONGhikxU8D13wqB1wNigyIa0jLCgPWZPH4zz5gyb0EQWAD1DeqKH
         S6bw==
X-Gm-Message-State: AMke39nZjug/f+qKQ5Vb1i85aqr5l5s4c9pKwJx+6DpOl9Xq9yhJLhiHyNe8yGm7VfpHHw==
X-Received: by 10.98.211.81 with SMTP id q78mr5840718pfg.97.1488966426022;
        Wed, 08 Mar 2017 01:47:06 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([42.109.41.132])
        by smtp.gmail.com with ESMTPSA id c28sm4918075pfj.77.2017.03.08.01.46.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 01:47:05 -0800 (PST)
Date: Wed, 8 Mar 2017 15:16:38 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: ade7759: Move contents of header file to
 source file
Message-ID: <20170308094321.GA11025@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The contents of ade7759.h are only used in ade7759.c. Move the header
contents to the source file and delete the header file.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/meter/ade7759.c | 50 +++++++++++++++++++++++++++++++++-
 drivers/staging/iio/meter/ade7759.h | 53 -------------------------------------
 2 files changed, 49 insertions(+), 54 deletions(-)
 delete mode 100644 drivers/staging/iio/meter/ade7759.h

diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 944ee34..0b65f18 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -21,7 +21,55 @@
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
+#define ADE7759_SPI_SLOW	(u32)(300 * 1000)
+#define ADE7759_SPI_BURST	(u32)(1000 * 1000)
+#define ADE7759_SPI_FAST	(u32)(2000 * 1000)
+
+/**
+ * struct ade7759_state - device instance specific data
+ * @us:			actual spi_device
+ * @buf_lock:		mutex to protect tx and rx
+ * @tx:			transmit buffer
+ * @rx:			receive buffer
+ **/
+struct ade7759_state {
+	struct spi_device	*us;
+	struct mutex		buf_lock;
+	u8			tx[ADE7759_MAX_TX] ____cacheline_aligned;
+	u8			rx[ADE7759_MAX_RX];
+};
 
 static int ade7759_spi_write_reg_8(struct device *dev,
 		u8 reg_address,
diff --git a/drivers/staging/iio/meter/ade7759.h b/drivers/staging/iio/meter/ade7759.h
deleted file mode 100644
index f0716d2..0000000
--- a/drivers/staging/iio/meter/ade7759.h
+++ /dev/null
@@ -1,53 +0,0 @@
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
2.7.4


