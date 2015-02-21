X-GM-THRID: 1969702830080
X-Received: by 10.182.47.228 with SMTP id g4mr3707869obn.5.1424540879431;
        Sat, 21 Feb 2015 09:47:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.15.129 with SMTP id fo1ls464646igd.21.canary; Sat, 21 Feb
 2015 09:47:59 -0800 (PST)
X-Received: by 10.42.81.68 with SMTP id y4mr156235ick.17.1424540879173;
        Sat, 21 Feb 2015 09:47:59 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ki8si3665397pdb.1.2015.02.21.09.47.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 09:47:59 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id et14so16187360pad.11
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 09:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SEMWLUGLI0gTOZe55RPXXh2eZHgRxlcRVuOVMbrIVFw=;
        b=nJ/yYtOUK+25WbqA8jAd7+EDfHV9qyxZU3p/4F4tmfGm9e/tri2pjYM7itGKTUdGAR
         Klt4KFhNCSTnS9FWL7QfzkJcaC9h32k/5w8JS2LLb6MuVCkx63A/Q4c7TQlTAFGiuVRe
         jyGqM6L8f3JjrtrprRpvWXiFriHmzs3JmFroLvc7WVc4N7gSCNFkM8eNzL8Rdgt9FRDr
         zegjdxkBN2jQ1P7+0oVW+M2LksHCN4KqFlgxcGG7hJEJy0LX2kuP6llHNwiFen9lQjzh
         yoki8mnP/5EBo68hvvIp522546wYhl0yD3kXznxGP361EmphDNNMwRDgW3yMOLRsy6DG
         1dSw==
X-Received: by 10.70.138.68 with SMTP id qo4mr6079480pdb.8.1424540879080;
        Sat, 21 Feb 2015 09:47:59 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id w8sm30675858pds.64.2015.02.21.09.47.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 09:47:58 -0800 (PST)
Date: Sat, 21 Feb 2015 23:18:58 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8192u: Fix quoted string split across lines
Message-ID: <481c067770bf92d61b9ab615b4225a10868f900c.1424538520.git.navyasri.tech@gmail.com>
References: <cover.1424538520.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424538520.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl warning:

WARNING: quoted string split across lines

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 553e421..0004939 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
-		       "deletion list\n");
+		netdev_dbg(ieee->dev,
+		       "entries remaining in delayed crypt deletion list\n");
 		ieee->crypt_deinit_timer.expires = jiffies + HZ;
 		add_timer(&ieee->crypt_deinit_timer);
 	}
@@ -146,8 +146,8 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	if (del_alg) {
-		pr_dbg("ieee80211_crypt: unregistered algorithm "
-		       "'%s'\n", ops->name);
+		pr_dbg("ieee80211_crypt: unregistered algorithm '%s'\n",
+		       ops->name);
 		kfree(del_alg);
 	}
 
@@ -232,8 +232,8 @@ void __exit ieee80211_crypto_deinit(void)
 		struct ieee80211_crypto_alg *alg =
 			(struct ieee80211_crypto_alg *) ptr;
 		list_del(ptr);
-		pr_dbg("ieee80211_crypt: unregistered algorithm "
-		       "'%s' (deinit)\n", alg->ops->name);
+		pr_dbg("ieee80211_crypt: unregistered algorithm '%s' (deinit)\n",
+		       alg->ops->name);
 		kfree(alg);
 	}
 
-- 
1.9.1


