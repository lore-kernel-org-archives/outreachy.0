X-GM-THRID: 6338775155629621248
X-Received: by 10.36.55.72 with SMTP id r69mr3627005itr.29.1475861099734;
        Fri, 07 Oct 2016 10:24:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.10.13 with SMTP id 13ls1734855itw.16.gmail; Fri, 07 Oct
 2016 10:24:57 -0700 (PDT)
X-Received: by 10.66.167.198 with SMTP id zq6mr4225344pab.96.1475861097708;
        Fri, 07 Oct 2016 10:24:57 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id d11si2194723pfl.2.2016.10.07.10.24.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 10:24:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so1577313pfz.3
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 10:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JCuaEmZH7AMbShgg7a8ee8zGudMPhRpdVxjvrtHArhw=;
        b=WvxggzSAVF3EPI6rMuHiDDIu4138mDGmTEJeWxvLzLKBgzzxf3fda7AUgLhThIms/W
         r605yt1Q8nBf4HoL+WCo0xmQfHXmj19FJDds1km6xjuED0nqZLhsXOuXrtx4i858QQPo
         g8y7XkN81tTwMT5L5tiCm+K0mdZMgHg0rrJRWKFFlXR34Bm0QNJKYyEc9uY5ItpEDLI5
         v+ARBNwVCwEXBW4gyU6ddHIb7eckHLlMHSOjeEJNNS86nIFqO62PLRqIhovSbbAfkCqk
         xXDj0GPwWt0vNd/D72I86j8IYt0wHYd7ZPrARmtH25jOv5bml6wGP+Dob+NnQc5/FVUQ
         vzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JCuaEmZH7AMbShgg7a8ee8zGudMPhRpdVxjvrtHArhw=;
        b=UCG9n8VmEUZGtNzY4HYPwdDjCVdZAtehFXe4mzMxE1Bj0uuz1yjpjE+fe12kdfCBgE
         S2unvl43KbuzPM0ZrW81kMWvUagkNmd+PD3T8qfFs/lGMGbzJ35SUbdsJU2HQVLjMmab
         23af7bW90340nAUbsZCgW6x4aPTR30lbPvJYOjwrVkVZn32SVYb827C7psEtnI0zxWJo
         srTn9675a2JguMyciddScWjvA4gZs6xiLm7lhwmtZRoY50sBvNKMkLaoEY+AcnEwHEFO
         qxRSY2M72xJIMuzHvgmBH0+j9xAqnBSdr+AYgQexZDdcsGvmFf529ZzjcGIdBcXFOauZ
         9eEw==
X-Gm-Message-State: AA6/9RnoEt6th2Sc5BT5anSgiq83tm57KprjoDxcK9nbQzrWAbB0Xja1x9VzbFbVHf4kUg==
X-Received: by 10.98.184.26 with SMTP id p26mr29979887pfe.68.1475861097364;
        Fri, 07 Oct 2016 10:24:57 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.199.101])
        by smtp.gmail.com with ESMTPSA id i4sm32460996pav.27.2016.10.07.10.24.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 10:24:56 -0700 (PDT)
Date: Fri, 7 Oct 2016 22:54:31 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 21cnbao@gmail.com
Subject: [PATCH] iio: bmi160_core: Fix sparse warning due to incorrect type
 in assignment
Message-ID: <20161007172431.GA4342@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

There is a type mismatch between the buffer which is of type s16 and the
samples stored, which are declared as __le16.

Fix the following sparse warning:
drivers/iio/imu/bmi160/bmi160_core.c:411:26: warning: incorrect type
in assignment (different base types)

drivers/iio/imu/bmi160/bmi160_core.c:411:26: expected signed short
[signed] [short] [explicitly-signed] <noident>
drivers/iio/imu/bmi160/bmi160_core.c:411:26: got restricted __le16
[addressable] [usertype] sample

This is a cosmetic-type patch since it does not alter code behaviour. The le16
is going into a 16bit buf element, and is labelled as IIO_LE in the channel
buffer definition.

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


