X-GM-THRID: 6392601277801431040
X-Received: by 10.98.198.20 with SMTP id m20mr2279560pfg.1.1488393470099;
        Wed, 01 Mar 2017 10:37:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.205 with SMTP id x196ls1466617itb.8.gmail; Wed, 01 Mar
 2017 10:37:49 -0800 (PST)
X-Received: by 10.36.246.200 with SMTP id u191mr1414642ith.6.1488393469195;
        Wed, 01 Mar 2017 10:37:49 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si930039pfd.3.2017.03.01.10.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 10:37:49 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so6654129pgz.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 10:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ijj61INgfSSRLOZYS56NLz3gKV1XCpt1fNrdWvzYun8=;
        b=mPj6IwzKEZ6A3N2GuoUZ0JARgSsy7Ky6Rx9bAwQ5M6xsYt9oerM0zP9f1AP+vkeenr
         6omll/BskDHpw4GrD7vB0BpsNbeQ3W4p9NUIb9oc7Eri5pP1GOGAgF1yqYQ2PLl2nDCP
         xfeYWx+LiLs5/u25Uz1PYvH/GB0+8O8Aurod0huzi6zDt9pHzmPMkqRD/yzFwieuj7t/
         0IQQsWjCKi6mQHHbVZmLmURjmhJjG4nJMwC140jdYlHMAZv+VJR74XUQhRQ6E7E2u27W
         IJ4YjuLZKat2Obx0JAz9nXSO99jqH+UaBtgP7Q6z5IJ10SrqkVDXdHGxJrZT3nKKK/5x
         77PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ijj61INgfSSRLOZYS56NLz3gKV1XCpt1fNrdWvzYun8=;
        b=EADmYx7dd8SrZpayIiNSAGATlbh9OSvE5HW6p7PF1BRZY2D4eAMax8v7lgT8csaQDJ
         7ccNYoDVZ0KdvMpFUCZLBCrBUz4tWfmM7FwE8JeNhIILOvh3QnCueNVa3uMcKVyJX/v+
         OBYDgV0y1bUxXSMIRXl1BPoXt0keaL5IlG4xSqgFfNvcAzuMWrNdaO/H0GDqLx+ZmMa3
         5863jmyIxDBSBCJMf8sKhCcszeFINfGfXeFmqNSSKj3MJk1hDNWZy9QcHxOGdylcMjdt
         LQ1ofbVYRou7Od9jJOVN7y35Xl/P0fYZjGe0hZakUut9eYNpZ75ng2dUE1pD3xtLCrJJ
         1O2w==
X-Gm-Message-State: AMke39ntH37oetlwAY7krX/Ig+ye40zyG35xmrx3Bj2jZeh0gVFY0sSuOnO+qIIzAthcdQ==
X-Received: by 10.99.114.70 with SMTP id c6mr10483118pgn.163.1488393468816;
        Wed, 01 Mar 2017 10:37:48 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 197sm11989968pfv.19.2017.03.01.10.37.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 10:37:46 -0800 (PST)
Date: Thu, 2 Mar 2017 00:07:42 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: ad9832: Move header file content to source file
Message-ID: <20170301183741.GA20038@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The contents of the header file are used only by this single
source file. Move content into .c and remove .h.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c | 100 +++++++++++++++++++++++++-
 drivers/staging/iio/frequency/ad9832.h | 128 ---------------------------------
 2 files changed, 99 insertions(+), 129 deletions(-)
 delete mode 100644 drivers/staging/iio/frequency/ad9832.h

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index a5b2f068168d..8302ec91b2d7 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -20,7 +20,105 @@
 #include <linux/iio/sysfs.h>
 #include "dds.h"
 
-#include "ad9832.h"
+#define AD9832_FREQ0LL		0x0
+#define AD9832_FREQ0HL		0x1
+#define AD9832_FREQ0LM		0x2
+#define AD9832_FREQ0HM		0x3
+#define AD9832_FREQ1LL		0x4
+#define AD9832_FREQ1HL		0x5
+#define AD9832_FREQ1LM		0x6
+#define AD9832_FREQ1HM		0x7
+#define AD9832_PHASE0L		0x8
+#define AD9832_PHASE0H		0x9
+#define AD9832_PHASE1L		0xA
+#define AD9832_PHASE1H		0xB
+#define AD9832_PHASE2L		0xC
+#define AD9832_PHASE2H		0xD
+#define AD9832_PHASE3L		0xE
+#define AD9832_PHASE3H		0xF
+
+#define AD9832_PHASE_SYM	0x10
+#define AD9832_FREQ_SYM		0x11
+#define AD9832_PINCTRL_EN	0x12
+#define AD9832_OUTPUT_EN	0x13
+
+/* Command Control Bits */
+
+#define AD9832_CMD_PHA8BITSW	0x1
+#define AD9832_CMD_PHA16BITSW	0x0
+#define AD9832_CMD_FRE8BITSW	0x3
+#define AD9832_CMD_FRE16BITSW	0x2
+#define AD9832_CMD_FPSELECT	0x6
+#define AD9832_CMD_SYNCSELSRC	0x8
+#define AD9832_CMD_SLEEPRESCLR	0xC
+
+#define AD9832_FREQ		BIT(11)
+#define AD9832_PHASE(x)		(((x) & 3) << 9)
+#define AD9832_SYNC		BIT(13)
+#define AD9832_SELSRC		BIT(12)
+#define AD9832_SLEEP		BIT(13)
+#define AD9832_RESET		BIT(12)
+#define AD9832_CLR		BIT(11)
+#define CMD_SHIFT		12
+#define ADD_SHIFT		8
+#define AD9832_FREQ_BITS	32
+#define AD9832_PHASE_BITS	12
+#define RES_MASK(bits)		((1 << (bits)) - 1)
+
+/**
+ * struct ad9832_state - driver instance specific data
+ * @spi:		spi_device
+ * @avdd:		supply regulator for the analog section
+ * @dvdd:		supply regulator for the digital section
+ * @mclk:		external master clock
+ * @ctrl_fp:		cached frequency/phase control word
+ * @ctrl_ss:		cached sync/selsrc control word
+ * @ctrl_src:		cached sleep/reset/clr word
+ * @xfer:		default spi transfer
+ * @msg:		default spi message
+ * @freq_xfer:		tuning word spi transfer
+ * @freq_msg:		tuning word spi message
+ * @phase_xfer:		tuning word spi transfer
+ * @phase_msg:		tuning word spi message
+ * @data:		spi transmit buffer
+ * @phase_data:		tuning word spi transmit buffer
+ * @freq_data:		tuning word spi transmit buffer
+ */
+
+struct ad9832_state {
+	struct spi_device		*spi;
+	struct regulator		*avdd;
+	struct regulator		*dvdd;
+	unsigned long			mclk;
+	unsigned short			ctrl_fp;
+	unsigned short			ctrl_ss;
+	unsigned short			ctrl_src;
+	struct spi_transfer		xfer;
+	struct spi_message		msg;
+	struct spi_transfer		freq_xfer[4];
+	struct spi_message		freq_msg;
+	struct spi_transfer		phase_xfer[2];
+	struct spi_message		phase_msg;
+	/*
+	 * DMA (thus cache coherency maintenance) requires the
+	 * transfer buffers to live in their own cache lines.
+	 */
+	union {
+		__be16			freq_data[4]____cacheline_aligned;
+		__be16			phase_data[2];
+		__be16			data;
+	};
+};
+
+struct ad9832_platform_data {
+	unsigned long		mclk;
+	unsigned long		freq0;
+	unsigned long		freq1;
+	unsigned short		phase0;
+	unsigned short		phase1;
+	unsigned short		phase2;
+	unsigned short		phase3;
+};
 
 static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
 {
diff --git a/drivers/staging/iio/frequency/ad9832.h b/drivers/staging/iio/frequency/ad9832.h
deleted file mode 100644
index 1b08b04482a4..000000000000
--- a/drivers/staging/iio/frequency/ad9832.h
+++ /dev/null
@@ -1,128 +0,0 @@
-/*
- * AD9832 SPI DDS driver
- *
- * Copyright 2011 Analog Devices Inc.
- *
- * Licensed under the GPL-2 or later.
- */
-#ifndef IIO_DDS_AD9832_H_
-#define IIO_DDS_AD9832_H_
-
-/* Registers */
-
-#define AD9832_FREQ0LL		0x0
-#define AD9832_FREQ0HL		0x1
-#define AD9832_FREQ0LM		0x2
-#define AD9832_FREQ0HM		0x3
-#define AD9832_FREQ1LL		0x4
-#define AD9832_FREQ1HL		0x5
-#define AD9832_FREQ1LM		0x6
-#define AD9832_FREQ1HM		0x7
-#define AD9832_PHASE0L		0x8
-#define AD9832_PHASE0H		0x9
-#define AD9832_PHASE1L		0xA
-#define AD9832_PHASE1H		0xB
-#define AD9832_PHASE2L		0xC
-#define AD9832_PHASE2H		0xD
-#define AD9832_PHASE3L		0xE
-#define AD9832_PHASE3H		0xF
-
-#define AD9832_PHASE_SYM	0x10
-#define AD9832_FREQ_SYM		0x11
-#define AD9832_PINCTRL_EN	0x12
-#define AD9832_OUTPUT_EN	0x13
-
-/* Command Control Bits */
-
-#define AD9832_CMD_PHA8BITSW	0x1
-#define AD9832_CMD_PHA16BITSW	0x0
-#define AD9832_CMD_FRE8BITSW	0x3
-#define AD9832_CMD_FRE16BITSW	0x2
-#define AD9832_CMD_FPSELECT	0x6
-#define AD9832_CMD_SYNCSELSRC	0x8
-#define AD9832_CMD_SLEEPRESCLR	0xC
-
-#define AD9832_FREQ		BIT(11)
-#define AD9832_PHASE(x)		(((x) & 3) << 9)
-#define AD9832_SYNC		BIT(13)
-#define AD9832_SELSRC		BIT(12)
-#define AD9832_SLEEP		BIT(13)
-#define AD9832_RESET		BIT(12)
-#define AD9832_CLR		BIT(11)
-#define CMD_SHIFT		12
-#define ADD_SHIFT		8
-#define AD9832_FREQ_BITS	32
-#define AD9832_PHASE_BITS	12
-#define RES_MASK(bits)		((1 << (bits)) - 1)
-
-/**
- * struct ad9832_state - driver instance specific data
- * @spi:		spi_device
- * @avdd:		supply regulator for the analog section
- * @dvdd:		supply regulator for the digital section
- * @mclk:		external master clock
- * @ctrl_fp:		cached frequency/phase control word
- * @ctrl_ss:		cached sync/selsrc control word
- * @ctrl_src:		cached sleep/reset/clr word
- * @xfer:		default spi transfer
- * @msg:		default spi message
- * @freq_xfer:		tuning word spi transfer
- * @freq_msg:		tuning word spi message
- * @phase_xfer:		tuning word spi transfer
- * @phase_msg:		tuning word spi message
- * @data:		spi transmit buffer
- * @phase_data:		tuning word spi transmit buffer
- * @freq_data:		tuning word spi transmit buffer
- */
-
-struct ad9832_state {
-	struct spi_device		*spi;
-	struct regulator		*avdd;
-	struct regulator		*dvdd;
-	unsigned long			mclk;
-	unsigned short			ctrl_fp;
-	unsigned short			ctrl_ss;
-	unsigned short			ctrl_src;
-	struct spi_transfer		xfer;
-	struct spi_message		msg;
-	struct spi_transfer		freq_xfer[4];
-	struct spi_message		freq_msg;
-	struct spi_transfer		phase_xfer[2];
-	struct spi_message		phase_msg;
-	/*
-	 * DMA (thus cache coherency maintenance) requires the
-	 * transfer buffers to live in their own cache lines.
-	 */
-	union {
-		__be16			freq_data[4]____cacheline_aligned;
-		__be16			phase_data[2];
-		__be16			data;
-	};
-};
-
-/*
- * TODO: struct ad9832_platform_data needs to go into include/linux/iio
- */
-
-/**
- * struct ad9832_platform_data - platform specific information
- * @mclk:		master clock in Hz
- * @freq0:		power up freq0 tuning word in Hz
- * @freq1:		power up freq1 tuning word in Hz
- * @phase0:		power up phase0 value [0..4095] correlates with 0..2PI
- * @phase1:		power up phase1 value [0..4095] correlates with 0..2PI
- * @phase2:		power up phase2 value [0..4095] correlates with 0..2PI
- * @phase3:		power up phase3 value [0..4095] correlates with 0..2PI
- */
-
-struct ad9832_platform_data {
-	unsigned long		mclk;
-	unsigned long		freq0;
-	unsigned long		freq1;
-	unsigned short		phase0;
-	unsigned short		phase1;
-	unsigned short		phase2;
-	unsigned short		phase3;
-};
-
-#endif /* IIO_DDS_AD9832_H_ */
-- 
2.11.0


