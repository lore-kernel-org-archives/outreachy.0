X-GM-THRID: 6391534013492756480
X-Received: by 10.98.160.25 with SMTP id r25mr1736981pfe.25.1488144978421;
        Sun, 26 Feb 2017 13:36:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls1713470ita.12.canary-gmail; Sun, 26
 Feb 2017 13:36:17 -0800 (PST)
X-Received: by 10.107.22.4 with SMTP id 4mr4778972iow.61.1488144977651;
        Sun, 26 Feb 2017 13:36:17 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si2519828pfa.4.2017.02.26.13.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:36:17 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so1771036pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 13:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jF/kyaqT1E05NnirARhiOEecEnRh3mpkL/mLePMMefI=;
        b=B7E99Unqus9rcqXH8dilavEOz9QKC8PUSDYMQOfWrMbfDM7jIarTotmQvdmorJlhrk
         utpuU99SdHuSGyuiCLdeS8i1nf7tmYfVYp504Br60YMeNiCO8vMpT7Q/O9kX8io5r1nv
         simqmblAx5b1jmQ4pVAeBgaC1EvgmB9NikVDsqhyMJFTJbEv0aDvxS8Bc6xdD+0xE1dF
         QFZCyHuVlQSTL1tTb8dHuX9Pg2dbyag5b5TxWQSjrcq9AWNaZ/IN11GHEkbhz0/vy3rz
         BRorf4WlV7FFF9F6YofZMljK6wg1/BgWrVPpRRbPUPUzLfg9+rPraG/u/L8tRsZ9frKm
         l2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jF/kyaqT1E05NnirARhiOEecEnRh3mpkL/mLePMMefI=;
        b=JAWOdselJC1DnT8hrAkinyijjYAtPBLpMCE6hjPC0mlLYfHvSWy04+2bhMIbqzz0W6
         EXhAqTe4OysXjPjluDw/ih79eXdDVZVbq8sNBly0WtIT7I/OLJFKXdhxOSnrfKSjEIkr
         yYBmbeKkRHArxXR4BkYmzHy8lWi2CMxyEZLBkY5MUxVAp+dW9AnquV++99rw+ODFMr41
         hv9vkyn86v1LRHcJChGw+HQKV9ArIwjr0URdGSrfqK6iSwpnpWjzGVa10zroxvLBaCkH
         AO56wRiZdSKgUWKimq8BoKOI5gazqRJj06oCaZGUbTTPM6sbLwSihNlk2HaRceb5RA+/
         jpYQ==
X-Gm-Message-State: AMke39nGC73nqkbgQ3MZglRLfnLu1voxWPFDs/TBN1wu+XiPYM93XYEWnIElE0A7C94KtA==
X-Received: by 10.98.33.129 with SMTP id o1mr16827976pfj.5.1488144977142;
        Sun, 26 Feb 2017 13:36:17 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.187.13])
        by smtp.gmail.com with ESMTPSA id q73sm12633613pfa.129.2017.02.26.13.36.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:36:16 -0800 (PST)
Date: Mon, 27 Feb 2017 03:05:57 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: ad7192: Move contents of header file to source
 file
Message-ID: <20170226213557.GA4483@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The contents of the header file are used only by this single
source file. Move content into .c and delete .h.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 38 ++++++++++++++++++++++++++++++--
 drivers/staging/iio/adc/ad7192.h | 47 ----------------------------------------
 2 files changed, 36 insertions(+), 49 deletions(-)
 delete mode 100644 drivers/staging/iio/adc/ad7192.h

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 1fb68c0..a13e79d 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -25,8 +25,6 @@
 #include <linux/iio/triggered_buffer.h>
 #include <linux/iio/adc/ad_sigma_delta.h>
 
-#include "ad7192.h"
-
 /* Registers */
 #define AD7192_REG_COMM		0 /* Communications Register (WO, 8-bit) */
 #define AD7192_REG_STAT		0 /* Status Register	     (RO, 8-bit) */
@@ -166,6 +164,42 @@ struct ad7192_state {
 	struct ad_sigma_delta		sd;
 };
 
+/*
+ * TODO: struct ad7192_platform_data needs to go into include/linux/iio
+ */
+
+/**
+ * struct ad7192_platform_data - platform/board specific information
+ * @vref_mv:		the external reference voltage in millivolt
+ * @clock_source_sel:	[0..3]
+ *			0 External 4.92 MHz clock connected from MCLK1 to MCLK2
+ *			1 External Clock applied to MCLK2
+ *			2 Internal 4.92 MHz Clock not available at the MCLK2 pin
+ *			3 Internal 4.92 MHz Clock available at the MCLK2 pin
+ * @ext_clk_Hz:		the external clock frequency in Hz, if not set
+ *			the driver uses the internal clock (16.776 MHz)
+ * @refin2_en:		REFIN1/REFIN2 Reference Select (AD7190/2 only)
+ * @rej60_en:		50/60Hz notch filter enable
+ * @sinc3_en:		SINC3 filter enable (default SINC4)
+ * @chop_en:		CHOP mode enable
+ * @buf_en:		buffered input mode enable
+ * @unipolar_en:	unipolar mode enable
+ * @burnout_curr_en:	constant current generators on AIN(+|-) enable
+ */
+
+struct ad7192_platform_data {
+	u16		vref_mv;
+	u8		clock_source_sel;
+	u32		ext_clk_hz;
+	bool		refin2_en;
+	bool		rej60_en;
+	bool		sinc3_en;
+	bool		chop_en;
+	bool		buf_en;
+	bool		unipolar_en;
+	bool		burnout_curr_en;
+};
+
 static struct ad7192_state *ad_sigma_delta_to_ad7192(struct ad_sigma_delta *sd)
 {
 	return container_of(sd, struct ad7192_state, sd);
diff --git a/drivers/staging/iio/adc/ad7192.h b/drivers/staging/iio/adc/ad7192.h
deleted file mode 100644
index 7433a43..0000000
--- a/drivers/staging/iio/adc/ad7192.h
+++ /dev/null
@@ -1,47 +0,0 @@
-/*
- * AD7190 AD7192 AD7195 SPI ADC driver
- *
- * Copyright 2011 Analog Devices Inc.
- *
- * Licensed under the GPL-2.
- */
-#ifndef IIO_ADC_AD7192_H_
-#define IIO_ADC_AD7192_H_
-
-/*
- * TODO: struct ad7192_platform_data needs to go into include/linux/iio
- */
-
-/**
- * struct ad7192_platform_data - platform/board specific information
- * @vref_mv:		the external reference voltage in millivolt
- * @clock_source_sel:	[0..3]
- *			0 External 4.92 MHz clock connected from MCLK1 to MCLK2
- *			1 External Clock applied to MCLK2
- *			2 Internal 4.92 MHz Clock not available at the MCLK2 pin
- *			3 Internal 4.92 MHz Clock available at the MCLK2 pin
- * @ext_clk_Hz:		the external clock frequency in Hz, if not set
- *			the driver uses the internal clock (16.776 MHz)
- * @refin2_en:		REFIN1/REFIN2 Reference Select (AD7190/2 only)
- * @rej60_en:		50/60Hz notch filter enable
- * @sinc3_en:		SINC3 filter enable (default SINC4)
- * @chop_en:		CHOP mode enable
- * @buf_en:		buffered input mode enable
- * @unipolar_en:	unipolar mode enable
- * @burnout_curr_en:	constant current generators on AIN(+|-) enable
- */
-
-struct ad7192_platform_data {
-	u16		vref_mv;
-	u8		clock_source_sel;
-	u32		ext_clk_hz;
-	bool		refin2_en;
-	bool		rej60_en;
-	bool		sinc3_en;
-	bool		chop_en;
-	bool		buf_en;
-	bool		unipolar_en;
-	bool		burnout_curr_en;
-};
-
-#endif /* IIO_ADC_AD7192_H_ */
-- 
2.7.4


