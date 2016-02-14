X-GM-THRID: 6251168394016456704
X-Received: by 10.67.5.233 with SMTP id cp9mr10877203pad.43.1455463560869;
        Sun, 14 Feb 2016 07:26:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.32.104 with SMTP id h8ls583848igi.28.canary; Sun, 14 Feb
 2016 07:26:00 -0800 (PST)
X-Received: by 10.66.246.193 with SMTP id xy1mr11596732pac.7.1455463560480;
        Sun, 14 Feb 2016 07:26:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id 79si2895596pft.0.2016.02.14.07.26.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:26:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id e127so73632716pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ebTxBxSkTd/uMoys4TH4c40+whNFILqoXrHNoXJVLww=;
        b=kvPMS2A7z5FF9jB6gHhZ+0x4Aus3Zk4qEzikAeJKJqZHsAqL0URWwz6WQI1XE9z3RE
         SQkynY7t3Rm6ctBu3OaHGumEgmvYs6Gh/2wucvr6uL5qu4O2vdrMDg7Q/pW4nM8Om1E5
         KJuD8SyX6rhKhpFo6zLRzqWi758of3dBrqoKvDcFLmQru4yQuHjJwqYamPP8MgRpCMZO
         CJHgg6uewcUUbffKuL0oGLHJdNN6kMja+hTfA7i5q6BAoME3G5/fEzQA185wSxm7v8Tr
         1fcxfmFeWlWZCUJ6J1HuJVU/QwqA2R/7wlNNCKSTLBGUUN6xQNIh9TlQZY9b3y1+DlTP
         ji0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ebTxBxSkTd/uMoys4TH4c40+whNFILqoXrHNoXJVLww=;
        b=GYrFn51ml/rxN6IyQBQcFC17c9vJl9ZuXBO2gn0SKsloNnSqiVgEtC4zBWitl65BWq
         EUBlnuiyMVDKDwMy7VfaA5iRJYEckPIwZyerBOsXF7KZq3sm+gmP9i5/AwIRXmV5er26
         zGA+/92fwStb8bfOt8XgfuwHXkeISfoivJ5PDCjcb/e8Nf5tW17rBrflZeR8kmhYrTrg
         QGOZCrFeiagD2o2GgaexuSY44GEHllTb4hjt7W3qlXOPBbOvAT1DhOFVnSBnrapuBv+S
         yInG7NQmUaF2RNb0pOPNlXAR7iPlkPb5nnu+Y5YJJnubMWWzhWxYQaeW93IzGIayACDC
         xNHw==
X-Gm-Message-State: AG10YOQH8r//W5bSJ8Ys/CJFLHJwQStSXUrXPoPNjxF82E7mHQPQi5TDwivi04K2+RPr5A==
X-Received: by 10.98.68.193 with SMTP id m62mr17074524pfi.130.1455463560372;
        Sun, 14 Feb 2016 07:26:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.188.63])
        by smtp.gmail.com with ESMTPSA id o90sm32257635pfi.17.2016.02.14.07.25.56
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 07:25:59 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 20:55:46 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: os_dep: Remove NULL test before rtw_free_netdev
Date: Sun, 14 Feb 2016 20:54:03 +0530
Message-Id: <1455463443-7945-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function rtw_free_netdev test whether its argument is NULL and
return immediately. So NULL test before this function is not needed.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 01d50f7..6a68f17 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -474,8 +474,7 @@ static void rtw_usb_if1_deinit(struct adapter *if1)
 	pr_debug("+r871xu_dev_remove, hw_init_completed=%d\n",
 		if1->hw_init_completed);
 	rtw_free_drv_sw(if1);
-	if (pnetdev)
-		rtw_free_netdev(pnetdev);
+	rtw_free_netdev(pnetdev);
 }
 
 static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device_id *pdid)
-- 
1.9.1


