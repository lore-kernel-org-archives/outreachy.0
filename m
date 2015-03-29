X-GM-THRID: 10250351542272
X-Received: by 10.112.213.100 with SMTP id nr4mr6207148lbc.10.1427590317172;
        Sat, 28 Mar 2015 17:51:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.9 with SMTP id bc9ls408136wib.12.canary; Sat, 28 Mar
 2015 17:51:56 -0700 (PDT)
X-Received: by 10.181.12.74 with SMTP id eo10mr1357521wid.2.1427590316855;
        Sat, 28 Mar 2015 17:51:56 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id na10si340379wic.0.2015.03.28.17.51.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 17:51:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id bg6so65392455wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 17:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PcZauLpkslL8do4Xw8sAjYwrvsFofdInCdK++fYs9wQ=;
        b=TMyd57uRqOPtpFIeGY4YQvIIrpoD6lnwVYcHqAKd/b+2q+EyuUvyild6rFmbk8gfx2
         hhcbOrydrUlLXdaKEqtIkUoIGQhtl8JrstgqM/HzOjZnYXZit4bx68USBAHlwkEqGEer
         kMjZS5nCrvH6/wEoKJHXaHpRmRdpYn4+8MuPIjlpW8gbIexOxYKO1C2HC8eX9DgeCeO5
         4jEXUyuq/Mwte9ygsDMgUJ3f1chF8mxEVVk0usVjQKamSJfsw+xik2qgJY9I2odmTg+q
         h0U26yg/36/KgxLj+3gATjW+HNAQ7EEULpSgRCDkegTQBRYIViFnQcgt17Vf9HP83HjL
         bvZQ==
X-Received: by 10.180.81.7 with SMTP id v7mr9636418wix.27.1427590316770;
        Sat, 28 Mar 2015 17:51:56 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id md2sm9762234wic.19.2015.03.28.17.51.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2015 17:51:55 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: rtllib_crypt_tkip: Replase printk() with pr_debug()
Date: Sun, 29 Mar 2015 02:51:48 +0200
Message-Id: <1427590308-18551-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace printk(KERN_DEBUG ..) with pr_debug() since it is the preferred way when there
is no netdevice or device struct object to pass as argument. 

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 39 ++++++++++------------------
 1 file changed, 13 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
index ccf8530..1c4025f 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
@@ -66,8 +66,7 @@ static void *rtllib_tkip_init(int key_idx)
 	priv->tx_tfm_arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm_arc4)) {
-		printk(KERN_DEBUG
-		       "rtllib_crypt_tkip: could not allocate crypto API arc4\n");
+		pr_debug("rtllib_crypt_tkip: could not allocate crypto API arc4\n");
 		priv->tx_tfm_arc4 = NULL;
 		goto fail;
 	}
@@ -75,8 +74,7 @@ static void *rtllib_tkip_init(int key_idx)
 	priv->tx_tfm_michael = crypto_alloc_hash("michael_mic", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm_michael)) {
-		printk(KERN_DEBUG
-		       "rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
+		pr_debug("rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
 		priv->tx_tfm_michael = NULL;
 		goto fail;
 	}
@@ -84,8 +82,7 @@ static void *rtllib_tkip_init(int key_idx)
 	priv->rx_tfm_arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm_arc4)) {
-		printk(KERN_DEBUG
-		       "rtllib_crypt_tkip: could not allocate crypto API arc4\n");
+		pr_debug("rtllib_crypt_tkip: could not allocate crypto API arc4\n");
 		priv->rx_tfm_arc4 = NULL;
 		goto fail;
 	}
@@ -93,8 +90,7 @@ static void *rtllib_tkip_init(int key_idx)
 	priv->rx_tfm_michael = crypto_alloc_hash("michael_mic", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm_michael)) {
-		printk(KERN_DEBUG
-		       "rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
+		pr_debug("rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
 		priv->rx_tfm_michael = NULL;
 		goto fail;
 	}
@@ -399,23 +395,20 @@ static int rtllib_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG
-			       "TKIP: received packet without ExtIV flag from %pM\n",
+			pr_debug("TKIP: received packet without ExtIV flag from %pM\n",
 			       hdr->addr2);
 		}
 		return -2;
 	}
 	keyidx >>= 6;
 	if (tkey->key_idx != keyidx) {
-		printk(KERN_DEBUG
-		       "TKIP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
+		pr_debug("TKIP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
 		       tkey->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!tkey->key_set) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG
-			       "TKIP: received packet from %pM with keyid=%d that does not have a configured key\n",
+			pr_debug("TKIP: received packet from %pM with keyid=%d that does not have a configured key\n",
 			       hdr->addr2, keyidx);
 		}
 		return -3;
@@ -429,8 +422,7 @@ static int rtllib_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		    (iv32 == tkey->rx_iv32 && iv16 <= tkey->rx_iv16)) &&
 		    tkey->initialized) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG
-				       "TKIP: replay detected: STA= %pM previous TSC %08x%04x received TSC %08x%04x\n",
+				pr_debug("TKIP: replay detected: STA= %pM previous TSC %08x%04x received TSC %08x%04x\n",
 				       hdr->addr2, tkey->rx_iv32, tkey->rx_iv16,
 				       iv32, iv16);
 			}
@@ -453,8 +445,7 @@ static int rtllib_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		crypto_blkcipher_setkey(tkey->rx_tfm_arc4, rc4key, 16);
 		if (crypto_blkcipher_decrypt(&desc, &sg, &sg, plen + 4)) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG
-				       ": TKIP: failed to decrypt received packet from %pM\n",
+				pr_debug(": TKIP: failed to decrypt received packet from %pM\n",
 				       hdr->addr2);
 			}
 			return -7;
@@ -474,8 +465,7 @@ static int rtllib_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 				tkey->rx_phase1_done = 0;
 			}
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG
-				       "TKIP: ICV error detected: STA= %pM\n",
+				pr_debug("TKIP: ICV error detected: STA= %pM\n",
 				       hdr->addr2);
 			}
 			tkey->dot11RSNAStatsTKIPICVErrors++;
@@ -560,8 +550,7 @@ static int rtllib_michael_mic_add(struct sk_buff *skb, int hdr_len, void *priv)
 	hdr = (struct rtllib_hdr_4addr *) skb->data;
 
 	if (skb_tailroom(skb) < 8 || skb->len < hdr_len) {
-		printk(KERN_DEBUG
-		       "Invalid packet for Michael MIC add (tailroom=%d hdr_len=%d skb->len=%d)\n",
+		pr_debug("Invalid packet for Michael MIC add (tailroom=%d hdr_len=%d skb->len=%d)\n",
 		       skb_tailroom(skb), hdr_len, skb->len);
 		return -1;
 	}
@@ -624,12 +613,10 @@ static int rtllib_michael_mic_verify(struct sk_buff *skb, int keyidx,
 		struct rtllib_hdr_4addr *hdr;
 
 		hdr = (struct rtllib_hdr_4addr *) skb->data;
-		printk(KERN_DEBUG
-		       "%s: Michael MIC verification failed for MSDU from %pM keyidx=%d\n",
+		pr_debug("%s: Michael MIC verification failed for MSDU from %pM keyidx=%d\n",
 		       skb->dev ? skb->dev->name : "N/A", hdr->addr2,
 		       keyidx);
-		printk(KERN_DEBUG "%d\n",
-		       memcmp(mic, skb->data + skb->len - 8, 8) != 0);
+		pr_debug("%d\n", memcmp(mic, skb->data + skb->len - 8, 8) != 0);
 		if (skb->dev) {
 			pr_info("skb->dev != NULL\n");
 			rtllib_michael_mic_failure(skb->dev, hdr, keyidx);
-- 
1.9.1


