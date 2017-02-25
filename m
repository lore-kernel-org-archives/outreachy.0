X-GM-THRID: 6391035517840916480
X-Received: by 10.13.225.140 with SMTP id k134mr2418313ywe.7.1488028913310;
        Sat, 25 Feb 2017 05:21:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.130 with SMTP id o124ls2484735ioe.53.gmail; Sat, 25
 Feb 2017 05:21:52 -0800 (PST)
X-Received: by 10.99.171.12 with SMTP id p12mr2694387pgf.95.1488028912420;
        Sat, 25 Feb 2017 05:21:52 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si2281694pfd.3.2017.02.25.05.21.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 05:21:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p185so2083775pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 05:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XFMW4SWZ+Sh9lgQKnLHGRAmj1zrmnQyMtMupf9Ldzdk=;
        b=byB65ObtEE4jhUHX0z19xsNc/lgsY0q+EGpzVQh4zWD51utVt1r9zqzGh82uRWWGVW
         QHoijCw3oW8F7lQxaVMHIPmj5fJNlSBVb6xwQiZIgtAtk1v/1Ds2T77OHKcNJvBrQSck
         fsZl01HH3s6N9kQe//kkiS5fB1qxi5GWZ+JKJXqefCkXJUDZXHXSXFa9S4Svl5xF9+2P
         RP3uPOwcN4mMIMyoLsnI5rQjC5TvDO36h+2WMrR3snNMpw1sspmDUnF33HCzeqm+dLCN
         bvSfcbRPPS9hza8aWPkNMFLyO5KPgPv4FsHOccHjfJ+Jq4XH2ud04fdORJHIeBDwoS5q
         XhMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XFMW4SWZ+Sh9lgQKnLHGRAmj1zrmnQyMtMupf9Ldzdk=;
        b=becYRmMoAb58cbSKO+YMWgH89c7zLHRaZoPlaxlqL48HgDeo1w3vGeEarq5Hct6hoj
         BwXxGTpql9ziQmiNlHdoEl6Ksqq7B0Wj+VKH20Tnhc/XBnAskyKGFhNeTAPKdvV9P2B1
         UljTYbYQi94nD83ecV6UUHYDBBjDOihJvJpLQaiOvph/LmExQ9dAxRGhYEL/+aMYMWEO
         869IGMRLA1x/ysEzWn4y3P/pQBpc42C7g3r9mnXJojngd5/fn5c5SL7EGsSyMh1xvKpK
         5lIPLg0tjRFEu4gmSIhM0ElWZcx43RJyomnZ+uxoIFnkACYSaisz1lKY7s5fH1DqpUgs
         Tfgw==
X-Gm-Message-State: AMke39nF1VujFDuGxemvyIHsCJDnHsA2+uHEzpvMm2mJMYmE9sBOBHRcniEiCFc+fkX5EA==
X-Received: by 10.99.237.17 with SMTP id d17mr9887160pgi.82.1488028912149;
        Sat, 25 Feb 2017 05:21:52 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 129sm20748099pgj.59.2017.02.25.05.21.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 05:21:51 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: Single source header file reorganization
Date: Sat, 25 Feb 2017 18:51:40 +0530
Message-Id: <20170225132140.20181-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

The contents of the header file are used only by this single
source file. Move content into .c and remove .h.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 33 +++++++++++++++++------
 drivers/staging/iio/trigger/iio-trig-bfin-timer.h | 24 -----------------
 2 files changed, 25 insertions(+), 32 deletions(-)
 delete mode 100644 drivers/staging/iio/trigger/iio-trig-bfin-timer.h

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 4e0b4ee..f01462b 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -5,21 +5,38 @@
  *
  */
 
+#include <asm/gptimers.h>
+#include <asm/portmux.h>
+#include <linux/delay.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/interrupt.h>
-#include <linux/irq.h>
-#include <linux/delay.h>
-
-#include <asm/gptimers.h>
-#include <asm/portmux.h>
-
 #include <linux/iio/iio.h>
 #include <linux/iio/trigger.h>
 
-#include "iio-trig-bfin-timer.h"
+/**
+ *  * struct iio_bfin_timer_trigger_pdata - timer trigger platform data
+ *   * @output_enable: Enable external trigger pulse generation.
+ *    * @active_low: Whether the trigger pulse is active low.
+ *     * @duty_ns: Length of the trigger pulse in nanoseconds.
+ *      *
+ *       * This struct is used to configure the output pulse generation of the blackfin
+ *        * timer trigger. If output_enable is set to true an external trigger signal
+ *         * will generated on the pin corresponding to the timer. This is useful for
+ *          * converters which needs an external signal to start conversion. active_low and
+ *           * duty_ns are used to configure the type of the trigger pulse. If output_enable
+ *            * is set to false no external trigger pulse will be generated and active_low
+ *             * and duty_ns are ignored.
+ *              **/
+
+struct iio_bfin_timer_trigger_pdata {
+		bool output_enable;
+			bool active_low;
+				unsigned int duty_ns;
+};
 
 struct bfin_timer {
 	unsigned short id, bit;
diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.h b/drivers/staging/iio/trigger/iio-trig-bfin-timer.h
deleted file mode 100644
index c07321f..0000000
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.h
+++ /dev/null
@@ -1,24 +0,0 @@
-#ifndef __IIO_BFIN_TIMER_TRIGGER_H__
-#define __IIO_BFIN_TIMER_TRIGGER_H__
-
-/**
- * struct iio_bfin_timer_trigger_pdata - timer trigger platform data
- * @output_enable: Enable external trigger pulse generation.
- * @active_low: Whether the trigger pulse is active low.
- * @duty_ns: Length of the trigger pulse in nanoseconds.
- *
- * This struct is used to configure the output pulse generation of the blackfin
- * timer trigger. If output_enable is set to true an external trigger signal
- * will generated on the pin corresponding to the timer. This is useful for
- * converters which needs an external signal to start conversion. active_low and
- * duty_ns are used to configure the type of the trigger pulse. If output_enable
- * is set to false no external trigger pulse will be generated and active_low
- * and duty_ns are ignored.
- **/
-struct iio_bfin_timer_trigger_pdata {
-	bool output_enable;
-	bool active_low;
-	unsigned int duty_ns;
-};
-
-#endif
-- 
2.9.3


