X-GM-THRID: 6400661101399244800
X-Received: by 10.99.147.16 with SMTP id b16mr583475pge.22.1490270044210;
        Thu, 23 Mar 2017 04:54:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.228 with SMTP id 91ls5012552otx.26.gmail; Thu, 23 Mar
 2017 04:54:03 -0700 (PDT)
X-Received: by 10.200.48.218 with SMTP id w26mr590900qta.42.1490270043651;
        Thu, 23 Mar 2017 04:54:03 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 190si1143950pfv.3.2017.03.23.04.54.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 04:54:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so35792994pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 04:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RfeO2RIjyKQXpmOUxxKJzwDQq2xbXGr6XkUDIer07jA=;
        b=qmTt48A1ZbpNcQIbpS1ltdXIN+UQZLvcy7C7QSrQdMtXPBIaxL2q+ecYmHINgj3ptL
         yDJOguk4cnIqcUmt5AYHHAVSF3bBPVZ5p8kqaUraAW9NJowevbRbt4nDmmblqqFszXAV
         wGw872jADHosNLng0JRKx10FysXtmrt9u/PwIsdtFL0lTmxDdBqOMiRptifPwZABuxuG
         o6MbJI9P0A/qVbfBwC2iOM6YPJ/ibXB2Xuv4IoxVHgicGf5RMEPbMtmZOJWGO+Kz8GTg
         Ma9/hFwbbNoYwnHJ2cDxrJKxgn+GmBNDzsTkm0yIST4DhpOrz5RWgIglna0WXHf0RqbE
         3jrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RfeO2RIjyKQXpmOUxxKJzwDQq2xbXGr6XkUDIer07jA=;
        b=m+RDyIdTrFjfFs/3Jx9sXC9r+tWAU1WyQ5IhtJzTmuxhJ7e4lCBL6MeFFiC/jy0ARc
         fJxysTLBaeseZh9TA4fxjDNYjJ5Vb7d0x/gUoVW7WicofWyCVt091Tiw2t+n7Z14aOUE
         0/fSgWoU4m4I+APlh2VB5AntFKtxV69LMj6Qk+wEE1gVzF+/e3v4j3ZcNdRGBS2Zixzf
         57jy4utOq/ve2btBLnKii8pMqigEnoYRYBfGwrHIbM0nBI+kcJRb1NHAuOdEq508YL35
         dmwYDMaUgREQGlV5S/4Pz5AKCaFAKS25CaLNgfEQHciFnD1YGk5WzDs9//wSW1MZDpoO
         RwYQ==
X-Gm-Message-State: AFeK/H2T1ykJTX6K/TRpn8GINc/bOR/9sdNL9OMA1fgGnwt6gXvfdKlAtHPTQV5LNtTf7Q==
X-Received: by 10.84.160.195 with SMTP id v3mr3045121plg.161.1490270043297;
        Thu, 23 Mar 2017 04:54:03 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 194sm9899041pfx.134.2017.03.23.04.54.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Mar 2017 04:54:01 -0700 (PDT)
Date: Thu, 23 Mar 2017 17:23:57 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: jic23@kernel.org
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: tsl2x7x: Moved contents of the header to the source
 file.
Message-ID: <20170323115357.GA24360@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Moved the contents of the header(tsl2x7x.h) into the source file
tsl2x7x_core.c with the exception of the platform data struct which is
supposed to be used from somewhere else other than the driver.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x.h      | 57 -------------------------------
 drivers/staging/iio/light/tsl2x7x_core.c | 58 ++++++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+), 57 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x.h b/drivers/staging/iio/light/tsl2x7x.h
index ecae92211216..7b71003ddb33 100644
--- a/drivers/staging/iio/light/tsl2x7x.h
+++ b/drivers/staging/iio/light/tsl2x7x.h
@@ -23,63 +23,6 @@
 #define __TSL2X7X_H
 #include <linux/pm.h>
 
-/* Max number of segments allowable in LUX table */
-#define TSL2X7X_MAX_LUX_TABLE_SIZE		9
-#define MAX_DEFAULT_TABLE_BYTES (sizeof(int) * TSL2X7X_MAX_LUX_TABLE_SIZE)
-
-struct iio_dev;
-
-struct tsl2x7x_lux {
-	unsigned int ratio;
-	unsigned int ch0;
-	unsigned int ch1;
-};
-
-/**
- * struct tsl2x7x_default_settings - power on defaults unless
- *                                   overridden by platform data.
- *  @als_time:              ALS Integration time - multiple of 50mS
- *  @als_gain:              Index into the ALS gain table.
- *  @als_gain_trim:         default gain trim to account for
- *                          aperture effects.
- *  @wait_time:             Time between PRX and ALS cycles
- *                          in 2.7 periods
- *  @prx_time:              5.2ms prox integration time -
- *                          decrease in 2.7ms periods
- *  @prx_gain:              Proximity gain index
- *  @prox_config:           Prox configuration filters.
- *  @als_cal_target:        Known external ALS reading for
- *                          calibration.
- *  @interrupts_en:         Enable/Disable - 0x00 = none, 0x10 = als,
- *                                           0x20 = prx,  0x30 = bth
- *  @persistence:           H/W Filters, Number of 'out of limits'
- *                          ADC readings PRX/ALS.
- *  @als_thresh_low:        CH0 'low' count to trigger interrupt.
- *  @als_thresh_high:       CH0 'high' count to trigger interrupt.
- *  @prox_thres_low:        Low threshold proximity detection.
- *  @prox_thres_high:       High threshold proximity detection
- *  @prox_pulse_count:      Number if proximity emitter pulses
- *  @prox_max_samples_cal:  Used for prox cal.
- */
-struct tsl2x7x_settings {
-	int als_time;
-	int als_gain;
-	int als_gain_trim;
-	int wait_time;
-	int prx_time;
-	int prox_gain;
-	int prox_config;
-	int als_cal_target;
-	u8  interrupts_en;
-	u8  persistence;
-	int als_thresh_low;
-	int als_thresh_high;
-	int prox_thres_low;
-	int prox_thres_high;
-	int prox_pulse_count;
-	int prox_max_samples_cal;
-};
-
 /**
  * struct tsl2X7X_platform_data - Platform callback, glass and defaults
  * @platform_power:            Suspend/resume platform callback
diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index ea15bc1c300c..21cbf7e95c4e 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -32,6 +32,64 @@
 #include <linux/iio/sysfs.h>
 #include "tsl2x7x.h"
 
+/* Max number of segments allowable in LUX table */
+#define TSL2X7X_MAX_LUX_TABLE_SIZE              9
+#define MAX_DEFAULT_TABLE_BYTES (sizeof(int) * TSL2X7X_MAX_LUX_TABLE_SIZE)
+
+struct iio_dev;
+
+struct tsl2x7x_lux {
+	unsigned int ratio;
+	unsigned int ch0;
+	unsigned int ch1;
+};
+
+/**
+ * struct tsl2x7x_default_settings - power on defaults unless
+ *                                   overridden by platform data.
+ *  @als_time:              ALS Integration time - multiple of 50mS
+ *  @als_gain:              Index into the ALS gain table.
+ *  @als_gain_trim:         default gain trim to account for
+ *                          aperture effects.
+ *  @wait_time:             Time between PRX and ALS cycles
+ *                          in 2.7 periods
+ *  @prx_time:              5.2ms prox integration time -
+ *                          decrease in 2.7ms periods
+ *  @prx_gain:              Proximity gain index
+ *  @prox_config:           Prox configuration filters.
+ *  @als_cal_target:        Known external ALS reading for
+ *                          calibration.
+ *  @interrupts_en:         Enable/Disable - 0x00 = none, 0x10 = als,
+ *                                           0x20 = prx,  0x30 = bth
+ *  @persistence:           H/W Filters, Number of 'out of limits'
+ *                          ADC readings PRX/ALS.
+ *  @als_thresh_low:        CH0 'low' count to trigger interrupt.
+ *  @als_thresh_high:       CH0 'high' count to trigger interrupt.
+ *  @prox_thres_low:        Low threshold proximity detection.
+ *  @prox_thres_high:       High threshold proximity detection
+ *  @prox_pulse_count:      Number if proximity emitter pulses
+ *  @prox_max_samples_cal:  Used for prox cal.
+ */
+
+struct tsl2x7x_settings {
+	int als_time;
+	int als_gain;
+	int als_gain_trim;
+	int wait_time;
+	int prx_time;
+	int prox_gain;
+	int prox_config;
+	int als_cal_target;
+	u8  interrupts_en;
+	u8  persistence;
+	int als_thresh_low;
+	int als_thresh_high;
+	int prox_thres_low;
+	int prox_thres_high;
+	int prox_pulse_count;
+	int prox_max_samples_cal;
+};
+
 /* Cal defs*/
 #define PROX_STAT_CAL        0
 #define PROX_STAT_SAMP       1
-- 
2.11.0


