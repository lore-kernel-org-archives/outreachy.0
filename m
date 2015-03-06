X-GM-THRID: 6740862042112
X-Received: by 10.112.198.34 with SMTP id iz2mr2080130lbc.22.1425651337119;
        Fri, 06 Mar 2015 06:15:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.6 with SMTP id js6ls164585wid.46.gmail; Fri, 06 Mar
 2015 06:15:36 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr2357943wjc.5.1425651336688;
        Fri, 06 Mar 2015 06:15:36 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id i7si153494wif.0.2015.03.06.06.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 06:15:36 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id em10so3849473wid.5
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 06:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nn0K6AdDMfK27LtwMi4O9Zr5UET+X3iM4KdZHKD+c1w=;
        b=ZE+YKMomjFvBt/J6eUTJfcvoM7RMHnFAstPJdx6vImWwSeVb3ybFRlfzIqX3ilCEiD
         ltE8jXDed39qAyfUlWbIkpsblIN9c2fefFkdcR+Ah0HafERu0tgjei8Rm+xHYK54rOt3
         TCnSqpzkvuJMK1Q0WP8XFbOOKFEk3w5/AudEIx6IWXhf5wdLXQdGpkpNVaLHdwHsaeV4
         U8noMKmqchaaq3RGSX03xYkQo0kMl2xXFyXtIvTvGPzTfG3uKG26KwJpvwzgb/SDi9jQ
         aDIegyTdSfnxmB6tKVwHiS3qsqXrMExM/J20dvtmV7+HePVSqUBEYV3EWulMXir0VYxD
         36ig==
X-Received: by 10.194.239.65 with SMTP id vq1mr29061364wjc.98.1425651336592;
        Fri, 06 Mar 2015 06:15:36 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id 17sm15114499wjt.45.2015.03.06.06.15.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 06:15:35 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 32/32] Staging: rtl8192u: ieee80211: pr_warn instead printk
Date: Fri,  6 Mar 2015 16:15:29 +0200
Message-Id: <1425651329-14574-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following warning using checkpatch.pl
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
v3:
 Changed usage dev_functions.
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index ecd8542..8d4ade4 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
 			struct ieee80211_hdr_3addrqos *header;
 
 			header = (struct ieee80211_hdr_3addrqos *)frag->data;
-			dev_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
+			dev_debug("%s: TKIP countermeasures: dropped "
 			       "TX packet to %pM\n",
 			       ieee->dev->name, header->addr1);
 		}
@@ -219,7 +219,7 @@ int ieee80211_encrypt_fragment(
 
 	atomic_dec(&crypt->refcnt);
 	if (res < 0) {
-		dev_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
+		dev_info("%s: Encryption failed: len=%d.\n",
 		       ieee->dev->name, frag->len);
 		ieee->ieee_stats.tx_discards++;
 		return -1;
@@ -623,7 +623,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	 * creating it... */
 	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE))||
 	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
-		dev_warn(KERN_WARNING "%s: No xmit handler.\n",
+		dev_warn("%s: No xmit handler.\n",
 		       ieee->dev->name);
 		goto success;
 	}
@@ -631,7 +631,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	if(likely(ieee->raw_tx == 0)){
 		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
-			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
+			dev_warn("%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
 			goto success;
 		}
@@ -747,7 +747,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		* postfix, header, FCS, etc.) */
 		txb = ieee80211_alloc_txb(nr_frags, frag_size + ieee->tx_headroom, GFP_ATOMIC);
 		if (unlikely(!txb)) {
-			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
+			dev_warn("%s: Could not allocate TXB\n",
 			ieee->dev->name);
 			goto failed;
 		}
@@ -846,14 +846,14 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		}
 	}else{
 		if (unlikely(skb->len < sizeof(struct ieee80211_hdr_3addr))) {
-			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
+			dev_warn("%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
 			goto success;
 		}
 
 		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
 		if(!txb){
-			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
+			dev_warn("%s: Could not allocate TXB\n",
 			ieee->dev->name);
 			goto failed;
 		}
-- 
1.9.1


