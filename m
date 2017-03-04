X-GM-THRID: 6393639502105018368
X-Received: by 10.223.130.44 with SMTP id 41mr176163wrb.18.1488635234729;
        Sat, 04 Mar 2017 05:47:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.66 with SMTP id h63ls1178126ljh.5.gmail; Sat, 04 Mar
 2017 05:47:13 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr1156077ljb.28.1488635233945;
        Sat, 04 Mar 2017 05:47:13 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id h198si516575wmg.1.2017.03.04.05.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 05:47:13 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id l37so16343594wrc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 05:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/DxeA6rqFJ9vRLMNUz1GiHaa9O4cPzhSD2zOlAF3dNY=;
        b=dVY6qKtK5TLPIqgr//etgrZeloRWQH2gkKezH1whuuoN59HFglmjpqWglBoNGkpnbv
         hcp6NbaFEmO3geJqWLCDRGEMGrkSOHyzKf/O9mWv+D8bdG6Ef5BDzdSlz6bk/fM6T+qg
         RXf7Ze3emdGxXv70fWnDGuilCphaQJXd28bonZXxuHYk5S+PHDUEwgy7iBU4Edk1/nYa
         Fy61z9wDxpSvgV5zcAbbTPKzSpVkYkS2SPi0LoTdjNlEHv0mnJNYgkZ89OO9nRl07gy5
         Sa+TZRWrsAJGawSMkTB+zy4TGheRkFJXjyBfCT15YGv00tQYIwjvZhRanYvlpiFZvEAe
         3XEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/DxeA6rqFJ9vRLMNUz1GiHaa9O4cPzhSD2zOlAF3dNY=;
        b=eu15HED9qjJAax7guMaLRmAIEjUte70OWdydiD7S0fISN9U5OeUf9RWD2N1zCYHewk
         7GcjTThOy18CCJueYEE96/WZ7XTxIcx8VLU9cxDuVQpl0lRo8EzM1EDsiF0t8fDtlaq4
         4mtU0n8Q/FPfRJEopuqPBCtMoW2E64u99fwF4WLQZwDzjREoMeGh2wpMcGH+indw4VuV
         E0Eon++3LtDAYW4qlbNLUr5bF4fIZsPFMarFWjcE50+q/HiU3RxaguXVBj0pMFCWskAj
         ySU2Sb8KZVZOE3sCO+rAolRGqHBHemquxQ8ms2XKlvJnHBh8qXl3oeZIo75qGoVQXvBo
         3FQQ==
X-Gm-Message-State: AMke39n/Sp+yUrwTjKc2uhhAokKuk+wPm4JAZUYqdaD1kNueoqpqMcoI+r9ySpN3w+qsnA==
X-Received: by 10.223.156.2 with SMTP id f2mr7962577wrc.4.1488635233667;
        Sat, 04 Mar 2017 05:47:13 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id 198sm7127888wmn.11.2017.03.04.05.47.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 05:47:13 -0800 (PST)
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
Subject: [PATCH 3/4] staging: iio: adis16209: Move contents of the header to the source file
Date: Sat,  4 Mar 2017 15:47:08 +0200
Message-Id: <c9cf8beb40cc1cdb4ac084ffe24b36c321497564.1488634510.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488634510.git.narcisaanamaria12@gmail.com>
References: <cover.1488634510.git.narcisaanamaria12@gmail.com>

The contents of the header file are used only by this single
source file. Move content into .c file and remove header.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/accel/adis16209.h      | 144 -----------------------------
 drivers/staging/iio/accel/adis16209_core.c | 140 +++++++++++++++++++++++++++-
 2 files changed, 139 insertions(+), 145 deletions(-)
 delete mode 100644 drivers/staging/iio/accel/adis16209.h

diff --git a/drivers/staging/iio/accel/adis16209.h b/drivers/staging/iio/accel/adis16209.h
deleted file mode 100644
index 315f1c0..0000000
--- a/drivers/staging/iio/accel/adis16209.h
+++ /dev/null
@@ -1,144 +0,0 @@
-#ifndef SPI_ADIS16209_H_
-#define SPI_ADIS16209_H_
-
-#define ADIS16209_STARTUP_DELAY	220 /* ms */
-
-/* Flash memory write count */
-#define ADIS16209_FLASH_CNT      0x00
-
-/* Output, power supply */
-#define ADIS16209_SUPPLY_OUT     0x02
-
-/* Output, x-axis accelerometer */
-#define ADIS16209_XACCL_OUT      0x04
-
-/* Output, y-axis accelerometer */
-#define ADIS16209_YACCL_OUT      0x06
-
-/* Output, auxiliary ADC input */
-#define ADIS16209_AUX_ADC        0x08
-
-/* Output, temperature */
-#define ADIS16209_TEMP_OUT       0x0A
-
-/* Output, x-axis inclination */
-#define ADIS16209_XINCL_OUT      0x0C
-
-/* Output, y-axis inclination */
-#define ADIS16209_YINCL_OUT      0x0E
-
-/* Output, +/-180 vertical rotational position */
-#define ADIS16209_ROT_OUT        0x10
-
-/* Calibration, x-axis acceleration offset null */
-#define ADIS16209_XACCL_NULL     0x12
-
-/* Calibration, y-axis acceleration offset null */
-#define ADIS16209_YACCL_NULL     0x14
-
-/* Calibration, x-axis inclination offset null */
-#define ADIS16209_XINCL_NULL     0x16
-
-/* Calibration, y-axis inclination offset null */
-#define ADIS16209_YINCL_NULL     0x18
-
-/* Calibration, vertical rotation offset null */
-#define ADIS16209_ROT_NULL       0x1A
-
-/* Alarm 1 amplitude threshold */
-#define ADIS16209_ALM_MAG1       0x20
-
-/* Alarm 2 amplitude threshold */
-#define ADIS16209_ALM_MAG2       0x22
-
-/* Alarm 1, sample period */
-#define ADIS16209_ALM_SMPL1      0x24
-
-/* Alarm 2, sample period */
-#define ADIS16209_ALM_SMPL2      0x26
-
-/* Alarm control */
-#define ADIS16209_ALM_CTRL       0x28
-
-/* Auxiliary DAC data */
-#define ADIS16209_AUX_DAC        0x30
-
-/* General-purpose digital input/output control */
-#define ADIS16209_GPIO_CTRL      0x32
-
-/* Miscellaneous control */
-#define ADIS16209_MSC_CTRL       0x34
-
-/* Internal sample period (rate) control */
-#define ADIS16209_SMPL_PRD       0x36
-
-/* Operation, filter configuration */
-#define ADIS16209_AVG_CNT        0x38
-
-/* Operation, sleep mode control */
-#define ADIS16209_SLP_CNT        0x3A
-
-/* Diagnostics, system status register */
-#define ADIS16209_DIAG_STAT      0x3C
-
-/* Operation, system command register */
-#define ADIS16209_GLOB_CMD       0x3E
-
-/* MSC_CTRL */
-
-/* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16209_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
-
-/* Self-test enable */
-#define ADIS16209_MSC_CTRL_SELF_TEST_EN	        BIT(8)
-
-/* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16209_MSC_CTRL_DATA_RDY_EN	        BIT(2)
-
-/* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16209_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
-
-/* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
-#define ADIS16209_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
-
-/* DIAG_STAT */
-
-/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16209_DIAG_STAT_ALARM2        BIT(9)
-
-/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16209_DIAG_STAT_ALARM1        BIT(8)
-
-/* Self-test diagnostic error flag: 1 = error condition, 0 = normal operation */
-#define ADIS16209_DIAG_STAT_SELFTEST_FAIL_BIT	5
-
-/* SPI communications failure */
-#define ADIS16209_DIAG_STAT_SPI_FAIL_BIT	3
-
-/* Flash update failure */
-#define ADIS16209_DIAG_STAT_FLASH_UPT_BIT	2
-
-/* Power supply above 3.625 V */
-#define ADIS16209_DIAG_STAT_POWER_HIGH_BIT	1
-
-/* Power supply below 3.15 V */
-#define ADIS16209_DIAG_STAT_POWER_LOW_BIT	0
-
-/* GLOB_CMD */
-
-#define ADIS16209_GLOB_CMD_SW_RESET	BIT(7)
-#define ADIS16209_GLOB_CMD_CLEAR_STAT	BIT(4)
-#define ADIS16209_GLOB_CMD_FACTORY_CAL	BIT(1)
-
-#define ADIS16209_ERROR_ACTIVE          BIT(14)
-
-#define ADIS16209_SCAN_SUPPLY	0
-#define ADIS16209_SCAN_ACC_X	1
-#define ADIS16209_SCAN_ACC_Y	2
-#define ADIS16209_SCAN_AUX_ADC	3
-#define ADIS16209_SCAN_TEMP	4
-#define ADIS16209_SCAN_INCLI_X	5
-#define ADIS16209_SCAN_INCLI_Y	6
-#define ADIS16209_SCAN_ROT	7
-
-#endif /* SPI_ADIS16209_H_ */
diff --git a/drivers/staging/iio/accel/adis16209_core.c b/drivers/staging/iio/accel/adis16209_core.c
index a599e19..8ff537f 100644
--- a/drivers/staging/iio/accel/adis16209_core.c
+++ b/drivers/staging/iio/accel/adis16209_core.c
@@ -21,7 +21,145 @@
 #include <linux/iio/buffer.h>
 #include <linux/iio/imu/adis.h>
 
-#include "adis16209.h"
+#define ADIS16209_STARTUP_DELAY	220 /* ms */
+
+/* Flash memory write count */
+#define ADIS16209_FLASH_CNT      0x00
+
+/* Output, power supply */
+#define ADIS16209_SUPPLY_OUT     0x02
+
+/* Output, x-axis accelerometer */
+#define ADIS16209_XACCL_OUT      0x04
+
+/* Output, y-axis accelerometer */
+#define ADIS16209_YACCL_OUT      0x06
+
+/* Output, auxiliary ADC input */
+#define ADIS16209_AUX_ADC        0x08
+
+/* Output, temperature */
+#define ADIS16209_TEMP_OUT       0x0A
+
+/* Output, x-axis inclination */
+#define ADIS16209_XINCL_OUT      0x0C
+
+/* Output, y-axis inclination */
+#define ADIS16209_YINCL_OUT      0x0E
+
+/* Output, +/-180 vertical rotational position */
+#define ADIS16209_ROT_OUT        0x10
+
+/* Calibration, x-axis acceleration offset null */
+#define ADIS16209_XACCL_NULL     0x12
+
+/* Calibration, y-axis acceleration offset null */
+#define ADIS16209_YACCL_NULL     0x14
+
+/* Calibration, x-axis inclination offset null */
+#define ADIS16209_XINCL_NULL     0x16
+
+/* Calibration, y-axis inclination offset null */
+#define ADIS16209_YINCL_NULL     0x18
+
+/* Calibration, vertical rotation offset null */
+#define ADIS16209_ROT_NULL       0x1A
+
+/* Alarm 1 amplitude threshold */
+#define ADIS16209_ALM_MAG1       0x20
+
+/* Alarm 2 amplitude threshold */
+#define ADIS16209_ALM_MAG2       0x22
+
+/* Alarm 1, sample period */
+#define ADIS16209_ALM_SMPL1      0x24
+
+/* Alarm 2, sample period */
+#define ADIS16209_ALM_SMPL2      0x26
+
+/* Alarm control */
+#define ADIS16209_ALM_CTRL       0x28
+
+/* Auxiliary DAC data */
+#define ADIS16209_AUX_DAC        0x30
+
+/* General-purpose digital input/output control */
+#define ADIS16209_GPIO_CTRL      0x32
+
+/* Miscellaneous control */
+#define ADIS16209_MSC_CTRL       0x34
+
+/* Internal sample period (rate) control */
+#define ADIS16209_SMPL_PRD       0x36
+
+/* Operation, filter configuration */
+#define ADIS16209_AVG_CNT        0x38
+
+/* Operation, sleep mode control */
+#define ADIS16209_SLP_CNT        0x3A
+
+/* Diagnostics, system status register */
+#define ADIS16209_DIAG_STAT      0x3C
+
+/* Operation, system command register */
+#define ADIS16209_GLOB_CMD       0x3E
+
+/* MSC_CTRL */
+
+/* Self-test at power-on: 1 = disabled, 0 = enabled */
+#define ADIS16209_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
+
+/* Self-test enable */
+#define ADIS16209_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+
+/* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16209_MSC_CTRL_DATA_RDY_EN	        BIT(2)
+
+/* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16209_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
+
+/* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
+#define ADIS16209_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
+
+/* DIAG_STAT */
+
+/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16209_DIAG_STAT_ALARM2        BIT(9)
+
+/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16209_DIAG_STAT_ALARM1        BIT(8)
+
+/* Self-test diagnostic error flag: 1 = error condition, 0 = normal operation */
+#define ADIS16209_DIAG_STAT_SELFTEST_FAIL_BIT	5
+
+/* SPI communications failure */
+#define ADIS16209_DIAG_STAT_SPI_FAIL_BIT	3
+
+/* Flash update failure */
+#define ADIS16209_DIAG_STAT_FLASH_UPT_BIT	2
+
+/* Power supply above 3.625 V */
+#define ADIS16209_DIAG_STAT_POWER_HIGH_BIT	1
+
+/* Power supply below 3.15 V */
+#define ADIS16209_DIAG_STAT_POWER_LOW_BIT	0
+
+/* GLOB_CMD */
+
+#define ADIS16209_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16209_GLOB_CMD_CLEAR_STAT	BIT(4)
+#define ADIS16209_GLOB_CMD_FACTORY_CAL	BIT(1)
+
+#define ADIS16209_ERROR_ACTIVE          BIT(14)
+
+#define ADIS16209_SCAN_SUPPLY	0
+#define ADIS16209_SCAN_ACC_X	1
+#define ADIS16209_SCAN_ACC_Y	2
+#define ADIS16209_SCAN_AUX_ADC	3
+#define ADIS16209_SCAN_TEMP	4
+#define ADIS16209_SCAN_INCLI_X	5
+#define ADIS16209_SCAN_INCLI_Y	6
+#define ADIS16209_SCAN_ROT	7
 
 static const u8 adis16209_addresses[8][1] = {
 	[ADIS16209_SCAN_SUPPLY] = { },
-- 
1.9.1


