X-GM-THRID: 6470155735699292160
X-Received: by 10.101.66.5 with SMTP id c5mr7494544pgq.133.1506450524355;
        Tue, 26 Sep 2017 11:28:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.6.193 with SMTP id 184ls2995604pfg.0.gmail; Tue, 26 Sep
 2017 11:28:43 -0700 (PDT)
X-Received: by 10.99.123.26 with SMTP id w26mr7409987pgc.115.1506450523263;
        Tue, 26 Sep 2017 11:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506450523; cv=none;
        d=google.com; s=arc-20160816;
        b=RmSmh6Fdpw9sjz1Z/MpSF3/z21tw+UxttClNihkNJc4TC7KJdBFikpnTTJc6C3emUU
         cxLgPow7h5z7fnpjXy7OvNmHZChmrxSAxN1deMKW50GrOJ2V138l2FNUkop62bU6dba2
         iMF0nOxhp1IylQu/Y0F78+YvGP+cRtixKyQwSJgMHOyE1a2b5UVAh3KU6B6wNdlu9M1p
         fZEKjUWStIU8QUXQ1DVYUlK/1Dsv6AJb+THV3Wraj4ILFYEiCYtlDikaXWwC68j6sLCv
         WmCD7kPCI85BoS2xdV/lTvxb6+y8EtvAylgAlquH30ZFdBdNvDB1lgPrZ35u1tswDRw6
         661w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=GsAY6lOVTmTWdm9od9Uge4eJL6tZlkXBrVKJm4UoSQ8=;
        b=XHd40lW7ATnDWuSs+ZPdZWBU/c4cPKn5Nx9m9RnaClOvvpHLUPEtmwSybbULEWvAbE
         hW3OwewUyVnfNFIvmQWqitlyarvq+0IuSRznUPPaqdizEXEWE9uWTjGyr803/DK1t+uJ
         ZReDeeJZiB+u4Z/O4nQd44ToK2rZZNuv9rcJJzwvwLpX9JZxgCzkhd2HSi18t93jWRDk
         21caVypdaQMUdccHJYiGyH1EeeX9UIO/ZVeAqq4SlHhOZ1gKib5UIoZ480SYzASpey3V
         nJUbliUiamefrTaSITUHdC9RWZl5jYJoJJRtYRxrYD0ze5zIKPM4rj4E+LDbAU2L4qPQ
         yXFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XzNLMSNT;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id d207si699979pfd.16.2017.09.26.11.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 11:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XzNLMSNT;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so7204435pgt.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 11:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GsAY6lOVTmTWdm9od9Uge4eJL6tZlkXBrVKJm4UoSQ8=;
        b=XzNLMSNTv5dr/yZjmzMA4QZMkvlGIWNSRQdHeQkAozuw1q8Gid7+uuI9XINujjGt7f
         WmZZdPMAQ2TQfuiHqGHamKlWyzCLS2qmQBap7bW2IYc1T6vIV1oYbSMRquCofGM5hc6M
         6lCc8f1+gZnQD85ojUUrKHFkmdY10HAeJdBGTZJBDx1fNS/cIWze70OcIT2s2LxvbcgP
         JVioQOxZkkXcpUCnQXENnEyOi7OzQIYT/RVyeD/JXwsdZQgdF613ba/Kc9irKZVwanjT
         RHCWmxCB/QlXmgjPQkryteABv+pb796xAsng0aR+G1gxnraOWnau6zRzOXATqg2J88lo
         qfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GsAY6lOVTmTWdm9od9Uge4eJL6tZlkXBrVKJm4UoSQ8=;
        b=OnFmUh7rdMgdnf2r2mnLPR/mjDjihBYz7zSRCtI3s3uS0rUJWRKIFA/lraSvbk2tdq
         Ozsqr2icyA7BHxU4S4ltcjbBq7ym8Rdag443dp44QFuqczsjczz8Yf/GGkfWIesNp/QD
         F9E9q8i9zU5osjNqW8+z5r/Gq8/rjNBVWyGSa88lO5JBKeHu25+kGSPjuERqvfynb3Oh
         RRcSMbkKlY7lr6mdlPcckXIM0PNIcV8f1enzXbT2XnZh7Cr0GA3jMxXkSqVjTJjFax9v
         m+FdoZa1ClSX/5laeRBB8iVUyiurU6RBUQ1Im8mHbzEvCz3l0asR8doH7l1+fNXiXddg
         bVSg==
X-Gm-Message-State: AHPjjUjv3sdOU3dM8RAo5Q9Ss04ediqRFZhXbWbXHZTbYnQfAGCzHY+u
	I2KQVrmCQqPaimYdwIbMhGQ=
X-Google-Smtp-Source: AOwi7QBjp1KnEHYT+554C6NHfXLrpxDU+/c1jvynD0VdeWkf01vTJWo2MfMh6SgRAVqpn4p0qlsewA==
X-Received: by 10.84.129.11 with SMTP id 11mr11621864plb.379.1506450522782;
        Tue, 26 Sep 2017 11:28:42 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id l74sm18049208pfi.9.2017.09.26.11.28.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 11:28:42 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org,
	jic23@kernel.org,
	lars@metafoo.de,
	knaack.h@gmx.de
Cc: linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: iio: trigger: Move header file content to source file
Date: Tue, 26 Sep 2017 23:56:15 +0530
Message-Id: <1506450375-15538-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

The contents of the header file are used only by this single source file.
Moved content into iio-trig-bfin-timer.c and removed iio-trig-bfin-timer.h

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 20 ++++++++++++++++++-
 drivers/staging/iio/trigger/iio-trig-bfin-timer.h | 24 -----------------------
 2 files changed, 19 insertions(+), 25 deletions(-)
 delete mode 100644 drivers/staging/iio/trigger/iio-trig-bfin-timer.h

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index d80dcf8..2cedcaf 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -19,7 +19,25 @@
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
+struct iio_bfin_timer_trigger_pdata {
+	 bool output_enable;
+	 bool active_low;
+	 unsigned int duty_ns;
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
1.9.1


