X-GM-THRID: 6740862042112
X-Received: by 10.180.13.98 with SMTP id g2mr4888580wic.3.1425578586407;
        Thu, 05 Mar 2015 10:03:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.80.197 with SMTP id t5ls406705wix.18.canary; Thu, 05 Mar
 2015 10:03:04 -0800 (PST)
X-Received: by 10.180.182.201 with SMTP id eg9mr2184927wic.3.1425578584643;
        Thu, 05 Mar 2015 10:03:04 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id by11si1451752wib.1.2015.03.05.10.03.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 10:03:04 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so54603152wes.9
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 10:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=v7e/3uwPzF0kY0W+M0qGdpW4kPmkD2wgMaHiOfVOdec=;
        b=xrzp6G1741fZXk/b/8EQjxqLg/FrDzOQ/l4ntuuMkcB6L4LbI3eLiKiS46fkKWXjQN
         +B6CTxnCcemuBbpI8xYD9Eo9ChtX6vUNCmVdcYEui1ms9kzkMPrUf53vStCW+DFGngP4
         T3uP3evyjjsJwK14+P8IbbBM5kMe7lS8p7Ze4uzcsuXNfOFfEqar7jvpBYbILI1Gsn1T
         TLx/xcVd6nHUvL2IAkqMBbr2xKunyxQxlE88VslHE3GkRzhHNnyBLTN/lBcU7rcg/yYh
         mA/rSP2tgaCfc6veX/PLpvItAos+G5enPy9I0Au9mxv2S6UbXqU3hgqYroecudSefNjT
         TUrQ==
X-Received: by 10.180.77.110 with SMTP id r14mr4856290wiw.89.1425578584541;
        Thu, 05 Mar 2015 10:03:04 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id cb9sm30735680wib.10.2015.03.05.10.03.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Mar 2015 10:03:04 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 31/31] Staging: rtl8192u: ieee80211: pr_warn instead printk
Date: Thu,  5 Mar 2015 20:02:56 +0200
Message-Id: <1425578576-7227-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following warning using checkpatch.pl
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
v2:
 Changed pr_warn and used dev_warn.
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


