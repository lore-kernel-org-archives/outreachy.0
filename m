X-GM-THRID: 6200758808999886848
X-Received: by 10.112.132.6 with SMTP id oq6mr1722681lbb.1.1443726664045;
        Thu, 01 Oct 2015 12:11:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.72 with SMTP id t69ls127931lfe.56.gmail; Thu, 01 Oct
 2015 12:11:03 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr1726707lbp.24.1443726663212;
        Thu, 01 Oct 2015 12:11:03 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ch7si130049wib.2.2015.10.01.12.11.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 12:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id lk2so2966264wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 12:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5Jws/LWsY8AFsf/H6bcUYFE2i70A66wYSAhFCiyZROA=;
        b=hhj4RuY0kYu5S3hoXRmmyFzzdJNNHxL7jFwPLOnrIMRstfeqYudj98fNHaZVOkMKX/
         Ei8AX4v7Aa/UJ65JYy38XLHwHFNLrRyYx/MBdoMAdFZ0VFLUXU4qdG8x05TAGeZ1b2hx
         /nGzDVP8tmPNmdzCw1ALFUCn/6lw4xb5wyWoAPtHwZ1CTqjTVT6RZBD0G7kGul4rpmLR
         bDgnu2nolhwJiNn3iiyzT4XiM+dT0/BLUxnWsqOzrTazI4DI1IRa8CDS/OVDTbF+TAj0
         v9M0vEC8EVVolXaazGc7OI1ZOANeDGizXsumK/Mv4TNDx2xlLso/keYoUVU4mJjbyvO/
         IIMA==
X-Received: by 10.180.8.3 with SMTP id n3mr357994wia.41.1443726663087;
        Thu, 01 Oct 2015 12:11:03 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id l1sm7580677wjx.13.2015.10.01.12.11.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 12:11:02 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: iio: Fix comment style warning
Date: Thu,  1 Oct 2015 22:10:52 +0300
Message-Id: <1443726652-48201-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Move final */ to the next line, in accordance with the suggestion of
checkpatch

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


