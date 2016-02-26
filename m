X-GM-THRID: 6254956279141236736
X-Received: by 10.140.20.204 with SMTP id 70mr17567265qgj.18.1456479527010;
        Fri, 26 Feb 2016 01:38:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.131 with SMTP id c3ls214825qga.60.gmail; Fri, 26 Feb
 2016 01:38:45 -0800 (PST)
X-Received: by 10.129.101.66 with SMTP id z63mr384568ywb.14.1456479525331;
        Fri, 26 Feb 2016 01:38:45 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si1793252pfb.1.2016.02.26.01.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:38:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id a7so2910255pax.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ps/MY+YvanbRfs9HPEHApsMCFUzAYkMrc+caAcM1dpE=;
        b=kYAxC1ruOq9CliekjfKJUIJNh4NE/WJnHahytTkarP0jh+kR9UYiS6NzWhEo/Hen3n
         TXrqu31UAPp7QcKdyGPffsIDkadr/G2SWqTeTF1p7rAJMxREpFUwRCjV0TXMZuOwq+uo
         wx5VKmKuMRTV7GTDOIOiw8Spi+TWJwunKzP+r2d+Ku9Mcb7FqSGm2j7tSt1cnMGm/Zk3
         BuwZn5v8WjLmeEjO/qFKF32Bwo8pp1QDrxAKAOb0LKtILGJr5t90FxKCtk33EmA9Zjhc
         3/q+bl6WBtHrr0mx8Iru9XnxdQmrBeyx3g72ZL7Xz5+R84eosgDrNTERp4KmfHFDeHz+
         PQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ps/MY+YvanbRfs9HPEHApsMCFUzAYkMrc+caAcM1dpE=;
        b=UT17WiatvqnTseNloa1yj3P+ml7GPhkMYHY9IHwO95eArZUcDE3ucmeekpE9cadYwl
         b7JQG4Pqs2H2LvX1lEpShYkrNoSmS3vtLOYPEG8sREA/76JHIxh1skuiqgYI7wezt7f9
         T4V4KNVs/UFz9B64fM9qA09r6js8IZSBcQlftJUOkXD9UP8ubdpJjJTFHY2DfbYEz+fC
         mBrKbUZ9nxM53GWjvLQxfGC0kyHU7ek10tvv8FHEwo6V9IfpKuMVZsE2HMuR0EMZpXjg
         jwtpzn3m38+o3jAZopZjvWGglfQTmRxY6Wrtp0ICNZe0YaQ+QP/fruFw5uTCrrWB51G5
         1WjA==
X-Gm-Message-State: AD7BkJLDgTubs/fi0h5N7u30CTLaLS38Idb0cwbxtgqR8Da+ifwzNIYWGh2HnR/lAYWVVQ==
X-Received: by 10.66.119.202 with SMTP id kw10mr708084pab.110.1456479525149;
        Fri, 26 Feb 2016 01:38:45 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id cq4sm17941846pad.28.2016.02.26.01.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:38:44 -0800 (PST)
Date: Fri, 26 Feb 2016 15:09:21 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/5] staging: android: ion: hisilicon: Remove useless
 return variables
Message-ID: <20160226093921.GA10550@Karyakshetra>
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
 Changes in v4:
	-No change

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


