X-GM-THRID: 6393985212157526016
X-Received: by 10.46.87.27 with SMTP id l27mr1631759ljb.28.1488715692514;
        Sun, 05 Mar 2017 04:08:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls607430ljd.41.gmail; Sun, 05 Mar 2017
 04:08:11 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr1612251lja.18.1488715691932;
        Sun, 05 Mar 2017 04:08:11 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id i76si735282wmh.1.2017.03.05.04.08.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:08:11 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so18420575wrg.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 04:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EDVyO4ENdav97gkps6mHq99+wLopcDhXppC203qzIjE=;
        b=jaJ9x2i93xLrRH+KUzYADxFxRPYT6hg8EaFiJBeNJkHBcjjiBcr2pF4zkh/v7P7j64
         q22P+Ar9IMbCQtJ8L48cMje0OQuTHs6C9KylYCRl76FrAtaipakxxK+TW9YAIdR8qkPl
         XDNCM1PSFD5dl/V1FLOQBqbREg0g7WNb3qreFTLD/RtbwJMRr3sfl6IkXPj9dKE5uNG0
         xtckrVPpI8YNDNFHxtkZeTKOWgxvU2ukCmF1miBlTueo+nrLHKX7sNfmnnAXSx4iH/4f
         J2aA61rZ1cD/sdK80t2zVLbNnWYKlPMlx34kE6159RnYZSl4oaAEsFFyHgxd4FgHOAwl
         4Xyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EDVyO4ENdav97gkps6mHq99+wLopcDhXppC203qzIjE=;
        b=nEz+EKvbVIGufhxbdMFPkOabqqT6oyZLH7E3Spq1rmrDPrtzgpOv89e9qNR65yxjwg
         eMOd7woOv713KWlV4EKzlxTw2esB4vlPDpgn07qAGmXpRHRF5tNCpdud+DCfMBn4BGk1
         nsLK1eyumpRXE0be8IoHvjGv+LeoAgPQWy/3LA0d4dxr1QSPxUvy2vR71Lso3qVSi9d/
         8yYxIFWGbDV74+gOPWJiBsVfJGyCeiR8/NmYwf5yQYY00aZxuqediL2MKfjaVX3S92o2
         cFiPvkf6s0KCX8xTJ/Ow2GR1RohnoDXW2wFDj6XzYeNC/JP1jIyoqReAhuFG7wSf8+pg
         lkFA==
X-Gm-Message-State: AMke39lsxjJ4chyUr5oGOU/AKlPPrjVskgjJQuhAMpc6676xg+cpFUMYzxuaA47N03qbvA==
X-Received: by 10.223.138.139 with SMTP id y11mr9437198wry.190.1488715691612;
        Sun, 05 Mar 2017 04:08:11 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id j74sm7728150wrj.21.2017.03.05.04.08.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 04:08:10 -0800 (PST)
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
Subject: [PATCH] staging: iio: adis16209: Group similar macros into enums
Date: Sun,  5 Mar 2017 14:07:54 +0200
Message-Id: <1488715674-22836-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

If the macros are related, they should be grouped into an enum
for clarity.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/accel/adis16209.c | 84 ++++++++++++++++++++---------------
 1 file changed, 47 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16209.c b/drivers/staging/iio/accel/adis16209.c
index 8ff537f..706e119 100644
--- a/drivers/staging/iio/accel/adis16209.c
+++ b/drivers/staging/iio/accel/adis16209.c
@@ -104,62 +104,72 @@
 /* Operation, system command register */
 #define ADIS16209_GLOB_CMD       0x3E
 
+#define ADIS16209_ERROR_ACTIVE          BIT(14)
+
 /* MSC_CTRL */
 
-/* Self-test at power-on: 1 = disabled, 0 = enabled */
-#define ADIS16209_MSC_CTRL_PWRUP_SELF_TEST	BIT(10)
+enum adis16209_msc_ctrl {
+	/* Self-test at power-on: 1 = disabled, 0 = enabled */
+	ADIS16209_MSC_CTRL_PWRUP_SELF_TEST = BIT(10),
 
-/* Self-test enable */
-#define ADIS16209_MSC_CTRL_SELF_TEST_EN	        BIT(8)
+	/* Self-test enable */
+	ADIS16209_MSC_CTRL_SELF_TEST_EN = BIT(8),
 
-/* Data-ready enable: 1 = enabled, 0 = disabled */
-#define ADIS16209_MSC_CTRL_DATA_RDY_EN	        BIT(2)
+	/* Data-ready enable: 1 = enabled, 0 = disabled */
+	ADIS16209_MSC_CTRL_DATA_RDY_EN = BIT(2),
 
-/* Data-ready polarity: 1 = active high, 0 = active low */
-#define ADIS16209_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
+	/* Data-ready polarity: 1 = active high, 0 = active low */
+	ADIS16209_MSC_CTRL_ACTIVE_HIGH = BIT(1),
 
-/* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
-#define ADIS16209_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
+	/* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
+	ADIS16209_MSC_CTRL_DATA_RDY_DIO2 = BIT(0),
+};
 
 /* DIAG_STAT */
 
-/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16209_DIAG_STAT_ALARM2        BIT(9)
+enum adis16209_diag_stat {
+	/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
+	ADIS16209_DIAG_STAT_ALARM2 = BIT(9),
 
-/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
-#define ADIS16209_DIAG_STAT_ALARM1        BIT(8)
+	/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
+	ADIS16209_DIAG_STAT_ALARM1 = BIT(8),
 
-/* Self-test diagnostic error flag: 1 = error condition, 0 = normal operation */
-#define ADIS16209_DIAG_STAT_SELFTEST_FAIL_BIT	5
+	/* Self-test diagnostic error flag:
+	 * 1 = error condition, 0 = normal operation
+	 */
+	ADIS16209_DIAG_STAT_SELFTEST_FAIL_BIT = 5,
 
-/* SPI communications failure */
-#define ADIS16209_DIAG_STAT_SPI_FAIL_BIT	3
+	/* SPI communications failure */
+	ADIS16209_DIAG_STAT_SPI_FAIL_BIT = 3,
 
-/* Flash update failure */
-#define ADIS16209_DIAG_STAT_FLASH_UPT_BIT	2
+	/* Flash update failure */
+	ADIS16209_DIAG_STAT_FLASH_UPT_BIT = 2,
 
-/* Power supply above 3.625 V */
-#define ADIS16209_DIAG_STAT_POWER_HIGH_BIT	1
+	/* Power supply above 3.625 V */
+	ADIS16209_DIAG_STAT_POWER_HIGH_BIT = 1,
 
-/* Power supply below 3.15 V */
-#define ADIS16209_DIAG_STAT_POWER_LOW_BIT	0
+	/* Power supply below 3.15 V */
+	ADIS16209_DIAG_STAT_POWER_LOW_BIT = 0,
+};
 
 /* GLOB_CMD */
 
-#define ADIS16209_GLOB_CMD_SW_RESET	BIT(7)
-#define ADIS16209_GLOB_CMD_CLEAR_STAT	BIT(4)
-#define ADIS16209_GLOB_CMD_FACTORY_CAL	BIT(1)
-
-#define ADIS16209_ERROR_ACTIVE          BIT(14)
+enum adis16209_glob_cmd {
+	ADIS16209_GLOB_CMD_SW_RESET = BIT(7),
+	ADIS16209_GLOB_CMD_CLEAR_STAT = BIT(4),
+	ADIS16209_GLOB_CMD_FACTORY_CAL = BIT(1),
+};
 
-#define ADIS16209_SCAN_SUPPLY	0
-#define ADIS16209_SCAN_ACC_X	1
-#define ADIS16209_SCAN_ACC_Y	2
-#define ADIS16209_SCAN_AUX_ADC	3
-#define ADIS16209_SCAN_TEMP	4
-#define ADIS16209_SCAN_INCLI_X	5
-#define ADIS16209_SCAN_INCLI_Y	6
-#define ADIS16209_SCAN_ROT	7
+enum adis16209_scan {
+	ADIS16209_SCAN_SUPPLY,
+	ADIS16209_SCAN_ACC_X,
+	ADIS16209_SCAN_ACC_Y,
+	ADIS16209_SCAN_AUX_ADC,
+	ADIS16209_SCAN_TEMP,
+	ADIS16209_SCAN_INCLI_X,
+	ADIS16209_SCAN_INCLI_Y,
+	ADIS16209_SCAN_ROT,
+};
 
 static const u8 adis16209_addresses[8][1] = {
 	[ADIS16209_SCAN_SUPPLY] = { },
-- 
1.9.1


