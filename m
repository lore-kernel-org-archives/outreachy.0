X-GM-THRID: 6391667528691613696
X-Received: by 10.99.56.30 with SMTP id f30mr254877pga.121.1488176064718;
        Sun, 26 Feb 2017 22:14:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls11849614otc.22.gmail; Sun, 26 Feb
 2017 22:14:24 -0800 (PST)
X-Received: by 10.200.49.136 with SMTP id h8mr3342219qte.29.1488176064143;
        Sun, 26 Feb 2017 22:14:24 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h79si252348pfh.2.2017.02.26.22.14.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 22:14:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so3135249pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 22:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5rkBG8FEaPk+/4z/Q0kV4i35w6xwmapha36B/QZE6M4=;
        b=dpB5xeMAlxjYFysC3Owe9d+Se5KUW/xdiSn0EvlNmxWqJ8594mSjVHyjO99FzvSk24
         yj16RMVfz2fAdckhqVQrmNjamwuNq5O7suqJLP5ebjp8jT6BgvtaX0t9xGLNxnPOxWAl
         qt/iaVEFOTEX1D2pApQPRjERWtn/zKTUBJTLTObie5Qfm3Co5FxXqidGxnqJw5FXKhvy
         vqS5RTXAcIVcHuR9DaRutuaoROrLlCjg1SACwS1IUYjm6XtiSZM9xOdBnj+6ivlyFvPd
         I/iM/1F4f1aAKV1BRJmRlUaoFi5i+tFibkO03aiiRQj2gNjX04z2RdhFN31kJLwBXHMz
         Wzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5rkBG8FEaPk+/4z/Q0kV4i35w6xwmapha36B/QZE6M4=;
        b=HtbMa3P7g0NVbhXsFqnAOEk7uFg8Ej36/vCfdy1xfWrWz10UVDmLTC8okzO5ays153
         v7KlnRlz7yaha/yK5uJ/KN/i1W318xBeI/xQZMR9ViZmNbsxlqFHD2IU3rVCjRsFEEqw
         DJ/GZ5Xs/8CXPsREQRJAY6er7ZRNNzSQ8vwTZNQaESWR7tFEtoyUJEQ9GMhcLfRg6OIJ
         CcS90LA/2WBohZCn2EbPMJrmO/qD3ZDXRRu1FfHjgiIGNJBllpDNi7wrkhCDLhg6L3j9
         7VVFEnzfIh014dxYxjjpBF5SeaBhaalZm/emsEnINdN4RIhntI1zNJCPlmlYRyPi92tr
         dSog==
X-Gm-Message-State: AMke39nlPGZBFbl5g+5q0mWjh6H3TuHlRccVupDHb+8FXl60MdscuFwXrtsF3tynPfMRuw==
X-Received: by 10.84.214.129 with SMTP id j1mr7377827pli.23.1488176063860;
        Sun, 26 Feb 2017 22:14:23 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id y67sm27822932pfa.96.2017.02.26.22.14.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 22:14:23 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	pmeerw@pmeerw.net,
	knaack.h@gmx.de,
	linux-iio@vger.kernel.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: iio: ad5933: move contents of header file to source file
Date: Mon, 27 Feb 2017 11:42:08 +0530
Message-Id: <1488175928-15013-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The contents of the header file are used only by this single
source file.  Move content into .c and remove .h.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 20 ++++++++++++++++++-
 drivers/staging/iio/trigger/iio-trig-bfin-timer.h | 24 -----------------------
 2 files changed, 19 insertions(+), 25 deletions(-)
 delete mode 100644 drivers/staging/iio/trigger/iio-trig-bfin-timer.h

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 4e0b4ee..8077b9d 100644
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


