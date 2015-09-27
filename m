X-GM-THRID: 6199177214450204672
X-Received: by 10.112.147.7 with SMTP id tg7mr1867582lbb.16.1443358420661;
        Sun, 27 Sep 2015 05:53:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.194 with SMTP id fq2ls392253wib.3.gmail; Sun, 27 Sep
 2015 05:53:40 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr2001613wib.0.1443358420074;
        Sun, 27 Sep 2015 05:53:40 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id c1si351660wiv.3.2015.09.27.05.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Sep 2015 05:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id lk2so72455041wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Sep 2015 05:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=55jfc4gR95jy6Ru2FaztqNV+MuIxKXV1qqQxorwLuJs=;
        b=mQeUOSY0wcLdFfDcisWRRahTfqL8oJxWJm+24dXg0fxGf9JQf77JzP+WD7/0NF8/OU
         /8A3ZHCEs3mUm46/8wvrDv3T/mYjyYoQvPTSvf/sLR3eTNplWqPd2KwPh2er8o1+ztGB
         CvysP5fCFQYxMUM6ZmAln5H+ogiSjzQdZDXNcuSvswznYshnDs5wZoTEcUnRt4J4vWhe
         Ss/U3b2F8gJ+0hI0ySZS64rMJJobMR+UJEA6JZtzASkcarPzmqj8wF5ayLnbxjALrg0u
         7i4/2djYCECO/u+SqM9AXqHUmv/gH9zo3iULubY/vAKbQAJdeAsB78Y/Pee253bQFMYq
         zGlw==
X-Received: by 10.194.110.37 with SMTP id hx5mr16486628wjb.149.1443358420004;
        Sun, 27 Sep 2015 05:53:40 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id ej5sm13008423wjd.22.2015.09.27.05.53.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 27 Sep 2015 05:53:39 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging:iio/accel: Fixed checkpatch.pl warnings
Date: Sun, 27 Sep 2015 05:53:14 -0700
Message-Id: <1443358394-5464-1-git-send-email-cristina.moraru09@gmail.com>
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


