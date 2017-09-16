X-GM-THRID: 6466344790011150336
X-Received: by 10.36.78.206 with SMTP id r197mr3857665ita.12.1505563219854;
        Sat, 16 Sep 2017 05:00:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.75 with SMTP id b72ls2632302iti.21.canary-gmail; Sat,
 16 Sep 2017 05:00:19 -0700 (PDT)
X-Received: by 10.31.149.16 with SMTP id x16mr15955078vkd.19.1505563219055;
        Sat, 16 Sep 2017 05:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505563218; cv=none;
        d=google.com; s=arc-20160816;
        b=o994ErrI4jZ2ZJZY0G0ss/hcx1GigtUIAPTrOEyQlJxx1BT5QpdzSTXz2wWL0+4mBQ
         4gl/h3F/ej78vXHaimRvF5X4tLy4XGJ2c3dA+KVQ2MsMXLfbwI/TtdoEXqUKu4KnHTdF
         4dps1f8Rn18iwKoaR9U5hrpPaR/C+mRT7C+vPC/BhEMPfuHTF9AkV8m7gaDtrvNc8rfP
         pCBaMnB86LrbyMqAZpIVO2l7f2ACCAJb8c/yY+0b2it6CRwF5BIGXniClln+ZSECgIM1
         7zlqp7DKLWBp40lmvUJPa5zQFg6zykZtwWv5VV9KDj1I1v0gfWDOAO5qAxKU3HJIsa0y
         4f9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=X19+37aZnvdxtVTjUw+hpaI87Fu1X6OKdMoOTAkG958=;
        b=F37alvG+8WXW0JGinWwdd62nDTEw+KULhf373shIF2cyuwWe0w9S0CaNeuurdTAIZU
         SftrWWKrLBGZ06MyzlZm1W2OiW/nIjI/FGZQFti0lm5eRSDKo1M7Lq13wOiZ1BvMuUAG
         3IuE81vnTwvdX/Sirt7k9n2HO3o4KtKiPYoorAqRrfEqCIS7QU5EOsjNaYbhG7SwBrRu
         wrh1WmvBeHFoGCFoIxssFgO3TPAbw4twvcEGaJYdCF2q4qGpPt6Az7xAJF2RRVknwlNm
         f1I2BDAhu7dDDWqW4fSmweRCPzCUACBIbZPlPVO5YXT8sgpaiZTAiW9KM4WXSjA130nT
         dhsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qlipe0Wj;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q15si316709pfi.7.2017.09.16.05.00.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:00:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qlipe0Wj;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so2462226pfi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=X19+37aZnvdxtVTjUw+hpaI87Fu1X6OKdMoOTAkG958=;
        b=qlipe0Wj1rq+14j5SD8CT+9MG5gXzxmshSE+GI7VM/h3do+XoKIcqX+lSt/P1rVBjf
         wracfSaKz5tZzSNPY4/KJ5gN8GRav2P6FYoNrmB68+7FfNdxI9pwhziI79MsXYuvGcYI
         bgYuillk87mK9IYncgPbLkgwzXiHNU8HkmGzdbEIduNMWvNT6g43kXPL8pHgzdV33EIw
         lQ39K3OUoX+3FZMFVe9Z5HaL2qVEZqVkjXPdVyoxjtBQiyt9W4WQBfpzJWHJb64iae97
         AFnPXD8+F/5Is10OD+zOBWGca3Ka7W8NR4Li6gPhgB43O8xlT2DA6BC/YaLvFbimBEX+
         DliQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=X19+37aZnvdxtVTjUw+hpaI87Fu1X6OKdMoOTAkG958=;
        b=F3o4EkTtEaE+/mkvLHxYnXhGWrdL5DSK71zmN4Lqi6qXwYegAJuIfzz2iNMB/AGufn
         PmTPM79zo979nUFbK6rUlvMxDfekSkWro1Oo6SHKK7j0QP5X9n0XykhNyxFvMqP97j/s
         QR573FZPF5L1YBSM9/1ebRK37Lgm9Hs+MZd6NZsivVIce2a0Tv1KlCBpwm/QSr2YKLEU
         9qn4PzfoSxe6MCTF0DfNIQ4KgY1diQheGAE3e/UEFJORHPp4WkKDg+YTF/xRLb4zQ8pr
         RqtlK0spPOJuz1qM/yKcyfWMcLXG1IrCbjB/AwWeYAbQazcnPUrc6WIXFFa7EK8BvleG
         5qPQ==
X-Gm-Message-State: AHPjjUi7zxNy2RQulAidp52kgqnYuj8LEm/qf+JmOQZvDK8k1S0yntoM
	6PV+6RUAmV+8b4kFakQ=
X-Google-Smtp-Source: ADKCNb7s8XGFGmm/M8Cu671sNfi9pH1nmk/XOY5ZzCt9gskVXs7nuAsbS4MjK+02YcwYV9XQnJt6xQ==
X-Received: by 10.84.254.4 with SMTP id b4mr29951679plm.285.1505563218662;
        Sat, 16 Sep 2017 05:00:18 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id x128sm5434735pgb.6.2017.09.16.05.00.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 05:00:18 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8191u: ieee80211: prefer pr_debug() to printk(KERN_DEBUG, ...)
Date: Sat, 16 Sep 2017 17:30:12 +0530
Message-Id: <1505563212-2690-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch replaces call to  printk with pr_debug function
thus addressing the following checkpatch script warning:

WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(... to printk(KERN_DEBUG ...

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c      | 24 +++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 60ecfec..9d92864 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -74,7 +74,7 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->tx_tfm_arc4 = crypto_alloc_skcipher("ecb(arc4)", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm_arc4)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
+		pr_debug("ieee80211_crypt_tkip: could not allocate "
 				"crypto API arc4\n");
 		priv->tx_tfm_arc4 = NULL;
 		goto fail;
@@ -83,7 +83,7 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->tx_tfm_michael = crypto_alloc_ahash("michael_mic", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm_michael)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
+		pr_debug("ieee80211_crypt_tkip: could not allocate "
 				"crypto API michael_mic\n");
 		priv->tx_tfm_michael = NULL;
 		goto fail;
@@ -92,7 +92,7 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->rx_tfm_arc4 = crypto_alloc_skcipher("ecb(arc4)", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm_arc4)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
+		pr_debug("ieee80211_crypt_tkip: could not allocate "
 				"crypto API arc4\n");
 		priv->rx_tfm_arc4 = NULL;
 		goto fail;
@@ -101,7 +101,7 @@ static void *ieee80211_tkip_init(int key_idx)
 	priv->rx_tfm_michael = crypto_alloc_ahash("michael_mic", 0,
 			CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm_michael)) {
-		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
+		pr_debug("ieee80211_crypt_tkip: could not allocate "
 				"crypto API michael_mic\n");
 		priv->rx_tfm_michael = NULL;
 		goto fail;
@@ -396,20 +396,20 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "TKIP: received packet without ExtIV"
+			pr_debug("TKIP: received packet without ExtIV"
 			       " flag from %pM\n", hdr->addr2);
 		}
 		return -2;
 	}
 	keyidx >>= 6;
 	if (tkey->key_idx != keyidx) {
-		printk(KERN_DEBUG "TKIP: RX tkey->key_idx=%d frame "
+		pr_debug("TKIP: RX tkey->key_idx=%d frame "
 		       "keyidx=%d priv=%p\n", tkey->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!tkey->key_set) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "TKIP: received packet from %pM"
+			pr_debug("TKIP: received packet from %pM"
 			       " with keyid=%d that does not have a configured"
 			       " key\n", hdr->addr2, keyidx);
 		}
@@ -425,7 +425,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		if (iv32 < tkey->rx_iv32 ||
 		(iv32 == tkey->rx_iv32 && iv16 <= tkey->rx_iv16)) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "TKIP: replay detected: STA=%pM"
+				pr_debug("TKIP: replay detected: STA=%pM"
 				" previous TSC %08x%04x received TSC "
 				"%08x%04x\n", hdr->addr2,
 				tkey->rx_iv32, tkey->rx_iv16, iv32, iv16);
@@ -453,7 +453,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		skcipher_request_zero(req);
 		if (err) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG ": TKIP: failed to decrypt "
+				pr_debug(": TKIP: failed to decrypt "
 						"received packet from %pM\n",
 						hdr->addr2);
 			}
@@ -476,7 +476,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 				tkey->rx_phase1_done = 0;
 			}
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "TKIP: ICV error detected: STA="
+				pr_debug("TKIP: ICV error detected: STA="
 				"%pM\n", hdr->addr2);
 			}
 			tkey->dot11RSNAStatsTKIPICVErrors++;
@@ -567,7 +567,7 @@ static int ieee80211_michael_mic_add(struct sk_buff *skb, int hdr_len, void *pri
 	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
 
 	if (skb_tailroom(skb) < 8 || skb->len < hdr_len) {
-		printk(KERN_DEBUG "Invalid packet for Michael MIC add "
+		pr_debug("Invalid packet for Michael MIC add "
 		       "(tailroom=%d hdr_len=%d skb->len=%d)\n",
 		       skb_tailroom(skb), hdr_len, skb->len);
 		return -1;
@@ -636,7 +636,7 @@ static int ieee80211_michael_mic_verify(struct sk_buff *skb, int keyidx,
 		struct rtl_80211_hdr_4addr *hdr;
 		hdr = (struct rtl_80211_hdr_4addr *) skb->data;
 
-		printk(KERN_DEBUG "%s: Michael MIC verification failed for "
+		pr_debug("%s: Michael MIC verification failed for "
 		       "MSDU from %pM keyidx=%d\n",
 		       skb->dev ? skb->dev->name : "N/A", hdr->addr2,
 		       keyidx);
-- 
2.7.4


