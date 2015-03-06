X-GM-THRID: 6861992493056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,467181538e943e73,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.92.226 with SMTP id cp2mr14764487obb.44.1425637818248;
        Fri, 06 Mar 2015 02:30:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.148 with SMTP id n20ls303171qgd.23.gmail; Fri, 06 Mar
 2015 02:30:18 -0800 (PST)
X-Received: by 10.236.220.74 with SMTP id n70mr14103053yhp.40.1425637818013;
        Fri, 06 Mar 2015 02:30:18 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id gb13si1267435pac.2.2015.03.06.02.30.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 02:30:17 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so26589873pab.5
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 02:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KO5sZoFonZqj9q5pGWG7D6w4PvgIWLSDGkIiIUkU+FQ=;
        b=BfXNhmIqW8TwcxpyeWWgeuAudcB3T8QJxW7N2EgqayubMxoad6ZC69s9yZxO2VmqYf
         08mDJktBOe8Cj289e1GdalMxn4fT7TtGMplCQ9hrdhTM0LgDNDhbQpemfTCxrUi98zAh
         wXxRM+AtifbQCjZMuXYXwCm55lQaNSUWZk8st/dKlWtM9GULOEUqY7cmdunVZQ68UErI
         ET7wzKenSvIMnDAM389OxrFme+MqX+eU45ctBNbIIO0m87N6lTvlej9Go2pGKXprfL/g
         LLL1a8v4MxZdx1SCjT4feWogf2nEycszZGrBcezywjVp7duMc+88H/tbK6eTfvJgxWgF
         E+GA==
X-Received: by 10.67.23.101 with SMTP id hz5mr24537633pad.47.1425637817827;
        Fri, 06 Mar 2015 02:30:17 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.7])
        by mx.google.com with ESMTPSA id bl2sm9287573pad.15.2015.03.06.02.30.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 02:30:17 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2] Staging: iio: Change data type to u16 to avoid unnecessary typecast
Date: Fri,  6 Mar 2015 15:59:57 +0530
Message-Id: <1425637797-8394-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

In the adis16220_read16bit() function we earlier used a s16 value 'val'
which is used by the adis_read_reg_16 function to read data and takes a
u16 value as a parameter.

So, this patch changes the data type of 'val' from s16 to u16. It is safe
to remove the extra sign extension, since the user of the function uses it
to read a 10 unsigned value which will lead to the same result in both cases.
Further this patch removes the unnecessary typecast for the simplification of
code.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
 * Reword the commit message for better description.
	
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


