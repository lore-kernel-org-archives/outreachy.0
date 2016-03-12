X-GM-THRID: 6261077782348955648
X-Received: by 10.31.151.21 with SMTP id z21mr10227832vkd.7.1457770783660;
        Sat, 12 Mar 2016 00:19:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.50 with SMTP id s47ls3372363qgd.34.gmail; Sat, 12 Mar
 2016 00:19:43 -0800 (PST)
X-Received: by 10.13.194.67 with SMTP id e64mr9922684ywd.17.1457770783073;
        Sat, 12 Mar 2016 00:19:43 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h69si723532pfj.0.2016.03.12.00.19.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 00:19:43 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id 1so10121828pal.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 00:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=5jVwLyQyOoOSelHUVBFEvPRQeKRc4vCWpbST9qbcKWk=;
        b=JvcqrZovO1NApZyIJD6ZyGfpLYQH+Ma3c/ifUuHKLJ8UoMG6eoHmOhnqJ17s30phIH
         oiXdcFcd5Va5aQWgn8uUpbd2R1j5vKK9cjTqI391S9Ege1ko59SNG4A9SB7bOS1KZefV
         X3iQtcNov4mSp4D6MYHr78qEo5+RAf7v0IaMklXwgDFpiw7gz8NFI3N0LKZH+BKEdLNn
         ZSYpsFtu45vS9KZ31YLxqroQ27GYdegmro9EDrNZC/BKQ9vvM1uBDm+71q4Dg0s5YmxA
         Jr8eh0/8LBHtTJmrzLYWqT+HDUqjNrAaF99YO3IfIT/fZHHquN0C+BuRyl97oPCY/FZF
         GMqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=5jVwLyQyOoOSelHUVBFEvPRQeKRc4vCWpbST9qbcKWk=;
        b=ZkmTA1P0htYI+nhw0rMepNbE28w968P39FCPV05FY/NTmqK73EU048yDCwCRhqPlED
         gga8yA0YYnZ3Ti7RqMLAC/KH1Oy5O0zrvIEVukXdgdA3UeNqzxY3dV55M2ftW7CjUHJK
         2QZ+wu+aGAeXB9jV0DCZDig5z42TdRVdKCDXUZLNXGTJRNgOECw440ml2AGCOKBnYWmA
         Ha1afhlse2Dl2fVRCytlI6KbAvIuWNCCIrS0Kgd7Sh3sUEOeyn/7VNv1mBKa5WAGGo3+
         oKBQHw0/LzzunVEs0Vbd9GJOvYdkIRb5/ndeAcxjdA4EMBbrfQexWlPzZVJMpKadCK7h
         ryQw==
X-Gm-Message-State: AD7BkJKRyMzEkUXJFLXuImEL88rzE4z7QPLDSOq6ublt1E464dxZN9P9V972Obe/PKt5Yw==
X-Received: by 10.67.8.100 with SMTP id dj4mr22261001pad.88.1457770782909;
        Sat, 12 Mar 2016 00:19:42 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.81])
        by smtp.gmail.com with ESMTPSA id r68sm17929838pfa.33.2016.03.12.00.19.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 00:19:42 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 4/5] staging: iio: tsl2x7x_core: add spaces around operators
Date: Sat, 12 Mar 2016 16:19:23 +0800
Message-Id: <640a8d17b8fa032ad0449ae86f72caefad1f9d1d.1457769810.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>

Address the checkpatch check by adding the necessary whitespace around
operators:

CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 6291a71..a72bb29 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -854,7 +854,7 @@ void tsl2x7x_prox_calculate(int *data, int length,
 		tmp = data[i] - statP->mean;
 		sample_sum += tmp * tmp;
 	}
-	statP->stddev = int_sqrt((long)sample_sum)/length;
+	statP->stddev = int_sqrt((long)sample_sum) / length;
 }
 
 /**
@@ -1192,7 +1192,7 @@ static ssize_t tsl2x7x_luxtable_store(struct device *dev,
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
-	int value[ARRAY_SIZE(chip->tsl2x7x_device_lux)*3 + 1];
+	int value[ARRAY_SIZE(chip->tsl2x7x_device_lux) * 3 + 1];
 	int n;
 
 	get_options(buf, ARRAY_SIZE(value), value);
-- 
1.9.1


