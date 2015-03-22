X-GM-THRID: 9605342035968
X-Received: by 10.112.242.7 with SMTP id wm7mr11882421lbc.1.1427048611014;
        Sun, 22 Mar 2015 11:23:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.164 with SMTP id an4ls614485lac.19.gmail; Sun, 22 Mar
 2015 11:23:30 -0700 (PDT)
X-Received: by 10.152.45.7 with SMTP id i7mr14833505lam.9.1427048610465;
        Sun, 22 Mar 2015 11:23:30 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id cl5si304833wib.3.2015.03.22.11.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:23:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id k59so121073028wet.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/Y1bLAGYy9LLA1JPRJ1w4/VtHDWmkTFOC4ADYjRPhVM=;
        b=w0dUaT2Reo2jsAt02kqJ/DsjdsjVjAqisYIK4p7LdtscI786iTFxGSz45byVpFdLq0
         mefx4guyBliS+Fw6O+ZOfKPqu+yJqeIkruGEikZVM6ocvlPJPSoy9GCHgAAEj3TZriqt
         YGW1aifrF590Szkhm+nqjsq7WF5RiBL65mtlm+e/nNu4tQbJOmsRXR+yk+ykcQZfvolS
         Fu9Zd8HB3gwhiSwgL3jrjI/VrPxQg5QEZxjIQRAWhIvFcBspBDv2Qd74PFc3hypyIf+R
         6Gi1+xjTOsWflYaB56j4iJaQ+4tnHbTWPjScMtLpo6N8bNzAoPngzq0trLrO7v9gYBuR
         Fvcw==
X-Received: by 10.180.78.136 with SMTP id b8mr13425942wix.6.1427048610374;
        Sun, 22 Mar 2015 11:23:30 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.88])
        by mx.google.com with ESMTPSA id m9sm7613792wiz.24.2015.03.22.11.23.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:23:29 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id B3C3DC1FBB; Sun, 22 Mar 2015 21:23:26 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/2] Staging: iio: use the BIT macro in .h files
Date: Sun, 22 Mar 2015 21:23:23 +0300
Message-Id: <1427048603-7094-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427048268-6999-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427048268-6999-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace bit shifting on 1, 2, and 3 with the BIT(x) macro.
Issue addressed by checkpatch.pl with --strict flag.

This was done with the help of Coccninelle:

@r1@
constant int g;
@@
(
0<<g
|
1<<g
|
2<<g
|
3<<g
)

@script:python b@
g2 <<r1.g;
y;
@@
coccinelle.y = int(g2) + 1

@c@
constant int r1.g;
identifier b.y;
@@
(
-(1 << g)
+BIT(g)
|
-(0 << g)
+ 0
|
-(2 << g)
+BIT(y)
|
-(3 << g)
+(BIT(y)| BIT(g))
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/accel/adis16201.h | 18 ++++++++--------
 drivers/staging/iio/accel/adis16203.h | 24 ++++++++++-----------
 drivers/staging/iio/accel/adis16204.h | 22 +++++++++----------
 drivers/staging/iio/accel/adis16209.h | 22 +++++++++----------
 drivers/staging/iio/accel/adis16220.h | 40 +++++++++++++++++------------------
 drivers/staging/iio/accel/adis16240.h | 30 +++++++++++++-------------
 drivers/staging/iio/adc/ad7280a.h     |  8 +++----
 7 files changed, 82 insertions(+), 82 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201.h b/drivers/staging/iio/accel/adis16201.h
index 8747de5..e6b8c9a 100644
--- a/drivers/staging/iio/accel/adis16201.h
+++ b/drivers/staging/iio/accel/adis16201.h
@@ -34,24 +34,24 @@
 #define ADIS16201_GLOB_CMD       0x3E /* Operation, system command register */
 
 /* MSC_CTRL */
-#define ADIS16201_MSC_CTRL_SELF_TEST_EN	        (1 << 8)  /* Self-test enable */
-#define ADIS16201_MSC_CTRL_DATA_RDY_EN	        (1 << 2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16201_MSC_CTRL_ACTIVE_HIGH	        (1 << 1)  /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16201_MSC_CTRL_DATA_RDY_DIO1	(1 << 0)  /* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
+#define ADIS16201_MSC_CTRL_SELF_TEST_EN	        BIT(8)  /* Self-test enable */
+#define ADIS16201_MSC_CTRL_DATA_RDY_EN	        BIT(2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16201_MSC_CTRL_ACTIVE_HIGH	        BIT(1)  /* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16201_MSC_CTRL_DATA_RDY_DIO1	BIT(0)  /* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
 
 /* DIAG_STAT */
-#define ADIS16201_DIAG_STAT_ALARM2        (1<<9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16201_DIAG_STAT_ALARM1        (1<<8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16201_DIAG_STAT_ALARM2        BIT(9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16201_DIAG_STAT_ALARM1        BIT(8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
 #define ADIS16201_DIAG_STAT_SPI_FAIL_BIT   3 /* SPI communications failure */
 #define ADIS16201_DIAG_STAT_FLASH_UPT_BIT  2 /* Flash update failure */
 #define ADIS16201_DIAG_STAT_POWER_HIGH_BIT 1 /* Power supply above 3.625 V */
 #define ADIS16201_DIAG_STAT_POWER_LOW_BIT  0 /* Power supply below 3.15 V */
 
 /* GLOB_CMD */
-#define ADIS16201_GLOB_CMD_SW_RESET	(1<<7)
-#define ADIS16201_GLOB_CMD_FACTORY_CAL	(1<<1)
+#define ADIS16201_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16201_GLOB_CMD_FACTORY_CAL	BIT(1)
 
-#define ADIS16201_ERROR_ACTIVE          (1<<14)
+#define ADIS16201_ERROR_ACTIVE          BIT(14)
 
 enum adis16201_scan {
 	ADIS16201_SCAN_ACC_X,
diff --git a/drivers/staging/iio/accel/adis16203.h b/drivers/staging/iio/accel/adis16203.h
index acc688d..6426e38 100644
--- a/drivers/staging/iio/accel/adis16203.h
+++ b/drivers/staging/iio/accel/adis16203.h
@@ -25,16 +25,16 @@
 #define ADIS16203_GLOB_CMD       0x3E /* Operation, system command register */
 
 /* MSC_CTRL */
-#define ADIS16203_MSC_CTRL_PWRUP_SELF_TEST	(1 << 10) /* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16203_MSC_CTRL_REVERSE_ROT_EN	(1 << 9)  /* Reverses rotation of both inclination outputs */
-#define ADIS16203_MSC_CTRL_SELF_TEST_EN	        (1 << 8)  /* Self-test enable */
-#define ADIS16203_MSC_CTRL_DATA_RDY_EN	        (1 << 2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16203_MSC_CTRL_ACTIVE_HIGH	        (1 << 1)  /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16203_MSC_CTRL_DATA_RDY_DIO1	(1 << 0)  /* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
+#define ADIS16203_MSC_CTRL_PWRUP_SELF_TEST	BIT(10) /* Self-test at power-on: 1 = disabled, 0 = enabled */
+#define ADIS16203_MSC_CTRL_REVERSE_ROT_EN	BIT(9)  /* Reverses rotation of both inclination outputs */
+#define ADIS16203_MSC_CTRL_SELF_TEST_EN	        BIT(8)  /* Self-test enable */
+#define ADIS16203_MSC_CTRL_DATA_RDY_EN	        BIT(2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16203_MSC_CTRL_ACTIVE_HIGH	        BIT(1)  /* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16203_MSC_CTRL_DATA_RDY_DIO1	BIT(0)  /* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
 
 /* DIAG_STAT */
-#define ADIS16203_DIAG_STAT_ALARM2        (1<<9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16203_DIAG_STAT_ALARM1        (1<<8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16203_DIAG_STAT_ALARM2        BIT(9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16203_DIAG_STAT_ALARM1        BIT(8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
 #define ADIS16203_DIAG_STAT_SELFTEST_FAIL_BIT 5 /* Self-test diagnostic error flag */
 #define ADIS16203_DIAG_STAT_SPI_FAIL_BIT      3 /* SPI communications failure */
 #define ADIS16203_DIAG_STAT_FLASH_UPT_BIT     2 /* Flash update failure */
@@ -42,11 +42,11 @@
 #define ADIS16203_DIAG_STAT_POWER_LOW_BIT     0 /* Power supply below 3.15 V */
 
 /* GLOB_CMD */
-#define ADIS16203_GLOB_CMD_SW_RESET	(1<<7)
-#define ADIS16203_GLOB_CMD_CLEAR_STAT	(1<<4)
-#define ADIS16203_GLOB_CMD_FACTORY_CAL	(1<<1)
+#define ADIS16203_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16203_GLOB_CMD_CLEAR_STAT	BIT(4)
+#define ADIS16203_GLOB_CMD_FACTORY_CAL	BIT(1)
 
-#define ADIS16203_ERROR_ACTIVE          (1<<14)
+#define ADIS16203_ERROR_ACTIVE          BIT(14)
 
 enum adis16203_scan {
 	ADIS16203_SCAN_INCLI_X,
diff --git a/drivers/staging/iio/accel/adis16204.h b/drivers/staging/iio/accel/adis16204.h
index 9ff950c..0b23f0b 100644
--- a/drivers/staging/iio/accel/adis16204.h
+++ b/drivers/staging/iio/accel/adis16204.h
@@ -33,15 +33,15 @@
 #define ADIS16204_GLOB_CMD       0x3E /* Operation, system command register */
 
 /* MSC_CTRL */
-#define ADIS16204_MSC_CTRL_PWRUP_SELF_TEST	(1 << 10) /* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16204_MSC_CTRL_SELF_TEST_EN	        (1 << 8)  /* Self-test enable */
-#define ADIS16204_MSC_CTRL_DATA_RDY_EN	        (1 << 2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16204_MSC_CTRL_ACTIVE_HIGH	        (1 << 1)  /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16204_MSC_CTRL_DATA_RDY_DIO2	(1 << 0)  /* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
+#define ADIS16204_MSC_CTRL_PWRUP_SELF_TEST	BIT(10) /* Self-test at power-on: 1 = disabled, 0 = enabled */
+#define ADIS16204_MSC_CTRL_SELF_TEST_EN	        BIT(8)  /* Self-test enable */
+#define ADIS16204_MSC_CTRL_DATA_RDY_EN	        BIT(2)  /* Data-ready enable: 1 = enabled, 0 = disabled */
+#define ADIS16204_MSC_CTRL_ACTIVE_HIGH	        BIT(1)  /* Data-ready polarity: 1 = active high, 0 = active low */
+#define ADIS16204_MSC_CTRL_DATA_RDY_DIO2	BIT(0)  /* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
 
 /* DIAG_STAT */
-#define ADIS16204_DIAG_STAT_ALARM2        (1<<9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16204_DIAG_STAT_ALARM1        (1<<8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16204_DIAG_STAT_ALARM2        BIT(9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+#define ADIS16204_DIAG_STAT_ALARM1        BIT(8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
 #define ADIS16204_DIAG_STAT_SELFTEST_FAIL_BIT 5 /* Self-test diagnostic error flag: 1 = error condition,
 						0 = normal operation */
 #define ADIS16204_DIAG_STAT_SPI_FAIL_BIT      3 /* SPI communications failure */
@@ -50,11 +50,11 @@
 #define ADIS16204_DIAG_STAT_POWER_LOW_BIT     0 /* Power supply below 2.975 V */
 
 /* GLOB_CMD */
-#define ADIS16204_GLOB_CMD_SW_RESET	(1<<7)
-#define ADIS16204_GLOB_CMD_CLEAR_STAT	(1<<4)
-#define ADIS16204_GLOB_CMD_FACTORY_CAL	(1<<1)
+#define ADIS16204_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16204_GLOB_CMD_CLEAR_STAT	BIT(4)
+#define ADIS16204_GLOB_CMD_FACTORY_CAL	BIT(1)
 
-#define ADIS16204_ERROR_ACTIVE          (1<<14)
+#define ADIS16204_ERROR_ACTIVE          BIT(14)
 
 enum adis16204_scan {
 	ADIS16204_SCAN_ACC_X,
diff --git a/drivers/staging/iio/accel/adis16209.h b/drivers/staging/iio/accel/adis16209.h
index ad3945a..813698d 100644
--- a/drivers/staging/iio/accel/adis16209.h
+++ b/drivers/staging/iio/accel/adis16209.h
@@ -60,21 +60,21 @@
 
 /* MSC_CTRL */
 /* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16209_MSC_CTRL_PWRUP_SELF_TEST	(1 << 10)
+#define ADIS16209_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
 /* Self-test enable */
-#define ADIS16209_MSC_CTRL_SELF_TEST_EN	        (1 << 8)
+#define ADIS16209_MSC_CTRL_SELF_TEST_EN	        BIT(8)
 /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16209_MSC_CTRL_DATA_RDY_EN	        (1 << 2)
+#define ADIS16209_MSC_CTRL_DATA_RDY_EN	        BIT(2)
 /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16209_MSC_CTRL_ACTIVE_HIGH	        (1 << 1)
+#define ADIS16209_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
 /* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
-#define ADIS16209_MSC_CTRL_DATA_RDY_DIO2	(1 << 0)
+#define ADIS16209_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
 
 /* DIAG_STAT */
 /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16209_DIAG_STAT_ALARM2        (1<<9)
+#define ADIS16209_DIAG_STAT_ALARM2        BIT(9)
 /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16209_DIAG_STAT_ALARM1        (1<<8)
+#define ADIS16209_DIAG_STAT_ALARM1        BIT(8)
 /* Self-test diagnostic error flag: 1 = error condition, 0 = normal operation */
 #define ADIS16209_DIAG_STAT_SELFTEST_FAIL_BIT	5
 /* SPI communications failure */
@@ -87,11 +87,11 @@
 #define ADIS16209_DIAG_STAT_POWER_LOW_BIT	0
 
 /* GLOB_CMD */
-#define ADIS16209_GLOB_CMD_SW_RESET	(1<<7)
-#define ADIS16209_GLOB_CMD_CLEAR_STAT	(1<<4)
-#define ADIS16209_GLOB_CMD_FACTORY_CAL	(1<<1)
+#define ADIS16209_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16209_GLOB_CMD_CLEAR_STAT	BIT(4)
+#define ADIS16209_GLOB_CMD_FACTORY_CAL	BIT(1)
 
-#define ADIS16209_ERROR_ACTIVE          (1<<14)
+#define ADIS16209_ERROR_ACTIVE          BIT(14)
 
 #define ADIS16209_SCAN_SUPPLY	0
 #define ADIS16209_SCAN_ACC_X	1
diff --git a/drivers/staging/iio/accel/adis16220.h b/drivers/staging/iio/accel/adis16220.h
index a894ad7..eab8633 100644
--- a/drivers/staging/iio/accel/adis16220.h
+++ b/drivers/staging/iio/accel/adis16220.h
@@ -71,35 +71,35 @@
 #define ADIS16220_CAPTURE_SIZE  2048
 
 /* MSC_CTRL */
-#define ADIS16220_MSC_CTRL_SELF_TEST_EN	        (1 << 8)
-#define ADIS16220_MSC_CTRL_POWER_SUP_COM_AIN1	(1 << 1)
-#define ADIS16220_MSC_CTRL_POWER_SUP_COM_AIN2	(1 << 0)
+#define ADIS16220_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+#define ADIS16220_MSC_CTRL_POWER_SUP_COM_AIN1	BIT(1)
+#define ADIS16220_MSC_CTRL_POWER_SUP_COM_AIN2	BIT(0)
 
 /* DIO_CTRL */
-#define ADIS16220_MSC_CTRL_DIO2_BUSY_IND     (3<<4)
-#define ADIS16220_MSC_CTRL_DIO1_BUSY_IND     (3<<2)
-#define ADIS16220_MSC_CTRL_DIO2_ACT_HIGH     (1<<1)
-#define ADIS16220_MSC_CTRL_DIO1_ACT_HIGH     (1<<0)
+#define ADIS16220_MSC_CTRL_DIO2_BUSY_IND     (BIT(5) | BIT(4))
+#define ADIS16220_MSC_CTRL_DIO1_BUSY_IND     (BIT(3) | BIT(2))
+#define ADIS16220_MSC_CTRL_DIO2_ACT_HIGH     BIT(1)
+#define ADIS16220_MSC_CTRL_DIO1_ACT_HIGH     BIT(0)
 
 /* DIAG_STAT */
 /* AIN2 sample > ALM_MAG2 */
-#define ADIS16220_DIAG_STAT_ALM_MAG2    (1<<14)
+#define ADIS16220_DIAG_STAT_ALM_MAG2    BIT(14)
 /* AIN1 sample > ALM_MAG1 */
-#define ADIS16220_DIAG_STAT_ALM_MAG1    (1<<13)
+#define ADIS16220_DIAG_STAT_ALM_MAG1    BIT(13)
 /* Acceleration sample > ALM_MAGA */
-#define ADIS16220_DIAG_STAT_ALM_MAGA    (1<<12)
+#define ADIS16220_DIAG_STAT_ALM_MAGA    BIT(12)
 /* Error condition programmed into ALM_MAGS[11:0] and ALM_CTRL[5:4] is true */
-#define ADIS16220_DIAG_STAT_ALM_MAGS    (1<<11)
+#define ADIS16220_DIAG_STAT_ALM_MAGS    BIT(11)
 /* |Peak value in AIN2 data capture| > ALM_MAG2 */
-#define ADIS16220_DIAG_STAT_PEAK_AIN2   (1<<10)
+#define ADIS16220_DIAG_STAT_PEAK_AIN2   BIT(10)
 /* |Peak value in AIN1 data capture| > ALM_MAG1 */
-#define ADIS16220_DIAG_STAT_PEAK_AIN1   (1<<9)
+#define ADIS16220_DIAG_STAT_PEAK_AIN1   BIT(9)
 /* |Peak value in acceleration data capture| > ALM_MAGA */
-#define ADIS16220_DIAG_STAT_PEAK_ACCEL  (1<<8)
+#define ADIS16220_DIAG_STAT_PEAK_ACCEL  BIT(8)
 /* Data ready, capture complete */
-#define ADIS16220_DIAG_STAT_DATA_RDY    (1<<7)
-#define ADIS16220_DIAG_STAT_FLASH_CHK	(1<<6)
-#define ADIS16220_DIAG_STAT_SELF_TEST	(1<<5)
+#define ADIS16220_DIAG_STAT_DATA_RDY    BIT(7)
+#define ADIS16220_DIAG_STAT_FLASH_CHK	BIT(6)
+#define ADIS16220_DIAG_STAT_SELF_TEST	BIT(5)
 /* Capture period violation/interruption */
 #define ADIS16220_DIAG_STAT_VIOLATION_BIT	4
 /* SPI communications failure */
@@ -112,9 +112,9 @@
 #define ADIS16220_DIAG_STAT_POWER_LOW_BIT	0
 
 /* GLOB_CMD */
-#define ADIS16220_GLOB_CMD_SW_RESET	(1<<7)
-#define ADIS16220_GLOB_CMD_SELF_TEST	(1<<2)
-#define ADIS16220_GLOB_CMD_PWR_DOWN	(1<<1)
+#define ADIS16220_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16220_GLOB_CMD_SELF_TEST	BIT(2)
+#define ADIS16220_GLOB_CMD_PWR_DOWN	BIT(1)
 
 #define ADIS16220_MAX_TX 2048
 #define ADIS16220_MAX_RX 2048
diff --git a/drivers/staging/iio/accel/adis16240.h b/drivers/staging/iio/accel/adis16240.h
index d442d49..66b5ad2 100644
--- a/drivers/staging/iio/accel/adis16240.h
+++ b/drivers/staging/iio/accel/adis16240.h
@@ -74,31 +74,31 @@
 
 /* MSC_CTRL */
 /* Enables sum-of-squares output (XYZPEAK_OUT) */
-#define ADIS16240_MSC_CTRL_XYZPEAK_OUT_EN	(1 << 15)
+#define ADIS16240_MSC_CTRL_XYZPEAK_OUT_EN	BIT(15)
 /* Enables peak tracking output (XPEAK_OUT, YPEAK_OUT, and ZPEAK_OUT) */
-#define ADIS16240_MSC_CTRL_X_Y_ZPEAK_OUT_EN	(1 << 14)
+#define ADIS16240_MSC_CTRL_X_Y_ZPEAK_OUT_EN	BIT(14)
 /* Self-test enable: 1 = apply electrostatic force, 0 = disabled */
-#define ADIS16240_MSC_CTRL_SELF_TEST_EN	        (1 << 8)
+#define ADIS16240_MSC_CTRL_SELF_TEST_EN	        BIT(8)
 /* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16240_MSC_CTRL_DATA_RDY_EN	        (1 << 2)
+#define ADIS16240_MSC_CTRL_DATA_RDY_EN	        BIT(2)
 /* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16240_MSC_CTRL_ACTIVE_HIGH	        (1 << 1)
+#define ADIS16240_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
 /* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
-#define ADIS16240_MSC_CTRL_DATA_RDY_DIO2	(1 << 0)
+#define ADIS16240_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
 
 /* DIAG_STAT */
 /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16240_DIAG_STAT_ALARM2      (1<<9)
+#define ADIS16240_DIAG_STAT_ALARM2      BIT(9)
 /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16240_DIAG_STAT_ALARM1      (1<<8)
+#define ADIS16240_DIAG_STAT_ALARM1      BIT(8)
 /* Capture buffer full: 1 = capture buffer is full */
-#define ADIS16240_DIAG_STAT_CPT_BUF_FUL (1<<7)
+#define ADIS16240_DIAG_STAT_CPT_BUF_FUL BIT(7)
 /* Flash test, checksum flag: 1 = mismatch, 0 = match */
-#define ADIS16240_DIAG_STAT_CHKSUM      (1<<6)
+#define ADIS16240_DIAG_STAT_CHKSUM      BIT(6)
 /* Power-on, self-test flag: 1 = failure, 0 = pass */
 #define ADIS16240_DIAG_STAT_PWRON_FAIL_BIT  5
 /* Power-on self-test: 1 = in-progress, 0 = complete */
-#define ADIS16240_DIAG_STAT_PWRON_BUSY  (1<<4)
+#define ADIS16240_DIAG_STAT_PWRON_BUSY  BIT(4)
 /* SPI communications failure */
 #define ADIS16240_DIAG_STAT_SPI_FAIL_BIT	3
 /* Flash update failure */
@@ -109,11 +109,11 @@
 #define ADIS16240_DIAG_STAT_POWER_LOW_BIT	0
 
 /* GLOB_CMD */
-#define ADIS16240_GLOB_CMD_RESUME	(1<<8)
-#define ADIS16240_GLOB_CMD_SW_RESET	(1<<7)
-#define ADIS16240_GLOB_CMD_STANDBY	(1<<2)
+#define ADIS16240_GLOB_CMD_RESUME	BIT(8)
+#define ADIS16240_GLOB_CMD_SW_RESET	BIT(7)
+#define ADIS16240_GLOB_CMD_STANDBY	BIT(2)
 
-#define ADIS16240_ERROR_ACTIVE          (1<<14)
+#define ADIS16240_ERROR_ACTIVE          BIT(14)
 
 /* At the moment triggers are only used for ring buffer
  * filling. This may change!
diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
index 20400b0..732347a 100644
--- a/drivers/staging/iio/adc/ad7280a.h
+++ b/drivers/staging/iio/adc/ad7280a.h
@@ -23,10 +23,10 @@
 #define AD7280A_CONV_AVG_4			2
 #define AD7280A_CONV_AVG_8			3
 
-#define AD7280A_ALERT_REMOVE_VIN5		(1 << 2)
-#define AD7280A_ALERT_REMOVE_VIN4_VIN5		(2 << 2)
-#define AD7280A_ALERT_REMOVE_AUX5		(1 << 0)
-#define AD7280A_ALERT_REMOVE_AUX4_AUX5		(2 << 0)
+#define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
+#define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
+#define AD7280A_ALERT_REMOVE_AUX5		BIT(0)
+#define AD7280A_ALERT_REMOVE_AUX4_AUX5		BIT(1)
 
 struct ad7280_platform_data {
 	unsigned acquisition_time;
-- 
1.9.1


