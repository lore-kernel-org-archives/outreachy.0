X-GM-THRID: 2517133950976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,25a6457a67aef068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.17.168 with SMTP id j28mr3775958yhj.0.1424622903049;
        Sun, 22 Feb 2015 08:35:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.119 with SMTP id c110ls1951980qgc.26.gmail; Sun, 22 Feb
 2015 08:35:02 -0800 (PST)
X-Received: by 10.236.28.230 with SMTP id g66mr7895710yha.2.1424622902907;
        Sun, 22 Feb 2015 08:35:02 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22a.google.com (mail-pd0-x22a.google.com. [2607:f8b0:400e:c02::22a])
        by gmr-mx.google.com with ESMTPS id bo1si3929470pbc.0.2015.02.22.08.35.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:35:02 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) client-ip=2607:f8b0:400e:c02::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjg10 with SMTP id g10so19762688pdj.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Dvbi/Yp2XAFT8DQDNav1urwVSor+cSi3L9IvQrstNks=;
        b=e499taLJeJpvYE6P5l3eJ8wBEV7DXlE6345tb0AWettd92r4hUIHQqQirjh1GfW3cG
         a5scByeBQvu9zuRJ+68MgY8k8VC6+wkMy6JjFgLok+0vYZdnKN4hmyXyuv/egrC3R51I
         s5QVfemDV/kqQtMLM5xRCZLYaaQNWHtkhVS5JUDhoS4baDJOw6ElZTAliTGFbpFIJECB
         85n8UM3lMPgxzeHUXIcPA8k6/iLpLyQi9nsnQObTsPY1LcfqN16xao/x8PUgeN9TRLTo
         0+vpQLi4Uxlc/B1GybWpgFBKPXY3TwN76vOxweNWZ9y4Rr8EbSOWXRBzdxixz8GZR2jI
         oMfw==
X-Received: by 10.70.96.194 with SMTP id du2mr12295169pdb.163.1424622902770;
        Sun, 22 Feb 2015 08:35:02 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id rr9sm32922569pbc.39.2015.02.22.08.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:35:02 -0800 (PST)
Date: Sun, 22 Feb 2015 22:06:04 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: rtl8192u: Convert from printk into
 netdev_dbg or pr_dbg
Message-ID: <faf65006e6915dfb3539058d59019502e805e7cc.1424622240.git.navyasri.tech@gmail.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424622240.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

As this is a network driver file, convert printk(KERN_DEBUG.. ) to
netdev_dbg if the calling function has arguments to support it else
to pr_dbg , to fix the checkpatch.pl warning:

WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
pr_debug(...  to printk(KERN_DEBUG ...

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
    - Correct the commit message to be clearer.

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


