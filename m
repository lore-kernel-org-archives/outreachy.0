X-GM-THRID: 6207482452562149376
X-Received: by 10.112.202.165 with SMTP id kj5mr7029019lbc.5.1445292134571;
        Mon, 19 Oct 2015 15:02:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.81.208 with SMTP id f199ls657910lfb.101.gmail; Mon, 19 Oct
 2015 15:02:13 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr7290661lbs.18.1445292133971;
        Mon, 19 Oct 2015 15:02:13 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c7si546682wiy.3.2015.10.19.15.02.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ll6so19012416wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=D1qHME8IxsuU01yZIcwaDEoqrtXLQ8yzLeREI9foc3Q=;
        b=KKUgmScCJLSGt7d7mG+mqeDjpmP/v79hMCzlyHxISuhZ/q9WBrceRDQod+f6YEQ8Ip
         OHLKD5XxX/InVlUbU0EGfnyRczi/ToBi8d5LDBIKjoAzrSMF9Y6uoeDDS//xDyuj05JA
         Cx/f8l/6S7ttDahSuLoktAuk7TeZN17YmUHyDdke1Cet4jiR9UdBoi9CKEtYCorxIGGT
         3jndAP3EmTpL0jfEj046fhJZ9nafZBtsyGQ99igmYuaE3DVy+OSWZR/5582x56moZELd
         PxEdDRXcfzgu56TM6E0q4ZTuIZ96lPrTc31f6Sk6pPj8XLWP8mL8oFPM2GrLlKIwQArk
         UP/g==
X-Received: by 10.180.93.168 with SMTP id cv8mr24169886wib.54.1445292133850;
        Mon, 19 Oct 2015 15:02:13 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:13 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 00/10] staging: iio: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:35 +0300
Message-Id: <cover.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove comparisons to 0 or NULL in order to provide efficiency.
Done with coccinelle
@replace@
identifier e;
@@
(
-e == 0
+ !e
|
-e != 0
+ e
|
-e == NULL
+ !e
|
-e != NULL
+ e
)

Cristina Moraru (10):
  staging: iio: adc: Remove explicit comparisons
  staging: iio: addac: Remove explicit comparisons
  staging: iio: light: Remove explicit comparisons
  staging: iio: meter: Remove explicit comparisons
  staging: iio: accel: Remove explicit comparisons
  staging: iio: cdc: Remove explicit comparisons
  staging: iio: frequency: Remove explicit comparisons
  staging: iio: trigger: Remove explicit comparisons
  staging: iio: gyro: Remove explicit comparisons
  staging: iio: magnetometer: Remove explicit comparisons

 drivers/staging/iio/accel/sca3000_ring.c            |  2 +-
 drivers/staging/iio/adc/ad7192.c                    |  4 ++--
 drivers/staging/iio/adc/ad7280a.c                   |  6 +++---
 drivers/staging/iio/adc/mxs-lradc.c                 | 10 +++++-----
 drivers/staging/iio/adc/spear_adc.c                 |  2 +-
 drivers/staging/iio/addac/adt7316.c                 |  4 ++--
 drivers/staging/iio/cdc/ad7150.c                    |  2 +-
 drivers/staging/iio/cdc/ad7152.c                    |  2 +-
 drivers/staging/iio/frequency/ad9832.c              |  2 +-
 drivers/staging/iio/frequency/ad9834.c              |  2 +-
 drivers/staging/iio/gyro/adis16060_core.c           |  2 +-
 drivers/staging/iio/light/isl29018.c                |  6 +++---
 drivers/staging/iio/light/tsl2583.c                 |  6 +++---
 drivers/staging/iio/light/tsl2x7x_core.c            |  6 +++---
 drivers/staging/iio/magnetometer/hmc5843_core.c     |  2 +-
 drivers/staging/iio/meter/ade7753.c                 |  2 +-
 drivers/staging/iio/meter/ade7754.c                 |  2 +-
 drivers/staging/iio/meter/ade7759.c                 |  2 +-
 drivers/staging/iio/meter/ade7854-spi.c             |  2 +-
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c   |  4 ++--
 drivers/staging/iio/trigger/iio-trig-periodic-rtc.c |  4 ++--
 21 files changed, 37 insertions(+), 37 deletions(-)

-- 
1.9.1


