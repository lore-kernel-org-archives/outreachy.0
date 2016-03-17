X-GM-THRID: 6262912321843101696
X-Received: by 10.129.82.14 with SMTP id g14mr6007740ywb.13.1458197961537;
        Wed, 16 Mar 2016 23:59:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls1393320qgf.38.gmail; Wed, 16 Mar
 2016 23:59:20 -0700 (PDT)
X-Received: by 10.140.174.65 with SMTP id u62mr6077465qhu.15.1458197960844;
        Wed, 16 Mar 2016 23:59:20 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si1111359pac.1.2016.03.16.23.59.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 23:59:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id u190so9765749pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 23:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=smbVLmGfoUBSPzOEIbajXQAs6M3bWGw9YfTskcAYUpQ=;
        b=zzMQe+MPeme+n5OdOcXh3qnrpBXcQjA6htsyzIqf9dG/BcaPhnOVqkEj17t8P1qJcm
         2YBFgsLgGso2+nf6rfa3X51VYW33Fga1a22ewBSmk2jCovMuqv34RYsL0quOdmo/5BBV
         OnJf3wbedZ3+OjXgprmzFOF0QGr5efnIB/kP03henNSViA2dopHIrm2+6fdT1Rco5dSd
         5His0uyBpcfatcxoTdcrVwmI/4McJ1enpoaG0BgsY1p+jeMGJSj34PG/rlnVN6eHi4WJ
         rba5DfS/Khl+5bGoSWS2ITtjDzyxgh82Z6MyYWHBXxtnqb1mHoCoUv0yH7T9M7XaF5RO
         hgvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=smbVLmGfoUBSPzOEIbajXQAs6M3bWGw9YfTskcAYUpQ=;
        b=Ka1I2rrphlaMM+bgoF6VJm5tzknjrEFsZ1iZntW+tmQDVUSjXKpDPlMtjjYhjdF/rt
         ks1Dm4DaFIVDoQ8vXIdFzNMCJgnwN8lXOf8XxsdQYDhv0TFCOBERaI6yQYQxdb+cO8R7
         8J7fxKZPQE4Y3sqaEWBNobz+Ku+kfDBskJc65SMWc1ZAWRSyZS8BB8Mft063dHo6zThT
         4KddO2VstBNzAEmt6KMQr75bDcn3VU71Raj7/JUA/U/wSeNpu9oyQ7kMIz2AAhOseX2g
         VrRXY+0uY+0fSRvdBODJnscKaWaJZGz2PYmtauwsWoUCGgfXB7TdiSwrddOcXfaK2dLv
         OnWw==
X-Gm-Message-State: AD7BkJIlS700lCBiuis6B2xOoIHtbSgYJMAEgXCkxy98HXgMYGFktyVAfqkyBWwnzdGBXg==
X-Received: by 10.66.66.140 with SMTP id f12mr12507716pat.122.1458197960652;
        Wed, 16 Mar 2016 23:59:20 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id f8sm10444424pfj.49.2016.03.16.23.59.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 16 Mar 2016 23:59:20 -0700 (PDT)
Date: Wed, 16 Mar 2016 23:59:19 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: iio: ad5933: move contents of header file to
 source file
Message-ID: <17a8cc02afa87fd50e2702487e59577c05b7d33a.1458197518.git.amsfield22@gmail.com>
References: <cover.1458197518.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458197518.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

The contents of the header file are used only by this single
source file.  Move content into .c and remove .h.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 14 +++++++++++--
 drivers/staging/iio/impedance-analyzer/ad5933.h | 28 -------------------------
 2 files changed, 12 insertions(+), 30 deletions(-)
 delete mode 100644 drivers/staging/iio/impedance-analyzer/ad5933.h

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index d1218d8..a7d71d7 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -24,8 +24,6 @@
 #include <linux/iio/buffer.h>
 #include <linux/iio/kfifo_buf.h>
 
-#include "ad5933.h"
-
 /* AD5933/AD5934 Registers */
 #define AD5933_REG_CONTROL_HB		0x80	/* R/W, 2 bytes */
 #define AD5933_REG_CONTROL_LB		0x81	/* R/W, 2 bytes */
@@ -86,6 +84,18 @@
 #define AD5933_POLL_TIME_ms		10
 #define AD5933_INIT_EXCITATION_TIME_ms	100
 
+/**
+ * struct ad5933_platform_data - platform specific data
+ * @ext_clk_Hz:		the external clock frequency in Hz, if not set
+ *			the driver uses the internal clock (16.776 MHz)
+ * @vref_mv:		the external reference voltage in millivolt
+ */
+
+struct ad5933_platform_data {
+	unsigned long			ext_clk_Hz;
+	unsigned short			vref_mv;
+};
+
 struct ad5933_state {
 	struct i2c_client		*client;
 	struct regulator		*reg;
diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.h b/drivers/staging/iio/impedance-analyzer/ad5933.h
deleted file mode 100644
index b140e42..0000000
--- a/drivers/staging/iio/impedance-analyzer/ad5933.h
+++ /dev/null
@@ -1,28 +0,0 @@
-/*
- * AD5933 AD5934 Impedance Converter, Network Analyzer
- *
- * Copyright 2011 Analog Devices Inc.
- *
- * Licensed under the GPL-2.
- */
-
-#ifndef IIO_ADC_AD5933_H_
-#define IIO_ADC_AD5933_H_
-
-/*
- * TODO: struct ad5933_platform_data needs to go into include/linux/iio
- */
-
-/**
- * struct ad5933_platform_data - platform specific data
- * @ext_clk_Hz:		the external clock frequency in Hz, if not set
- *			the driver uses the internal clock (16.776 MHz)
- * @vref_mv:		the external reference voltage in millivolt
- */
-
-struct ad5933_platform_data {
-	unsigned long			ext_clk_Hz;
-	unsigned short			vref_mv;
-};
-
-#endif /* IIO_ADC_AD5933_H_ */
-- 
2.1.4


