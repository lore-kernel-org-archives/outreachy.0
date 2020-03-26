X-GM-THRID: 6808532332710985728
X-Received: by 2002:a2e:94d5:: with SMTP id r21mr5247766ljh.81.1585234971040;
        Thu, 26 Mar 2020 08:02:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:455c:: with SMTP id j28ls1232258lfm.10.gmail; Thu, 26
 Mar 2020 08:02:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuxmB4dZXmFjZh3YBkkvPa/t05yN2SmzUrqR1gPAGCSQ6l+in+Fihqcz44C3rIaXU6nshuO
X-Received: by 2002:a19:c388:: with SMTP id t130mr6247593lff.175.1585234969231;
        Thu, 26 Mar 2020 08:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585234969; cv=none;
        d=google.com; s=arc-20160816;
        b=fp/+udvUfY/qS3kPLIYU7XUpw96hAKfxGCyq+CsTLkuf0qX51oTVbt5RvRrW70cmvI
         vL05RWaLgfnCI3hGUHqjPnJmDBTN4FIS615cdN5pRDP4f2NxJ0AH/Cv1jnuIHNCZM/bV
         NpnsBZggZfzMhpPYP4dXDj7GN5aTN6K6hfhHJCZweMoKj9iFHkX/BXDiO9WmA3qnvFYh
         3Plq36tS9XozaLgMz8ePrlahRUAWN6iOlOv5c/mYP1XrOrDHw5u6St3kd11qmMwkou+V
         A+ZA6LU/AAacGw+bjcA+9nmfnlnMFb7+3x8HsSyk9hAo6tvZNvmfGaegBVbJ/nsm1p4h
         NnJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/0iZBBpDLY3KSfbXgzMN82OhpMFmBkoSTPyTvs65dIQ=;
        b=mAglamIKIQxkhW9wyszqwZrdPTjGIfAYwgv0xOlot/4xJ/4VYb8sHkC6WzVN4PpcnG
         X+GaSfk1TJcKnrJBEY0N0AGYXcp03n9K6uLKcS/UGMbXqTCjXYshZ9rU9VlBVNC1sFMh
         WaEbC8k6UobVMukfarpS1WA6eiB8OKgP8N1pLNljCTkK2+vHwFC0jS2iXGY3YET8ja8c
         LipzN2A07VXbPEEFLFLfJgnxitBDtPKzmyLsj20SDqDlLq406NNpIo4TMytlLcdT/a9X
         Z1wHW1970zAsO3QzVDyYP7zyS+X2+bzv2YlpSB+5/m1ovbKg68PdaQWoaZfDGjncwsL/
         P5Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WTQnu8C6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s4si84638ljj.2.2020.03.26.08.02.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 08:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WTQnu8C6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id d5so8255972wrn.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 08:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/0iZBBpDLY3KSfbXgzMN82OhpMFmBkoSTPyTvs65dIQ=;
        b=WTQnu8C6q4uE2eFGiimpwul72FoBHuIdxbSufScPWcA7z23MSEvbYJ0MN489MDjEla
         8TI+4aMwPAO0gcpgS/ji4FbN1Q2I9ukJRRQB4rwMVVGIXIj2tRClHTgv+u8YWvcg4vIE
         iJ13/dq4hyiAQpt7lKURPZU3jujfGolfsmW5PEqIIsnly8nwDb/3dSwUHwBsYYlZuhK4
         Qr4Z26nK0q4twmgGQ5Y9JBHanf1QyAjD/sbfKGxIE7uThWp3nw4G4q0iyre/rQrc6flC
         X4fMT4RNiKrVDzwr9zwiTmWY3tvr+o0GLON95/GSkuUWvlxrxmvpsHhOJKSbyaYTt+Vh
         VLaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/0iZBBpDLY3KSfbXgzMN82OhpMFmBkoSTPyTvs65dIQ=;
        b=bBfoGOV17fqM92He9HBFczYallXeKrwgv/mRXdeL1tX6XHhbzpk13NxAUaNL9fiKWo
         0IELX8B/jmSN6nDOZkIae6mkg7r3wO6PlxFOvPNLoHZYKa7yOZB2ACxChBW5ThWO87dD
         3kVMeUgmLyRw+uzlWgkzbu/JHQyNF7fNoT080wL/j60G3To1KrMZob98V5i81myt4/h3
         IQAPMGTs8/5gJMKPPUo661R3EEpA4MnMtKqm14+KtgGUQyFjBT9Gu/RRq3aBfMTn6lXj
         epBU+MhjJrkS8sJJrpvZuubeZueX4AENAev/9nG2RZ6ofyYkz39HuCEDRPLzvOiPnwmu
         Z/zw==
X-Gm-Message-State: ANhLgQ2rA0wrS44TBDnl9god602upDwG69r+7HyooMkzmXKlzUkGq1ET
	yZWGtrCVZfPZAzyEf6qpMVrsbJiVVC4=
X-Received: by 2002:a5d:4081:: with SMTP id o1mr10249225wrp.114.1585234968181;
        Thu, 26 Mar 2020 08:02:48 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.179])
        by smtp.gmail.com with ESMTPSA id b202sm4043634wmd.15.2020.03.26.08.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 08:02:47 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 2/4] Staging: rtl8192u: ieee80211: Use netdev_warn() for network devices.
Date: Thu, 26 Mar 2020 11:02:36 -0400
Message-Id: <02fe0666cb737a3b0581081c9e7c179bfb820cac.1585233434.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585233434.git.jane.pnx9@gmail.com>
References: <cover.1585233434.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use netdev_warn() over printk().
netdev_warn() is specific for printing warning
messages for network devices, and preferable
over printk(KERN_WARNING ...).

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 .../rtl8192u/ieee80211/ieee80211_module.c       |  3 +--
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c   | 17 +++++++----------
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c   |  5 ++---
 3 files changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index aa9dab8a4ae8..a5a1b14f5a40 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -68,8 +68,7 @@ static inline int ieee80211_networks_allocate(struct ieee80211_device *ieee)
 				 sizeof(struct ieee80211_network),
 				 GFP_KERNEL);
 	if (!ieee->networks) {
-		printk(KERN_WARNING "%s: Out of memory allocating beacons\n",
-		       ieee->dev->name);
+		netdev_warn(ieee->dev, "Out of memory allocating beacons\n");
 		return -ENOMEM;
 	}

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 95cea2f56149..44684b7fae72 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -556,16 +556,15 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	 */
 	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)) ||
 	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
-		printk(KERN_WARNING "%s: No xmit handler.\n",
-		       ieee->dev->name);
+		netdev_warn(ieee->dev, "No xmit handler.\n");
 		goto success;
 	}


 	if (likely(ieee->raw_tx == 0)) {
 		if (unlikely(skb->len < SNAP_SIZE + sizeof(u16))) {
-			printk(KERN_WARNING "%s: skb too small (%d).\n",
-			ieee->dev->name, skb->len);
+			netdev_warn(ieee->dev, "skb too small (%d).\n",
+				    skb->len);
 			goto success;
 		}

@@ -684,8 +683,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		 */
 		txb = ieee80211_alloc_txb(nr_frags, frag_size + ieee->tx_headroom, GFP_ATOMIC);
 		if (unlikely(!txb)) {
-			printk(KERN_WARNING "%s: Could not allocate TXB\n",
-			ieee->dev->name);
+			netdev_warn(ieee->dev, "Could not allocate TXB\n");
 			goto failed;
 		}
 		txb->encrypted = encrypt;
@@ -778,15 +776,14 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		}
 	} else {
 		if (unlikely(skb->len < sizeof(struct rtl_80211_hdr_3addr))) {
-			printk(KERN_WARNING "%s: skb too small (%d).\n",
-			ieee->dev->name, skb->len);
+			netdev_warn(ieee->dev, "skb too small (%d).\n",
+				    skb->len);
 			goto success;
 		}

 		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
 		if (!txb) {
-			printk(KERN_WARNING "%s: Could not allocate TXB\n",
-			ieee->dev->name);
+			netdev_warn(ieee->dev, "Could not allocate TXB\n");
 			goto failed;
 		}

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 17d9700dbf01..22373c0afebc 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -356,9 +356,8 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
 			kfree(new_crypt);
 			new_crypt = NULL;

-			printk(KERN_WARNING "%s: could not initialize WEP: "
-			       "load module ieee80211_crypt_wep\n",
-			       dev->name);
+			netdev_warn(dev, "could not initialize WEP: "
+				    "load module ieee80211_crypt_wep\n");
 			return -EOPNOTSUPP;
 		}
 		*crypt = new_crypt;
---
2.20.1


