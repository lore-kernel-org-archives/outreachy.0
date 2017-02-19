X-GM-THRID: 6388911007678332928
X-Received: by 10.99.219.69 with SMTP id x5mr5667269pgi.85.1487534446963;
        Sun, 19 Feb 2017 12:00:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.196 with SMTP id x62ls8614523ota.32.gmail; Sun, 19 Feb
 2017 12:00:46 -0800 (PST)
X-Received: by 10.31.3.167 with SMTP id f39mr4593546vki.22.1487534446635;
        Sun, 19 Feb 2017 12:00:46 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id z73si1968600pfa.2.2017.02.19.12.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:00:46 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id a123so7354292pgc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 12:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+tG5oL6GYXh5JLu1CWO2/P42x5qz+hZnpoL4DgiFhgk=;
        b=WFuqAbwL+qmk3D/KwX/IE814pr4Ej2frDrZNgOCErEyBwgKH3xq+fmAODofcIz8qes
         uh0JQI9jRljYFNfsrwzri0QZTHWisp1R/E5ui//224We3+wKi0IYSlX9wrPAFkA7T7UV
         fK1j0XzWMbuhvem0sjcH5z9BuUO/MHHuU8LAiegh+JFstgOvo9m5FXHOLJPi/B25R00i
         aI12oQ+KQkyJ8qC5REWZrxlsP+r5uEobH+OYWYOFBmX0EQGuYwdK9FyTfrRg+gPbbmu+
         1lrHcY+VViMpridbXdl5xLy0XdF45naDjyRVBUfKIsPW8Uuf+fhFvzFZZnhionlHcO+r
         Lwgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+tG5oL6GYXh5JLu1CWO2/P42x5qz+hZnpoL4DgiFhgk=;
        b=c0F4wNOTHZHuweaSfOq+/57/y/crVTZMQgorcpD1sRz3lLcI1VSBdyRhYRjLv4v8y4
         n4En82/TAjdY9xdSXjbytKzj7aecrDUGdz6AUGC3Bcd6Hu9r99koWGHMbUTN/yMosVjt
         AIr5FavZzsd2I0s1OVPaQ0DO1nMCBF+ulpBFNcU2Qgrh1eOzz0AG4hn4rK1oZ5+jdarH
         RyuQ3xKWQX0O9B96JckeXspI3mt+exx4fRJJNJWCH/MiJxfKgupXdN7HQvq38D5HYb2c
         Vx4CbUjR2DvA/SMSxPEjMoc7oBNWjJc69Z4MAfl4jSy88nmyY1CaNLsq5ZYSghVHpBL4
         EVsg==
X-Gm-Message-State: AMke39l56+ZAP+b7FoRfSNU1YA/m/regkVCTmp3yt+dDYR9ylBc28d0PK/UAyAazanGi4A==
X-Received: by 10.84.177.164 with SMTP id x33mr1395040plb.75.1487534446396;
        Sun, 19 Feb 2017 12:00:46 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.155])
        by smtp.gmail.com with ESMTPSA id z127sm31010135pgz.29.2017.02.19.12.00.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:00:45 -0800 (PST)
Date: Mon, 20 Feb 2017 01:30:27 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 2/2] staging: iio: ad7152: Use GENMASK() macro for left
 shifts
Message-ID: <b74094e5c94e11cad734b1bde11db0356e6d3aab.1487483384.git.karniksayli1995@gmail.com>
References: <cover.1487483384.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487483384.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Use GENMASK() macro for left shifting integers.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Used GENMASK() macro instead of BIT() macro for multi-bit bitfields.
Removed extra parentheses around argument to macro

 drivers/staging/iio/cdc/ad7152.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index e8609b8..ab94fad 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -47,28 +47,28 @@
 #define AD7152_STATUS_PWDN		BIT(7)
 
 /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
-#define AD7152_SETUP_CAPDIFF		(1 << 5)
-#define AD7152_SETUP_RANGE_2pF		(0 << 6)
-#define AD7152_SETUP_RANGE_0_5pF	(1 << 6)
-#define AD7152_SETUP_RANGE_1pF		(2 << 6)
-#define AD7152_SETUP_RANGE_4pF		(3 << 6)
-#define AD7152_SETUP_RANGE(x)		((x) << 6)
+#define AD7152_SETUP_CAPDIFF		GENMASK(1, 5)
+#define AD7152_SETUP_RANGE_2pF		GENMASK(0, 6)
+#define AD7152_SETUP_RANGE_0_5pF	GENMASK(1, 6)
+#define AD7152_SETUP_RANGE_1pF		GENMASK(2, 6)
+#define AD7152_SETUP_RANGE_4pF		GENMASK(3, 6)
+#define AD7152_SETUP_RANGE(x)		GENMASK(x, 6)
 
 /* Config Register Bit Designations (AD7152_REG_CFG) */
-#define AD7152_CONF_CH2EN		(1 << 3)
-#define AD7152_CONF_CH1EN		(1 << 4)
-#define AD7152_CONF_MODE_IDLE		(0 << 0)
-#define AD7152_CONF_MODE_CONT_CONV	(1 << 0)
-#define AD7152_CONF_MODE_SINGLE_CONV	(2 << 0)
-#define AD7152_CONF_MODE_OFFS_CAL	(5 << 0)
-#define AD7152_CONF_MODE_GAIN_CAL	(6 << 0)
+#define AD7152_CONF_CH2EN		GENMASK(1, 3)
+#define AD7152_CONF_CH1EN		GENMASK(1, 4)
+#define AD7152_CONF_MODE_IDLE		GENMASK(0, 0)
+#define AD7152_CONF_MODE_CONT_CONV	GENMASK(1, 0)
+#define AD7152_CONF_MODE_SINGLE_CONV	GENMASK(2, 0)
+#define AD7152_CONF_MODE_OFFS_CAL	GENMASK(5, 0)
+#define AD7152_CONF_MODE_GAIN_CAL	GENMASK(6, 0)
 
 /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
-#define AD7152_CAPDAC_DACEN		(1 << 7)
-#define AD7152_CAPDAC_DACP(x)		((x) & 0x1F)
+#define AD7152_CAPDAC_DACEN		GENMASK(1, 7)
+#define AD7152_CAPDAC_DACP(x)		GENMASK(x, 0x1F)
 
 /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
-#define AD7152_CFG2_OSR(x)		(((x) & 0x3) << 4)
+#define AD7152_CFG2_OSR(x)		GENMASK((x) & 0x3, 4)
 
 enum {
 	AD7152_DATA,
-- 
2.7.4


