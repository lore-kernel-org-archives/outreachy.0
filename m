X-GM-THRID: 6203007824854777856
X-Received: by 10.107.165.5 with SMTP id o5mr11644494ioe.5.1444972865242;
        Thu, 15 Oct 2015 22:21:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.201 with SMTP id h192ls676938ioh.96.gmail; Thu, 15 Oct
 2015 22:21:04 -0700 (PDT)
X-Received: by 10.66.168.12 with SMTP id zs12mr11473558pab.37.1444972864912;
        Thu, 15 Oct 2015 22:21:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si1830667pab.1.2015.10.15.22.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 22:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fv9so11088413pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 22:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=1ozlnmGieCKWs1JtX8DuvvnvXZ/67n3iOCqzDovEv58=;
        b=Jhcx9uvxfHM48O29ZnXv+Uop07+dn5WGngT+99Xu3V75NI97ofirZHxR6lpshzkGyd
         zHybM0oO8tlFWgu4iJ6zd+JcmEFUlnjOQKzXR6I4j+zM+h6A2nNUBqSSPgmIUNHAfvRu
         ndnv+hhkDgO2PdKjiwsXtDtboI1oOJNd2qN9Y7iLGN5JOOsbit9ddww933YCLapnf8El
         u+8/qtRusxBizzX9G8bT4/KJcQY13PfV6K1GDqY3pJf6bw35NnvXNCwhx+Sn1JGeQQBC
         UxYqwTANed4BWar4EXLsJj/w1ZhFJ+xSOEJfKgTdllrQnHTQlD/eBfokWbMJbRyHk9Y+
         ec/Q==
X-Received: by 10.68.222.163 with SMTP id qn3mr14446364pbc.54.1444972864762;
        Thu, 15 Oct 2015 22:21:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id u3sm18591513pbs.33.2015.10.15.22.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Oct 2015 22:21:04 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: iio: cdc: Remove unused macros
Date: Fri, 16 Oct 2015 10:50:56 +0530
Message-Id: <1444972856-4624-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove the macros since they are not used anywhere throughout the
kernel.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 028b4e8..a4bb152 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -27,11 +27,7 @@
 
 #define AD7746_REG_STATUS		0
 #define AD7746_REG_CAP_DATA_HIGH	1
-#define AD7746_REG_CAP_DATA_MID		2
-#define AD7746_REG_CAP_DATA_LOW		3
 #define AD7746_REG_VT_DATA_HIGH		4
-#define AD7746_REG_VT_DATA_MID		5
-#define AD7746_REG_VT_DATA_LOW		6
 #define AD7746_REG_CAP_SETUP		7
 #define AD7746_REG_VT_SETUP		8
 #define AD7746_REG_EXC_SETUP		9
@@ -39,11 +35,8 @@
 #define AD7746_REG_CAPDACA		11
 #define AD7746_REG_CAPDACB		12
 #define AD7746_REG_CAP_OFFH		13
-#define AD7746_REG_CAP_OFFL		14
 #define AD7746_REG_CAP_GAINH		15
-#define AD7746_REG_CAP_GAINL		16
 #define AD7746_REG_VOLT_GAINH		17
-#define AD7746_REG_VOLT_GAINL		18
 
 /* Status Register Bit Designations (AD7746_REG_STATUS) */
 #define AD7746_STATUS_EXCERR		BIT(3)
-- 
2.1.4


