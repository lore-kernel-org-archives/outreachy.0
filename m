X-GM-THRID: 6393639502105018368
X-Received: by 10.28.18.2 with SMTP id 2mr168261wms.7.1488635220579;
        Sat, 04 Mar 2017 05:47:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls1264431lja.48.gmail; Sat, 04 Mar 2017
 05:46:59 -0800 (PST)
X-Received: by 10.46.9.81 with SMTP id 78mr1211597ljj.30.1488635219962;
        Sat, 04 Mar 2017 05:46:59 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h62si341686wme.2.2017.03.04.05.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 05:46:59 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m70so6997379wma.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 05:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vLbGjeEhNI+Bc7cmq8EHsX2fpBY/EgrnglFqgGIKEpw=;
        b=hKUmkiYAlHO2eobJCEdeP7oZLEpSJ1XstLNDmpHDyLsDg+RDLdcB2hixLzi8iKv+gN
         ZHIGc7FNUXaIp8LZhdzXlQRz65a/7oNdYOw8fOEnkEvaNtrEuL3xlxZv2TojMjRN8EJu
         9ijJYHgFSdgAogaHx75Y7L/okgDK8fsIHC5vdjDI3CVbpz8nq8ai06DP1YiTZfPuWWfU
         sxU56j+NiVUj80kpPopmxcmWYirCbgBzrTS59zCAS0WlNAIzoAwLsM5gvL0JBHRhZRWt
         tVO+SivS6KQcDO5ihkzQbJzDE+F/NrThLiMh9dYzTtHVorbcgVNHfmzOH3qSY3oKMBov
         e27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vLbGjeEhNI+Bc7cmq8EHsX2fpBY/EgrnglFqgGIKEpw=;
        b=jNaMUOVwscpOlJJHDZ02JBAMkq3zrN/jQkHPqR+Ggx/Qzr5JqknyB3niQBYvc19c5k
         UlQmAZcOMA6isL6HzPX1blFH2AvKUrj0DwM8iJdxbmQYwrZwr4FhmOO48N2WOGQ5dquW
         rJCEJestNjBh+e5oV3Mu8v0t+JvbJV33ZvRe8EyJk9cOEyY6EwftMLDTw/YI5iXZ2oWY
         G//C9uPHF37RIfhDqMp2BRCBi/E30WRZakyJxz6qv0hwUxM4N+7n/5FfD9pEcP0Dq6vn
         B2h730uclIxBgP89b3IBFahgKA25/rQMId/VNIQdBFqGSuUEtknLgkV2QnvGgxC3k83J
         JMWw==
X-Gm-Message-State: AMke39kmWlLtuprUkemo455JpeVya8EUxmiaCKNhQKbkHXdW4QFNnCwTv+vOxlCBgT02yw==
X-Received: by 10.28.146.207 with SMTP id u198mr6999978wmd.36.1488635219656;
        Sat, 04 Mar 2017 05:46:59 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id p185sm7124230wme.20.2017.03.04.05.46.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 05:46:59 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 2/4] staging: iio: adis16203: Move contents of the header to the source file
Date: Sat,  4 Mar 2017 15:46:55 +0200
Message-Id: <571fd66078a72555dc74f61b92801d327a570f71.1488634510.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488634510.git.narcisaanamaria12@gmail.com>
References: <cover.1488634510.git.narcisaanamaria12@gmail.com>

The contents of the header file are used only by this single
source file. Move content into .c file and remove header.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/accel/adis16203.h      | 125 -----------------------------
 drivers/staging/iio/accel/adis16203_core.c | 123 +++++++++++++++++++++++++++-
 2 files changed, 121 insertions(+), 127 deletions(-)
 delete mode 100644 drivers/staging/iio/accel/adis16203.h

diff --git a/drivers/staging/iio/accel/adis16203.h b/drivers/staging/iio/accel/adis16203.h
deleted file mode 100644
index b483e4e..0000000
--- a/drivers/staging/iio/accel/adis16203.h
+++ /dev/null
@@ -1,125 +0,0 @@
-#ifndef SPI_ADIS16203_H_
-#define SPI_ADIS16203_H_
-
-#define ADIS16203_STARTUP_DELAY	220 /* ms */
-
-/* Flash memory write count */
-#define ADIS16203_FLASH_CNT      0x00
-
-/* Output, power supply */
-#define ADIS16203_SUPPLY_OUT     0x02
-
-/* Output, auxiliary ADC input */
-#define ADIS16203_AUX_ADC        0x08
-
-/* Output, temperature */
-#define ADIS16203_TEMP_OUT       0x0A
-
-/* Output, x-axis inclination */
-#define ADIS16203_XINCL_OUT      0x0C
-
-/* Output, y-axis inclination */
-#define ADIS16203_YINCL_OUT      0x0E
-
-/* Incline null calibration */
-#define ADIS16203_INCL_NULL      0x18
-
-/* Alarm 1 amplitude threshold */
-#define ADIS16203_ALM_MAG1       0x20
-
-/* Alarm 2 amplitude threshold */
-#define ADIS16203_ALM_MAG2       0x22
-
-/* Alarm 1, sample period */
-#define ADIS16203_ALM_SMPL1      0x24
-
-/* Alarm 2, sample period */
-#define ADIS16203_ALM_SMPL2      0x26
-
-/* Alarm control */
-#define ADIS16203_ALM_CTRL       0x28
-
-/* Auxiliary DAC data */
-#define ADIS16203_AUX_DAC        0x30
-
-/* General-purpose digital input/output control */
-#define ADIS16203_GPIO_CTRL      0x32
-
-/* Miscellaneous control */
-#define ADIS16203_MSC_CTRL       0x34
-
-/* Internal sample period (rate) control */
-#define ADIS16203_SMPL_PRD       0x36
-
-/* Operation, filter configuration */
-#define ADIS16203_AVG_CNT        0x38
-
-/* Operation, sleep mode control */
-#define ADIS16203_SLP_CNT        0x3A
-
-/* Diagnostics, system status register */
-#define ADIS16203_DIAG_STAT      0x3C
-
-/* Operation, system command register */
-#define ADIS16203_GLOB_CMD       0x3E
-
-/* MSC_CTRL */
-
-/* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16203_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
-
-/* Reverses rotation of both inclination outputs */
-#define ADIS16203_MSC_CTRL_REVERSE_ROT_EN	BIT(9)
-
-/* Self-test enable */
-#define ADIS16203_MSC_CTRL_SELF_TEST_EN	        BIT(8)
-
-/* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16203_MSC_CTRL_DATA_RDY_EN	        BIT(2)
-
-/* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16203_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
-
-/* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
-#define ADIS16203_MSC_CTRL_DATA_RDY_DIO1	BIT(0)
-
-/* DIAG_STAT */
-
-/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16203_DIAG_STAT_ALARM2        BIT(9)
-
-/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16203_DIAG_STAT_ALARM1        BIT(8)
-
-/* Self-test diagnostic error flag */
-#define ADIS16203_DIAG_STAT_SELFTEST_FAIL_BIT 5
-
-/* SPI communications failure */
-#define ADIS16203_DIAG_STAT_SPI_FAIL_BIT      3
-
-/* Flash update failure */
-#define ADIS16203_DIAG_STAT_FLASH_UPT_BIT     2
-
-/* Power supply above 3.625 V */
-#define ADIS16203_DIAG_STAT_POWER_HIGH_BIT    1
-
-/* Power supply below 3.15 V */
-#define ADIS16203_DIAG_STAT_POWER_LOW_BIT     0
-
-/* GLOB_CMD */
-
-#define ADIS16203_GLOB_CMD_SW_RESET	BIT(7)
-#define ADIS16203_GLOB_CMD_CLEAR_STAT	BIT(4)
-#define ADIS16203_GLOB_CMD_FACTORY_CAL	BIT(1)
-
-#define ADIS16203_ERROR_ACTIVE          BIT(14)
-
-enum adis16203_scan {
-	ADIS16203_SCAN_INCLI_X,
-	ADIS16203_SCAN_INCLI_Y,
-	ADIS16203_SCAN_SUPPLY,
-	ADIS16203_SCAN_AUX_ADC,
-	ADIS16203_SCAN_TEMP,
-};
-
-#endif /* SPI_ADIS16203_H_ */
diff --git a/drivers/staging/iio/accel/adis16203_core.c b/drivers/staging/iio/accel/adis16203_core.c
index bd8119a..7018605 100644
--- a/drivers/staging/iio/accel/adis16203_core.c
+++ b/drivers/staging/iio/accel/adis16203_core.c
@@ -20,10 +20,129 @@
 #include <linux/iio/buffer.h>
 #include <linux/iio/imu/adis.h>
 
-#include "adis16203.h"
-
 #define DRIVER_NAME		"adis16203"
 
+#define ADIS16203_STARTUP_DELAY	220 /* ms */
+
+/* Flash memory write count */
+#define ADIS16203_FLASH_CNT      0x00
+
+/* Output, power supply */
+#define ADIS16203_SUPPLY_OUT     0x02
+
+/* Output, auxiliary ADC input */
+#define ADIS16203_AUX_ADC        0x08
+
+/* Output, temperature */
+#define ADIS16203_TEMP_OUT       0x0A
+
+/* Output, x-axis inclination */
+#define ADIS16203_XINCL_OUT      0x0C
+
+/* Output, y-axis inclination */
+#define ADIS16203_YINCL_OUT      0x0E
+
+/* Incline null calibration */
+#define ADIS16203_INCL_NULL      0x18
+
+/* Alarm 1 amplitude threshold */
+#define ADIS16203_ALM_MAG1       0x20
+
+/* Alarm 2 amplitude threshold */
+#define ADIS16203_ALM_MAG2       0x22
+
+/* Alarm 1, sample period */
+#define ADIS16203_ALM_SMPL1      0x24
+
+/* Alarm 2, sample period */
+#define ADIS16203_ALM_SMPL2      0x26
+
+/* Alarm control */
+#define ADIS16203_ALM_CTRL       0x28
+
+/* Auxiliary DAC data */
+#define ADIS16203_AUX_DAC        0x30
+
+/* General-purpose digital input/output control */
+#define ADIS16203_GPIO_CTRL      0x32
+
+/* Miscellaneous control */
+#define ADIS16203_MSC_CTRL       0x34
+
+/* Internal sample period (rate) control */
+#define ADIS16203_SMPL_PRD       0x36
+
+/* Operation, filter configuration */
+#define ADIS16203_AVG_CNT        0x38
+
+/* Operation, sleep mode control */
+#define ADIS16203_SLP_CNT        0x3A
+
+/* Diagnostics, system status register */
+#define ADIS16203_DIAG_STAT      0x3C
+
+/* Operation, system command register */
+#define ADIS16203_GLOB_CMD       0x3E
+
+/* MSC_CTRL */
+
+/* Self-test at power-on: 1 = disabled, 0 = enabled */
+#define ADIS16203_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
+
+/* Reverses rotation of both inclination outputs */
+#define ADIS16203_MSC_CTRL_REVERSE_ROT_EN	BIT(9)
+
+/* Self-test enable */
+#define ADIS16203_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+
+/* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16203_MSC_CTRL_DATA_RDY_EN	        BIT(2)
+
+/* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16203_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
+
+/* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
+#define ADIS16203_MSC_CTRL_DATA_RDY_DIO1	BIT(0)
+
+/* DIAG_STAT */
+
+/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16203_DIAG_STAT_ALARM2        BIT(9)
+
+/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16203_DIAG_STAT_ALARM1        BIT(8)
+
+/* Self-test diagnostic error flag */
+#define ADIS16203_DIAG_STAT_SELFTEST_FAIL_BIT 5
+
+/* SPI communications failure */
+#define ADIS16203_DIAG_STAT_SPI_FAIL_BIT      3
+
+/* Flash update failure */
+#define ADIS16203_DIAG_STAT_FLASH_UPT_BIT     2
+
+/* Power supply above 3.625 V */
+#define ADIS16203_DIAG_STAT_POWER_HIGH_BIT    1
+
+/* Power supply below 3.15 V */
+#define ADIS16203_DIAG_STAT_POWER_LOW_BIT     0
+
+/* GLOB_CMD */
+
+#define ADIS16203_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16203_GLOB_CMD_CLEAR_STAT	BIT(4)
+#define ADIS16203_GLOB_CMD_FACTORY_CAL	BIT(1)
+
+#define ADIS16203_ERROR_ACTIVE          BIT(14)
+
+enum adis16203_scan {
+	ADIS16203_SCAN_INCLI_X,
+	ADIS16203_SCAN_INCLI_Y,
+	ADIS16203_SCAN_SUPPLY,
+	ADIS16203_SCAN_AUX_ADC,
+	ADIS16203_SCAN_TEMP,
+};
+
 static const u8 adis16203_addresses[] = {
 	[ADIS16203_SCAN_INCLI_X] = ADIS16203_INCL_NULL,
 };
-- 
1.9.1


