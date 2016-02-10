X-GM-THRID: 6249638056866873344
X-Received: by 10.31.151.21 with SMTP id z21mr37303045vkd.7.1455107251609;
        Wed, 10 Feb 2016 04:27:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.83.36 with SMTP id n4ls51618igy.17.gmail; Wed, 10 Feb 2016
 04:27:31 -0800 (PST)
X-Received: by 10.66.240.3 with SMTP id vw3mr38543158pac.37.1455107251311;
        Wed, 10 Feb 2016 04:27:31 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si385115pab.0.2016.02.10.04.27.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 04:27:31 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so334884pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 04:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2CPlv17HHhx/uniwl2E59gCom6gR9w/7FfT2wH0XluI=;
        b=v+yR8iuOWtoSyL/DWxIymH7knYxvzjHde76e5EtLg3nAm65J9dg6KdDEs8h7JvDL3U
         HiNUJK6m0x4As3/gsD1jlwht0p/0HEtF5l/Tl1I5QpOOeo+c29JaNOmD63ZIllg/YJ7Z
         PfStlz/eWzD9f9xyNJG8qP44s2lk4x5jLSmcy5w8CvDks945on7jemVf57x0/6GBXlxG
         KHPz7/mDFs8Bki8CZDq3at+lNyThGS1Ea/A1Fg7VwFYsyC1kwbcVmTFeDyPfPdSaQz1N
         avsYui/vCSADOAGY5zsmNehpVpBHMOdXzk/vajo5aSyT27B4n1T5WDERiKrVYO9qR1Oa
         TyaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2CPlv17HHhx/uniwl2E59gCom6gR9w/7FfT2wH0XluI=;
        b=LRc3wEHz781+uk82gZfuVMWqegTPMbTCDF8jtW4+bfQd7uhi8C1xe7qvfLDhNCx5Rm
         WuAePwuo/3f8sKJSqLYNVDJMUI+c9Qf932g2CTnRGlSLO+BHzStMs92rEvZo5UBI0rnZ
         A5+Z9xKQh6Br2Bf5yBBuKeux1/lk61DLJDah49vZ3vYY4k6O+E44TnMDmUDqu+YSr9J3
         ODbhNa9vBNXIqrQr+X4Q096t6j8pQwdglTV5bvVmQLmmx5FQjHgkinwkXoYRyHrcuDmp
         bWs8v9uW86wbZ0GxX6srJV60THHrsNYzAG7o7Mopl7GKS7ktFd5Afd3017uzYoP/8Wrm
         Tweg==
X-Gm-Message-State: AG10YOTJT4TFUYWQ5DVKA99+WNDnVBbY/87P8qKdWYAS5EDhxBCSVC7dbPRLKM6tULdy3w==
X-Received: by 10.98.14.79 with SMTP id w76mr34946667pfi.1.1455107251204;
        Wed, 10 Feb 2016 04:27:31 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id k14sm5005093pfj.0.2016.02.10.04.27.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 04:27:30 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH 2/2] drivers: staging: rtl8712: Use ether_addr_copy() over memcpy()
Date: Wed, 10 Feb 2016 17:57:19 +0530
Message-Id: <1455107239-16386-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Waring is removed by using ether_addr_copy() over memcpy().
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
__aligned(2)

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 4ff5301..2d5231a 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -358,11 +358,11 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
 			sta_addr = pattrib->src;
 		}
 	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
-		memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
-		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
+		ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
+		ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
+		ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
+		ether_addr_copy(pattrib->ra, pattrib->dst);
+		ether_addr_copy(pattrib->ta, pattrib->src);
 		sta_addr = mybssid;
 	} else {
 		ret  = _FAIL;
-- 
1.9.1


