X-GM-THRID: 6199177214450204672
X-Received: by 10.112.149.39 with SMTP id tx7mr21683lbb.11.1443562304811;
        Tue, 29 Sep 2015 14:31:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.8.34 with SMTP id dh2ls4911lad.9.gmail; Tue, 29 Sep 2015
 14:31:44 -0700 (PDT)
X-Received: by 10.152.170.169 with SMTP id an9mr28134lac.2.1443562304360;
        Tue, 29 Sep 2015 14:31:44 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id o5si118693wib.0.2015.09.29.14.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id gb1so167960610wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 14:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=55jfc4gR95jy6Ru2FaztqNV+MuIxKXV1qqQxorwLuJs=;
        b=BZOp3HxdXbJCFnH9YiV2YYRSuwm3dur8p4UjZ3Mq4QRf2PV5Tt1Izv5A6OVKzns5lh
         3zoL3fhaf8iO0HP/ebQhxbOtGFwWomj2XmvXqmIMdyMOwVZgQ864jevLdAWa2W+Siht3
         k4xJKvb5zTVpmh5YUs74aPodEVX/xw5ZFqSWpkkG9hbrlLzcHK7Vumrk5yFH4kkb39ry
         ZdGG12EqEOdPznHHsJ/Kb59AKc7F3L8Ziir+OG7MqrSV5szp1KizgzDOkeKx5LxQg1Kw
         pTdl84ZyQYpWglSBg/DoNqnvlPv7qAiMddlADidp71SkvtbnVkErdxq9PdXXTKyYFfIM
         /afw==
X-Received: by 10.194.91.193 with SMTP id cg1mr254393wjb.88.1443562304248;
        Tue, 29 Sep 2015 14:31:44 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.234])
        by smtp.gmail.com with ESMTPSA id kr10sm25916517wjc.25.2015.09.29.14.31.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 14:31:43 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging:iio/accel: Fixed checkpatch.pl warnings
Date: Tue, 29 Sep 2015 14:31:09 -0700
Message-Id: <1443562269-42782-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

'Block comments use a trailing */ on a separate line' Warnings

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq_ring.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/staging/iio/accel/lis3l02dq_ring.c
index b892f2c..1a0651c 100644
--- a/drivers/staging/iio/accel/lis3l02dq_ring.c
+++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
@@ -195,7 +195,8 @@ __lis3l02dq_write_data_ready_config(struct iio_dev *indio_dev, bool state)
 	/* Enable requested */
 	} else if (state && !currentlyset) {
 		/* If not set, enable requested
-		 * first disable all events */
+		 * first disable all events
+		 */
 		ret = lis3l02dq_disable_all_events(indio_dev);
 		if (ret < 0)
 			goto error_ret;
@@ -255,7 +256,8 @@ static int lis3l02dq_trig_try_reen(struct iio_trigger *trig)
 	int i;
 
 	/* If gpio still high (or high again)
-	 * In theory possible we will need to do this several times */
+	 * In theory possible we will need to do this several times
+	 */
 	for (i = 0; i < 5; i++)
 		if (gpio_get_value(st->gpio))
 			lis3l02dq_read_all(indio_dev, NULL);
-- 
1.9.1


