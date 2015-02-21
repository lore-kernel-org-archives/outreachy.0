X-GM-THRID: 1670193872896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,75ad403aeef5fe09,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr208221lae.7.1424509717387;
        Sat, 21 Feb 2015 01:08:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.136 with SMTP id si8ls376264lac.11.gmail; Sat, 21 Feb
 2015 01:08:36 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr215815lbb.9.1424509716709;
        Sat, 21 Feb 2015 01:08:36 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id ev8si254824wib.3.2015.02.21.01.08.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 01:08:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id y19so17070298wgg.10
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 01:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PAn2pGgt5vSXq+qgLzzaqlaxj3LlBNEs0b4fLV02FWQ=;
        b=epCHyjIPmhhB6+EVHAuPGeKwHWfRIh4JCKTQYd2y/f2NSMYPXZCxMdOrJascVTKKdi
         daPY0GVU1hUo1vNxsBY27KEy3gqN2fRJz8GX7b7SMGyb2OQ1H8sX0zPyPdpc+bN1xVzl
         8QpqgVDd0yxhZm20hJdGb5FXT2Au1LcbaDnhEVkpnpLR5CjjYZ9GEVYQNDVt/V608iM0
         T+ZqCSs2eqcio9XhZ7v+jSTcA/z9r0edeTMv3ZE3XhEdKy03307DKZ2Vgl/HJuT/fxLV
         isDwi5pUXPV5biYuzgo03IRcXPLnKl2JC8zTb77HHD0iMj8KwSeAVHNcw/ELEw/EP0fM
         YtEQ==
X-Received: by 10.194.61.12 with SMTP id l12mr2877980wjr.139.1424509716617;
        Sat, 21 Feb 2015 01:08:36 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id r3sm41499686wjw.7.2015.02.21.01.08.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 01:08:35 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Replace printk() with pr_debug().
Date: Sat, 21 Feb 2015 10:08:28 +0100
Message-Id: <1424509708-3190-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

For dynamic debugging pr_debug() metod is preferred over printk(), which
is the raw way to print something. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 5533221..447af93 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		printk(KERN_DEBUG "%s: entries remaining in delayed crypt "
+		pr_debug("%s: entries remaining in delayed crypt "
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


