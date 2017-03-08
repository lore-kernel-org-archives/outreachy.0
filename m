X-GM-THRID: 6395022798134181888
X-Received: by 10.99.38.199 with SMTP id m190mr2311186pgm.42.1488957274462;
        Tue, 07 Mar 2017 23:14:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls2567562otd.37.gmail; Tue, 07 Mar
 2017 23:14:34 -0800 (PST)
X-Received: by 10.129.124.138 with SMTP id x132mr2233186ywc.138.1488957274072;
        Tue, 07 Mar 2017 23:14:34 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si458575pfd.3.2017.03.07.23.14.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 23:14:34 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so2808583pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 23:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=u+TCE0xALN1ojJnzOlebJCyQs9wCg3PzBj9hQtKhbR4=;
        b=IgX9lahVesenXjTzF05JrQ8YNsaewcgwS6qSICXOcbOOlh5xNrL06FkXXiaCHQd5VT
         PHZhM+FHhdSK0uh/aPq4pea5X6bZM+UGCaYrRNYmzjvek9abJQcvBmi1gFBmjjmc3eEs
         0imI7Jp+T2g2fpZWyp7R4+X5fB4NArEPLVFvlEYR+3zBvy+sC1Ej7OkBVWauJ9EA8tdD
         97P7mDw28vgv8Td76xkw5nHML9Jgbp7SdtAxjSKZOYV3uWpu5invMxcdrfIB1xUY95B/
         3oMo52118CstOvdPx6qLjHanva8UNOQG71X+KiT6lgcc+ez1jlPeDf2qgY0nrsGp3P8W
         lInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=u+TCE0xALN1ojJnzOlebJCyQs9wCg3PzBj9hQtKhbR4=;
        b=m3zAqT9VJNtJi0NrUFX1OgJvkEkCZY4mtYkXW3lNykzXNM4h1eCATEJfzPRD2DXB3X
         5jL+eMGVDoJDv8T03OsewIjDqqAuIby6LcrkKBMIqGj1fERQLk2DqAvx/9Q3XeCdWKc9
         crzcH6BeZVvx8TIxay9eXLI3Iskczg1sOx3w3GVT/9wxKnUFXH+jVUdzDjJHWZ0M+gE5
         dNfmPdgPwKPwptCDaVCFte8QFwE2M1zlEBLc6weXQ0MsKlRE/VQ/ALoQYI2XCJ+wW3Xm
         eTez24iuVf5HTJHPPKk7qwtD9tne3kxnKhQbp341I+3AlugiioinSUkS4Ur6vZyxPqZj
         1R7w==
X-Gm-Message-State: AMke39nMSBPlKzlTOvbKrCMSOCAiPLe8i+dC/d0i9/XUCluDoQJ+dZlqAFrtfB0hpXALSg==
X-Received: by 10.98.252.211 with SMTP id e202mr5273168pfh.118.1488957273744;
        Tue, 07 Mar 2017 23:14:33 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.210.173])
        by smtp.gmail.com with ESMTPSA id w29sm3728021pfi.131.2017.03.07.23.14.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 23:14:33 -0800 (PST)
Date: Wed, 8 Mar 2017 12:44:08 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: ade7754: Move contents of header file to
 source file
Message-ID: <20170308071408.GA9173@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The contents of ade7754.h are only used in ade7754.c. Move the header
contents to the source file and delete the header file.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
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


