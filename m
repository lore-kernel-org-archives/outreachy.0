X-GM-THRID: 6391536108233031680
X-Received: by 10.46.87.80 with SMTP id r16mr1543696ljd.16.1488145466013;
        Sun, 26 Feb 2017 13:44:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.15 with SMTP id h15ls392328ljb.14.gmail; Sun, 26 Feb
 2017 13:44:25 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr1366136ljd.27.1488145465322;
        Sun, 26 Feb 2017 13:44:25 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id y19si654899wmd.0.2017.02.26.13.44.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:44:25 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v77so10791035wmv.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 13:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ejC7BN/wDn4qFey4qWF5djr/UzsNGDuz1AANC2OGde8=;
        b=XFx/Ey9WE85BXmkyyaCXf8JcnzXAaPMkvAQLgZgronmxkLoUDC1+heryV9d3TQ4I9P
         MFVNifY937mnBKRrKSuiBJv/G1ySeci3Pi2xhLz5UTwKwuFZUvAiJ+E6n1yhdorGQGK/
         8jp8R9NeMRVutjuA0Du1+z55nqp6ZRaDqlmYbbVdhdwaP2y8zfwgRPuc89aT4Xa+PKck
         N6wuBZShqecL9RqmBy21Xxv3uD/Ssc1xgeGGJsb/0Nhdc2faOUoDGoBiernbloyThG4g
         +2DDLXhOsPJoxiHoBxME3JXKEjE7p9IbJNbuVATmYqCutzB4092LDE+xi8WyHF7tkpOs
         lx9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ejC7BN/wDn4qFey4qWF5djr/UzsNGDuz1AANC2OGde8=;
        b=aQRb7pz1kk4XtOTiEAoS7DL18NJ2d72ocUSksFjCc9Ce/E4SNMeyF6WzES/8PEsj2T
         dFskDOX+W6gi1RL8VOjFkZOAvg/HWIqFPBAaPuRlKJOpEJNzs6FMa+mog+z/LYMinLhb
         XcebD9hIqeXrrJIAEqrs8DV2/xuRxaZI63TnDkMnrxlHAl9OVP7RyfRbhG/o6H0n4bd/
         ntBOHDdbzz/WrXNXYeQnV9nMo0qwSqHUj+xyMQfQHd7nKMiOFtNeb3eS3lwMhaYcGENe
         doWI3I4ia14k0mltB0IIX0oji/SQsm36QzJjicTPiT4ecW5EJsJMIKHTls6jFcEiQdPE
         YxMQ==
X-Gm-Message-State: AMke39nAmgpEW7Cflo9fGHwy9iFJBYpUcBNj9HnPIAwfffl2U27rykAnn14sx9/ETlhMdQ==
X-Received: by 10.28.101.195 with SMTP id z186mr4162970wmb.82.1488145465042;
        Sun, 26 Feb 2017 13:44:25 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([109.166.128.3])
        by smtp.gmail.com with ESMTPSA id d29sm19701363wrc.34.2017.02.26.13.44.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 13:44:24 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: iio: ad9832: Moved contents of header file to source file
Date: Sun, 26 Feb 2017 23:43:59 +0200
Message-Id: <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

The contents of the header file are used only by this single source file.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c | 117 +++++++++++++++++++++++++++++-
 drivers/staging/iio/frequency/ad9832.h | 128 ---------------------------------
 2 files changed, 116 insertions(+), 129 deletions(-)
 delete mode 100644 drivers/staging/iio/frequency/ad9832.h

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index a5b2f06..1b26843 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -20,7 +20,122 @@
 #include <linux/iio/sysfs.h>
 #include "dds.h"
 
-#include "ad9832.h"
+/* Registers */
+
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
+/*
+ * TODO: struct ad9832_platform_data needs to go into include/linux/iio
+ */
+
+/**
+ * struct ad9832_platform_data - platform specific information
+ * @mclk:		master clock in Hz
+ * @freq0:		power up freq0 tuning word in Hz
+ * @freq1:		power up freq1 tuning word in Hz
+ * @phase0:		power up phase0 value [0..4095] correlates with 0..2PI
+ * @phase1:		power up phase1 value [0..4095] correlates with 0..2PI
+ * @phase2:		power up phase2 value [0..4095] correlates with 0..2PI
+ * @phase3:		power up phase3 value [0..4095] correlates with 0..2PI
+ */
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
index 1b08b04..0000000
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
1.9.1


