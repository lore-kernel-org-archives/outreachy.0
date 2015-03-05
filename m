X-GM-THRID: 6740862042112
X-Received: by 10.112.25.7 with SMTP id y7mr1674274lbf.21.1425578488684;
        Thu, 05 Mar 2015 10:01:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.9.75 with SMTP id x11ls170124wia.3.canary; Thu, 05 Mar
 2015 10:01:28 -0800 (PST)
X-Received: by 10.180.75.232 with SMTP id f8mr4899747wiw.0.1425578488367;
        Thu, 05 Mar 2015 10:01:28 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id cl5si619638wib.3.2015.03.05.10.01.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 10:01:28 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id l18so855426wgh.11
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 10:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TIRqb94Sn2QC2O8tPF5wEuGzgagD+8WGudmUO8Lo4z8=;
        b=0Fx1eOOpbPrTX5xxKZgkHDaFM+7QDSwiH1xac986/I7ukSABUCIFxQD8oQ9GvQUSCN
         /ML09r2io97ZyM7A7JsNmdz9tllKri8TNQizkaFvcVSYXnDpmk9n9DBfQJ8fE+ZbWJ3l
         3O5ZWh8bGDyj6QFomo6lsA4YulW4DCElY7Tpx9PC9KZGgZxgHpIm2R4PChp9su3p0IE7
         wOg8gYPQNRHQWoOFNTFZWVlLZ8UwKCThnmT82kYGEUjFs4t8xxgyzXSoS/xxmyAt/1+0
         xiqCnx2VvVohBiSOokpQPz8zm9RKoslf060WM4EEmwkX+EixJMraTiGk6MN1KdbT1Flf
         edCQ==
X-Received: by 10.180.105.40 with SMTP id gj8mr69480413wib.67.1425578488298;
        Thu, 05 Mar 2015 10:01:28 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dj5sm11508866wjb.28.2015.03.05.10.01.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Mar 2015 10:01:27 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: pr_warn instead printk
Date: Thu,  5 Mar 2015 20:01:20 +0200
Message-Id: <1425578480-7151-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following warning using checkpatch.pl
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index ff6b212..ecd8542 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
 			struct ieee80211_hdr_3addrqos *header;
 
 			header = (struct ieee80211_hdr_3addrqos *)frag->data;
-			pr_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
+			dev_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
 			       "TX packet to %pM\n",
 			       ieee->dev->name, header->addr1);
 		}
@@ -219,7 +219,7 @@ int ieee80211_encrypt_fragment(
 
 	atomic_dec(&crypt->refcnt);
 	if (res < 0) {
-		pr_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
+		dev_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
 		       ieee->dev->name, frag->len);
 		ieee->ieee_stats.tx_discards++;
 		return -1;
@@ -623,7 +623,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	 * creating it... */
 	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE))||
 	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
-		pr_warn(KERN_WARNING "%s: No xmit handler.\n",
+		dev_warn(KERN_WARNING "%s: No xmit handler.\n",
 		       ieee->dev->name);
 		goto success;
 	}
@@ -631,7 +631,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	if(likely(ieee->raw_tx == 0)){
 		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
-			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
+			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
 			goto success;
 		}
@@ -747,7 +747,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		* postfix, header, FCS, etc.) */
 		txb = ieee80211_alloc_txb(nr_frags, frag_size + ieee->tx_headroom, GFP_ATOMIC);
 		if (unlikely(!txb)) {
-			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
+			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
 			ieee->dev->name);
 			goto failed;
 		}
@@ -846,14 +846,14 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		}
 	}else{
 		if (unlikely(skb->len < sizeof(struct ieee80211_hdr_3addr))) {
-			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
+			dev_warn(KERN_WARNING "%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
 			goto success;
 		}
 
 		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
 		if(!txb){
-			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
+			dev_warn(KERN_WARNING "%s: Could not allocate TXB\n",
 			ieee->dev->name);
 			goto failed;
 		}
-- 
1.9.1


