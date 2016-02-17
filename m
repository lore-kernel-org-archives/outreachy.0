X-GM-THRID: 6252116177284235264
X-Received: by 10.67.8.2 with SMTP id dg2mr1887260pad.16.1455721086346;
        Wed, 17 Feb 2016 06:58:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.199 with SMTP id d190ls2214103iod.24.gmail; Wed, 17 Feb
 2016 06:58:05 -0800 (PST)
X-Received: by 10.66.65.168 with SMTP id y8mr1751435pas.1.1455721085941;
        Wed, 17 Feb 2016 06:58:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id ff2si233560pad.2.2016.02.17.06.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 06:58:05 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id q63so12770411pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 06:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EJvQDnEFTqDBcPbvnheAiHLxa/hBXQjiI9/x8WsBTw0=;
        b=OLeAjziwnkZ9lim6401uFaAbnNHdi9owcy7tH1pajydAGpT3qnc+Fh/2FbSIVzDWHJ
         wOJZYPd1eZojekYJfbDyy4kTdCmEV/Zz40A/+q5DcU5Ey9JCVS8e9fr1PgWrncyKqrbY
         L+TtfZJvOdmzVUGIlfNA95yDSQdS/j32bUsR1tFIy0GRklgjRHUF2sHuLWnmB17SItHQ
         gcmWT+Ra21yPh13NhXXb0bCprgtVztrxoZLtpyD71j8ZwuENAp9SaZMTcKOt5O+tp3jR
         xihclMsBr8mJtORYhwUSFwKnPmOaIKNdl4r5DNCWTj/MEpuHaCyauc7xaNJr6p2WFK2H
         YkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=EJvQDnEFTqDBcPbvnheAiHLxa/hBXQjiI9/x8WsBTw0=;
        b=NAvYFSr7ZXiyV9J4XuHSk8u8FpISI1WSDI6Ya6b9TmnTxN0c1Up3jUBaDQcc4sITh+
         LStr9q3RzPbUTUZLIKVtdWFHPqfnfBOMMdw71LhN8VIJzrwzmGSEyMaNwe7yxVL8ScYG
         cCi8QU7H3CkwUDeFKgUqjBxZr252mwnPlyh1oL6TUPQhWjGTTVWt7VJzQzUFrA+N1vn3
         Qxz3n9MhhCMCYxqIUNs+04C6Ks+b7a5SpHU6LfAQyse9fiamnBbto6ntm9W3H3CI/DnF
         asFfpUidiYqdtlqVPQsHwIoyah/Jsxs8duxCvHanmk+YWqj+fwQSH19qfr+/nQo/ZWe4
         PFUg==
X-Gm-Message-State: AG10YOQLuXkgscG/LT7LFnxLGNzw7SPP579cydDbBtuXARYk+wMcZMStFFuMpTmbzmydFQ==
X-Received: by 10.98.19.215 with SMTP id 84mr2755586pft.22.1455721085776;
        Wed, 17 Feb 2016 06:58:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id e1sm3433818pas.1.2016.02.17.06.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 06:58:05 -0800 (PST)
Date: Wed, 17 Feb 2016 20:27:56 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging: wilc1000: Return correct error codes
Message-ID: <20160217145756.GA3049@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This change has been made with the goal that kernel functions should
return something more descriptive than -1 on failure.

The return value on an alloc_etherdev failure should return a -ENOMEM
and not -1. 

This was found using Coccinelle. A simplified version of the semantic 
patch used is:

//<smpl>
@@
expression *e;
identifier l1;
@@

e = alloc_etherdev(...);
if (e == NULL) {
...
return 
- -1
+ -ENOMEM
;
}
//</smpl

Furthermore, introduced `ret` variable to store and return the
corresponding error code returned by register_netdev on failure.

The two call sites store the return value in a variable which only
checks that the value is non-zero, hence no change is required at
the call sites.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
---
Changes in v5:
        -Modified commit message to avoid misleading description of
         the change made.
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


