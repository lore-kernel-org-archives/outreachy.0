X-GM-THRID: 6336450754880995328
X-Received: by 10.36.0.77 with SMTP id 74mr2362746ita.28.1475319907475;
        Sat, 01 Oct 2016 04:05:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.30 with SMTP id j30ls2688275ioi.30.gmail; Sat, 01 Oct
 2016 04:05:03 -0700 (PDT)
X-Received: by 10.98.217.7 with SMTP id s7mr3138599pfg.16.1475319903177;
        Sat, 01 Oct 2016 04:05:03 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si5949266pab.2.2016.10.01.04.05.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 04:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id r9so5276216paz.1
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 04:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=b+gs77bRh2KN+ZCtfQ0SPpQkNBusLwzszhmSn9pYJl4=;
        b=F8jLABWuoDVIOje1uPn0PmVonGzaPhx0zbILpr0vH640/GeWKUIYJiIw3dzmzr8L/k
         7scCTFWxeRD4EMSJdJ9KftiwPIYlTV3GOarcHIuYHWqzDgpWjxuaSaiYxmvBzStodW8m
         FaoKBhNrIdvMpSIO3Kztkn9GUBNnMb5q1FuN07kmbFgysf2vFG+OCqxd7AZb5y0NS8gj
         Ay2sg2DQmpy1YAB2QKsEFmbymZDSsj2nq/GIVg+lpARhN+JlRUzywvfON5rIZHeOBJRE
         hpCwbFhOp+DHvZwoJbGJbJ7HV1eH61+VEOu0/8SkR+6EQfRiy3zZ56vKm/bBxawaG70s
         2ikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=b+gs77bRh2KN+ZCtfQ0SPpQkNBusLwzszhmSn9pYJl4=;
        b=aXdFzbju1cQEIAvMU8buVWUTJaxE/NDH36hZkFwC2uZmyvR12naKbWkcI1zm45jcmV
         qx+W9PBsaaTPKMBLsPmb8c7keJYeLPHs4ja+4a6qvGlKYZUuDrXfeDWBtIipW/8L6MQi
         77GQ0DvMfh7YC4Vw3FsvOx6+nwEJH+GoIPiVd0Kfsv0Ot0LpcqeqtIoDPZ64hpTVqNaX
         PlWaXPnkrJ38WqQTU+82teq8eWMqf9Hm2HzymddYnjKTofJfPERiiAI/2k7U0xxvyxDf
         Dr/YYu7QQvIv64pD6EnIQp9ADR/jc2KxJ0P/XjF0YpFkHiuAvarxdrjvKu1b6S5PtLZ+
         AREQ==
X-Gm-Message-State: AA6/9RlgNiyRYjC6YgAaQ38JwWGZQeLiJT9BeXBSoVm50dhyjpdHH/wrvfAakzWVcxzATg==
X-Received: by 10.66.232.164 with SMTP id tp4mr19418888pac.29.1475319902729;
        Sat, 01 Oct 2016 04:05:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.217.210])
        by smtp.gmail.com with ESMTPSA id f67sm12490407pfg.88.2016.10.01.04.04.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 04:05:01 -0700 (PDT)
Date: Sat, 1 Oct 2016 16:34:18 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix sparse
 warning
Message-ID: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix the following sparse warning due to incorrect type in assignment:
drivers/iio/imu/bmi160/bmi160_core.c:411:26: warning: incorrect type
in assignment (different base types)

drivers/iio/imu/bmi160/bmi160_core.c:411:26: expected signed short
[signed] [short] [explicitly-signed] <noident>
drivers/iio/imu/bmi160/bmi160_core.c:411:26: got restricted __le16
[addressable] [usertype] sample

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
index e0251b8..5355507 100644
--- a/drivers/iio/imu/bmi160/bmi160_core.c
+++ b/drivers/iio/imu/bmi160/bmi160_core.c
@@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
 	struct iio_poll_func *pf = p;
 	struct iio_dev *indio_dev = pf->indio_dev;
 	struct bmi160_data *data = iio_priv(indio_dev);
-	s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
+	__le16 buf[16];
+	/* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
 	int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
 	__le16 sample;
 
-- 
2.7.4


