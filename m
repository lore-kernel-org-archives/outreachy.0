X-GM-THRID: 6400656682725146624
X-Received: by 10.99.185.66 with SMTP id v2mr618007pgo.94.1490269015728;
        Thu, 23 Mar 2017 04:36:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.182 with SMTP id w51ls4514479ota.3.gmail; Thu, 23 Mar
 2017 04:36:55 -0700 (PDT)
X-Received: by 10.237.53.146 with SMTP id c18mr545981qte.64.1490269015305;
        Thu, 23 Mar 2017 04:36:55 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si1071843pfx.8.2017.03.23.04.36.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 04:36:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p189so25951968pfp.0
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 04:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gT/winsMBXsmVp1ALhuJsjoL23ooRfTM0ci7ACbfdvQ=;
        b=UycmtpfDPoUJhcZ4N8GHTAfIuIMhkBON0eglPeP1s3kPvc95tIoqJ8F9vGWz/uVByh
         0TS8wyWO0F2vYvoc0nRZP5FpSl/Nf0Tnm2pUdCjeBSJtogNC+a+6QVLK0JTzEN+0lmlc
         Kk7eQ3Jqg/HKheuGS7D1h3895fLx3QnzPwA2FLDWbt7PewDmuOXhpNwL9gdyxOsuC7L7
         8UPfVkFPg5pC1SW8dCG+DjIdJOAOghEEOz9Y12pi42lYK5daOiM+odoHgTCBBpLp1QEO
         2c1C4OviH27aM6SdHxQF6ARgeovow1xj1ehpdr0aqwj82vEif71URrRufJqBH7xIr1ML
         dXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gT/winsMBXsmVp1ALhuJsjoL23ooRfTM0ci7ACbfdvQ=;
        b=JFbtob3rWJeDmQYRXAYs2OpdG11NzLOhCyH+Kt5ZEC6VPfCbm8bUWPF9QkLp8P54xI
         UhaUWCo7FIjVqqXM2wSsehJwCNiNdhnJlAKrEqwax+AeZqzS0uD54dwrearewvrU8vzW
         kZMLMUoBiZvFVLj1oYiB9kTh+LmJjPMp3oTd1gJULNApqIprZ4J6yv2sI6vA/8LGrO6+
         SKOeK1MUT4CZvIUjozGTP027Ry2UfYcwHrOGkITZfFKUkygbqmu4EoPTk31M/dG7Msd9
         oUmT+FU7QbhmpHMyLOLW7P7OG7QVojJEFJCHK6UlsPyzvPkPg5uDpB/EphzK6BhlYyX/
         yWAA==
X-Gm-Message-State: AFeK/H1dlBZ4AXdlo4StkocVula4ECn7o/yiwX/zFyqla/b6XeK/695cNPwmVZTKXTBefg==
X-Received: by 10.98.217.67 with SMTP id s64mr2376222pfg.119.1490269015054;
        Thu, 23 Mar 2017 04:36:55 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m21sm9904365pgh.4.2017.03.23.04.36.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Mar 2017 04:36:53 -0700 (PDT)
Date: Thu, 23 Mar 2017 17:06:49 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ad7746: Moved contents of the header to the source
 file.
Message-ID: <20170323113649.GA23947@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Moved the contents of the header(ad7746.h) into the source file
ad7746.c with the exception of the platform data struct which is
supposed to be used from somewhere else other than the driver.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 5 +++++
 drivers/staging/iio/cdc/ad7746.h | 5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 2d8397b11b19..033a41fd9bee 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -21,6 +21,11 @@
 
 #include "ad7746.h"
 
+#define AD7466_EXCLVL_0         0 /* +-VDD/8 */
+#define AD7466_EXCLVL_1         1 /* +-VDD/4 */
+#define AD7466_EXCLVL_2         2 /* +-VDD * 3/8 */
+#define AD7466_EXCLVL_3         3 /* +-VDD/2 */
+
 /*
  * AD7746 Register Definition
  */
diff --git a/drivers/staging/iio/cdc/ad7746.h b/drivers/staging/iio/cdc/ad7746.h
index ea8572d1df02..2fbcee88fda6 100644
--- a/drivers/staging/iio/cdc/ad7746.h
+++ b/drivers/staging/iio/cdc/ad7746.h
@@ -13,11 +13,6 @@
  * TODO: struct ad7746_platform_data needs to go into include/linux/iio
  */
 
-#define AD7466_EXCLVL_0		0 /* +-VDD/8 */
-#define AD7466_EXCLVL_1		1 /* +-VDD/4 */
-#define AD7466_EXCLVL_2		2 /* +-VDD * 3/8 */
-#define AD7466_EXCLVL_3		3 /* +-VDD/2 */
-
 struct ad7746_platform_data {
 	unsigned char exclvl;	/*Excitation Voltage Level */
 	bool exca_en;		/* enables EXCA pin as the excitation output */
-- 
2.11.0


