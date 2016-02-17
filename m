X-GM-THRID: 6252116177284235264
X-Received: by 10.31.151.21 with SMTP id z21mr25131025vkd.7.1455684233189;
        Tue, 16 Feb 2016 20:43:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls4966602qgd.80.gmail; Tue, 16 Feb
 2016 20:43:52 -0800 (PST)
X-Received: by 10.129.101.66 with SMTP id z63mr24928488ywb.14.1455684232439;
        Tue, 16 Feb 2016 20:43:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id yd9si1104738pab.1.2016.02.16.20.43.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 20:43:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ho8so4319359pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 20:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cJUJ6u3qRjlfJfqiUTmuHRpQzQH1/mJlFfcYwhSJWAg=;
        b=zwERXbJSCWhugZypbhuk7FZCQNBLqKSWCrAa+iaJ5ucX1pv+fXFV43wR2LLAncSFLk
         zs65Z9o6mw5wTFsMTDie7J+A8PO8LSBbQDpz4tCGtt+mBFA4Xpw0tB/uP1ALwOQ41Bdd
         QeE9EdOQzsib8kcgngGsr5iD9QG6JHLzcV8/0UeQ7DUU9GHPcUK6H0Dz/Uybqy4Bk/gi
         X2FP1T2PqOxM8ShnlLjsxmG216B1hKRrAZ4Vmz4Ra7tlLtwofXpwV0JbyrfONh4gBVAh
         O4Yro9CraqjmPdsRPS4fHfzmbD9DuLnZurXOqzvKuHEMUrNUxSRYaobkAPx8ObpwY525
         G9FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=cJUJ6u3qRjlfJfqiUTmuHRpQzQH1/mJlFfcYwhSJWAg=;
        b=RHlUyN9+W682fDEo4EvzoBovQDmOPOH8ZYe6Vlj/RA1wY79RMTHINSt1N11OsnQW2i
         48nj7pLSZwj4hxVf3QXqTXvKqauK93eopk5A2nz8viksVjuACy/AV4dbnmdqgo53geSc
         DukrbGs+6VG1qEbiAezNDVk4fwsUFs0w4Rlnzr7DC1yN38HvEU6UdWS/jXFY2iFqLMM/
         zrw083mTfN6rNiuvr3LBBUHxdqMootiBSU0VeM+ZFumDE2Sn8PbjmjOch888ZQ3YS6kY
         ESIIFzqKQEumPSjpYGPj1ObkYs5hzwiFZK00cHaFeL09I6oE2GBW9FK2bQabnYT5zOHH
         Q6Hg==
X-Gm-Message-State: AG10YOSGpUI6fbujNxVmtoJ5BDoSiZl341p1zQIC/wz0zV9UgRoB8zOpI45h57yvuWcnqQ==
X-Received: by 10.66.249.70 with SMTP id ys6mr30257805pac.5.1455684232227;
        Tue, 16 Feb 2016 20:43:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.60.250])
        by smtp.gmail.com with ESMTPSA id by3sm24940356pab.39.2016.02.16.20.43.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 20:43:51 -0800 (PST)
Date: Wed, 17 Feb 2016 10:13:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Return correct error codes
Message-ID: <20160217044347.GA8876@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This change has been made with the goal that kernel functions should
return something more descriptive than -1 on failure.

The return value of alloc_etherdev on failure should return a -ENOMEM 
and not a -1. This was found using Coccinelle. A simplified version of
the semantic patch used is:

//<smpl>
@@
expression *e;
identifier l1;
@@

e = alloc_etherdev(...);
if (e == NULL) {
...
goto l1;
}
l1:
...
return -1
+ -ENOMEM
;
//</smpl

Furthermore, return -ENODEV on failure of register_netdev() instead 
of -1.

The two call sites store the return value in a variable, hence no change
is required at the call site.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index a731b46..4f8b21d 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -1333,7 +1333,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 	for (i = 0; i < NUM_CONCURRENT_IFC; i++) {
 		ndev = alloc_etherdev(sizeof(struct wilc_vif));
 		if (!ndev)
-			return -1;
+			return -ENOMEM;
 
 		vif = netdev_priv(ndev);
 		memset(vif, 0, sizeof(struct wilc_vif));
@@ -1373,7 +1373,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 		}
 
 		if (register_netdev(ndev))
-			return -1;
+			return -ENODEV;
 
 		vif->iftype = STATION_MODE;
 		vif->mac_opened = 0;
-- 
1.9.1


