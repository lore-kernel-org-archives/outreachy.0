X-GM-THRID: 6254956279141236736
X-Received: by 10.66.146.231 with SMTP id tf7mr37793791pab.6.1456345496240;
        Wed, 24 Feb 2016 12:24:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls2889566qgf.38.gmail; Wed, 24 Feb
 2016 12:24:55 -0800 (PST)
X-Received: by 10.129.108.3 with SMTP id h3mr39210747ywc.31.1456345495676;
        Wed, 24 Feb 2016 12:24:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u66si706044pfa.2.2016.02.24.12.24.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:24:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so1588070pfc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PSrPZnMDQlAzrQdyVHSqrRPFI8yy7mqHg6Zi0gj325A=;
        b=cSAFKk2j3DcZ9t0aM3/QOSn3Kxqa/PNbc3IWYLD9nvkixalxeMDC2NpmboyMVpwN1b
         saxsWEU3xTyCQX70eGMQWxj5NmqoURmSP97SpDrADh59OSMUxOqXl6JL1c673O6s7tmZ
         xzjZZ6+QCxt6CV+8iC3KL3+0bi1mLQMpI64f0dcQeoT5yCoPBpK4GHf4tfwVcVQoiFDL
         UXX5iUKg90AO7Wn5Z8/HJDsMlp4Rmm6Qbe3ratqxvnZO5cPsm2L3cH9zGkCy2XTIR4O+
         tz9U9/LC+KuzMJucZ6PTN2XsjpnWavMILd7EkzDv5TGkPncEXOwsyDND7+CovDw5oWP6
         LOoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=PSrPZnMDQlAzrQdyVHSqrRPFI8yy7mqHg6Zi0gj325A=;
        b=l5Bnh/oGNipa1SxCL6wuFrP52bxptFK//3AnAfhETYt84nKn9H4TyEHoXt+JbBO29P
         y0988un2j68RMHgjZOx1VgZne/19UsJLd1EaUoZQDhoY0onp8hF6XgpdNNK+hIhjoUv7
         2Wm11w8i+Vv5C63+MulwUlwigZiqdVMQsQOmemMryTHAfQxFhtx/BkFecv2gX9kB+6GI
         4IHj25faf8tnBA7MxDo8HbpBuZkI3iYqCiY7tL4ROL50EW62R2810VocmtNF8u/kZmZb
         d2C8vnhO9HdP+XYVy1SQRq+r7iaBR3sUx6HqCySCRjrAcE3HHtkxvNoupJHAbMz0ege9
         M21w==
X-Gm-Message-State: AG10YOS29aSEC2nqt3iYayZnnrGK3OZUgBd2UZs8JbZM7yoeWCZD82D2B9dcfk0p+tutgA==
X-Received: by 10.98.2.21 with SMTP id 21mr57668355pfc.11.1456345495475;
        Wed, 24 Feb 2016 12:24:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id kw10sm7001238pab.0.2016.02.24.12.24.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:24:55 -0800 (PST)
Date: Thu, 25 Feb 2016 01:55:30 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/8] staging: android: ion: hisilicon: Remove useless return
 variables
Message-ID: <20160224202530.GA22936@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/android/ion/hisilicon/hi6220_ion.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
index e3c07b2..fe9f0fd 100644
--- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
+++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
@@ -214,10 +214,7 @@ static struct platform_driver hi6220_ion_driver = {

 static int __init hi6220_ion_init(void)
 {
-	int ret;
-
-	ret = platform_driver_register(&hi6220_ion_driver);
-	return ret;
+	return platform_driver_register(&hi6220_ion_driver);
 }

 subsys_initcall(hi6220_ion_init);
--
2.1.4


