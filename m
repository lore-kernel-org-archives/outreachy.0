X-GM-THRID: 6399599665816272896
X-Received: by 10.13.241.3 with SMTP id a3mr1058568ywf.7.1490022912806;
        Mon, 20 Mar 2017 08:15:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls14349179otc.29.gmail; Mon, 20
 Mar 2017 08:15:12 -0700 (PDT)
X-Received: by 10.157.31.42 with SMTP id x39mr13885846otd.111.1490022912106;
        Mon, 20 Mar 2017 08:15:12 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 190si1392010pfv.3.2017.03.20.08.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 08:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so11780921pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 08:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=J2tmce1DOgI4wggZJZOXaP6AWw2tx4rpy9pI7wkvV6E=;
        b=khG8D4kuZ99SoRX18icGejYWTuWvesFMOsEGSYn1uMkJPweoGYtjFq2BwBLCiKEMNX
         8Qir4ua4ak8fR2VBPYq/PXHR5WvDzoBcCQ0n7ByCm0Xj3g8Jsra8g25aXDO2DIHnnXmH
         taw4PaFOeZIiVxGVkLAsCL1eE2LVM4i1vtTfXmivIWFNxIMR+sw8UTlHO93KV/z9Ma3/
         YYUGVjZD5WutKYToKSHCiEPQKh6E8sjqLgm0zZVr/HwwCR+GfPUMKfFHj49O26FYGTkH
         VFxtzPsZ9W0SLzp01xu2/zxrylam5eiGDCQ+DhEXO3eEFOv6Q+xiVXnnBm7rzM44TCHv
         xiFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=J2tmce1DOgI4wggZJZOXaP6AWw2tx4rpy9pI7wkvV6E=;
        b=JzqPjOcbyoaKtf8qzFOUGdserAjIFO8aykY7zXLyDWpvNM5qq18eEKIF8tUGEgqCen
         yi3DueStczHFmoGtzxBvk6RzUdu13PCF73lvsJtDBaoHPFYImviA8vtVCSeFsopMgIbN
         A9U5innuQss+7V7ekYGB5EmnSXd3k4clctxPeuKaMbNi/MTPieyVGqDqIy1lftUsC24m
         DwT2DTdQh7Vu32ywXj/7/0IkgMfl1bx2tjABIUUBmIyofZDnibSKhQU97mczDN6bgnGG
         cHIwHZV7ySHKSEBV1KSufiUQNQCxphBouNSWfMrOt0rVeOyKRGYimx484wFYNT/W5SmP
         xTrQ==
X-Gm-Message-State: AFeK/H0axkVKQvTP+o8kIUDXYFMNyUg+j0beEGIjGTnhCyUcGE8EEbBwj4neYl2A5mY2qA==
X-Received: by 10.84.213.130 with SMTP id g2mr25147969pli.53.1490022911818;
        Mon, 20 Mar 2017 08:15:11 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u26sm4652956pfi.89.2017.03.20.08.15.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 08:15:11 -0700 (PDT)
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
Subject: [PATCH 1/2] staging: ade7754: Move header content to implementation file
Date: Mon, 20 Mar 2017 20:45:04 +0530
Message-Id: <1490022905-18422-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490022905-18422-1-git-send-email-singhalsimran0@gmail.com>
References: <1490022905-18422-1-git-send-email-singhalsimran0@gmail.com>

The contents of ade7754.h are only used in ade7754.c.
Move the header contents to the implementation file,
and delete the header file.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 87 ++++++++++++++++++++++++++++++++++-
 drivers/staging/iio/meter/ade7754.h | 90 -------------------------------------
 2 files changed, 86 insertions(+), 91 deletions(-)
 delete mode 100644 drivers/staging/iio/meter/ade7754.h

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 024463a..42f7b06 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -21,7 +21,92 @@
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
 #include "meter.h"
-#include "ade7754.h"
+
+#define ADE7754_AENERGY   0x01
+#define ADE7754_RAENERGY  0x02
+#define ADE7754_LAENERGY  0x03
+#define ADE7754_VAENERGY  0x04
+#define ADE7754_RVAENERGY 0x05
+#define ADE7754_LVAENERGY 0x06
+#define ADE7754_PERIOD    0x07
+#define ADE7754_TEMP      0x08
+#define ADE7754_WFORM     0x09
+#define ADE7754_OPMODE    0x0A
+#define ADE7754_MMODE     0x0B
+#define ADE7754_WAVMODE   0x0C
+#define ADE7754_WATMODE   0x0D
+#define ADE7754_VAMODE    0x0E
+#define ADE7754_IRQEN     0x0F
+#define ADE7754_STATUS    0x10
+#define ADE7754_RSTATUS   0x11
+#define ADE7754_ZXTOUT    0x12
+#define ADE7754_LINCYC    0x13
+#define ADE7754_SAGCYC    0x14
+#define ADE7754_SAGLVL    0x15
+#define ADE7754_VPEAK     0x16
+#define ADE7754_IPEAK     0x17
+#define ADE7754_GAIN      0x18
+#define ADE7754_AWG       0x19
+#define ADE7754_BWG       0x1A
+#define ADE7754_CWG       0x1B
+#define ADE7754_AVAG      0x1C
+#define ADE7754_BVAG      0x1D
+#define ADE7754_CVAG      0x1E
+#define ADE7754_APHCAL    0x1F
+#define ADE7754_BPHCAL    0x20
+#define ADE7754_CPHCAL    0x21
+#define ADE7754_AAPOS     0x22
+#define ADE7754_BAPOS     0x23
+#define ADE7754_CAPOS     0x24
+#define ADE7754_CFNUM     0x25
+#define ADE7754_CFDEN     0x26
+#define ADE7754_WDIV      0x27
+#define ADE7754_VADIV     0x28
+#define ADE7754_AIRMS     0x29
+#define ADE7754_BIRMS     0x2A
+#define ADE7754_CIRMS     0x2B
+#define ADE7754_AVRMS     0x2C
+#define ADE7754_BVRMS     0x2D
+#define ADE7754_CVRMS     0x2E
+#define ADE7754_AIRMSOS   0x2F
+#define ADE7754_BIRMSOS   0x30
+#define ADE7754_CIRMSOS   0x31
+#define ADE7754_AVRMSOS   0x32
+#define ADE7754_BVRMSOS   0x33
+#define ADE7754_CVRMSOS   0x34
+#define ADE7754_AAPGAIN   0x35
+#define ADE7754_BAPGAIN   0x36
+#define ADE7754_CAPGAIN   0x37
+#define ADE7754_AVGAIN    0x38
+#define ADE7754_BVGAIN    0x39
+#define ADE7754_CVGAIN    0x3A
+#define ADE7754_CHKSUM    0x3E
+#define ADE7754_VERSION   0x3F
+
+#define ADE7754_READ_REG(a)    a
+#define ADE7754_WRITE_REG(a) ((a) | 0x80)
+
+#define ADE7754_MAX_TX    4
+#define ADE7754_MAX_RX    4
+#define ADE7754_STARTUP_DELAY 1000
+
+#define ADE7754_SPI_SLOW	(u32)(300 * 1000)
+#define ADE7754_SPI_BURST	(u32)(1000 * 1000)
+#define ADE7754_SPI_FAST	(u32)(2000 * 1000)
+
+/**
+ * struct ade7754_state - device instance specific data
+ * @us:			actual spi_device
+ * @buf_lock:		mutex to protect tx and rx
+ * @tx:			transmit buffer
+ * @rx:			receive buffer
+ **/
+struct ade7754_state {
+	struct spi_device	*us;
+	struct mutex		buf_lock;
+	u8			tx[ADE7754_MAX_TX] ____cacheline_aligned;
+	u8			rx[ADE7754_MAX_RX];
+};
 
 static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
 {
diff --git a/drivers/staging/iio/meter/ade7754.h b/drivers/staging/iio/meter/ade7754.h
deleted file mode 100644
index 28f71c2..0000000
--- a/drivers/staging/iio/meter/ade7754.h
+++ /dev/null
@@ -1,90 +0,0 @@
-#ifndef _ADE7754_H
-#define _ADE7754_H
-
-#define ADE7754_AENERGY   0x01
-#define ADE7754_RAENERGY  0x02
-#define ADE7754_LAENERGY  0x03
-#define ADE7754_VAENERGY  0x04
-#define ADE7754_RVAENERGY 0x05
-#define ADE7754_LVAENERGY 0x06
-#define ADE7754_PERIOD    0x07
-#define ADE7754_TEMP      0x08
-#define ADE7754_WFORM     0x09
-#define ADE7754_OPMODE    0x0A
-#define ADE7754_MMODE     0x0B
-#define ADE7754_WAVMODE   0x0C
-#define ADE7754_WATMODE   0x0D
-#define ADE7754_VAMODE    0x0E
-#define ADE7754_IRQEN     0x0F
-#define ADE7754_STATUS    0x10
-#define ADE7754_RSTATUS   0x11
-#define ADE7754_ZXTOUT    0x12
-#define ADE7754_LINCYC    0x13
-#define ADE7754_SAGCYC    0x14
-#define ADE7754_SAGLVL    0x15
-#define ADE7754_VPEAK     0x16
-#define ADE7754_IPEAK     0x17
-#define ADE7754_GAIN      0x18
-#define ADE7754_AWG       0x19
-#define ADE7754_BWG       0x1A
-#define ADE7754_CWG       0x1B
-#define ADE7754_AVAG      0x1C
-#define ADE7754_BVAG      0x1D
-#define ADE7754_CVAG      0x1E
-#define ADE7754_APHCAL    0x1F
-#define ADE7754_BPHCAL    0x20
-#define ADE7754_CPHCAL    0x21
-#define ADE7754_AAPOS     0x22
-#define ADE7754_BAPOS     0x23
-#define ADE7754_CAPOS     0x24
-#define ADE7754_CFNUM     0x25
-#define ADE7754_CFDEN     0x26
-#define ADE7754_WDIV      0x27
-#define ADE7754_VADIV     0x28
-#define ADE7754_AIRMS     0x29
-#define ADE7754_BIRMS     0x2A
-#define ADE7754_CIRMS     0x2B
-#define ADE7754_AVRMS     0x2C
-#define ADE7754_BVRMS     0x2D
-#define ADE7754_CVRMS     0x2E
-#define ADE7754_AIRMSOS   0x2F
-#define ADE7754_BIRMSOS   0x30
-#define ADE7754_CIRMSOS   0x31
-#define ADE7754_AVRMSOS   0x32
-#define ADE7754_BVRMSOS   0x33
-#define ADE7754_CVRMSOS   0x34
-#define ADE7754_AAPGAIN   0x35
-#define ADE7754_BAPGAIN   0x36
-#define ADE7754_CAPGAIN   0x37
-#define ADE7754_AVGAIN    0x38
-#define ADE7754_BVGAIN    0x39
-#define ADE7754_CVGAIN    0x3A
-#define ADE7754_CHKSUM    0x3E
-#define ADE7754_VERSION   0x3F
-
-#define ADE7754_READ_REG(a)    a
-#define ADE7754_WRITE_REG(a) ((a) | 0x80)
-
-#define ADE7754_MAX_TX    4
-#define ADE7754_MAX_RX    4
-#define ADE7754_STARTUP_DELAY 1000
-
-#define ADE7754_SPI_SLOW	(u32)(300 * 1000)
-#define ADE7754_SPI_BURST	(u32)(1000 * 1000)
-#define ADE7754_SPI_FAST	(u32)(2000 * 1000)
-
-/**
- * struct ade7754_state - device instance specific data
- * @us:			actual spi_device
- * @buf_lock:		mutex to protect tx and rx
- * @tx:			transmit buffer
- * @rx:			receive buffer
- **/
-struct ade7754_state {
-	struct spi_device	*us;
-	struct mutex		buf_lock;
-	u8			tx[ADE7754_MAX_TX] ____cacheline_aligned;
-	u8			rx[ADE7754_MAX_RX];
-};
-
-#endif
-- 
2.7.4


