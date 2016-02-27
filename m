X-GM-THRID: 6255948564490354688
X-Received: by 10.66.160.9 with SMTP id xg9mr5015667pab.38.1456576530694;
        Sat, 27 Feb 2016 04:35:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.135 with SMTP id l7ls1810954qgf.87.gmail; Sat, 27 Feb
 2016 04:35:29 -0800 (PST)
X-Received: by 10.140.87.55 with SMTP id q52mr22257406qgd.11.1456576529809;
        Sat, 27 Feb 2016 04:35:29 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id yd9si2496436pab.1.2016.02.27.04.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:35:29 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fl4so65593188pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=59VEGWZxTU7rZDqp+vhtaVRXk5qWQWVIUOldxN3n+64=;
        b=lrM25K9MdsL02l52OBxkcsSs1NVYimE/GWljVRMUI6l8/MlWuXuDbO+VBGoob5PWWL
         FMJ2QPWq7qYr5rHiLz96m4q9EY6SmlMJcwZosAoFTc4SJN7SJH1hMF1ccN0IaYb25WxF
         DTTQb7vhQ5kXexUzwzzadw1IKXxGy3Fjgpw0rNjijorotMYtu31yGP4dMC/FXmeEDNhk
         TW+TqZ/YYTd6z/twHYs3+2ZwX4CXqD2LPpVg4QvWLrMBMeAb1Znebge5JbpaGREXLjDG
         JqHe6xx2mDYxhTQBIfQYYdUVO/YnHyr5kJ0F2Z546MnfDlJyTo1zc7uZnAGCybo1Lwo3
         c8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=59VEGWZxTU7rZDqp+vhtaVRXk5qWQWVIUOldxN3n+64=;
        b=lCBtrEvGHGR+1TAn1hWPgHnEr//N74n0ycnkoEaJoQDH1SJFViVe2aB2BvoCWzEsDD
         DUTA3Sk9TiGcBVKLDEIjJGsGeR9vhSwXxVNoU6CpYvSLtavIlz1juoXE0dN9HIaxpQB6
         MP0cQwQcK98YlPMC7//LFkcR9h2c/5XErCGPoMWtWBKppB6bvxZYIe9O17VhlKgmZSs+
         6K8dqyw3UbkZz6XJq6wG94/l58qMClMzNd4dJuG/crMe3lN+YkiGEJwynHY+H6aHmwyz
         zTmhStVZCya/yNkPhN176I2PdrV8KCH7782ppL7G4L+n1+63HfXj/8Ds8yfmn3r/POLG
         HC3g==
X-Gm-Message-State: AD7BkJJfRcV2EDa1EilNbQPTXaVQ/S7AKY9RJ+nvzhZTDLAZ1S9Aj9yDh5aItFGnefPBoQ==
X-Received: by 10.66.219.71 with SMTP id pm7mr9042206pac.137.1456576529655;
        Sat, 27 Feb 2016 04:35:29 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id vy6sm25991090pac.38.2016.02.27.04.35.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 04:35:29 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] staging: android: Remove unused variable ret for immediate return result.
Date: Sat, 27 Feb 2016 18:05:05 +0530
Message-Id: <1456576505-22229-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch remove unused ret variable and merge two line for immediate
result.
This is done using Coccinelle.Semantic patch used is:

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/android/ion/hisilicon/hi6220_ion.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
index e3c07b2..9922710 100644
--- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
+++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
@@ -216,8 +216,7 @@ static int __init hi6220_ion_init(void)
 {
 	int ret;
 
-	ret = platform_driver_register(&hi6220_ion_driver);
-	return ret;
+	return platform_driver_register(&hi6220_ion_driver);
 }
 
 subsys_initcall(hi6220_ion_init);
-- 
1.9.1


