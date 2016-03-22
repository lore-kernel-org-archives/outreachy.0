X-GM-THRID: 6264893373939712000
X-Received: by 10.112.235.42 with SMTP id uj10mr4630796lbc.22.1458659319900;
        Tue, 22 Mar 2016 08:08:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.52.199 with SMTP id b190ls908018wma.28.canary; Tue, 22 Mar
 2016 08:08:39 -0700 (PDT)
X-Received: by 10.194.239.163 with SMTP id vt3mr4535755wjc.3.1458659319394;
        Tue, 22 Mar 2016 08:08:39 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x241.google.com (mail-lb0-x241.google.com. [2a00:1450:4010:c04::241])
        by gmr-mx.google.com with ESMTPS id k2si1554013lbs.3.2016.03.22.08.08.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 08:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::241 as permitted sender) client-ip=2a00:1450:4010:c04::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::241 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x241.google.com with SMTP id oa3so646799lbb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 08:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LpQ1Jajm+eZd2AwvyU3lJaGkRg7Mw0pN4lgkUJ/8MVA=;
        b=pXeTtwQmzZnasPCKG7P5tlV13Fl8Pg/tuUkjjy9vfOATdbPQgOSU+ZBmgL/YtI3NnE
         TpzrSeq663e5HKKjOEwPjiu7Ry62MbSHsq/tq/tjxS8wd4m6Zr0AshJsFMPuhhQWyTly
         d1M+MiNZi/MSo1O/I3KhKWPXElYYDEk40yNF+zMD8MGUfPCCyjWyUDHNoYLPtVxeJIl4
         zLbLcZpdEe40gcs6KMgSCm8/vX3yRChJrA1AuCLTFn4F89r9vF7Tq60iG/hYQw6UEH6x
         H2EKvZ99RZuVQW6dIQTI160IXTdHsako6opgUKFaWowObYibLuISeqxI3n/HBLPVVCIt
         0J0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LpQ1Jajm+eZd2AwvyU3lJaGkRg7Mw0pN4lgkUJ/8MVA=;
        b=bWIOxyDZ1Sj9+V0EszMNxZzNwUHQlQJj1UzozhO1SMI8rKxsc2SLQVkKKbMMLBHnrU
         3DkIGIhqCS+5wTTaej0oE8+zLo+dL8wsvF+GK30nZUp/VW3qcE8KuqY/iP56/KWeNtwM
         37EDX7Tj5o2BJIA87OIEGjIUbj3rPS95RYv1k+Tj9baV+kd84Gx9nqP2GImqmQE+0kdg
         Zoh9fn691fVEHPnHFfFH/VqNEmSTjb9dH0VJqIF1bln4f51dCNXVAm5S1BJZQG0NweZk
         WiN9C3CAnIq/QdFfi99wJgzF2ZNVdUbJ8bodKwhIgVOLNkC77Z3Yerm2Mepkk5ATaDfp
         23tQ==
X-Gm-Message-State: AD7BkJK+foBL99qyCS9sgjq0dpfllSXuJP+8ieolTW+yn/OMtJfXzqMpDWonI/nPINckAA==
X-Received: by 10.25.160.10 with SMTP id j10mr11060355lfe.31.1458659319227;
        Tue, 22 Mar 2016 08:08:39 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id g14sm5168778lfb.8.2016.03.22.08.08.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 08:08:38 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:08:38 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: iio: accel: adis16201: Fix 'line over 80
 characters' warning
Message-ID: <bf26cbdf95d87440c601ae96aa5b41bf5e0cb924.1458656756.git.sveta.orlik.code@gmail.com>
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
 drivers/staging/iio/accel/adis16201.h | 156 +++++++++++++++++++++++++---------
 1 file changed, 117 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201.h b/drivers/staging/iio/accel/adis16201.h
index e6b8c9a..64844ad 100644
--- a/drivers/staging/iio/accel/adis16201.h
+++ b/drivers/staging/iio/accel/adis16201.h
@@ -3,51 +3,129 @@
 
 #define ADIS16201_STARTUP_DELAY	220 /* ms */
 
-#define ADIS16201_FLASH_CNT      0x00 /* Flash memory write count */
-#define ADIS16201_SUPPLY_OUT     0x02 /* Output, power supply */
-#define ADIS16201_XACCL_OUT      0x04 /* Output, x-axis accelerometer */
-#define ADIS16201_YACCL_OUT      0x06 /* Output, y-axis accelerometer */
-#define ADIS16201_AUX_ADC        0x08 /* Output, auxiliary ADC input */
-#define ADIS16201_TEMP_OUT       0x0A /* Output, temperature */
-#define ADIS16201_XINCL_OUT      0x0C /* Output, x-axis inclination */
-#define ADIS16201_YINCL_OUT      0x0E /* Output, y-axis inclination */
-#define ADIS16201_XACCL_OFFS     0x10 /* Calibration, x-axis acceleration offset */
-#define ADIS16201_YACCL_OFFS     0x12 /* Calibration, y-axis acceleration offset */
-#define ADIS16201_XACCL_SCALE    0x14 /* x-axis acceleration scale factor */
-#define ADIS16201_YACCL_SCALE    0x16 /* y-axis acceleration scale factor */
-#define ADIS16201_XINCL_OFFS     0x18 /* Calibration, x-axis inclination offset */
-#define ADIS16201_YINCL_OFFS     0x1A /* Calibration, y-axis inclination offset */
-#define ADIS16201_XINCL_SCALE    0x1C /* x-axis inclination scale factor */
-#define ADIS16201_YINCL_SCALE    0x1E /* y-axis inclination scale factor */
-#define ADIS16201_ALM_MAG1       0x20 /* Alarm 1 amplitude threshold */
-#define ADIS16201_ALM_MAG2       0x22 /* Alarm 2 amplitude threshold */
-#define ADIS16201_ALM_SMPL1      0x24 /* Alarm 1, sample period */
-#define ADIS16201_ALM_SMPL2      0x26 /* Alarm 2, sample period */
-#define ADIS16201_ALM_CTRL       0x28 /* Alarm control */
-#define ADIS16201_AUX_DAC        0x30 /* Auxiliary DAC data */
-#define ADIS16201_GPIO_CTRL      0x32 /* General-purpose digital input/output control */
-#define ADIS16201_MSC_CTRL       0x34 /* Miscellaneous control */
-#define ADIS16201_SMPL_PRD       0x36 /* Internal sample period (rate) control */
-#define ADIS16201_AVG_CNT        0x38 /* Operation, filter configuration */
-#define ADIS16201_SLP_CNT        0x3A /* Operation, sleep mode control */
-#define ADIS16201_DIAG_STAT      0x3C /* Diagnostics, system status register */
-#define ADIS16201_GLOB_CMD       0x3E /* Operation, system command register */
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
 
 /* MSC_CTRL */
-#define ADIS16201_MSC_CTRL_SELF_TEST_EN	        BIT(8)  /* Self-test enable */
-#define ADIS16201_MSC_CTRL_DATA_RDY_EN	        BIT(2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16201_MSC_CTRL_ACTIVE_HIGH	        BIT(1)  /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16201_MSC_CTRL_DATA_RDY_DIO1	BIT(0)  /* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
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
 
 /* DIAG_STAT */
-#define ADIS16201_DIAG_STAT_ALARM2        BIT(9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16201_DIAG_STAT_ALARM1        BIT(8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16201_DIAG_STAT_SPI_FAIL_BIT   3 /* SPI communications failure */
-#define ADIS16201_DIAG_STAT_FLASH_UPT_BIT  2 /* Flash update failure */
-#define ADIS16201_DIAG_STAT_POWER_HIGH_BIT 1 /* Power supply above 3.625 V */
-#define ADIS16201_DIAG_STAT_POWER_LOW_BIT  0 /* Power supply below 3.15 V */
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
 
 /* GLOB_CMD */
+
 #define ADIS16201_GLOB_CMD_SW_RESET	BIT(7)
 #define ADIS16201_GLOB_CMD_FACTORY_CAL	BIT(1)
 
-- 
2.5.0


