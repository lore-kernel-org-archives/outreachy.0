X-GM-THRID: 6392227374862172160
X-Received: by 10.98.88.195 with SMTP id m186mr892861pfb.16.1488306414718;
        Tue, 28 Feb 2017 10:26:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.81 with SMTP id a78ls1940038itd.2.canary-gmail; Tue, 28
 Feb 2017 10:26:53 -0800 (PST)
X-Received: by 10.107.178.3 with SMTP id b3mr1365100iof.93.1488306413864;
        Tue, 28 Feb 2017 10:26:53 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si123736pfd.3.2017.02.28.10.26.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:26:53 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so2484369pgy.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fMsNVWhmOfjJ/mctcMps9G5ebuY+9Y7hmcT1DjQmXEU=;
        b=XdC01jMdTMjdfz34Zo6GPFRpRVWIrDYmGXv90DCaSMdTjsAnccx1BHNRCM8DRxmT2h
         hg039AcJnHb02ghfeR3eKfKoVIx8mWpESzmbYd4Iboc5lR/ubcbhGSjZ0TwM8j4xaQqY
         HufttRr14FLANXiYglguMkyV9Mg+F39ZANDdEwUweV1FW79QAKsNe3jz2acdPWxgwl7i
         +o9kuA1d2ce+n+7r6V7l+FseiXRUufSsjn4NvtmpEPSpe0ugp5fwSzJVpMEqMcE/Gc/s
         eDyrhiHvNA6kCRxcnZHtwhnUgzk+Tb5oEkIWcNor8PPBTzfabCAtbG1MNlJm5/F8cHZh
         uC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fMsNVWhmOfjJ/mctcMps9G5ebuY+9Y7hmcT1DjQmXEU=;
        b=RgMk3XXOS3gbZaRQ5kNVc3qQ4Y1jnQMYLwRkrqvM6MN8bweR10WWhKN4tOe7vPL3XQ
         MfOBSPexSssgIhpC7P3V2Hi/+2WXJO5Hnr9UtC3pgWEclHIaOwvl0QIs5NzzLKiAOpll
         00XtADRS0YD0rWt68eO/GyC22Rx0CAKtXJVPQ6qIfdTE/dmprt1dl+nHi0LgO2YVruV6
         ZkxhvbbdTOxnKWYr9Wm9ksEvr0/QnnWJtcGLIfhiJ+wijj6h7LF33S3agcNx0PZJ9/uh
         0seJHF/SdqZM8CakB+Hr3D9ysDEYlLAHLDP3nAYXEBvef2BBA2ZVJIiEVIWIhhwQoHIN
         DStw==
X-Gm-Message-State: AMke39mxU+Wzpuu9d8gD7Bn7/1h6kJWCqb+wnKZRCGkAgC14hMS4aUXnrdz8PIYB91AwoQ==
X-Received: by 10.84.168.3 with SMTP id e3mr4784020plb.144.1488306413640;
        Tue, 28 Feb 2017 10:26:53 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.225.167])
        by smtp.gmail.com with ESMTPSA id s4sm5602856pfi.74.2017.02.28.10.26.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:26:53 -0800 (PST)
Date: Tue, 28 Feb 2017 23:56:30 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: ad7280a: Move contents of header file to
 source file
Message-ID: <20170228182630.GA10423@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The contents of the header file are used only by this single
source file.  Move content into .c and remove .h.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c | 15 +++++++++++++++
 drivers/staging/iio/adc/ad7280a.h | 15 ---------------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index ee679ac..44d13dc 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -22,6 +22,21 @@
 
 #include "ad7280a.h"
 
+#define AD7280A_ACQ_TIME_400ns			0
+#define AD7280A_ACQ_TIME_800ns			1
+#define AD7280A_ACQ_TIME_1200ns			2
+#define AD7280A_ACQ_TIME_1600ns			3
+
+#define AD7280A_CONV_AVG_DIS			0
+#define AD7280A_CONV_AVG_2			1
+#define AD7280A_CONV_AVG_4			2
+#define AD7280A_CONV_AVG_8			3
+
+#define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
+#define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
+#define AD7280A_ALERT_REMOVE_AUX5		BIT(0)
+#define AD7280A_ALERT_REMOVE_AUX4_AUX5		BIT(1)
+
 /* Registers */
 #define AD7280A_CELL_VOLTAGE_1		0x0  /* D11 to D0, Read only */
 #define AD7280A_CELL_VOLTAGE_2		0x1  /* D11 to D0, Read only */
diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
index ccfb90d..1b50dd8 100644
--- a/drivers/staging/iio/adc/ad7280a.h
+++ b/drivers/staging/iio/adc/ad7280a.h
@@ -13,21 +13,6 @@
  * TODO: struct ad7280_platform_data needs to go into include/linux/iio
  */
 
-#define AD7280A_ACQ_TIME_400ns			0
-#define AD7280A_ACQ_TIME_800ns			1
-#define AD7280A_ACQ_TIME_1200ns			2
-#define AD7280A_ACQ_TIME_1600ns			3
-
-#define AD7280A_CONV_AVG_DIS			0
-#define AD7280A_CONV_AVG_2			1
-#define AD7280A_CONV_AVG_4			2
-#define AD7280A_CONV_AVG_8			3
-
-#define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
-#define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
-#define AD7280A_ALERT_REMOVE_AUX5		BIT(0)
-#define AD7280A_ALERT_REMOVE_AUX4_AUX5		BIT(1)
-
 struct ad7280_platform_data {
 	unsigned int		acquisition_time;
 	unsigned int		conversion_averaging;
-- 
2.7.4


