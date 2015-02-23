X-GM-THRID: 2517133950976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,25a6457a67aef068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.191.65 with SMTP id gw1mr11423048obc.40.1424685208841;
        Mon, 23 Feb 2015 01:53:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.210 with SMTP id 79ls1498800ioj.41.gmail; Mon, 23 Feb
 2015 01:53:28 -0800 (PST)
X-Received: by 10.66.140.66 with SMTP id re2mr10999281pab.29.1424685208648;
        Mon, 23 Feb 2015 01:53:28 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id xj4si3781589pbc.2.2015.02.23.01.53.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:53:28 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjg10 with SMTP id g10so24339144pdj.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dS1sJiVBgLSZQj+UO/64sXTG/a0I106wHoCYquhW2o8=;
        b=QGRrOL24G6YgXCEj+RwI7X66XIdQPtntJhbdKo3rHMQt+qxdry1jmHbLUuJ4Y+90LG
         zmMPo/X0wVjcltbGJHg3a5bBUOR6w81XJmwNl85zKaYdzxOSaQ0Q2uRkIV+bsP8e1Obd
         FrQFEbU2ftf5JJsmv0SXuxqe7t39CyBbVqbxmhvJkByoJLavK9QBkGgdTn4giPZK1qVX
         dVaWyyGwqwpKbPgC+LLhu0Hz20y967okBUgb8OAJsitMqIXmmO8049t4erloBGxpBsIn
         0p57TjLDwupialdn28u2b98Z0cx/mcdCHMn4vTT15tefRpQbKuwIRgnStO7EO2TvOnJL
         rBZQ==
X-Received: by 10.70.26.100 with SMTP id k4mr17770176pdg.125.1424685208518;
        Mon, 23 Feb 2015 01:53:28 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id lq2sm35386666pab.34.2015.02.23.01.53.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:53:28 -0800 (PST)
Date: Mon, 23 Feb 2015 15:24:30 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/4] staging: rtl8192u: Fix quoted string split across
 lines.
Message-ID: <6583fe4c851d1364e66448ecf733b693200f56d0.1424683660.git.navyasri.tech@gmail.com>
References: <cover.1424683659.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424683659.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl warning:

WARNING: quoted string split across lines

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v3:
    -None in this patch.
    
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 0aed175..c81193b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
-		       "deletion list\n");
+		netdev_dbg(ieee->dev,
+		   "entries remaining in delayed crypt deletion list\n");
 		ieee->crypt_deinit_timer.expires = jiffies + HZ;
 		add_timer(&ieee->crypt_deinit_timer);
 	}
@@ -146,8 +146,8 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	if (del_alg) {
-		pr_debug("ieee80211_crypt: unregistered algorithm "
-		       "'%s'\n", ops->name);
+		pr_debug("ieee80211_crypt: unregistered algorithm '%s'\n",
+		     ops->name);
 		kfree(del_alg);
 	}
 
@@ -232,8 +232,8 @@ void __exit ieee80211_crypto_deinit(void)
 		struct ieee80211_crypto_alg *alg =
 			(struct ieee80211_crypto_alg *) ptr;
 		list_del(ptr);
-		pr_debug("ieee80211_crypt: unregistered algorithm "
-		       "'%s' (deinit)\n", alg->ops->name);
+		pr_debug("ieee80211_crypt: unregistered algorithm '%s' (deinit)\n",
+		     alg->ops->name);
 		kfree(alg);
 	}
 
-- 
1.9.1


