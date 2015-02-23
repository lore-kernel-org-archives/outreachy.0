X-GM-THRID: 2517133950976
X-Received: by 10.140.149.78 with SMTP id 75mr11069622qhv.9.1424684916520;
        Mon, 23 Feb 2015 01:48:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.163 with SMTP id f32ls2183271qgd.84.gmail; Mon, 23 Feb
 2015 01:48:36 -0800 (PST)
X-Received: by 10.236.229.233 with SMTP id h99mr10996717yhq.42.1424684916386;
        Mon, 23 Feb 2015 01:48:36 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id m1si17197pdc.0.2015.02.23.01.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:48:36 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id z10so24146805pdj.12
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=RcOQHQMk3/3jZFBG9fzhF0xFqP1mVrgcR5vh70BSDGs=;
        b=j/O5WU2A5OD9zruVU69uyK4wOVasEaRifRO88jH9IbOHztC3sjPJ5P1kf6T5b+Iipy
         +47XlOeOWadIsJk1kxfodhcuJghVR/Q0ysCPA1VAWkn4rCW+z2KixxreAYXRHNgOIbWZ
         sI4cOItWGL3PBQUMMkmOPAgT2MhqN3l8kTg7IdwET2O5/FSzZ2xQZ89LvadJivF5l4Wi
         UWhWWf7gtO3cZJawdhUv4OvnxPw1FVdQMC4kjWUfZkmxbAEDI6TVOPN7bg0oKw7aDxjn
         SVZBpuX1CaNhQCFrgBDqRcJ51Yn14sSry3vyM+vkYM2cSNRtyZVfrP23tEJvDUK+uc2l
         nBQQ==
X-Received: by 10.70.128.231 with SMTP id nr7mr18339761pdb.116.1424684916246;
        Mon, 23 Feb 2015 01:48:36 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id qz3sm35358776pab.13.2015.02.23.01.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:48:35 -0800 (PST)
Date: Mon, 23 Feb 2015 15:19:38 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] staging: rtl8192u: Convert from printk into
 netdev_dbg or pr_debug.
Message-ID: <98deaa0c6c3f0623fa6a0c1479d3d3f69ff4884c.1424683660.git.navyasri.tech@gmail.com>
References: <cover.1424683659.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1424683659.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

As this is a network driver file, convert printk(KERN_DEBUG.. ) to
netdev_dbg if the calling function has arguments to support it else
to pr_debug , to fix the checkpatch.pl warning:

WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
pr_debug(...  to printk(KERN_DEBUG ...

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>

Changes in v2:
    - Correct the commit message to be clearer.
---
Changes in v3:
    - Change pr_dbg to pr_debug as it gives the following warning:
      implicit declaration of function ‘pr_dbg’ and update subject
      to reflect the change.

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


