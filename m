X-GM-THRID: 6207482452562149376
X-Received: by 10.194.240.230 with SMTP id wd6mr1083910wjc.0.1445371017106;
        Tue, 20 Oct 2015 12:56:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.33.196 with SMTP id h187ls123629lfh.4.gmail; Tue, 20 Oct
 2015 12:56:56 -0700 (PDT)
X-Received: by 10.112.148.202 with SMTP id tu10mr679655lbb.12.1445371016456;
        Tue, 20 Oct 2015 12:56:56 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id hs5si786413wib.1.2015.10.20.12.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id ll6so44695367wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Ylg1h6wPuhBUgKtWnxQOa/vRQTjih3cPHMMTs0Rrvj8=;
        b=dGFEhkSoe7yKP+T3qNT5p4hTnYZ4tLuDKjvoaEP+n421YWm1vr98ucWEAHYP9ScawW
         ebWqoDiv1IVIWY09A4KBqRXd0ucmAjaEx3h+eASbuk9d+shKn7Df2SNM3k8gm8qLfA6y
         x3xFeUhi48UrzvyF5Rm0wEMzBGD2T/gfaLObiVRSc3cZ3+qD8bBniaN3tBdQ5BUYGk0B
         DPR+C1g9c0aQogmNTwxmV9oajrwxYOa+h6JEsMcEvayc0GtEE9tgiwGi/BaM0LjEW5Ra
         B1KmhhyUb32zQXhaZBq4xsbJpYtbchwnBwSy9TduRDuydRPQgsKujgpOIQdnr2/+1bZH
         9zHQ==
X-Received: by 10.194.61.70 with SMTP id n6mr6079198wjr.81.1445371016353;
        Tue, 20 Oct 2015 12:56:56 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.56.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:56:55 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 0/9] staging: iio: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:38 +0300
Message-Id: <cover.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 and NULL. Done with coccinelle:
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

Changes in v2:
Remove some changes for consistency of notations

Cristina Moraru (9):
  staging: iio: adc: Remove explicit comparisons
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
 drivers/staging/iio/cdc/ad7150.c                    |  2 +-
 drivers/staging/iio/cdc/ad7152.c                    |  2 +-
 drivers/staging/iio/frequency/ad9834.c              |  2 +-
 drivers/staging/iio/gyro/adis16060_core.c           |  2 +-
 drivers/staging/iio/light/isl29018.c                |  4 ++--
 drivers/staging/iio/light/tsl2583.c                 |  6 +++---
 drivers/staging/iio/light/tsl2x7x_core.c            |  6 +++---
 drivers/staging/iio/magnetometer/hmc5843_core.c     |  2 +-
 drivers/staging/iio/meter/ade7753.c                 |  2 +-
 drivers/staging/iio/meter/ade7754.c                 |  2 +-
 drivers/staging/iio/meter/ade7759.c                 |  2 +-
 drivers/staging/iio/meter/ade7854-spi.c             |  2 +-
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c   |  4 ++--
 drivers/staging/iio/trigger/iio-trig-periodic-rtc.c |  2 +-
 19 files changed, 32 insertions(+), 32 deletions(-)

-- 
1.9.1


