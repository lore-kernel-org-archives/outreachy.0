X-GM-THRID: 6740862042112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bed5f46716a629a3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.67 with SMTP id c3mr1065954lae.7.1425651503808;
        Fri, 06 Mar 2015 06:18:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.164 with SMTP id jx4ls113377wid.5.canary; Fri, 06 Mar
 2015 06:18:23 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr5533648wix.0.1425651503158;
        Fri, 06 Mar 2015 06:18:23 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id r6si158799wix.0.2015.03.06.06.18.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 06:18:23 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id m14so59697717wev.13
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 06:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RhzmvRbvzzcRSauWaQ7f6dT6lHXtUxYRatxtRRwntOM=;
        b=k5KksuYO1ZRtDW+sF2e42U5zpxu0pjSWh8Y6DGUOt1mqn78ue9jDdT9PA/+eQZWRWU
         mb3igh0tOXxnaoDWANkzdil4ItOQsfDvVz3zo1maL/DZ0jDVx/0WDi26eg3jJYiNiIF2
         prn9vttGqzwH6K17HLeUoMuwtqOsZecPjseF9mlDZATC/wiW586IYOfmnc4td1XIEJwQ
         aPLWsrRx5+HKccMw8F94Bqj3nUq4YKzNmB68Hkw7xd2m5S/SjYn0u8eJfZNoWmINwrhm
         RiBMYX89yvDJKTkFV9c5CWgTNRB2l5S+f9H1pPbM+R/7DUWYxaOSVzRNAfNXq09CbUE8
         TjIw==
X-Received: by 10.181.25.232 with SMTP id it8mr33160127wid.63.1425651502719;
        Fri, 06 Mar 2015 06:18:22 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id v9sm2612702wib.0.2015.03.06.06.18.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 06:18:22 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH v4] Staging: rtl8192u: ieee80211: pr_warn instead printk
Date: Fri,  6 Mar 2015 16:18:16 +0200
Message-Id: <1425651496-14666-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following warning using checkpatch.pl
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
v4:
 Changed patch number.
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


