X-GM-THRID: 3565286326272
X-Received: by 10.42.53.80 with SMTP id m16mr7119280icg.26.1424935397453;
        Wed, 25 Feb 2015 23:23:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.124.133 with SMTP id mi5ls139881igb.28.gmail; Wed, 25 Feb
 2015 23:23:17 -0800 (PST)
X-Received: by 10.42.107.208 with SMTP id e16mr7385166icp.10.1424935397271;
        Wed, 25 Feb 2015 23:23:17 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id m1si7063pdc.0.2015.02.25.23.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:23:17 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id kx10so11754422pab.13
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=XgD/KIEOhi01gtxGh14MsDg65yydOVo3trtWCNB/djk=;
        b=GLTeynwRZwDVfSuh81zFQnj1QC6YixaShOQW35DunVnpOiMDrLapHBhIMA6MPU65TR
         mGfxqCr6PHgmDTI80MDeVDDvs+iiVS/CxWmdmHuobNK26DfwYti4OJ/FTQ+NrXJDmIln
         YgwuhGvKyF7p+XTCmscEVNb5AYliIz5KOMh61rHKdGA6tJ8lpzT98pyNyN5xgY4DO/BD
         KnGS4LLh0oNmntNRaJAe0a7uxMbnkKP+UwcxhzqF3t+2sWnCtcVHQ5IEi6FOXGHEcg97
         tn3jXgwcqiHNcbKv7gQeQ4HmHoOVUZq2W6iUKvFlQeYA483nDukEQWquL8cUW2S67A+M
         8QHw==
X-Received: by 10.68.68.202 with SMTP id y10mr12483658pbt.106.1424935397095;
        Wed, 25 Feb 2015 23:23:17 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id sg4sm31919pac.11.2015.02.25.23.23.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:23:16 -0800 (PST)
Date: Thu, 26 Feb 2015 12:54:25 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 4/4] staging: rtl8192u: Fix quoted string split across
 lines.
Message-ID: <6a0a48bf4a924bf5e280cb72aeb8309e0aa316b5.1424934230.git.navyasri.tech@gmail.com>
References: <cover.1424934230.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424934230.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl warning:

WARNING: quoted string split across lines

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v4:
    -Indented arguments to be lined up in same column.

Changes in v3:
    -None.

Changes in v2:
    -None.

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 6d1c030..949b23d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -65,8 +65,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
-		       "deletion list\n");
+		netdev_dbg(ieee->dev,
+			   "entries remaining in delayed crypt deletion list\n");
 		ieee->crypt_deinit_timer.expires = jiffies + HZ;
 		add_timer(&ieee->crypt_deinit_timer);
 	}
@@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	pr_debug("ieee80211_crypt: registered algorithm '%s'\n",
-	       ops->name);
+		 ops->name);
 
 	return 0;
 }
@@ -145,8 +145,8 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	if (del_alg) {
-		pr_debug("ieee80211_crypt: unregistered algorithm "
-		       "'%s'\n", ops->name);
+		pr_debug("ieee80211_crypt: unregistered algorithm '%s'\n",
+			 ops->name);
 		kfree(del_alg);
 	}
 
@@ -231,8 +231,8 @@ void __exit ieee80211_crypto_deinit(void)
 		struct ieee80211_crypto_alg *alg =
 			(struct ieee80211_crypto_alg *) ptr;
 		list_del(ptr);
-		pr_debug("ieee80211_crypt: unregistered algorithm "
-		       "'%s' (deinit)\n", alg->ops->name);
+		pr_debug("ieee80211_crypt: unregistered algorithm '%s' (deinit)\n",
+			 alg->ops->name);
 		kfree(alg);
 	}
 
-- 
1.9.1


