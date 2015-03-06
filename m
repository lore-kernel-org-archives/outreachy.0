X-GM-THRID: 6845034921984
X-Received: by 10.236.223.41 with SMTP id u39mr13748309yhp.49.1425630883221;
        Fri, 06 Mar 2015 00:34:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.162 with SMTP id o34ls203271ioi.64.gmail; Fri, 06 Mar
 2015 00:34:43 -0800 (PST)
X-Received: by 10.42.76.145 with SMTP id e17mr6692613ick.34.1425630883029;
        Fri, 06 Mar 2015 00:34:43 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id hs7si1250033pad.1.2015.03.06.00.34.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 00:34:43 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id rd3so25870755pab.5
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 00:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6wddSRE28BGLxRcpRVku9oRlV6N7IHP0b36s5YNM4/8=;
        b=mtJeyiUs7wzeipGoFXFCpFuAbgz1Wd8Ukel0JEb1DSSUlNGIuSLgYsG1JpaZddusvl
         bHk+Xj/p5KAYuUXjsXC8Tdpzeq2uhXq8p8S0BI2SG2lmm0TP3mZzwokwnneaGwADAMQZ
         2lZEDwyG6+VZHqJxpBzXc+02dpIyLlQlIJuqiHDND7JkB19Za0I520th+8Dp+lUXkPGQ
         sG5WGbf3gKcNie1q7P/Wx/VRNm5AE+YzoGNSgRWNLaOEqy5/9MiQVq8g16FXYDsHmiQI
         xYT+1l9zqxicwLoGUUB4LBcYN80PQlyrGANtXSbmODiJoeiEVIJxAJjktWZh3OBACdkE
         hm0Q==
X-Received: by 10.68.189.105 with SMTP id gh9mr23235918pbc.142.1425630882901;
        Fri, 06 Mar 2015 00:34:42 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.7])
        by mx.google.com with ESMTPSA id gf2sm1033422pbc.60.2015.03.06.00.34.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 00:34:42 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH] Staging: iio: Change data type in adis16220_read_16bit to u16
Date: Fri,  6 Mar 2015 14:06:00 +0530
Message-Id: <1425630960-7142-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

In the adis16220_read16bit() function we earlier used a s16 value 'val'
which is used by the adis_read_reg_16 function to read data and takes a
u16 value as a parameter.

So, this patch changes the data type of 'val' from s16 to u16 for further
simplification of code and thereby avoiding unnecessary typecast.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/iio/accel/adis16220_core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16220_core.c b/drivers/staging/iio/accel/adis16220_core.c
index d478f51..7a4a0fd 100644
--- a/drivers/staging/iio/accel/adis16220_core.c
+++ b/drivers/staging/iio/accel/adis16220_core.c
@@ -28,16 +28,15 @@ static ssize_t adis16220_read_16bit(struct device *dev,
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct adis16220_state *st = iio_priv(indio_dev);
 	ssize_t ret;
-	s16 val = 0;
+	u16 val = 0;
 
 	/* Take the iio_dev status lock */
 	mutex_lock(&indio_dev->mlock);
-	ret = adis_read_reg_16(&st->adis, this_attr->address,
-					(u16 *)&val);
+	ret = adis_read_reg_16(&st->adis, this_attr->address, &val);
 	mutex_unlock(&indio_dev->mlock);
 	if (ret)
 		return ret;
-	return sprintf(buf, "%d\n", val);
+	return sprintf(buf, "%u\n", val);
 }
 
 static ssize_t adis16220_write_16bit(struct device *dev,
-- 
1.9.1


