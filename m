X-GM-THRID: 6861992493056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,467181538e943e73
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.53.10 with SMTP id f10mr18938657yhc.17.1425750754846;
        Sat, 07 Mar 2015 09:52:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.84 with SMTP id q78ls791032qgq.46.gmail; Sat, 07 Mar
 2015 09:52:34 -0800 (PST)
X-Received: by 10.236.202.233 with SMTP id d69mr19423140yho.13.1425750754710;
        Sat, 07 Mar 2015 09:52:34 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id gb13si1794809pac.2.2015.03.07.09.52.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 09:52:34 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so36495444pad.11
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 09:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6KWLOHgHATSVYu4hcixri4SlA2Ybld4ZVJKwbtFgQHw=;
        b=lt7i8XKxfLAQjxLTTi4/vHI5I+JEEo3gY1tfqo9JBI8/Ki838PmCuSsTscvX7xmfRN
         rMEPhn0pNens9LBjl/AYCxACNfpH5yuhBUfhF8RTjO3Tqj8ylRL8GJne3lOv+6j0dzAI
         1x3nAXABAyyqCp4G71apI/Szj0G+WegRr6//05cKCU9x8WHz44v8XKWw1D/KbBcTG/BW
         p8G2CkUwrkLlI+oMjpF6O7SaQwiX91i9IT75s6w9R1ElYsCT8wDNms0EqY7zB/fQSPct
         cOffaEgosVvs7hLjml/501HDA9rwQdxMSqJZa+mrqyi7mQBbDYQIP5OPhcaEYpKNuHaZ
         pEDQ==
X-Received: by 10.68.138.194 with SMTP id qs2mr36834885pbb.8.1425750754553;
        Sat, 07 Mar 2015 09:52:34 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([106.218.78.166])
        by mx.google.com with ESMTPSA id nq16sm12811924pdb.85.2015.03.07.09.52.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 09:52:33 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v3] Staging: iio: Change data type to u16 to avoid unnecessary typecast
Date: Sat,  7 Mar 2015 23:20:01 +0530
Message-Id: <1425750601-9137-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

In the adis16220_read16bit() function we earlier used a s16 value 'val'
which is used by the adis_read_reg_16 function to read data and takes a
u16 value as a parameter.

So, this patch changes the data type of 'val' from s16 to u16. It is safe
to remove the extra sign extension, since the user of the function uses it
to read a 10 unsigned value which will lead to the same result in both cases.
Further this patch removes the unnecessary typecast for the simplification of
code. In addition to this, initialization of 'val' to 0 is also dropped. This is
due to the fact that not initializing helps the compiler provide useful warnings
if the code gets changed to return an otherwise uninitialized result.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v2:
 * initialization of val is dropped.
 * Reword the commit message.
 drivers/staging/iio/accel/adis16220_core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16220_core.c b/drivers/staging/iio/accel/adis16220_core.c
index d478f51..0396f24 100644
--- a/drivers/staging/iio/accel/adis16220_core.c
+++ b/drivers/staging/iio/accel/adis16220_core.c
@@ -28,16 +28,15 @@ static ssize_t adis16220_read_16bit(struct device *dev,
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct adis16220_state *st = iio_priv(indio_dev);
 	ssize_t ret;
-	s16 val = 0;
+	u16 val;
 
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


