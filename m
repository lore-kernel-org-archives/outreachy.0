X-GM-THRID: 5105028956160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e0e50212896d54e6,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr2663506lax.10.1425124114448;
        Sat, 28 Feb 2015 03:48:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.200 with SMTP id la8ls272037lac.90.gmail; Sat, 28 Feb
 2015 03:48:33 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr2610818lbb.24.1425124113909;
        Sat, 28 Feb 2015 03:48:33 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ev8si279845wib.3.2015.02.28.03.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:48:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so5461230wid.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BZ/t6llK9pcdr+IO1Mh0vI3UpWQRcEwlw0IMchoOnew=;
        b=qx1sgbN2jTmSyOPMgcIfPKGMqJUebrw7mAH+XGTyhgZDDzC5GS50jLDvoHI8u8FSA6
         mIQzDSCEOsRIWIXNY4amDXes7ZLIqwsS4bmF8uIIQTpY9DrbuGoWjgmKJ3WQp4U6tLaW
         VHkdgt6IfWuZWKRIPZ+wFYQtFulKpc+Fw48fw5VjMaxWA6KOApoRkA5sxrVHi+U+RUM8
         U9ERoDJ2CjC7Kt758S6Ck25Ww99Uz7RraeaNf5eQExgCiwl+CJJx1qQ0fNxrzMCMa6Q+
         LXQ+Na+ahS9UCEssn3USZGQh4WszrSGd6h+HLyI4kUmUg75V2OVKIXHmFuIE6wQhp481
         zUQA==
X-Received: by 10.194.243.1 with SMTP id wu1mr38568584wjc.69.1425124113828;
        Sat, 28 Feb 2015 03:48:33 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id m4sm6726468wik.20.2015.02.28.03.48.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:48:33 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8192u: Replace printk() with netdev_dbg()
Date: Sat, 28 Feb 2015 12:48:27 +0100
Message-Id: <8a791746344b01c621f471346f63d8bbd58c82c1.1425124010.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425124010.git.ksenija.stanojevic@gmail.com>
References: <cover.1425124010.git.ksenija.stanojevic@gmail.com>

For dynamic debugging netdev_dbg (if there is a ponterto a device
net structure) is preferred over printk(), which is the raw way
to print something. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 361d2d0..b5a26f3 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -139,7 +139,7 @@ static int r8192_wx_force_reset(struct net_device *dev,
 
 	down(&priv->wx_sem);
 
-	printk("%s(): force reset ! extra is %d\n", __func__, *extra);
+	netdev_dbg(dev, "%s(): force reset ! extra is %d\n", __func__, *extra);
 	priv->force_reset = *extra;
 	up(&priv->wx_sem);
 	return 0;
-- 
1.9.1


