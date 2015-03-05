X-GM-THRID: 6740862042112
X-Received: by 10.194.239.41 with SMTP id vp9mr1718807wjc.5.1425576907474;
        Thu, 05 Mar 2015 09:35:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.195 with SMTP id o3ls359629laf.82.gmail; Thu, 05 Mar
 2015 09:35:06 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr1756265lbc.2.1425576906903;
        Thu, 05 Mar 2015 09:35:06 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id gj20si357374wic.1.2015.03.05.09.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 09:35:06 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggz12 with SMTP id z12so55069802wgg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 09:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ngUzltvQuxUZ74oz+6wECwwSZ5EgJTbKjpKhH6/drWI=;
        b=N+G9mSh1V4OqNGEki22Wkeg4oeJX9IPSV2R6uCF314IJfHa6fnxY/8XBWuLxTCDn93
         pdLskYlHJX6hyullizmbrkR6+Q0TG2hDKPPUJhPMm5noz5FlPvzk7LCtpZyj9PcH2+2b
         VwF3QvBhxTelYS6QaNxoALwK8aj6Yg3Wd6Ha5AkI4T4X6CStdN3vdHyuwpDwjJ90tyre
         teuvXqRotMZ6PNrdiMzLGblrbhhh6gVv3xLOxgh0x2R6TkfY894BH3uaqB1rkyC0AU4H
         PCjhP3+5iId0N+8lT4RLu5wpnvWOr1qBvpWjoD5qDrkMTPnKaIbtV4sjb2og66nr08Pr
         fpQw==
X-Received: by 10.180.8.10 with SMTP id n10mr24358588wia.79.1425576906788;
        Thu, 05 Mar 2015 09:35:06 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id v5sm9366363wiw.24.2015.03.05.09.35.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Mar 2015 09:35:06 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: pr_warn instead printk
Date: Thu,  5 Mar 2015 19:34:58 +0200
Message-Id: <1425576898-6611-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following warning using checkpatch.pl
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 96ab304..ff6b212 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
 			struct ieee80211_hdr_3addrqos *header;
 
 			header = (struct ieee80211_hdr_3addrqos *)frag->data;
-			printk(KERN_DEBUG "%s: TKIP countermeasures: dropped "
+			pr_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
 			       "TX packet to %pM\n",
 			       ieee->dev->name, header->addr1);
 		}
@@ -219,7 +219,7 @@ int ieee80211_encrypt_fragment(
 
 	atomic_dec(&crypt->refcnt);
 	if (res < 0) {
-		printk(KERN_INFO "%s: Encryption failed: len=%d.\n",
+		pr_info(KERN_INFO "%s: Encryption failed: len=%d.\n",
 		       ieee->dev->name, frag->len);
 		ieee->ieee_stats.tx_discards++;
 		return -1;
@@ -623,7 +623,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	 * creating it... */
 	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE))||
 	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
-		printk(KERN_WARNING "%s: No xmit handler.\n",
+		pr_warn(KERN_WARNING "%s: No xmit handler.\n",
 		       ieee->dev->name);
 		goto success;
 	}
@@ -631,7 +631,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	if(likely(ieee->raw_tx == 0)){
 		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
-			printk(KERN_WARNING "%s: skb too small (%d).\n",
+			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
 			goto success;
 		}
@@ -747,7 +747,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		* postfix, header, FCS, etc.) */
 		txb = ieee80211_alloc_txb(nr_frags, frag_size + ieee->tx_headroom, GFP_ATOMIC);
 		if (unlikely(!txb)) {
-			printk(KERN_WARNING "%s: Could not allocate TXB\n",
+			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
 			ieee->dev->name);
 			goto failed;
 		}
@@ -846,14 +846,14 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		}
 	}else{
 		if (unlikely(skb->len < sizeof(struct ieee80211_hdr_3addr))) {
-			printk(KERN_WARNING "%s: skb too small (%d).\n",
+			pr_warn(KERN_WARNING "%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
 			goto success;
 		}
 
 		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
 		if(!txb){
-			printk(KERN_WARNING "%s: Could not allocate TXB\n",
+			pr_warn(KERN_WARNING "%s: Could not allocate TXB\n",
 			ieee->dev->name);
 			goto failed;
 		}
-- 
1.9.1


