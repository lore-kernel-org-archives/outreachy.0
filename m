X-GM-THRID: 6391536108233031680
X-Received: by 10.28.31.4 with SMTP id f4mr438418wmf.17.1488209391461;
        Mon, 27 Feb 2017 07:29:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.14 with SMTP id p14ls842010lfe.6.gmail; Mon, 27 Feb
 2017 07:29:50 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr733793lff.0.1488209390298;
        Mon, 27 Feb 2017 07:29:50 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h198si787240wmg.1.2017.02.27.07.29.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:29:50 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id v77so13976807wmv.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JBGZkySzfuTsJyaf0IAvYvNs4UWV3fyRjYCUTWC5+Jg=;
        b=nddZfeefju270+1cDsNwRraFcG3cN4q7fJ8wDwgEZvf0JPQgf8UlUo5/OqcvjrqMBI
         syKODoSI/KykknmbtV5cWKaIjU+1UpJA9lB4EwshA6GWH5ueWso0IYY62xs/wR6hHP3k
         vLB5mAHrlNPBpS1y7KUEiEmWTvoDlh+K9dji157YxV4FP4OZB3GHmOpP1OS12c7k6LE0
         ITqaU7nz7IsU1E+mwNxwJ288SpmAkMJ6b+VJQdSdh4NyG5GlpJLxjre1aOBRFGXeCFhr
         bKTojNEnaxcYyxATedpRKlTEZ9NYGTlZXag9ADSMdwfII1wumTD1vm4mLoK3baavmskb
         SLUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=JBGZkySzfuTsJyaf0IAvYvNs4UWV3fyRjYCUTWC5+Jg=;
        b=YoPVTfBk9u19WHLYCSAPA2utoPsXGhsfaHaOt75WRu4AVA0/OXgUlKuu2clBCelK52
         izarD7UePIMz7rEaguq5cNGt/+Ind9FDmmapIq+Rmk8gMO5PPL/VMXEsrPzRwPyeRKKG
         8Ywdai/siQUiT0yWVlmCfwldM2xJ9qbRaf1TgdqzRxOKtxWTKmZYvtSsRoyL64sbJtaD
         hOQgAPpIt9Mm8hcN6v8RVWxqCU8AVjhdeF2ywfgIZqQTZrfLMZx0KWe/OKwjLgkbQEDu
         fu4VAoOanqB2yZ8dGth8JoSZxiQbmiUC1/4KfQ7DdhJgWHEqlQgiFo88jwPHd0hpOhKU
         rc9Q==
X-Gm-Message-State: AMke39md1ZVOcBtTFed9KiLL8hCJNmPsZ1zzQqwAAbHHQ8saPw4YINaXGkwPDz6HL8VsMA==
X-Received: by 10.28.218.71 with SMTP id r68mr4427707wmg.59.1488209390028;
        Mon, 27 Feb 2017 07:29:50 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id s26sm20462643wra.66.2017.02.27.07.29.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 07:29:49 -0800 (PST)
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
Subject: [PATCH v2] staging: iio: ad9832: Moved contents of header file to source file
Date: Mon, 27 Feb 2017 17:29:11 +0200
Message-Id: <1488209351-351-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com>
References: <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com>

The contents of the header file are used only by this single source
file.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
Changes in v2:
    Removed the platform data struct from the ad9832.c file and added it
    back to the ad9832.h header file, since this struct is supposed to be
    used from somewhere else, other than the driver.
---
 drivers/staging/iio/frequency/ad9832.c | 27 ++-----------------------
 drivers/staging/iio/frequency/ad9832.h | 36 ++++++++++++++++++++++++++++++++++
 2 files changed, 38 insertions(+), 25 deletions(-)
 create mode 100644 drivers/staging/iio/frequency/ad9832.h

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index 1b26843..8d40c8e 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -20,6 +20,8 @@
 #include <linux/iio/sysfs.h>
 #include "dds.h"
 
+#include "ad9832.h"
+
 /* Registers */
 
 #define AD9832_FREQ0LL		0x0
@@ -112,31 +114,6 @@ struct ad9832_state {
 	};
 };
 
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
 static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
 {
 	unsigned long long freqreg = (u64)fout *
diff --git a/drivers/staging/iio/frequency/ad9832.h b/drivers/staging/iio/frequency/ad9832.h
new file mode 100644
index 0000000..39d326c
--- /dev/null
+++ b/drivers/staging/iio/frequency/ad9832.h
@@ -0,0 +1,36 @@
+/*
+ * AD9832 SPI DDS driver
+ *
+ * Copyright 2011 Analog Devices Inc.
+ *
+ * Licensed under the GPL-2 or later.
+ */
+#ifndef IIO_DDS_AD9832_H_
+#define IIO_DDS_AD9832_H_
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
+
+#endif /* IIO_DDS_AD9832_H_ */
-- 
1.9.1


