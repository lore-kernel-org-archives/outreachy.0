X-GM-THRID: 3565286326272
X-Received: by 10.66.140.66 with SMTP id re2mr6864808pab.29.1424934756457;
        Wed, 25 Feb 2015 23:12:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.18 with SMTP id a18ls95490ioj.87.gmail; Wed, 25 Feb
 2015 23:12:36 -0800 (PST)
X-Received: by 10.43.6.5 with SMTP id oi5mr7242738icb.11.1424934756158;
        Wed, 25 Feb 2015 23:12:36 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id ri9si1470pdb.1.2015.02.25.23.12.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:12:36 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so10972862pdj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=svuAnJjrFcxrCairAvS02s/9+U30kOigE57JgezmQWI=;
        b=b4G2C+yqpiBE5l6ol6pXHSTc5C/wBq9FpIDEYCnF9YFcoIpC8Q04Ar/P4wsJ7IPrXG
         IfC8acDIES0U1NRKy0poLDYD16pQIbDQrLhTrcKWYokcnArCr/kojCBPqqiFoTo1tPL5
         6+9QuOKPMF1G2zLIzYGg6UeTPghA2JBc3pODA+2/GBt59MRo9jPr5H3amWbiSQpZRL6+
         +2qtepecGBaZfnf8fQD74g1ErTiG2yHxuQZhuY5sQGxH/5Dpiuk22nMfLw4q0qdrt8bA
         7Iuf4UbVl2Jpk0h2AOWpQOXMZPkjlgldzisrcsfphgoAA3pB23QhMOrG1hOvD9zLRM88
         EjxQ==
X-Received: by 10.68.248.74 with SMTP id yk10mr12679023pbc.26.1424934756002;
        Wed, 25 Feb 2015 23:12:36 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id ot6sm38184245pdb.28.2015.02.25.23.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:12:35 -0800 (PST)
Date: Thu, 26 Feb 2015 12:43:43 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/4] staging: rtl8192u: Convert from printk into
 netdev_dbg or pr_debug
Message-ID: <98deaa0c6c3f0623fa6a0c1479d3d3f69ff4884c.1424934230.git.navyasri.tech@gmail.com>
References: <cover.1424934230.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1424934230.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

As this is a network driver file, convert printk(KERN_DEBUG.. ) to
netdev_dbg if the calling function has arguments to support it else
to pr_debug , to fix the checkpatch.pl warning:

WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
pr_debug(...  to printk(KERN_DEBUG ...

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v4:
    - Changed code indentation.

Changes in v3:
    - Change pr_dbg to pr_debug as it gives the following warning:
      implicit declaration of function ‘pr_dbg’and change 
      subject name to reflect the change.

Changes in v2:
    - Correct the commit message to be clearer.

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 5533221..eb89321 100644
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


