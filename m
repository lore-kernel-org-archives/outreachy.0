X-GM-THRID: 6264893373939712000
X-Received: by 10.112.13.40 with SMTP id e8mr4411958lbc.24.1458659245092;
        Tue, 22 Mar 2016 08:07:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.209.78 with SMTP id i75ls814678lfg.66.gmail; Tue, 22 Mar
 2016 08:07:24 -0700 (PDT)
X-Received: by 10.25.160.207 with SMTP id j198mr4517143lfe.4.1458659244333;
        Tue, 22 Mar 2016 08:07:24 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x241.google.com (mail-lb0-x241.google.com. [2a00:1450:4010:c04::241])
        by gmr-mx.google.com with ESMTPS id ai9si1348474lbc.2.2016.03.22.08.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 08:07:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::241 as permitted sender) client-ip=2a00:1450:4010:c04::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::241 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x241.google.com with SMTP id sx8so10474787lbb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 08:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Vq0dnUlrg/LfDJfbsReleZz+FWQNoj62rOrrWGOq4ZI=;
        b=w7XqTKYn896z375GIVbtFwFNEBmQSQgmN4MJft1dB5imI8ChrCOK+8PhSXThYrHmTv
         Xf/TZOb7i0/OkkoCQNKnpDuLyjGLN8nRPubira+VtDryVd7yaGO+xaCSg5W2Q8cXmweZ
         ZoNOlNG+6KK+cCBr0SVxQYoAeVZqq41OQu+hVqCAmZrN5+GPFej8Z/5bFGfZWgjc62U3
         47p75zO+XEs6MxtPSe3JNAehaRZ0kL5DjwCMGIafC3Sonf6Gn26ml8KFHFp8zojJb9Xq
         UvyhB/VrUZWnO3ePDp6z8FuhkEOr4GPmm5JUSjSrxpN7E0hBXRVj9c07+1ERPK0aYCGs
         q6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Vq0dnUlrg/LfDJfbsReleZz+FWQNoj62rOrrWGOq4ZI=;
        b=jIMdNt3rsf2CQCzEXDduhrupDwqlGiJQEKvqXNpK6bwxrgDVg8lB3n6KxO+r2qr/SS
         AvgoulAZhFsBKqFRYojk7GIEacZeSoVhK14C0GULpip10gmaPM+TB7dZ9Lh2aaqDjwnc
         W/G2dA+XPUdwDu1idjkZpM+KYRtZEPpam8q4SyG27bRe8rVpdksIIfCS0zxoyTOMX2N9
         kN0EceJE4CQ25FTUeyrVf2+LLo+fwgbkhEy+lIb2oIpryvjdHlxkDBbp66ToV5s8aB/P
         XELkM7luxenCeD95mkdwbF6GMeTtl8kV8X0/rhdFPGwXwj0pnALL4ztyL3+CdcDISaqs
         PoPw==
X-Gm-Message-State: AD7BkJKzv+OxXO+J2rJ6StI38NbGqEb2ycsVszr3WPHPRcgT0+x2V1fWBA4GDCATNNkSLw==
X-Received: by 10.112.130.74 with SMTP id oc10mr5342113lbb.14.1458659244172;
        Tue, 22 Mar 2016 08:07:24 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id i2sm5181079lfd.43.2016.03.22.08.07.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 08:07:23 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:07:22 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: iio: accel: adis16204: Fix 'line over 80
 characters' warning
Message-ID: <c78cbe4c549698646eddb4d160355c6d8a8ce16a.1458656756.git.sveta.orlik.code@gmail.com>
References: <cover.1458656755.git.sveta.orlik.code@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458656755.git.sveta.orlik.code@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Many of the comments in the same lines with #define
caused checkpatch warning 'line over 80 characters'.

Move all such comments to line before #define.
This style is already used in some other .h files in accel:

Add blank lines after #define to improve readability.

Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
---
 drivers/staging/iio/accel/adis16204.h | 159 +++++++++++++++++++++++++---------
 1 file changed, 118 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16204.h b/drivers/staging/iio/accel/adis16204.h
index 0b23f0b..cfc4038 100644
--- a/drivers/staging/iio/accel/adis16204.h
+++ b/drivers/staging/iio/accel/adis16204.h
@@ -3,53 +3,130 @@
 
 #define ADIS16204_STARTUP_DELAY	220 /* ms */
 
-#define ADIS16204_FLASH_CNT      0x00 /* Flash memory write count */
-#define ADIS16204_SUPPLY_OUT     0x02 /* Output, power supply */
-#define ADIS16204_XACCL_OUT      0x04 /* Output, x-axis accelerometer */
-#define ADIS16204_YACCL_OUT      0x06 /* Output, y-axis accelerometer */
-#define ADIS16204_AUX_ADC        0x08 /* Output, auxiliary ADC input */
-#define ADIS16204_TEMP_OUT       0x0A /* Output, temperature */
-#define ADIS16204_X_PEAK_OUT     0x0C /* Twos complement */
-#define ADIS16204_Y_PEAK_OUT     0x0E /* Twos complement */
-#define ADIS16204_XACCL_NULL     0x10 /* Calibration, x-axis acceleration offset null */
-#define ADIS16204_YACCL_NULL     0x12 /* Calibration, y-axis acceleration offset null */
-#define ADIS16204_XACCL_SCALE    0x14 /* X-axis scale factor calibration register */
-#define ADIS16204_YACCL_SCALE    0x16 /* Y-axis scale factor calibration register */
-#define ADIS16204_XY_RSS_OUT     0x18 /* XY combined acceleration (RSS) */
-#define ADIS16204_XY_PEAK_OUT    0x1A /* Peak, XY combined output (RSS) */
-#define ADIS16204_CAP_BUF_1      0x1C /* Capture buffer output register 1 */
-#define ADIS16204_CAP_BUF_2      0x1E /* Capture buffer output register 2 */
-#define ADIS16204_ALM_MAG1       0x20 /* Alarm 1 amplitude threshold */
-#define ADIS16204_ALM_MAG2       0x22 /* Alarm 2 amplitude threshold */
-#define ADIS16204_ALM_CTRL       0x28 /* Alarm control */
-#define ADIS16204_CAPT_PNTR      0x2A /* Capture register address pointer */
-#define ADIS16204_AUX_DAC        0x30 /* Auxiliary DAC data */
-#define ADIS16204_GPIO_CTRL      0x32 /* General-purpose digital input/output control */
-#define ADIS16204_MSC_CTRL       0x34 /* Miscellaneous control */
-#define ADIS16204_SMPL_PRD       0x36 /* Internal sample period (rate) control */
-#define ADIS16204_AVG_CNT        0x38 /* Operation, filter configuration */
-#define ADIS16204_SLP_CNT        0x3A /* Operation, sleep mode control */
-#define ADIS16204_DIAG_STAT      0x3C /* Diagnostics, system status register */
-#define ADIS16204_GLOB_CMD       0x3E /* Operation, system command register */
+/* Flash memory write count */
+#define ADIS16204_FLASH_CNT      0x00
+
+/* Output, power supply */
+#define ADIS16204_SUPPLY_OUT     0x02
+
+/* Output, x-axis accelerometer */
+#define ADIS16204_XACCL_OUT      0x04
+
+/* Output, y-axis accelerometer */
+#define ADIS16204_YACCL_OUT      0x06
+
+/* Output, auxiliary ADC input */
+#define ADIS16204_AUX_ADC        0x08
+
+/* Output, temperature */
+#define ADIS16204_TEMP_OUT       0x0A
+
+/* Twos complement */
+#define ADIS16204_X_PEAK_OUT     0x0C
+#define ADIS16204_Y_PEAK_OUT     0x0E
+
+/* Calibration, x-axis acceleration offset null */
+#define ADIS16204_XACCL_NULL     0x10
+
+/* Calibration, y-axis acceleration offset null */
+#define ADIS16204_YACCL_NULL     0x12
+
+/* X-axis scale factor calibration register */
+#define ADIS16204_XACCL_SCALE    0x14
+
+/* Y-axis scale factor calibration register */
+#define ADIS16204_YACCL_SCALE    0x16
+
+/* XY combined acceleration (RSS) */
+#define ADIS16204_XY_RSS_OUT     0x18
+
+/* Peak, XY combined output (RSS) */
+#define ADIS16204_XY_PEAK_OUT    0x1A
+
+/* Capture buffer output register 1 */
+#define ADIS16204_CAP_BUF_1      0x1C
+
+/* Capture buffer output register 2 */
+#define ADIS16204_CAP_BUF_2      0x1E
+
+/* Alarm 1 amplitude threshold */
+#define ADIS16204_ALM_MAG1       0x20
+
+/* Alarm 2 amplitude threshold */
+#define ADIS16204_ALM_MAG2       0x22
+
+/* Alarm control */
+#define ADIS16204_ALM_CTRL       0x28
+
+/* Capture register address pointer */
+#define ADIS16204_CAPT_PNTR      0x2A
+
+/* Auxiliary DAC data */
+#define ADIS16204_AUX_DAC        0x30
+
+/* General-purpose digital input/output control */
+#define ADIS16204_GPIO_CTRL      0x32
+
+/* Miscellaneous control */
+#define ADIS16204_MSC_CTRL       0x34
+
+/* Internal sample period (rate) control */
+#define ADIS16204_SMPL_PRD       0x36
+
+/* Operation, filter configuration */
+#define ADIS16204_AVG_CNT        0x38
+
+/* Operation, sleep mode control */
+#define ADIS16204_SLP_CNT        0x3A
+
+/* Diagnostics, system status register */
+#define ADIS16204_DIAG_STAT      0x3C
+
+/* Operation, system command register */
+#define ADIS16204_GLOB_CMD       0x3E
 
 /* MSC_CTRL */
-#define ADIS16204_MSC_CTRL_PWRUP_SELF_TEST	BIT(10) /* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16204_MSC_CTRL_SELF_TEST_EN	        BIT(8)  /* Self-test enable */
-#define ADIS16204_MSC_CTRL_DATA_RDY_EN	        BIT(2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16204_MSC_CTRL_ACTIVE_HIGH	        BIT(1)  /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16204_MSC_CTRL_DATA_RDY_DIO2	BIT(0)  /* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
+
+/* Self-test at power-on: 1 = disabled, 0 = enabled */
+#define ADIS16204_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
+
+/* Self-test enable */
+#define ADIS16204_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+
+/* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16204_MSC_CTRL_DATA_RDY_EN	        BIT(2)
+
+/* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16204_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
+
+/* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
+#define ADIS16204_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
 
 /* DIAG_STAT */
-#define ADIS16204_DIAG_STAT_ALARM2        BIT(9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16204_DIAG_STAT_ALARM1        BIT(8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16204_DIAG_STAT_SELFTEST_FAIL_BIT 5 /* Self-test diagnostic error flag: 1 = error condition,
-						0 = normal operation */
-#define ADIS16204_DIAG_STAT_SPI_FAIL_BIT      3 /* SPI communications failure */
-#define ADIS16204_DIAG_STAT_FLASH_UPT_BIT     2 /* Flash update failure */
-#define ADIS16204_DIAG_STAT_POWER_HIGH_BIT    1 /* Power supply above 3.625 V */
-#define ADIS16204_DIAG_STAT_POWER_LOW_BIT     0 /* Power supply below 2.975 V */
+
+/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16204_DIAG_STAT_ALARM2        BIT(9)
+
+/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16204_DIAG_STAT_ALARM1        BIT(8)
+
+/* Self-test diagnostic error flag: 1 = error condition, 0 = normal operation */
+#define ADIS16204_DIAG_STAT_SELFTEST_FAIL_BIT 5
+
+/* SPI communications failure */
+#define ADIS16204_DIAG_STAT_SPI_FAIL_BIT      3
+
+/* Flash update failure */
+#define ADIS16204_DIAG_STAT_FLASH_UPT_BIT     2
+
+/* Power supply above 3.625 V */
+#define ADIS16204_DIAG_STAT_POWER_HIGH_BIT    1
+
+/* Power supply below 2.975 V */
+#define ADIS16204_DIAG_STAT_POWER_LOW_BIT     0
 
 /* GLOB_CMD */
+
 #define ADIS16204_GLOB_CMD_SW_RESET	BIT(7)
 #define ADIS16204_GLOB_CMD_CLEAR_STAT	BIT(4)
 #define ADIS16204_GLOB_CMD_FACTORY_CAL	BIT(1)
-- 
2.5.0


