X-GM-THRID: 6252116177284235264
X-Received: by 10.107.136.160 with SMTP id s32mr3183167ioi.14.1455720138360;
        Wed, 17 Feb 2016 06:42:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.63.66 with SMTP id e2ls2295417obs.87.gmail; Wed, 17 Feb
 2016 06:42:16 -0800 (PST)
X-Received: by 10.182.247.68 with SMTP id yc4mr1751480obc.34.1455720136948;
        Wed, 17 Feb 2016 06:42:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id ui7si247543pab.0.2016.02.17.06.42.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 06:42:16 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id e127so12520154pfe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 06:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HUj6uVVg3Fdy0/H63ugs1sYwkW8S9YcHNfd+iPhfQHE=;
        b=fEodaoLwcQBoeffxxRybtChB1WtD7um59mvSgNQHuD+WkYTrImWnCZdFgxVvAGEqXk
         Qwya+a8BcWt/KWyeaOFjz5MsnAIw3g2OU9KH15WfxL713lrgwu59dddicd3uEHxqg6Sc
         WwBBMQXx6ZwQdSHhq/yALjYBtTbWWXlKACsICxZ8nZiAMSHORzOtcsJ6AtmR4KaubH6I
         gN4ixcMynYdvnDY2Rl/1LHylb9qCy37ijugz8XadMDdDH8HXKbKrFQvsFkEiT5FQYyn9
         QraODhQyQIMUthh6bqi7a2XkguAFuwGIWxhzMRNlXdoCg2DnfqDIZE9a/7RS1j6swpq9
         9syg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=HUj6uVVg3Fdy0/H63ugs1sYwkW8S9YcHNfd+iPhfQHE=;
        b=boS76qG0gmZiuFpiiUisb2VdgeMoR9zk3WQHMhueD3kndTM9IhOQJbvpa+kHwkOTDy
         5KLaxkeOkn2ONrIa6zmMdRJ8LroLqmM1QBbFsg0VmjIOnUmWflZSH75EyRzMbPRVQsU8
         gFNOvb3DhfTLqCNmG1hOhjBWwbVJsmBe29UICUXfj+7UZcVx4Nzoz+QTrb8qfQqmEaYH
         Qrwrtu9nJsBSIEIdeIoxSzXyPCBsg40UTU6B/8zo1hN0WJWfuyJ3u1k0CeyRRXrQBRS0
         VQQ99hmm1kBSlcFBdFEeU0ztbvDZ4ZgqywMAxg6aCoXPp/hBsPjB8yBcBcb4VSpt+Jx1
         CJiA==
X-Gm-Message-State: AG10YOTMg4BeA+RA0s11K4pvHLOowoxNoznZ2RcMQNRWawMDcd9Gf8W6XhrfyuqkR9ME6w==
X-Received: by 10.98.68.73 with SMTP id r70mr2653244pfa.136.1455720136726;
        Wed, 17 Feb 2016 06:42:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id wt2sm3172495pac.48.2016.02.17.06.42.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 06:42:15 -0800 (PST)
Date: Wed, 17 Feb 2016 20:12:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: wilc1000: Return correct error codes
Message-ID: <20160217144202.GA2860@amitoj-Inspiron-3542>
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

Furthermore, introduced `ret` variable to store and return the corresponding
error code returned by register_netdev on failure.

The two call sites store the return value in a variable which only
checks that the value is non-zero, hence no change is required at
the call sites.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v4:
        -Modified register_netdev to return error code on a failure to
         set up the device.
Changes in v3:
        -Further checked call sites to understand how the value is
         being analyzed
Changes in v2:
        -Corrected semantic patch

 drivers/staging/wilc1000/linux_wlan.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index a731b46..274f468 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -1312,7 +1312,7 @@ EXPORT_SYMBOL_GPL(wilc_netdev_cleanup);
 int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 		     int gpio, const struct wilc_hif_func *ops)
 {
-	int i;
+	int i, ret;
 	struct wilc_vif *vif;
 	struct net_device *ndev;
 	struct wilc *wl;
@@ -1333,7 +1333,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 	for (i = 0; i < NUM_CONCURRENT_IFC; i++) {
 		ndev = alloc_etherdev(sizeof(struct wilc_vif));
 		if (!ndev)
-			return -1;
+			return -ENOMEM;
 
 		vif = netdev_priv(ndev);
 		memset(vif, 0, sizeof(struct wilc_vif));
@@ -1372,8 +1372,9 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 			vif->netstats.tx_bytes = 0;
 		}
 
-		if (register_netdev(ndev))
-			return -1;
+		ret = register_netdev(ndev);
+		if (ret)
+			return ret;
 
 		vif->iftype = STATION_MODE;
 		vif->mac_opened = 0;
-- 
1.9.1


