X-GM-THRID: 1717108211712
X-Received: by 10.180.89.194 with SMTP id bq2mr219892wib.4.1424517887660;
        Sat, 21 Feb 2015 03:24:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.132 with SMTP id i4ls356543lab.25.gmail; Sat, 21 Feb
 2015 03:24:47 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr250966lbb.5.1424517887063;
        Sat, 21 Feb 2015 03:24:47 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ev8si276369wib.3.2015.02.21.03.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:24:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so7765126wiw.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YEtL2+7t0WLac24f7pFNSrp2iO1C7hUsnjpChuM1pYo=;
        b=bDT45wZEpUb54GFQCH72iOgLZayPXhNr9I8DHfFHfj6EOoHpO6pH4VSQJEm6YiiT7j
         70KEJtZoRG8bS0G44GmKwe9jTKv5KwjLY3jfzkwgbNyjCUAQrsJwLOSaqC3vjhfpm/22
         n34kKkyw68YzMJ8Obi1lTGeYgeQtDBcf02F9gQHjD0rHD1BhvqUMcMS+QqicXteomu1p
         5QulH1a2RUZcG/2GiTgtZXZRPHXPB1gtRCkCkqFhBNDn9rWCyI8ictOSYaDFER2WJXkq
         1InIS8mi0qP+4TkyL+0sBBTl9MiaNWEFdy9gSngI1yL+/nl0dJXQJRM6+h6vHG4nP2WG
         SNzw==
X-Received: by 10.180.74.229 with SMTP id x5mr3198561wiv.1.1424517886966;
        Sat, 21 Feb 2015 03:24:46 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id kj8sm46237287wjc.29.2015.02.21.03.24.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 03:24:46 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Replace printk() with pr_debug() and netdev_dbg().
Date: Sat, 21 Feb 2015 12:24:38 +0100
Message-Id: <1424517878-22578-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

For dynamic debugging pr_debug() or netdev_dbg (if there is a ponter
to a device net structure) is preferred over printk(), which is the
raw way to print something. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: Replace pr_debug() with netdev_dbg().

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 5533221..205f14e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		printk(KERN_DEBUG "%s: entries remaining in delayed crypt "
+		netdev_dbg(ieee->dev, "%s: entries remaining in delayed crypt "
 		       "deletion list\n", ieee->dev->name);
 		ieee->crypt_deinit_timer.expires = jiffies + HZ;
 		add_timer(&ieee->crypt_deinit_timer);
@@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct ieee80211_crypto_ops *ops)
 	list_add(&alg->list, &hcrypt->algs);
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
-	printk(KERN_DEBUG "ieee80211_crypt: registered algorithm '%s'\n",
+	pr_debug("ieee80211_crypt: registered algorithm '%s'\n",
 	       ops->name);
 
 	return 0;
@@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	if (del_alg) {
-		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
+		pr_debug("ieee80211_crypt: unregistered algorithm "
 		       "'%s'\n", ops->name);
 		kfree(del_alg);
 	}
@@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
 		struct ieee80211_crypto_alg *alg =
 			(struct ieee80211_crypto_alg *) ptr;
 		list_del(ptr);
-		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
+		pr_debug("ieee80211_crypt: unregistered algorithm "
 		       "'%s' (deinit)\n", alg->ops->name);
 		kfree(alg);
 	}
-- 
1.9.1


