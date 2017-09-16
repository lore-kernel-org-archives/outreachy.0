X-GM-THRID: 6466370226932940800
X-Received: by 10.159.52.93 with SMTP id s29mr17453281uab.125.1505569142548;
        Sat, 16 Sep 2017 06:39:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.86 with SMTP id 83ls2569622itj.19.gmail; Sat, 16 Sep
 2017 06:39:01 -0700 (PDT)
X-Received: by 10.31.190.6 with SMTP id o6mr16411656vkf.55.1505569141800;
        Sat, 16 Sep 2017 06:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505569141; cv=none;
        d=google.com; s=arc-20160816;
        b=lzZMbgNtPr9p4x5H074EXtggzS0mukJHUNKgztQrB7Y8RA7JJRd1d1gZbhx/Y0J7WT
         scVO7bGYjdVojdeDQ8n2pHypUdkQa8p6Y4H08D4DN86LeOXlpAVJ4lr9AXWpTKNFjfs4
         /bLQU3SSFWejOi4hZPTLRiJRI3D28ovabZpkJTTA/wJcBFPbvRy9Ykny1b2WncH6Xhx5
         Vz/cuOyAMsuJamKd5yM69SSku446AJhdDuN2dF6TuIIdohe4i9Xsma5kI0i0/TdQwLPO
         7B7jydjKd72/Oy0FEdhTfgXn4n0JQQLxnoX3QgxCnNufQ6woVZmxBcW4NgDPaOlsV3Mh
         0PaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=vURFBNJH2HKDOhWuH8gBnME/ike6IKIOIeruE97Qmlk=;
        b=A1g8DZCGfk51v7wbiwtAjIuX+01xCBYVDOGGs8Tauz7wVidirq/IsBYNy0xYIIDKmO
         FGbb9I/cT+8Wb4o+HIap9BZ9iqTE/RD1Q281sqsXnek03nRV4bJhEC/LZCsNqeCmJ/mQ
         Co8F3U20JNI9jSAWqgg6LpW03mw9Ya5JYvufFafJvUYExF+7LKqszIZ95uk3tG8b8oEG
         qsd8R5BtIA7zIqZjluVIp627tpBxL8xaMuPmht6km+pkFDOYrLAISHukMk+mK+bICi3r
         2Skoabg7uPOZkBZMyWqPTNcEyoMB6kVrkzEet1kEArv4PmHQZGG42FHetkJyKSYWeXcC
         21TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DVT8+ZNX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c19si293695pfk.9.2017.09.16.06.39.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 06:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DVT8+ZNX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so2539032pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 06:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vURFBNJH2HKDOhWuH8gBnME/ike6IKIOIeruE97Qmlk=;
        b=DVT8+ZNXqSn6Li7SCvovLuSL2iAlHyEDqlJJOlBrZxLIIM0O/lNGmpLI4ZX9EpRxQc
         xJYPe54hIalc3X5pusK1eBagW62euOk0/5+dmn/DjTdqgErQlwMGwXxdJcAZOi9Qu9wC
         5dVBGNhCsZXzhTRNzkYvH0MXdPyB6ZJDl9GWsfGP7SJQvElpO9oGSdK+3IhLgKznI/Kl
         RZ1ZD/ArMrUEj6J+FQzOydm67qPvz7mRyMnvczs0oICaLaeyfSMcRSyfb9OyF5YCIBCr
         XQ+NxToFu5+o0NZS6/i/hbmKuDdh4i18lcBS5b3uPa5Skj3Nhl2ASftC5NTvwKGbGEKg
         Gs2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vURFBNJH2HKDOhWuH8gBnME/ike6IKIOIeruE97Qmlk=;
        b=EqunGQo9DF1Dd0bFzYEABk/OanQ8K577J3yr6Hbol8JkYW0jbPo1TjsF7oPGQkounb
         E1GSKecOmq9SRIwjiSuCiEHLac6s8Gcx5KgTOW7C6pnhHzio/cOGy52lOBYUw0yrvXzU
         NyqXavxVUhRz75MtlepaJiJoT5mJQ3rRbfViBiT+2vSQ7evPl2w8wquKSUPY3G2fkKMs
         /3qeP5pjmEG/LRV9agt6Tv3KBXGIPO7qj3dNfoXpAa5+I0wvTyM3wKCErALlFxwGrmg9
         tINGwKudExG52satMFRJ3yBBUHyy/ieEqNmKYiNKGdPcsCru5rvLWyrZuS9R+m0jxbr8
         Dh1A==
X-Gm-Message-State: AHPjjUiYQEcjNn7BtjQoLxyHMqPuUgErkw/3dtjrSNm+rErcy+d4V8NQ
	jz/4rJnaCh4kyA==
X-Google-Smtp-Source: ADKCNb7mD+JL6z2NO4fpLVLL9ctOGS2Ogw6g2+6jTkWLAw3AEibtCAjNYc6LEmlQP68OiXJxj7qLMA==
X-Received: by 10.99.62.142 with SMTP id l136mr27369419pga.130.1505569141344;
        Sat, 16 Sep 2017 06:39:01 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id s4sm6566278pgr.32.2017.09.16.06.39.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 06:39:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] taging: rtl8192u: ieee80211: prefer pr_debug over printk
Date: Sat, 16 Sep 2017 19:08:54 +0530
Message-Id: <1505569134-18604-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch replaces call to  printk with pr_debug function,
thus addressing the following checkpatch script warning:

WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(... to printk(KERN_DEBUG ...


Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v2:
	-replaces string with function name with %s and __func__.
	-combines all strings concatenations into one
	-follows line not over 80 characters rule
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c      | 56 ++++++++++------------
 1 file changed, 24 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 60ecfec..6bca4af 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -74,8 +74,7 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->tx_tfm_arc4 = crypto_alloc_skcipher("ecb(arc4)", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm_arc4)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
-				"crypto API arc4\n");
+		pr_debug("%s: could not allocate crypto API arc4\n", __func__);
 		priv->tx_tfm_arc4 = NULL;
 		goto fail;
 	}
@@ -83,8 +82,8 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->tx_tfm_michael = crypto_alloc_ahash("michael_mic", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm_michael)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
-				"crypto API michael_mic\n");
+		pr_debug("%s: could not allocate crypto API michael_mic\n",
+			 __func__);
 		priv->tx_tfm_michael = NULL;
 		goto fail;
 	}
@@ -92,8 +91,7 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->rx_tfm_arc4 = crypto_alloc_skcipher("ecb(arc4)", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm_arc4)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
-				"crypto API arc4\n");
+		pr_debug("%s: could not allocate crypto API arc4\n", __func__);
 		priv->rx_tfm_arc4 = NULL;
 		goto fail;
 	}
@@ -101,8 +99,8 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->rx_tfm_michael = crypto_alloc_ahash("michael_mic", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm_michael)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
-				"crypto API michael_mic\n");
+		pr_debug("%s: could not allocate crypto API michael_mic\n",
+			 __func__);
 		priv->rx_tfm_michael = NULL;
 		goto fail;
 	}
@@ -396,22 +394,21 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "TKIP: received packet without ExtIV"
-			       " flag from %pM\n", hdr->addr2);
+			pr_debug("TKIP: received packet without ExtIV flag from %pM\n",
+				 hdr->addr2);
 		}
 		return -2;
 	}
 	keyidx >>= 6;
 	if (tkey->key_idx != keyidx) {
-		printk(KERN_DEBUG "TKIP: RX tkey->key_idx=%d frame "
-		       "keyidx=%d priv=%p\n", tkey->key_idx, keyidx, priv);
+		pr_debug("TKIP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
+			 tkey->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!tkey->key_set) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "TKIP: received packet from %pM"
-			       " with keyid=%d that does not have a configured"
-			       " key\n", hdr->addr2, keyidx);
+			pr_debug("TKIP: received packet from %pM with keyid=%d that does not have a configured key\n",
+				 hdr->addr2, keyidx);
 		}
 		return -3;
 	}
@@ -425,10 +422,9 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		if (iv32 < tkey->rx_iv32 ||
 		(iv32 == tkey->rx_iv32 && iv16 <= tkey->rx_iv16)) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "TKIP: replay detected: STA=%pM"
-				" previous TSC %08x%04x received TSC "
-				"%08x%04x\n", hdr->addr2,
-				tkey->rx_iv32, tkey->rx_iv16, iv32, iv16);
+				pr_debug("TKIP: replay detected: STA=%pM previous TSC %08x%04x received TSC %08x%04x\n",
+					 hdr->addr2, tkey->rx_iv32,
+					 tkey->rx_iv16, iv32, iv16);
 			}
 			tkey->dot11RSNAStatsTKIPReplays++;
 			return -4;
@@ -453,9 +449,8 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		skcipher_request_zero(req);
 		if (err) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG ": TKIP: failed to decrypt "
-						"received packet from %pM\n",
-						hdr->addr2);
+				pr_debug(": TKIP: failed to decrypt received packet from %pM\n",
+					 hdr->addr2);
 			}
 			return -7;
 		}
@@ -476,8 +471,8 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 				tkey->rx_phase1_done = 0;
 			}
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "TKIP: ICV error detected: STA="
-				"%pM\n", hdr->addr2);
+				pr_debug("TKIP: ICV error detected: STA=%pM\n",
+					 hdr->addr2);
 			}
 			tkey->dot11RSNAStatsTKIPICVErrors++;
 			return -5;
@@ -508,7 +503,7 @@ static int michael_mic(struct crypto_ahash *tfm_michael, u8 *key, u8 *hdr,
 	int err;
 
 	if (tfm_michael == NULL) {
-		printk(KERN_WARNING "michael_mic: tfm_michael == NULL\n");
+		pr_debug("%s: tfm_michael == NULL\n", __func__);
 		return -1;
 	}
 
@@ -567,9 +562,8 @@ static int ieee80211_michael_mic_add(struct sk_buff *skb, int hdr_len, void *pri
 	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
 
 	if (skb_tailroom(skb) < 8 || skb->len < hdr_len) {
-		printk(KERN_DEBUG "Invalid packet for Michael MIC add "
-		       "(tailroom=%d hdr_len=%d skb->len=%d)\n",
-		       skb_tailroom(skb), hdr_len, skb->len);
+		pr_debug("Invalid packet for Michael MIC add (tailroom=%d hdr_len=%d skb->len=%d)\n",
+			 skb_tailroom(skb), hdr_len, skb->len);
 		return -1;
 	}
 
@@ -636,10 +630,8 @@ static int ieee80211_michael_mic_verify(struct sk_buff *skb, int keyidx,
 		struct rtl_80211_hdr_4addr *hdr;
 		hdr = (struct rtl_80211_hdr_4addr *) skb->data;
 
-		printk(KERN_DEBUG "%s: Michael MIC verification failed for "
-		       "MSDU from %pM keyidx=%d\n",
-		       skb->dev ? skb->dev->name : "N/A", hdr->addr2,
-		       keyidx);
+		pr_debug("%s: Michael MIC verification failed for MSDU from %pM keyidx=%d\n",
+			 skb->dev ? skb->dev->name : "N/A", hdr->addr2, keyidx);
 		if (skb->dev)
 			ieee80211_michael_mic_failure(skb->dev, hdr, keyidx);
 		tkey->dot11RSNAStatsTKIPLocalMICFailures++;
-- 
2.7.4


