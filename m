X-GM-THRID: 6264893373939712000
X-Received: by 10.112.145.225 with SMTP id sx1mr4551753lbb.23.1458659285458;
        Tue, 22 Mar 2016 08:08:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.170.148 with SMTP id t142ls886919wme.10.canary; Tue, 22 Mar
 2016 08:08:05 -0700 (PDT)
X-Received: by 10.28.194.212 with SMTP id s203mr2229710wmf.3.1458659285077;
        Tue, 22 Mar 2016 08:08:05 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x243.google.com (mail-lb0-x243.google.com. [2a00:1450:4010:c04::243])
        by gmr-mx.google.com with ESMTPS id to3si1197713lbb.1.2016.03.22.08.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 08:08:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) client-ip=2a00:1450:4010:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x243.google.com with SMTP id vk4so15314235lbb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 08:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=smeifmhi9KSJInb/OOisgy/U/8/Y/+YnoGYFZYjjEGs=;
        b=N32A+xTE8ed+9Mkiw2hZOFhhRpkm5H26a2A4lJ4QFx2Oq0E8Q8FNFbzv1mpVN3B/A6
         +9F8g6iWKasrsNWnBxGAg9baBP2293Yz1eSV0kRK/Vsin8kC5VQOmXPB2xnE3z0HdW91
         Ij0ktnzUmEok3L42Z7zALHNBUhLjWOPC7m0qPoHXm6bRALBgJ/fDR9T0I/sT+dl+yazQ
         ExMdG6Qi0SbAlSkvZmuW5dyH37FTkq52rWVNFluXKqTlWdCEdvofsrVzlhZBCWOfiATj
         Nb9nhMSgGFoL9Tc9TgcZADzW0ZOw7Yk0RgEHJWIYLCtGGzCY9Cbefhf8idPxyj+OcGUV
         8A5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=smeifmhi9KSJInb/OOisgy/U/8/Y/+YnoGYFZYjjEGs=;
        b=GhnrcuRsByhmJafbcOfrVywWU+EpzjZbmKgN+Q0yWNeWjBM3qPBzEIcUoTGBT9xpm7
         XMJe2NvqLfQGiQwPW96ljCR+pLmoNhVuSo+tVPLyCWpU65k+XfTMxsLZ3thwCfG9ZWpi
         Sl0GnYde0O2+9/yaa0n9JkMAzhAOiM/oafoa9lIlFBc+YzBWNDiEoi0L/kQnHOkiLq0v
         sVTWwdMAV0VxLC1i/rJ4NVz3YOlq0oP2SZtEkKJF09KE/xfxzHoxrIgCjmSqvB2zPPr7
         etlKArj10WLnYjVpvLN/U7v3RFMBa8uGMcwSzQT8nFj9rqC995DLeRrfSYeCQGKzQWyX
         6IsQ==
X-Gm-Message-State: AD7BkJKOKCaDG68LnGhO71cTTNrbo01dXdqTZDMFzkA2y4uxKbpXJXRAKdsf1Ad/VmiKGg==
X-Received: by 10.25.153.15 with SMTP id b15mr13588901lfe.136.1458659284876;
        Tue, 22 Mar 2016 08:08:04 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id w6sm5265766lbo.31.2016.03.22.08.08.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 08:08:03 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:08:03 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: iio: accel: adis16203: Fix 'line over 80
 characters' warning
Message-ID: <7c752c26b8c759427483e18deffb335887122520.1458656756.git.sveta.orlik.code@gmail.com>
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
 drivers/staging/iio/accel/adis16203.h | 132 +++++++++++++++++++++++++---------
 1 file changed, 99 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16203.h b/drivers/staging/iio/accel/adis16203.h
index 6426e38..b483e4e 100644
--- a/drivers/staging/iio/accel/adis16203.h
+++ b/drivers/staging/iio/accel/adis16203.h
@@ -3,45 +3,111 @@
 
 #define ADIS16203_STARTUP_DELAY	220 /* ms */
 
-#define ADIS16203_FLASH_CNT      0x00 /* Flash memory write count */
-#define ADIS16203_SUPPLY_OUT     0x02 /* Output, power supply */
-#define ADIS16203_AUX_ADC        0x08 /* Output, auxiliary ADC input */
-#define ADIS16203_TEMP_OUT       0x0A /* Output, temperature */
-#define ADIS16203_XINCL_OUT      0x0C /* Output, x-axis inclination */
-#define ADIS16203_YINCL_OUT      0x0E /* Output, y-axis inclination */
-#define ADIS16203_INCL_NULL      0x18 /* Incline null calibration */
-#define ADIS16203_ALM_MAG1       0x20 /* Alarm 1 amplitude threshold */
-#define ADIS16203_ALM_MAG2       0x22 /* Alarm 2 amplitude threshold */
-#define ADIS16203_ALM_SMPL1      0x24 /* Alarm 1, sample period */
-#define ADIS16203_ALM_SMPL2      0x26 /* Alarm 2, sample period */
-#define ADIS16203_ALM_CTRL       0x28 /* Alarm control */
-#define ADIS16203_AUX_DAC        0x30 /* Auxiliary DAC data */
-#define ADIS16203_GPIO_CTRL      0x32 /* General-purpose digital input/output control */
-#define ADIS16203_MSC_CTRL       0x34 /* Miscellaneous control */
-#define ADIS16203_SMPL_PRD       0x36 /* Internal sample period (rate) control */
-#define ADIS16203_AVG_CNT        0x38 /* Operation, filter configuration */
-#define ADIS16203_SLP_CNT        0x3A /* Operation, sleep mode control */
-#define ADIS16203_DIAG_STAT      0x3C /* Diagnostics, system status register */
-#define ADIS16203_GLOB_CMD       0x3E /* Operation, system command register */
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
 
 /* MSC_CTRL */
-#define ADIS16203_MSC_CTRL_PWRUP_SELF_TEST	BIT(10) /* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16203_MSC_CTRL_REVERSE_ROT_EN	BIT(9)  /* Reverses rotation of both inclination outputs */
-#define ADIS16203_MSC_CTRL_SELF_TEST_EN	        BIT(8)  /* Self-test enable */
-#define ADIS16203_MSC_CTRL_DATA_RDY_EN	        BIT(2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16203_MSC_CTRL_ACTIVE_HIGH	        BIT(1)  /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16203_MSC_CTRL_DATA_RDY_DIO1	BIT(0)  /* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
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
 
 /* DIAG_STAT */
-#define ADIS16203_DIAG_STAT_ALARM2        BIT(9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16203_DIAG_STAT_ALARM1        BIT(8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16203_DIAG_STAT_SELFTEST_FAIL_BIT 5 /* Self-test diagnostic error flag */
-#define ADIS16203_DIAG_STAT_SPI_FAIL_BIT      3 /* SPI communications failure */
-#define ADIS16203_DIAG_STAT_FLASH_UPT_BIT     2 /* Flash update failure */
-#define ADIS16203_DIAG_STAT_POWER_HIGH_BIT    1 /* Power supply above 3.625 V */
-#define ADIS16203_DIAG_STAT_POWER_LOW_BIT     0 /* Power supply below 3.15 V */
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
 
 /* GLOB_CMD */
+
 #define ADIS16203_GLOB_CMD_SW_RESET	BIT(7)
 #define ADIS16203_GLOB_CMD_CLEAR_STAT	BIT(4)
 #define ADIS16203_GLOB_CMD_FACTORY_CAL	BIT(1)
-- 
2.5.0


