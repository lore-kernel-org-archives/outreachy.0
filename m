X-GM-THRID: 6392248705577123840
X-Received: by 10.107.173.70 with SMTP id w67mr1364658ioe.69.1488311380439;
        Tue, 28 Feb 2017 11:49:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls1988584otd.46.gmail; Tue, 28 Feb
 2017 11:49:40 -0800 (PST)
X-Received: by 10.157.37.79 with SMTP id j15mr1363447otd.107.1488311380110;
        Tue, 28 Feb 2017 11:49:40 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h79si174354pfh.2.2017.02.28.11.49.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:49:40 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so2713826pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 11:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q5jE0X3qGeuXAHNedGnThGe/an4ajIzqJ3aOW/jAkCk=;
        b=Pv/W5wDWH9DzrMYaIi8QvGWEhANTCJ3qswpjYTJvS/H+2XfRjPlmOcILcgQTDvHP6q
         BCyf5Nqr1Ut0YMbMo/A6y32UF0sYF3carqeWqWGpvlw/ISeSus+Ben/28xUIUbfy0Wst
         Ecd71t7BdGNtRHtYItwltYXn61WyK+RUvYTf8psHIRTLIB9eOSHRZ81equuJ2ymIbdB1
         bqMiv1CkMrQq13TIsZX2Z1HRxXOU3EuyKwhHvoPXzf4SPIQBlY6siicmKDBP7Ls2PkY3
         9kEaF9dMOmv7OZz5lIQPCGopWm8fpo5ZgB0XPap9XzbldueW0DUg4PGDpeRNrGnYyXp7
         hjNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q5jE0X3qGeuXAHNedGnThGe/an4ajIzqJ3aOW/jAkCk=;
        b=qTN7APepwueQAmtgjk/ARjhkV6TOZ4WLDsuDNL/EdfuYcgfeTPmwGRIuKQprgXL3bQ
         KyLbo+w4E9qdnPNilZpWOGw4ypvnyih1MZktwAit2Nk5E5AHYGYPs+De3h4ZU+qWn4bI
         aZUbzLzzkRn4pmKO79Ylv5wJ8Uh4TZsF9/z9LvuNl2LIYT/p4uOdPy6Avgkk2yBs1kej
         F9o9bwN8OmHJ1fuKZ9t221ectS+89RUl2u37mKqNej9iKtS4q1Jos9N5JDI7vbpEJIHl
         p2vfaEDdP/G5k45G112+uA6szm/Hn7a8+CXq3gxeu/wopBB3TlvdFFtchUd/7VJgpfpd
         L3uw==
X-Gm-Message-State: AMke39n4BaEVNKEcItvu2qfQpsrYeP8rmj2MeDkw4fqaa9Xr+sYB5zOk4sWDJa0filRYcA==
X-Received: by 10.84.209.204 with SMTP id y70mr5090318plh.69.1488311379788;
        Tue, 28 Feb 2017 11:49:39 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z74sm5803856pfd.70.2017.02.28.11.49.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 11:49:38 -0800 (PST)
Date: Wed, 1 Mar 2017 01:19:35 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: iio: adis16201: Move header file content to
 source file
Message-ID: <20170228194935.GA30367@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The contents of the header file are used only by this single
source file. Move content into .c and remove .h.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 v3:
   -Removing endif as it is not needed
   -Changing subject  

 drivers/staging/iio/accel/adis16201.h      | 144 -----------------------------
 drivers/staging/iio/accel/adis16201_core.c | 140 +++++++++++++++++++++++++++-
 2 files changed, 139 insertions(+), 145 deletions(-)
 delete mode 100644 drivers/staging/iio/accel/adis16201.h

diff --git a/drivers/staging/iio/accel/adis16201.h b/drivers/staging/iio/accel/adis16201.h
deleted file mode 100644
index 64844ad..0000000
--- a/drivers/staging/iio/accel/adis16201.h
+++ /dev/null
@@ -1,144 +0,0 @@
-#ifndef SPI_ADIS16201_H_
-#define SPI_ADIS16201_H_
-
-#define ADIS16201_STARTUP_DELAY	220 /* ms */
-
-/* Flash memory write count */
-#define ADIS16201_FLASH_CNT      0x00
-
-/* Output, power supply */
-#define ADIS16201_SUPPLY_OUT     0x02
-
-/* Output, x-axis accelerometer */
-#define ADIS16201_XACCL_OUT      0x04
-
-/* Output, y-axis accelerometer */
-#define ADIS16201_YACCL_OUT      0x06
-
-/* Output, auxiliary ADC input */
-#define ADIS16201_AUX_ADC        0x08
-
-/* Output, temperature */
-#define ADIS16201_TEMP_OUT       0x0A
-
-/* Output, x-axis inclination */
-#define ADIS16201_XINCL_OUT      0x0C
-
-/* Output, y-axis inclination */
-#define ADIS16201_YINCL_OUT      0x0E
-
-/* Calibration, x-axis acceleration offset */
-#define ADIS16201_XACCL_OFFS     0x10
-
-/* Calibration, y-axis acceleration offset */
-#define ADIS16201_YACCL_OFFS     0x12
-
-/* x-axis acceleration scale factor */
-#define ADIS16201_XACCL_SCALE    0x14
-
-/* y-axis acceleration scale factor */
-#define ADIS16201_YACCL_SCALE    0x16
-
-/* Calibration, x-axis inclination offset */
-#define ADIS16201_XINCL_OFFS     0x18
-
-/* Calibration, y-axis inclination offset */
-#define ADIS16201_YINCL_OFFS     0x1A
-
-/* x-axis inclination scale factor */
-#define ADIS16201_XINCL_SCALE    0x1C
-
-/* y-axis inclination scale factor */
-#define ADIS16201_YINCL_SCALE    0x1E
-
-/* Alarm 1 amplitude threshold */
-#define ADIS16201_ALM_MAG1       0x20
-
-/* Alarm 2 amplitude threshold */
-#define ADIS16201_ALM_MAG2       0x22
-
-/* Alarm 1, sample period */
-#define ADIS16201_ALM_SMPL1      0x24
-
-/* Alarm 2, sample period */
-#define ADIS16201_ALM_SMPL2      0x26
-
-/* Alarm control */
-#define ADIS16201_ALM_CTRL       0x28
-
-/* Auxiliary DAC data */
-#define ADIS16201_AUX_DAC        0x30
-
-/* General-purpose digital input/output control */
-#define ADIS16201_GPIO_CTRL      0x32
-
-/* Miscellaneous control */
-#define ADIS16201_MSC_CTRL       0x34
-
-/* Internal sample period (rate) control */
-#define ADIS16201_SMPL_PRD       0x36
-
-/* Operation, filter configuration */
-#define ADIS16201_AVG_CNT        0x38
-
-/* Operation, sleep mode control */
-#define ADIS16201_SLP_CNT        0x3A
-
-/* Diagnostics, system status register */
-#define ADIS16201_DIAG_STAT      0x3C
-
-/* Operation, system command register */
-#define ADIS16201_GLOB_CMD       0x3E
-
-/* MSC_CTRL */
-
-/* Self-test enable */
-#define ADIS16201_MSC_CTRL_SELF_TEST_EN	        BIT(8)
-
-/* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16201_MSC_CTRL_DATA_RDY_EN	        BIT(2)
-
-/* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16201_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
-
-/* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
-#define ADIS16201_MSC_CTRL_DATA_RDY_DIO1	BIT(0)
-
-/* DIAG_STAT */
-
-/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16201_DIAG_STAT_ALARM2        BIT(9)
-
-/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16201_DIAG_STAT_ALARM1        BIT(8)
-
-/* SPI communications failure */
-#define ADIS16201_DIAG_STAT_SPI_FAIL_BIT   3
-
-/* Flash update failure */
-#define ADIS16201_DIAG_STAT_FLASH_UPT_BIT  2
-
-/* Power supply above 3.625 V */
-#define ADIS16201_DIAG_STAT_POWER_HIGH_BIT 1
-
-/* Power supply below 3.15 V */
-#define ADIS16201_DIAG_STAT_POWER_LOW_BIT  0
-
-/* GLOB_CMD */
-
-#define ADIS16201_GLOB_CMD_SW_RESET	BIT(7)
-#define ADIS16201_GLOB_CMD_FACTORY_CAL	BIT(1)
-
-#define ADIS16201_ERROR_ACTIVE          BIT(14)
-
-enum adis16201_scan {
-	ADIS16201_SCAN_ACC_X,
-	ADIS16201_SCAN_ACC_Y,
-	ADIS16201_SCAN_INCLI_X,
-	ADIS16201_SCAN_INCLI_Y,
-	ADIS16201_SCAN_SUPPLY,
-	ADIS16201_SCAN_AUX_ADC,
-	ADIS16201_SCAN_TEMP,
-};
-
-#endif /* SPI_ADIS16201_H_ */
diff --git a/drivers/staging/iio/accel/adis16201_core.c b/drivers/staging/iio/accel/adis16201_core.c
index 7963d4a..d6c8658 100644
--- a/drivers/staging/iio/accel/adis16201_core.c
+++ b/drivers/staging/iio/accel/adis16201_core.c
@@ -20,7 +20,145 @@
 #include <linux/iio/buffer.h>
 #include <linux/iio/imu/adis.h>
 
-#include "adis16201.h"
+#define ADIS16201_STARTUP_DELAY	220 /* ms */
+
+/* Flash memory write count */
+#define ADIS16201_FLASH_CNT      0x00
+
+/* Output, power supply */
+#define ADIS16201_SUPPLY_OUT     0x02
+
+/* Output, x-axis accelerometer */
+#define ADIS16201_XACCL_OUT      0x04
+
+/* Output, y-axis accelerometer */
+#define ADIS16201_YACCL_OUT      0x06
+
+/* Output, auxiliary ADC input */
+#define ADIS16201_AUX_ADC        0x08
+
+/* Output, temperature */
+#define ADIS16201_TEMP_OUT       0x0A
+
+/* Output, x-axis inclination */
+#define ADIS16201_XINCL_OUT      0x0C
+
+/* Output, y-axis inclination */
+#define ADIS16201_YINCL_OUT      0x0E
+
+/* Calibration, x-axis acceleration offset */
+#define ADIS16201_XACCL_OFFS     0x10
+
+/* Calibration, y-axis acceleration offset */
+#define ADIS16201_YACCL_OFFS     0x12
+
+/* x-axis acceleration scale factor */
+#define ADIS16201_XACCL_SCALE    0x14
+
+/* y-axis acceleration scale factor */
+#define ADIS16201_YACCL_SCALE    0x16
+
+/* Calibration, x-axis inclination offset */
+#define ADIS16201_XINCL_OFFS     0x18
+
+/* Calibration, y-axis inclination offset */
+#define ADIS16201_YINCL_OFFS     0x1A
+
+/* x-axis inclination scale factor */
+#define ADIS16201_XINCL_SCALE    0x1C
+
+/* y-axis inclination scale factor */
+#define ADIS16201_YINCL_SCALE    0x1E
+
+/* Alarm 1 amplitude threshold */
+#define ADIS16201_ALM_MAG1       0x20
+
+/* Alarm 2 amplitude threshold */
+#define ADIS16201_ALM_MAG2       0x22
+
+/* Alarm 1, sample period */
+#define ADIS16201_ALM_SMPL1      0x24
+
+/* Alarm 2, sample period */
+#define ADIS16201_ALM_SMPL2      0x26
+
+/* Alarm control */
+#define ADIS16201_ALM_CTRL       0x28
+
+/* Auxiliary DAC data */
+#define ADIS16201_AUX_DAC        0x30
+
+/* General-purpose digital input/output control */
+#define ADIS16201_GPIO_CTRL      0x32
+
+/* Miscellaneous control */
+#define ADIS16201_MSC_CTRL       0x34
+
+/* Internal sample period (rate) control */
+#define ADIS16201_SMPL_PRD       0x36
+
+/* Operation, filter configuration */
+#define ADIS16201_AVG_CNT        0x38
+
+/* Operation, sleep mode control */
+#define ADIS16201_SLP_CNT        0x3A
+
+/* Diagnostics, system status register */
+#define ADIS16201_DIAG_STAT      0x3C
+
+/* Operation, system command register */
+#define ADIS16201_GLOB_CMD       0x3E
+
+/* MSC_CTRL */
+
+/* Self-test enable */
+#define ADIS16201_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+
+/* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16201_MSC_CTRL_DATA_RDY_EN	        BIT(2)
+
+/* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16201_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
+
+/* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
+#define ADIS16201_MSC_CTRL_DATA_RDY_DIO1	BIT(0)
+
+/* DIAG_STAT */
+
+/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16201_DIAG_STAT_ALARM2        BIT(9)
+
+/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16201_DIAG_STAT_ALARM1        BIT(8)
+
+/* SPI communications failure */
+#define ADIS16201_DIAG_STAT_SPI_FAIL_BIT   3
+
+/* Flash update failure */
+#define ADIS16201_DIAG_STAT_FLASH_UPT_BIT  2
+
+/* Power supply above 3.625 V */
+#define ADIS16201_DIAG_STAT_POWER_HIGH_BIT 1
+
+/* Power supply below 3.15 V */
+#define ADIS16201_DIAG_STAT_POWER_LOW_BIT  0
+
+/* GLOB_CMD */
+
+#define ADIS16201_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16201_GLOB_CMD_FACTORY_CAL	BIT(1)
+
+#define ADIS16201_ERROR_ACTIVE          BIT(14)
+
+enum adis16201_scan {
+	ADIS16201_SCAN_ACC_X,
+	ADIS16201_SCAN_ACC_Y,
+	ADIS16201_SCAN_INCLI_X,
+	ADIS16201_SCAN_INCLI_Y,
+	ADIS16201_SCAN_SUPPLY,
+	ADIS16201_SCAN_AUX_ADC,
+	ADIS16201_SCAN_TEMP,
+};
 
 static const u8 adis16201_addresses[] = {
 	[ADIS16201_SCAN_ACC_X] = ADIS16201_XACCL_OFFS,
-- 
2.7.4


