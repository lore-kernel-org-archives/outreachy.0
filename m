X-GM-THRID: 6115060350976
X-Received: by 10.112.189.227 with SMTP id gl3mr4142027lbc.2.1425333423145;
        Mon, 02 Mar 2015 13:57:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls669206wib.28.gmail; Mon, 02 Mar
 2015 13:57:02 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr2512673wid.1.1425333422840;
        Mon, 02 Mar 2015 13:57:02 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id i7si759027wif.0.2015.03.02.13.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 13:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id m14so36108204wev.13
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 13:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=flrB5uSGlL1FaCEGZW+ZAfvPjIy77eZVI8uBrv/PCck=;
        b=O0j5sdKqtya0EQB9duyWyJWNrSwPyL2KfmUFOcPoVPh7vx54n7ZA6TIYxVdLflWxmb
         pZIqmRMsxUPWqbXfgjw/cUW4tor8P7/IL7HrKbTvl7yDHkb/hLYW7fptoceAK24gbt+I
         GPK83GkJ7vDr5WDiD+nt3X21UkJzbmFuKPjVmrbmEiKQTRRdINA0FPA8RSf78qds+j1I
         zyzUPvWYxx5yuavpttl9mUjVCnBWzWk8MTPEp/YzJiCjOgsWAEfkS+FE61Uk61dteaPc
         34a6393r2eJ0RYi+ISBVIa3fUahA+NsEHESicTZt3wOhcY/ZCkjXaVY6CSlu6kSAscFO
         +7/Q==
X-Received: by 10.194.58.84 with SMTP id o20mr63899856wjq.75.1425333422769;
        Mon, 02 Mar 2015 13:57:02 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id q10sm20973794wjr.41.2015.03.02.13.57.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 13:57:01 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8192u: Fix quoted string split across lines
Date: Mon,  2 Mar 2015 23:56:54 +0200
Message-Id: <1425333415-5205-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in file ieee80211_crypt.c
WARNING: "quoted string split across lines warning"

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index f80dd08..3995620 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -65,8 +65,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		netdev_dbg(ieee->dev, "%s: entries remaining in delayed crypt "
-		       "deletion list\n", ieee->dev->name);
+		netdev_dbg(ieee->dev, "%s: entries remaining in delayed crypt deletion list\n",
+				ieee->dev->name);
 		ieee->crypt_deinit_timer.expires = jiffies + HZ;
 		add_timer(&ieee->crypt_deinit_timer);
 	}
@@ -145,8 +145,8 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	if (del_alg) {
-		pr_debug("ieee80211_crypt: unregistered algorithm "
-		       "'%s'\n", ops->name);
+		pr_debug("ieee80211_crypt: unregistered algorithm '%s'\n",
+				ops->name);
 		kfree(del_alg);
 	}
 
@@ -231,8 +231,8 @@ void __exit ieee80211_crypto_deinit(void)
 		struct ieee80211_crypto_alg *alg =
 			(struct ieee80211_crypto_alg *) ptr;
 		list_del(ptr);
-		pr_debug("ieee80211_crypt: unregistered algorithm "
-		       "'%s' (deinit)\n", alg->ops->name);
+		pr_debug("ieee80211_crypt: unregistered algorithm '%s' (deinit)\n",
+				alg->ops->name);
 		kfree(alg);
 	}
 
-- 
1.9.1


