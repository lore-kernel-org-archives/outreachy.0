X-GM-THRID: 6252116177284235264
X-Received: by 10.13.230.148 with SMTP id p142mr1093092ywe.45.1455712936414;
        Wed, 17 Feb 2016 04:42:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls937570qgf.38.gmail; Wed, 17 Feb
 2016 04:42:15 -0800 (PST)
X-Received: by 10.129.70.86 with SMTP id t83mr1129067ywa.22.1455712935904;
        Wed, 17 Feb 2016 04:42:15 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id u66si144909pfa.2.2016.02.17.04.42.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 04:42:15 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id e127so11021618pfe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 04:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FSNfUOL0i4l42BQFM5N5PPsM3KB8KUiEtF9OKSqHNt0=;
        b=n4D6qwAvyhZ6l/Og+h8ualMoMhUMNnQytzik9FF7sNzPzsHPQXs2mOb3IsJ70yCNZ9
         TWyTokpeqasNBNMfvrI9qwaPdbKPWlC5rGmZUcu3NdavpzDQRQQhHfE6H7pk+XXWpyJU
         HwxBLBfLmYWIiXd/uW+OZG/GjJBp2Q1+wnG/DeO5IwRlPdIwfNCNUDrXIgzU26PiNv1o
         iEHsEAl4fqbd+vohZYiraxLYwkUgkKKGCwzHIvURn9p2TbHnsooyvCQJGoSIkOklssEO
         NIRYwVVwA9MMP4oPvWyHrC9vdDWgiU2aaFJPN/XFetIkWaIwYLWoZhMeOd8Baf1ZFbvU
         tyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=FSNfUOL0i4l42BQFM5N5PPsM3KB8KUiEtF9OKSqHNt0=;
        b=a71dFzq7ms7i1a4l6soOGp/rQkiL9693ehaDggTDbNi6DKmSVWxdMNnfgZ7trP8BPh
         6aPSniKuBaej0J0VpLfZX6nMxgWJKcEwfISCiqOBnTTM7zhwx3K2LKf7b16GjRmlRkfC
         Zy8CwLk8wXy8dsMoR2PiSkQ0n4mq7DzMWMVcIgMUf7dGqb0cd7ydNwbOba7molAiaf1l
         YMkznZNXz7uDzRD/aXIkLaoXT4I1JmJ9FBSuvfF9gmP9vOMLc+ErC3X1vySv3sHBoQo0
         B+bZuRB2ZHlLJFyNifoM20DAaofSLNoeoMxRsYGy4Z3XxnYbauQqWLWVpKDpWjfIBkrZ
         RtvQ==
X-Gm-Message-State: AG10YORpa9+qOPv/FDHNtgwxE4siGX7ekY/Ju723/vAy4i77qj7xVtOLT1FtxYIymc7rgQ==
X-Received: by 10.98.79.156 with SMTP id f28mr1775756pfj.55.1455712935715;
        Wed, 17 Feb 2016 04:42:15 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id 70sm2565680pfs.78.2016.02.17.04.42.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 04:42:15 -0800 (PST)
Date: Wed, 17 Feb 2016 18:12:05 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: wilc1000: Return correct error codes
Message-ID: <20160217124204.GA30394@amitoj-Inspiron-3542>
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
return -1
+ -ENOMEM
;
}
//</smpl

Furthermore, return -ENODEV on failure of register_netdev() instead
of -1.

The two call sites store the return value in a variable which only
checks that the value is non-zero, hence no change is required at 
the call site.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -Further checked call sites to understand how the value is
         being analyzed
Changes in v2:
        -Corrected semantic patch

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


