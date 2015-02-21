X-GM-THRID: 1969702830080
X-Received: by 10.50.176.202 with SMTP id ck10mr3137502igc.5.1424540768679;
        Sat, 21 Feb 2015 09:46:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.196 with SMTP id yo4ls484386obc.58.gmail; Sat, 21 Feb
 2015 09:46:08 -0800 (PST)
X-Received: by 10.182.121.170 with SMTP id ll10mr3619362obb.12.1424540768492;
        Sat, 21 Feb 2015 09:46:08 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id ki8si3665223pdb.1.2015.02.21.09.46.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 09:46:08 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so15072738pde.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 09:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SOTM+N05LOCSdSlX3rP74asdnNgldqxG0LmvK9knp6s=;
        b=yfr4ZVl+pozND6i6Bppj+zWvC3GEHJk/szseQXsi75w7dmaP5Drl5hLyo/Bak8V7cX
         /D11OvQtV/L0OJRgJvdkTTkrNx85x6EKswFBsQUJEWD344BsAKOL9xfrq91aFCgy75ao
         cBJWQAz01CaYA9uRnU8lsr0kePq+7R6rM6UrDAI7GOvZlH4xs9PbpOsSQh19Prkh+bWd
         4B3+J0yfb5yNrdFNnlS3XamrOOKf13NShwegHsBVoOWFFSxtCU0c5K2P4BXoNmqEdMWT
         K+Btwnxub2DLfz/2XKGl1V5wR0hqKi80HGCk+hOUj4J53Q/ZIUKuB+wNZj9mGIosHCOa
         /0NA==
X-Received: by 10.66.221.70 with SMTP id qc6mr5911143pac.92.1424540768355;
        Sat, 21 Feb 2015 09:46:08 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id ki2sm30718448pdb.33.2015.02.21.09.46.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 09:46:07 -0800 (PST)
Date: Sat, 21 Feb 2015 23:17:02 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8192u: Convert from printk into netdev_dbg
 or pr_dbg
Message-ID: <4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech@gmail.com>
References: <cover.1424538520.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424538520.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Convert printk(KERN_DEBUG.. ) to netdev_dbg if its a network driver
and pr_dbg if its not a driver, to fix the checkpatch.pl warning:

WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
pr_debug(...  to printk(KERN_DEBUG ...

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 5533221..e517e81 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		printk(KERN_DEBUG "%s: entries remaining in delayed crypt "
-		       "deletion list\n", ieee->dev->name);
+		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
+		       "deletion list\n");
 		ieee->crypt_deinit_timer.expires = jiffies + HZ;
 		add_timer(&ieee->crypt_deinit_timer);
 	}
@@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct ieee80211_crypto_ops *ops)
 	list_add(&alg->list, &hcrypt->algs);
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
-	printk(KERN_DEBUG "ieee80211_crypt: registered algorithm '%s'\n",
+	pr_dbg("ieee80211_crypt: registered algorithm '%s'\n",
 	       ops->name);
 
 	return 0;
@@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	if (del_alg) {
-		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
+		pr_dbg("ieee80211_crypt: unregistered algorithm "
 		       "'%s'\n", ops->name);
 		kfree(del_alg);
 	}
@@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
 		struct ieee80211_crypto_alg *alg =
 			(struct ieee80211_crypto_alg *) ptr;
 		list_del(ptr);
-		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
+		pr_dbg("ieee80211_crypt: unregistered algorithm "
 		       "'%s' (deinit)\n", alg->ops->name);
 		kfree(alg);
 	}
-- 
1.9.1


