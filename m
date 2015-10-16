X-GM-THRID: 6206240368123445248
X-Received: by 10.182.126.47 with SMTP id mv15mr10935552obb.44.1445002939538;
        Fri, 16 Oct 2015 06:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls638880qgj.56.gmail; Fri, 16 Oct
 2015 06:42:19 -0700 (PDT)
X-Received: by 10.129.79.87 with SMTP id d84mr13138300ywb.4.1445002938969;
        Fri, 16 Oct 2015 06:42:18 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id el2si2001271pbb.0.2015.10.16.06.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 06:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rc13so121395690pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 06:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Qt/W/LS/xZoB851HSMfPJwm666ppSJ5+o3qnh5NVeOs=;
        b=QugqCUca8ljxRV3C/Ua+lLdhI232Mun4I4Y7TtG4M6acD/pDDu7EzB4ZKxOqJK7bks
         Hp8aji+92wfpZIux40MhlEW1ISAD1RbQ2e90DWoOxxMqAPY8ruttEzH4K5QWzmCypjYP
         DVeRhMOjMX/IpjXn1LaHJZxn+0316BstG6lpMlU+oFWHL96r7Agc82S2euar1UsABwAY
         gQ+lGKse0oyBs7b0v8xHJVvc2ZvU1/lL1VIK/5qo4yCtvYXQ8gAmwQcKCGVQf4xFGgfe
         TqrDbuh5g5SnFJqjz4GxFNGnv0qB68wQKviRTyleoXAjOtsKF3iqaVF76/7R8kw3JWO1
         twow==
X-Received: by 10.68.225.138 with SMTP id rk10mr16310774pbc.121.1445002938791;
        Fri, 16 Oct 2015 06:42:18 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id qa5sm21398522pbc.70.2015.10.16.06.42.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 06:42:17 -0700 (PDT)
Date: Fri, 16 Oct 2015 19:12:06 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: ad7192: Remove unnecessary NULL test
Message-ID: <20151016134206.GA8423@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable pdata is already NULL tested before so, any further tests
should be removed.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index fe56fb6..7213d2e 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -639,7 +639,7 @@ static int ad7192_probe(struct spi_device *spi)
 		voltage_uv = regulator_get_voltage(st->reg);
 	}
 
-	if (pdata && pdata->vref_mv)
+	if (pdata->vref_mv)
 		st->int_vref_mv = pdata->vref_mv;
 	else if (voltage_uv)
 		st->int_vref_mv = voltage_uv / 1000;
-- 
2.1.0


