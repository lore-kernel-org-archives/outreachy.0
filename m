X-GM-THRID: 6391035517840916480
X-Received: by 10.31.124.8 with SMTP id x8mr1796718vkc.10.1488031481624;
        Sat, 25 Feb 2017 06:04:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.73 with SMTP id 70ls2424009iou.37.gmail; Sat, 25 Feb
 2017 06:04:40 -0800 (PST)
X-Received: by 10.99.168.71 with SMTP id i7mr2949101pgp.116.1488031480703;
        Sat, 25 Feb 2017 06:04:40 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h130si2148034pfe.1.2017.02.25.06.04.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 06:04:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o64so2119176pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 06:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wRtxP8GTWRpTxwCJeCQQRx6hDVgLZH23SJSwGBkZ70k=;
        b=RDeoqr9Lbc+0JleHXhs8j2tiVjYcMKgxh5Ge6T0n7UtWmP7JFC5NM+u8iR1HLgQSXV
         /wkEDxgMamPtlkcPtNJ+MvzqeqgXoD4wZUA6v9fP/Dbzbyan981ehoPtb42jOCyiHRhp
         dmDypMiXEPsYwS4qEEzpSgGYNniRiDlQ271FB6g3xWZAGN4ts/SdvMI0aiX9U04Nr4qU
         2qYJD2mTxUGldnD7uQ67GMAe54tGGnm7g0zGZU893JNuguFO93AZYjc47BFygECXpOC6
         WGuyZas4v+zkTKCe01APXUPXOhG3dIy0TE3XU6bksWYNjin4P05M6C9A7ZPHkrg6M1mX
         M4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wRtxP8GTWRpTxwCJeCQQRx6hDVgLZH23SJSwGBkZ70k=;
        b=LSDszir5ilio6Piz008ZvAW/HODHHYbk7i9Jnrp4coTWs+OcVg5bFca92/w8zBO0+Q
         Ahfdh7+i5sUbCgETCPzQTBgkA6nyQgRb29nE0qQHrTK/60iLngiZpPi+K8lnsRvx8myA
         XQCLBUsSI9I2IWTiWi1b3pUT470qbhZnPVz1+ewNrFZgGQt5vQ7dihwYTK6XpgpGXvEU
         EVnplNDN6QjWa8getEMFdYniv9GsU74ViK2barVaPYyUj5Z8CIg39zfW90Y6psoGHB+D
         zI2UMZlZnMDgLciaGwV91mta3JSVEaH2U4H4OVQAOrpIic1W11h3Sy/vUXpcISv40EGH
         XpBQ==
X-Gm-Message-State: AMke39k5q+ighHjtRy9q5gKw7PaZ5uIcj709vNVnck8ZdI4L8EztYU9HQauV6+ueiHiRxg==
X-Received: by 10.84.239.8 with SMTP id w8mr11450329plk.73.1488031480464;
        Sat, 25 Feb 2017 06:04:40 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e7sm21001367pgp.2.2017.02.25.06.04.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 06:04:39 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: iio: Single source header file reorganization
Date: Sat, 25 Feb 2017 19:34:29 +0530
Message-Id: <20170225140429.21506-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

The contents of the header file are used only by this single
source file. Move content into .c and remove .h.
Also alphabetize the #includes.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

Changes in v2:
Correct the indentation.

 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 33 +++++++++++++++++------
 drivers/staging/iio/trigger/iio-trig-bfin-timer.h | 24 -----------------
 2 files changed, 25 insertions(+), 32 deletions(-)
 delete mode 100644 drivers/staging/iio/trigger/iio-trig-bfin-timer.h

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 4e0b4ee..5a7ff57 100644
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
+ * struct iio_bfin_timer_trigger_pdata - timer trigger platform data
+ * @output_enable: Enable external trigger pulse generation.
+ * @active_low: Whether the trigger pulse is active low.
+ * @duty_ns: Length of the trigger pulse in nanoseconds.
+ * 
+ * This struct is used to configure the output pulse generation of the blackfin
+ * timer trigger. If output_enable is set to true an external trigger signal
+ * will generated on the pin corresponding to the timer. This is useful for
+ * converters which needs an external signal to start conversion. active_low and
+ * duty_ns are used to configure the type of the trigger pulse. If output_enable
+ * is set to false no external trigger pulse will be generated and active_low
+ * and duty_ns are ignored.
+ **/
+
+struct iio_bfin_timer_trigger_pdata {
+		bool output_enable;
+		bool active_low;
+		unsigned int duty_ns;
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


