X-GM-THRID: 6252116177284235264
X-Received: by 10.66.145.105 with SMTP id st9mr1856957pab.10.1455721872692;
        Wed, 17 Feb 2016 07:11:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.184 with SMTP id w53ls4284491qge.32.gmail; Wed, 17 Feb
 2016 07:11:12 -0800 (PST)
X-Received: by 10.13.227.133 with SMTP id m127mr1793528ywe.1.1455721872185;
        Wed, 17 Feb 2016 07:11:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id yd9si254212pab.1.2016.02.17.07.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:11:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x65so12930510pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 07:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=G0QujI0ZtZGB9fyKnzXb97nZQ+L7Ih5F+ic+raUydI0=;
        b=lMI33xRnIHVVLctIrFv2wzlta/AUggrfkqGgHjxtrzJsgGvmxjlkunu0lYjnF65oYu
         JJ6Pyi9iL/3Dn1dVL7yJSz5LWig+/FqMprvWzmp8X/GdOJEwgSCId9oboEkl8R8pM1BY
         EPWJgyQBq8v18yldv8tkCnTi1N5w+AhJu48JEuia15dH0Z1HmW4i56qUZB481HDW3l7Q
         WSKe3zAgcIETCiX/usxmuSeq5w+pJFeMuh1LbyuSRyr1PifBKIr26w6FYu8EJ4o7cWLa
         jf/KYNSWxGpph+RPFqO4LxuNmmB/DhpgNVZbbYa64bgIikn4cs/23YJecpuEVEQWQdu6
         0rEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=G0QujI0ZtZGB9fyKnzXb97nZQ+L7Ih5F+ic+raUydI0=;
        b=ZzQgGDU+tE36ib+nWRLJ7HFdbm3zTejywkwW3rZcOGHg2stGyCl3EfjDCnl0cNyl5l
         bOOJpyWR1JA5258q71MbFKXNkdGx6SVFMVR3s9hMsOf/8ujgLDC3z3UpWrpH6vx06W5y
         DkCkObrzd61/jnq5dam8nbavwXQkmkaeNzeOGfq3HlkQIiGwABoaqOlXp/sU6LhtITbW
         eXJjTbaJvRw9MVOvgnAaZ0Jh+MFSCkXMwAaSdQSSSJYfBiZ5myOCLxTC69kRXqKRvN3N
         DD655wKkipHBp2hRx28bwRyg90osjCOK8Ni7jgIvPKMcrR3+1cEV8FzcX8UC7bDb53Bb
         25iw==
X-Gm-Message-State: AG10YOTeaGjhVCUUsoVOCtV7D/HjxjD1Gp+F3dnTX7PyXKfhT7IRLO9KRt+GkwMcg6KEUA==
X-Received: by 10.98.66.157 with SMTP id h29mr2808206pfd.91.1455721871985;
        Wed, 17 Feb 2016 07:11:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id r62sm3500983pfr.26.2016.02.17.07.11.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 07:11:11 -0800 (PST)
Date: Wed, 17 Feb 2016 20:41:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v6] staging: wilc1000: Return correct error codes
Message-ID: <20160217151103.GA3200@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This change has been made with the goal that kernel functions should
return something more descriptive than -1 on failure.

The return value on an alloc_etherdev failure should be -ENOMEM,
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
Changes in v6:
        -Modified commit message.
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


