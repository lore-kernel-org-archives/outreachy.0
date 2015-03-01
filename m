X-GM-THRID: 5597962436608
X-Received: by 10.194.161.194 with SMTP id xu2mr3313750wjb.1.1425245290948;
        Sun, 01 Mar 2015 13:28:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.139 with SMTP id dg11ls374244lac.62.gmail; Sun, 01 Mar
 2015 13:28:10 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr3257388lbb.24.1425245290427;
        Sun, 01 Mar 2015 13:28:10 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id o3si540384wib.2.2015.03.01.13.28.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:28:10 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id r20so10801671wiv.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+EkEeAbH1PA0Onmfe2xbEq6AoWc5lM5O12Ra8+gQMQg=;
        b=QeYe+28KiMcby2EcAmEIoxhhTrh2yi7lVPVJ0Ps4PNh9+7jqbxF2NkuZld4yZW0zea
         o/e/I+veiUIR+har2mGQIsT9v6sTt9hdExgbD+yJBzZA0OLOHD/Em/2YTmjupwh5tAMo
         Pv0au553NKMjtyFbF4b8NN7Z+2DQhuuJooT3cfioOQugI6Muyv+fVwAiZ/DnF+0P3jzX
         Pni9xM7o9RKAC4ytNyBqbBtGqXCPY5zU3cISY5CsOrHr39j3wjiAIzvg8nE951td39zb
         WsrVyN0JjNTZ69vLsbcCgN9mlL2ScKPwMe1jiTlINnpG+5/iSJR8Erujl5+OTB0daNe+
         jfww==
X-Received: by 10.180.37.110 with SMTP id x14mr29547652wij.45.1425245290318;
        Sun, 01 Mar 2015 13:28:10 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id m9sm13149076wiz.24.2015.03.01.13.28.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 13:28:09 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Fix printk debug style warning
Date: Sun,  1 Mar 2015 23:28:03 +0200
Message-Id: <1425245283-10867-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This fixes the following checkpatch.pl warnings:
WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then
dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index f470cb6..99c5d89 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
 
        priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate "
+		pr_debug("ieee80211_crypt_ccmp: could not allocate "
 		       "crypto API aes\n");
 		priv->tfm = NULL;
 		goto fail;
@@ -284,7 +284,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: received packet without ExtIV"
+			pr_debug("CCMP: received packet without ExtIV"
 			       " flag from %pM\n", hdr->addr2);
 		}
 		key->dot11RSNAStatsCCMPFormatErrors++;
@@ -292,13 +292,13 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	}
 	keyidx >>= 6;
 	if (key->key_idx != keyidx) {
-		printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame "
+		pr_debug("CCMP: RX tkey->key_idx=%d frame "
 		       "keyidx=%d priv=%p\n", key->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!key->key_set) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: received packet from %pM"
+			pr_debug("CCMP: received packet from %pM"
 			       " with keyid=%d that does not have a configured"
 			       " key\n", hdr->addr2, keyidx);
 		}
@@ -315,7 +315,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 	if (memcmp(pn, key->rx_pn, CCMP_PN_LEN) <= 0) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: replay detected: STA=%pM"
+			pr_debug("CCMP: replay detected: STA=%pM"
 			       " previous PN %pm received PN %pm\n",
 			       hdr->addr2, key->rx_pn, pn);
 		}
@@ -353,7 +353,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 		if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "CCMP: decrypt failed: STA="
+				pr_debug("CCMP: decrypt failed: STA="
 				"%pM\n", hdr->addr2);
 			}
 			key->dot11RSNAStatsCCMPDecryptErrors++;
-- 
1.9.1


