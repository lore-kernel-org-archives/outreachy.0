X-GM-THRID: 2447474950144
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4ffe5f02a3a5022d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr735469lbb.6.1424616789791;
        Sun, 22 Feb 2015 06:53:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.105 with SMTP id o9ls398431wic.38.gmail; Sun, 22 Feb
 2015 06:53:09 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr706160wic.4.1424616789500;
        Sun, 22 Feb 2015 06:53:09 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id ta1si492966wic.1.2015.02.22.06.53.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 06:53:09 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id m14so13613876wev.8
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 06:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vfVMU6R0BRdgTfM+tOhj7VdZPxxndUJSpia1Z7QxmiM=;
        b=z4PNRb53bCdk8QVDjG1VFD5e4ckM2AuSgOwuyhcKfXOVAdeJNTr+2Yat3kdMO5vc6Q
         UADcgbONinv1td8qQ8SbwvawGTxNZYxbkrUWnlk0/VAhaF7K2zj7MaFyvDzZY8H8JNzX
         EvtnNWb3UAaraUwsF534T0sj1KiZbLNyMPmBHtHW4EJXoKjjE4O1X37qg6bls3qeu0XV
         t+gaJIYLipQ+YuQFdikVHECgvTPo/ljUr3qnziexeTnQMt8BkfdiTTDCb5uvmHR/SuqC
         3rQpeWsw+iZAkvoV4sdLYvDDuX8jcmB02JDPq9YHrV2rtv5jLnLQkRAYzh+fCflH4RuN
         GYeA==
X-Received: by 10.194.187.236 with SMTP id fv12mr13586720wjc.131.1424616789414;
        Sun, 22 Feb 2015 06:53:09 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id gi3sm11734940wic.15.2015.02.22.06.53.08
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 06:53:08 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: iio: accel: Fixed else after return or break warning
Date: Sun, 22 Feb 2015 16:53:12 +0200
Message-Id: <1424616792-4902-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
drivers/staging/iio/accel/adis16220_core.c warning: else is not generally useful
after a break or return

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/iio/accel/adis16220_core.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16220_core.c b/drivers/staging/iio/accel/adis16220_core.c
index d9a1a14..5673edb 100644
--- a/drivers/staging/iio/accel/adis16220_core.c
+++ b/drivers/staging/iio/accel/adis16220_core.c
@@ -323,17 +323,17 @@ static int adis16220_read_raw(struct iio_dev *indio_dev,
 		sval = (s16)(sval << (16 - bits)) >> (16 - bits);
 		*val = sval;
 		return IIO_VAL_INT;
-	} else {
-		ret = adis_read_reg_16(&st->adis, addr->addr, &uval);
-		if (ret)
-			return ret;
-		bits = addr->bits;
-		uval &= (1 << bits) - 1;
-		*val = uval;
-		return IIO_VAL_INT;
 	}
+	ret = adis_read_reg_16(&st->adis, addr->addr, &uval);
+	if (ret)
+		return ret;
+	bits = addr->bits;
+	uval &= (1 << bits) - 1;
+	*val = uval;
+	return IIO_VAL_INT;
 }
 
+
 static const struct iio_chan_spec adis16220_channels[] = {
 	{
 		.type = IIO_VOLTAGE,
-- 
1.8.3.2


