X-GM-THRID: 6400149763723886592
X-Received: by 10.157.31.42 with SMTP id x39mr19087664otd.111.1490200961066;
        Wed, 22 Mar 2017 09:42:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.67.171 with SMTP id t43ls502542ote.48.gmail; Wed, 22 Mar
 2017 09:42:40 -0700 (PDT)
X-Received: by 10.157.40.100 with SMTP id h33mr738811otd.56.1490200960582;
        Wed, 22 Mar 2017 09:42:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s67si461388pfs.4.2017.03.22.09.42.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 09:42:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so31447005pge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 09:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yoBR6Dt32mvbppD6ZlN3kqMBCEL+d7+RCYJzmPrzVoY=;
        b=EbdguCzASnTu8oN3eVTjsq3DrOf2s3oOdNJt60rQmXhzkbRzVk7g85Kgw45VZ1k/jM
         WlsK4ACMoFkHlK1XS1V+m+3zAfXfi70OTEtQ6dBXxTf830uSawDQyEo2HBs7NVtWIfVU
         lTES0FhBlHsCgzNkt0KsGDtAO5JLcHH7W6rCySEuKAbKMi/VmCUqIwrPBiTtDjX/IzjT
         CPTYmO0+nVY9RMEZPBVvoR9Wms42WIOSzGJIw40GOIBDXsVh3V1zK1UqR9CeYsh2f1Ga
         EDYR02ktGXe7nhm9CyZo5KcH8PneoiQ9ZaiBJCYAWP1uo60mHEcYZEuyZnVqGnNR0WZG
         C/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yoBR6Dt32mvbppD6ZlN3kqMBCEL+d7+RCYJzmPrzVoY=;
        b=rxh1hpAICPQAXR6hogiKx3QAJBGwlI9td7uRt8AWkpkp5IA5r+CwObTxL1+Vm93cnt
         Avup8NUiaaA3xnfmhvwdRhybVC80hz9DvMeQqfNVIItTTWswi2zlKWUSlUDGmiEncyb4
         aUpBTY2smNC4briDi103hNWHvRd/s6uRpSXc271RteiS8HWTcXCGFuKnAlIuwLHEAoFZ
         TP+5SiZWyX9KdkPUQ7Ur1+taBWKSk1N8Jc5p6+WyWHYQa/1OPouB+OZ9DPeAZFB10Z7t
         OUdRG8AElSESC7WONXM2RwZYZZ5eQZoruF96VaiT5l2GAqq28nd8Io+zLe1x0vkN72+M
         sklA==
X-Gm-Message-State: AFeK/H1aFEes6Jm6XFaAIUPmIfuoSUrGcRM+KC/3RQTrW3u24ayqWT7DElMNpFv9JoaLAA==
X-Received: by 10.84.168.69 with SMTP id e63mr56295801plb.124.1490200960287;
        Wed, 22 Mar 2017 09:42:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s13sm5022197pfd.46.2017.03.22.09.42.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Mar 2017 09:42:38 -0700 (PDT)
Date: Wed, 22 Mar 2017 22:12:34 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: Replace a bit shift by a use of BIT.
Message-ID: <20170322164234.GA18805@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 -remove/correct the wrong code.

 drivers/staging/iio/cdc/ad7150.c |  2 +-
 drivers/staging/iio/cdc/ad7746.c | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index ca72af3e9d4b..a6f249e9c1e1 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -232,7 +232,7 @@ static int ad7150_write_event_config(struct iio_dev *indio_dev,
 	if (ret < 0)
 		goto error_ret;
 
-	cfg = ret & ~((0x03 << 5) | (0x1 << 7));
+	cfg = ret & ~((0x03 << 5) | BIT(7));
 
 	switch (type) {
 	case IIO_EV_TYPE_MAG_ADAPTIVE:
diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 81f8b9ee1120..453d3978879d 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -45,10 +45,10 @@
 #define AD7746_STATUS_RDYCAP		BIT(0)
 
 /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
-#define AD7746_CAPSETUP_CAPEN		(1 << 7)
-#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
-#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
-#define AD7746_CAPSETUP_CACHOP		(1 << 0)
+#define AD7746_CAPSETUP_CAPEN		(BIT(7))
+#define AD7746_CAPSETUP_CIN2		(BIT(6)) /* AD7746 only */
+#define AD7746_CAPSETUP_CAPDIFF		(BIT(5))
+#define AD7746_CAPSETUP_CACHOP		(BIT(0))
 
 /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
 #define AD7746_VTSETUP_VTEN		(1 << 7)
@@ -56,9 +56,9 @@
 #define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
 #define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
 #define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
-#define AD7746_VTSETUP_EXTREF		(1 << 4)
-#define AD7746_VTSETUP_VTSHORT		(1 << 1)
-#define AD7746_VTSETUP_VTCHOP		(1 << 0)
+#define AD7746_VTSETUP_EXTREF		(BIT(4))
+#define AD7746_VTSETUP_VTSHORT		(BIT(1))
+#define AD7746_VTSETUP_VTCHOP		(BIT(0))
 
 /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
 #define AD7746_EXCSETUP_CLKCTRL		BIT(7)
@@ -82,7 +82,7 @@
 #define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
 
 /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
-#define AD7746_CAPDAC_DACEN		(1 << 7)
+#define AD7746_CAPDAC_DACEN		(BIT(7))
 #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
 
 /*
-- 
2.11.0


