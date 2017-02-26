X-GM-THRID: 6391402747969667072
X-Received: by 10.129.160.83 with SMTP id x80mr4297328ywg.90.1488114415508;
        Sun, 26 Feb 2017 05:06:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.28 with SMTP id j28ls11383304otb.40.gmail; Sun, 26 Feb
 2017 05:06:54 -0800 (PST)
X-Received: by 10.129.4.80 with SMTP id 77mr3991871ywe.161.1488114414938;
        Sun, 26 Feb 2017 05:06:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si2593748pfk.5.2017.02.26.05.06.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 05:06:54 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id p185so2821621pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 05:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=Vl8sRInGCrE1Hn2377rU+tJSZldii6uQhmpkQgvAUts=;
        b=KNoX0qI4sFZ3MDxQWIyT0QPX6xvx89u5dywxxJQNKniOgs61Nhz5oi/pSLYaMtJV9k
         MFU0nd67EL7EUxHabezooRsHtu8hKKW41hZ1+WzP51yxDKv9npgA5utLGa76VRcjUJz7
         u75nkXAxAF+1LZJ8RngJeuf5S5JkUTP+8oQ91omsfnIV2S0Tnx3Pxu6KHOENMV0rCWoR
         ujB4/9YWcWSinGPVsEdYVSZ5L79tK15xuJB2B3bqdgNn7+lATV7EisR9ylyF0ECHW360
         1X50tvlRZlXXlVl4GxM6EVE5C8qks2z+JyZ11vpO/9GD0vgpSeCWE6ga+/pCf64ODov4
         M/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=Vl8sRInGCrE1Hn2377rU+tJSZldii6uQhmpkQgvAUts=;
        b=LyoK/dfdQPg6Is4BKiPiZzfUtlXt7fX0d5VxQ/QlekzGmlLEWBxx6Phjina21SoHPQ
         ZQp/OMIvWeR3NQmtTanwzMJYqFRHIc0FDe1Ec7kbKN1/M5j6uKllOm5Xt3rsfioA7+Ao
         RhReZClMXsXsyH2ILz3plCfrWMyXXGZVIPsX9kOkVYBkSBsimOer1jOY7HeXgyhArY4R
         EfncDugVtH03UclVcDlN+3bijFx5hMiNGyDaJfXroWU4RkJVqK4Yt4yc9t+Fevidt4Gz
         lQU1if+dwSC22KAUkd+y8JegfbxMoNam29vKsz0e3A88yJzx9Y8hka+1mfLEnwP66v2x
         CE4g==
X-Gm-Message-State: AMke39nwTsD6YxFLaK7st5l29pvKkwJOZtbFmGxPBVFBhBwHjd3/qm3LvKv1L+9aqLS5qg==
X-Received: by 10.84.173.228 with SMTP id p91mr15255434plb.121.1488114414612;
        Sun, 26 Feb 2017 05:06:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id u129sm24730527pfb.130.2017.02.26.05.06.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 05:06:54 -0800 (PST)
Message-ID: <58b2d2ee.8760620a.7d454.4bf4@mx.google.com>
X-Google-Original-Message-ID: <20170226130642.GA18067@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:36:42 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: adis16203: Move header file content to source
 file.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

The contents of the header file are used only by this single
source file. Moved content into .c and removed .h

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/iio/accel/adis16203.h      | 125 -----------------------------
 drivers/staging/iio/accel/adis16203_core.c | 121 +++++++++++++++++++++++++++-
 2 files changed, 120 insertions(+), 126 deletions(-)
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
index bd8119a..e51cf1a 100644
--- a/drivers/staging/iio/accel/adis16203_core.c
+++ b/drivers/staging/iio/accel/adis16203_core.c
@@ -20,7 +20,126 @@
 #include <linux/iio/buffer.h>
 #include <linux/iio/imu/adis.h>
 
-#include "adis16203.h"
+#define ADIS16203_STARTUP_DELAY 220 /* ms */
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
+#define ADIS16203_MSC_CTRL_PWRUP_SELF_TEST      BIT(10)
+
+/* Reverses rotation of both inclination outputs */
+#define ADIS16203_MSC_CTRL_REVERSE_ROT_EN       BIT(9)
+
+/* Self-test enable */
+#define ADIS16203_MSC_CTRL_SELF_TEST_EN         BIT(8)
+
+/* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16203_MSC_CTRL_DATA_RDY_EN          BIT(2)
+
+/* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16203_MSC_CTRL_ACTIVE_HIGH          BIT(1)
+
+/* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
+#define ADIS16203_MSC_CTRL_DATA_RDY_DIO1        BIT(0)
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
+#define ADIS16203_GLOB_CMD_SW_RESET     BIT(7)
+#define ADIS16203_GLOB_CMD_CLEAR_STAT   BIT(4)
+#define ADIS16203_GLOB_CMD_FACTORY_CAL  BIT(1)
+
+#define ADIS16203_ERROR_ACTIVE          BIT(14)
+
+enum adis16203_scan {
+	 ADIS16203_SCAN_INCLI_X,
+	 ADIS16203_SCAN_INCLI_Y,
+	 ADIS16203_SCAN_SUPPLY,
+	 ADIS16203_SCAN_AUX_ADC,
+	 ADIS16203_SCAN_TEMP,
+};
 
 #define DRIVER_NAME		"adis16203"
 
-- 
2.9.3


