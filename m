X-GM-THRID: 6808532332710985728
X-Received: by 2002:adf:f610:: with SMTP id t16mr9684390wrp.30.1585234968038;
        Thu, 26 Mar 2020 08:02:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:61c8:: with SMTP id q8ls2914950wrv.10.gmail; Thu, 26 Mar
 2020 08:02:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtqYtwwwRfaV/fT+gKSzPp47/wgogDXREzf9gcfYyHfnBYGeiRmg+PQP6funCXmxp4JzoeU
X-Received: by 2002:adf:dfce:: with SMTP id q14mr10284300wrn.326.1585234966589;
        Thu, 26 Mar 2020 08:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585234966; cv=none;
        d=google.com; s=arc-20160816;
        b=BJPjwR6o0dyXMZVw/t/wjgrxrjHA1LMzBrfpHlfafeI99npMCto5/wn/1HrKmo7FXo
         zox0cb/rlhhuSgQ/CuR4RKfNCrcv0Qs32S4Ss8K9ydKQ0LHua2Zk8VRowt8Yyzv8vMFD
         IV1iLNEfBj5KA6/E+ABsfLMJux6H+Juaz1iedxJMtE6kRBtr8Uwbav1aYzNXpQgfJaX5
         6KuGmQJG83al2GQxEYx1IjUMqLEkmS9tmWjhQMeKlOYxpz5fLPlTK1GT0AXy+4BWyGm9
         /xvD4xUvTjFAqQO+mUhAFwUHEiKAF7udkEoTMCftDaCvXQM2opx95U9djdwvaF7csuvv
         C5PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gl18+wg9gBLS3WYJIJ2kTq5aC5wsLxvIJMzVnobpkWI=;
        b=KmziFGXCO77qFwBmG2eOGcjt+53aY23Qt8FaZAEzjKWEoqpvhAcF44y3KdZHTgYNI/
         wM6M0XY6pPqbD+n34cAt2p05MDSIIxzB76igS5XHheAdx6cPeA2/V5PLaEPRzsubzSGZ
         1hQ5PFvWX6wRPdk71zC2PyI3YeympvUQXriwB8KXLFabwD9DxMev931zEMHGEEorANZm
         nDSrV0CJbMg7MZwYpn0nTtcJq6L/Cz/+2GzZXzOJKq2S5vfA2VrGRzwumca8vkHehegb
         6MvJVPqlR3wYziQWveYpobritrcQg26/3hdKaAvUSQryBfMgT0mdbF2dTR0QCqohxnmd
         qS9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=frf7BlpD;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y201si385131wmc.0.2020.03.26.08.02.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 08:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=frf7BlpD;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id w25so4829025wmi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 08:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gl18+wg9gBLS3WYJIJ2kTq5aC5wsLxvIJMzVnobpkWI=;
        b=frf7BlpDRQXrQ8agcx1VlJ9XVmLsLNcc9pNn0XvjMdjMcP8RNSeSMNVA3+nGASFM/v
         dSnEkLSwSfd5YOh9Kt5Ik2QSGIUv5Wqt5EGS0UOr6Am3jjf6H3iyTWM+R/AhEd4LxU1e
         WMyxWK8AuCIbxzZs6DnFq2ZrWXL3eQ4XZm//7bPoC2a5/Fsp9QRGveikCVTrPT5juRV6
         Va16sPT+RCheSrLgKVzj39UW1aCWYRD2UhNad4M9MNAXAv/B27Cdtl0XaSXm9Z8D3rxG
         0gsGsbGFHPpzoeHIfplPiQhcW1z1Do58ejF7SDTIh4enUgI5BUoSvO3xNgvnfTnv3O1i
         7mLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gl18+wg9gBLS3WYJIJ2kTq5aC5wsLxvIJMzVnobpkWI=;
        b=Fm2XNYcLCGC+da82VKiAuqih4BUPyIGWKlSEFVhr28PaED+xqF2x6I9kxgKvEJ4pxr
         kYYrehW6fmQ1Fplv5x9jHI01cR5y+r0URadBDrZ1CmnS5BL8Yyn252Wj5jP4dfu97JbK
         WpcGud5eZz9tf6WIiEgjq4OD5N0ZWpQytMJilQ0Q6eh3J2QsB2Z0Zf69maQeulN+KLaS
         NOwF3tslL/cXVL/eOsJmX5mdd3706C0fffUY3O44BcPMPa09VpN9WdovFmecV0pmMdc8
         3eOADRuW+flJ4eEyBVcwqb/J1q3vtmuD4bUxpqLw6CRHwo98gzT8Qj2jLChuBzBzhMC0
         GkYA==
X-Gm-Message-State: ANhLgQ2RHBJXpMt2o8d8AWFiA5mtgX0uRa9vKNFF+FROby4Akgmi8pDf
	AWsFeR1TSdcD4vgbzGZCpNaLXWBAX9E=
X-Received: by 2002:a7b:cc07:: with SMTP id f7mr393737wmh.126.1585234965678;
        Thu, 26 Mar 2020 08:02:45 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.179])
        by smtp.gmail.com with ESMTPSA id b202sm4043634wmd.15.2020.03.26.08.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 08:02:45 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 1/4] Staging: rtl8192u: ieee80211: Use netdev_dbg() for debug messages.
Date: Thu, 26 Mar 2020 11:02:35 -0400
Message-Id: <84dc7e33954509457efce2a35fb293e631845a96.1585233434.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585233434.git.jane.pnx9@gmail.com>
References: <cover.1585233434.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace printk(KERN_DEBUG ...) with netdev_dbg() across the driver.
since netdev_dbg() is preferable and specific for
printing debug messages for network devices.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 19 +++++++++----------
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  5 ++---
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c |  2 +-
 3 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 6f4710171151..ffe624ed0c0c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -388,20 +388,20 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & BIT(5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "TKIP: received packet without ExtIV"
+			netdev_dbg(skb->dev, "TKIP: received packet without ExtIV"
 			       " flag from %pM\n", hdr->addr2);
 		}
 		return -2;
 	}
 	keyidx >>= 6;
 	if (tkey->key_idx != keyidx) {
-		printk(KERN_DEBUG "TKIP: RX tkey->key_idx=%d frame "
+		netdev_dbg(skb->dev, "TKIP: RX tkey->key_idx=%d frame "
 		       "keyidx=%d priv=%p\n", tkey->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!tkey->key_set) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "TKIP: received packet from %pM"
+			netdev_dbg(skb->dev, "TKIP: received packet from %pM"
 			       " with keyid=%d that does not have a configured"
 			       " key\n", hdr->addr2, keyidx);
 		}
@@ -417,7 +417,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		if (iv32 < tkey->rx_iv32 ||
 		(iv32 == tkey->rx_iv32 && iv16 <= tkey->rx_iv16)) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "TKIP: replay detected: STA=%pM"
+				netdev_dbg(skb->dev, "TKIP: replay detected: STA=%pM"
 				" previous TSC %08x%04x received TSC "
 				"%08x%04x\n", hdr->addr2,
 				tkey->rx_iv32, tkey->rx_iv16, iv32, iv16);
@@ -445,7 +445,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		skcipher_request_zero(req);
 		if (err) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG ": TKIP: failed to decrypt "
+				netdev_dbg(skb->dev, "TKIP: failed to decrypt "
 						"received packet from %pM\n",
 						hdr->addr2);
 			}
@@ -468,7 +468,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 				tkey->rx_phase1_done = 0;
 			}
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "TKIP: ICV error detected: STA="
+				netdev_dbg(skb->dev, "TKIP: ICV error detected: STA="
 				"%pM\n", hdr->addr2);
 			}
 			tkey->dot11RSNAStatsTKIPICVErrors++;
@@ -559,7 +559,7 @@ static int ieee80211_michael_mic_add(struct sk_buff *skb, int hdr_len, void *pri
 	hdr = (struct rtl_80211_hdr_4addr *)skb->data;

 	if (skb_tailroom(skb) < 8 || skb->len < hdr_len) {
-		printk(KERN_DEBUG "Invalid packet for Michael MIC add "
+		netdev_dbg(skb->dev, "Invalid packet for Michael MIC add "
 		       "(tailroom=%d hdr_len=%d skb->len=%d)\n",
 		       skb_tailroom(skb), hdr_len, skb->len);
 		return -1;
@@ -628,10 +628,9 @@ static int ieee80211_michael_mic_verify(struct sk_buff *skb, int keyidx,
 		struct rtl_80211_hdr_4addr *hdr;
 		hdr = (struct rtl_80211_hdr_4addr *)skb->data;

-		printk(KERN_DEBUG "%s: Michael MIC verification failed for "
+		netdev_dbg(skb->dev, "Michael MIC verification failed for "
 		       "MSDU from %pM keyidx=%d\n",
-		       skb->dev ? skb->dev->name : "N/A", hdr->addr2,
-		       keyidx);
+		       hdr->addr2, keyidx);
 		if (skb->dev)
 			ieee80211_michael_mic_failure(skb->dev, hdr, keyidx);
 		tkey->dot11RSNAStatsTKIPLocalMICFailures++;
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index f0b6b8372f91..95cea2f56149 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -180,9 +180,8 @@ int ieee80211_encrypt_fragment(
 			struct rtl_80211_hdr_3addrqos *header;

 			header = (struct rtl_80211_hdr_3addrqos *)frag->data;
-			printk(KERN_DEBUG "%s: TKIP countermeasures: dropped "
-			       "TX packet to %pM\n",
-			       ieee->dev->name, header->addr1);
+			netdev_dbg(ieee->dev, "TKIP countermeasures: dropped "
+			       "TX packet to %pM\n", header->addr1);
 		}
 		return -1;
 	}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 33c596f9ec96..17d9700dbf01 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -436,7 +436,7 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
 	if (ieee->reset_on_keychange &&
 	    ieee->iw_mode != IW_MODE_INFRA &&
 	    ieee->reset_port && ieee->reset_port(dev)) {
-		printk(KERN_DEBUG "%s: reset_port failed\n", dev->name);
+		netdev_dbg(ieee->dev, "reset_port failed\n");
 		return -EINVAL;
 	}
 	return 0;
---
2.20.1


