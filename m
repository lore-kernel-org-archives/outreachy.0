X-GM-THRID: 6391526097172824064
X-Received: by 10.129.40.134 with SMTP id o128mr5127268ywo.82.1488143135976;
        Sun, 26 Feb 2017 13:05:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.45.170 with SMTP id g39ls12595019otb.49.gmail; Sun, 26 Feb
 2017 13:05:35 -0800 (PST)
X-Received: by 10.13.224.70 with SMTP id j67mr5343701ywe.44.1488143135619;
        Sun, 26 Feb 2017 13:05:35 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si2725303pfe.1.2017.02.26.13.05.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:05:35 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so10411601pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 13:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xUcLvsWAEnEgR8g0pbQKbtyln+vc2jYFuEdIzmLmbfc=;
        b=X7Eg8vC4EFJoK/4+PTlCuUzJPnTeALdnyzZ5dVBoJFpqjW9adn+68tIdgmPTPanKdT
         wyEk1oR5MnVMNkVf7AWwhvEnTILQICcxMhAZHqnKPus8C/Eghro2rf3Iu/RQ9Vfxoe2W
         ceW04498nxk2umc8AGOWh8BlEJYgdfFOnVn5ZIxMZSD8lRFyYrb/sky+bBxkUV6/1a2p
         qiE5Ia4CUtYzVVTnuUZc+w52mEo31jLWhUWIeyA9oBeUqQzcGa+hDfIz70Hg09g047gW
         R75oqw6Sv2z26mciF1qXGQY+NYeasAwCEdWQMiZGDVmhqJUXklPTaxk+cAksmPO4hm/8
         anbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xUcLvsWAEnEgR8g0pbQKbtyln+vc2jYFuEdIzmLmbfc=;
        b=CBazGcqNd5tZGhxSaOF2ZQSBYCEdESrbkkH+BzJ7J1cv4jwWigtBzwK8Pyt9trgK3L
         mZL6cnB1GX1oU/CGEfgVMdgWXpcC1GwEea6kZNFzMz/tHkagi5YOty7Iu9ygJH2xRj7K
         AF0WgRkPzweumLvzKZD7kyt2Awm24Hj3Ls3QOAOxp/3d3QK7yr1eQ3hzFb0RK81e6vpi
         CVY7jr5+9GaaI4WNreEp7RHJnwWZFOGLKnz6jVcsctshhuZbrIsXmTytPsTfHRwlDhii
         YB2G4tSp44ROIVVonl0DcGmzSqT+sb9FGB8RhsUHNHIfkRrDR28Ua01cmSMEgyfEu4nB
         nF9A==
X-Gm-Message-State: AMke39kgktS2gg0XsK4AYRiUq7y06fHMuXzZyHscHzg2RGD2M8B94lqmIRhi1qf0slOllw==
X-Received: by 10.84.197.131 with SMTP id n3mr19695976pld.43.1488143135346;
        Sun, 26 Feb 2017 13:05:35 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.241.100])
        by smtp.gmail.com with ESMTPSA id f3sm26355071pga.34.2017.02.26.13.05.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:05:34 -0800 (PST)
Date: Mon, 27 Feb 2017 02:35:17 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: iio-trig-bfin-timer: Move contents of header
 file to source file
Message-ID: <20170226210516.GA20649@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The contents of the header file are used only by this single
source file. Move content into .c and delete .h.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 21 +++++++++++++++++++-
 drivers/staging/iio/trigger/iio-trig-bfin-timer.h | 24 -----------------------
 2 files changed, 20 insertions(+), 25 deletions(-)
 delete mode 100644 drivers/staging/iio/trigger/iio-trig-bfin-timer.h

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 4e0b4ee..5708247 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -19,7 +19,26 @@
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
+	bool output_enable;
+	bool active_low;
+	unsigned int duty_ns;
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
2.7.4


